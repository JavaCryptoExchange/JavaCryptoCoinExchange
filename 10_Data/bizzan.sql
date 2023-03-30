/*
Navicat MySQL Data Transfer

Source Server         : 测试
Source Server Version : 50733
Source Host           : 8.210.55.148:3306
Source Database       : ceshi

Target Server Type    : MYSQL
Target Server Version : 50733
File Encoding         : 65001

Date: 2021-03-15 07:27:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_link` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `notice_link` varchar(255) DEFAULT NULL,
  `progress` int(11) NOT NULL,
  `settings` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `step` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `accept_unit` varchar(255) NOT NULL,
  `amount_scale` int(11) NOT NULL,
  `banner_image_url` varchar(255) DEFAULT NULL,
  `content` text,
  `contenten` text,
  `detailen` varchar(255) DEFAULT NULL,
  `end_time` varchar(30) NOT NULL DEFAULT '2000-01-01 01:00:00' COMMENT '结束时间',
  `limit_times` int(11) NOT NULL,
  `max_limit_amout` decimal(24,8) DEFAULT NULL,
  `min_limit_amout` decimal(24,8) DEFAULT NULL,
  `price` decimal(18,8) DEFAULT NULL,
  `price_scale` int(11) NOT NULL,
  `small_image_url` varchar(255) DEFAULT NULL,
  `start_time` varchar(30) NOT NULL DEFAULT '2000-01-01 01:00:00' COMMENT '开始时间',
  `titleen` varchar(255) DEFAULT NULL,
  `total_supply` decimal(24,8) NOT NULL,
  `traded_amount` decimal(24,8) DEFAULT NULL,
  `unit` varchar(255) NOT NULL,
  `freeze_amount` decimal(26,8) DEFAULT NULL,
  `levelone_count` int(11) NOT NULL,
  `mining_days` int(11) NOT NULL,
  `mining_daysprofit` decimal(24,8) DEFAULT NULL,
  `mining_invite` decimal(24,8) DEFAULT NULL,
  `mining_invitelimit` decimal(24,8) DEFAULT NULL,
  `mining_unit` varchar(255) NOT NULL,
  `mining_period` int(11) NOT NULL,
  `hold_limit` decimal(24,8) DEFAULT NULL,
  `hold_unit` varchar(255) DEFAULT NULL,
  `locked_days` int(11) NOT NULL,
  `locked_fee` decimal(24,8) DEFAULT NULL,
  `locked_period` int(11) NOT NULL,
  `locked_unit` varchar(255) DEFAULT NULL,
  `release_amount` decimal(24,8) DEFAULT NULL,
  `release_percent` decimal(24,8) DEFAULT NULL,
  `release_times` decimal(24,8) DEFAULT NULL,
  `release_type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14540 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of activity
-- ----------------------------

-- ----------------------------
-- Table structure for activity_order
-- ----------------------------
DROP TABLE IF EXISTS `activity_order`;
CREATE TABLE `activity_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) DEFAULT NULL,
  `amount` decimal(24,8) DEFAULT NULL,
  `base_symbol` varchar(255) DEFAULT NULL,
  `coin_symbol` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `freeze_amount` decimal(24,8) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `price` decimal(24,8) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `turnover` decimal(26,16) DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of activity_order
-- ----------------------------

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `mobile_phone` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `department_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_gfn44sntic2k93auag97juyij` (`username`) USING BTREE,
  KEY `FKibjnyhe6m46qfkc6vgbir1ucq` (`department_id`) USING BTREE,
  CONSTRAINT `FKnmmt6f2kg0oaxr11uhy7qqf3w` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '', 'root', '0', null, '2021-03-09 02:10:48', '13891233921', '985eb5b028065701341a478a9215e7b2', '000000', 'Admin', '1', '0', 'root', '1');
INSERT INTO `admin` VALUES ('2', '', '', '0', null, '2020-11-30 21:11:39', '13891233920', '985eb5b028065701341a478a9215e7b2', '', '测试', '64', '0', 'test', '3');

-- ----------------------------
-- Table structure for admin_access_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_access_log`;
CREATE TABLE `admin_access_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_ip` varchar(255) DEFAULT NULL,
  `access_method` varchar(255) DEFAULT NULL,
  `access_time` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `module` int(11) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47359 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_access_log
-- ----------------------------
INSERT INTO `admin_access_log` VALUES ('44073', '172.31.41.52', 'GET', '2020-11-19 01:45:03', '1', '6', '分页查找操作/访问日志AdminAccessLog', '/system/access-log/page-query/');
INSERT INTO `admin_access_log` VALUES ('44074', '172.31.41.52', 'POST', '2020-11-19 01:45:09', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44075', '172.31.41.52', 'POST', '2020-11-19 01:45:10', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44076', '172.31.41.52', 'POST', '2020-11-19 01:45:10', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44077', '172.31.41.52', 'POST', '2020-11-19 01:48:12', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44078', '172.31.41.52', 'POST', '2020-11-19 01:48:12', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44079', '172.31.41.52', 'POST', '2020-11-19 01:48:32', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44080', '172.31.41.52', 'POST', '2020-11-19 01:48:46', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44081', '172.31.41.52', 'POST', '2020-11-19 01:49:05', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44082', '172.31.41.52', 'POST', '2020-11-19 01:49:25', '1', '12', '永续合约交易对新增钱包 新增', '/swap-coin/init-wallet');
INSERT INTO `admin_access_log` VALUES ('44083', '172.31.41.52', 'POST', '2020-11-19 01:49:54', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44084', '172.31.41.52', 'POST', '2020-11-19 01:49:54', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44085', '172.31.41.52', 'POST', '2020-11-19 01:49:55', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44086', '172.31.41.52', 'POST', '2020-11-19 01:49:55', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('44087', '172.31.41.52', 'POST', '2020-11-19 01:50:44', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('44088', '172.31.41.52', 'POST', '2020-11-19 01:50:44', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44089', '172.31.41.52', 'POST', '2020-11-19 01:51:21', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44090', '172.31.41.52', 'POST', '2020-11-19 01:51:21', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44091', '172.31.41.52', 'POST', '2020-11-19 01:51:22', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44092', '172.31.41.52', 'POST', '2020-11-19 01:51:24', '1', '12', '永续合约交易对新增钱包 新增', '/swap-coin/init-wallet');
INSERT INTO `admin_access_log` VALUES ('44093', '172.31.41.52', 'POST', '2020-11-19 01:51:25', '1', '12', '永续合约交易对新增钱包 新增', '/swap-coin/init-wallet');
INSERT INTO `admin_access_log` VALUES ('44094', '172.31.41.52', 'POST', '2020-11-19 01:51:26', '1', '12', '永续合约交易对新增钱包 新增', '/swap-coin/init-wallet');
INSERT INTO `admin_access_log` VALUES ('44095', '172.31.41.52', 'POST', '2020-11-19 01:53:54', '1', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44096', '172.31.41.52', 'POST', '2020-11-19 01:54:05', '1', '6', '后台货币Coin详情', '/system/coin/detail');
INSERT INTO `admin_access_log` VALUES ('44097', '172.31.41.52', 'POST', '2020-11-19 01:54:19', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44098', '172.31.41.52', 'POST', '2020-11-19 01:54:26', '1', '6', '修改用户等级', '/member/alter-member-superpartner');
INSERT INTO `admin_access_log` VALUES ('44099', '172.31.41.52', 'POST', '2020-11-19 01:54:27', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44100', '172.31.41.52', 'POST', '2020-11-19 01:54:30', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('44101', '172.31.41.52', 'POST', '2020-11-19 01:54:30', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('44102', '172.31.41.52', 'POST', '2020-11-19 01:54:30', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('44103', '172.31.41.52', 'POST', '2020-11-19 01:54:30', '1', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('44104', '172.31.41.52', 'POST', '2020-11-19 01:54:37', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44105', '172.31.41.52', 'POST', '2020-11-19 01:54:37', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44106', '172.31.41.52', 'POST', '2020-11-19 01:54:37', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44107', '172.31.41.52', 'POST', '2020-11-19 01:54:37', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44108', '172.31.41.52', 'POST', '2020-11-19 01:54:37', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44109', '172.31.41.52', 'POST', '2020-11-19 01:54:37', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44110', '172.31.41.52', 'POST', '2020-11-19 01:54:38', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44111', '172.31.41.52', 'POST', '2020-11-19 01:54:48', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('44112', '172.31.41.52', 'POST', '2020-11-19 01:54:50', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44113', '172.31.41.52', 'POST', '2020-11-19 01:54:51', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('44114', '172.31.41.52', 'POST', '2020-11-19 01:54:52', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44115', '172.31.41.52', 'POST', '2020-11-19 01:54:57', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44116', '172.31.41.52', 'POST', '2020-11-19 01:54:58', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44117', '172.31.41.52', 'POST', '2020-11-19 01:55:01', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44118', '172.31.41.52', 'POST', '2020-11-19 01:55:13', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44119', '172.31.41.52', 'POST', '2020-11-19 01:55:14', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44120', '172.31.41.52', 'POST', '2020-11-19 01:55:15', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44121', '172.31.41.52', 'POST', '2020-11-19 01:55:15', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44122', '172.31.41.52', 'POST', '2020-11-19 01:55:15', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44123', '172.31.41.52', 'POST', '2020-11-19 01:55:15', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44124', '172.31.41.52', 'POST', '2020-11-19 01:55:15', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44125', '172.31.41.52', 'POST', '2020-11-19 01:55:15', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44126', '172.31.41.52', 'POST', '2020-11-19 01:55:15', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44127', '172.31.41.52', 'POST', '2020-11-19 01:55:15', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44128', '172.31.41.52', 'POST', '2020-11-19 01:55:18', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44129', '172.31.41.52', 'POST', '2020-11-19 01:55:53', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44130', '172.31.41.52', 'POST', '2020-11-19 01:55:56', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('44131', '172.31.41.52', 'POST', '2020-11-19 01:55:57', '1', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('44132', '172.31.41.52', 'POST', '2020-11-19 01:55:57', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('44133', '172.31.41.52', 'POST', '2020-11-19 01:55:59', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44134', '172.31.41.52', 'POST', '2020-11-19 01:56:34', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('44135', '172.31.41.52', 'POST', '2020-11-19 01:56:34', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('44136', '172.31.41.52', 'POST', '2020-11-19 01:56:34', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('44137', '172.31.41.52', 'POST', '2020-11-19 01:56:35', '1', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('44138', '172.31.41.52', 'POST', '2020-11-19 01:57:08', '1', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('44139', '172.31.41.52', 'POST', '2020-11-19 01:57:09', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('44140', '172.31.41.52', 'POST', '2020-11-19 01:57:11', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44141', '172.31.41.52', 'POST', '2020-11-19 01:57:12', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44142', '172.31.41.52', 'POST', '2020-11-19 01:57:12', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44143', '172.31.41.52', 'POST', '2020-11-19 01:57:12', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44144', '172.31.41.52', 'POST', '2020-11-19 01:57:12', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44145', '172.31.41.52', 'POST', '2020-11-19 01:57:12', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44146', '172.31.41.52', 'POST', '2020-11-19 01:57:12', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44147', '172.31.41.52', 'POST', '2020-11-19 03:13:52', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44148', '172.31.41.52', 'POST', '2020-11-19 03:13:53', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44149', '172.31.41.52', 'POST', '2020-11-19 03:13:55', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44150', '172.31.41.52', 'POST', '2020-11-19 03:35:34', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44151', '172.31.41.52', 'POST', '2020-11-20 16:56:51', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44152', '172.31.41.52', 'POST', '2020-11-20 16:56:55', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44153', '172.31.41.52', 'POST', '2020-11-20 16:56:56', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44154', '172.31.41.52', 'POST', '2020-11-20 16:56:58', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44155', '172.31.41.52', 'POST', '2020-11-20 16:56:58', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44156', '172.31.41.52', 'POST', '2020-11-20 16:56:59', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44157', '172.31.41.52', 'POST', '2020-11-20 16:56:59', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44158', '172.31.41.52', 'POST', '2020-11-20 16:56:59', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44159', '172.31.41.52', 'POST', '2020-11-20 16:56:59', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44160', '172.31.41.52', 'POST', '2020-11-20 16:56:59', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44161', '172.31.41.52', 'POST', '2020-11-20 16:56:59', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44162', '172.31.41.52', 'POST', '2020-11-20 16:59:26', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44163', '172.31.41.52', 'POST', '2020-11-20 17:03:16', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44164', '172.31.41.52', 'POST', '2020-11-20 17:03:17', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44165', '172.31.41.52', 'POST', '2020-11-20 17:03:17', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44166', '172.31.41.52', 'POST', '2020-11-20 17:03:18', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44167', '172.31.41.52', 'POST', '2020-11-20 17:03:18', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44168', '172.31.41.52', 'POST', '2020-11-20 17:03:18', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44169', '172.31.41.52', 'POST', '2020-11-20 17:03:18', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44170', '172.31.41.52', 'POST', '2020-11-20 17:03:18', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44171', '172.31.41.52', 'POST', '2020-11-20 17:03:18', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44172', '172.31.41.52', 'POST', '2020-11-20 17:05:23', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44173', '172.31.41.52', 'POST', '2020-11-20 17:06:57', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44174', '172.31.41.52', 'POST', '2020-11-20 17:06:58', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44175', '172.31.41.52', 'POST', '2020-11-20 17:06:58', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44176', '172.31.41.52', 'POST', '2020-11-20 17:06:59', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44177', '172.31.41.52', 'POST', '2020-11-20 17:06:59', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44178', '172.31.41.52', 'POST', '2020-11-20 17:06:59', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44179', '172.31.41.52', 'POST', '2020-11-20 17:06:59', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44180', '172.31.41.52', 'POST', '2020-11-20 17:06:59', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44181', '172.31.41.52', 'POST', '2020-11-20 17:06:59', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44182', '172.31.41.52', 'POST', '2020-11-20 17:10:34', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44183', '172.31.41.52', 'POST', '2020-11-20 17:10:34', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44184', '172.31.41.52', 'POST', '2020-11-20 17:10:34', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44185', '172.31.41.52', 'POST', '2020-11-20 17:10:34', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44186', '172.31.41.52', 'POST', '2020-11-20 17:10:34', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44187', '172.31.41.52', 'POST', '2020-11-20 17:10:34', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44188', '172.31.41.52', 'POST', '2020-11-20 17:10:58', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44189', '172.31.41.52', 'POST', '2020-11-20 17:10:59', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44190', '172.31.41.52', 'POST', '2020-11-20 17:11:00', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44191', '172.31.41.52', 'POST', '2020-11-20 17:11:00', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44192', '172.31.41.52', 'POST', '2020-11-20 17:11:01', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44193', '172.31.41.52', 'POST', '2020-11-20 17:11:01', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44194', '172.31.41.52', 'POST', '2020-11-20 17:11:01', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44195', '172.31.41.52', 'POST', '2020-11-20 17:11:01', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44196', '172.31.41.52', 'POST', '2020-11-20 17:11:01', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44197', '172.31.41.52', 'POST', '2020-11-20 17:11:01', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44198', '172.31.41.52', 'POST', '2020-11-20 17:13:57', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44199', '172.31.41.52', 'POST', '2020-11-20 17:13:57', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44200', '172.31.41.52', 'POST', '2020-11-20 17:13:57', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44201', '172.31.41.52', 'POST', '2020-11-20 17:13:57', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44202', '172.31.41.52', 'POST', '2020-11-20 17:13:57', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44203', '172.31.41.52', 'POST', '2020-11-20 17:13:57', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44204', '172.31.41.52', 'POST', '2020-11-20 17:14:06', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44205', '172.31.41.52', 'POST', '2020-11-20 17:14:07', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44206', '172.31.41.52', 'POST', '2020-11-20 17:14:08', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44207', '172.31.41.52', 'POST', '2020-11-20 17:14:08', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44208', '172.31.41.52', 'POST', '2020-11-20 17:14:09', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44209', '172.31.41.52', 'POST', '2020-11-20 17:14:09', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44210', '172.31.41.52', 'POST', '2020-11-20 17:14:09', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44211', '172.31.41.52', 'POST', '2020-11-20 17:14:09', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44212', '172.31.41.52', 'POST', '2020-11-20 17:14:09', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44213', '172.31.41.52', 'POST', '2020-11-20 17:14:09', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44214', '172.31.41.52', 'POST', '2020-11-21 03:03:27', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44215', '172.31.41.52', 'POST', '2020-11-21 03:03:39', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44216', '172.31.41.52', 'POST', '2020-11-21 03:03:39', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44217', '172.31.41.52', 'POST', '2020-11-21 03:03:40', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44218', '172.31.41.52', 'POST', '2020-11-21 03:03:40', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44219', '172.31.41.52', 'POST', '2020-11-21 03:03:41', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44220', '172.31.41.52', 'POST', '2020-11-21 03:03:41', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44221', '172.31.41.52', 'POST', '2020-11-21 03:03:41', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44222', '172.31.41.52', 'POST', '2020-11-21 03:03:41', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44223', '172.31.41.52', 'POST', '2020-11-21 03:03:41', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44224', '172.31.41.52', 'POST', '2020-11-21 03:03:41', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44225', '172.31.41.52', 'POST', '2020-11-21 03:03:50', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('44226', '172.31.41.52', 'POST', '2020-11-21 03:05:12', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('44227', '172.31.41.52', 'POST', '2020-11-21 03:05:17', '1', '5', '分页查找otc币种otcCoin', '/otc/otc-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44228', '172.31.41.52', 'POST', '2020-11-21 03:05:27', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44229', '172.31.41.52', 'POST', '2020-11-21 03:05:32', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44230', '172.31.41.52', 'POST', '2020-11-21 03:05:33', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44231', '172.31.41.52', 'POST', '2020-11-21 03:05:34', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44232', '172.31.41.52', 'POST', '2020-11-21 03:05:34', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44233', '172.31.41.52', 'POST', '2020-11-21 03:05:35', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44234', '172.31.41.52', 'POST', '2020-11-21 03:05:35', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44235', '172.31.41.52', 'POST', '2020-11-21 03:05:35', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44236', '172.31.41.52', 'POST', '2020-11-21 03:05:35', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44237', '172.31.41.52', 'POST', '2020-11-21 03:05:35', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44238', '172.31.41.52', 'POST', '2020-11-21 03:05:35', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44239', '172.31.41.52', 'POST', '2020-11-21 03:06:01', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('44240', '172.31.41.52', 'POST', '2020-11-21 03:09:52', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('44241', '172.31.41.52', 'POST', '2020-11-21 03:09:52', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44242', '172.31.41.52', 'POST', '2020-11-21 03:09:54', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('44243', '172.31.41.52', 'POST', '2020-11-21 03:09:56', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('44244', '172.31.41.52', 'POST', '2020-11-21 03:10:00', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('44245', '172.31.41.52', 'POST', '2020-11-21 03:10:00', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44246', '172.31.41.52', 'POST', '2020-11-21 03:30:56', '1', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44247', '172.31.41.52', 'POST', '2020-11-21 03:30:56', '1', '6', '所有部门Department', '/system/department/all');
INSERT INTO `admin_access_log` VALUES ('44248', '172.31.41.52', 'POST', '2020-11-21 03:39:47', '1', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44249', '172.31.41.52', 'POST', '2020-11-21 03:42:38', '1', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44250', '172.31.41.52', 'POST', '2020-11-21 03:43:25', '1', '6', '后台货币Coin详情', '/system/coin/detail');
INSERT INTO `admin_access_log` VALUES ('44251', '172.31.41.52', 'POST', '2020-11-21 09:21:21', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44252', '172.31.41.52', 'POST', '2020-11-21 09:21:23', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44253', '172.31.41.52', 'POST', '2020-11-21 09:21:25', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44254', '172.31.41.52', 'POST', '2020-11-21 09:21:25', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44255', '172.31.41.52', 'POST', '2020-11-21 09:21:25', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44256', '172.31.41.52', 'POST', '2020-11-21 09:21:25', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44257', '172.31.41.52', 'POST', '2020-11-21 09:21:25', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44258', '172.31.41.52', 'POST', '2020-11-21 09:21:25', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44259', '172.31.41.52', 'POST', '2020-11-22 00:57:59', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44260', '172.31.41.52', 'POST', '2020-11-22 00:57:59', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44261', '172.31.41.52', 'POST', '2020-11-22 00:57:59', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44262', '172.31.41.52', 'POST', '2020-11-22 00:57:59', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44263', '172.31.41.52', 'POST', '2020-11-22 00:57:59', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44264', '172.31.41.52', 'POST', '2020-11-22 00:57:59', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44265', '172.31.41.52', 'POST', '2020-11-22 00:58:39', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44266', '172.31.41.52', 'POST', '2020-11-22 00:58:40', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44267', '172.31.41.52', 'POST', '2020-11-22 00:58:42', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44268', '172.31.41.52', 'POST', '2020-11-22 00:58:42', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44269', '172.31.41.52', 'POST', '2020-11-22 00:58:42', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44270', '172.31.41.52', 'POST', '2020-11-22 00:58:42', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44271', '172.31.41.52', 'POST', '2020-11-22 00:58:43', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44272', '172.31.41.52', 'POST', '2020-11-22 00:58:43', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44273', '172.31.41.52', 'POST', '2020-11-22 00:58:43', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44274', '172.31.41.52', 'POST', '2020-11-22 00:58:43', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44275', '172.31.41.52', 'POST', '2020-11-22 00:58:57', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44276', '172.31.41.52', 'POST', '2020-11-22 00:58:59', '2', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44277', '172.31.41.52', 'POST', '2020-11-22 00:58:59', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44278', '172.31.41.52', 'POST', '2020-11-22 00:59:01', '2', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('44279', '172.31.41.52', 'POST', '2020-11-22 00:59:01', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44280', '172.31.41.52', 'POST', '2020-11-22 00:59:12', '2', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44281', '172.31.41.52', 'POST', '2020-11-22 02:36:05', '1', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('44282', '172.31.41.52', 'POST', '2020-11-22 02:36:06', '1', '3', '法币/币币  总成交量/总成交额', '/finance/statistics/turnover-all');
INSERT INTO `admin_access_log` VALUES ('44283', '172.31.41.52', 'POST', '2020-11-22 02:36:06', '1', '3', '充币/提币总量统计', '/finance/statistics/recharge-or-withdraw-amount');
INSERT INTO `admin_access_log` VALUES ('44284', '172.31.41.52', 'POST', '2020-11-22 02:36:06', '1', '3', '手续费统计 总计[\"OTC_NUM\",\"WITHDRAW\",\"EXCHANGE\"]', '/finance/statistics/fee');
INSERT INTO `admin_access_log` VALUES ('44285', '172.31.41.52', 'POST', '2020-11-22 02:36:08', '1', '3', '法币/币币  总成交量/总成交额', '/finance/statistics/turnover-all');
INSERT INTO `admin_access_log` VALUES ('44286', '172.31.41.52', 'POST', '2020-11-22 02:36:09', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44287', '172.31.41.52', 'POST', '2020-11-22 02:36:09', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44288', '172.31.41.52', 'POST', '2020-11-22 02:36:09', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44289', '172.31.41.52', 'POST', '2020-11-22 02:36:09', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44290', '172.31.41.52', 'POST', '2020-11-22 02:36:09', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44291', '172.31.41.52', 'POST', '2020-11-22 02:36:09', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44292', '172.31.41.52', 'POST', '2020-11-22 02:36:12', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('44293', '172.31.41.52', 'POST', '2020-11-22 02:36:12', '1', '5', '分页查找法币交易订单Order', '/otc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44294', '172.31.41.52', 'POST', '2020-11-22 02:36:14', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('44295', '172.31.41.52', 'GET', '2020-11-22 02:36:14', '1', '3', '分页查询提现记录WithdrawRecord', '/finance/withdraw-record/page-query');
INSERT INTO `admin_access_log` VALUES ('44296', '172.31.41.52', 'POST', '2020-11-22 02:36:14', '1', '3', '法币/币币  总成交量/总成交额', '/finance/statistics/turnover-all');
INSERT INTO `admin_access_log` VALUES ('44297', '172.31.41.52', 'POST', '2020-11-22 02:36:14', '1', '3', '手续费统计 总计[\"OTC_NUM\",\"WITHDRAW\",\"EXCHANGE\"]', '/finance/statistics/fee');
INSERT INTO `admin_access_log` VALUES ('44298', '172.31.41.52', 'POST', '2020-11-22 02:36:14', '1', '3', '充币/提币总量统计', '/finance/statistics/recharge-or-withdraw-amount');
INSERT INTO `admin_access_log` VALUES ('44299', '172.31.41.52', 'POST', '2020-11-22 02:36:16', '1', '3', '法币/币币  总成交量/总成交额', '/finance/statistics/turnover-all');
INSERT INTO `admin_access_log` VALUES ('44300', '172.31.41.52', 'POST', '2020-11-22 02:36:18', '1', '3', '手续费统计 总计[\"OTC_NUM\",\"WITHDRAW\",\"EXCHANGE\"]', '/finance/statistics/fee');
INSERT INTO `admin_access_log` VALUES ('44301', '172.31.41.52', 'POST', '2020-11-22 02:36:19', '1', '3', '手续费统计 总计[\"OTC_NUM\",\"WITHDRAW\",\"EXCHANGE\"]', '/finance/statistics/fee');
INSERT INTO `admin_access_log` VALUES ('44302', '172.31.41.52', 'POST', '2020-11-22 02:36:20', '1', '3', '手续费统计 总计[\"OTC_NUM\",\"WITHDRAW\",\"EXCHANGE\"]', '/finance/statistics/fee');
INSERT INTO `admin_access_log` VALUES ('44303', '172.31.41.52', 'POST', '2020-11-22 02:36:21', '1', '3', '手续费统计 总计[\"OTC_NUM\",\"WITHDRAW\",\"EXCHANGE\"]', '/finance/statistics/fee');
INSERT INTO `admin_access_log` VALUES ('44304', '172.31.41.52', 'POST', '2020-11-22 02:36:22', '1', '3', '充币/提币总量统计', '/finance/statistics/recharge-or-withdraw-amount');
INSERT INTO `admin_access_log` VALUES ('44305', '172.31.41.52', 'POST', '2020-11-22 02:36:23', '1', '3', '充币/提币总量统计', '/finance/statistics/recharge-or-withdraw-amount');
INSERT INTO `admin_access_log` VALUES ('44306', '172.31.41.52', 'POST', '2020-11-22 02:36:24', '1', '3', '法币/币币  总成交量/总成交额', '/finance/statistics/turnover-all');
INSERT INTO `admin_access_log` VALUES ('44307', '172.31.41.52', 'POST', '2020-11-22 02:36:25', '1', '3', '法币/币币  总成交量/总成交额', '/finance/statistics/turnover-all');
INSERT INTO `admin_access_log` VALUES ('44308', '172.31.41.52', 'POST', '2020-11-22 02:36:26', '1', '3', '法币/币币  总成交量/总成交额', '/finance/statistics/turnover-all');
INSERT INTO `admin_access_log` VALUES ('44309', '172.31.41.52', 'POST', '2020-11-22 03:06:23', '1', '3', '手续费统计 总计[\"OTC_NUM\",\"WITHDRAW\",\"EXCHANGE\"]', '/finance/statistics/fee');
INSERT INTO `admin_access_log` VALUES ('44310', '172.31.41.52', 'POST', '2020-11-22 03:06:23', '1', '3', '手续费统计 总计[\"OTC_NUM\",\"WITHDRAW\",\"EXCHANGE\"]', '/finance/statistics/fee');
INSERT INTO `admin_access_log` VALUES ('44311', '172.31.41.52', 'POST', '2020-11-22 03:06:23', '1', '3', '手续费统计 总计[\"OTC_NUM\",\"WITHDRAW\",\"EXCHANGE\"]', '/finance/statistics/fee');
INSERT INTO `admin_access_log` VALUES ('44312', '172.31.41.52', 'POST', '2020-11-22 03:06:27', '1', '3', '法币/币币  总成交量/总成交额', '/finance/statistics/turnover-all');
INSERT INTO `admin_access_log` VALUES ('44313', '172.31.41.52', 'POST', '2020-11-22 03:06:27', '1', '3', '法币/币币  总成交量/总成交额', '/finance/statistics/turnover-all');
INSERT INTO `admin_access_log` VALUES ('44314', '172.31.41.52', 'POST', '2020-11-22 03:06:32', '1', '3', '手续费统计 总计[\"OTC_NUM\",\"WITHDRAW\",\"EXCHANGE\"]', '/finance/statistics/fee');
INSERT INTO `admin_access_log` VALUES ('44315', '172.31.41.52', 'POST', '2020-11-22 03:06:33', '1', '3', '手续费统计 总计[\"OTC_NUM\",\"WITHDRAW\",\"EXCHANGE\"]', '/finance/statistics/fee');
INSERT INTO `admin_access_log` VALUES ('44316', '172.31.41.52', 'POST', '2020-11-22 03:06:33', '1', '3', '手续费统计 总计[\"OTC_NUM\",\"WITHDRAW\",\"EXCHANGE\"]', '/finance/statistics/fee');
INSERT INTO `admin_access_log` VALUES ('44317', '172.31.41.52', 'POST', '2020-11-22 03:06:36', '1', '3', '充币/提币总量统计', '/finance/statistics/recharge-or-withdraw-amount');
INSERT INTO `admin_access_log` VALUES ('44318', '172.31.41.52', 'POST', '2020-11-22 03:06:36', '1', '3', '充币/提币总量统计', '/finance/statistics/recharge-or-withdraw-amount');
INSERT INTO `admin_access_log` VALUES ('44319', '172.31.41.52', 'POST', '2020-11-22 03:06:38', '1', '3', '充币/提币总量统计', '/finance/statistics/recharge-or-withdraw-amount');
INSERT INTO `admin_access_log` VALUES ('44320', '172.31.41.52', 'POST', '2020-11-22 03:06:38', '1', '3', '充币/提币总量统计', '/finance/statistics/recharge-or-withdraw-amount');
INSERT INTO `admin_access_log` VALUES ('44321', '172.31.41.52', 'POST', '2020-11-22 03:06:39', '1', '3', '法币/币币  总成交量/总成交额', '/finance/statistics/turnover-all');
INSERT INTO `admin_access_log` VALUES ('44322', '172.31.41.52', 'POST', '2020-11-22 03:06:41', '1', '3', '充币/提币总量统计', '/finance/statistics/recharge-or-withdraw-amount');
INSERT INTO `admin_access_log` VALUES ('44323', '172.31.41.52', 'POST', '2020-11-22 03:06:43', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('44324', '172.31.41.52', 'GET', '2020-11-22 03:06:43', '1', '3', '分页查询提现记录WithdrawRecord', '/finance/withdraw-record/page-query');
INSERT INTO `admin_access_log` VALUES ('44325', '172.31.41.52', 'POST', '2020-11-22 03:08:22', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44326', '172.31.41.52', 'POST', '2020-11-22 03:08:30', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44327', '172.31.41.52', 'POST', '2020-11-22 03:08:33', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44328', '172.31.41.52', 'POST', '2020-11-22 03:08:37', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44329', '172.31.41.52', 'POST', '2020-11-22 03:08:41', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44330', '172.31.41.52', 'POST', '2020-11-22 18:06:14', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44331', '172.31.41.52', 'POST', '2020-11-22 18:06:14', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44332', '172.31.41.52', 'POST', '2020-11-22 18:06:14', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44333', '172.31.41.52', 'POST', '2020-11-22 18:06:14', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44334', '172.31.41.52', 'POST', '2020-11-22 18:06:14', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44335', '172.31.41.52', 'POST', '2020-11-22 18:06:14', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44336', '172.31.41.52', 'POST', '2020-11-22 18:06:17', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44337', '172.31.41.52', 'POST', '2020-11-22 18:06:31', '1', '2', '启动交易引擎', '/exchange/exchange-coin/start-trader');
INSERT INTO `admin_access_log` VALUES ('44338', '172.31.41.52', 'POST', '2020-11-22 18:06:37', '1', '2', '修改币币交易对exchangeCoin', '/exchange/exchange-coin/alter-rate');
INSERT INTO `admin_access_log` VALUES ('44339', '172.31.41.52', 'POST', '2020-11-22 18:06:37', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44340', '172.31.41.52', 'POST', '2020-11-22 18:06:39', '1', '2', '启动交易引擎', '/exchange/exchange-coin/start-trader');
INSERT INTO `admin_access_log` VALUES ('44341', '172.31.41.52', 'POST', '2020-11-22 18:06:41', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44342', '172.31.41.52', 'POST', '2020-11-22 18:06:45', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44343', '172.31.41.52', 'POST', '2020-11-22 18:06:49', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44344', '172.31.41.52', 'POST', '2020-11-22 18:07:32', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44345', '172.31.41.52', 'POST', '2020-11-22 18:07:32', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44346', '172.31.41.52', 'POST', '2020-11-22 18:07:35', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44347', '172.31.41.52', 'POST', '2020-11-22 18:07:46', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44348', '172.31.41.52', 'POST', '2020-11-22 18:07:46', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44349', '172.31.41.52', 'POST', '2020-11-22 18:07:48', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44350', '172.31.41.52', 'POST', '2020-11-22 18:10:10', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44351', '172.31.41.52', 'POST', '2020-11-22 18:10:20', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44352', '172.31.41.52', 'POST', '2020-11-22 18:10:20', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44353', '172.31.41.52', 'POST', '2020-11-22 18:10:23', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('44354', '172.31.41.52', 'POST', '2020-11-22 18:10:25', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('44355', '172.31.41.52', 'POST', '2020-11-22 18:10:27', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44356', '172.31.41.52', 'POST', '2020-11-22 18:12:42', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44357', '172.31.41.52', 'POST', '2020-11-22 18:12:43', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44358', '172.31.41.52', 'POST', '2020-11-22 18:12:44', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44359', '172.31.41.52', 'POST', '2020-11-22 18:12:48', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44360', '172.31.41.52', 'POST', '2020-11-22 18:12:48', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44361', '172.31.41.52', 'POST', '2020-11-22 18:12:50', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44362', '172.31.41.52', 'POST', '2020-11-22 18:12:53', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44363', '172.31.41.52', 'POST', '2020-11-22 18:12:53', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44364', '172.31.41.52', 'POST', '2020-11-22 18:12:56', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44365', '172.31.41.52', 'POST', '2020-11-22 18:13:00', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44366', '172.31.41.52', 'POST', '2020-11-22 18:13:00', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44367', '172.31.41.52', 'POST', '2020-11-22 18:13:01', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44368', '172.31.41.52', 'POST', '2020-11-22 18:13:05', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44369', '172.31.41.52', 'POST', '2020-11-22 18:13:05', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44370', '172.31.41.52', 'POST', '2020-11-22 18:13:07', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44371', '172.31.41.52', 'POST', '2020-11-22 18:13:10', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44372', '172.31.41.52', 'POST', '2020-11-22 18:13:11', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44373', '172.31.41.52', 'POST', '2020-11-22 18:13:12', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44374', '172.31.41.52', 'POST', '2020-11-22 18:13:15', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44375', '172.31.41.52', 'POST', '2020-11-22 18:13:15', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44376', '172.31.41.52', 'POST', '2020-11-23 01:24:03', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44377', '172.31.41.52', 'POST', '2020-11-23 01:24:05', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44378', '172.31.41.52', 'POST', '2020-11-23 01:24:06', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44379', '172.31.41.52', 'POST', '2020-11-23 01:24:06', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44380', '172.31.41.52', 'POST', '2020-11-23 01:24:06', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44381', '172.31.41.52', 'POST', '2020-11-23 01:24:06', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44382', '172.31.41.52', 'POST', '2020-11-23 01:24:06', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44383', '172.31.41.52', 'POST', '2020-11-23 01:24:06', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44384', '172.31.41.52', 'POST', '2020-11-23 01:24:06', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44385', '172.31.41.52', 'POST', '2020-11-23 01:24:06', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44386', '172.31.41.52', 'POST', '2020-11-23 01:24:54', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44387', '172.31.41.52', 'POST', '2020-11-23 01:24:55', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('44388', '172.31.41.52', 'POST', '2020-11-23 01:24:55', '1', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('44389', '172.31.41.52', 'POST', '2020-11-23 01:24:56', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('44390', '172.31.41.52', 'POST', '2020-11-23 01:24:56', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44391', '172.31.41.52', 'POST', '2020-11-23 01:25:14', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44392', '172.31.41.52', 'POST', '2020-11-23 01:25:14', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44393', '172.31.41.52', 'POST', '2020-11-23 01:25:14', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44394', '172.31.41.52', 'POST', '2020-11-23 01:25:16', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44395', '172.31.41.52', 'POST', '2020-11-23 01:25:20', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44396', '172.31.41.52', 'POST', '2020-11-23 01:25:20', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44397', '172.31.41.52', 'POST', '2020-11-23 01:25:48', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44398', '172.31.41.52', 'POST', '2020-11-23 01:26:02', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44399', '172.31.41.52', 'POST', '2020-11-23 01:26:03', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44400', '172.31.41.52', 'POST', '2020-11-23 01:26:03', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44401', '172.31.41.52', 'POST', '2020-11-23 01:26:04', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44402', '172.31.41.52', 'POST', '2020-11-23 01:26:04', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44403', '172.31.41.52', 'POST', '2020-11-23 01:26:04', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44404', '172.31.41.52', 'POST', '2020-11-23 01:26:04', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44405', '172.31.41.52', 'POST', '2020-11-23 01:26:07', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44406', '172.31.41.52', 'POST', '2020-11-23 01:26:08', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44407', '172.31.41.52', 'POST', '2020-11-23 01:26:08', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44408', '172.31.41.52', 'POST', '2020-11-23 01:26:08', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44409', '172.31.41.52', 'POST', '2020-11-23 01:26:08', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44410', '172.31.41.52', 'POST', '2020-11-23 01:26:08', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44411', '172.31.41.52', 'POST', '2020-11-23 01:26:08', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44412', '172.31.41.52', 'POST', '2020-11-23 01:26:21', '1', '0', '邀请管理多条件查询', '/invite/management/query');
INSERT INTO `admin_access_log` VALUES ('44413', '172.31.41.52', 'POST', '2020-11-23 01:26:30', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('44414', '172.31.41.52', 'POST', '2020-11-23 01:26:41', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('44415', '172.31.41.52', 'POST', '2020-11-23 01:26:46', '1', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('44416', '172.31.41.52', 'POST', '2020-11-23 01:26:52', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44417', '172.31.41.52', 'POST', '2020-11-23 01:26:58', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44418', '172.31.41.52', 'POST', '2020-11-23 01:33:29', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('44419', '172.31.41.52', 'POST', '2020-11-23 01:33:40', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44420', '172.31.41.52', 'POST', '2020-11-23 03:19:22', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44421', '172.31.41.52', 'POST', '2020-11-23 03:19:30', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44422', '172.31.41.52', 'POST', '2020-11-23 03:19:36', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44423', '172.31.41.52', 'POST', '2020-11-23 17:48:10', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44424', '172.31.41.52', 'POST', '2020-11-23 17:48:10', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44425', '172.31.41.52', 'POST', '2020-11-23 17:49:04', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44426', '172.31.41.52', 'POST', '2020-11-23 17:49:16', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44427', '172.31.41.52', 'POST', '2020-11-23 17:49:20', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44428', '172.31.41.52', 'POST', '2020-11-23 17:49:21', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44429', '172.31.41.52', 'POST', '2020-11-23 17:49:24', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44430', '172.31.41.52', 'POST', '2020-11-23 17:49:25', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44431', '172.31.41.52', 'POST', '2020-11-23 17:49:30', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44432', '172.31.41.52', 'POST', '2020-11-23 17:50:05', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44433', '172.31.41.52', 'POST', '2020-11-23 17:50:05', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44434', '172.31.41.52', 'POST', '2020-11-23 17:50:05', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44435', '172.31.41.52', 'POST', '2020-11-23 17:50:05', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44436', '172.31.41.52', 'POST', '2020-11-23 17:50:10', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44437', '172.31.41.52', 'POST', '2020-11-23 17:50:12', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44438', '172.31.41.52', 'POST', '2020-11-23 17:50:24', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44439', '172.31.41.52', 'POST', '2020-11-23 17:50:39', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44440', '172.31.41.52', 'POST', '2020-11-23 17:51:27', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44441', '172.31.41.52', 'POST', '2020-11-23 17:51:55', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44442', '172.31.41.52', 'POST', '2020-11-25 07:11:02', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44443', '172.31.41.52', 'POST', '2020-11-25 07:11:03', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44444', '172.31.41.52', 'POST', '2020-11-25 07:11:05', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44445', '172.31.41.52', 'POST', '2020-11-25 07:11:05', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44446', '172.31.41.52', 'POST', '2020-11-25 07:11:05', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44447', '172.31.41.52', 'POST', '2020-11-25 07:11:05', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44448', '172.31.41.52', 'POST', '2020-11-25 07:11:06', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44449', '172.31.41.52', 'POST', '2020-11-25 07:11:06', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44450', '172.31.41.52', 'POST', '2020-11-25 07:11:06', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44451', '172.31.41.52', 'POST', '2020-11-25 07:11:06', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44452', '172.31.41.52', 'POST', '2020-11-25 07:11:08', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44453', '172.31.41.52', 'POST', '2020-11-25 07:13:02', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('44454', '172.31.41.52', 'POST', '2020-11-25 07:13:02', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44455', '172.31.41.52', 'POST', '2020-11-25 07:15:15', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('44456', '172.31.41.52', 'POST', '2020-11-25 07:15:17', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('44457', '172.31.41.52', 'POST', '2020-11-25 07:15:20', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('44458', '172.31.41.52', 'POST', '2020-11-25 07:15:21', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('44459', '172.31.41.52', 'POST', '2020-11-25 07:15:22', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('44460', '172.31.41.52', 'POST', '2020-11-25 07:15:24', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('44461', '172.31.41.52', 'POST', '2020-11-25 07:15:26', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('44462', '172.31.41.52', 'POST', '2020-11-25 07:15:28', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('44463', '172.31.41.52', 'POST', '2020-11-25 07:17:33', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44464', '172.31.41.52', 'POST', '2020-11-25 07:17:33', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44465', '172.31.41.52', 'POST', '2020-11-25 07:17:33', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44466', '172.31.41.52', 'POST', '2020-11-25 07:17:33', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44467', '172.31.41.52', 'POST', '2020-11-25 07:17:33', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44468', '172.31.41.52', 'POST', '2020-11-25 07:17:33', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44469', '172.31.41.52', 'POST', '2020-11-25 07:17:36', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44470', '172.31.41.52', 'POST', '2020-11-25 07:17:38', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44471', '172.31.41.52', 'POST', '2020-11-25 07:17:40', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44472', '172.31.41.52', 'POST', '2020-11-25 07:17:40', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44473', '172.31.41.52', 'POST', '2020-11-25 07:17:40', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44474', '172.31.41.52', 'POST', '2020-11-25 07:17:40', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44475', '172.31.41.52', 'POST', '2020-11-25 07:17:40', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44476', '172.31.41.52', 'POST', '2020-11-25 07:17:40', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44477', '172.31.41.52', 'POST', '2020-11-25 07:17:44', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44478', '172.31.41.52', 'POST', '2020-11-25 07:17:47', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('44479', '172.31.41.52', 'POST', '2020-11-25 07:17:48', '1', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('44480', '172.31.41.52', 'POST', '2020-11-25 07:22:36', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44481', '172.31.41.52', 'POST', '2020-11-25 07:22:36', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44482', '172.31.41.52', 'POST', '2020-11-25 07:22:36', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44483', '172.31.41.52', 'POST', '2020-11-25 07:22:36', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44484', '172.31.41.52', 'POST', '2020-11-25 07:22:36', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44485', '172.31.41.52', 'POST', '2020-11-25 07:22:36', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44486', '172.31.41.52', 'POST', '2020-11-25 07:22:40', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44487', '172.31.41.52', 'POST', '2020-11-25 07:22:40', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44488', '172.31.41.52', 'POST', '2020-11-25 07:22:41', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44489', '172.31.41.52', 'POST', '2020-11-25 12:08:59', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44490', '172.31.41.52', 'POST', '2020-11-25 12:09:01', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44491', '172.31.41.52', 'POST', '2020-11-25 12:09:02', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44492', '172.31.41.52', 'POST', '2020-11-25 12:09:02', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44493', '172.31.41.52', 'POST', '2020-11-25 12:09:02', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44494', '172.31.41.52', 'POST', '2020-11-25 12:09:02', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44495', '172.31.41.52', 'POST', '2020-11-25 12:09:03', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44496', '172.31.41.52', 'POST', '2020-11-25 12:09:03', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44497', '172.31.41.52', 'POST', '2020-11-25 12:09:03', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44498', '172.31.41.52', 'POST', '2020-11-25 12:09:03', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44499', '172.31.41.52', 'POST', '2020-11-25 12:09:37', '2', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('44500', '172.31.41.52', 'POST', '2020-11-25 12:09:50', '2', '5', '分页查找后台广告Advertise', '/otc/advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('44501', '172.31.41.52', 'POST', '2020-11-25 12:09:58', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44502', '172.31.41.52', 'POST', '2020-11-25 12:09:59', '2', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('44503', '172.31.41.52', 'POST', '2020-11-25 12:10:00', '2', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('44504', '172.31.41.52', 'POST', '2020-11-25 12:10:06', '2', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44505', '172.31.41.52', 'POST', '2020-11-25 12:10:06', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44506', '172.31.41.52', 'POST', '2020-11-25 12:10:07', '2', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('44507', '172.31.41.52', 'POST', '2020-11-25 12:10:07', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44508', '172.31.41.52', 'POST', '2020-11-25 12:10:08', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44509', '172.31.41.52', 'POST', '2020-11-25 12:10:08', '2', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44510', '172.31.41.52', 'POST', '2020-11-25 12:10:09', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44511', '172.31.41.52', 'POST', '2020-11-25 12:10:09', '2', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('44512', '172.31.41.52', 'POST', '2020-11-25 12:10:17', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44513', '172.31.41.52', 'POST', '2020-11-25 12:10:19', '2', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44514', '172.31.41.52', 'POST', '2020-11-25 12:10:19', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44515', '172.31.41.52', 'POST', '2020-11-25 12:12:51', '2', '10', '分页查看CTC订单列表AdminCtcOrderController', '/ctc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44516', '172.31.41.52', 'POST', '2020-11-25 12:12:53', '2', '10', '分页查看CTC承兑商列表AdminCtcAcceptorController', '/ctc/acceptor/page-query');
INSERT INTO `admin_access_log` VALUES ('44517', '172.31.41.52', 'POST', '2020-11-25 12:12:56', '2', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('44518', '172.31.41.52', 'POST', '2020-11-25 12:12:58', '2', '0', '分页查询系统帮助', '/cms/system-help/page-query');
INSERT INTO `admin_access_log` VALUES ('44519', '172.31.41.52', 'POST', '2020-11-25 12:13:01', '2', '0', '分页查询系统帮助', '/cms/system-help/page-query');
INSERT INTO `admin_access_log` VALUES ('44520', '172.31.41.52', 'POST', '2020-11-25 12:13:05', '2', '0', '分页查询系统帮助', '/cms/system-help/page-query');
INSERT INTO `admin_access_log` VALUES ('44521', '172.31.41.52', 'POST', '2020-11-25 18:03:15', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44522', '172.31.41.52', 'POST', '2020-11-25 18:03:17', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44523', '172.31.41.52', 'POST', '2020-11-25 18:03:19', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44524', '172.31.41.52', 'POST', '2020-11-25 18:03:19', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44525', '172.31.41.52', 'POST', '2020-11-25 18:03:19', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44526', '172.31.41.52', 'POST', '2020-11-25 18:03:19', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44527', '172.31.41.52', 'POST', '2020-11-25 18:03:20', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44528', '172.31.41.52', 'POST', '2020-11-25 18:03:20', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44529', '172.31.41.52', 'POST', '2020-11-25 18:03:20', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44530', '172.31.41.52', 'POST', '2020-11-25 18:03:20', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44531', '172.31.41.52', 'POST', '2020-11-25 18:03:26', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44532', '172.31.41.52', 'POST', '2020-11-25 18:03:33', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44533', '172.31.41.52', 'POST', '2020-11-25 18:03:37', '1', '0', '邀请管理多条件查询', '/invite/management/query');
INSERT INTO `admin_access_log` VALUES ('44534', '172.31.41.52', 'POST', '2020-11-25 18:03:43', '1', '0', '邀请排名条件查询', '/invite/management/rank');
INSERT INTO `admin_access_log` VALUES ('44535', '172.31.41.52', 'POST', '2020-11-25 18:03:51', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44536', '172.31.41.52', 'POST', '2020-11-25 18:04:04', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44537', '172.31.41.52', 'POST', '2020-11-25 18:04:04', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44538', '172.31.41.52', 'POST', '2020-11-25 18:04:11', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44539', '172.31.41.52', 'POST', '2020-11-25 18:04:11', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('44540', '172.31.41.52', 'POST', '2020-11-25 18:04:16', '1', '10', '分页查看CTC订单列表AdminCtcOrderController', '/ctc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44541', '172.31.41.52', 'POST', '2020-11-25 18:04:18', '1', '10', '分页查看CTC承兑商列表AdminCtcAcceptorController', '/ctc/acceptor/page-query');
INSERT INTO `admin_access_log` VALUES ('44542', '172.31.41.52', 'POST', '2020-11-25 18:04:21', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('44543', '172.31.41.52', 'POST', '2020-11-25 18:04:28', '1', '0', '分页查询系统帮助', '/cms/system-help/page-query');
INSERT INTO `admin_access_log` VALUES ('44544', '172.31.41.52', 'POST', '2020-11-25 18:04:35', '1', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('44545', '172.31.41.52', 'GET', '2020-11-25 18:04:44', '1', '3', '分页查询提现记录WithdrawRecord', '/finance/withdraw-record/page-query');
INSERT INTO `admin_access_log` VALUES ('44546', '172.31.41.52', 'POST', '2020-11-25 18:04:47', '1', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('44547', '172.31.41.52', 'POST', '2020-11-25 18:04:53', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('44548', '172.31.41.52', 'POST', '2020-11-25 18:04:53', '1', '3', '充币记录', '/finance/member-deposit/page-query');
INSERT INTO `admin_access_log` VALUES ('44549', '172.31.41.52', 'POST', '2020-11-25 18:04:55', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('44550', '172.31.41.52', 'POST', '2020-11-25 18:04:55', '1', '5', '分页查找法币交易订单Order', '/otc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44551', '172.31.41.52', 'GET', '2020-11-25 18:04:58', '1', '3', '分页查询提现记录WithdrawRecord', '/finance/withdraw-record/page-query');
INSERT INTO `admin_access_log` VALUES ('44552', '172.31.41.52', 'POST', '2020-11-25 18:04:58', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('44553', '172.31.41.52', 'POST', '2020-11-25 18:05:00', '1', '3', '法币/币币  总成交量/总成交额', '/finance/statistics/turnover-all');
INSERT INTO `admin_access_log` VALUES ('44554', '172.31.41.52', 'POST', '2020-11-25 18:05:00', '1', '3', '手续费统计 总计[\"OTC_NUM\",\"WITHDRAW\",\"EXCHANGE\"]', '/finance/statistics/fee');
INSERT INTO `admin_access_log` VALUES ('44555', '172.31.41.52', 'POST', '2020-11-25 18:05:00', '1', '3', '充币/提币总量统计', '/finance/statistics/recharge-or-withdraw-amount');
INSERT INTO `admin_access_log` VALUES ('44556', '172.31.41.52', 'POST', '2020-11-25 18:05:03', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44557', '172.31.41.52', 'POST', '2020-11-25 18:05:06', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('44558', '172.31.41.52', 'POST', '2020-11-25 18:05:28', '1', '9', '分页查看活动列表Activity', '/activity/activity/page-query');
INSERT INTO `admin_access_log` VALUES ('44559', '172.31.41.52', 'POST', '2020-11-25 18:05:35', '1', '11', '分页查看红包列表RedEnvelopeController', '/envelope/page-query');
INSERT INTO `admin_access_log` VALUES ('44560', '172.31.41.52', 'POST', '2020-11-25 18:05:38', '1', '6', '全部权限树Menu', '/system/role/permission/all');
INSERT INTO `admin_access_log` VALUES ('44561', '172.31.41.52', 'POST', '2020-11-25 18:05:38', '1', '6', '所有角色SysRole', '/system/role/all');
INSERT INTO `admin_access_log` VALUES ('44562', '172.31.41.52', 'POST', '2020-11-25 18:05:43', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('44563', '172.31.41.52', 'POST', '2020-11-25 18:05:52', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('44564', '172.31.41.52', 'POST', '2020-11-25 18:05:52', '1', '5', '分页查找法币交易订单Order', '/otc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44565', '172.31.41.52', 'POST', '2020-11-25 18:05:57', '1', '5', '分页查找otc币种otcCoin', '/otc/otc-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44566', '172.31.41.52', 'POST', '2020-11-25 18:06:03', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44567', '172.31.41.52', 'POST', '2020-11-25 22:53:15', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44568', '172.31.41.52', 'POST', '2020-11-25 22:53:17', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44569', '172.31.41.52', 'POST', '2020-11-25 22:53:18', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44570', '172.31.41.52', 'POST', '2020-11-25 22:53:18', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44571', '172.31.41.52', 'POST', '2020-11-25 22:53:19', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44572', '172.31.41.52', 'POST', '2020-11-25 22:53:19', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44573', '172.31.41.52', 'POST', '2020-11-25 22:53:20', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44574', '172.31.41.52', 'POST', '2020-11-25 22:53:20', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44575', '172.31.41.52', 'POST', '2020-11-25 22:53:20', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44576', '172.31.41.52', 'POST', '2020-11-25 22:53:20', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44577', '172.31.41.52', 'POST', '2020-11-25 22:56:01', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44578', '172.31.41.52', 'POST', '2020-11-25 22:56:01', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44579', '172.31.41.52', 'POST', '2020-11-25 22:56:01', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44580', '172.31.41.52', 'POST', '2020-11-25 22:56:01', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44581', '172.31.41.52', 'POST', '2020-11-25 22:56:01', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44582', '172.31.41.52', 'POST', '2020-11-25 22:56:01', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44583', '172.31.41.52', 'POST', '2020-11-25 22:56:07', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44584', '172.31.41.52', 'POST', '2020-11-25 22:56:08', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44585', '172.31.41.52', 'POST', '2020-11-25 22:56:12', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('44586', '172.31.41.52', 'POST', '2020-11-25 22:56:13', '1', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('44587', '172.31.41.52', 'POST', '2020-11-25 22:56:30', '1', '9', '分页查看活动列表Activity', '/activity/activity/page-query');
INSERT INTO `admin_access_log` VALUES ('44588', '172.31.41.52', 'POST', '2020-11-25 22:56:43', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('44589', '172.31.41.52', 'POST', '2020-11-25 22:56:51', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44590', '172.31.41.52', 'POST', '2020-11-26 18:15:47', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('44591', '172.31.41.52', 'POST', '2020-11-26 18:15:47', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('44592', '172.31.41.52', 'POST', '2020-11-26 18:16:20', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('44593', '172.31.41.52', 'POST', '2020-11-26 18:35:06', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44594', '172.31.41.52', 'POST', '2020-11-26 18:35:19', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44595', '172.31.41.52', 'POST', '2020-11-26 18:35:20', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44596', '172.31.41.52', 'POST', '2020-11-26 18:35:20', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44597', '172.31.41.52', 'POST', '2020-11-26 18:35:20', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44598', '172.31.41.52', 'POST', '2020-11-26 18:35:33', '2', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('44599', '172.31.41.52', 'POST', '2020-11-26 18:35:43', '2', '10', '分页查看CTC订单列表AdminCtcOrderController', '/ctc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44600', '172.31.41.52', 'GET', '2020-11-26 18:36:04', '2', '6', '分页查找操作/访问日志AdminAccessLog', '/system/access-log/page-query/');
INSERT INTO `admin_access_log` VALUES ('44601', '172.31.41.52', 'POST', '2020-11-26 18:36:20', '2', '5', '分页查找otc币种otcCoin', '/otc/otc-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44602', '172.31.41.52', 'POST', '2020-11-26 18:37:15', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44603', '172.31.41.52', 'POST', '2020-11-26 18:47:59', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44604', '172.31.41.52', 'POST', '2020-11-26 18:48:08', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44605', '172.31.41.52', 'POST', '2020-11-26 18:48:14', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44606', '172.31.41.52', 'POST', '2020-11-26 18:48:15', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44607', '172.31.41.52', 'POST', '2020-11-26 18:48:15', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44608', '172.31.41.52', 'POST', '2020-11-26 18:48:15', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44609', '172.31.41.52', 'POST', '2020-11-26 18:48:16', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44610', '172.31.41.52', 'POST', '2020-11-26 18:48:16', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44611', '172.31.41.52', 'POST', '2020-11-26 18:48:31', '2', '11', '分页查看红包列表RedEnvelopeController', '/envelope/page-query');
INSERT INTO `admin_access_log` VALUES ('44612', '172.31.41.52', 'POST', '2020-11-26 18:48:56', '2', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('44613', '172.31.41.52', 'POST', '2020-11-26 18:49:09', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44614', '172.31.41.52', 'POST', '2020-11-26 18:49:15', '2', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44615', '172.31.41.52', 'POST', '2020-11-26 18:49:17', '2', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('44616', '172.31.41.52', 'POST', '2020-11-26 18:51:24', '2', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('44617', '172.31.41.52', 'GET', '2020-11-26 18:51:41', '2', '6', '分页查找操作/访问日志AdminAccessLog', '/system/access-log/page-query/');
INSERT INTO `admin_access_log` VALUES ('44618', '172.31.41.52', 'POST', '2020-11-26 18:51:55', '2', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('44619', '172.31.41.52', 'POST', '2020-11-26 19:06:42', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44620', '172.31.41.52', 'POST', '2020-11-27 04:00:54', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44621', '172.31.41.52', 'POST', '2020-11-27 04:00:54', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44622', '172.31.41.52', 'POST', '2020-11-27 06:01:19', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44623', '172.31.41.52', 'POST', '2020-11-27 06:01:19', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44624', '172.31.41.52', 'POST', '2020-11-27 06:39:58', '2', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('44625', '172.31.41.52', 'POST', '2020-11-27 06:40:54', '2', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('44626', '172.31.41.52', 'POST', '2020-11-27 06:41:18', '2', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('44627', '172.31.41.52', 'POST', '2020-11-27 06:41:25', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44628', '172.31.41.52', 'POST', '2020-11-27 06:43:40', '2', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44629', '172.31.41.52', 'POST', '2020-11-27 06:44:14', '2', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44630', '172.31.41.52', 'POST', '2020-11-27 06:45:09', '2', '6', '热钱包转账至冷钱包记录分页查询', '/system/coin/hot-transfer-record/page-query');
INSERT INTO `admin_access_log` VALUES ('44631', '172.31.41.52', 'POST', '2020-11-27 06:45:50', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44632', '172.31.41.52', 'POST', '2020-11-27 06:45:50', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44633', '172.31.41.52', 'POST', '2020-11-27 06:45:51', '2', '0', '邀请管理多条件查询', '/invite/management/query');
INSERT INTO `admin_access_log` VALUES ('44634', '172.31.41.52', 'POST', '2020-11-27 14:09:35', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44635', '172.31.41.52', 'POST', '2020-11-27 14:09:38', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44636', '172.31.41.52', 'POST', '2020-11-27 14:09:39', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44637', '172.31.41.52', 'POST', '2020-11-27 14:09:40', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44638', '172.31.41.52', 'POST', '2020-11-27 14:09:40', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44639', '172.31.41.52', 'POST', '2020-11-27 14:11:13', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44640', '172.31.41.52', 'POST', '2020-11-28 21:21:44', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44641', '172.31.41.52', 'POST', '2020-11-28 21:21:45', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44642', '172.31.41.52', 'POST', '2020-11-28 21:21:47', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44643', '172.31.41.52', 'POST', '2020-11-28 21:21:48', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44644', '172.31.41.52', 'POST', '2020-11-28 21:21:48', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44645', '172.31.41.52', 'POST', '2020-11-28 21:21:48', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44646', '172.31.41.52', 'POST', '2020-11-28 21:21:48', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44647', '172.31.41.52', 'POST', '2020-11-28 21:21:48', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44648', '172.31.41.52', 'POST', '2020-11-28 21:21:48', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44649', '172.31.41.52', 'POST', '2020-11-28 21:21:48', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44650', '172.31.41.52', 'POST', '2020-11-28 21:21:48', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44651', '172.31.41.52', 'POST', '2020-11-28 21:21:51', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44652', '172.31.41.52', 'POST', '2020-11-28 21:21:53', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44653', '172.31.41.52', 'POST', '2020-11-28 21:23:08', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44654', '172.31.41.52', 'POST', '2020-11-28 21:23:09', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44655', '172.31.41.52', 'POST', '2020-11-28 21:23:10', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44656', '172.31.41.52', 'POST', '2020-11-28 21:23:10', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44657', '172.31.41.52', 'POST', '2020-11-28 21:23:11', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44658', '172.31.41.52', 'POST', '2020-11-28 21:23:11', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44659', '172.31.41.52', 'POST', '2020-11-28 21:23:11', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44660', '172.31.41.52', 'POST', '2020-11-28 21:23:11', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44661', '172.31.41.52', 'POST', '2020-11-28 21:23:11', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44662', '172.31.41.52', 'POST', '2020-11-28 21:23:11', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44663', '172.31.41.52', 'POST', '2020-11-28 21:23:22', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44664', '172.31.41.52', 'POST', '2020-11-28 21:27:59', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44665', '172.31.41.52', 'POST', '2020-11-28 21:27:59', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44666', '172.31.41.52', 'POST', '2020-11-28 21:28:13', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44667', '172.31.41.52', 'POST', '2020-11-28 23:38:37', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44668', '172.31.41.52', 'POST', '2020-11-28 23:38:37', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44669', '172.31.41.52', 'POST', '2020-11-28 23:38:37', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44670', '172.31.41.52', 'POST', '2020-11-28 23:38:37', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44671', '172.31.41.52', 'POST', '2020-11-28 23:38:37', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44672', '172.31.41.52', 'POST', '2020-11-28 23:38:37', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44673', '172.31.41.52', 'POST', '2020-11-28 23:38:40', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('44674', '172.31.41.52', 'POST', '2020-11-28 23:38:43', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44675', '172.31.41.52', 'POST', '2020-11-28 23:40:02', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44676', '172.31.41.52', 'POST', '2020-11-28 23:40:09', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44677', '172.31.41.52', 'POST', '2020-11-28 23:40:12', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44678', '172.31.41.52', 'POST', '2020-11-28 23:40:14', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44679', '172.31.41.52', 'POST', '2020-11-28 23:40:16', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44680', '172.31.41.52', 'POST', '2020-11-28 23:40:16', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44681', '172.31.41.52', 'POST', '2020-11-28 23:40:19', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44682', '172.31.41.52', 'POST', '2020-11-28 23:40:20', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44683', '172.31.41.52', 'POST', '2020-11-28 23:40:22', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44684', '172.31.41.52', 'POST', '2020-11-28 23:40:22', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44685', '172.31.41.52', 'POST', '2020-11-28 23:40:24', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44686', '172.31.41.52', 'POST', '2020-11-28 23:40:24', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44687', '172.31.41.52', 'POST', '2020-11-28 23:40:27', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44688', '172.31.41.52', 'POST', '2020-11-28 23:40:27', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44689', '172.31.41.52', 'POST', '2020-11-28 23:40:29', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44690', '172.31.41.52', 'POST', '2020-11-28 23:40:31', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44691', '172.31.41.52', 'POST', '2020-11-28 23:40:33', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44692', '172.31.41.52', 'POST', '2020-11-28 23:40:34', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44693', '172.31.41.52', 'POST', '2020-11-28 23:40:36', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44694', '172.31.41.52', 'POST', '2020-11-28 23:40:37', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44695', '172.31.41.52', 'POST', '2020-11-28 23:40:39', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44696', '172.31.41.52', 'POST', '2020-11-28 23:40:40', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44697', '172.31.41.52', 'POST', '2020-11-28 23:40:42', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44698', '172.31.41.52', 'POST', '2020-11-28 23:40:43', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44699', '172.31.41.52', 'POST', '2020-11-28 23:40:45', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44700', '172.31.41.52', 'POST', '2020-11-28 23:40:46', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44701', '172.31.41.52', 'POST', '2020-11-28 23:40:49', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44702', '172.31.41.52', 'POST', '2020-11-28 23:40:49', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44703', '172.31.41.52', 'POST', '2020-11-28 23:40:52', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44704', '172.31.41.52', 'POST', '2020-11-28 23:40:53', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44705', '172.31.41.52', 'POST', '2020-11-28 23:40:55', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44706', '172.31.41.52', 'POST', '2020-11-28 23:42:30', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44707', '172.31.41.52', 'POST', '2020-11-28 23:42:31', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44708', '172.31.41.52', 'POST', '2020-11-28 23:42:31', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44709', '172.31.41.52', 'POST', '2020-11-28 23:42:33', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44710', '172.31.41.52', 'POST', '2020-11-28 23:42:34', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44711', '172.31.41.52', 'POST', '2020-11-28 23:42:34', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44712', '172.31.41.52', 'POST', '2020-11-28 23:42:34', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44713', '172.31.41.52', 'POST', '2020-11-28 23:42:36', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44714', '172.31.41.52', 'POST', '2020-11-28 23:42:36', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44715', '172.31.41.52', 'POST', '2020-11-28 23:42:37', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44716', '172.31.41.52', 'POST', '2020-11-28 23:42:39', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44717', '172.31.41.52', 'POST', '2020-11-28 23:42:41', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44718', '172.31.41.52', 'POST', '2020-11-28 23:42:41', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44719', '172.31.41.52', 'POST', '2020-11-28 23:42:42', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44720', '172.31.41.52', 'POST', '2020-11-28 23:42:43', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44721', '172.31.41.52', 'POST', '2020-11-28 23:42:43', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44722', '172.31.41.52', 'POST', '2020-11-28 23:42:44', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44723', '172.31.41.52', 'POST', '2020-11-28 23:42:45', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44724', '172.31.41.52', 'POST', '2020-11-28 23:42:45', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44725', '172.31.41.52', 'POST', '2020-11-28 23:42:46', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44726', '172.31.41.52', 'POST', '2020-11-28 23:42:47', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44727', '172.31.41.52', 'POST', '2020-11-28 23:42:47', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44728', '172.31.41.52', 'POST', '2020-11-28 23:42:48', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44729', '172.31.41.52', 'POST', '2020-11-28 23:42:49', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44730', '172.31.41.52', 'POST', '2020-11-28 23:42:49', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44731', '172.31.41.52', 'POST', '2020-11-28 23:43:00', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44732', '172.31.41.52', 'POST', '2020-11-28 23:43:04', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44733', '172.31.41.52', 'POST', '2020-11-28 23:43:04', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44734', '172.31.41.52', 'POST', '2020-11-28 23:43:05', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44735', '172.31.41.52', 'POST', '2020-11-28 23:44:05', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44736', '172.31.41.52', 'POST', '2020-11-28 23:44:35', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44737', '172.31.41.52', 'POST', '2020-11-28 23:44:36', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44738', '172.31.41.52', 'POST', '2020-11-28 23:44:37', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44739', '172.31.41.52', 'POST', '2020-11-28 23:44:37', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44740', '172.31.41.52', 'POST', '2020-11-28 23:44:40', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44741', '172.31.41.52', 'POST', '2020-11-28 23:44:40', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44742', '172.31.41.52', 'POST', '2020-11-28 23:44:41', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44743', '172.31.41.52', 'POST', '2020-11-28 23:44:43', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44744', '172.31.41.52', 'POST', '2020-11-28 23:44:43', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44745', '172.31.41.52', 'POST', '2020-11-28 23:44:44', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44746', '172.31.41.52', 'POST', '2020-11-28 23:44:46', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44747', '172.31.41.52', 'POST', '2020-11-28 23:44:47', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44748', '172.31.41.52', 'POST', '2020-11-28 23:44:47', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44749', '172.31.41.52', 'POST', '2020-11-28 23:44:50', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44750', '172.31.41.52', 'POST', '2020-11-28 23:44:50', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44751', '172.31.41.52', 'POST', '2020-11-28 23:44:53', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44752', '172.31.41.52', 'POST', '2020-11-28 23:44:57', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44753', '172.31.41.52', 'POST', '2020-11-28 23:44:57', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44754', '172.31.41.52', 'POST', '2020-11-28 23:44:58', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44755', '172.31.41.52', 'POST', '2020-11-28 23:45:00', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44756', '172.31.41.52', 'POST', '2020-11-28 23:45:00', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44757', '172.31.41.52', 'POST', '2020-11-28 23:45:23', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44758', '172.31.41.52', 'POST', '2020-11-29 01:36:38', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44759', '172.31.41.52', 'POST', '2020-11-29 01:36:38', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44760', '172.31.41.52', 'POST', '2020-11-29 01:36:38', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44761', '172.31.41.52', 'POST', '2020-11-29 01:36:38', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44762', '172.31.41.52', 'POST', '2020-11-29 01:36:38', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44763', '172.31.41.52', 'POST', '2020-11-29 01:36:38', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44764', '172.31.41.52', 'POST', '2020-11-29 01:37:09', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44765', '172.31.41.52', 'POST', '2020-11-29 01:37:09', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44766', '172.31.41.52', 'POST', '2020-11-29 01:37:09', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44767', '172.31.41.52', 'POST', '2020-11-29 01:37:09', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44768', '172.31.41.52', 'POST', '2020-11-29 01:37:09', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44769', '172.31.41.52', 'POST', '2020-11-29 01:37:09', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44770', '172.31.41.52', 'POST', '2020-11-29 01:37:20', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44771', '172.31.41.52', 'POST', '2020-11-29 01:37:21', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44772', '172.31.41.52', 'POST', '2020-11-29 01:37:22', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44773', '172.31.41.52', 'POST', '2020-11-29 01:37:22', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44774', '172.31.41.52', 'POST', '2020-11-29 01:37:22', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44775', '172.31.41.52', 'POST', '2020-11-29 01:37:22', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44776', '172.31.41.52', 'POST', '2020-11-29 01:37:22', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44777', '172.31.41.52', 'POST', '2020-11-29 01:37:22', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44778', '172.31.41.52', 'POST', '2020-11-29 01:37:23', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44779', '172.31.41.52', 'POST', '2020-11-29 01:37:23', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44780', '172.31.41.52', 'POST', '2020-11-29 01:38:39', '1', '6', '所有角色SysRole', '/system/role/all');
INSERT INTO `admin_access_log` VALUES ('44781', '172.31.41.52', 'POST', '2020-11-29 01:38:39', '1', '6', '全部权限树Menu', '/system/role/permission/all');
INSERT INTO `admin_access_log` VALUES ('44782', '172.31.41.52', 'POST', '2020-11-29 01:38:42', '1', '6', '角色拥有的权限Menu', '/system/role/permission');
INSERT INTO `admin_access_log` VALUES ('44783', '172.31.41.52', 'POST', '2020-11-29 01:39:02', '1', '6', '创建或修改角色SysRole', '/system/role/merge');
INSERT INTO `admin_access_log` VALUES ('44784', '172.31.41.52', 'POST', '2020-11-29 01:39:03', '1', '6', '所有角色SysRole', '/system/role/all');
INSERT INTO `admin_access_log` VALUES ('44785', '172.31.41.52', 'POST', '2020-11-29 01:39:05', '1', '6', '全部权限树Menu', '/system/role/permission/all');
INSERT INTO `admin_access_log` VALUES ('44786', '172.31.41.52', 'POST', '2020-11-29 01:39:05', '1', '6', '所有角色SysRole', '/system/role/all');
INSERT INTO `admin_access_log` VALUES ('44787', '172.31.41.52', 'POST', '2020-11-29 01:50:56', '1', '6', '所有角色SysRole', '/system/role/all');
INSERT INTO `admin_access_log` VALUES ('44788', '172.31.41.52', 'POST', '2020-11-29 01:50:56', '1', '6', '全部权限树Menu', '/system/role/permission/all');
INSERT INTO `admin_access_log` VALUES ('44789', '172.31.41.52', 'POST', '2020-11-29 01:51:22', '1', '6', '全部权限树Menu', '/system/role/permission/all');
INSERT INTO `admin_access_log` VALUES ('44790', '172.31.41.52', 'POST', '2020-11-29 01:51:22', '1', '6', '所有角色SysRole', '/system/role/all');
INSERT INTO `admin_access_log` VALUES ('44791', '172.31.41.52', 'POST', '2020-11-29 01:51:25', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44792', '172.31.41.52', 'POST', '2020-11-29 01:51:26', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44793', '172.31.41.52', 'POST', '2020-11-29 01:51:26', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('44794', '172.31.41.52', 'POST', '2020-11-29 01:51:27', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44795', '172.31.41.52', 'POST', '2020-11-29 01:51:27', '1', '12', '预测合约订单 列表', '/option/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44796', '172.31.41.52', 'POST', '2020-11-29 01:51:27', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44797', '172.31.41.52', 'POST', '2020-11-29 01:51:36', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44798', '172.31.41.52', 'POST', '2020-11-29 01:51:37', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('44799', '172.31.41.52', 'POST', '2020-11-29 01:51:37', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44800', '172.31.41.52', 'POST', '2020-11-29 02:00:20', '1', '12', '预测合约交易对 新增', '/option-coin/add');
INSERT INTO `admin_access_log` VALUES ('44801', '172.31.41.52', 'POST', '2020-11-29 02:00:20', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44802', '172.31.41.52', 'POST', '2020-11-29 02:00:47', '1', '12', '预测合约交易对 新增', '/option-coin/add');
INSERT INTO `admin_access_log` VALUES ('44803', '172.31.41.52', 'POST', '2020-11-29 02:00:47', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44804', '172.31.41.52', 'POST', '2020-11-29 02:01:05', '1', '12', '预测合约交易对 新增', '/option-coin/add');
INSERT INTO `admin_access_log` VALUES ('44805', '172.31.41.52', 'POST', '2020-11-29 02:01:05', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44806', '172.31.41.52', 'POST', '2020-11-29 02:01:08', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44807', '172.31.41.52', 'POST', '2020-11-29 02:01:08', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('44808', '172.31.41.52', 'POST', '2020-11-29 02:01:12', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('44809', '172.31.41.52', 'POST', '2020-11-29 02:01:13', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('44810', '172.31.41.52', 'POST', '2020-11-29 02:01:14', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44811', '172.31.41.52', 'POST', '2020-11-29 02:01:14', '1', '12', '预测合约订单 列表', '/option/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44812', '172.31.41.52', 'POST', '2020-11-29 02:01:15', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44813', '172.31.41.52', 'POST', '2020-11-29 02:01:15', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('44814', '172.31.41.52', 'POST', '2020-11-29 02:02:34', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('44815', '172.31.41.52', 'POST', '2020-11-29 02:02:36', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44816', '172.31.41.52', 'POST', '2020-11-29 02:02:37', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44817', '172.31.41.52', 'POST', '2020-11-29 02:02:37', '1', '12', '预测合约订单 列表', '/option/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44818', '172.31.41.52', 'POST', '2020-11-29 02:02:38', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44819', '172.31.41.52', 'POST', '2020-11-29 02:02:38', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('44820', '172.31.41.52', 'POST', '2020-11-29 02:02:39', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44821', '172.31.41.52', 'POST', '2020-11-29 02:02:40', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44822', '172.31.41.52', 'POST', '2020-11-29 02:02:43', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44823', '172.31.41.52', 'POST', '2020-11-29 02:02:50', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44824', '172.31.41.52', 'POST', '2020-11-29 02:02:54', '1', '6', '修改用户等级', '/member/alter-member-superpartner');
INSERT INTO `admin_access_log` VALUES ('44825', '172.31.41.52', 'POST', '2020-11-29 02:02:55', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44826', '172.31.41.52', 'POST', '2020-11-29 03:18:20', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44827', '172.31.41.52', 'POST', '2020-11-29 03:18:21', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44828', '172.31.41.52', 'POST', '2020-11-29 03:18:23', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44829', '172.31.41.52', 'POST', '2020-11-29 03:18:23', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44830', '172.31.41.52', 'POST', '2020-11-29 03:18:24', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44831', '172.31.41.52', 'POST', '2020-11-29 03:18:24', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44832', '172.31.41.52', 'POST', '2020-11-29 03:18:24', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44833', '172.31.41.52', 'POST', '2020-11-29 03:18:24', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44834', '172.31.41.52', 'POST', '2020-11-29 03:18:24', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44835', '172.31.41.52', 'POST', '2020-11-29 03:18:24', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44836', '172.31.41.52', 'POST', '2020-11-29 03:23:36', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44837', '172.31.41.52', 'POST', '2020-11-29 03:23:37', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44838', '172.31.41.52', 'POST', '2020-11-29 03:23:38', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44839', '172.31.41.52', 'POST', '2020-11-29 03:23:38', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44840', '172.31.41.52', 'POST', '2020-11-29 03:23:39', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44841', '172.31.41.52', 'POST', '2020-11-29 03:23:39', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44842', '172.31.41.52', 'POST', '2020-11-29 03:23:39', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44843', '172.31.41.52', 'POST', '2020-11-29 03:23:39', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44844', '172.31.41.52', 'POST', '2020-11-29 03:23:39', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44845', '172.31.41.52', 'POST', '2020-11-29 03:23:39', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44846', '172.31.41.52', 'POST', '2020-11-29 03:23:44', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44847', '172.31.41.52', 'POST', '2020-11-29 03:23:45', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44848', '172.31.41.52', 'POST', '2020-11-29 03:23:45', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('44849', '172.31.41.52', 'POST', '2020-11-29 03:23:46', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44850', '172.31.41.52', 'POST', '2020-11-29 03:23:46', '1', '12', '预测合约订单 列表', '/option/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44851', '172.31.41.52', 'POST', '2020-11-29 03:23:47', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44852', '172.31.41.52', 'POST', '2020-11-29 03:23:47', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('44853', '172.31.41.52', 'POST', '2020-11-29 03:23:51', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44854', '172.31.41.52', 'POST', '2020-11-29 03:23:52', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44855', '172.31.41.52', 'POST', '2020-11-29 03:23:53', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44856', '172.31.41.52', 'POST', '2020-11-29 03:23:53', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44857', '172.31.41.52', 'POST', '2020-11-29 03:23:54', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44858', '172.31.41.52', 'POST', '2020-11-29 03:23:54', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('44859', '172.31.41.52', 'POST', '2020-11-29 03:23:55', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44860', '172.31.41.52', 'POST', '2020-11-29 03:23:55', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44861', '172.31.41.52', 'POST', '2020-11-29 03:24:00', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44862', '172.31.41.52', 'POST', '2020-11-29 03:24:02', '1', '0', '邀请管理多条件查询', '/invite/management/query');
INSERT INTO `admin_access_log` VALUES ('44863', '172.31.41.52', 'POST', '2020-11-29 03:24:02', '1', '0', '邀请排名条件查询', '/invite/management/rank');
INSERT INTO `admin_access_log` VALUES ('44864', '172.31.41.52', 'POST', '2020-11-29 03:24:04', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44865', '172.31.41.52', 'POST', '2020-11-29 03:27:35', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44866', '172.31.41.52', 'POST', '2020-11-29 03:27:41', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44867', '172.31.41.52', 'POST', '2020-11-29 03:29:40', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44868', '172.31.41.52', 'POST', '2020-11-29 03:29:40', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44869', '172.31.41.52', 'POST', '2020-11-29 03:29:40', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44870', '172.31.41.52', 'POST', '2020-11-29 03:29:40', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44871', '172.31.41.52', 'POST', '2020-11-29 03:29:40', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44872', '172.31.41.52', 'POST', '2020-11-29 03:29:40', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44873', '172.31.41.52', 'POST', '2020-11-29 04:50:05', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44874', '172.31.41.52', 'POST', '2020-11-29 04:50:06', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44875', '172.31.41.52', 'POST', '2020-11-29 04:50:08', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44876', '172.31.41.52', 'POST', '2020-11-29 04:50:08', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44877', '172.31.41.52', 'POST', '2020-11-29 04:50:08', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44878', '172.31.41.52', 'POST', '2020-11-29 04:50:08', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44879', '172.31.41.52', 'POST', '2020-11-29 04:50:09', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44880', '172.31.41.52', 'POST', '2020-11-29 04:50:09', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44881', '172.31.41.52', 'POST', '2020-11-29 04:50:09', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44882', '172.31.41.52', 'POST', '2020-11-29 04:50:09', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44883', '172.31.41.52', 'POST', '2020-11-29 04:54:49', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44884', '172.31.41.52', 'POST', '2020-11-29 04:54:49', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44885', '172.31.41.52', 'POST', '2020-11-29 04:54:49', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44886', '172.31.41.52', 'POST', '2020-11-29 04:54:49', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44887', '172.31.41.52', 'POST', '2020-11-29 04:54:49', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44888', '172.31.41.52', 'POST', '2020-11-29 04:54:49', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44889', '172.31.41.52', 'POST', '2020-11-29 04:54:58', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44890', '172.31.41.52', 'POST', '2020-11-29 04:54:59', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44891', '172.31.41.52', 'POST', '2020-11-29 04:55:00', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44892', '172.31.41.52', 'POST', '2020-11-29 04:55:00', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44893', '172.31.41.52', 'POST', '2020-11-29 04:55:01', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44894', '172.31.41.52', 'POST', '2020-11-29 04:55:01', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44895', '172.31.41.52', 'POST', '2020-11-29 04:55:01', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44896', '172.31.41.52', 'POST', '2020-11-29 04:55:01', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44897', '172.31.41.52', 'POST', '2020-11-29 04:55:01', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44898', '172.31.41.52', 'POST', '2020-11-29 04:55:01', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44899', '172.31.41.52', 'POST', '2020-11-29 04:59:24', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44900', '172.31.41.52', 'POST', '2020-11-29 04:59:25', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44901', '172.31.41.52', 'POST', '2020-11-29 04:59:26', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44902', '172.31.41.52', 'POST', '2020-11-29 04:59:26', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44903', '172.31.41.52', 'POST', '2020-11-29 04:59:26', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44904', '172.31.41.52', 'POST', '2020-11-29 04:59:26', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44905', '172.31.41.52', 'POST', '2020-11-29 04:59:26', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44906', '172.31.41.52', 'POST', '2020-11-29 04:59:26', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44907', '172.31.41.52', 'POST', '2020-11-29 04:59:26', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44908', '172.31.41.52', 'POST', '2020-11-29 04:59:26', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44909', '172.31.41.52', 'POST', '2020-11-29 04:59:42', '1', '9', '分页查看活动列表Activity', '/activity/activity/page-query');
INSERT INTO `admin_access_log` VALUES ('44910', '172.31.41.52', 'GET', '2020-11-29 04:59:50', '1', '6', '分页查找操作/访问日志AdminAccessLog', '/system/access-log/page-query/');
INSERT INTO `admin_access_log` VALUES ('44911', '172.31.41.52', 'POST', '2020-11-29 05:00:39', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44912', '172.31.41.52', 'POST', '2020-11-29 05:00:39', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44913', '172.31.41.52', 'POST', '2020-11-29 05:00:41', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44914', '172.31.41.52', 'POST', '2020-11-29 05:00:41', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44915', '172.31.41.52', 'POST', '2020-11-29 05:00:42', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44916', '172.31.41.52', 'POST', '2020-11-29 05:00:42', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44917', '172.31.41.52', 'POST', '2020-11-29 05:00:42', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44918', '172.31.41.52', 'POST', '2020-11-29 05:00:42', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44919', '172.31.41.52', 'POST', '2020-11-29 05:00:42', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44920', '172.31.41.52', 'POST', '2020-11-29 05:00:42', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44921', '172.31.41.52', 'POST', '2020-11-29 06:10:41', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44922', '172.31.41.52', 'POST', '2020-11-29 06:10:41', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44923', '172.31.41.52', 'POST', '2020-11-29 06:10:42', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44924', '172.31.41.52', 'POST', '2020-11-29 06:10:42', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44925', '172.31.41.52', 'POST', '2020-11-29 06:10:42', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44926', '172.31.41.52', 'POST', '2020-11-29 06:10:42', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44927', '172.31.41.52', 'POST', '2020-11-29 06:10:46', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44928', '172.31.41.52', 'POST', '2020-11-29 06:10:47', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44929', '172.31.41.52', 'POST', '2020-11-29 06:10:47', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('44930', '172.31.41.52', 'POST', '2020-11-29 06:10:47', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44931', '172.31.41.52', 'POST', '2020-11-29 06:10:47', '1', '12', '预测合约订单 列表', '/option/order/page-query');
INSERT INTO `admin_access_log` VALUES ('44932', '172.31.41.52', 'POST', '2020-11-29 06:10:49', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44933', '172.31.41.52', 'POST', '2020-11-29 06:11:37', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('44934', '172.31.41.52', 'POST', '2020-11-29 06:11:38', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44935', '172.31.41.52', 'POST', '2020-11-29 06:11:40', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('44936', '172.31.41.52', 'POST', '2020-11-29 06:11:40', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44937', '172.31.41.52', 'POST', '2020-11-29 06:11:40', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44938', '172.31.41.52', 'POST', '2020-11-29 06:11:41', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('44939', '172.31.41.52', 'POST', '2020-11-29 06:11:41', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('44940', '172.31.41.52', 'POST', '2020-11-29 06:11:41', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('44941', '172.31.41.52', 'POST', '2020-11-29 06:11:41', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44942', '172.31.41.52', 'POST', '2020-11-29 06:11:41', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('44943', '172.31.41.52', 'POST', '2020-11-29 06:11:41', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44944', '172.31.41.52', 'POST', '2020-11-29 06:11:49', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44945', '172.31.41.52', 'POST', '2020-11-29 06:11:54', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('44946', '172.31.41.52', 'POST', '2020-11-29 06:11:57', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('44947', '172.31.41.52', 'POST', '2020-11-29 06:12:03', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44948', '172.31.41.52', 'POST', '2020-11-29 06:12:04', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('44949', '172.31.41.52', 'POST', '2020-11-29 06:12:05', '1', '4', '会员MemberApplication认证信息详情', '/member/member-application/detail');
INSERT INTO `admin_access_log` VALUES ('44950', '172.31.41.52', 'POST', '2020-11-29 06:12:07', '1', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('44951', '172.31.41.52', 'POST', '2020-11-29 06:12:12', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44952', '172.31.41.52', 'POST', '2020-11-29 06:12:29', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('44953', '172.31.41.52', 'POST', '2020-11-29 06:12:45', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('44954', '172.31.41.52', 'POST', '2020-11-29 06:12:48', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44955', '172.31.41.52', 'POST', '2020-11-29 06:12:50', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44956', '172.31.41.52', 'POST', '2020-11-29 06:13:03', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44957', '172.31.41.52', 'POST', '2020-11-29 06:13:03', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44958', '172.31.41.52', 'POST', '2020-11-29 06:13:04', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44959', '172.31.41.52', 'POST', '2020-11-29 06:13:06', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44960', '172.31.41.52', 'POST', '2020-11-29 06:13:07', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44961', '172.31.41.52', 'POST', '2020-11-29 06:13:08', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44962', '172.31.41.52', 'POST', '2020-11-29 06:13:10', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44963', '172.31.41.52', 'POST', '2020-11-29 06:13:10', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44964', '172.31.41.52', 'POST', '2020-11-29 06:13:11', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44965', '172.31.41.52', 'POST', '2020-11-29 06:13:12', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44966', '172.31.41.52', 'POST', '2020-11-29 06:13:13', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44967', '172.31.41.52', 'POST', '2020-11-29 06:13:14', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44968', '172.31.41.52', 'POST', '2020-11-29 06:13:16', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44969', '172.31.41.52', 'POST', '2020-11-29 06:13:16', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44970', '172.31.41.52', 'POST', '2020-11-29 06:13:17', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44971', '172.31.41.52', 'POST', '2020-11-29 06:13:19', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44972', '172.31.41.52', 'POST', '2020-11-29 06:13:19', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44973', '172.31.41.52', 'POST', '2020-11-29 06:13:20', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44974', '172.31.41.52', 'POST', '2020-11-29 06:13:23', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('44975', '172.31.41.52', 'POST', '2020-11-29 06:13:23', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44976', '172.31.41.52', 'POST', '2020-11-29 06:13:25', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44977', '172.31.41.52', 'POST', '2020-11-29 06:18:07', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44978', '172.31.41.52', 'POST', '2020-11-29 06:18:12', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('44979', '172.31.41.52', 'POST', '2020-11-29 06:18:14', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('44980', '172.31.41.52', 'POST', '2020-11-29 06:18:15', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('44981', '172.31.41.52', 'POST', '2020-11-29 06:18:17', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('44982', '172.31.41.52', 'POST', '2020-11-29 06:18:28', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44983', '172.31.41.52', 'POST', '2020-11-29 06:18:33', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44984', '172.31.41.52', 'POST', '2020-11-29 06:19:00', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('44985', '172.31.41.52', 'POST', '2020-11-29 06:19:03', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44986', '172.31.41.52', 'POST', '2020-11-29 06:19:07', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44987', '172.31.41.52', 'POST', '2020-11-29 06:19:13', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('44988', '172.31.41.52', 'POST', '2020-11-29 06:19:18', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44989', '172.31.41.52', 'POST', '2020-11-29 06:19:21', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44990', '172.31.41.52', 'POST', '2020-11-29 06:19:29', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44991', '172.31.41.52', 'POST', '2020-11-29 06:19:32', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44992', '172.31.41.52', 'POST', '2020-11-29 06:19:35', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44993', '172.31.41.52', 'POST', '2020-11-29 06:19:39', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44994', '172.31.41.52', 'POST', '2020-11-29 06:19:42', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44995', '172.31.41.52', 'POST', '2020-11-29 06:19:45', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44996', '172.31.41.52', 'POST', '2020-11-29 06:19:45', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44997', '172.31.41.52', 'POST', '2020-11-29 06:19:48', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('44998', '172.31.41.52', 'POST', '2020-11-29 06:19:48', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('44999', '172.31.41.52', 'POST', '2020-11-29 06:19:53', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45000', '172.31.41.52', 'POST', '2020-11-29 06:19:59', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45001', '172.31.41.52', 'POST', '2020-11-29 06:22:10', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45002', '172.31.41.52', 'POST', '2020-11-29 06:22:13', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45003', '172.31.41.52', 'POST', '2020-11-29 06:22:15', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45004', '172.31.41.52', 'POST', '2020-11-29 06:22:24', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45005', '172.31.41.52', 'POST', '2020-11-29 06:22:29', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45006', '172.31.41.52', 'POST', '2020-11-29 06:22:40', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45007', '172.31.41.52', 'POST', '2020-11-29 06:22:45', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45008', '172.31.41.52', 'POST', '2020-11-29 06:22:48', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45009', '172.31.41.52', 'POST', '2020-11-29 06:22:51', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45010', '172.31.41.52', 'POST', '2020-11-29 06:22:53', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45011', '172.31.41.52', 'POST', '2020-11-29 06:22:55', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45012', '172.31.41.52', 'POST', '2020-11-29 06:22:56', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45013', '172.31.41.52', 'POST', '2020-11-29 06:22:58', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45014', '172.31.41.52', 'POST', '2020-11-29 06:23:00', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45015', '172.31.41.52', 'POST', '2020-11-29 06:23:02', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45016', '172.31.41.52', 'POST', '2020-11-29 06:23:04', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45017', '172.31.41.52', 'POST', '2020-11-29 06:23:06', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45018', '172.31.41.52', 'POST', '2020-11-29 06:23:08', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45019', '172.31.41.52', 'POST', '2020-11-29 06:23:10', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45020', '172.31.41.52', 'POST', '2020-11-29 06:27:00', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45021', '172.31.41.52', 'POST', '2020-11-29 06:27:07', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45022', '172.31.41.52', 'POST', '2020-11-29 06:27:08', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45023', '172.31.41.52', 'POST', '2020-11-29 06:28:19', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45024', '172.31.41.52', 'POST', '2020-11-29 06:28:22', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('45025', '172.31.41.52', 'POST', '2020-11-29 06:28:27', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45026', '172.31.41.52', 'POST', '2020-11-29 06:28:29', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45027', '172.31.41.52', 'POST', '2020-11-29 06:28:32', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('45028', '172.31.41.52', 'POST', '2020-11-29 06:29:29', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45029', '172.31.41.52', 'POST', '2020-11-29 06:29:29', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45030', '172.31.41.52', 'POST', '2020-11-29 06:29:31', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45031', '172.31.41.52', 'POST', '2020-11-29 06:29:33', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('45032', '172.31.41.52', 'POST', '2020-11-29 06:29:36', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45033', '172.31.41.52', 'POST', '2020-11-29 06:29:37', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45034', '172.31.41.52', 'POST', '2020-11-29 06:29:40', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('45035', '172.31.41.52', 'POST', '2020-11-29 06:33:38', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45036', '172.31.41.52', 'POST', '2020-11-29 06:33:42', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45037', '172.31.41.52', 'POST', '2020-11-29 06:33:42', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45038', '172.31.41.52', 'POST', '2020-11-29 06:33:42', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45039', '172.31.41.52', 'POST', '2020-11-29 06:33:42', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45040', '172.31.41.52', 'POST', '2020-11-29 06:33:42', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45041', '172.31.41.52', 'POST', '2020-11-29 06:33:42', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45042', '172.31.41.52', 'POST', '2020-11-29 06:33:44', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45043', '172.31.41.52', 'POST', '2020-11-29 06:33:44', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45044', '172.31.41.52', 'POST', '2020-11-29 06:33:45', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45045', '172.31.41.52', 'POST', '2020-11-29 06:33:45', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45046', '172.31.41.52', 'POST', '2020-11-29 06:33:45', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45047', '172.31.41.52', 'POST', '2020-11-29 06:33:45', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45048', '172.31.41.52', 'POST', '2020-11-29 06:33:46', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('45049', '172.31.41.52', 'POST', '2020-11-29 06:33:50', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45050', '172.31.41.52', 'POST', '2020-11-29 06:34:13', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45051', '172.31.41.52', 'POST', '2020-11-29 06:34:19', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45052', '172.31.41.52', 'POST', '2020-11-29 06:34:22', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45053', '172.31.41.52', 'POST', '2020-11-29 06:34:24', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45054', '172.31.41.52', 'POST', '2020-11-29 06:34:27', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45055', '172.31.41.52', 'POST', '2020-11-29 06:34:30', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45056', '172.31.41.52', 'POST', '2020-11-29 06:34:30', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45057', '172.31.41.52', 'POST', '2020-11-29 06:34:32', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45058', '172.31.41.52', 'POST', '2020-11-29 06:34:34', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45059', '172.31.41.52', 'POST', '2020-11-29 06:34:36', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45060', '172.31.41.52', 'POST', '2020-11-29 06:34:37', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45061', '172.31.41.52', 'POST', '2020-11-29 06:34:40', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45062', '172.31.41.52', 'POST', '2020-11-29 06:34:40', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45063', '172.31.41.52', 'POST', '2020-11-29 06:34:43', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45064', '172.31.41.52', 'POST', '2020-11-29 06:34:46', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45065', '172.31.41.52', 'POST', '2020-11-29 06:34:48', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45066', '172.31.41.52', 'POST', '2020-11-29 06:34:49', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45067', '172.31.41.52', 'POST', '2020-11-29 06:34:50', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45068', '172.31.41.52', 'POST', '2020-11-29 06:34:56', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45069', '172.31.41.52', 'POST', '2020-11-29 06:35:01', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45070', '172.31.41.52', 'POST', '2020-11-29 06:35:04', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45071', '172.31.41.52', 'POST', '2020-11-29 06:35:07', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45072', '172.31.41.52', 'POST', '2020-11-29 06:35:09', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45073', '172.31.41.52', 'POST', '2020-11-29 06:35:10', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45074', '172.31.41.52', 'POST', '2020-11-29 06:35:13', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45075', '172.31.41.52', 'POST', '2020-11-29 06:35:15', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45076', '172.31.41.52', 'POST', '2020-11-29 06:35:18', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45077', '172.31.41.52', 'POST', '2020-11-29 06:35:18', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45078', '172.31.41.52', 'POST', '2020-11-29 06:35:19', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45079', '172.31.41.52', 'POST', '2020-11-29 06:35:44', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45080', '172.31.41.52', 'POST', '2020-11-29 06:35:48', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45081', '172.31.41.52', 'POST', '2020-11-29 06:35:55', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45082', '172.31.41.52', 'POST', '2020-11-29 06:35:57', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45083', '172.31.41.52', 'POST', '2020-11-29 06:36:39', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45084', '172.31.41.52', 'POST', '2020-11-29 06:36:43', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45085', '172.31.41.52', 'POST', '2020-11-29 06:36:45', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45086', '172.31.41.52', 'POST', '2020-11-29 06:36:59', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45087', '172.31.41.52', 'POST', '2020-11-29 06:37:01', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('45088', '172.31.41.52', 'POST', '2020-11-29 06:37:02', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45089', '172.31.41.52', 'POST', '2020-11-29 06:37:03', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45090', '172.31.41.52', 'POST', '2020-11-29 06:37:05', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('45091', '172.31.41.52', 'POST', '2020-11-29 06:37:05', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45092', '172.31.41.52', 'POST', '2020-11-29 06:37:06', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45093', '172.31.41.52', 'POST', '2020-11-29 06:37:08', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('45094', '172.31.41.52', 'POST', '2020-11-29 06:37:08', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45095', '172.31.41.52', 'POST', '2020-11-29 06:37:09', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45096', '172.31.41.52', 'POST', '2020-11-29 06:37:10', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('45097', '172.31.41.52', 'POST', '2020-11-29 06:37:10', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45098', '172.31.41.52', 'POST', '2020-11-29 06:37:11', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45099', '172.31.41.52', 'POST', '2020-11-29 06:37:12', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('45100', '172.31.41.52', 'POST', '2020-11-29 06:37:12', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45101', '172.31.41.52', 'POST', '2020-11-29 06:37:13', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45102', '172.31.41.52', 'POST', '2020-11-29 06:37:14', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('45103', '172.31.41.52', 'POST', '2020-11-29 06:37:14', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45104', '172.31.41.52', 'POST', '2020-11-29 06:37:17', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45105', '172.31.41.52', 'POST', '2020-11-29 06:37:18', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('45106', '172.31.41.52', 'POST', '2020-11-29 06:37:18', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45107', '172.31.41.52', 'POST', '2020-11-29 06:37:19', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45108', '172.31.41.52', 'POST', '2020-11-29 06:37:20', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('45109', '172.31.41.52', 'POST', '2020-11-29 06:37:20', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45110', '172.31.41.52', 'POST', '2020-11-29 06:37:22', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45111', '172.31.41.52', 'POST', '2020-11-29 06:37:26', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45112', '172.31.41.52', 'POST', '2020-11-29 06:37:27', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('45113', '172.31.41.52', 'POST', '2020-11-29 06:37:27', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45114', '172.31.41.52', 'POST', '2020-11-29 06:37:28', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45115', '172.31.41.52', 'POST', '2020-11-29 06:37:29', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('45116', '172.31.41.52', 'POST', '2020-11-29 06:37:29', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45117', '172.31.41.52', 'POST', '2020-11-29 06:38:36', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45118', '172.31.41.52', 'POST', '2020-11-29 06:38:38', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('45119', '172.31.41.52', 'POST', '2020-11-29 06:38:38', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45120', '172.31.41.52', 'POST', '2020-11-29 06:38:39', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45121', '172.31.41.52', 'POST', '2020-11-29 06:38:40', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('45122', '172.31.41.52', 'POST', '2020-11-29 06:38:40', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45123', '172.31.41.52', 'POST', '2020-11-29 06:38:41', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45124', '172.31.41.52', 'POST', '2020-11-29 06:38:42', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('45125', '172.31.41.52', 'POST', '2020-11-29 06:38:42', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45126', '172.31.41.52', 'POST', '2020-11-29 06:38:44', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45127', '172.31.41.52', 'POST', '2020-11-29 06:38:46', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45128', '172.31.41.52', 'POST', '2020-11-29 06:38:47', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45129', '172.31.41.52', 'POST', '2020-11-29 06:43:26', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45130', '172.31.41.52', 'POST', '2020-11-29 06:43:29', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45131', '172.31.41.52', 'POST', '2020-11-29 06:43:31', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45132', '172.31.41.52', 'POST', '2020-11-29 06:43:32', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45133', '172.31.41.52', 'POST', '2020-11-29 06:43:34', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45134', '172.31.41.52', 'POST', '2020-11-29 06:43:34', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45135', '172.31.41.52', 'POST', '2020-11-29 06:43:36', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45136', '172.31.41.52', 'POST', '2020-11-29 06:43:37', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45137', '172.31.41.52', 'POST', '2020-11-29 06:43:39', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45138', '172.31.41.52', 'POST', '2020-11-29 06:43:40', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45139', '172.31.41.52', 'POST', '2020-11-29 06:43:42', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45140', '172.31.41.52', 'POST', '2020-11-29 06:43:42', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45141', '172.31.41.52', 'POST', '2020-11-29 06:43:45', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45142', '172.31.41.52', 'POST', '2020-11-29 06:44:22', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45143', '172.31.41.52', 'POST', '2020-11-29 06:44:25', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45144', '172.31.41.52', 'POST', '2020-11-29 06:44:26', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45145', '172.31.41.52', 'POST', '2020-11-29 06:44:27', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45146', '172.31.41.52', 'POST', '2020-11-29 06:44:31', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45147', '172.31.41.52', 'POST', '2020-11-29 06:44:32', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45148', '172.31.41.52', 'POST', '2020-11-29 06:44:34', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45149', '172.31.41.52', 'POST', '2020-11-29 06:44:36', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45150', '172.31.41.52', 'POST', '2020-11-29 06:44:38', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45151', '172.31.41.52', 'POST', '2020-11-29 06:44:39', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45152', '172.31.41.52', 'POST', '2020-11-29 06:44:40', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45153', '172.31.41.52', 'POST', '2020-11-29 06:44:42', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45154', '172.31.41.52', 'POST', '2020-11-29 06:44:44', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45155', '172.31.41.52', 'POST', '2020-11-29 06:44:49', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45156', '172.31.41.52', 'POST', '2020-11-29 06:44:53', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45157', '172.31.41.52', 'POST', '2020-11-29 06:45:01', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45158', '172.31.41.52', 'POST', '2020-11-29 06:45:03', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45159', '172.31.41.52', 'POST', '2020-11-29 06:45:05', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45160', '172.31.41.52', 'POST', '2020-11-29 06:45:07', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45161', '172.31.41.52', 'POST', '2020-11-29 06:54:51', '1', '0', '邀请管理多条件查询', '/invite/management/query');
INSERT INTO `admin_access_log` VALUES ('45162', '172.31.41.52', 'POST', '2020-11-29 06:54:53', '1', '0', '邀请排名条件查询', '/invite/management/rank');
INSERT INTO `admin_access_log` VALUES ('45163', '172.31.41.52', 'POST', '2020-11-29 06:55:02', '1', '0', '更新邀请信息', '/invite/management/update-rank');
INSERT INTO `admin_access_log` VALUES ('45164', '172.31.41.52', 'POST', '2020-11-29 06:55:02', '1', '0', '邀请排名条件查询', '/invite/management/rank');
INSERT INTO `admin_access_log` VALUES ('45165', '172.31.41.52', 'POST', '2020-11-29 07:05:46', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45166', '172.31.41.52', 'POST', '2020-11-29 07:05:49', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45167', '172.31.41.52', 'POST', '2020-11-29 07:05:52', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('45168', '172.31.41.52', 'POST', '2020-11-29 07:05:53', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45169', '172.31.41.52', 'POST', '2020-11-29 07:07:31', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45170', '172.31.41.52', 'POST', '2020-11-29 07:07:43', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45171', '172.31.41.52', 'POST', '2020-11-29 07:08:50', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45172', '172.31.41.52', 'POST', '2020-11-29 07:08:59', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45173', '172.31.41.52', 'POST', '2020-11-29 07:09:01', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45174', '172.31.41.52', 'POST', '2020-11-29 07:09:03', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45175', '172.31.41.52', 'POST', '2020-11-29 07:09:04', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45176', '172.31.41.52', 'POST', '2020-11-29 07:09:05', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45177', '172.31.41.52', 'POST', '2020-11-29 07:09:05', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45178', '172.31.41.52', 'POST', '2020-11-29 07:09:07', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45179', '172.31.41.52', 'POST', '2020-11-29 07:09:08', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45180', '172.31.41.52', 'POST', '2020-11-29 07:09:08', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45181', '172.31.41.52', 'POST', '2020-11-29 07:09:10', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45182', '172.31.41.52', 'POST', '2020-11-29 07:09:11', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45183', '172.31.41.52', 'POST', '2020-11-29 07:09:13', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45184', '172.31.41.52', 'POST', '2020-11-29 07:09:13', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45185', '172.31.41.52', 'POST', '2020-11-29 07:09:16', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45186', '172.31.41.52', 'POST', '2020-11-29 07:09:16', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45187', '172.31.41.52', 'POST', '2020-11-29 07:09:19', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45188', '172.31.41.52', 'POST', '2020-11-29 07:09:19', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45189', '172.31.41.52', 'POST', '2020-11-29 07:09:22', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45190', '172.31.41.52', 'POST', '2020-11-29 07:09:23', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45191', '172.31.41.52', 'POST', '2020-11-29 07:09:25', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45192', '172.31.41.52', 'POST', '2020-11-29 07:09:26', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45193', '172.31.41.52', 'POST', '2020-11-29 07:09:29', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45194', '172.31.41.52', 'POST', '2020-11-29 07:09:31', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45195', '172.31.41.52', 'POST', '2020-11-29 07:09:34', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45196', '172.31.41.52', 'POST', '2020-11-29 07:09:34', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45197', '172.31.41.52', 'POST', '2020-11-29 07:09:36', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45198', '172.31.41.52', 'POST', '2020-11-29 07:09:37', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45199', '172.31.41.52', 'POST', '2020-11-29 07:09:38', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45200', '172.31.41.52', 'POST', '2020-11-29 07:18:44', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45201', '172.31.41.52', 'POST', '2020-11-29 07:18:45', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45202', '172.31.41.52', 'POST', '2020-11-29 07:18:48', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('45203', '172.31.41.52', 'POST', '2020-11-29 07:18:57', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45204', '172.31.41.52', 'POST', '2020-11-29 07:18:58', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45205', '172.31.41.52', 'POST', '2020-11-29 07:19:00', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('45206', '172.31.41.52', 'POST', '2020-11-29 07:19:10', '1', '2', '修改币币交易对exchangeCoin', '/exchange/exchange-coin/alter-rate');
INSERT INTO `admin_access_log` VALUES ('45207', '172.31.41.52', 'POST', '2020-11-29 07:19:10', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45208', '172.31.41.52', 'POST', '2020-11-29 07:19:18', '1', '2', '修改币币交易对exchangeCoin', '/exchange/exchange-coin/alter-rate');
INSERT INTO `admin_access_log` VALUES ('45209', '172.31.41.52', 'POST', '2020-11-29 07:19:18', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45210', '172.31.41.52', 'POST', '2020-11-29 07:19:21', '1', '2', '重置交易引擎', '/exchange/exchange-coin/reset-trader');
INSERT INTO `admin_access_log` VALUES ('45211', '172.31.41.52', 'POST', '2020-11-29 07:19:27', '1', '2', '暂停交易引擎', '/exchange/exchange-coin/stop-trader');
INSERT INTO `admin_access_log` VALUES ('45212', '172.31.41.52', 'POST', '2020-11-29 07:19:31', '1', '2', '修改币币交易对exchangeCoin', '/exchange/exchange-coin/alter-rate');
INSERT INTO `admin_access_log` VALUES ('45213', '172.31.41.52', 'POST', '2020-11-29 07:19:31', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45214', '172.31.41.52', 'POST', '2020-11-29 07:19:35', '1', '2', '暂停交易引擎', '/exchange/exchange-coin/stop-trader');
INSERT INTO `admin_access_log` VALUES ('45215', '172.31.41.52', 'POST', '2020-11-29 07:19:35', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45216', '172.31.41.52', 'POST', '2020-11-29 07:27:35', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45217', '172.31.41.52', 'POST', '2020-11-29 07:27:43', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45218', '172.31.41.52', 'POST', '2020-11-29 07:27:49', '1', '2', '修改币币交易对exchangeCoin', '/exchange/exchange-coin/alter-rate');
INSERT INTO `admin_access_log` VALUES ('45219', '172.31.41.52', 'POST', '2020-11-29 07:27:49', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45220', '172.31.41.52', 'POST', '2020-11-29 07:27:52', '1', '2', '重置交易引擎', '/exchange/exchange-coin/reset-trader');
INSERT INTO `admin_access_log` VALUES ('45221', '172.31.41.52', 'POST', '2020-11-29 07:27:54', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45222', '172.31.41.52', 'POST', '2020-11-29 07:27:57', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45223', '172.31.41.52', 'POST', '2020-11-29 07:27:59', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45224', '172.31.41.52', 'POST', '2020-11-29 07:28:03', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45225', '172.31.41.52', 'POST', '2020-11-29 07:28:05', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45226', '172.31.41.52', 'POST', '2020-11-29 07:28:06', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45227', '172.31.41.52', 'POST', '2020-11-29 07:28:07', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45228', '172.31.41.52', 'POST', '2020-11-29 07:28:08', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45229', '172.31.41.52', 'POST', '2020-11-29 07:28:10', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45230', '172.31.41.52', 'POST', '2020-11-29 07:28:10', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45231', '172.31.41.52', 'POST', '2020-11-29 07:28:12', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45232', '172.31.41.52', 'POST', '2020-11-29 07:28:17', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45233', '172.31.41.52', 'POST', '2020-11-29 07:28:18', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45234', '172.31.41.52', 'POST', '2020-11-29 07:28:20', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45235', '172.31.41.52', 'POST', '2020-11-29 07:28:23', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45236', '172.31.41.52', 'POST', '2020-11-29 07:28:24', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45237', '172.31.41.52', 'POST', '2020-11-29 07:28:26', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45238', '172.31.41.52', 'POST', '2020-11-29 07:28:27', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45239', '172.31.41.52', 'POST', '2020-11-29 07:28:30', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45240', '172.31.41.52', 'POST', '2020-11-29 07:28:36', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45241', '172.31.41.52', 'POST', '2020-11-29 07:28:39', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45242', '172.31.41.52', 'POST', '2020-11-29 07:28:40', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45243', '172.31.41.52', 'POST', '2020-11-29 07:28:42', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45244', '172.31.41.52', 'POST', '2020-11-29 07:28:43', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45245', '172.31.41.52', 'POST', '2020-11-29 07:28:47', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45246', '172.31.41.52', 'POST', '2020-11-29 07:28:49', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45247', '172.31.41.52', 'POST', '2020-11-29 07:28:49', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45248', '172.31.41.52', 'POST', '2020-11-29 07:28:50', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45249', '172.31.41.52', 'POST', '2020-11-29 07:28:52', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45250', '172.31.41.52', 'POST', '2020-11-29 07:28:54', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45251', '172.31.41.52', 'POST', '2020-11-29 16:02:15', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45252', '172.31.41.52', 'POST', '2020-11-29 16:02:37', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45253', '172.31.41.52', 'POST', '2020-11-29 16:02:40', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('45254', '172.31.41.52', 'POST', '2020-11-29 16:02:42', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45255', '172.31.41.52', 'POST', '2020-11-29 16:02:42', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45256', '172.31.41.52', 'POST', '2020-11-29 16:02:45', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45257', '172.31.41.52', 'POST', '2020-11-29 16:02:45', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45258', '172.31.41.52', 'POST', '2020-11-29 16:02:45', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45259', '172.31.41.52', 'POST', '2020-11-29 16:02:45', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45260', '172.31.41.52', 'POST', '2020-11-29 16:02:46', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45261', '172.31.41.52', 'POST', '2020-11-29 16:02:46', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45262', '172.31.41.52', 'POST', '2020-11-29 16:06:26', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45263', '172.31.41.52', 'POST', '2020-11-29 16:06:26', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45264', '172.31.41.52', 'POST', '2020-11-29 16:06:27', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45265', '172.31.41.52', 'POST', '2020-11-29 16:06:27', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45266', '172.31.41.52', 'POST', '2020-11-29 16:06:27', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45267', '172.31.41.52', 'POST', '2020-11-29 16:06:27', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45268', '172.31.41.52', 'POST', '2020-11-29 17:24:37', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45269', '172.31.41.52', 'POST', '2020-11-29 17:24:37', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45270', '172.31.41.52', 'POST', '2020-11-29 17:24:37', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45271', '172.31.41.52', 'POST', '2020-11-29 17:24:37', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45272', '172.31.41.52', 'POST', '2020-11-29 17:24:38', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45273', '172.31.41.52', 'POST', '2020-11-29 17:24:38', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45274', '172.31.41.52', 'POST', '2020-11-29 17:24:43', '2', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('45275', '172.31.41.52', 'POST', '2020-11-29 21:54:06', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45276', '172.31.41.52', 'POST', '2020-11-29 21:54:06', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45277', '172.31.41.52', 'POST', '2020-11-29 21:54:06', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45278', '172.31.41.52', 'POST', '2020-11-29 21:54:06', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45279', '172.31.41.52', 'POST', '2020-11-29 21:54:06', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45280', '172.31.41.52', 'POST', '2020-11-29 21:54:06', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45281', '172.31.41.52', 'POST', '2020-11-29 21:54:14', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45282', '172.31.41.52', 'POST', '2020-11-29 21:54:20', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45283', '172.31.41.52', 'POST', '2020-11-29 21:54:26', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45284', '172.31.41.52', 'POST', '2020-11-29 21:54:39', '1', '12', '预测合约交易对 新增', '/option-coin/alter');
INSERT INTO `admin_access_log` VALUES ('45285', '172.31.41.52', 'POST', '2020-11-29 21:54:39', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45286', '172.31.41.52', 'POST', '2020-11-29 23:26:29', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45287', '172.31.41.52', 'POST', '2020-11-29 23:29:35', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('45288', '172.31.41.52', 'POST', '2020-11-29 23:29:37', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45289', '172.31.41.52', 'POST', '2020-11-30 00:59:35', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('45290', '172.31.41.52', 'POST', '2020-11-30 00:59:35', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45291', '172.31.41.52', 'POST', '2020-11-30 00:59:39', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45292', '172.31.41.52', 'POST', '2020-11-30 00:59:39', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45293', '172.31.41.52', 'POST', '2020-11-30 00:59:39', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45294', '172.31.41.52', 'POST', '2020-11-30 00:59:39', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45295', '172.31.41.52', 'POST', '2020-11-30 00:59:39', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45296', '172.31.41.52', 'POST', '2020-11-30 00:59:39', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45297', '172.31.41.52', 'POST', '2020-11-30 00:59:40', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45298', '172.31.41.52', 'POST', '2020-11-30 00:59:40', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45299', '172.31.41.52', 'POST', '2020-11-30 00:59:41', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45300', '172.31.41.52', 'POST', '2020-11-30 00:59:41', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45301', '172.31.41.52', 'POST', '2020-11-30 00:59:41', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45302', '172.31.41.52', 'POST', '2020-11-30 00:59:41', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45303', '172.31.41.52', 'POST', '2020-11-30 00:59:48', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45304', '172.31.41.52', 'POST', '2020-11-30 00:59:49', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45305', '172.31.41.52', 'POST', '2020-11-30 00:59:49', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('45306', '172.31.41.52', 'POST', '2020-11-30 00:59:52', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45307', '172.31.41.52', 'POST', '2020-11-30 09:30:12', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45308', '172.31.41.52', 'POST', '2020-11-30 09:31:06', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45309', '172.31.41.52', 'POST', '2020-11-30 09:31:12', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45310', '172.31.41.52', 'POST', '2020-11-30 09:31:13', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45311', '172.31.41.52', 'POST', '2020-11-30 09:31:17', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45312', '172.31.41.52', 'POST', '2020-11-30 09:32:19', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45313', '172.31.41.52', 'POST', '2020-11-30 09:32:21', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45314', '172.31.41.52', 'POST', '2020-11-30 09:32:22', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45315', '172.31.41.52', 'POST', '2020-11-30 09:32:25', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45316', '172.31.41.52', 'POST', '2020-11-30 09:32:27', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45317', '172.31.41.52', 'POST', '2020-11-30 09:32:29', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45318', '172.31.41.52', 'POST', '2020-11-30 09:32:33', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45319', '172.31.41.52', 'POST', '2020-11-30 09:32:35', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45320', '172.31.41.52', 'POST', '2020-11-30 09:32:39', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45321', '172.31.41.52', 'POST', '2020-11-30 09:32:42', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45322', '172.31.41.52', 'POST', '2020-11-30 09:32:45', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45323', '172.31.41.52', 'POST', '2020-11-30 09:32:47', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45324', '172.31.41.52', 'POST', '2020-11-30 09:32:52', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45325', '172.31.41.52', 'POST', '2020-11-30 09:32:54', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45326', '172.31.41.52', 'POST', '2020-11-30 09:32:56', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45327', '172.31.41.52', 'POST', '2020-11-30 09:32:58', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45328', '172.31.41.52', 'POST', '2020-11-30 09:33:06', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45329', '172.31.41.52', 'POST', '2020-11-30 09:33:08', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45330', '172.31.41.52', 'POST', '2020-11-30 09:33:11', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45331', '172.31.41.52', 'POST', '2020-11-30 09:33:12', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45332', '172.31.41.52', 'POST', '2020-11-30 09:33:16', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45333', '172.31.41.52', 'POST', '2020-11-30 09:33:16', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45334', '172.31.41.52', 'POST', '2020-11-30 09:33:20', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45335', '172.31.41.52', 'POST', '2020-11-30 09:33:21', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45336', '172.31.41.52', 'POST', '2020-11-30 09:33:23', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45337', '172.31.41.52', 'POST', '2020-11-30 09:33:23', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45338', '172.31.41.52', 'POST', '2020-11-30 09:33:27', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45339', '172.31.41.52', 'POST', '2020-11-30 09:33:28', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45340', '172.31.41.52', 'POST', '2020-11-30 09:33:30', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45341', '172.31.41.52', 'POST', '2020-11-30 09:33:45', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45342', '172.31.41.52', 'POST', '2020-11-30 09:35:13', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45343', '172.31.41.52', 'POST', '2020-11-30 09:35:17', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45344', '172.31.41.52', 'POST', '2020-11-30 09:35:37', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45345', '172.31.41.52', 'POST', '2020-11-30 09:35:39', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45346', '172.31.41.52', 'POST', '2020-11-30 09:35:40', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45347', '172.31.41.52', 'POST', '2020-11-30 09:35:42', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45348', '172.31.41.52', 'POST', '2020-11-30 09:50:15', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45349', '172.31.41.52', 'POST', '2020-11-30 09:50:16', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45350', '172.31.41.52', 'POST', '2020-11-30 09:50:17', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45351', '172.31.41.52', 'POST', '2020-11-30 09:50:17', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45352', '172.31.41.52', 'POST', '2020-11-30 09:50:18', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45353', '172.31.41.52', 'POST', '2020-11-30 09:50:28', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45354', '172.31.41.52', 'POST', '2020-11-30 09:50:29', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45355', '172.31.41.52', 'POST', '2020-11-30 09:50:30', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45356', '172.31.41.52', 'POST', '2020-11-30 09:50:47', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('45357', '172.31.41.52', 'POST', '2020-11-30 09:50:51', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45358', '172.31.41.52', 'POST', '2020-11-30 09:50:54', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45359', '172.31.41.52', 'POST', '2020-11-30 09:50:56', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('45360', '172.31.41.52', 'POST', '2020-11-30 09:50:56', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45361', '172.31.41.52', 'POST', '2020-11-30 09:51:11', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45362', '172.31.41.52', 'POST', '2020-11-30 09:51:13', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('45363', '172.31.41.52', 'POST', '2020-11-30 09:51:13', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45364', '172.31.41.52', 'POST', '2020-11-30 09:55:27', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45365', '172.31.41.52', 'POST', '2020-11-30 09:55:32', '1', '6', '修改用户等级', '/member/alter-member-superpartner');
INSERT INTO `admin_access_log` VALUES ('45366', '172.31.41.52', 'POST', '2020-11-30 09:55:32', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45367', '172.31.41.52', 'POST', '2020-11-30 13:36:40', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45368', '172.31.41.52', 'POST', '2020-11-30 13:36:41', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('45369', '172.31.41.52', 'POST', '2020-11-30 13:36:43', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45370', '172.31.41.52', 'POST', '2020-11-30 13:36:43', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45371', '172.31.41.52', 'POST', '2020-11-30 13:36:43', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45372', '172.31.41.52', 'POST', '2020-11-30 13:36:43', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45373', '172.31.41.52', 'POST', '2020-11-30 13:36:43', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45374', '172.31.41.52', 'POST', '2020-11-30 13:36:43', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45375', '172.31.41.52', 'POST', '2020-11-30 13:36:43', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45376', '172.31.41.52', 'POST', '2020-11-30 13:36:44', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45377', '172.31.41.52', 'POST', '2020-11-30 13:37:07', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45378', '172.31.41.52', 'POST', '2020-11-30 13:37:11', '2', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('45379', '172.31.41.52', 'POST', '2020-11-30 13:37:11', '2', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('45380', '172.31.41.52', 'POST', '2020-11-30 13:37:12', '2', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('45381', '172.31.41.52', 'POST', '2020-11-30 13:37:13', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45382', '172.31.41.52', 'POST', '2020-11-30 13:37:14', '2', '0', '邀请管理多条件查询', '/invite/management/query');
INSERT INTO `admin_access_log` VALUES ('45383', '172.31.41.52', 'POST', '2020-11-30 13:37:15', '2', '0', '邀请排名条件查询', '/invite/management/rank');
INSERT INTO `admin_access_log` VALUES ('45384', '172.31.41.52', 'POST', '2020-11-30 13:37:16', '2', '0', '邀请管理多条件查询', '/invite/management/query');
INSERT INTO `admin_access_log` VALUES ('45385', '172.31.41.52', 'POST', '2020-11-30 13:37:17', '2', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('45386', '172.31.41.52', 'POST', '2020-11-30 13:37:18', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45387', '172.31.41.52', 'POST', '2020-11-30 13:37:19', '2', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('45388', '172.31.41.52', 'POST', '2020-11-30 13:37:20', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45389', '172.31.41.52', 'POST', '2020-11-30 13:37:21', '2', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('45390', '172.31.41.52', 'POST', '2020-11-30 13:37:22', '2', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('45391', '172.31.41.52', 'POST', '2020-11-30 13:37:29', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45392', '172.31.41.52', 'POST', '2020-11-30 13:37:41', '2', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45393', '172.31.41.52', 'GET', '2020-11-30 13:37:41', '2', '6', '分页查找操作/访问日志AdminAccessLog', '/system/access-log/page-query/');
INSERT INTO `admin_access_log` VALUES ('45394', '172.31.41.52', 'POST', '2020-11-30 13:37:42', '2', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('45395', '172.31.41.52', 'GET', '2020-11-30 13:37:45', '2', '6', '分页查找操作/访问日志AdminAccessLog', '/system/access-log/page-query/');
INSERT INTO `admin_access_log` VALUES ('45396', '172.31.41.52', 'POST', '2020-11-30 13:37:54', '2', '3', '法币/币币  总成交量/总成交额', '/finance/statistics/turnover-all');
INSERT INTO `admin_access_log` VALUES ('45397', '172.31.41.52', 'POST', '2020-11-30 13:37:54', '2', '3', '手续费统计 总计[\"OTC_NUM\",\"WITHDRAW\",\"EXCHANGE\"]', '/finance/statistics/fee');
INSERT INTO `admin_access_log` VALUES ('45398', '172.31.41.52', 'POST', '2020-11-30 13:37:54', '2', '3', '充币/提币总量统计', '/finance/statistics/recharge-or-withdraw-amount');
INSERT INTO `admin_access_log` VALUES ('45399', '172.31.41.52', 'POST', '2020-11-30 13:38:29', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45400', '172.31.41.52', 'POST', '2020-11-30 13:38:30', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('45401', '172.31.41.52', 'POST', '2020-11-30 13:38:32', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45402', '172.31.41.52', 'POST', '2020-11-30 13:38:32', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45403', '172.31.41.52', 'POST', '2020-11-30 13:38:32', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45404', '172.31.41.52', 'POST', '2020-11-30 13:38:33', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45405', '172.31.41.52', 'POST', '2020-11-30 13:38:33', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45406', '172.31.41.52', 'POST', '2020-11-30 13:38:33', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45407', '172.31.41.52', 'POST', '2020-11-30 13:38:33', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45408', '172.31.41.52', 'GET', '2020-11-30 13:38:43', '2', '6', '分页查找操作/访问日志AdminAccessLog', '/system/access-log/page-query/');
INSERT INTO `admin_access_log` VALUES ('45409', '172.31.41.52', 'POST', '2020-11-30 13:38:48', '2', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('45410', '172.31.41.52', 'POST', '2020-11-30 13:38:58', '2', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('45411', '172.31.41.52', 'POST', '2020-11-30 13:39:02', '2', '10', '分页查看CTC订单列表AdminCtcOrderController', '/ctc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('45412', '172.31.41.52', 'POST', '2020-11-30 13:39:06', '2', '5', '分页查找后台广告Advertise', '/otc/advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('45413', '172.31.41.52', 'POST', '2020-11-30 13:39:07', '2', '5', '分页查找法币交易订单Order', '/otc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('45414', '172.31.41.52', 'POST', '2020-11-30 13:39:07', '2', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('45415', '172.31.41.52', 'POST', '2020-11-30 13:39:10', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45416', '172.31.41.52', 'POST', '2020-11-30 13:39:18', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45417', '172.31.41.52', 'POST', '2020-11-30 13:39:21', '2', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('45418', '172.31.41.52', 'POST', '2020-11-30 13:39:21', '2', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('45419', '172.31.41.52', 'POST', '2020-11-30 13:39:21', '2', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('45420', '172.31.41.52', 'POST', '2020-11-30 13:39:22', '2', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('45421', '172.31.41.52', 'POST', '2020-11-30 13:39:25', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45422', '172.31.41.52', 'POST', '2020-11-30 13:39:25', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45423', '172.31.41.52', 'POST', '2020-11-30 13:39:25', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45424', '172.31.41.52', 'POST', '2020-11-30 13:39:25', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45425', '172.31.41.52', 'POST', '2020-11-30 13:39:25', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45426', '172.31.41.52', 'POST', '2020-11-30 13:39:25', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45427', '172.31.41.52', 'POST', '2020-11-30 13:43:02', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45428', '172.31.41.52', 'POST', '2020-11-30 13:43:04', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45429', '172.31.41.52', 'POST', '2020-11-30 13:43:07', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45430', '172.31.41.52', 'POST', '2020-11-30 13:43:09', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('45431', '172.31.41.52', 'POST', '2020-11-30 13:43:10', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45432', '172.31.41.52', 'POST', '2020-11-30 13:43:10', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45433', '172.31.41.52', 'POST', '2020-11-30 13:43:11', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45434', '172.31.41.52', 'POST', '2020-11-30 13:43:11', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45435', '172.31.41.52', 'POST', '2020-11-30 13:43:11', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45436', '172.31.41.52', 'POST', '2020-11-30 13:43:11', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45437', '172.31.41.52', 'POST', '2020-11-30 13:43:12', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45438', '172.31.41.52', 'POST', '2020-11-30 13:43:12', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45439', '172.31.41.52', 'POST', '2020-11-30 13:43:49', '2', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('45440', '172.31.41.52', 'POST', '2020-11-30 13:43:54', '2', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('45441', '172.31.41.52', 'POST', '2020-11-30 13:44:35', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45442', '172.31.41.52', 'POST', '2020-11-30 13:44:37', '2', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('45443', '172.31.41.52', 'POST', '2020-11-30 13:44:37', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45444', '172.31.41.52', 'POST', '2020-11-30 13:44:42', '2', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('45445', '172.31.41.52', 'POST', '2020-11-30 13:44:42', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45446', '172.31.41.52', 'POST', '2020-11-30 13:44:56', '2', '5', '分页查找后台广告Advertise', '/otc/advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('45447', '172.31.41.52', 'POST', '2020-11-30 13:47:07', '2', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45448', '172.31.41.52', 'POST', '2020-11-30 13:47:18', '2', '5', '分页查找后台广告Advertise', '/otc/advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('45449', '172.31.41.52', 'POST', '2020-11-30 14:08:09', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45450', '172.31.41.52', 'POST', '2020-11-30 14:08:18', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45451', '172.31.41.52', 'POST', '2020-11-30 14:08:27', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45452', '172.31.41.52', 'POST', '2020-11-30 14:08:35', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45453', '172.31.41.52', 'POST', '2020-11-30 14:08:37', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('45454', '172.31.41.52', 'POST', '2020-11-30 14:08:39', '2', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('45455', '172.31.41.52', 'POST', '2020-11-30 14:08:39', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45456', '172.31.41.52', 'POST', '2020-11-30 14:08:39', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45457', '172.31.41.52', 'POST', '2020-11-30 14:08:40', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45458', '172.31.41.52', 'POST', '2020-11-30 14:08:40', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45459', '172.31.41.52', 'POST', '2020-11-30 14:08:41', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45460', '172.31.41.52', 'POST', '2020-11-30 14:08:41', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45461', '172.31.41.52', 'POST', '2020-11-30 14:08:41', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45462', '172.31.41.52', 'POST', '2020-11-30 14:08:41', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45463', '172.31.41.52', 'POST', '2020-11-30 14:09:29', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45464', '172.31.41.52', 'POST', '2020-11-30 14:09:35', '2', '6', '修改用户等级', '/member/alter-member-superpartner');
INSERT INTO `admin_access_log` VALUES ('45465', '172.31.41.52', 'POST', '2020-11-30 14:09:36', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45466', '172.31.41.52', 'POST', '2020-11-30 14:09:40', '2', '6', '修改用户等级', '/member/alter-member-superpartner');
INSERT INTO `admin_access_log` VALUES ('45467', '172.31.41.52', 'POST', '2020-11-30 14:09:40', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45468', '172.31.41.52', 'POST', '2020-11-30 14:09:45', '2', '6', '禁用/解禁会员账号', '/member/alter-transaction-status');
INSERT INTO `admin_access_log` VALUES ('45469', '172.31.41.52', 'POST', '2020-11-30 14:09:45', '2', '6', '禁用/解禁会员账号', '/member/alter-status');
INSERT INTO `admin_access_log` VALUES ('45470', '172.31.41.52', 'POST', '2020-11-30 14:09:46', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45471', '172.31.41.52', 'POST', '2020-11-30 14:09:46', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45472', '172.31.41.52', 'POST', '2020-11-30 14:09:50', '2', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('45473', '172.31.41.52', 'POST', '2020-11-30 14:09:50', '2', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('45474', '172.31.41.52', 'POST', '2020-11-30 14:09:50', '2', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('45475', '172.31.41.52', 'POST', '2020-11-30 14:10:04', '2', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('45476', '172.31.41.52', 'POST', '2020-11-30 14:10:10', '2', '4', '会员MemberApplication认证信息详情', '/member/member-application/detail');
INSERT INTO `admin_access_log` VALUES ('45477', '172.31.41.52', 'POST', '2020-11-30 14:10:16', '2', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('45478', '172.31.41.52', 'POST', '2020-11-30 14:10:35', '2', '0', '邀请排名条件查询', '/invite/management/rank');
INSERT INTO `admin_access_log` VALUES ('45479', '172.31.41.52', 'POST', '2020-11-30 14:11:07', '2', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('45480', '172.31.41.52', 'POST', '2020-11-30 14:11:27', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45481', '172.31.41.52', 'POST', '2020-11-30 14:11:35', '2', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45482', '172.31.41.52', 'POST', '2020-11-30 14:11:49', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45483', '172.31.41.52', 'POST', '2020-11-30 14:11:58', '2', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('45484', '172.31.41.52', 'POST', '2020-11-30 14:12:11', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45485', '172.31.41.52', 'POST', '2020-11-30 14:12:26', '2', '12', '永续合约交易对新增钱包 新增', '/swap-coin/init-wallet');
INSERT INTO `admin_access_log` VALUES ('45486', '172.31.41.52', 'POST', '2020-11-30 14:12:50', '2', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('45487', '172.31.41.52', 'POST', '2020-11-30 14:12:50', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45488', '172.31.41.52', 'POST', '2020-11-30 14:12:53', '2', '10', '分页查看CTC承兑商列表AdminCtcAcceptorController', '/ctc/acceptor/page-query');
INSERT INTO `admin_access_log` VALUES ('45489', '172.31.41.52', 'POST', '2020-11-30 14:12:55', '2', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('45490', '172.31.41.52', 'GET', '2020-11-30 14:13:05', '2', '6', '分页查找操作/访问日志AdminAccessLog', '/system/access-log/page-query/');
INSERT INTO `admin_access_log` VALUES ('45491', '172.31.41.52', 'POST', '2020-11-30 14:13:19', '2', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45492', '172.31.41.52', 'POST', '2020-11-30 14:13:46', '2', '6', '后台货币Coin详情', '/system/coin/detail');
INSERT INTO `admin_access_log` VALUES ('45493', '172.31.41.52', 'POST', '2020-11-30 14:14:20', '2', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('45494', '172.31.41.52', 'POST', '2020-11-30 14:14:24', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45495', '172.31.41.52', 'POST', '2020-11-30 14:14:27', '2', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('45496', '172.31.41.52', 'POST', '2020-11-30 14:14:27', '2', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('45497', '172.31.41.52', 'POST', '2020-11-30 14:14:27', '2', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('45498', '172.31.41.52', 'POST', '2020-11-30 14:23:15', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45499', '172.31.41.52', 'POST', '2020-11-30 14:25:54', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45500', '172.31.41.52', 'POST', '2020-11-30 14:25:55', '2', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('45501', '172.31.41.52', 'POST', '2020-11-30 14:26:32', '2', '4', '会员MemberApplication认证信息详情', '/member/member-application/detail');
INSERT INTO `admin_access_log` VALUES ('45502', '172.31.41.52', 'POST', '2020-11-30 14:41:01', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45503', '172.31.41.52', 'POST', '2020-11-30 14:49:42', '2', '4', '会员MemberApplication认证信息详情', '/member/member-application/detail');
INSERT INTO `admin_access_log` VALUES ('45504', '172.31.41.52', 'POST', '2020-11-30 14:53:02', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45505', '172.31.41.52', 'POST', '2020-11-30 14:53:45', '2', '6', '禁用/解禁会员账号', '/member/alter-status');
INSERT INTO `admin_access_log` VALUES ('45506', '172.31.41.52', 'POST', '2020-11-30 14:53:46', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45507', '172.31.41.52', 'POST', '2020-11-30 14:56:16', '2', '5', '分页查找法币交易订单Order', '/otc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('45508', '172.31.41.52', 'POST', '2020-11-30 14:56:16', '2', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('45509', '172.31.41.52', 'POST', '2020-11-30 14:57:35', '2', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('45510', '172.31.41.52', 'POST', '2020-11-30 14:57:37', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45511', '172.31.41.52', 'POST', '2020-11-30 14:57:42', '2', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('45512', '172.31.41.52', 'GET', '2020-11-30 14:57:43', '2', '6', '分页查找操作/访问日志AdminAccessLog', '/system/access-log/page-query/');
INSERT INTO `admin_access_log` VALUES ('45513', '172.31.41.52', 'POST', '2020-11-30 14:57:44', '2', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45514', '172.31.41.52', 'POST', '2020-11-30 14:57:48', '2', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('45515', '172.31.41.52', 'POST', '2020-11-30 14:57:49', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45516', '172.31.41.52', 'POST', '2020-11-30 15:06:17', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45517', '172.31.41.52', 'POST', '2020-11-30 15:06:17', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45518', '172.31.41.52', 'POST', '2020-11-30 15:06:41', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45519', '172.31.41.52', 'POST', '2020-11-30 15:06:41', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45520', '172.31.41.52', 'POST', '2020-11-30 15:06:41', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45521', '172.31.41.52', 'POST', '2020-11-30 15:06:41', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45522', '172.31.41.52', 'POST', '2020-11-30 15:06:42', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45523', '172.31.41.52', 'POST', '2020-11-30 15:06:42', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45524', '172.31.41.52', 'POST', '2020-11-30 15:06:46', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45525', '172.31.41.52', 'POST', '2020-11-30 15:16:00', '2', '10', '分页查看CTC订单列表AdminCtcOrderController', '/ctc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('45526', '172.31.41.52', 'POST', '2020-11-30 15:16:03', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45527', '172.31.41.52', 'POST', '2020-11-30 15:16:03', '2', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('45528', '172.31.41.52', 'POST', '2020-11-30 15:16:04', '2', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('45529', '172.31.41.52', 'POST', '2020-11-30 15:16:04', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45530', '172.31.41.52', 'POST', '2020-11-30 15:16:05', '2', '5', '分页查找后台广告Advertise', '/otc/advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('45531', '172.31.41.52', 'POST', '2020-11-30 15:16:06', '2', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45532', '172.31.41.52', 'POST', '2020-11-30 15:16:06', '2', '10', '分页查看CTC订单列表AdminCtcOrderController', '/ctc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('45533', '172.31.41.52', 'POST', '2020-11-30 15:16:07', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45534', '172.31.41.52', 'POST', '2020-11-30 15:16:07', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45535', '172.31.41.52', 'POST', '2020-11-30 15:16:07', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45536', '172.31.41.52', 'POST', '2020-11-30 15:16:07', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45537', '172.31.41.52', 'POST', '2020-11-30 15:16:07', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45538', '172.31.41.52', 'POST', '2020-11-30 15:16:07', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45539', '172.31.41.52', 'POST', '2020-11-30 15:16:18', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45540', '172.31.41.52', 'POST', '2020-11-30 15:19:09', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45541', '172.31.41.52', 'POST', '2020-11-30 15:19:11', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('45542', '172.31.41.52', 'POST', '2020-11-30 15:19:13', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45543', '172.31.41.52', 'POST', '2020-11-30 15:19:13', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45544', '172.31.41.52', 'POST', '2020-11-30 15:19:14', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45545', '172.31.41.52', 'POST', '2020-11-30 15:19:14', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45546', '172.31.41.52', 'POST', '2020-11-30 15:19:15', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45547', '172.31.41.52', 'POST', '2020-11-30 15:19:15', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45548', '172.31.41.52', 'POST', '2020-11-30 15:19:15', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45549', '172.31.41.52', 'POST', '2020-11-30 15:19:15', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45550', '172.31.41.52', 'POST', '2020-11-30 15:27:15', '2', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('45551', '172.31.41.52', 'POST', '2020-11-30 15:27:38', '2', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('45552', '172.31.41.52', 'POST', '2020-11-30 15:27:42', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45553', '172.31.41.52', 'POST', '2020-11-30 15:28:34', '2', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('45554', '172.31.41.52', 'POST', '2020-11-30 15:30:22', '2', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('45555', '172.31.41.52', 'POST', '2020-11-30 15:30:34', '2', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45556', '172.31.41.52', 'POST', '2020-11-30 15:31:16', '2', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45557', '172.31.41.52', 'GET', '2020-11-30 15:31:21', '2', '6', '分页查找操作/访问日志AdminAccessLog', '/system/access-log/page-query/');
INSERT INTO `admin_access_log` VALUES ('45558', '172.31.41.52', 'POST', '2020-11-30 15:31:43', '2', '5', '分页查找otc币种otcCoin', '/otc/otc-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45559', '172.31.41.52', 'POST', '2020-11-30 15:32:05', '2', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('45560', '172.31.41.52', 'POST', '2020-11-30 15:52:39', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45561', '172.31.41.52', 'POST', '2020-11-30 15:52:39', '2', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('45562', '172.31.41.52', 'POST', '2020-11-30 16:24:51', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45563', '172.31.41.52', 'POST', '2020-11-30 16:24:53', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('45564', '172.31.41.52', 'POST', '2020-11-30 16:24:54', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45565', '172.31.41.52', 'POST', '2020-11-30 16:24:54', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45566', '172.31.41.52', 'POST', '2020-11-30 16:24:54', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45567', '172.31.41.52', 'POST', '2020-11-30 16:24:54', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45568', '172.31.41.52', 'POST', '2020-11-30 16:24:55', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45569', '172.31.41.52', 'POST', '2020-11-30 16:24:55', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45570', '172.31.41.52', 'POST', '2020-11-30 16:24:55', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45571', '172.31.41.52', 'POST', '2020-11-30 16:24:55', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45572', '172.31.41.52', 'POST', '2020-11-30 16:24:55', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45573', '172.31.41.52', 'POST', '2020-11-30 16:24:55', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45574', '172.31.41.52', 'POST', '2020-11-30 16:26:03', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45575', '172.31.41.52', 'POST', '2020-11-30 16:26:19', '2', '5', '分页查找后台广告Advertise', '/otc/advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('45576', '172.31.41.52', 'POST', '2020-11-30 16:26:38', '2', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('45577', '172.31.41.52', 'POST', '2020-11-30 16:26:57', '2', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('45578', '172.31.41.52', 'POST', '2020-11-30 16:27:04', '2', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('45579', '172.31.41.52', 'POST', '2020-11-30 16:27:08', '2', '0', '邀请管理多条件查询', '/invite/management/query');
INSERT INTO `admin_access_log` VALUES ('45580', '172.31.41.52', 'POST', '2020-11-30 16:27:37', '2', '5', '分页查找后台申诉Appeal', '/otc/appeal/page-query');
INSERT INTO `admin_access_log` VALUES ('45581', '172.31.41.52', 'POST', '2020-11-30 16:28:51', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45582', '172.31.41.52', 'POST', '2020-11-30 16:28:52', '2', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('45583', '172.31.41.52', 'POST', '2020-11-30 16:41:36', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45584', '172.31.41.52', 'POST', '2020-11-30 16:41:40', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('45585', '172.31.41.52', 'POST', '2020-11-30 16:41:41', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45586', '172.31.41.52', 'POST', '2020-11-30 16:41:41', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45587', '172.31.41.52', 'POST', '2020-11-30 16:41:42', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45588', '172.31.41.52', 'POST', '2020-11-30 16:41:42', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45589', '172.31.41.52', 'POST', '2020-11-30 16:41:42', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45590', '172.31.41.52', 'POST', '2020-11-30 16:41:42', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45591', '172.31.41.52', 'POST', '2020-11-30 16:41:43', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45592', '172.31.41.52', 'POST', '2020-11-30 16:41:43', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45593', '172.31.41.52', 'POST', '2020-11-30 16:41:43', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45594', '172.31.41.52', 'POST', '2020-11-30 16:41:43', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45595', '172.31.41.52', 'POST', '2020-11-30 16:41:43', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45596', '172.31.41.52', 'POST', '2020-11-30 16:41:43', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45597', '172.31.41.52', 'POST', '2020-11-30 16:41:50', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45598', '172.31.41.52', 'POST', '2020-11-30 16:41:52', '2', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('45599', '172.31.41.52', 'POST', '2020-11-30 16:41:53', '2', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('45600', '172.31.41.52', 'POST', '2020-11-30 16:41:55', '2', '0', '邀请管理多条件查询', '/invite/management/query');
INSERT INTO `admin_access_log` VALUES ('45601', '172.31.41.52', 'POST', '2020-11-30 16:41:57', '2', '0', '邀请排名条件查询', '/invite/management/rank');
INSERT INTO `admin_access_log` VALUES ('45602', '172.31.41.52', 'POST', '2020-11-30 16:42:01', '2', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('45603', '172.31.41.52', 'POST', '2020-11-30 16:42:02', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45604', '172.31.41.52', 'POST', '2020-11-30 16:42:07', '2', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('45605', '172.31.41.52', 'POST', '2020-11-30 16:42:47', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45606', '172.31.41.52', 'POST', '2020-11-30 16:42:50', '2', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('45607', '172.31.41.52', 'POST', '2020-11-30 16:42:50', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45608', '172.31.41.52', 'POST', '2020-11-30 16:43:07', '2', '5', '分页查找后台广告Advertise', '/otc/advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('45609', '172.31.41.52', 'POST', '2020-11-30 16:43:09', '2', '5', '分页查找后台申诉Appeal', '/otc/appeal/page-query');
INSERT INTO `admin_access_log` VALUES ('45610', '172.31.41.52', 'POST', '2020-11-30 16:43:11', '2', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('45611', '172.31.41.52', 'POST', '2020-11-30 16:43:11', '2', '5', '分页查找法币交易订单Order', '/otc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('45612', '172.31.41.52', 'POST', '2020-11-30 16:43:12', '2', '5', '分页查找otc币种otcCoin', '/otc/otc-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45613', '172.31.41.52', 'POST', '2020-11-30 16:43:16', '2', '10', '分页查看CTC订单列表AdminCtcOrderController', '/ctc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('45614', '172.31.41.52', 'POST', '2020-11-30 16:43:17', '2', '10', '分页查看CTC承兑商列表AdminCtcAcceptorController', '/ctc/acceptor/page-query');
INSERT INTO `admin_access_log` VALUES ('45615', '172.31.41.52', 'POST', '2020-11-30 16:43:19', '2', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('45616', '172.31.41.52', 'GET', '2020-11-30 16:43:20', '2', '3', '分页查询提现记录WithdrawRecord', '/finance/withdraw-record/page-query');
INSERT INTO `admin_access_log` VALUES ('45617', '172.31.41.52', 'POST', '2020-11-30 16:43:20', '2', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('45618', '172.31.41.52', 'POST', '2020-11-30 16:43:21', '2', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('45619', '172.31.41.52', 'POST', '2020-11-30 16:43:21', '2', '3', '充币记录', '/finance/member-deposit/page-query');
INSERT INTO `admin_access_log` VALUES ('45620', '172.31.41.52', 'POST', '2020-11-30 16:43:22', '2', '5', '分页查找法币交易订单Order', '/otc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('45621', '172.31.41.52', 'POST', '2020-11-30 16:43:22', '2', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('45622', '172.31.41.52', 'POST', '2020-11-30 16:43:22', '2', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('45623', '172.31.41.52', 'GET', '2020-11-30 16:43:22', '2', '3', '分页查询提现记录WithdrawRecord', '/finance/withdraw-record/page-query');
INSERT INTO `admin_access_log` VALUES ('45624', '172.31.41.52', 'POST', '2020-11-30 16:43:23', '2', '3', '法币/币币  总成交量/总成交额', '/finance/statistics/turnover-all');
INSERT INTO `admin_access_log` VALUES ('45625', '172.31.41.52', 'POST', '2020-11-30 16:43:23', '2', '3', '充币/提币总量统计', '/finance/statistics/recharge-or-withdraw-amount');
INSERT INTO `admin_access_log` VALUES ('45626', '172.31.41.52', 'POST', '2020-11-30 16:43:23', '2', '3', '手续费统计 总计[\"OTC_NUM\",\"WITHDRAW\",\"EXCHANGE\"]', '/finance/statistics/fee');
INSERT INTO `admin_access_log` VALUES ('45627', '172.31.41.52', 'POST', '2020-11-30 16:43:26', '2', '11', '分页查看红包列表RedEnvelopeController', '/envelope/page-query');
INSERT INTO `admin_access_log` VALUES ('45628', '172.31.41.52', 'POST', '2020-11-30 16:43:29', '2', '9', '分页查看活动列表Activity', '/activity/activity/page-query');
INSERT INTO `admin_access_log` VALUES ('45629', '172.31.41.52', 'POST', '2020-11-30 16:43:32', '2', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('45630', '172.31.41.52', 'POST', '2020-11-30 16:43:36', '2', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('45631', '172.31.41.52', 'GET', '2020-11-30 16:43:38', '2', '6', '分页查找操作/访问日志AdminAccessLog', '/system/access-log/page-query/');
INSERT INTO `admin_access_log` VALUES ('45632', '172.31.41.52', 'POST', '2020-11-30 16:43:40', '2', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45633', '172.31.41.52', 'POST', '2020-11-30 17:59:38', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45634', '172.31.41.52', 'POST', '2020-11-30 17:59:51', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45635', '172.31.41.52', 'POST', '2020-11-30 17:59:52', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('45636', '172.31.41.52', 'POST', '2020-11-30 17:59:54', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45637', '172.31.41.52', 'POST', '2020-11-30 17:59:54', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45638', '172.31.41.52', 'POST', '2020-11-30 17:59:55', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45639', '172.31.41.52', 'POST', '2020-11-30 17:59:55', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45640', '172.31.41.52', 'POST', '2020-11-30 17:59:56', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45641', '172.31.41.52', 'POST', '2020-11-30 17:59:56', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45642', '172.31.41.52', 'POST', '2020-11-30 17:59:56', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45643', '172.31.41.52', 'POST', '2020-11-30 17:59:56', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45644', '172.31.41.52', 'POST', '2020-11-30 18:00:19', '2', '10', '分页查看CTC订单列表AdminCtcOrderController', '/ctc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('45645', '172.31.41.52', 'POST', '2020-11-30 18:01:04', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45646', '172.31.41.52', 'POST', '2020-11-30 18:05:10', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45647', '172.31.41.52', 'POST', '2020-11-30 18:05:10', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45648', '172.31.41.52', 'POST', '2020-11-30 18:05:10', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45649', '172.31.41.52', 'POST', '2020-11-30 18:05:10', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45650', '172.31.41.52', 'POST', '2020-11-30 18:05:11', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45651', '172.31.41.52', 'POST', '2020-11-30 18:05:11', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45652', '172.31.41.52', 'POST', '2020-11-30 18:05:13', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45653', '172.31.41.52', 'POST', '2020-11-30 18:05:15', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45654', '172.31.41.52', 'POST', '2020-11-30 18:05:15', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('45655', '172.31.41.52', 'POST', '2020-11-30 18:05:16', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45656', '172.31.41.52', 'POST', '2020-11-30 18:05:16', '1', '12', '预测合约订单 列表', '/option/order/page-query');
INSERT INTO `admin_access_log` VALUES ('45657', '172.31.41.52', 'POST', '2020-11-30 18:05:16', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45658', '172.31.41.52', 'POST', '2020-11-30 18:05:16', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('45659', '172.31.41.52', 'POST', '2020-11-30 18:05:17', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45660', '172.31.41.52', 'POST', '2020-11-30 18:05:17', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45661', '172.31.41.52', 'POST', '2020-11-30 18:05:17', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('45662', '172.31.41.52', 'POST', '2020-11-30 18:05:18', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45663', '172.31.41.52', 'POST', '2020-11-30 18:05:18', '1', '12', '预测合约订单 列表', '/option/order/page-query');
INSERT INTO `admin_access_log` VALUES ('45664', '172.31.41.52', 'POST', '2020-11-30 18:05:18', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45665', '172.31.41.52', 'POST', '2020-11-30 18:05:18', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('45666', '172.31.41.52', 'POST', '2020-11-30 18:05:19', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45667', '172.31.41.52', 'POST', '2020-11-30 18:05:19', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45668', '172.31.41.52', 'POST', '2020-11-30 18:05:20', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('45669', '172.31.41.52', 'POST', '2020-11-30 18:05:20', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45670', '172.31.41.52', 'POST', '2020-11-30 18:05:20', '1', '12', '预测合约订单 列表', '/option/order/page-query');
INSERT INTO `admin_access_log` VALUES ('45671', '172.31.41.52', 'POST', '2020-11-30 18:05:20', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45672', '172.31.41.52', 'POST', '2020-11-30 18:05:21', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('45673', '172.31.41.52', 'POST', '2020-11-30 18:05:21', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45674', '172.31.41.52', 'POST', '2020-11-30 18:07:06', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45675', '172.31.41.52', 'POST', '2020-11-30 18:07:06', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45676', '172.31.41.52', 'POST', '2020-11-30 18:07:06', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45677', '172.31.41.52', 'POST', '2020-11-30 18:07:06', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45678', '172.31.41.52', 'POST', '2020-11-30 18:07:07', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45679', '172.31.41.52', 'POST', '2020-11-30 18:07:07', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45680', '172.31.41.52', 'POST', '2020-11-30 18:09:28', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45681', '172.31.41.52', 'POST', '2020-11-30 18:09:33', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45682', '172.31.41.52', 'POST', '2020-11-30 18:09:39', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45683', '172.31.41.52', 'POST', '2020-11-30 18:09:40', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('45684', '172.31.41.52', 'POST', '2020-11-30 18:09:41', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45685', '172.31.41.52', 'POST', '2020-11-30 18:09:41', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45686', '172.31.41.52', 'POST', '2020-11-30 18:09:42', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45687', '172.31.41.52', 'POST', '2020-11-30 18:09:42', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45688', '172.31.41.52', 'POST', '2020-11-30 18:09:42', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45689', '172.31.41.52', 'POST', '2020-11-30 18:09:42', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45690', '172.31.41.52', 'POST', '2020-11-30 18:09:42', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45691', '172.31.41.52', 'POST', '2020-11-30 18:09:42', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45692', '172.31.41.52', 'POST', '2020-11-30 18:09:56', '2', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45693', '172.31.41.52', 'POST', '2020-11-30 18:10:27', '2', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('45694', '172.31.41.52', 'POST', '2020-11-30 18:10:33', '2', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('45695', '172.31.41.52', 'POST', '2020-11-30 18:10:35', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45696', '172.31.41.52', 'POST', '2020-11-30 18:10:43', '2', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('45697', '172.31.41.52', 'POST', '2020-11-30 18:10:43', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45698', '172.31.41.52', 'POST', '2020-11-30 18:12:21', '2', '5', '分页查找后台申诉Appeal', '/otc/appeal/page-query');
INSERT INTO `admin_access_log` VALUES ('45699', '172.31.41.52', 'POST', '2020-11-30 18:12:33', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45700', '172.31.41.52', 'POST', '2020-11-30 18:12:33', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45701', '172.31.41.52', 'POST', '2020-11-30 18:12:33', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45702', '172.31.41.52', 'POST', '2020-11-30 18:12:33', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45703', '172.31.41.52', 'POST', '2020-11-30 18:12:33', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45704', '172.31.41.52', 'POST', '2020-11-30 18:12:33', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45705', '172.31.41.52', 'POST', '2020-11-30 18:28:58', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45706', '172.31.41.52', 'POST', '2020-11-30 18:59:15', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45707', '172.31.41.52', 'POST', '2020-11-30 18:59:19', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('45708', '172.31.41.52', 'POST', '2020-11-30 18:59:20', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45709', '172.31.41.52', 'POST', '2020-11-30 18:59:20', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45710', '172.31.41.52', 'POST', '2020-11-30 18:59:21', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45711', '172.31.41.52', 'POST', '2020-11-30 18:59:21', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45712', '172.31.41.52', 'POST', '2020-11-30 18:59:21', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45713', '172.31.41.52', 'POST', '2020-11-30 18:59:21', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45714', '172.31.41.52', 'POST', '2020-11-30 18:59:21', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45715', '172.31.41.52', 'POST', '2020-11-30 18:59:21', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45716', '172.31.41.52', 'POST', '2020-11-30 19:00:09', '2', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('45717', '172.31.41.52', 'POST', '2020-11-30 19:23:07', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45718', '172.31.41.52', 'POST', '2020-11-30 19:23:10', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('45719', '172.31.41.52', 'POST', '2020-11-30 19:23:12', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45720', '172.31.41.52', 'POST', '2020-11-30 19:23:13', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45721', '172.31.41.52', 'POST', '2020-11-30 19:23:13', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45722', '172.31.41.52', 'POST', '2020-11-30 19:23:13', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45723', '172.31.41.52', 'POST', '2020-11-30 19:23:13', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45724', '172.31.41.52', 'POST', '2020-11-30 19:23:13', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45725', '172.31.41.52', 'POST', '2020-11-30 19:23:13', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45726', '172.31.41.52', 'POST', '2020-11-30 19:23:46', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45727', '172.31.41.52', 'POST', '2020-11-30 19:23:52', '2', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('45728', '172.31.41.52', 'POST', '2020-11-30 19:23:52', '2', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('45729', '172.31.41.52', 'POST', '2020-11-30 19:23:52', '2', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('45730', '172.31.41.52', 'POST', '2020-11-30 19:23:52', '2', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('45731', '172.31.41.52', 'POST', '2020-11-30 19:23:54', '2', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45732', '172.31.41.52', 'POST', '2020-11-30 19:23:55', '2', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('45733', '172.31.41.52', 'POST', '2020-11-30 19:23:58', '2', '4', '会员MemberApplication认证信息详情', '/member/member-application/detail');
INSERT INTO `admin_access_log` VALUES ('45734', '172.31.41.52', 'GET', '2020-11-30 19:24:22', '2', '6', '分页查找操作/访问日志AdminAccessLog', '/system/access-log/page-query/');
INSERT INTO `admin_access_log` VALUES ('45735', '172.31.41.52', 'POST', '2020-11-30 19:24:25', '2', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45736', '172.31.41.52', 'POST', '2020-11-30 19:25:16', '2', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('45737', '172.31.41.52', 'POST', '2020-11-30 19:25:18', '2', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('45738', '172.31.41.52', 'POST', '2020-11-30 19:25:45', '2', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('45739', '172.31.41.52', 'POST', '2020-11-30 19:26:39', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45740', '172.31.41.52', 'POST', '2020-11-30 19:26:39', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45741', '172.31.41.52', 'POST', '2020-11-30 19:26:39', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45742', '172.31.41.52', 'POST', '2020-11-30 19:26:39', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45743', '172.31.41.52', 'POST', '2020-11-30 19:26:39', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45744', '172.31.41.52', 'POST', '2020-11-30 19:26:39', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45745', '172.31.41.52', 'POST', '2020-11-30 19:33:17', '2', '4', '会员MemberApplication认证信息详情', '/member/member-application/detail');
INSERT INTO `admin_access_log` VALUES ('45746', '172.31.41.52', 'GET', '2020-11-30 19:33:20', '2', '6', '分页查找操作/访问日志AdminAccessLog', '/system/access-log/page-query/');
INSERT INTO `admin_access_log` VALUES ('45747', '172.31.41.52', 'POST', '2020-11-30 19:33:21', '2', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45748', '172.31.41.52', 'POST', '2020-11-30 19:33:24', '2', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('45749', '172.31.41.52', 'POST', '2020-11-30 19:33:30', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45750', '172.31.41.52', 'POST', '2020-11-30 19:33:52', '1', '6', '所有角色SysRole', '/system/role/all');
INSERT INTO `admin_access_log` VALUES ('45751', '172.31.41.52', 'POST', '2020-11-30 19:33:52', '1', '6', '全部权限树Menu', '/system/role/permission/all');
INSERT INTO `admin_access_log` VALUES ('45752', '172.31.41.52', 'POST', '2020-11-30 19:33:54', '1', '6', '角色拥有的权限Menu', '/system/role/permission');
INSERT INTO `admin_access_log` VALUES ('45753', '172.31.41.52', 'POST', '2020-11-30 19:33:58', '2', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45754', '172.31.41.52', 'POST', '2020-11-30 19:34:01', '1', '6', '角色拥有的权限Menu', '/system/role/permission');
INSERT INTO `admin_access_log` VALUES ('45755', '172.31.41.52', 'POST', '2020-11-30 19:34:02', '2', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('45756', '172.31.41.52', 'POST', '2020-11-30 19:34:03', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45757', '172.31.41.52', 'POST', '2020-11-30 19:34:03', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45758', '172.31.41.52', 'POST', '2020-11-30 19:34:04', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45759', '172.31.41.52', 'POST', '2020-11-30 19:34:04', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45760', '172.31.41.52', 'POST', '2020-11-30 19:34:04', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45761', '172.31.41.52', 'POST', '2020-11-30 19:34:04', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45762', '172.31.41.52', 'POST', '2020-11-30 19:34:04', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45763', '172.31.41.52', 'POST', '2020-11-30 19:34:04', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45764', '172.31.41.52', 'POST', '2020-11-30 19:34:07', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45765', '172.31.41.52', 'POST', '2020-11-30 19:34:07', '1', '6', '分页查找后台用户admin', '/system/employee/page-query');
INSERT INTO `admin_access_log` VALUES ('45766', '172.31.41.52', 'POST', '2020-11-30 19:34:10', '1', '6', '所有角色SysRole', '/system/role/all');
INSERT INTO `admin_access_log` VALUES ('45767', '172.31.41.52', 'POST', '2020-11-30 19:34:10', '1', '6', '所有部门Department', '/system/department/all');
INSERT INTO `admin_access_log` VALUES ('45768', '172.31.41.52', 'POST', '2020-11-30 19:34:10', '1', '6', '后台用户Admin详情', '/system/employee/detail');
INSERT INTO `admin_access_log` VALUES ('45769', '172.31.41.52', 'POST', '2020-11-30 19:34:12', '1', '6', '分页查找后台用户admin', '/system/employee/page-query');
INSERT INTO `admin_access_log` VALUES ('45770', '172.31.41.52', 'POST', '2020-11-30 19:34:14', '1', '6', '所有角色SysRole', '/system/role/all');
INSERT INTO `admin_access_log` VALUES ('45771', '172.31.41.52', 'POST', '2020-11-30 19:34:14', '1', '6', '所有部门Department', '/system/department/all');
INSERT INTO `admin_access_log` VALUES ('45772', '172.31.41.52', 'POST', '2020-11-30 19:34:14', '1', '6', '后台用户Admin详情', '/system/employee/detail');
INSERT INTO `admin_access_log` VALUES ('45773', '172.31.41.52', 'POST', '2020-11-30 19:34:15', '1', '6', '分页查找后台用户admin', '/system/employee/page-query');
INSERT INTO `admin_access_log` VALUES ('45774', '172.31.41.52', 'POST', '2020-11-30 19:34:16', '1', '6', '所有角色SysRole', '/system/role/all');
INSERT INTO `admin_access_log` VALUES ('45775', '172.31.41.52', 'POST', '2020-11-30 19:34:16', '1', '6', '所有部门Department', '/system/department/all');
INSERT INTO `admin_access_log` VALUES ('45776', '172.31.41.52', 'POST', '2020-11-30 19:34:16', '1', '6', '后台用户Admin详情', '/system/employee/detail');
INSERT INTO `admin_access_log` VALUES ('45777', '172.31.41.52', 'POST', '2020-11-30 19:34:18', '1', '6', '所有部门Department', '/system/department/all');
INSERT INTO `admin_access_log` VALUES ('45778', '172.31.41.52', 'POST', '2020-11-30 19:34:21', '1', '6', '部门Department详情', '/system/department/detail');
INSERT INTO `admin_access_log` VALUES ('45779', '172.31.41.52', 'POST', '2020-11-30 19:34:23', '1', '6', '全部权限树Menu', '/system/role/permission/all');
INSERT INTO `admin_access_log` VALUES ('45780', '172.31.41.52', 'POST', '2020-11-30 19:34:23', '1', '6', '所有角色SysRole', '/system/role/all');
INSERT INTO `admin_access_log` VALUES ('45781', '172.31.41.52', 'POST', '2020-11-30 19:34:27', '1', '6', '删除角色SysRole', '/system/role/deletes');
INSERT INTO `admin_access_log` VALUES ('45782', '172.31.41.52', 'POST', '2020-11-30 19:34:29', '1', '6', '角色拥有的权限Menu', '/system/role/permission');
INSERT INTO `admin_access_log` VALUES ('45783', '172.31.41.52', 'POST', '2020-11-30 19:34:32', '1', '6', '角色拥有的权限Menu', '/system/role/permission');
INSERT INTO `admin_access_log` VALUES ('45784', '172.31.41.52', 'POST', '2020-11-30 19:34:40', '1', '6', '分页查找后台用户admin', '/system/employee/page-query');
INSERT INTO `admin_access_log` VALUES ('45785', '172.31.41.52', 'POST', '2020-11-30 19:34:42', '1', '6', '所有角色SysRole', '/system/role/all');
INSERT INTO `admin_access_log` VALUES ('45786', '172.31.41.52', 'POST', '2020-11-30 19:34:42', '1', '6', '后台用户Admin详情', '/system/employee/detail');
INSERT INTO `admin_access_log` VALUES ('45787', '172.31.41.52', 'POST', '2020-11-30 19:34:42', '1', '6', '所有部门Department', '/system/department/all');
INSERT INTO `admin_access_log` VALUES ('45788', '172.31.41.52', 'POST', '2020-11-30 19:34:46', '1', '6', '全部权限树Menu', '/system/role/permission/all');
INSERT INTO `admin_access_log` VALUES ('45789', '172.31.41.52', 'POST', '2020-11-30 19:34:46', '1', '6', '所有角色SysRole', '/system/role/all');
INSERT INTO `admin_access_log` VALUES ('45790', '172.31.41.52', 'POST', '2020-11-30 19:34:48', '1', '6', '角色拥有的权限Menu', '/system/role/permission');
INSERT INTO `admin_access_log` VALUES ('45791', '172.31.41.52', 'POST', '2020-11-30 19:35:07', '1', '6', '创建或修改角色SysRole', '/system/role/merge');
INSERT INTO `admin_access_log` VALUES ('45792', '172.31.41.52', 'POST', '2020-11-30 19:35:10', '1', '6', '所有角色SysRole', '/system/role/all');
INSERT INTO `admin_access_log` VALUES ('45793', '172.31.41.52', 'POST', '2020-11-30 19:36:38', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45794', '172.31.41.52', 'POST', '2020-11-30 19:36:38', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('45795', '172.31.41.52', 'POST', '2020-11-30 19:36:39', '1', '12', '预测合约订单 列表', '/option/order/page-query');
INSERT INTO `admin_access_log` VALUES ('45796', '172.31.41.52', 'POST', '2020-11-30 19:36:39', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45797', '172.31.41.52', 'POST', '2020-11-30 19:36:40', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45798', '172.31.41.52', 'POST', '2020-11-30 19:36:43', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45799', '172.31.41.52', 'POST', '2020-11-30 19:36:43', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('45800', '172.31.41.52', 'POST', '2020-11-30 19:36:45', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45801', '172.31.41.52', 'POST', '2020-11-30 19:37:42', '1', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('45802', '172.31.41.52', 'POST', '2020-11-30 19:37:42', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45803', '172.31.41.52', 'POST', '2020-11-30 19:37:43', '1', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45804', '172.31.41.52', 'POST', '2020-11-30 19:40:21', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45805', '172.31.41.52', 'POST', '2020-11-30 19:40:22', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('45806', '172.31.41.52', 'POST', '2020-11-30 19:40:23', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45807', '172.31.41.52', 'POST', '2020-11-30 19:40:23', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45808', '172.31.41.52', 'POST', '2020-11-30 19:40:24', '2', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45809', '172.31.41.52', 'POST', '2020-11-30 19:40:24', '2', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45810', '172.31.41.52', 'POST', '2020-11-30 19:40:24', '2', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45811', '172.31.41.52', 'POST', '2020-11-30 19:40:24', '2', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45812', '172.31.41.52', 'POST', '2020-11-30 19:40:24', '2', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45813', '172.31.41.52', 'POST', '2020-11-30 19:40:24', '2', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45814', '172.31.41.52', 'POST', '2020-11-30 19:40:26', '2', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45815', '172.31.41.52', 'POST', '2020-11-30 19:40:27', '2', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45816', '172.31.41.52', 'POST', '2020-11-30 19:40:27', '2', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('45817', '172.31.41.52', 'POST', '2020-11-30 19:40:28', '2', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45818', '172.31.41.52', 'POST', '2020-11-30 19:40:28', '2', '12', '预测合约订单 列表', '/option/order/page-query');
INSERT INTO `admin_access_log` VALUES ('45819', '172.31.41.52', 'POST', '2020-11-30 19:45:16', '2', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45820', '172.31.41.52', 'POST', '2020-11-30 19:45:16', '2', '12', '预测合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('45821', '172.31.41.52', 'POST', '2020-11-30 19:45:17', '2', '12', '预测合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45822', '172.31.41.52', 'POST', '2020-11-30 19:45:20', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45823', '172.31.41.52', 'POST', '2020-11-30 19:55:32', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45824', '172.31.41.52', 'POST', '2020-11-30 20:10:17', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45825', '172.31.41.52', 'POST', '2020-11-30 20:10:26', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45826', '172.31.41.52', 'POST', '2020-11-30 20:10:30', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45827', '172.31.41.52', 'POST', '2020-11-30 20:11:14', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45828', '172.31.41.52', 'POST', '2020-11-30 20:11:16', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45829', '172.31.41.52', 'POST', '2020-11-30 20:11:18', '2', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45830', '172.31.41.52', 'POST', '2020-11-30 20:11:20', '2', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('45831', '172.31.41.52', 'POST', '2020-11-30 20:11:21', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45832', '172.31.41.52', 'POST', '2020-11-30 20:11:21', '2', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45833', '172.31.41.52', 'POST', '2020-11-30 20:11:24', '2', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('45834', '172.31.41.52', 'POST', '2020-11-30 20:11:24', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45835', '172.31.41.52', 'POST', '2020-11-30 20:11:26', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45836', '172.31.41.52', 'POST', '2020-11-30 20:11:29', '2', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45837', '172.31.41.52', 'POST', '2020-11-30 20:11:31', '2', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('45838', '172.31.41.52', 'POST', '2020-11-30 20:11:31', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45839', '172.31.41.52', 'POST', '2020-11-30 20:11:33', '2', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45840', '172.31.41.52', 'POST', '2020-11-30 20:11:35', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45841', '172.31.41.52', 'POST', '2020-11-30 20:11:39', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45842', '172.31.41.52', 'POST', '2020-11-30 20:11:40', '2', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45843', '172.31.41.52', 'POST', '2020-11-30 20:11:42', '2', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('45844', '172.31.41.52', 'POST', '2020-11-30 20:11:43', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45845', '172.31.41.52', 'POST', '2020-11-30 20:11:45', '2', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45846', '172.31.41.52', 'POST', '2020-11-30 20:11:49', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45847', '172.31.41.52', 'POST', '2020-11-30 20:11:53', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45848', '172.31.41.52', 'POST', '2020-11-30 20:11:55', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45849', '172.31.41.52', 'POST', '2020-11-30 20:12:00', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45850', '172.31.41.52', 'POST', '2020-11-30 20:12:18', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45851', '172.31.41.52', 'POST', '2020-11-30 20:12:21', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45852', '172.31.41.52', 'POST', '2020-11-30 20:12:23', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45853', '172.31.41.52', 'POST', '2020-11-30 20:12:25', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45854', '172.31.41.52', 'POST', '2020-11-30 20:12:28', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45855', '172.31.41.52', 'POST', '2020-11-30 20:12:32', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45856', '172.31.41.52', 'POST', '2020-11-30 20:12:36', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45857', '172.31.41.52', 'POST', '2020-11-30 20:12:47', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45858', '172.31.41.52', 'POST', '2020-11-30 20:12:48', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45859', '172.31.41.52', 'POST', '2020-11-30 20:12:52', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45860', '172.31.41.52', 'POST', '2020-11-30 20:12:55', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45861', '172.31.41.52', 'POST', '2020-11-30 20:12:55', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45862', '172.31.41.52', 'POST', '2020-11-30 20:12:58', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45863', '172.31.41.52', 'POST', '2020-11-30 20:13:04', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45864', '172.31.41.52', 'POST', '2020-11-30 20:13:06', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45865', '172.31.41.52', 'POST', '2020-11-30 20:13:08', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45866', '172.31.41.52', 'POST', '2020-11-30 20:13:11', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45867', '172.31.41.52', 'POST', '2020-11-30 20:13:16', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45868', '172.31.41.52', 'POST', '2020-11-30 20:13:20', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45869', '172.31.41.52', 'POST', '2020-11-30 20:13:21', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45870', '172.31.41.52', 'POST', '2020-11-30 20:13:24', '2', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45871', '172.31.41.52', 'POST', '2020-11-30 20:13:31', '2', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45872', '172.31.41.52', 'POST', '2020-11-30 20:13:34', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45873', '172.31.41.52', 'POST', '2020-11-30 20:13:37', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45874', '172.31.41.52', 'POST', '2020-11-30 20:13:40', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45875', '172.31.41.52', 'POST', '2020-11-30 20:13:45', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45876', '172.31.41.52', 'POST', '2020-11-30 20:13:48', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45877', '172.31.41.52', 'POST', '2020-11-30 20:13:50', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45878', '172.31.41.52', 'POST', '2020-11-30 20:13:56', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45879', '172.31.41.52', 'POST', '2020-11-30 20:13:58', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45880', '172.31.41.52', 'POST', '2020-11-30 20:14:00', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45881', '172.31.41.52', 'POST', '2020-11-30 20:14:03', '2', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45882', '172.31.41.52', 'POST', '2020-11-30 20:14:05', '2', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45883', '172.31.41.52', 'POST', '2020-11-30 20:14:07', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45884', '172.31.41.52', 'POST', '2020-11-30 20:14:09', '2', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45885', '172.31.41.52', 'POST', '2020-11-30 20:14:16', '2', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('45886', '172.31.41.52', 'POST', '2020-11-30 20:14:17', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45887', '172.31.41.52', 'POST', '2020-11-30 20:14:24', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45888', '172.31.41.52', 'POST', '2020-11-30 20:16:35', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45889', '172.31.41.52', 'POST', '2020-11-30 20:16:37', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45890', '172.31.41.52', 'POST', '2020-11-30 20:16:41', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45891', '172.31.41.52', 'POST', '2020-11-30 20:16:48', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45892', '172.31.41.52', 'POST', '2020-11-30 20:16:50', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45893', '172.31.41.52', 'POST', '2020-11-30 20:16:52', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45894', '172.31.41.52', 'POST', '2020-11-30 20:18:08', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45895', '172.31.41.52', 'POST', '2020-11-30 20:18:13', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45896', '172.31.41.52', 'POST', '2020-11-30 20:20:09', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45897', '172.31.41.52', 'POST', '2020-11-30 20:20:13', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45898', '172.31.41.52', 'POST', '2020-11-30 20:20:17', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45899', '172.31.41.52', 'POST', '2020-11-30 20:20:19', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45900', '172.31.41.52', 'POST', '2020-11-30 20:20:21', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45901', '172.31.41.52', 'POST', '2020-11-30 20:20:24', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45902', '172.31.41.52', 'POST', '2020-11-30 20:20:27', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45903', '172.31.41.52', 'POST', '2020-11-30 20:20:31', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45904', '172.31.41.52', 'POST', '2020-11-30 20:20:35', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45905', '172.31.41.52', 'POST', '2020-11-30 20:23:51', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45906', '172.31.41.52', 'POST', '2020-11-30 20:23:58', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45907', '172.31.41.52', 'POST', '2020-11-30 20:24:00', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45908', '172.31.41.52', 'POST', '2020-11-30 20:24:03', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45909', '172.31.41.52', 'POST', '2020-11-30 20:24:10', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45910', '172.31.41.52', 'POST', '2020-11-30 20:26:18', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45911', '172.31.41.52', 'POST', '2020-11-30 20:26:21', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45912', '172.31.41.52', 'POST', '2020-11-30 20:26:23', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45913', '172.31.41.52', 'POST', '2020-11-30 20:26:25', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45914', '172.31.41.52', 'POST', '2020-11-30 20:26:27', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45915', '172.31.41.52', 'POST', '2020-11-30 20:26:29', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45916', '172.31.41.52', 'POST', '2020-11-30 20:26:31', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45917', '172.31.41.52', 'POST', '2020-11-30 20:26:34', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45918', '172.31.41.52', 'POST', '2020-11-30 21:11:40', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45919', '172.31.41.52', 'POST', '2020-11-30 21:11:41', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45920', '172.31.41.52', 'POST', '2020-11-30 21:11:43', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45921', '172.31.41.52', 'POST', '2020-11-30 21:11:49', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45922', '172.31.41.52', 'POST', '2020-11-30 21:11:51', '2', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45923', '172.31.41.52', 'POST', '2020-11-30 21:12:09', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45924', '172.31.41.52', 'POST', '2020-11-30 21:12:11', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45925', '172.31.41.52', 'POST', '2020-11-30 21:12:13', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45926', '172.31.41.52', 'POST', '2020-11-30 21:12:14', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45927', '172.31.41.52', 'POST', '2020-11-30 21:12:17', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45928', '172.31.41.52', 'POST', '2020-11-30 21:12:21', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45929', '172.31.41.52', 'POST', '2020-11-30 21:18:35', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45930', '172.31.41.52', 'POST', '2020-11-30 21:18:37', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45931', '172.31.41.52', 'POST', '2020-11-30 21:18:39', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45932', '172.31.41.52', 'POST', '2020-11-30 21:18:41', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45933', '172.31.41.52', 'POST', '2020-11-30 21:18:43', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45934', '172.31.41.52', 'POST', '2020-11-30 21:18:53', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45935', '172.31.41.52', 'POST', '2020-11-30 21:18:55', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45936', '172.31.41.52', 'POST', '2020-11-30 21:18:58', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45937', '172.31.41.52', 'POST', '2020-11-30 21:18:59', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45938', '172.31.41.52', 'POST', '2020-11-30 21:19:01', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45939', '172.31.41.52', 'POST', '2020-11-30 21:19:06', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45940', '172.31.41.52', 'POST', '2020-11-30 21:19:08', '2', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('45941', '172.31.41.52', 'POST', '2020-11-30 21:19:11', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45942', '172.31.41.52', 'POST', '2020-11-30 21:19:13', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45943', '172.31.41.52', 'POST', '2020-11-30 21:19:16', '2', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('45944', '172.25.142.201', 'POST', '2021-03-07 00:08:12', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45945', '172.25.142.201', 'POST', '2021-03-07 00:08:14', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('45946', '172.25.142.201', 'POST', '2021-03-07 00:08:14', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45947', '172.25.142.201', 'POST', '2021-03-07 00:08:14', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45948', '172.25.142.201', 'POST', '2021-03-07 00:08:14', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45949', '172.25.142.201', 'POST', '2021-03-07 00:08:14', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45950', '172.25.142.201', 'POST', '2021-03-07 00:08:15', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45951', '172.25.142.201', 'POST', '2021-03-07 00:08:15', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45952', '172.25.142.201', 'POST', '2021-03-07 00:08:15', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45953', '172.25.142.201', 'POST', '2021-03-07 00:08:15', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45954', '172.25.142.201', 'POST', '2021-03-07 00:08:19', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45955', '172.25.142.201', 'POST', '2021-03-07 00:08:21', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('45956', '172.25.142.201', 'POST', '2021-03-07 00:08:23', '1', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('45957', '172.25.142.201', 'POST', '2021-03-07 00:11:27', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45958', '172.25.142.201', 'POST', '2021-03-07 00:14:33', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45959', '172.25.142.201', 'POST', '2021-03-07 00:14:47', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45960', '172.25.142.201', 'POST', '2021-03-07 00:14:49', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('45961', '172.25.142.201', 'POST', '2021-03-07 00:14:49', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45962', '172.25.142.201', 'POST', '2021-03-07 00:14:49', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45963', '172.25.142.201', 'POST', '2021-03-07 00:14:49', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45964', '172.25.142.201', 'POST', '2021-03-07 00:14:49', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45965', '172.25.142.201', 'POST', '2021-03-07 00:14:50', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45966', '172.25.142.201', 'POST', '2021-03-07 00:14:50', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45967', '172.25.142.201', 'POST', '2021-03-07 00:14:50', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45968', '172.25.142.201', 'POST', '2021-03-07 00:14:50', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45969', '172.25.142.201', 'POST', '2021-03-07 00:16:26', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45970', '172.25.142.201', 'POST', '2021-03-07 00:16:26', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45971', '172.25.142.201', 'POST', '2021-03-07 00:16:26', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45972', '172.25.142.201', 'POST', '2021-03-07 00:16:26', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45973', '172.25.142.201', 'POST', '2021-03-07 00:16:26', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45974', '172.25.142.201', 'POST', '2021-03-07 00:16:26', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45975', '172.25.142.201', 'POST', '2021-03-07 00:22:00', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('45976', '172.25.142.201', 'POST', '2021-03-07 00:22:00', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('45977', '172.25.142.201', 'POST', '2021-03-07 00:22:00', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('45978', '172.25.142.201', 'POST', '2021-03-07 00:22:00', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45979', '172.25.142.201', 'POST', '2021-03-07 00:22:00', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('45980', '172.25.142.201', 'POST', '2021-03-07 00:22:00', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('45981', '172.25.142.201', 'POST', '2021-03-07 00:22:04', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('45982', '172.25.142.201', 'POST', '2021-03-07 00:22:05', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45983', '172.25.142.201', 'POST', '2021-03-07 00:22:15', '1', '2', '修改币币交易对exchangeCoin', '/exchange/exchange-coin/alter-rate');
INSERT INTO `admin_access_log` VALUES ('45984', '172.25.142.201', 'POST', '2021-03-07 00:22:15', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45985', '172.25.142.201', 'POST', '2021-03-07 00:22:35', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('45986', '172.25.142.201', 'POST', '2021-03-07 00:22:39', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('45987', '172.25.142.201', 'POST', '2021-03-07 00:22:39', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45988', '172.25.142.201', 'POST', '2021-03-07 00:22:41', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('45989', '172.25.142.201', 'POST', '2021-03-07 00:25:20', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45990', '172.25.142.201', 'POST', '2021-03-07 00:25:21', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45991', '172.25.142.201', 'POST', '2021-03-07 00:25:21', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('45992', '172.25.142.201', 'POST', '2021-03-07 00:25:23', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45993', '172.25.142.201', 'POST', '2021-03-07 00:25:23', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('45994', '172.25.142.201', 'POST', '2021-03-07 00:25:34', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('45995', '172.25.142.201', 'POST', '2021-03-07 00:25:34', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45996', '172.25.142.201', 'POST', '2021-03-07 00:26:39', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('45997', '172.25.142.201', 'POST', '2021-03-07 00:26:39', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('45998', '172.25.142.201', 'POST', '2021-03-07 00:28:17', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('45999', '172.25.142.201', 'POST', '2021-03-07 00:28:19', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('46000', '172.25.142.201', 'POST', '2021-03-07 00:28:19', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46001', '172.25.142.201', 'POST', '2021-03-07 00:28:19', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46002', '172.25.142.201', 'POST', '2021-03-07 00:28:20', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46003', '172.25.142.201', 'POST', '2021-03-07 00:28:20', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46004', '172.25.142.201', 'POST', '2021-03-07 00:28:20', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46005', '172.25.142.201', 'POST', '2021-03-07 00:28:20', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46006', '172.25.142.201', 'POST', '2021-03-07 00:28:20', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46007', '172.25.142.201', 'POST', '2021-03-07 00:28:20', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46008', '172.25.142.201', 'POST', '2021-03-07 00:29:25', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46009', '172.25.142.201', 'POST', '2021-03-07 00:29:25', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46010', '172.25.142.201', 'POST', '2021-03-07 00:29:25', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46011', '172.25.142.201', 'POST', '2021-03-07 00:29:25', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46012', '172.25.142.201', 'POST', '2021-03-07 00:29:25', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46013', '172.25.142.201', 'POST', '2021-03-07 00:29:25', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46014', '172.25.142.201', 'POST', '2021-03-07 00:30:03', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46015', '172.25.142.201', 'POST', '2021-03-07 00:30:03', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46016', '172.25.142.201', 'POST', '2021-03-07 00:30:03', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46017', '172.25.142.201', 'POST', '2021-03-07 00:30:03', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46018', '172.25.142.201', 'POST', '2021-03-07 00:30:03', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46019', '172.25.142.201', 'POST', '2021-03-07 00:30:03', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46020', '172.25.142.201', 'POST', '2021-03-07 00:30:05', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46021', '172.25.142.201', 'POST', '2021-03-07 00:30:05', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46022', '172.25.142.201', 'POST', '2021-03-07 00:30:05', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46023', '172.25.142.201', 'POST', '2021-03-07 00:30:05', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46024', '172.25.142.201', 'POST', '2021-03-07 00:30:05', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46025', '172.25.142.201', 'POST', '2021-03-07 00:30:05', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46026', '172.25.142.201', 'POST', '2021-03-07 00:30:13', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46027', '172.25.142.201', 'POST', '2021-03-07 00:30:26', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46028', '172.25.142.201', 'POST', '2021-03-07 00:30:27', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('46029', '172.25.142.201', 'POST', '2021-03-07 00:30:28', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46030', '172.25.142.201', 'POST', '2021-03-07 00:30:28', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46031', '172.25.142.201', 'POST', '2021-03-07 00:30:29', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46032', '172.25.142.201', 'POST', '2021-03-07 00:30:29', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46033', '172.25.142.201', 'POST', '2021-03-07 00:30:29', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46034', '172.25.142.201', 'POST', '2021-03-07 00:30:29', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46035', '172.25.142.201', 'POST', '2021-03-07 00:30:29', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46036', '172.25.142.201', 'POST', '2021-03-07 00:30:29', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46037', '172.25.142.201', 'POST', '2021-03-07 00:30:31', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46038', '172.25.142.201', 'POST', '2021-03-07 00:30:41', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46039', '172.25.142.201', 'POST', '2021-03-07 00:30:42', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46040', '172.25.142.201', 'POST', '2021-03-07 00:30:44', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46041', '172.25.142.201', 'POST', '2021-03-07 00:30:45', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46042', '172.25.142.201', 'POST', '2021-03-07 00:30:50', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46043', '172.25.142.201', 'POST', '2021-03-07 00:30:51', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46044', '172.25.142.201', 'POST', '2021-03-07 00:30:51', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46045', '172.25.142.201', 'POST', '2021-03-07 00:30:52', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('46046', '172.25.142.201', 'POST', '2021-03-07 00:30:52', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46047', '172.25.142.201', 'POST', '2021-03-07 00:31:01', '1', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('46048', '172.25.142.201', 'GET', '2021-03-07 00:31:02', '1', '3', '分页查询提现记录WithdrawRecord', '/finance/withdraw-record/page-query');
INSERT INTO `admin_access_log` VALUES ('46049', '172.25.142.201', 'POST', '2021-03-07 00:31:03', '1', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('46050', '172.25.142.201', 'POST', '2021-03-07 00:33:18', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46051', '172.25.142.201', 'POST', '2021-03-07 00:33:19', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46052', '172.25.142.201', 'POST', '2021-03-07 00:33:19', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46053', '172.25.142.201', 'POST', '2021-03-07 00:33:25', '1', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46054', '172.25.142.201', 'POST', '2021-03-07 00:33:26', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46055', '172.25.142.201', 'POST', '2021-03-07 00:33:32', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46056', '172.25.142.201', 'POST', '2021-03-07 00:33:35', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46057', '172.25.142.201', 'POST', '2021-03-07 00:33:36', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46058', '172.25.142.201', 'POST', '2021-03-07 00:33:37', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46059', '172.25.142.201', 'POST', '2021-03-07 00:33:43', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46060', '172.25.142.201', 'POST', '2021-03-07 00:33:46', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46061', '172.25.142.201', 'POST', '2021-03-07 00:33:48', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46062', '172.25.142.201', 'POST', '2021-03-07 00:33:49', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46063', '172.25.142.201', 'POST', '2021-03-07 00:33:50', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46064', '172.25.142.201', 'POST', '2021-03-07 00:33:51', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46065', '172.25.142.201', 'POST', '2021-03-07 00:33:52', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46066', '172.25.142.201', 'POST', '2021-03-07 00:33:52', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46067', '172.25.142.201', 'POST', '2021-03-07 00:41:26', '1', '5', '分页查找后台广告Advertise', '/otc/advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('46068', '172.25.142.201', 'POST', '2021-03-07 00:42:20', '1', '5', '分页查找后台申诉Appeal', '/otc/appeal/page-query');
INSERT INTO `admin_access_log` VALUES ('46069', '172.25.142.201', 'POST', '2021-03-07 00:42:22', '1', '5', '分页查找法币交易订单Order', '/otc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46070', '172.25.142.201', 'POST', '2021-03-07 00:42:22', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46071', '172.25.142.201', 'POST', '2021-03-07 00:42:23', '1', '5', '分页查找otc币种otcCoin', '/otc/otc-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46072', '172.25.142.201', 'POST', '2021-03-07 00:42:30', '1', '5', '分页查找otc币种otcCoin', '/otc/otc-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46073', '172.25.142.201', 'POST', '2021-03-07 00:42:36', '1', '5', '分页查找法币交易订单Order', '/otc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46074', '172.25.142.201', 'POST', '2021-03-07 00:42:36', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46075', '172.25.142.201', 'POST', '2021-03-07 00:42:37', '1', '5', '分页查找后台申诉Appeal', '/otc/appeal/page-query');
INSERT INTO `admin_access_log` VALUES ('46076', '172.25.142.201', 'POST', '2021-03-07 00:42:37', '1', '5', '分页查找后台广告Advertise', '/otc/advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('46077', '172.25.142.201', 'POST', '2021-03-07 00:43:53', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46078', '172.25.142.201', 'POST', '2021-03-07 00:43:53', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46079', '172.25.142.201', 'POST', '2021-03-07 00:43:53', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46080', '172.25.142.201', 'POST', '2021-03-07 00:43:53', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46081', '172.25.142.201', 'POST', '2021-03-07 00:43:53', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46082', '172.25.142.201', 'POST', '2021-03-07 00:43:53', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46083', '172.25.142.201', 'POST', '2021-03-07 00:45:02', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46084', '172.25.142.201', 'POST', '2021-03-07 00:45:02', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46085', '172.25.142.201', 'POST', '2021-03-07 00:45:02', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46086', '172.25.142.201', 'POST', '2021-03-07 00:45:02', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46087', '172.25.142.201', 'POST', '2021-03-07 00:45:02', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46088', '172.25.142.201', 'POST', '2021-03-07 00:45:02', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46089', '172.25.142.201', 'POST', '2021-03-07 00:45:06', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46090', '172.25.142.201', 'POST', '2021-03-07 00:45:06', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46091', '172.25.142.201', 'POST', '2021-03-07 00:45:06', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46092', '172.25.142.201', 'POST', '2021-03-07 00:45:06', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46093', '172.25.142.201', 'POST', '2021-03-07 00:45:06', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46094', '172.25.142.201', 'POST', '2021-03-07 00:45:06', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46095', '172.25.142.201', 'POST', '2021-03-07 00:45:10', '1', '0', '邀请管理多条件查询', '/invite/management/query');
INSERT INTO `admin_access_log` VALUES ('46096', '172.25.142.201', 'POST', '2021-03-07 00:45:12', '1', '0', '邀请排名条件查询', '/invite/management/rank');
INSERT INTO `admin_access_log` VALUES ('46097', '172.25.142.201', 'POST', '2021-03-07 00:45:13', '1', '0', '邀请管理多条件查询', '/invite/management/query');
INSERT INTO `admin_access_log` VALUES ('46098', '172.25.142.201', 'POST', '2021-03-07 00:45:15', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46099', '172.25.142.201', 'POST', '2021-03-07 00:45:16', '1', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('46100', '172.25.142.201', 'POST', '2021-03-07 00:45:17', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('46101', '172.25.142.201', 'POST', '2021-03-07 00:45:19', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46102', '172.25.142.201', 'POST', '2021-03-07 00:45:20', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46103', '172.25.142.201', 'POST', '2021-03-07 00:45:22', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46104', '172.25.142.201', 'POST', '2021-03-07 00:45:26', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46105', '172.25.142.201', 'POST', '2021-03-07 00:45:27', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46106', '172.25.142.201', 'POST', '2021-03-07 00:45:27', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46107', '172.25.142.201', 'POST', '2021-03-07 00:45:28', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46108', '172.25.142.201', 'POST', '2021-03-07 00:45:28', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('46109', '172.25.142.201', 'POST', '2021-03-07 00:45:29', '1', '5', '分页查找后台广告Advertise', '/otc/advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('46110', '172.25.142.201', 'POST', '2021-03-07 00:45:30', '1', '5', '分页查找后台申诉Appeal', '/otc/appeal/page-query');
INSERT INTO `admin_access_log` VALUES ('46111', '172.25.142.201', 'POST', '2021-03-07 00:45:37', '1', '5', '分页查找otc币种otcCoin', '/otc/otc-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46112', '172.25.142.201', 'POST', '2021-03-07 00:49:12', '1', '5', '分页查找otc币种otcCoin', '/otc/otc-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46113', '172.25.142.201', 'POST', '2021-03-07 00:49:12', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46114', '172.25.142.201', 'POST', '2021-03-07 00:49:12', '1', '5', '分页查找法币交易订单Order', '/otc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46115', '172.25.142.201', 'POST', '2021-03-07 00:49:14', '1', '5', '分页查找otc币种otcCoin', '/otc/otc-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46116', '172.25.142.201', 'POST', '2021-03-07 00:49:17', '1', '5', '分页查找otc币种otcCoin', '/otc/otc-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46117', '172.25.142.201', 'POST', '2021-03-07 00:49:43', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46118', '172.25.142.201', 'POST', '2021-03-07 00:49:45', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46119', '172.25.142.201', 'POST', '2021-03-07 00:49:48', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46120', '172.25.142.201', 'POST', '2021-03-07 00:49:53', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46121', '172.25.142.201', 'POST', '2021-03-07 00:49:58', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46122', '172.25.142.201', 'POST', '2021-03-07 00:50:00', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('46123', '172.25.142.201', 'POST', '2021-03-07 00:50:01', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46124', '172.25.142.201', 'POST', '2021-03-07 00:50:01', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46125', '172.25.142.201', 'POST', '2021-03-07 00:50:02', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46126', '172.25.142.201', 'POST', '2021-03-07 00:50:02', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46127', '172.25.142.201', 'POST', '2021-03-07 00:50:02', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46128', '172.25.142.201', 'POST', '2021-03-07 00:50:02', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46129', '172.25.142.201', 'POST', '2021-03-07 00:50:02', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46130', '172.25.142.201', 'POST', '2021-03-07 00:50:02', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46131', '172.25.142.201', 'POST', '2021-03-07 00:50:09', '1', '5', '分页查找otc币种otcCoin', '/otc/otc-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46132', '172.25.142.201', 'POST', '2021-03-07 00:50:10', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46133', '172.25.142.201', 'POST', '2021-03-07 00:50:10', '1', '5', '分页查找法币交易订单Order', '/otc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46134', '172.25.142.201', 'POST', '2021-03-07 00:50:10', '1', '5', '分页查找后台申诉Appeal', '/otc/appeal/page-query');
INSERT INTO `admin_access_log` VALUES ('46135', '172.25.142.201', 'POST', '2021-03-07 00:50:11', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46136', '172.25.142.201', 'POST', '2021-03-07 00:50:11', '1', '5', '分页查找法币交易订单Order', '/otc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46137', '172.25.142.201', 'POST', '2021-03-07 00:50:15', '1', '5', '分页查找otc币种otcCoin', '/otc/otc-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46138', '172.25.142.201', 'POST', '2021-03-07 01:07:19', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46139', '172.25.142.201', 'POST', '2021-03-07 01:07:28', '1', '5', '分页查找otc币种otcCoin', '/otc/otc-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46140', '172.25.142.201', 'POST', '2021-03-07 01:07:28', '1', '5', '分页查找法币交易订单Order', '/otc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46141', '172.25.142.201', 'POST', '2021-03-07 01:07:28', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46142', '172.25.142.201', 'POST', '2021-03-07 01:07:29', '1', '5', '分页查找后台申诉Appeal', '/otc/appeal/page-query');
INSERT INTO `admin_access_log` VALUES ('46143', '172.25.142.201', 'POST', '2021-03-07 01:07:30', '1', '5', '分页查找后台广告Advertise', '/otc/advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('46144', '172.25.142.201', 'POST', '2021-03-07 01:07:33', '1', '10', '分页查看CTC订单列表AdminCtcOrderController', '/ctc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46145', '172.25.142.201', 'POST', '2021-03-07 01:07:34', '1', '10', '分页查看CTC承兑商列表AdminCtcAcceptorController', '/ctc/acceptor/page-query');
INSERT INTO `admin_access_log` VALUES ('46146', '172.25.142.201', 'POST', '2021-03-07 01:16:02', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46147', '172.25.142.201', 'POST', '2021-03-07 01:16:04', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('46148', '172.25.142.201', 'POST', '2021-03-07 01:16:04', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46149', '172.25.142.201', 'POST', '2021-03-07 01:16:04', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46150', '172.25.142.201', 'POST', '2021-03-07 01:16:04', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46151', '172.25.142.201', 'POST', '2021-03-07 01:16:04', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46152', '172.25.142.201', 'POST', '2021-03-07 01:16:04', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46153', '172.25.142.201', 'POST', '2021-03-07 01:16:04', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46154', '172.25.142.201', 'POST', '2021-03-07 01:16:04', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46155', '172.25.142.201', 'POST', '2021-03-07 01:16:04', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46156', '172.25.142.201', 'POST', '2021-03-07 01:16:05', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46157', '172.25.142.201', 'POST', '2021-03-07 01:16:05', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46158', '172.25.142.201', 'POST', '2021-03-07 01:16:05', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46159', '172.25.142.201', 'POST', '2021-03-07 01:16:05', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46160', '172.25.142.201', 'POST', '2021-03-07 01:20:59', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46161', '172.25.142.201', 'POST', '2021-03-07 01:21:00', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46162', '172.25.142.201', 'POST', '2021-03-07 01:21:02', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46163', '172.25.142.201', 'POST', '2021-03-07 01:21:05', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46164', '172.25.142.201', 'POST', '2021-03-07 01:21:05', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46165', '172.25.142.201', 'POST', '2021-03-07 01:26:25', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46166', '172.25.142.201', 'POST', '2021-03-07 01:26:27', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('46167', '172.25.142.201', 'POST', '2021-03-07 01:26:27', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46168', '172.25.142.201', 'POST', '2021-03-07 01:26:27', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46169', '172.25.142.201', 'POST', '2021-03-07 01:26:28', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46170', '172.25.142.201', 'POST', '2021-03-07 01:26:28', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46171', '172.25.142.201', 'POST', '2021-03-07 01:26:28', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46172', '172.25.142.201', 'POST', '2021-03-07 01:26:28', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46173', '172.25.142.201', 'POST', '2021-03-07 01:26:28', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46174', '172.25.142.201', 'POST', '2021-03-07 01:26:28', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46175', '172.25.142.201', 'POST', '2021-03-07 01:30:48', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46176', '172.25.142.201', 'POST', '2021-03-07 01:30:49', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46177', '172.25.142.201', 'POST', '2021-03-07 01:33:44', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46178', '172.25.142.201', 'POST', '2021-03-07 01:33:49', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46179', '172.25.142.201', 'POST', '2021-03-07 01:35:08', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46180', '172.25.142.201', 'POST', '2021-03-07 01:35:13', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46181', '172.25.142.201', 'POST', '2021-03-07 01:35:13', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46182', '172.25.142.201', 'POST', '2021-03-07 01:35:21', '1', '2', '修改币币交易对exchangeCoin', '/exchange/exchange-coin/alter-rate');
INSERT INTO `admin_access_log` VALUES ('46183', '172.25.142.201', 'POST', '2021-03-07 01:35:21', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46184', '172.25.142.201', 'POST', '2021-03-07 01:35:37', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46185', '172.25.142.201', 'POST', '2021-03-07 01:35:44', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('46186', '172.25.142.201', 'POST', '2021-03-07 01:35:44', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46187', '172.25.142.201', 'POST', '2021-03-07 01:45:27', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46188', '172.25.142.201', 'POST', '2021-03-07 01:45:28', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('46189', '172.25.142.201', 'POST', '2021-03-07 01:45:30', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46190', '172.25.142.201', 'POST', '2021-03-07 01:45:30', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46191', '172.25.142.201', 'POST', '2021-03-07 01:45:33', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46192', '172.25.142.201', 'POST', '2021-03-07 01:45:33', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46193', '172.25.142.201', 'POST', '2021-03-07 01:45:33', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46194', '172.25.142.201', 'POST', '2021-03-07 01:45:33', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46195', '172.25.142.201', 'POST', '2021-03-07 01:45:33', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46196', '172.25.142.201', 'POST', '2021-03-07 01:45:33', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46197', '172.25.142.201', 'POST', '2021-03-07 01:46:35', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46198', '172.25.142.201', 'POST', '2021-03-07 01:46:43', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46199', '172.25.142.201', 'POST', '2021-03-07 01:47:52', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46200', '172.25.142.201', 'POST', '2021-03-07 01:47:54', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46201', '172.25.142.201', 'POST', '2021-03-07 01:48:01', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46202', '172.25.142.201', 'POST', '2021-03-07 01:48:08', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46203', '172.25.142.201', 'POST', '2021-03-07 01:48:09', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46204', '172.25.142.201', 'POST', '2021-03-07 01:48:16', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46205', '172.25.142.201', 'POST', '2021-03-07 01:48:16', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46206', '172.25.142.201', 'POST', '2021-03-07 01:48:54', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46207', '172.25.142.201', 'POST', '2021-03-07 01:48:55', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46208', '172.25.142.201', 'POST', '2021-03-07 01:48:55', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46209', '172.25.142.201', 'POST', '2021-03-07 01:48:56', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46210', '172.25.142.201', 'POST', '2021-03-07 01:48:59', '1', '5', '分页查找后台广告Advertise', '/otc/advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('46211', '172.25.142.201', 'POST', '2021-03-07 01:49:04', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('46212', '172.25.142.201', 'POST', '2021-03-07 01:49:05', '1', '0', '分页查询系统帮助', '/cms/system-help/page-query');
INSERT INTO `admin_access_log` VALUES ('46213', '172.25.142.201', 'POST', '2021-03-07 01:49:06', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('46214', '172.25.142.201', 'POST', '2021-03-07 02:03:16', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46215', '172.25.142.201', 'POST', '2021-03-07 02:03:19', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46216', '172.25.142.201', 'POST', '2021-03-07 02:03:20', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46217', '172.25.142.201', 'POST', '2021-03-07 02:03:20', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46218', '172.25.142.201', 'POST', '2021-03-07 02:03:20', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46219', '172.25.142.201', 'POST', '2021-03-07 02:03:20', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46220', '172.25.142.201', 'POST', '2021-03-07 02:03:20', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46221', '172.25.142.201', 'POST', '2021-03-07 02:12:08', '1', '0', '公告置顶', '/system/announcement/top');
INSERT INTO `admin_access_log` VALUES ('46222', '172.25.142.201', 'POST', '2021-03-07 02:12:10', '1', '0', '公告置顶', '/system/announcement/top');
INSERT INTO `admin_access_log` VALUES ('46223', '172.25.142.201', 'POST', '2021-03-07 02:12:11', '1', '0', '公告置顶', '/system/announcement/top');
INSERT INTO `admin_access_log` VALUES ('46224', '172.25.142.201', 'POST', '2021-03-07 02:12:12', '1', '0', '公告置顶', '/system/announcement/top');
INSERT INTO `admin_access_log` VALUES ('46225', '172.25.142.201', 'POST', '2021-03-07 02:12:13', '1', '0', '公告置顶', '/system/announcement/top');
INSERT INTO `admin_access_log` VALUES ('46226', '172.25.142.201', 'POST', '2021-03-07 02:13:02', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('46227', '172.25.142.201', 'POST', '2021-03-07 02:13:04', '1', '0', '分页查询系统帮助', '/cms/system-help/page-query');
INSERT INTO `admin_access_log` VALUES ('46228', '172.25.142.201', 'POST', '2021-03-07 02:55:47', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46229', '172.25.142.201', 'POST', '2021-03-07 02:55:47', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46230', '172.25.142.201', 'POST', '2021-03-07 02:55:48', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46231', '172.25.142.201', 'POST', '2021-03-07 02:55:48', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46232', '172.25.142.201', 'POST', '2021-03-07 02:55:48', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46233', '172.25.142.201', 'POST', '2021-03-07 02:55:48', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46234', '172.25.142.201', 'POST', '2021-03-07 02:58:00', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46235', '172.25.142.201', 'POST', '2021-03-07 03:03:15', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46236', '172.25.142.201', 'POST', '2021-03-07 03:03:15', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46237', '172.25.142.201', 'POST', '2021-03-07 03:03:15', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46238', '172.25.142.201', 'POST', '2021-03-07 03:03:15', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46239', '172.25.142.201', 'POST', '2021-03-07 03:03:15', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46240', '172.25.142.201', 'POST', '2021-03-07 03:03:15', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46241', '172.25.142.201', 'POST', '2021-03-07 03:03:39', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46242', '172.25.142.201', 'POST', '2021-03-07 03:06:17', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46243', '172.25.142.201', 'POST', '2021-03-07 03:06:28', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46244', '172.25.142.201', 'POST', '2021-03-07 03:06:30', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46245', '172.25.142.201', 'POST', '2021-03-07 03:06:45', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46246', '172.25.142.201', 'POST', '2021-03-07 03:09:45', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46247', '172.25.142.201', 'POST', '2021-03-07 03:09:45', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46248', '172.25.142.201', 'POST', '2021-03-07 03:09:45', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46249', '172.25.142.201', 'POST', '2021-03-07 03:09:45', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46250', '172.25.142.201', 'POST', '2021-03-07 03:09:45', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46251', '172.25.142.201', 'POST', '2021-03-07 03:09:45', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46252', '172.25.142.201', 'POST', '2021-03-07 03:09:56', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46253', '172.25.142.201', 'POST', '2021-03-07 03:09:57', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('46254', '172.25.142.201', 'POST', '2021-03-07 03:09:57', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46255', '172.25.142.201', 'POST', '2021-03-07 03:09:57', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46256', '172.25.142.201', 'POST', '2021-03-07 03:09:57', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46257', '172.25.142.201', 'POST', '2021-03-07 03:09:57', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46258', '172.25.142.201', 'POST', '2021-03-07 03:09:57', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46259', '172.25.142.201', 'POST', '2021-03-07 03:09:57', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46260', '172.25.142.201', 'POST', '2021-03-07 03:09:58', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46261', '172.25.142.201', 'POST', '2021-03-07 03:09:58', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46262', '172.25.142.201', 'POST', '2021-03-07 03:09:58', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46263', '172.25.142.201', 'POST', '2021-03-07 03:09:58', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46264', '172.25.142.201', 'POST', '2021-03-07 03:09:58', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46265', '172.25.142.201', 'POST', '2021-03-07 03:09:58', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46266', '172.25.142.201', 'POST', '2021-03-07 03:10:02', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46267', '172.25.142.201', 'POST', '2021-03-07 03:10:05', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46268', '172.25.142.201', 'POST', '2021-03-07 03:10:08', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46269', '172.25.142.201', 'POST', '2021-03-07 03:16:12', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46270', '172.25.142.201', 'POST', '2021-03-07 03:16:24', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46271', '172.25.142.201', 'POST', '2021-03-07 03:16:42', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46272', '172.25.142.201', 'POST', '2021-03-07 03:25:05', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46273', '172.25.142.201', 'POST', '2021-03-07 09:41:19', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46274', '172.25.142.201', 'POST', '2021-03-07 09:41:19', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46275', '172.25.142.201', 'POST', '2021-03-07 09:41:20', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46276', '172.25.142.201', 'POST', '2021-03-07 09:41:20', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46277', '172.25.142.201', 'POST', '2021-03-07 09:41:20', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46278', '172.25.142.201', 'POST', '2021-03-07 09:41:20', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46279', '172.25.142.201', 'POST', '2021-03-07 10:38:27', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46280', '172.25.142.201', 'POST', '2021-03-07 11:24:37', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46281', '172.25.142.201', 'POST', '2021-03-07 11:27:01', '1', '5', '分页查找后台广告Advertise', '/otc/advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('46282', '172.25.142.201', 'POST', '2021-03-07 11:27:05', '1', '5', '分页查找后台申诉Appeal', '/otc/appeal/page-query');
INSERT INTO `admin_access_log` VALUES ('46283', '172.25.142.201', 'POST', '2021-03-07 11:27:07', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46284', '172.25.142.201', 'POST', '2021-03-07 11:27:07', '1', '5', '分页查找法币交易订单Order', '/otc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46285', '172.25.142.201', 'POST', '2021-03-07 11:27:09', '1', '5', '分页查找otc币种otcCoin', '/otc/otc-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46286', '172.25.142.201', 'POST', '2021-03-07 11:27:19', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46287', '172.25.142.201', 'POST', '2021-03-07 11:27:27', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46288', '172.25.142.201', 'POST', '2021-03-07 11:27:27', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46289', '172.25.142.201', 'POST', '2021-03-07 11:27:27', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46290', '172.25.142.201', 'POST', '2021-03-07 11:27:27', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46291', '172.25.142.201', 'POST', '2021-03-07 11:27:27', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46292', '172.25.142.201', 'POST', '2021-03-07 11:27:27', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46293', '172.25.142.201', 'POST', '2021-03-07 11:38:42', '1', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46294', '172.25.142.201', 'POST', '2021-03-07 11:45:05', '1', '6', '创建后台货币Coin', '/system/coin/create');
INSERT INTO `admin_access_log` VALUES ('46295', '172.25.142.201', 'POST', '2021-03-07 11:45:05', '1', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46296', '172.25.142.201', 'POST', '2021-03-07 11:47:46', '1', '6', '后台货币Coin详情', '/system/coin/detail');
INSERT INTO `admin_access_log` VALUES ('46297', '172.25.142.201', 'POST', '2021-03-07 11:48:00', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46298', '172.25.142.201', 'POST', '2021-03-07 11:49:01', '1', '2', '新增币币交易对exchangeCoin', '/exchange/exchange-coin/merge');
INSERT INTO `admin_access_log` VALUES ('46299', '172.25.142.201', 'POST', '2021-03-07 11:49:01', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46300', '172.25.142.201', 'POST', '2021-03-07 11:51:22', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46301', '172.25.142.201', 'POST', '2021-03-07 11:51:25', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('46302', '172.25.142.201', 'POST', '2021-03-07 11:51:26', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46303', '172.25.142.201', 'POST', '2021-03-07 11:51:41', '1', '2', '修改币币交易对exchangeCoin', '/exchange/exchange-coin/alter-rate');
INSERT INTO `admin_access_log` VALUES ('46304', '172.25.142.201', 'POST', '2021-03-07 11:51:48', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46305', '172.25.142.201', 'POST', '2021-03-07 11:52:01', '1', '2', '修改币币交易对exchangeCoin', '/exchange/exchange-coin/alter-rate');
INSERT INTO `admin_access_log` VALUES ('46306', '172.25.142.201', 'POST', '2021-03-07 11:52:02', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46307', '172.25.142.201', 'POST', '2021-03-07 11:52:10', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46308', '172.25.142.201', 'POST', '2021-03-07 11:52:24', '1', '2', '启动交易引擎', '/exchange/exchange-coin/start-trader');
INSERT INTO `admin_access_log` VALUES ('46309', '172.25.142.201', 'POST', '2021-03-07 11:52:24', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46310', '172.25.142.201', 'POST', '2021-03-07 11:52:39', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46311', '172.25.142.201', 'POST', '2021-03-07 11:53:29', '1', '2', '重置交易引擎', '/exchange/exchange-coin/reset-trader');
INSERT INTO `admin_access_log` VALUES ('46312', '172.25.142.201', 'POST', '2021-03-07 11:53:36', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46313', '172.25.142.201', 'POST', '2021-03-07 11:53:41', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46314', '172.25.142.201', 'POST', '2021-03-07 11:53:41', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46315', '172.25.142.201', 'POST', '2021-03-07 11:54:07', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46316', '172.25.142.201', 'POST', '2021-03-07 11:54:16', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46317', '172.25.142.201', 'POST', '2021-03-07 11:54:17', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46318', '172.25.142.201', 'POST', '2021-03-07 11:54:24', '1', '2', '暂停交易引擎', '/exchange/exchange-coin/stop-trader');
INSERT INTO `admin_access_log` VALUES ('46319', '172.25.142.201', 'POST', '2021-03-07 11:54:35', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46320', '172.25.142.201', 'POST', '2021-03-07 11:55:41', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46321', '172.25.142.201', 'POST', '2021-03-07 11:55:50', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46322', '172.25.142.201', 'POST', '2021-03-07 11:55:55', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46323', '172.25.142.201', 'POST', '2021-03-07 11:55:55', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46324', '172.25.142.201', 'POST', '2021-03-07 11:56:07', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46325', '172.25.142.201', 'POST', '2021-03-07 11:56:11', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46326', '172.25.142.201', 'POST', '2021-03-07 11:56:11', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46327', '172.25.142.201', 'POST', '2021-03-07 11:56:19', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46328', '172.25.142.201', 'POST', '2021-03-07 11:56:19', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46329', '172.25.142.201', 'POST', '2021-03-07 11:56:26', '1', '2', '设置跟随型控盘趋势', '/exchange/exchange-coin/save-robot-flow');
INSERT INTO `admin_access_log` VALUES ('46330', '172.25.142.201', 'POST', '2021-03-07 11:56:41', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46331', '172.25.142.201', 'POST', '2021-03-07 11:56:47', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46332', '172.25.142.201', 'POST', '2021-03-07 11:56:50', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46333', '172.25.142.201', 'POST', '2021-03-07 11:56:50', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46334', '172.25.142.201', 'POST', '2021-03-07 11:56:58', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46335', '172.25.142.201', 'POST', '2021-03-07 11:57:16', '1', '2', '修改币币交易对exchangeCoin', '/exchange/exchange-coin/alter-rate');
INSERT INTO `admin_access_log` VALUES ('46336', '172.25.142.201', 'POST', '2021-03-07 11:57:16', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46337', '172.25.142.201', 'POST', '2021-03-07 11:57:35', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46338', '172.25.142.201', 'POST', '2021-03-07 11:57:48', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46339', '172.25.142.201', 'POST', '2021-03-07 11:58:14', '1', '2', '暂停交易引擎', '/exchange/exchange-coin/stop-trader');
INSERT INTO `admin_access_log` VALUES ('46340', '172.25.142.201', 'POST', '2021-03-07 11:58:14', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46341', '172.25.142.201', 'POST', '2021-03-07 12:00:05', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46342', '172.25.142.201', 'POST', '2021-03-07 12:00:40', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46343', '172.25.142.201', 'POST', '2021-03-07 12:00:48', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46344', '172.25.142.201', 'POST', '2021-03-07 12:00:48', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('46345', '172.25.142.201', 'POST', '2021-03-07 12:00:48', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('46346', '172.25.142.201', 'POST', '2021-03-07 12:00:48', '1', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('46347', '172.25.142.201', 'POST', '2021-03-07 12:00:56', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46348', '172.25.142.201', 'POST', '2021-03-07 12:01:03', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46349', '172.25.142.201', 'POST', '2021-03-07 12:01:23', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46350', '172.25.142.201', 'POST', '2021-03-07 12:01:23', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('46351', '172.25.142.201', 'POST', '2021-03-07 12:01:23', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('46352', '172.25.142.201', 'POST', '2021-03-07 12:01:24', '1', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('46353', '172.25.142.201', 'POST', '2021-03-07 12:03:32', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46354', '172.25.142.201', 'POST', '2021-03-07 12:03:54', '1', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46355', '172.25.142.201', 'POST', '2021-03-07 12:04:11', '1', '6', '后台货币Coin详情', '/system/coin/detail');
INSERT INTO `admin_access_log` VALUES ('46356', '172.25.142.201', 'POST', '2021-03-07 12:05:00', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46357', '172.25.142.201', 'POST', '2021-03-07 12:27:49', '1', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46358', '172.25.142.201', 'POST', '2021-03-07 12:32:43', '1', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46359', '172.25.142.201', 'POST', '2021-03-07 12:32:51', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46360', '172.25.142.201', 'POST', '2021-03-07 12:32:57', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46361', '172.25.142.201', 'POST', '2021-03-07 12:33:47', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46362', '172.25.142.201', 'POST', '2021-03-07 12:34:41', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('46363', '172.25.142.201', 'POST', '2021-03-07 12:34:41', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('46364', '172.25.142.201', 'POST', '2021-03-07 12:34:41', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46365', '172.25.142.201', 'POST', '2021-03-07 12:34:42', '1', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('46366', '172.25.142.201', 'POST', '2021-03-07 12:34:54', '1', '4', '充币管理', '/member/member-wallet/recharge');
INSERT INTO `admin_access_log` VALUES ('46367', '172.25.142.201', 'POST', '2021-03-07 12:34:54', '1', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('46368', '172.25.142.201', 'POST', '2021-03-07 12:34:59', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46369', '172.25.142.201', 'POST', '2021-03-07 12:35:12', '1', '2', '启动交易引擎', '/exchange/exchange-coin/start-trader');
INSERT INTO `admin_access_log` VALUES ('46370', '172.25.142.201', 'POST', '2021-03-07 12:35:12', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46371', '172.25.142.201', 'POST', '2021-03-07 12:36:10', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46372', '172.25.142.201', 'POST', '2021-03-07 12:36:11', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46373', '172.25.142.201', 'POST', '2021-03-07 12:36:18', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46374', '172.25.142.201', 'POST', '2021-03-07 12:36:29', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46375', '172.25.142.201', 'POST', '2021-03-07 12:36:34', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46376', '172.25.142.201', 'POST', '2021-03-07 12:36:34', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46377', '172.25.142.201', 'POST', '2021-03-07 12:36:51', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46378', '172.25.142.201', 'POST', '2021-03-07 12:36:52', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46379', '172.25.142.201', 'POST', '2021-03-07 12:36:57', '1', '2', '设置跟随型控盘趋势', '/exchange/exchange-coin/save-robot-flow');
INSERT INTO `admin_access_log` VALUES ('46380', '172.25.142.201', 'POST', '2021-03-07 12:37:22', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46381', '172.25.142.201', 'POST', '2021-03-07 12:37:40', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46382', '172.25.142.201', 'POST', '2021-03-07 12:37:49', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46383', '172.25.142.201', 'POST', '2021-03-07 12:37:52', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46384', '172.25.142.201', 'POST', '2021-03-07 12:37:54', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46385', '172.25.142.201', 'POST', '2021-03-07 12:38:03', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46386', '172.25.142.201', 'POST', '2021-03-07 12:38:08', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46387', '172.25.142.201', 'POST', '2021-03-07 12:38:13', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46388', '172.25.142.201', 'POST', '2021-03-07 12:38:13', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('46389', '172.25.142.201', 'POST', '2021-03-07 12:38:13', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('46390', '172.25.142.201', 'POST', '2021-03-07 12:38:14', '1', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('46391', '172.25.142.201', 'POST', '2021-03-07 12:38:30', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46392', '172.25.142.201', 'POST', '2021-03-07 12:38:48', '1', '2', '修改币币交易对exchangeCoin', '/exchange/exchange-coin/alter-rate');
INSERT INTO `admin_access_log` VALUES ('46393', '172.25.142.201', 'POST', '2021-03-07 12:38:48', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46394', '172.25.142.201', 'POST', '2021-03-07 15:27:00', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46395', '172.25.142.201', 'POST', '2021-03-07 15:27:00', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46396', '172.25.142.201', 'POST', '2021-03-07 15:27:58', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46397', '172.25.142.201', 'POST', '2021-03-07 15:27:58', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46398', '172.25.142.201', 'POST', '2021-03-07 16:18:26', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46399', '172.25.142.201', 'POST', '2021-03-07 16:18:26', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46400', '172.25.142.201', 'POST', '2021-03-07 16:18:30', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46401', '172.25.142.201', 'POST', '2021-03-07 16:18:37', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46402', '172.25.142.201', 'POST', '2021-03-07 16:18:51', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46403', '172.25.142.201', 'POST', '2021-03-07 16:18:51', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('46404', '172.25.142.201', 'POST', '2021-03-07 16:18:51', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('46405', '172.25.142.201', 'POST', '2021-03-07 16:18:51', '1', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('46406', '172.25.142.201', 'POST', '2021-03-07 16:18:53', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46407', '172.25.142.201', 'POST', '2021-03-07 16:38:07', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46408', '172.25.142.201', 'POST', '2021-03-07 16:45:16', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46409', '172.25.142.201', 'POST', '2021-03-07 16:45:17', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('46410', '172.25.142.201', 'POST', '2021-03-07 16:45:17', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46411', '172.25.142.201', 'POST', '2021-03-07 16:45:17', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46412', '172.25.142.201', 'POST', '2021-03-07 16:45:17', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46413', '172.25.142.201', 'POST', '2021-03-07 16:45:17', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46414', '172.25.142.201', 'POST', '2021-03-07 16:45:18', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46415', '172.25.142.201', 'POST', '2021-03-07 16:45:18', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46416', '172.25.142.201', 'POST', '2021-03-07 16:45:18', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46417', '172.25.142.201', 'POST', '2021-03-07 16:45:18', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46418', '172.25.142.201', 'POST', '2021-03-07 16:45:18', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46419', '172.25.142.201', 'POST', '2021-03-07 16:45:18', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46420', '172.25.142.201', 'POST', '2021-03-07 16:45:30', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46421', '172.25.142.201', 'POST', '2021-03-07 16:45:37', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46422', '172.25.142.201', 'POST', '2021-03-07 16:51:13', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46423', '172.25.142.201', 'POST', '2021-03-07 17:05:39', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46424', '172.25.142.201', 'POST', '2021-03-07 17:06:42', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46425', '172.25.142.201', 'POST', '2021-03-07 17:08:06', '1', '12', '永续合约交易对 新增', '/swap-coin/add');
INSERT INTO `admin_access_log` VALUES ('46426', '172.25.142.201', 'POST', '2021-03-07 17:08:07', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46427', '172.25.142.201', 'POST', '2021-03-07 17:17:36', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46428', '172.25.142.201', 'POST', '2021-03-07 17:44:49', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46429', '172.25.142.201', 'POST', '2021-03-07 18:22:51', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46430', '172.25.142.201', 'POST', '2021-03-07 18:27:20', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46431', '172.25.142.201', 'POST', '2021-03-07 18:27:20', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46432', '172.25.142.201', 'POST', '2021-03-07 18:27:21', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46433', '172.25.142.201', 'POST', '2021-03-07 18:27:21', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('46434', '172.25.142.201', 'POST', '2021-03-07 18:27:22', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46435', '172.25.142.201', 'POST', '2021-03-07 18:27:22', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46436', '172.25.142.201', 'POST', '2021-03-07 18:27:26', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46437', '172.25.142.201', 'POST', '2021-03-07 18:53:39', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46438', '172.25.142.201', 'POST', '2021-03-07 18:53:42', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46439', '172.25.142.201', 'POST', '2021-03-07 18:54:21', '1', '12', '永续合约交易对新增钱包 新增', '/swap-coin/init-wallet');
INSERT INTO `admin_access_log` VALUES ('46440', '172.25.142.201', 'POST', '2021-03-07 20:45:00', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46441', '172.25.142.201', 'POST', '2021-03-07 20:45:00', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46442', '172.25.142.201', 'POST', '2021-03-07 21:27:04', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46443', '172.25.142.201', 'POST', '2021-03-07 21:27:06', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('46444', '172.25.142.201', 'POST', '2021-03-07 21:27:07', '1', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('46445', '172.25.142.201', 'POST', '2021-03-07 21:27:10', '1', '0', '邀请管理多条件查询', '/invite/management/query');
INSERT INTO `admin_access_log` VALUES ('46446', '172.25.142.201', 'POST', '2021-03-07 21:27:11', '1', '0', '邀请排名条件查询', '/invite/management/rank');
INSERT INTO `admin_access_log` VALUES ('46447', '172.25.142.201', 'POST', '2021-03-07 21:57:09', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46448', '172.25.142.201', 'POST', '2021-03-07 22:13:02', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46449', '172.25.142.201', 'POST', '2021-03-07 22:18:05', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46450', '172.25.142.201', 'POST', '2021-03-07 22:18:05', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46451', '172.25.142.201', 'POST', '2021-03-07 22:18:05', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46452', '172.25.142.201', 'POST', '2021-03-07 22:18:05', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46453', '172.25.142.201', 'POST', '2021-03-07 22:18:06', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46454', '172.25.142.201', 'POST', '2021-03-07 22:18:06', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46455', '172.25.142.201', 'POST', '2021-03-07 22:50:20', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46456', '172.25.142.201', 'POST', '2021-03-07 23:16:11', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46457', '172.25.142.201', 'POST', '2021-03-07 23:16:11', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46458', '172.25.142.201', 'POST', '2021-03-07 23:16:12', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46459', '172.25.142.201', 'POST', '2021-03-07 23:16:12', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('46460', '172.25.142.201', 'POST', '2021-03-07 23:16:13', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46461', '172.25.142.201', 'POST', '2021-03-07 23:16:13', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46462', '172.25.142.201', 'POST', '2021-03-07 23:16:14', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46463', '172.25.142.201', 'POST', '2021-03-07 23:20:30', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46464', '172.25.142.201', 'POST', '2021-03-07 23:20:40', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46465', '172.25.142.201', 'POST', '2021-03-07 23:33:20', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46466', '172.25.142.201', 'POST', '2021-03-08 09:43:34', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46467', '172.25.142.201', 'POST', '2021-03-08 09:43:34', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46468', '172.25.142.201', 'POST', '2021-03-08 09:43:34', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46469', '172.25.142.201', 'POST', '2021-03-08 09:43:34', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46470', '172.25.142.201', 'POST', '2021-03-08 09:43:34', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46471', '172.25.142.201', 'POST', '2021-03-08 09:43:34', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46472', '172.25.142.201', 'POST', '2021-03-08 09:43:55', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46473', '172.25.142.201', 'POST', '2021-03-08 10:21:04', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46474', '172.25.142.201', 'POST', '2021-03-08 10:28:39', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46475', '172.25.142.201', 'POST', '2021-03-08 10:32:11', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46476', '172.25.142.201', 'POST', '2021-03-08 10:32:53', '1', '12', '永续合约交易对新增钱包 新增', '/swap-coin/init-wallet');
INSERT INTO `admin_access_log` VALUES ('46477', '172.25.142.201', 'POST', '2021-03-08 12:16:26', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46478', '172.25.142.201', 'POST', '2021-03-08 12:16:28', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('46479', '172.25.142.201', 'POST', '2021-03-08 12:16:29', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46480', '172.25.142.201', 'POST', '2021-03-08 12:16:29', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46481', '172.25.142.201', 'POST', '2021-03-08 12:16:30', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46482', '172.25.142.201', 'POST', '2021-03-08 12:16:30', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46483', '172.25.142.201', 'POST', '2021-03-08 12:16:30', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46484', '172.25.142.201', 'POST', '2021-03-08 12:16:30', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46485', '172.25.142.201', 'POST', '2021-03-08 12:16:30', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46486', '172.25.142.201', 'POST', '2021-03-08 12:16:30', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46487', '172.25.142.201', 'POST', '2021-03-08 12:16:32', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46488', '172.25.142.201', 'POST', '2021-03-08 12:16:39', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46489', '172.25.142.201', 'POST', '2021-03-08 12:16:39', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('46490', '172.25.142.201', 'POST', '2021-03-08 12:16:39', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('46491', '172.25.142.201', 'POST', '2021-03-08 12:16:39', '1', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('46492', '172.25.142.201', 'POST', '2021-03-08 12:18:06', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46493', '172.25.142.201', 'POST', '2021-03-08 12:18:36', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('46494', '172.25.142.201', 'POST', '2021-03-08 12:18:36', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46495', '172.25.142.201', 'POST', '2021-03-08 12:18:36', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('46496', '172.25.142.201', 'POST', '2021-03-08 12:18:36', '1', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('46497', '172.25.142.201', 'POST', '2021-03-08 12:18:37', '1', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('46498', '172.25.142.201', 'POST', '2021-03-08 12:18:48', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46499', '172.25.142.201', 'POST', '2021-03-08 12:18:48', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46500', '172.25.142.201', 'POST', '2021-03-08 12:19:35', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46501', '172.25.142.201', 'POST', '2021-03-08 12:19:35', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('46502', '172.25.142.201', 'POST', '2021-03-08 12:19:37', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46503', '172.25.142.201', 'POST', '2021-03-08 12:19:46', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46504', '172.25.142.201', 'POST', '2021-03-08 12:19:52', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46505', '172.25.142.201', 'POST', '2021-03-08 12:19:52', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('46506', '172.25.142.201', 'POST', '2021-03-08 12:19:52', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('46507', '172.25.142.201', 'POST', '2021-03-08 12:19:52', '1', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('46508', '172.25.142.201', 'POST', '2021-03-08 12:19:55', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46509', '172.25.142.201', 'POST', '2021-03-08 12:20:01', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46510', '172.25.142.201', 'POST', '2021-03-08 12:20:01', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('46511', '172.25.142.201', 'POST', '2021-03-08 12:20:01', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('46512', '172.25.142.201', 'POST', '2021-03-08 12:20:08', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46513', '172.25.142.201', 'POST', '2021-03-08 12:20:12', '1', '6', '修改用户等级', '/member/alter-member-superpartner');
INSERT INTO `admin_access_log` VALUES ('46514', '172.25.142.201', 'POST', '2021-03-08 12:20:12', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46515', '172.25.142.201', 'POST', '2021-03-08 12:20:17', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46516', '172.25.142.201', 'POST', '2021-03-08 12:20:20', '1', '6', '修改用户等级', '/member/alter-member-superpartner');
INSERT INTO `admin_access_log` VALUES ('46517', '172.25.142.201', 'POST', '2021-03-08 12:20:20', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46518', '172.25.142.201', 'POST', '2021-03-08 12:20:26', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('46519', '172.25.142.201', 'POST', '2021-03-08 12:20:26', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46520', '172.25.142.201', 'POST', '2021-03-08 12:20:30', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46521', '172.25.142.201', 'POST', '2021-03-08 12:20:36', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('46522', '172.25.142.201', 'POST', '2021-03-08 12:20:36', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46523', '172.25.142.201', 'POST', '2021-03-08 12:21:09', '1', '6', '全部权限树Menu', '/system/role/permission/all');
INSERT INTO `admin_access_log` VALUES ('46524', '172.25.142.201', 'POST', '2021-03-08 12:21:09', '1', '6', '所有角色SysRole', '/system/role/all');
INSERT INTO `admin_access_log` VALUES ('46525', '172.25.142.201', 'GET', '2021-03-08 12:21:10', '1', '6', '分页查找操作/访问日志AdminAccessLog', '/system/access-log/page-query/');
INSERT INTO `admin_access_log` VALUES ('46526', '172.25.142.201', 'POST', '2021-03-08 12:21:12', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46527', '172.25.142.201', 'POST', '2021-03-08 12:21:19', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46528', '172.25.142.201', 'POST', '2021-03-08 12:21:24', '1', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46529', '172.25.142.201', 'GET', '2021-03-08 12:21:27', '1', '6', '分页查找操作/访问日志AdminAccessLog', '/system/access-log/page-query/');
INSERT INTO `admin_access_log` VALUES ('46530', '172.25.142.201', 'POST', '2021-03-08 12:21:29', '1', '6', '分页查找后台用户admin', '/system/employee/page-query');
INSERT INTO `admin_access_log` VALUES ('46531', '172.25.142.201', 'POST', '2021-03-08 12:21:30', '1', '6', '所有部门Department', '/system/department/all');
INSERT INTO `admin_access_log` VALUES ('46532', '172.25.142.201', 'POST', '2021-03-08 12:21:31', '1', '6', '分页查找后台用户admin', '/system/employee/page-query');
INSERT INTO `admin_access_log` VALUES ('46533', '172.25.142.201', 'POST', '2021-03-08 12:21:32', '1', '6', '全部权限树Menu', '/system/role/permission/all');
INSERT INTO `admin_access_log` VALUES ('46534', '172.25.142.201', 'POST', '2021-03-08 12:21:32', '1', '6', '所有角色SysRole', '/system/role/all');
INSERT INTO `admin_access_log` VALUES ('46535', '172.25.142.201', 'POST', '2021-03-08 12:21:37', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46536', '172.25.142.201', 'POST', '2021-03-08 12:21:44', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('46537', '172.25.142.201', 'POST', '2021-03-08 12:21:47', '1', '0', '分页查询系统帮助', '/cms/system-help/page-query');
INSERT INTO `admin_access_log` VALUES ('46538', '172.25.142.201', 'POST', '2021-03-08 12:21:51', '1', '9', '分页查看活动列表Activity', '/activity/activity/page-query');
INSERT INTO `admin_access_log` VALUES ('46539', '172.25.142.201', 'POST', '2021-03-08 12:21:58', '1', '10', '分页查看CTC订单列表AdminCtcOrderController', '/ctc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46540', '172.25.142.201', 'POST', '2021-03-08 12:21:59', '1', '10', '分页查看CTC承兑商列表AdminCtcAcceptorController', '/ctc/acceptor/page-query');
INSERT INTO `admin_access_log` VALUES ('46541', '172.25.142.201', 'POST', '2021-03-08 12:22:29', '1', '0', '邀请管理多条件查询', '/invite/management/query');
INSERT INTO `admin_access_log` VALUES ('46542', '172.25.142.201', 'POST', '2021-03-08 12:22:31', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46543', '172.25.142.201', 'POST', '2021-03-08 12:22:31', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46544', '172.25.142.201', 'POST', '2021-03-08 12:22:44', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46545', '172.25.142.201', 'POST', '2021-03-08 12:22:44', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46546', '172.25.142.201', 'POST', '2021-03-08 12:27:08', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46547', '172.25.142.201', 'POST', '2021-03-08 12:27:46', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46548', '172.25.142.201', 'POST', '2021-03-08 12:27:52', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46549', '172.25.142.201', 'POST', '2021-03-08 12:27:52', '1', '2', 'exchangeOrder详情', '/exchange/exchange-order/detail');
INSERT INTO `admin_access_log` VALUES ('46550', '172.25.142.201', 'POST', '2021-03-08 12:27:58', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46551', '172.25.142.201', 'POST', '2021-03-08 12:27:59', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46552', '172.25.142.201', 'POST', '2021-03-08 12:27:59', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46553', '172.25.142.201', 'POST', '2021-03-08 12:36:24', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46554', '172.25.142.201', 'POST', '2021-03-08 12:36:24', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46555', '172.25.142.201', 'POST', '2021-03-08 12:36:25', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46556', '172.25.142.201', 'POST', '2021-03-08 12:36:26', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46557', '172.25.142.201', 'POST', '2021-03-08 12:54:41', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46558', '172.25.142.201', 'POST', '2021-03-08 12:54:45', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46559', '172.25.142.201', 'POST', '2021-03-08 12:54:56', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46560', '172.25.142.201', 'POST', '2021-03-08 12:55:00', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46561', '172.25.142.201', 'POST', '2021-03-08 12:55:03', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46562', '172.25.142.201', 'POST', '2021-03-08 12:55:03', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46563', '172.25.142.201', 'POST', '2021-03-08 12:55:11', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46564', '172.25.142.201', 'POST', '2021-03-08 12:55:11', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46565', '172.25.142.201', 'POST', '2021-03-08 12:55:13', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46566', '172.25.142.201', 'POST', '2021-03-08 12:55:13', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46567', '172.25.142.201', 'POST', '2021-03-08 12:57:00', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46568', '172.25.142.201', 'POST', '2021-03-08 13:00:26', '1', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46569', '172.25.142.201', 'POST', '2021-03-08 13:00:37', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46570', '172.25.142.201', 'POST', '2021-03-08 13:56:43', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46571', '172.25.142.201', 'POST', '2021-03-08 13:56:44', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46572', '172.25.142.201', 'POST', '2021-03-08 13:56:53', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46573', '172.25.142.201', 'POST', '2021-03-08 13:56:54', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46574', '172.25.142.201', 'POST', '2021-03-08 13:57:03', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46575', '172.25.142.201', 'POST', '2021-03-08 13:57:04', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46576', '172.25.142.201', 'POST', '2021-03-08 13:57:51', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46577', '172.25.142.201', 'POST', '2021-03-08 13:57:51', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46578', '172.25.142.201', 'POST', '2021-03-08 13:59:19', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46579', '172.25.142.201', 'POST', '2021-03-08 13:59:19', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46580', '172.25.142.201', 'POST', '2021-03-08 14:04:26', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46581', '172.25.142.201', 'POST', '2021-03-08 14:04:26', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46582', '172.25.142.201', 'POST', '2021-03-08 14:06:50', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46583', '172.25.142.201', 'POST', '2021-03-08 14:06:51', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46584', '172.25.142.201', 'POST', '2021-03-08 14:07:07', '1', '2', '设置跟随型控盘趋势', '/exchange/exchange-coin/save-robot-flow');
INSERT INTO `admin_access_log` VALUES ('46585', '172.25.142.201', 'POST', '2021-03-08 14:07:33', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46586', '172.25.142.201', 'POST', '2021-03-08 14:07:33', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46587', '172.25.142.201', 'POST', '2021-03-08 14:07:46', '1', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46588', '172.25.142.201', 'POST', '2021-03-08 14:08:01', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46589', '172.25.142.201', 'POST', '2021-03-08 14:08:04', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46590', '172.25.142.201', 'POST', '2021-03-08 14:08:07', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46591', '172.25.142.201', 'POST', '2021-03-08 14:08:07', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46592', '172.25.142.201', 'POST', '2021-03-08 14:08:09', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46593', '172.25.142.201', 'POST', '2021-03-08 14:08:09', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46594', '172.25.142.201', 'POST', '2021-03-08 14:08:16', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46595', '172.25.142.201', 'POST', '2021-03-08 14:08:19', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46596', '172.25.142.201', 'POST', '2021-03-08 14:08:22', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46597', '172.25.142.201', 'POST', '2021-03-08 14:08:25', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46598', '172.25.142.201', 'POST', '2021-03-08 14:08:28', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46599', '172.25.142.201', 'POST', '2021-03-08 14:08:29', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46600', '172.25.142.201', 'POST', '2021-03-08 14:08:32', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('46601', '172.25.142.201', 'POST', '2021-03-08 14:08:34', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46602', '172.25.142.201', 'POST', '2021-03-08 14:08:42', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46603', '172.25.142.201', 'POST', '2021-03-08 14:08:45', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46604', '172.25.142.201', 'POST', '2021-03-08 14:08:53', '1', '2', '修改币币交易对exchangeCoin', '/exchange/exchange-coin/alter-rate');
INSERT INTO `admin_access_log` VALUES ('46605', '172.25.142.201', 'POST', '2021-03-08 14:08:53', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46606', '172.25.142.201', 'POST', '2021-03-08 14:08:54', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('46607', '172.25.142.201', 'POST', '2021-03-08 14:08:58', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('46608', '172.25.142.201', 'POST', '2021-03-08 14:08:58', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46609', '172.25.142.201', 'POST', '2021-03-08 14:08:59', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46610', '172.25.142.201', 'POST', '2021-03-08 14:09:13', '1', '2', '修改币币交易对exchangeCoin', '/exchange/exchange-coin/alter-rate');
INSERT INTO `admin_access_log` VALUES ('46611', '172.25.142.201', 'POST', '2021-03-08 14:09:13', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46612', '172.25.142.201', 'POST', '2021-03-08 14:09:24', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46613', '172.25.142.201', 'POST', '2021-03-08 14:09:28', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46614', '172.25.142.201', 'POST', '2021-03-08 14:09:28', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46615', '172.25.142.201', 'POST', '2021-03-08 14:09:29', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46616', '172.25.142.201', 'POST', '2021-03-08 14:09:31', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46617', '172.25.142.201', 'POST', '2021-03-08 14:09:32', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46618', '172.25.142.201', 'POST', '2021-03-08 14:09:40', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46619', '172.25.142.201', 'POST', '2021-03-08 14:09:40', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46620', '172.25.142.201', 'POST', '2021-03-08 14:09:51', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46621', '172.25.142.201', 'POST', '2021-03-08 14:09:51', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46622', '172.25.142.201', 'POST', '2021-03-08 14:09:53', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46623', '172.25.142.201', 'POST', '2021-03-08 14:09:53', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46624', '172.25.142.201', 'POST', '2021-03-08 14:10:06', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46625', '172.25.142.201', 'POST', '2021-03-08 14:10:06', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46626', '172.25.142.201', 'POST', '2021-03-08 14:10:51', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46627', '172.25.142.201', 'POST', '2021-03-08 14:10:53', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46628', '172.25.142.201', 'POST', '2021-03-08 14:10:57', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46629', '172.25.142.201', 'POST', '2021-03-08 14:10:57', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46630', '172.25.142.201', 'POST', '2021-03-08 14:11:08', '1', '2', '修改币币交易对exchangeCoin', '/exchange/exchange-coin/alter-rate');
INSERT INTO `admin_access_log` VALUES ('46631', '172.25.142.201', 'POST', '2021-03-08 14:11:08', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46632', '172.25.142.201', 'POST', '2021-03-08 14:11:13', '1', '2', '撤销某交易对所有委托exchangeCoin', '/exchange/exchange-coin/cancel-all-order');
INSERT INTO `admin_access_log` VALUES ('46633', '172.25.142.201', 'POST', '2021-03-08 14:11:13', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46634', '172.25.142.201', 'POST', '2021-03-08 14:11:31', '1', '2', '修改币币交易对exchangeCoin', '/exchange/exchange-coin/alter-rate');
INSERT INTO `admin_access_log` VALUES ('46635', '172.25.142.201', 'POST', '2021-03-08 14:11:31', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46636', '172.25.142.201', 'POST', '2021-03-08 14:11:32', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46637', '172.25.142.201', 'POST', '2021-03-08 14:11:32', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46638', '172.25.142.201', 'POST', '2021-03-08 14:11:38', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46639', '172.25.142.201', 'POST', '2021-03-08 14:11:39', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46640', '172.25.142.201', 'POST', '2021-03-08 14:11:42', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46641', '172.25.142.201', 'POST', '2021-03-08 14:11:44', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46642', '172.25.142.201', 'POST', '2021-03-08 14:11:46', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46643', '172.25.142.201', 'POST', '2021-03-08 14:11:47', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46644', '172.25.142.201', 'POST', '2021-03-08 14:12:11', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46645', '172.25.142.201', 'POST', '2021-03-08 14:12:12', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46646', '172.25.142.201', 'POST', '2021-03-08 14:12:25', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46647', '172.25.142.201', 'POST', '2021-03-08 14:12:28', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('46648', '172.25.142.201', 'POST', '2021-03-08 14:12:30', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46649', '172.25.142.201', 'POST', '2021-03-08 14:12:30', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46650', '172.25.142.201', 'POST', '2021-03-08 14:12:31', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46651', '172.25.142.201', 'POST', '2021-03-08 14:12:31', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46652', '172.25.142.201', 'POST', '2021-03-08 14:12:31', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46653', '172.25.142.201', 'POST', '2021-03-08 14:12:31', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46654', '172.25.142.201', 'POST', '2021-03-08 14:12:31', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46655', '172.25.142.201', 'POST', '2021-03-08 14:12:31', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46656', '172.25.142.201', 'POST', '2021-03-08 14:15:52', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46657', '172.25.142.201', 'POST', '2021-03-08 14:16:09', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46658', '172.25.142.201', 'POST', '2021-03-08 14:16:15', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46659', '172.25.142.201', 'POST', '2021-03-08 14:16:15', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46660', '172.25.142.201', 'POST', '2021-03-08 14:16:19', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('46661', '172.25.142.201', 'POST', '2021-03-08 14:18:19', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46662', '172.25.142.201', 'POST', '2021-03-08 14:18:47', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46663', '172.25.142.201', 'POST', '2021-03-08 14:20:33', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46664', '172.25.142.201', 'POST', '2021-03-08 14:22:17', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46665', '172.25.142.201', 'POST', '2021-03-08 14:22:17', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46666', '172.25.142.201', 'POST', '2021-03-08 14:22:38', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46667', '172.25.142.201', 'POST', '2021-03-08 14:22:39', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46668', '172.25.142.201', 'POST', '2021-03-08 14:22:41', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('46669', '172.25.142.201', 'POST', '2021-03-08 14:22:42', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46670', '172.25.142.201', 'POST', '2021-03-08 14:22:54', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46671', '172.25.142.201', 'POST', '2021-03-08 14:22:56', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('46672', '172.25.142.201', 'POST', '2021-03-08 14:22:56', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46673', '172.25.142.201', 'POST', '2021-03-08 14:22:56', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('46674', '172.25.142.201', 'POST', '2021-03-08 14:23:07', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46675', '172.25.142.201', 'POST', '2021-03-08 14:23:12', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46676', '172.25.142.201', 'POST', '2021-03-08 14:23:20', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('46677', '172.25.142.201', 'POST', '2021-03-08 14:23:22', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46678', '172.25.142.201', 'POST', '2021-03-08 14:23:31', '1', '5', '分页查找后台申诉Appeal', '/otc/appeal/page-query');
INSERT INTO `admin_access_log` VALUES ('46679', '172.25.142.201', 'POST', '2021-03-08 14:23:37', '1', '5', '分页查找法币交易订单Order', '/otc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46680', '172.25.142.201', 'POST', '2021-03-08 14:23:37', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46681', '172.25.142.201', 'POST', '2021-03-08 14:23:45', '1', '5', '分页查找otc币种otcCoin', '/otc/otc-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46682', '172.25.142.201', 'POST', '2021-03-08 14:24:36', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46683', '172.25.142.201', 'POST', '2021-03-08 14:24:36', '1', '5', '分页查找法币交易订单Order', '/otc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46684', '172.25.142.201', 'POST', '2021-03-08 14:24:45', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46685', '172.25.142.201', 'POST', '2021-03-08 14:24:45', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46686', '172.25.142.201', 'POST', '2021-03-08 14:25:11', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46687', '172.25.142.201', 'POST', '2021-03-08 14:25:12', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46688', '172.25.142.201', 'POST', '2021-03-08 14:25:17', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46689', '172.25.142.201', 'POST', '2021-03-08 14:25:18', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46690', '172.25.142.201', 'POST', '2021-03-08 14:28:16', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46691', '172.25.142.201', 'POST', '2021-03-08 14:28:16', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('46692', '172.25.142.201', 'POST', '2021-03-08 14:28:16', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('46693', '172.25.142.201', 'POST', '2021-03-08 14:28:27', '1', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46694', '172.25.142.201', 'POST', '2021-03-08 14:28:41', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46695', '172.25.142.201', 'POST', '2021-03-08 14:28:44', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('46696', '172.25.142.201', 'POST', '2021-03-08 14:28:44', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('46697', '172.25.142.201', 'POST', '2021-03-08 14:28:44', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46698', '172.25.142.201', 'POST', '2021-03-08 14:28:49', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46699', '172.25.142.201', 'POST', '2021-03-08 14:28:51', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46700', '172.25.142.201', 'POST', '2021-03-08 14:28:51', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('46701', '172.25.142.201', 'POST', '2021-03-08 14:28:51', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('46702', '172.25.142.201', 'POST', '2021-03-08 14:28:54', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('46703', '172.25.142.201', 'POST', '2021-03-08 14:28:57', '1', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('46704', '172.25.142.201', 'POST', '2021-03-08 14:29:02', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46705', '172.25.142.201', 'POST', '2021-03-08 14:29:05', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46706', '172.25.142.201', 'POST', '2021-03-08 14:29:05', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('46707', '172.25.142.201', 'POST', '2021-03-08 14:29:05', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('46708', '172.25.142.201', 'POST', '2021-03-08 14:29:11', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46709', '172.25.142.201', 'POST', '2021-03-08 14:29:11', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('46710', '172.25.142.201', 'POST', '2021-03-08 14:29:11', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('46711', '172.25.142.201', 'POST', '2021-03-08 14:29:25', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46712', '172.25.142.201', 'POST', '2021-03-08 14:29:25', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('46713', '172.25.142.201', 'POST', '2021-03-08 14:29:25', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('46714', '172.25.142.201', 'POST', '2021-03-08 14:30:13', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('46715', '172.25.142.201', 'POST', '2021-03-08 14:30:13', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('46716', '172.25.142.201', 'POST', '2021-03-08 14:30:13', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46717', '172.25.142.201', 'POST', '2021-03-08 14:30:21', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('46718', '172.25.142.201', 'POST', '2021-03-08 14:30:21', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46719', '172.25.142.201', 'POST', '2021-03-08 14:30:21', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('46720', '172.25.142.201', 'POST', '2021-03-08 14:30:25', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46721', '172.25.142.201', 'POST', '2021-03-08 14:30:28', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('46722', '172.25.142.201', 'POST', '2021-03-08 14:30:28', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46723', '172.25.142.201', 'POST', '2021-03-08 14:30:28', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('46724', '172.25.142.201', 'POST', '2021-03-08 14:30:28', '1', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('46725', '172.25.142.201', 'POST', '2021-03-08 14:30:33', '1', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46726', '172.25.142.201', 'POST', '2021-03-08 14:33:09', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46727', '172.25.142.201', 'POST', '2021-03-08 14:33:09', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46728', '172.25.142.201', 'POST', '2021-03-08 14:33:17', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46729', '172.25.142.201', 'POST', '2021-03-08 14:33:18', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46730', '172.25.142.201', 'POST', '2021-03-08 14:38:50', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46731', '172.25.142.201', 'POST', '2021-03-08 14:38:50', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46732', '172.25.142.201', 'POST', '2021-03-08 14:38:51', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46733', '172.25.142.201', 'POST', '2021-03-08 14:38:51', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46734', '172.25.142.201', 'POST', '2021-03-08 14:48:24', '1', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46735', '172.25.142.201', 'POST', '2021-03-08 14:51:26', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46736', '172.25.142.201', 'POST', '2021-03-08 14:51:27', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46737', '172.25.142.201', 'POST', '2021-03-08 14:54:54', '1', '2', '保存机器人行情趋势线', '/exchange/exchange-coin/save-robot-kline');
INSERT INTO `admin_access_log` VALUES ('46738', '172.25.142.201', 'POST', '2021-03-08 14:54:55', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46739', '172.25.142.201', 'POST', '2021-03-08 14:59:39', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46740', '172.25.142.201', 'POST', '2021-03-08 14:59:39', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46741', '172.25.142.201', 'POST', '2021-03-08 15:00:07', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46742', '172.25.142.201', 'POST', '2021-03-08 15:02:56', '1', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46743', '172.25.142.201', 'POST', '2021-03-08 15:03:01', '1', '6', '后台货币Coin详情', '/system/coin/detail');
INSERT INTO `admin_access_log` VALUES ('46744', '172.25.142.201', 'POST', '2021-03-08 15:03:21', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46745', '172.25.142.201', 'POST', '2021-03-08 15:03:21', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46746', '172.25.142.201', 'POST', '2021-03-08 15:03:22', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46747', '172.25.142.201', 'POST', '2021-03-08 15:03:22', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('46748', '172.25.142.201', 'POST', '2021-03-08 15:03:24', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46749', '172.25.142.201', 'POST', '2021-03-08 15:11:10', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46750', '172.25.142.201', 'POST', '2021-03-08 15:11:11', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('46751', '172.25.142.201', 'POST', '2021-03-08 15:11:13', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46752', '172.25.142.201', 'POST', '2021-03-08 15:11:13', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46753', '172.25.142.201', 'POST', '2021-03-08 15:11:13', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46754', '172.25.142.201', 'POST', '2021-03-08 15:11:13', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46755', '172.25.142.201', 'POST', '2021-03-08 15:11:14', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46756', '172.25.142.201', 'POST', '2021-03-08 15:11:14', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46757', '172.25.142.201', 'POST', '2021-03-08 15:11:14', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46758', '172.25.142.201', 'POST', '2021-03-08 15:11:14', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46759', '172.25.142.201', 'POST', '2021-03-08 15:11:26', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46760', '172.25.142.201', 'POST', '2021-03-08 15:11:38', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46761', '172.25.142.201', 'POST', '2021-03-08 15:11:50', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46762', '172.25.142.201', 'POST', '2021-03-08 15:12:12', '1', '12', '永续合约交易对 新增', '/swap-coin/alter');
INSERT INTO `admin_access_log` VALUES ('46763', '172.25.142.201', 'POST', '2021-03-08 15:12:13', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46764', '172.25.142.201', 'POST', '2021-03-08 15:12:38', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46765', '172.25.142.201', 'POST', '2021-03-08 15:12:52', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('46766', '172.25.142.201', 'POST', '2021-03-08 15:12:55', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46767', '172.25.142.201', 'POST', '2021-03-08 15:23:48', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46768', '172.25.142.201', 'POST', '2021-03-08 15:34:07', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46769', '172.25.142.201', 'POST', '2021-03-08 15:34:07', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46770', '172.25.142.201', 'POST', '2021-03-08 15:34:07', '1', '3', '充币记录', '/finance/member-deposit/page-query');
INSERT INTO `admin_access_log` VALUES ('46771', '172.25.142.201', 'POST', '2021-03-08 15:34:07', '1', '5', '分页查找法币交易订单Order', '/otc/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46772', '172.25.142.201', 'POST', '2021-03-08 15:34:15', '1', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('46773', '172.25.142.201', 'POST', '2021-03-08 16:05:18', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46774', '172.25.142.201', 'POST', '2021-03-08 16:05:19', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46775', '172.25.142.201', 'POST', '2021-03-08 16:11:58', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46776', '172.25.142.201', 'POST', '2021-03-08 16:21:06', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('46777', '172.25.142.201', 'POST', '2021-03-08 16:21:06', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46778', '172.25.142.201', 'POST', '2021-03-08 16:40:35', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46779', '172.25.142.201', 'POST', '2021-03-08 16:42:13', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46780', '172.25.142.201', 'POST', '2021-03-08 16:42:21', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46781', '172.25.142.201', 'POST', '2021-03-08 16:42:24', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46782', '172.25.142.201', 'POST', '2021-03-08 16:42:43', '1', '12', '永续合约交易对 新增', '/swap-coin/alter');
INSERT INTO `admin_access_log` VALUES ('46783', '172.25.142.201', 'POST', '2021-03-08 16:42:44', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46784', '172.25.142.201', 'POST', '2021-03-08 16:54:15', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46785', '172.25.142.201', 'POST', '2021-03-08 16:54:15', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46786', '172.25.142.201', 'POST', '2021-03-08 16:54:26', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46787', '172.25.142.201', 'POST', '2021-03-08 16:54:26', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('46788', '172.25.142.201', 'POST', '2021-03-08 16:54:29', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46789', '172.25.142.201', 'POST', '2021-03-08 16:54:34', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('46790', '172.25.142.201', 'POST', '2021-03-08 16:54:37', '1', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('46791', '172.25.142.201', 'POST', '2021-03-08 16:54:53', '1', '5', '分页查找后台广告Advertise', '/otc/advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('46792', '172.25.142.201', 'POST', '2021-03-08 16:54:59', '1', '5', '分页查找后台申诉Appeal', '/otc/appeal/page-query');
INSERT INTO `admin_access_log` VALUES ('46793', '172.25.142.201', 'POST', '2021-03-08 16:59:27', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46794', '172.25.142.201', 'POST', '2021-03-08 17:56:47', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46795', '172.25.142.201', 'POST', '2021-03-08 18:01:47', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46796', '172.25.142.201', 'POST', '2021-03-08 18:01:52', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46797', '172.25.142.201', 'POST', '2021-03-08 18:01:55', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46798', '172.25.142.201', 'POST', '2021-03-08 18:03:01', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46799', '172.25.142.201', 'POST', '2021-03-08 18:03:01', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46800', '172.25.142.201', 'POST', '2021-03-08 18:03:04', '1', '2', '设置跟随型控盘趋势', '/exchange/exchange-coin/save-robot-flow');
INSERT INTO `admin_access_log` VALUES ('46801', '172.25.142.201', 'POST', '2021-03-08 18:03:25', '1', '2', '设置跟随型控盘趋势', '/exchange/exchange-coin/save-robot-flow');
INSERT INTO `admin_access_log` VALUES ('46802', '172.25.142.201', 'POST', '2021-03-08 18:03:42', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46803', '172.25.142.201', 'POST', '2021-03-08 18:03:43', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46804', '172.25.142.201', 'POST', '2021-03-08 18:03:45', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46805', '172.25.142.201', 'POST', '2021-03-08 18:03:47', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46806', '172.25.142.201', 'POST', '2021-03-08 18:03:47', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46807', '172.25.142.201', 'POST', '2021-03-08 18:04:27', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46808', '172.25.142.201', 'POST', '2021-03-08 18:04:29', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46809', '172.25.142.201', 'POST', '2021-03-08 18:04:29', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46810', '172.25.142.201', 'POST', '2021-03-08 18:04:31', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46811', '172.25.142.201', 'POST', '2021-03-08 18:04:34', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46812', '172.25.142.201', 'POST', '2021-03-08 18:04:34', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46813', '172.25.142.201', 'POST', '2021-03-08 18:04:35', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46814', '172.25.142.201', 'POST', '2021-03-08 18:04:37', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46815', '172.25.142.201', 'POST', '2021-03-08 18:04:37', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46816', '172.25.142.201', 'POST', '2021-03-08 18:04:38', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46817', '172.25.142.201', 'POST', '2021-03-08 18:04:41', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46818', '172.25.142.201', 'POST', '2021-03-08 18:04:41', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46819', '172.25.142.201', 'POST', '2021-03-08 18:06:07', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('46820', '172.25.142.201', 'POST', '2021-03-08 18:06:09', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/alter-robot-config');
INSERT INTO `admin_access_log` VALUES ('46821', '172.25.142.201', 'POST', '2021-03-08 18:06:09', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46822', '172.25.142.201', 'POST', '2021-03-08 18:06:11', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46823', '172.25.142.201', 'POST', '2021-03-08 18:06:11', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46824', '172.25.142.201', 'POST', '2021-03-08 18:06:19', '1', '2', '设置跟随型控盘趋势', '/exchange/exchange-coin/save-robot-flow');
INSERT INTO `admin_access_log` VALUES ('46825', '172.25.142.201', 'POST', '2021-03-08 18:22:25', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46826', '172.25.142.201', 'POST', '2021-03-08 18:22:40', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46827', '172.25.142.201', 'POST', '2021-03-08 18:23:09', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46828', '172.25.142.201', 'POST', '2021-03-08 18:23:11', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('46829', '172.25.142.201', 'POST', '2021-03-08 18:23:13', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46830', '172.25.142.201', 'POST', '2021-03-08 18:23:13', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46831', '172.25.142.201', 'POST', '2021-03-08 18:23:13', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46832', '172.25.142.201', 'POST', '2021-03-08 18:23:13', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46833', '172.25.142.201', 'POST', '2021-03-08 18:23:13', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46834', '172.25.142.201', 'POST', '2021-03-08 18:23:13', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46835', '172.25.142.201', 'POST', '2021-03-08 18:23:13', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46836', '172.25.142.201', 'POST', '2021-03-08 18:23:13', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46837', '172.25.142.201', 'POST', '2021-03-08 18:23:21', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46838', '172.25.142.201', 'POST', '2021-03-08 18:23:42', '1', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('46839', '172.25.142.201', 'POST', '2021-03-08 18:35:56', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46840', '172.25.142.201', 'POST', '2021-03-08 18:35:56', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46841', '172.25.142.201', 'POST', '2021-03-08 20:15:41', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46842', '172.25.142.201', 'POST', '2021-03-08 20:59:01', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46843', '172.25.142.201', 'POST', '2021-03-08 20:59:01', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46844', '172.25.142.201', 'POST', '2021-03-08 20:59:02', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46845', '172.25.142.201', 'POST', '2021-03-08 20:59:20', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('46846', '172.25.142.201', 'POST', '2021-03-08 20:59:29', '1', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('46847', '172.25.142.201', 'POST', '2021-03-08 20:59:31', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46848', '172.25.142.201', 'POST', '2021-03-08 21:13:21', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46849', '172.25.142.201', 'POST', '2021-03-08 21:13:21', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46850', '172.25.142.201', 'POST', '2021-03-08 21:13:21', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46851', '172.25.142.201', 'POST', '2021-03-08 21:13:21', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46852', '172.25.142.201', 'POST', '2021-03-08 21:13:21', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46853', '172.25.142.201', 'POST', '2021-03-08 21:13:21', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46854', '172.25.142.201', 'POST', '2021-03-08 21:24:53', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46855', '172.25.142.201', 'POST', '2021-03-08 21:24:54', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('46856', '172.25.142.201', 'POST', '2021-03-08 21:24:55', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46857', '172.25.142.201', 'POST', '2021-03-08 21:24:55', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46858', '172.25.142.201', 'POST', '2021-03-08 21:24:55', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46859', '172.25.142.201', 'POST', '2021-03-08 21:24:55', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46860', '172.25.142.201', 'POST', '2021-03-08 21:24:55', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46861', '172.25.142.201', 'POST', '2021-03-08 21:24:55', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46862', '172.25.142.201', 'POST', '2021-03-08 21:24:56', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46863', '172.25.142.201', 'POST', '2021-03-08 21:24:56', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46864', '172.25.142.201', 'POST', '2021-03-08 21:24:56', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46865', '172.25.142.201', 'POST', '2021-03-08 21:24:56', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46866', '172.25.142.201', 'POST', '2021-03-08 21:24:56', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46867', '172.25.142.201', 'POST', '2021-03-08 21:24:56', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46868', '172.25.142.201', 'POST', '2021-03-08 21:25:00', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46869', '172.25.142.201', 'POST', '2021-03-08 21:25:00', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46870', '172.25.142.201', 'POST', '2021-03-08 21:25:02', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46871', '172.25.142.201', 'POST', '2021-03-08 21:25:24', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46872', '172.25.142.201', 'POST', '2021-03-08 21:27:09', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46873', '172.25.142.201', 'POST', '2021-03-08 21:27:18', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46874', '172.25.142.201', 'POST', '2021-03-08 21:27:19', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46875', '172.25.142.201', 'POST', '2021-03-08 21:27:22', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46876', '172.25.142.201', 'POST', '2021-03-08 21:34:02', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46877', '172.25.142.201', 'POST', '2021-03-08 21:34:02', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46878', '172.25.142.201', 'POST', '2021-03-08 21:34:03', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46879', '172.25.142.201', 'POST', '2021-03-08 21:34:03', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('46880', '172.25.142.201', 'POST', '2021-03-08 21:34:42', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46881', '172.25.142.201', 'POST', '2021-03-08 21:41:30', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46882', '172.25.142.201', 'POST', '2021-03-08 21:41:30', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46883', '172.25.142.201', 'POST', '2021-03-08 21:41:30', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46884', '172.25.142.201', 'POST', '2021-03-08 21:41:30', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46885', '172.25.142.201', 'POST', '2021-03-08 21:41:30', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46886', '172.25.142.201', 'POST', '2021-03-08 21:41:30', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46887', '172.25.142.201', 'POST', '2021-03-08 21:41:38', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46888', '172.25.142.201', 'POST', '2021-03-08 21:49:01', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46889', '172.25.142.201', 'POST', '2021-03-08 21:49:02', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('46890', '172.25.142.201', 'POST', '2021-03-08 21:49:04', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46891', '172.25.142.201', 'POST', '2021-03-08 21:49:04', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46892', '172.25.142.201', 'POST', '2021-03-08 21:49:04', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46893', '172.25.142.201', 'POST', '2021-03-08 21:49:04', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46894', '172.25.142.201', 'POST', '2021-03-08 21:49:04', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46895', '172.25.142.201', 'POST', '2021-03-08 21:49:04', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46896', '172.25.142.201', 'POST', '2021-03-08 21:49:04', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46897', '172.25.142.201', 'POST', '2021-03-08 21:49:04', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46898', '172.25.142.201', 'POST', '2021-03-08 21:50:40', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46899', '172.25.142.201', 'POST', '2021-03-08 21:50:41', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46900', '172.25.142.201', 'POST', '2021-03-08 21:50:42', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('46901', '172.25.142.201', 'POST', '2021-03-08 21:50:43', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46902', '172.25.142.201', 'POST', '2021-03-08 21:50:43', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46903', '172.25.142.201', 'POST', '2021-03-08 21:50:44', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46904', '172.25.142.201', 'POST', '2021-03-08 21:50:44', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46905', '172.25.142.201', 'POST', '2021-03-08 21:50:44', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46906', '172.25.142.201', 'POST', '2021-03-08 21:50:44', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46907', '172.25.142.201', 'POST', '2021-03-08 21:50:44', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46908', '172.25.142.201', 'POST', '2021-03-08 21:50:44', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46909', '172.25.142.201', 'POST', '2021-03-08 21:51:23', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('46910', '172.25.142.201', 'POST', '2021-03-08 21:51:24', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('46911', '172.25.142.201', 'POST', '2021-03-08 21:51:25', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46912', '172.25.142.201', 'POST', '2021-03-08 21:51:25', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46913', '172.25.142.201', 'POST', '2021-03-08 21:51:25', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46914', '172.25.142.201', 'POST', '2021-03-08 21:51:25', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46915', '172.25.142.201', 'POST', '2021-03-08 21:51:25', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46916', '172.25.142.201', 'POST', '2021-03-08 21:51:25', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46917', '172.25.142.201', 'POST', '2021-03-08 21:51:25', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46918', '172.25.142.201', 'POST', '2021-03-08 21:51:25', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46919', '172.25.142.201', 'POST', '2021-03-08 21:51:40', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46920', '172.25.142.201', 'POST', '2021-03-08 21:51:42', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46921', '172.25.142.201', 'POST', '2021-03-08 21:51:42', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46922', '172.25.142.201', 'POST', '2021-03-08 21:51:43', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46923', '172.25.142.201', 'POST', '2021-03-08 21:51:43', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46924', '172.25.142.201', 'POST', '2021-03-08 21:51:43', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46925', '172.25.142.201', 'POST', '2021-03-08 21:51:43', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46926', '172.25.142.201', 'POST', '2021-03-08 21:51:44', '1', '0', '邀请管理多条件查询', '/invite/management/query');
INSERT INTO `admin_access_log` VALUES ('46927', '172.25.142.201', 'POST', '2021-03-08 21:51:45', '1', '0', '邀请排名条件查询', '/invite/management/rank');
INSERT INTO `admin_access_log` VALUES ('46928', '172.25.142.201', 'POST', '2021-03-08 21:51:47', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46929', '172.25.142.201', 'POST', '2021-03-08 21:51:47', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46930', '172.25.142.201', 'POST', '2021-03-08 21:51:48', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46931', '172.25.142.201', 'POST', '2021-03-08 21:51:58', '1', '12', '永续合约 戳一下', '/swap-coin/poke');
INSERT INTO `admin_access_log` VALUES ('46932', '172.25.142.201', 'POST', '2021-03-08 21:52:08', '1', '0', '邀请管理多条件查询', '/invite/management/query');
INSERT INTO `admin_access_log` VALUES ('46933', '172.25.142.201', 'POST', '2021-03-08 21:52:09', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46934', '172.25.142.201', 'POST', '2021-03-08 21:52:12', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('46935', '172.25.142.201', 'POST', '2021-03-08 21:52:13', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46936', '172.25.142.201', 'POST', '2021-03-08 21:52:14', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46937', '172.25.142.201', 'POST', '2021-03-08 21:52:14', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('46938', '172.25.142.201', 'POST', '2021-03-08 21:52:14', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46939', '172.25.142.201', 'POST', '2021-03-08 21:52:14', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('46940', '172.25.142.201', 'POST', '2021-03-08 21:52:15', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46941', '172.25.142.201', 'POST', '2021-03-08 21:52:15', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('46942', '172.25.142.201', 'POST', '2021-03-08 21:52:16', '1', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('46943', '172.25.142.201', 'POST', '2021-03-08 21:52:17', '1', '0', '邀请管理多条件查询', '/invite/management/query');
INSERT INTO `admin_access_log` VALUES ('46944', '172.25.142.201', 'POST', '2021-03-08 21:52:18', '1', '0', '邀请排名条件查询', '/invite/management/rank');
INSERT INTO `admin_access_log` VALUES ('46945', '172.25.142.201', 'POST', '2021-03-08 21:52:18', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46946', '172.25.142.201', 'POST', '2021-03-08 21:52:18', '1', '3', '充币记录', '/finance/member-deposit/page-query');
INSERT INTO `admin_access_log` VALUES ('46947', '172.25.142.201', 'POST', '2021-03-08 21:52:19', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('46948', '172.25.142.201', 'POST', '2021-03-08 21:52:19', '1', '12', '永续合约 戳一下', '/swap-coin/poke');
INSERT INTO `admin_access_log` VALUES ('46949', '172.25.142.201', 'POST', '2021-03-08 21:52:19', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('46950', '172.25.142.201', 'POST', '2021-03-08 21:52:19', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46951', '172.25.142.201', 'POST', '2021-03-08 21:52:21', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46952', '172.25.142.201', 'POST', '2021-03-08 21:52:21', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46953', '172.25.142.201', 'POST', '2021-03-08 21:52:21', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46954', '172.25.142.201', 'POST', '2021-03-08 21:52:21', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46955', '172.25.142.201', 'POST', '2021-03-08 21:52:21', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46956', '172.25.142.201', 'POST', '2021-03-08 21:52:21', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46957', '172.25.142.201', 'POST', '2021-03-08 21:52:59', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46958', '172.25.142.201', 'POST', '2021-03-08 21:53:07', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46959', '172.25.142.201', 'POST', '2021-03-08 21:53:31', '1', '6', '创建/修改权限', '/system/permission/merge');
INSERT INTO `admin_access_log` VALUES ('46960', '172.25.142.201', 'POST', '2021-03-08 21:53:31', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46961', '172.25.142.201', 'POST', '2021-03-08 21:53:37', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46962', '172.25.142.201', 'POST', '2021-03-08 21:53:53', '1', '12', '永续合约 戳一下', '/swap-coin/poke');
INSERT INTO `admin_access_log` VALUES ('46963', '172.25.142.201', 'POST', '2021-03-08 21:54:43', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46964', '172.25.142.201', 'POST', '2021-03-08 21:54:43', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46965', '172.25.142.201', 'POST', '2021-03-08 21:54:43', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46966', '172.25.142.201', 'POST', '2021-03-08 21:54:43', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46967', '172.25.142.201', 'POST', '2021-03-08 21:54:43', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46968', '172.25.142.201', 'POST', '2021-03-08 21:54:43', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46969', '172.25.142.201', 'POST', '2021-03-08 21:54:47', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('46970', '172.25.142.201', 'POST', '2021-03-08 21:54:57', '1', '12', '永续合约 戳一下', '/swap-coin/poke');
INSERT INTO `admin_access_log` VALUES ('46971', '172.25.142.201', 'POST', '2021-03-08 21:56:32', '1', '12', '永续合约交易对新增钱包 新增', '/swap-coin/init-wallet');
INSERT INTO `admin_access_log` VALUES ('46972', '172.25.142.201', 'POST', '2021-03-08 21:58:57', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46973', '172.25.142.201', 'POST', '2021-03-08 21:58:57', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46974', '172.25.142.201', 'POST', '2021-03-08 21:58:57', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46975', '172.25.142.201', 'POST', '2021-03-08 21:58:57', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46976', '172.25.142.201', 'POST', '2021-03-08 21:58:57', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46977', '172.25.142.201', 'POST', '2021-03-08 21:58:57', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46978', '172.25.142.201', 'POST', '2021-03-08 21:59:05', '1', '6', '全部权限树Menu', '/system/role/permission/all');
INSERT INTO `admin_access_log` VALUES ('46979', '172.25.142.201', 'POST', '2021-03-08 21:59:05', '1', '6', '所有角色SysRole', '/system/role/all');
INSERT INTO `admin_access_log` VALUES ('46980', '172.25.142.201', 'GET', '2021-03-08 21:59:07', '1', '6', '分页查找操作/访问日志AdminAccessLog', '/system/access-log/page-query/');
INSERT INTO `admin_access_log` VALUES ('46981', '172.25.142.201', 'GET', '2021-03-08 22:00:26', '1', '6', '分页查找操作/访问日志AdminAccessLog', '/system/access-log/page-query/');
INSERT INTO `admin_access_log` VALUES ('46982', '172.25.142.201', 'POST', '2021-03-08 22:11:22', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('46983', '172.25.142.201', 'POST', '2021-03-08 22:15:07', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('46984', '172.25.142.201', 'POST', '2021-03-08 22:15:07', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('46985', '172.25.142.201', 'POST', '2021-03-08 22:15:08', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46986', '172.25.142.201', 'POST', '2021-03-08 22:15:08', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('46987', '172.25.142.201', 'POST', '2021-03-08 22:15:08', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('46988', '172.25.142.201', 'POST', '2021-03-08 22:15:08', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('46989', '172.25.142.201', 'POST', '2021-03-08 22:26:58', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46990', '172.25.142.201', 'POST', '2021-03-08 22:36:05', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('46991', '172.25.142.201', 'POST', '2021-03-08 22:36:07', '1', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('46992', '172.25.142.201', 'POST', '2021-03-08 22:36:08', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('46993', '172.25.142.201', 'POST', '2021-03-08 22:36:09', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46994', '172.25.142.201', 'POST', '2021-03-08 22:36:12', '1', '4', '会员Member详情', '/member/detail');
INSERT INTO `admin_access_log` VALUES ('46995', '172.25.142.201', 'POST', '2021-03-08 22:36:12', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('46996', '172.25.142.201', 'POST', '2021-03-08 22:36:12', '1', '9', '查看锁仓活动列表', '/activity/activity/locked-activity');
INSERT INTO `admin_access_log` VALUES ('46997', '172.25.142.201', 'POST', '2021-03-08 22:36:13', '1', '3', '分页查找交易记录MemberTransaction', '/finance/member-transaction/page-query');
INSERT INTO `admin_access_log` VALUES ('46998', '172.25.142.201', 'POST', '2021-03-08 22:36:15', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('46999', '172.25.142.201', 'POST', '2021-03-08 22:41:11', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('47000', '172.25.142.201', 'POST', '2021-03-08 22:41:13', '1', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('47001', '172.25.142.201', 'POST', '2021-03-08 22:41:14', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('47002', '172.25.142.201', 'POST', '2021-03-08 22:41:15', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('47003', '172.25.142.201', 'POST', '2021-03-08 23:00:17', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('47004', '172.25.142.201', 'POST', '2021-03-08 23:00:34', '-1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('47005', '172.25.142.201', 'POST', '2021-03-08 23:00:35', '-1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('47006', '172.25.142.201', 'POST', '2021-03-08 23:00:38', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('47007', '172.25.142.201', 'POST', '2021-03-08 23:00:38', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('47008', '172.25.142.201', 'POST', '2021-03-08 23:00:42', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('47009', '172.25.142.201', 'POST', '2021-03-08 23:00:42', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('47010', '172.25.142.201', 'POST', '2021-03-08 23:00:42', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('47011', '172.25.142.201', 'POST', '2021-03-08 23:00:42', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('47012', '172.25.142.201', 'POST', '2021-03-08 23:01:02', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('47013', '172.25.142.201', 'POST', '2021-03-08 23:01:02', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('47014', '172.25.142.201', 'POST', '2021-03-08 23:01:05', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('47015', '172.25.142.201', 'POST', '2021-03-08 23:01:05', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('47016', '172.25.142.201', 'POST', '2021-03-08 23:01:05', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('47017', '172.25.142.201', 'POST', '2021-03-08 23:01:05', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('47018', '172.25.142.201', 'POST', '2021-03-08 23:01:57', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('47019', '172.25.142.201', 'POST', '2021-03-08 23:01:57', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('47020', '172.25.142.201', 'POST', '2021-03-08 23:34:14', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47021', '172.25.142.201', 'POST', '2021-03-08 23:55:22', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47022', '172.25.142.201', 'POST', '2021-03-09 00:02:43', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('47023', '172.25.142.201', 'POST', '2021-03-09 00:03:57', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('47024', '172.25.142.201', 'POST', '2021-03-09 00:04:06', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('47025', '172.25.142.201', 'POST', '2021-03-09 00:04:08', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('47026', '172.25.142.201', 'POST', '2021-03-09 00:04:09', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('47027', '172.25.142.201', 'POST', '2021-03-09 00:04:09', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('47028', '172.25.142.201', 'POST', '2021-03-09 00:04:09', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('47029', '172.25.142.201', 'POST', '2021-03-09 00:04:09', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('47030', '172.25.142.201', 'POST', '2021-03-09 00:04:10', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('47031', '172.25.142.201', 'POST', '2021-03-09 00:04:10', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('47032', '172.25.142.201', 'POST', '2021-03-09 00:04:10', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('47033', '172.25.142.201', 'POST', '2021-03-09 00:04:10', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('47034', '172.25.142.201', 'POST', '2021-03-09 00:04:17', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('47035', '172.25.142.201', 'POST', '2021-03-09 00:04:20', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47036', '172.25.142.201', 'POST', '2021-03-09 00:04:37', '1', '12', '永续合约 戳一下', '/swap-coin/poke');
INSERT INTO `admin_access_log` VALUES ('47037', '172.25.142.201', 'POST', '2021-03-09 00:05:05', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47038', '172.25.142.201', 'POST', '2021-03-09 00:07:21', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47039', '172.25.142.201', 'POST', '2021-03-09 00:07:28', '1', '12', '永续合约 戳一下', '/swap-coin/poke');
INSERT INTO `admin_access_log` VALUES ('47040', '172.25.142.201', 'POST', '2021-03-09 00:17:12', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47041', '172.25.142.201', 'POST', '2021-03-09 00:17:19', '1', '12', '永续合约 戳一下', '/swap-coin/poke');
INSERT INTO `admin_access_log` VALUES ('47042', '172.25.142.201', 'POST', '2021-03-09 00:19:13', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('47043', '172.25.142.201', 'POST', '2021-03-09 00:22:29', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47044', '172.25.142.201', 'POST', '2021-03-09 00:22:36', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47045', '172.25.142.201', 'POST', '2021-03-09 00:23:07', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('47046', '172.25.142.201', 'POST', '2021-03-09 00:28:06', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('47047', '172.25.142.201', 'POST', '2021-03-09 00:28:07', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('47048', '172.25.142.201', 'POST', '2021-03-09 00:28:15', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('47049', '172.25.142.201', 'POST', '2021-03-09 00:28:17', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('47050', '172.25.142.201', 'POST', '2021-03-09 00:28:19', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('47051', '172.25.142.201', 'POST', '2021-03-09 00:28:19', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('47052', '172.25.142.201', 'POST', '2021-03-09 00:28:19', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('47053', '172.25.142.201', 'POST', '2021-03-09 00:28:19', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('47054', '172.25.142.201', 'POST', '2021-03-09 00:28:19', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('47055', '172.25.142.201', 'POST', '2021-03-09 00:28:19', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('47056', '172.25.142.201', 'POST', '2021-03-09 00:28:19', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('47057', '172.25.142.201', 'POST', '2021-03-09 00:28:19', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('47058', '172.25.142.201', 'POST', '2021-03-09 00:29:58', '1', '0', '邀请排名条件查询', '/invite/management/rank');
INSERT INTO `admin_access_log` VALUES ('47059', '172.25.142.201', 'POST', '2021-03-09 00:30:01', '1', '0', '邀请管理多条件查询', '/invite/management/query');
INSERT INTO `admin_access_log` VALUES ('47060', '172.25.142.201', 'POST', '2021-03-09 00:30:03', '1', '0', '邀请排名条件查询', '/invite/management/rank');
INSERT INTO `admin_access_log` VALUES ('47061', '172.25.142.201', 'POST', '2021-03-09 00:30:09', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('47062', '172.25.142.201', 'POST', '2021-03-09 00:30:09', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('47063', '172.25.142.201', 'POST', '2021-03-09 00:30:31', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47064', '172.25.142.201', 'POST', '2021-03-09 00:30:37', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47065', '172.25.142.201', 'POST', '2021-03-09 00:30:37', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('47066', '172.25.142.201', 'POST', '2021-03-09 00:30:38', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('47067', '172.25.142.201', 'POST', '2021-03-09 00:30:38', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47068', '172.25.142.201', 'POST', '2021-03-09 00:30:39', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47069', '172.25.142.201', 'POST', '2021-03-09 00:30:39', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('47070', '172.25.142.201', 'POST', '2021-03-09 00:30:40', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('47071', '172.25.142.201', 'POST', '2021-03-09 00:30:40', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47072', '172.25.142.201', 'POST', '2021-03-09 00:30:41', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47073', '172.25.142.201', 'POST', '2021-03-09 00:33:31', '1', '5', '分页查找后台申诉Appeal', '/otc/appeal/page-query');
INSERT INTO `admin_access_log` VALUES ('47074', '172.25.142.201', 'GET', '2021-03-09 00:33:33', '1', '3', '分页查询提现记录WithdrawRecord', '/finance/withdraw-record/page-query');
INSERT INTO `admin_access_log` VALUES ('47075', '172.25.142.201', 'GET', '2021-03-09 00:34:14', '1', '3', '分页查询提现记录WithdrawRecord', '/finance/withdraw-record/page-query');
INSERT INTO `admin_access_log` VALUES ('47076', '172.25.142.201', 'GET', '2021-03-09 00:34:58', '1', '3', '分页查询提现记录WithdrawRecord', '/finance/withdraw-record/page-query');
INSERT INTO `admin_access_log` VALUES ('47077', '172.25.142.201', 'POST', '2021-03-09 01:25:28', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('47078', '172.25.142.201', 'POST', '2021-03-09 01:26:02', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47079', '172.25.142.201', 'POST', '2021-03-09 01:26:04', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('47080', '172.25.142.201', 'POST', '2021-03-09 01:26:04', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47081', '172.25.142.201', 'POST', '2021-03-09 01:26:05', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('47082', '172.25.142.201', 'POST', '2021-03-09 01:26:05', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47083', '172.25.142.201', 'POST', '2021-03-09 01:26:06', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47084', '172.25.142.201', 'POST', '2021-03-09 01:26:15', '1', '12', '永续合约 戳一下', '/swap-coin/poke');
INSERT INTO `admin_access_log` VALUES ('47085', '172.25.142.201', 'POST', '2021-03-09 01:28:54', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47086', '172.25.142.201', 'POST', '2021-03-09 01:29:08', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47087', '172.25.142.201', 'POST', '2021-03-09 01:29:27', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47088', '172.25.142.201', 'POST', '2021-03-09 01:29:56', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47089', '172.25.142.201', 'POST', '2021-03-09 01:30:04', '1', '12', '永续合约 戳一下', '/swap-coin/poke');
INSERT INTO `admin_access_log` VALUES ('47090', '172.25.142.201', 'POST', '2021-03-09 01:30:46', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('47091', '172.25.142.201', 'POST', '2021-03-09 01:31:57', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47092', '172.25.142.201', 'POST', '2021-03-09 01:32:03', '1', '12', '永续合约 戳一下', '/swap-coin/poke');
INSERT INTO `admin_access_log` VALUES ('47093', '172.25.142.201', 'POST', '2021-03-09 02:00:42', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('47094', '172.25.142.201', 'POST', '2021-03-09 02:00:42', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('47095', '172.25.142.201', 'POST', '2021-03-09 02:00:42', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('47096', '172.25.142.201', 'POST', '2021-03-09 02:00:42', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('47097', '172.25.142.201', 'POST', '2021-03-09 02:00:42', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('47098', '172.25.142.201', 'POST', '2021-03-09 02:00:42', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('47099', '172.25.142.201', 'POST', '2021-03-09 02:00:52', '1', '6', '判断后台登录输入手机验证码', '/system/employee/check');
INSERT INTO `admin_access_log` VALUES ('47100', '172.25.142.201', 'POST', '2021-03-09 02:00:55', '1', '6', '提交登录信息Admin', '/system/employee/sign/in');
INSERT INTO `admin_access_log` VALUES ('47101', '172.25.142.201', 'POST', '2021-03-09 02:00:57', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('47102', '172.25.142.201', 'POST', '2021-03-09 02:00:57', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('47103', '172.25.142.201', 'POST', '2021-03-09 02:00:57', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('47104', '172.25.142.201', 'POST', '2021-03-09 02:00:57', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('47105', '172.25.142.201', 'POST', '2021-03-09 02:00:57', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('47106', '172.25.142.201', 'POST', '2021-03-09 02:00:57', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('47107', '172.25.142.201', 'POST', '2021-03-09 02:00:59', '1', '8', '首页会员信息统计', '/index/statistics/member-statistics-info');
INSERT INTO `admin_access_log` VALUES ('47108', '172.25.142.201', 'POST', '2021-03-09 02:00:59', '1', '8', '首页会员信息统计图', '/index/statistics/member-statistics-chart');
INSERT INTO `admin_access_log` VALUES ('47109', '172.25.142.201', 'POST', '2021-03-09 02:00:59', '1', '8', '法币成交量统计图', '/index/statistics/otc-statistics-num-chart');
INSERT INTO `admin_access_log` VALUES ('47110', '172.25.142.201', 'POST', '2021-03-09 02:00:59', '1', '8', '法币成交信息统计', '/index/statistics/otc-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('47111', '172.25.142.201', 'POST', '2021-03-09 02:00:59', '1', '8', '币币成交 统计图 （按照交易对区分）', '/index/statistics/exchange-statistics-turnover-chart');
INSERT INTO `admin_access_log` VALUES ('47112', '172.25.142.201', 'POST', '2021-03-09 02:00:59', '1', '8', '首页币币成交量/成交额/手续费 总计', '/index/statistics/exchange-statistics-turnover');
INSERT INTO `admin_access_log` VALUES ('47113', '172.25.142.201', 'POST', '2021-03-09 02:01:03', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47114', '172.25.142.201', 'POST', '2021-03-09 02:01:15', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47115', '172.25.142.201', 'POST', '2021-03-09 02:01:24', '1', '6', '创建/修改权限', '/system/permission/merge');
INSERT INTO `admin_access_log` VALUES ('47116', '172.25.142.201', 'POST', '2021-03-09 02:01:24', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47117', '172.25.142.201', 'POST', '2021-03-09 02:01:40', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('47118', '172.25.142.201', 'POST', '2021-03-09 02:01:40', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47119', '172.25.142.201', 'POST', '2021-03-09 02:01:43', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47120', '172.25.142.201', 'POST', '2021-03-09 02:01:43', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('47121', '172.25.142.201', 'POST', '2021-03-09 02:01:44', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47122', '172.25.142.201', 'POST', '2021-03-09 02:01:44', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('47123', '172.25.142.201', 'POST', '2021-03-09 02:01:44', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47124', '172.25.142.201', 'POST', '2021-03-09 02:01:47', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47125', '172.25.142.201', 'POST', '2021-03-09 02:01:52', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47126', '172.25.142.201', 'POST', '2021-03-09 02:01:56', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47127', '172.25.142.201', 'POST', '2021-03-09 02:02:01', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47128', '172.25.142.201', 'POST', '2021-03-09 02:02:03', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47129', '172.25.142.201', 'POST', '2021-03-09 02:02:12', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47130', '172.25.142.201', 'POST', '2021-03-09 02:02:31', '1', '6', '创建/修改权限', '/system/permission/merge');
INSERT INTO `admin_access_log` VALUES ('47131', '172.25.142.201', 'POST', '2021-03-09 02:02:31', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47132', '172.25.142.201', 'POST', '2021-03-09 02:02:34', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47133', '172.25.142.201', 'POST', '2021-03-09 02:02:39', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47134', '172.25.142.201', 'POST', '2021-03-09 02:02:50', '1', '12', '永续合约 戳一下', '/swap-coin/poke');
INSERT INTO `admin_access_log` VALUES ('47135', '172.25.142.201', 'POST', '2021-03-09 02:03:31', '1', '12', '永续合约交易对 新增', '/swap-coin/alter');
INSERT INTO `admin_access_log` VALUES ('47136', '172.25.142.201', 'POST', '2021-03-09 02:03:31', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47137', '172.25.142.201', 'POST', '2021-03-09 02:03:34', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47138', '172.25.142.201', 'POST', '2021-03-09 02:03:40', '1', '12', '永续合约交易对 新增', '/swap-coin/alter');
INSERT INTO `admin_access_log` VALUES ('47139', '172.25.142.201', 'POST', '2021-03-09 02:03:40', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47140', '172.25.142.201', 'POST', '2021-03-09 02:03:42', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47141', '172.25.142.201', 'POST', '2021-03-09 02:04:01', '1', '12', '永续合约交易对 新增', '/swap-coin/alter');
INSERT INTO `admin_access_log` VALUES ('47142', '172.25.142.201', 'POST', '2021-03-09 02:04:01', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47143', '172.25.142.201', 'POST', '2021-03-09 02:04:08', '1', '12', '永续合约 戳一下', '/swap-coin/poke');
INSERT INTO `admin_access_log` VALUES ('47144', '172.25.142.201', 'POST', '2021-03-09 02:05:01', '1', '12', '永续合约 戳一下', '/swap-coin/poke');
INSERT INTO `admin_access_log` VALUES ('47145', '172.25.142.201', 'POST', '2021-03-09 02:05:38', '1', '12', '永续合约 戳一下', '/swap-coin/poke');
INSERT INTO `admin_access_log` VALUES ('47146', '172.25.142.201', 'POST', '2021-03-09 02:10:48', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47147', '172.25.142.201', 'POST', '2021-03-09 02:11:17', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('47148', '172.25.142.201', 'POST', '2021-03-09 02:11:34', '1', '0', '公告置顶', '/system/announcement/top');
INSERT INTO `admin_access_log` VALUES ('47149', '172.25.142.201', 'POST', '2021-03-09 02:11:36', '1', '0', '公告置顶', '/system/announcement/top');
INSERT INTO `admin_access_log` VALUES ('47150', '172.25.142.201', 'POST', '2021-03-09 02:12:47', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('47151', '172.25.142.201', 'POST', '2021-03-09 02:12:50', '1', '0', '系统广告详情', '/cms/system-advertise/detail');
INSERT INTO `admin_access_log` VALUES ('47152', '172.25.142.201', 'POST', '2021-03-09 02:13:15', '1', '12', '永续合约 戳一下', '/swap-coin/poke');
INSERT INTO `admin_access_log` VALUES ('47153', '172.25.142.201', 'POST', '2021-03-09 02:13:46', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('47154', '172.25.142.201', 'POST', '2021-03-09 02:13:51', '1', '0', '系统广告详情', '/cms/system-advertise/detail');
INSERT INTO `admin_access_log` VALUES ('47155', '172.25.142.201', 'POST', '2021-03-09 02:14:01', '-1', '1', '上传oss图片', '/common/upload/oss/image');
INSERT INTO `admin_access_log` VALUES ('47156', '172.25.142.201', 'POST', '2021-03-09 02:14:04', '1', '0', '更新系统广告', '/cms/system-advertise/update');
INSERT INTO `admin_access_log` VALUES ('47157', '172.25.142.201', 'POST', '2021-03-09 02:14:04', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('47158', '172.25.142.201', 'POST', '2021-03-09 02:15:00', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('47159', '172.25.142.201', 'POST', '2021-03-09 02:15:03', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('47160', '172.25.142.201', 'POST', '2021-03-09 02:15:05', '1', '0', '系统广告详情', '/cms/system-advertise/detail');
INSERT INTO `admin_access_log` VALUES ('47161', '172.25.142.201', 'POST', '2021-03-09 02:15:15', '1', '0', '批量删除系统广告', '/cms/system-advertise/deletes');
INSERT INTO `admin_access_log` VALUES ('47162', '172.25.142.201', 'POST', '2021-03-09 02:15:15', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('47163', '172.25.142.201', 'POST', '2021-03-09 02:15:18', '1', '0', '系统广告详情', '/cms/system-advertise/detail');
INSERT INTO `admin_access_log` VALUES ('47164', '172.25.142.201', 'POST', '2021-03-09 02:15:19', '1', '0', '批量删除系统广告', '/cms/system-advertise/deletes');
INSERT INTO `admin_access_log` VALUES ('47165', '172.25.142.201', 'POST', '2021-03-09 02:15:20', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('47166', '172.25.142.201', 'POST', '2021-03-09 02:15:20', '1', '0', '系统广告详情', '/cms/system-advertise/detail');
INSERT INTO `admin_access_log` VALUES ('47167', '172.25.142.201', 'POST', '2021-03-09 02:15:24', '1', '0', '系统广告详情', '/cms/system-advertise/detail');
INSERT INTO `admin_access_log` VALUES ('47168', '172.25.142.201', 'POST', '2021-03-09 02:15:28', '1', '0', '批量删除系统广告', '/cms/system-advertise/deletes');
INSERT INTO `admin_access_log` VALUES ('47169', '172.25.142.201', 'POST', '2021-03-09 02:15:31', '1', '0', '系统广告详情', '/cms/system-advertise/detail');
INSERT INTO `admin_access_log` VALUES ('47170', '172.25.142.201', 'POST', '2021-03-09 02:15:32', '1', '0', '系统广告详情', '/cms/system-advertise/detail');
INSERT INTO `admin_access_log` VALUES ('47171', '172.25.142.201', 'POST', '2021-03-09 02:15:34', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('47172', '172.25.142.201', 'POST', '2021-03-09 02:15:36', '1', '0', '分页查询系统帮助', '/cms/system-help/page-query');
INSERT INTO `admin_access_log` VALUES ('47173', '172.25.142.201', 'POST', '2021-03-09 02:15:38', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('47174', '172.25.142.201', 'POST', '2021-03-09 02:15:39', '1', '0', '分页查询系统帮助', '/cms/system-help/page-query');
INSERT INTO `admin_access_log` VALUES ('47175', '172.25.142.201', 'POST', '2021-03-09 02:15:40', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('47176', '172.25.142.201', 'POST', '2021-03-09 02:15:42', '1', '0', '分页查询系统帮助', '/cms/system-help/page-query');
INSERT INTO `admin_access_log` VALUES ('47177', '172.25.142.201', 'POST', '2021-03-09 02:15:43', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('47178', '172.25.142.201', 'POST', '2021-03-09 02:16:20', '-1', '1', '上传oss图片', '/common/upload/oss/image');
INSERT INTO `admin_access_log` VALUES ('47179', '172.25.142.201', 'POST', '2021-03-09 02:16:23', '1', '0', '创建系统广告', '/cms/system-advertise/create');
INSERT INTO `admin_access_log` VALUES ('47180', '172.25.142.201', 'POST', '2021-03-09 02:16:23', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('47181', '172.25.142.201', 'POST', '2021-03-09 02:17:25', '1', '0', '分页查询系统帮助', '/cms/system-help/page-query');
INSERT INTO `admin_access_log` VALUES ('47182', '172.25.142.201', 'POST', '2021-03-09 02:17:44', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47183', '172.25.142.201', 'POST', '2021-03-09 02:17:44', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('47184', '172.25.142.201', 'POST', '2021-03-09 02:17:45', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47185', '172.25.142.201', 'POST', '2021-03-09 02:17:45', '1', '12', '预测合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('47186', '172.25.142.201', 'POST', '2021-03-09 02:17:46', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47187', '172.25.142.201', 'POST', '2021-03-09 02:17:50', '1', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47188', '172.25.142.201', 'POST', '2021-03-09 02:17:52', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47189', '172.25.142.201', 'POST', '2021-03-09 02:18:15', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('47190', '172.25.142.201', 'POST', '2021-03-09 02:18:17', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('47191', '172.25.142.201', 'POST', '2021-03-09 02:18:18', '1', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('47192', '172.25.142.201', 'POST', '2021-03-09 02:18:20', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('47193', '172.25.142.201', 'POST', '2021-03-09 02:18:44', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('47194', '172.25.142.201', 'POST', '2021-03-09 02:18:45', '1', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('47195', '172.25.142.201', 'POST', '2021-03-09 02:18:46', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('47196', '172.25.142.201', 'POST', '2021-03-09 02:19:17', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47197', '172.25.142.201', 'POST', '2021-03-09 02:19:21', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('47198', '172.25.142.201', 'POST', '2021-03-09 02:19:21', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('47199', '172.25.142.201', 'POST', '2021-03-09 02:20:36', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('47200', '172.25.142.201', 'POST', '2021-03-09 02:20:38', '1', '0', '系统广告详情', '/cms/system-advertise/detail');
INSERT INTO `admin_access_log` VALUES ('47201', '172.25.142.201', 'POST', '2021-03-09 02:20:48', '-1', '1', '上传oss图片', '/common/upload/oss/image');
INSERT INTO `admin_access_log` VALUES ('47202', '172.25.142.201', 'POST', '2021-03-09 02:20:50', '1', '0', '更新系统广告', '/cms/system-advertise/update');
INSERT INTO `admin_access_log` VALUES ('47203', '172.25.142.201', 'POST', '2021-03-09 02:20:50', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('47204', '172.25.142.201', 'POST', '2021-03-09 02:28:29', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('47205', '172.25.142.201', 'POST', '2021-03-09 02:29:13', '-1', '1', '上传oss图片', '/common/upload/oss/image');
INSERT INTO `admin_access_log` VALUES ('47206', '172.25.142.201', 'POST', '2021-03-09 02:29:15', '1', '0', '创建系统广告', '/cms/system-advertise/create');
INSERT INTO `admin_access_log` VALUES ('47207', '172.25.142.201', 'POST', '2021-03-09 02:29:15', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('47208', '172.25.142.201', 'POST', '2021-03-09 02:29:19', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('47209', '172.25.142.201', 'POST', '2021-03-09 02:30:24', '1', '6', '分页查找后台货币Coin', '/system/coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47210', '172.25.142.201', 'POST', '2021-03-09 02:30:28', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47211', '172.25.142.201', 'POST', '2021-03-09 02:30:31', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('47212', '172.25.142.201', 'POST', '2021-03-09 02:30:32', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47213', '172.25.142.201', 'POST', '2021-03-09 02:30:35', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('47214', '172.25.142.201', 'POST', '2021-03-09 02:30:35', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('47215', '172.25.142.201', 'POST', '2021-03-09 02:30:43', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47216', '172.25.142.201', 'POST', '2021-03-09 02:30:45', '1', '12', '预测合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47217', '172.25.142.201', 'POST', '2021-03-09 02:31:49', '1', '12', '永续合约 戳一下', '/swap-coin/poke');
INSERT INTO `admin_access_log` VALUES ('47218', '172.25.142.201', 'POST', '2021-03-09 02:33:15', '1', '12', '永续合约 戳一下', '/swap-coin/poke');
INSERT INTO `admin_access_log` VALUES ('47219', '172.25.142.201', 'POST', '2021-03-13 22:59:03', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47220', '172.25.142.201', 'POST', '2021-03-13 22:59:20', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('47221', '172.25.142.201', 'POST', '2021-03-13 22:59:45', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('47222', '172.25.142.201', 'POST', '2021-03-13 22:59:49', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('47223', '172.25.142.201', 'POST', '2021-03-13 23:00:31', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('47224', '172.25.142.201', 'POST', '2021-03-13 23:00:44', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('47225', '172.25.142.201', 'POST', '2021-03-13 23:00:53', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('47226', '172.25.142.201', 'POST', '2021-03-13 23:01:05', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('47227', '172.25.142.201', 'POST', '2021-03-13 23:01:08', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('47228', '172.25.142.201', 'POST', '2021-03-13 23:01:10', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47229', '172.25.142.201', 'POST', '2021-03-13 23:01:24', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47230', '172.25.142.201', 'POST', '2021-03-13 23:01:29', '1', '12', '期权合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47231', '172.25.142.201', 'POST', '2021-03-13 23:02:02', '1', '2', '查看交易对交易盘面详情', '/exchange/exchange-coin/exchange-overview');
INSERT INTO `admin_access_log` VALUES ('47232', '172.25.142.201', 'POST', '2021-03-13 23:02:09', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('47233', '172.25.142.201', 'POST', '2021-03-13 23:02:14', '1', '2', '获取所有控盘交易对列表', '/exchange/exchange-coin/custom-coin-list');
INSERT INTO `admin_access_log` VALUES ('47234', '172.25.142.201', 'POST', '2021-03-13 23:02:15', '1', '2', '获取行情趋势线列表', '/exchange/exchange-coin/robot-kline-list');
INSERT INTO `admin_access_log` VALUES ('47235', '172.25.142.201', 'POST', '2021-03-13 23:02:23', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47236', '172.25.142.201', 'POST', '2021-03-13 23:02:26', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('47237', '172.25.142.201', 'POST', '2021-03-13 23:02:31', '1', '2', '修改交易对机器人参数', '/exchange/exchange-coin/create-robot-config');
INSERT INTO `admin_access_log` VALUES ('47238', '172.25.142.201', 'POST', '2021-03-13 23:03:24', '1', '12', '永续合约 戳一下', '/swap-coin/poke');
INSERT INTO `admin_access_log` VALUES ('47239', '172.25.142.201', 'POST', '2021-03-13 23:03:54', '1', '12', '永续合约 戳一下', '/swap-coin/poke');
INSERT INTO `admin_access_log` VALUES ('47240', '172.25.142.201', 'POST', '2021-03-13 23:04:30', '1', '0', '分页查询系统帮助', '/cms/system-help/page-query');
INSERT INTO `admin_access_log` VALUES ('47241', '172.25.142.201', 'POST', '2021-03-13 23:04:48', '1', '0', '系统帮助详情', '/cms/system-help/detail');
INSERT INTO `admin_access_log` VALUES ('47242', '172.25.142.201', 'POST', '2021-03-13 23:04:48', '1', '0', '系统帮助详情', '/cms/system-help/detail');
INSERT INTO `admin_access_log` VALUES ('47243', '172.25.142.201', 'POST', '2021-03-13 23:04:54', '1', '12', '永续合约 戳一下', '/swap-coin/poke');
INSERT INTO `admin_access_log` VALUES ('47244', '172.25.142.201', 'POST', '2021-03-13 23:05:14', '1', '0', '分页查询系统广告', '/cms/system-advertise/page-query');
INSERT INTO `admin_access_log` VALUES ('47245', '172.25.142.201', 'POST', '2021-03-13 23:05:23', '1', '0', '分页查询系统帮助', '/cms/system-help/page-query');
INSERT INTO `admin_access_log` VALUES ('47246', '172.25.142.201', 'POST', '2021-03-13 23:05:38', '1', '0', '分页查询系统帮助', '/cms/system-help/page-query');
INSERT INTO `admin_access_log` VALUES ('47247', '172.25.142.201', 'POST', '2021-03-13 23:05:41', '1', '0', '分页查询系统帮助', '/cms/system-help/page-query');
INSERT INTO `admin_access_log` VALUES ('47248', '172.25.142.201', 'POST', '2021-03-13 23:05:44', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47249', '172.25.142.201', 'POST', '2021-03-13 23:05:44', '1', '0', '系统帮助详情', '/cms/system-help/detail');
INSERT INTO `admin_access_log` VALUES ('47250', '172.25.142.201', 'POST', '2021-03-13 23:05:44', '1', '0', '系统帮助详情', '/cms/system-help/detail');
INSERT INTO `admin_access_log` VALUES ('47251', '172.25.142.201', 'POST', '2021-03-13 23:08:09', '1', '0', '公告置顶', '/system/announcement/top');
INSERT INTO `admin_access_log` VALUES ('47252', '172.25.142.201', 'POST', '2021-03-13 23:08:12', '1', '0', '公告取消置顶', '/system/announcement/down');
INSERT INTO `admin_access_log` VALUES ('47253', '172.25.142.201', 'POST', '2021-03-13 23:08:14', '1', '0', '公告取消置顶', '/system/announcement/down');
INSERT INTO `admin_access_log` VALUES ('47254', '172.25.142.201', 'POST', '2021-03-13 23:08:15', '1', '0', '公告置顶', '/system/announcement/top');
INSERT INTO `admin_access_log` VALUES ('47255', '172.25.142.201', 'POST', '2021-03-13 23:08:24', '1', '0', '公告置顶', '/system/announcement/top');
INSERT INTO `admin_access_log` VALUES ('47256', '172.25.142.201', 'POST', '2021-03-13 23:08:40', '1', '0', '公告取消置顶', '/system/announcement/down');
INSERT INTO `admin_access_log` VALUES ('47257', '172.25.142.201', 'POST', '2021-03-13 23:08:41', '1', '0', '公告取消置顶', '/system/announcement/down');
INSERT INTO `admin_access_log` VALUES ('47258', '172.25.142.201', 'POST', '2021-03-13 23:08:41', '1', '0', '公告取消置顶', '/system/announcement/down');
INSERT INTO `admin_access_log` VALUES ('47259', '172.25.142.201', 'POST', '2021-03-13 23:08:41', '1', '0', '公告取消置顶', '/system/announcement/down');
INSERT INTO `admin_access_log` VALUES ('47260', '172.25.142.201', 'POST', '2021-03-13 23:08:42', '1', '0', '公告取消置顶', '/system/announcement/down');
INSERT INTO `admin_access_log` VALUES ('47261', '172.25.142.201', 'POST', '2021-03-13 23:08:42', '1', '0', '公告取消置顶', '/system/announcement/down');
INSERT INTO `admin_access_log` VALUES ('47262', '172.25.142.201', 'POST', '2021-03-13 23:08:42', '1', '0', '公告取消置顶', '/system/announcement/down');
INSERT INTO `admin_access_log` VALUES ('47263', '172.25.142.201', 'POST', '2021-03-13 23:08:52', '1', '0', '公告置顶', '/system/announcement/top');
INSERT INTO `admin_access_log` VALUES ('47264', '172.25.142.201', 'POST', '2021-03-13 23:08:59', '1', '0', '公告置顶', '/system/announcement/top');
INSERT INTO `admin_access_log` VALUES ('47265', '172.25.142.201', 'POST', '2021-03-13 23:09:05', '1', '0', '公告置顶', '/system/announcement/top');
INSERT INTO `admin_access_log` VALUES ('47266', '172.25.142.201', 'POST', '2021-03-13 23:10:21', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('47267', '172.25.142.201', 'POST', '2021-03-13 23:10:28', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47268', '172.25.142.201', 'POST', '2021-03-13 23:10:30', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('47269', '172.25.142.201', 'POST', '2021-03-13 23:12:40', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('47270', '172.25.142.201', 'POST', '2021-03-13 23:14:15', '1', '12', '期权合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47271', '172.25.142.201', 'POST', '2021-03-13 23:15:08', '1', '12', '期权合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47272', '172.25.142.201', 'POST', '2021-03-13 23:15:08', '1', '12', '期权合约订单 列表', '/swap/order/page-query');
INSERT INTO `admin_access_log` VALUES ('47273', '172.25.142.201', 'POST', '2021-03-13 23:15:17', '1', '12', '永续合约用户持仓管理 列表', '/swap/position/page-query');
INSERT INTO `admin_access_log` VALUES ('47274', '172.25.142.201', 'POST', '2021-03-13 23:15:17', '1', '12', '期权合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47275', '172.25.142.201', 'POST', '2021-03-13 23:15:20', '1', '12', '期权合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47276', '172.25.142.201', 'POST', '2021-03-13 23:15:25', '1', '12', '期权合约交易对 列表', '/swap-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47277', '172.25.142.201', 'POST', '2021-03-13 23:15:30', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47278', '172.25.142.201', 'POST', '2021-03-13 23:15:33', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47279', '172.25.142.201', 'POST', '2021-03-13 23:15:33', '1', '12', '期权合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('47280', '172.25.142.201', 'POST', '2021-03-13 23:15:38', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47281', '172.25.142.201', 'POST', '2021-03-13 23:15:42', '1', '12', '期权合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('47282', '172.25.142.201', 'POST', '2021-03-13 23:15:42', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47283', '172.25.142.201', 'POST', '2021-03-13 23:15:44', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47284', '172.25.142.201', 'POST', '2021-03-13 23:15:50', '1', '2', '分页查找exchangeOrder', '/exchange/exchange-order/page-query');
INSERT INTO `admin_access_log` VALUES ('47285', '172.25.142.201', 'POST', '2021-03-13 23:16:09', '1', '2', '分页查找币币交易手续费exchangeCoin', '/exchange/exchange-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47286', '172.25.142.201', 'POST', '2021-03-13 23:16:13', '1', '2', '查看交易对机器人参数', '/exchange/exchange-coin/robot-config');
INSERT INTO `admin_access_log` VALUES ('47287', '172.25.142.201', 'POST', '2021-03-13 23:16:19', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('47288', '172.25.142.201', 'POST', '2021-03-13 23:16:20', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('47289', '172.25.142.201', 'POST', '2021-03-13 23:16:23', '1', '4', '余额管理', '/member/member-wallet/balance');
INSERT INTO `admin_access_log` VALUES ('47290', '172.25.142.201', 'POST', '2021-03-13 23:16:44', '1', '12', '期权合约订单 列表', '/option/order/page-query');
INSERT INTO `admin_access_log` VALUES ('47291', '172.25.142.201', 'POST', '2021-03-13 23:16:44', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47292', '172.25.142.201', 'POST', '2021-03-13 23:16:48', '1', '4', '分页查找会员MemberApplication认证信息', '/member/member-application/page-query');
INSERT INTO `admin_access_log` VALUES ('47293', '172.25.142.201', 'POST', '2021-03-13 23:16:50', '1', '4', '分页查找会员Member', '/member/page-query');
INSERT INTO `admin_access_log` VALUES ('47294', '172.25.142.201', 'POST', '2021-03-13 23:16:55', '1', '6', '查找所有coin的name和unit', '/system/coin/all-name-and-unit');
INSERT INTO `admin_access_log` VALUES ('47295', '172.25.142.201', 'POST', '2021-03-13 23:17:01', '1', '12', '设置期权合约', '/option/order/setOptionOrder');
INSERT INTO `admin_access_log` VALUES ('47296', '172.25.142.201', 'POST', '2021-03-13 23:17:15', '1', '9', '分页查看活动列表Activity', '/activity/activity/page-query');
INSERT INTO `admin_access_log` VALUES ('47297', '172.25.142.201', 'POST', '2021-03-13 23:17:24', '1', '12', '设置期权合约', '/option/order/setOptionOrder');
INSERT INTO `admin_access_log` VALUES ('47298', '172.25.142.201', 'POST', '2021-03-13 23:17:26', '1', '12', '期权合约订单 列表', '/option/order/page-query');
INSERT INTO `admin_access_log` VALUES ('47299', '172.25.142.201', 'POST', '2021-03-13 23:17:26', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47300', '172.25.142.201', 'POST', '2021-03-13 23:17:36', '1', '12', '设置期权合约', '/option/order/setOptionOrder');
INSERT INTO `admin_access_log` VALUES ('47301', '172.25.142.201', 'POST', '2021-03-13 23:17:38', '1', '12', '期权合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('47302', '172.25.142.201', 'POST', '2021-03-13 23:17:38', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47303', '172.25.142.201', 'POST', '2021-03-13 23:17:49', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47304', '172.25.142.201', 'POST', '2021-03-13 23:18:37', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47305', '172.25.142.201', 'POST', '2021-03-13 23:18:37', '1', '12', '期权合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('47306', '172.25.142.201', 'POST', '2021-03-13 23:18:38', '1', '12', '期权合约订单 列表', '/option/order/page-query');
INSERT INTO `admin_access_log` VALUES ('47307', '172.25.142.201', 'POST', '2021-03-13 23:18:38', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47308', '172.25.142.201', 'POST', '2021-03-13 23:18:39', '1', '12', '期权合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('47309', '172.25.142.201', 'POST', '2021-03-13 23:18:39', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47310', '172.25.142.201', 'POST', '2021-03-13 23:18:41', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47311', '172.25.142.201', 'POST', '2021-03-13 23:18:43', '1', '12', '期权合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('47312', '172.25.142.201', 'POST', '2021-03-13 23:18:43', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47313', '172.25.142.201', 'POST', '2021-03-13 23:19:02', '1', '12', '期权合约 修改预设价格', '/option/alter');
INSERT INTO `admin_access_log` VALUES ('47314', '172.25.142.201', 'POST', '2021-03-13 23:19:47', '1', '9', '修改活动信息Activity', '/activity/activity/modify');
INSERT INTO `admin_access_log` VALUES ('47315', '172.25.142.201', 'POST', '2021-03-13 23:19:55', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47316', '172.25.142.201', 'POST', '2021-03-13 23:19:55', '1', '9', '修改活动信息Activity', '/activity/activity/modify');
INSERT INTO `admin_access_log` VALUES ('47317', '172.25.142.201', 'POST', '2021-03-13 23:20:06', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47318', '172.25.142.201', 'POST', '2021-03-13 23:20:42', '1', '6', '创建/修改权限', '/system/permission/merge');
INSERT INTO `admin_access_log` VALUES ('47319', '172.25.142.201', 'POST', '2021-03-13 23:20:43', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47320', '172.25.142.201', 'POST', '2021-03-13 23:20:55', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47321', '172.25.142.201', 'POST', '2021-03-13 23:21:03', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47322', '172.25.142.201', 'POST', '2021-03-13 23:21:08', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47323', '172.25.142.201', 'POST', '2021-03-13 23:21:17', '1', '6', '创建/修改权限', '/system/permission/merge');
INSERT INTO `admin_access_log` VALUES ('47324', '172.25.142.201', 'POST', '2021-03-13 23:21:17', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47325', '172.25.142.201', 'POST', '2021-03-13 23:21:22', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47326', '172.25.142.201', 'POST', '2021-03-13 23:21:25', '1', '6', '创建/修改权限', '/system/permission/merge');
INSERT INTO `admin_access_log` VALUES ('47327', '172.25.142.201', 'POST', '2021-03-13 23:21:26', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47328', '172.25.142.201', 'POST', '2021-03-13 23:21:28', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47329', '172.25.142.201', 'POST', '2021-03-13 23:21:44', '1', '6', '创建/修改权限', '/system/permission/merge');
INSERT INTO `admin_access_log` VALUES ('47330', '172.25.142.201', 'POST', '2021-03-13 23:21:44', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47331', '172.25.142.201', 'POST', '2021-03-13 23:21:53', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47332', '172.25.142.201', 'POST', '2021-03-13 23:22:04', '1', '6', '创建/修改权限', '/system/permission/merge');
INSERT INTO `admin_access_log` VALUES ('47333', '172.25.142.201', 'POST', '2021-03-13 23:22:04', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47334', '172.25.142.201', 'POST', '2021-03-13 23:22:10', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47335', '172.25.142.201', 'POST', '2021-03-13 23:22:20', '1', '6', '创建/修改权限', '/system/permission/merge');
INSERT INTO `admin_access_log` VALUES ('47336', '172.25.142.201', 'POST', '2021-03-13 23:22:20', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47337', '172.25.142.201', 'POST', '2021-03-13 23:22:25', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47338', '172.25.142.201', 'POST', '2021-03-13 23:22:43', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47339', '172.25.142.201', 'POST', '2021-03-13 23:22:58', '1', '6', '创建/修改权限', '/system/permission/merge');
INSERT INTO `admin_access_log` VALUES ('47340', '172.25.142.201', 'POST', '2021-03-13 23:22:58', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47341', '172.25.142.201', 'POST', '2021-03-13 23:24:32', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47342', '172.25.142.201', 'POST', '2021-03-13 23:24:46', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47343', '172.25.142.201', 'POST', '2021-03-13 23:24:58', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47344', '172.25.142.201', 'POST', '2021-03-13 23:25:25', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47345', '172.25.142.201', 'POST', '2021-03-13 23:25:49', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47346', '172.25.142.201', 'POST', '2021-03-13 23:25:56', '1', '6', '分页查询权限', '/system/permission/page-query');
INSERT INTO `admin_access_log` VALUES ('47347', '172.25.142.201', 'POST', '2021-03-13 23:27:36', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47348', '172.25.142.201', 'POST', '2021-03-13 23:27:37', '1', '12', '期权合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('47349', '172.25.142.201', 'POST', '2021-03-13 23:27:37', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47350', '172.25.142.201', 'POST', '2021-03-13 23:27:45', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47351', '172.25.142.201', 'POST', '2021-03-13 23:27:48', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47352', '172.25.142.201', 'POST', '2021-03-13 23:27:48', '1', '12', '期权合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('47353', '172.25.142.201', 'POST', '2021-03-13 23:27:50', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47354', '172.25.142.201', 'POST', '2021-03-13 23:27:50', '1', '12', '期权合约订单 列表', '/option/order/page-query');
INSERT INTO `admin_access_log` VALUES ('47355', '172.25.142.201', 'POST', '2021-03-13 23:27:58', '1', '12', '设置期权合约', '/option/order/setOptionOrder');
INSERT INTO `admin_access_log` VALUES ('47356', '172.25.142.201', 'POST', '2021-03-13 23:28:07', '1', '12', '期权合约交易对 列表', '/option-coin/page-query');
INSERT INTO `admin_access_log` VALUES ('47357', '172.25.142.201', 'POST', '2021-03-13 23:28:07', '1', '12', '期权合约交易对 列表', '/option/page-query');
INSERT INTO `admin_access_log` VALUES ('47358', '172.25.142.201', 'POST', '2021-03-13 23:28:16', '1', '12', '期权合约 修改预设价格', '/option/alter');

-- ----------------------------
-- Table structure for admin_permission
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission`;
CREATE TABLE `admin_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_permission
-- ----------------------------
INSERT INTO `admin_permission` VALUES ('2', '角色管理', 'system:role:all', '8', '0', '角色管理');
INSERT INTO `admin_permission` VALUES ('3', '用户管理', 'system:employee:page-query', '8', '0', '用户管理');
INSERT INTO `admin_permission` VALUES ('4', '部门管理', 'system:department:all', '8', '0', '部门管理');
INSERT INTO `admin_permission` VALUES ('5', '站点管理', 'system:website-information:find-one', '8', '0', '站点管理');
INSERT INTO `admin_permission` VALUES ('6', '菜单管理', 'system:role:permission:all', '8', '0', '菜单管理');
INSERT INTO `admin_permission` VALUES ('7', '系统日志', 'system:access-log:page-query', '8', '0', '系统日志');
INSERT INTO `admin_permission` VALUES ('8', '系统管理', 'system-------', '0', '13', '系统管理');
INSERT INTO `admin_permission` VALUES ('9', '广告管理', 'cms:system-advertise:page-query', '18', '0', '广告管理');
INSERT INTO `admin_permission` VALUES ('10', '帮助管理', 'cms:system-help:page-query', '18', '0', '帮助管理');
INSERT INTO `admin_permission` VALUES ('11', '会员管理', 'member--------', '0', '1', '会员管理');
INSERT INTO `admin_permission` VALUES ('12', '会员管理', 'member:page-query', '11', '0', '会员管理');
INSERT INTO `admin_permission` VALUES ('13', '实名管理', 'member:member-application:page-query', '11', '0', '实名管理');
INSERT INTO `admin_permission` VALUES ('14', '会员监控', 'member--------', '11', '0', '会员监控');
INSERT INTO `admin_permission` VALUES ('18', '内容管理', 'cms-------', '0', '10', '内容管理');
INSERT INTO `admin_permission` VALUES ('19', '交易明细', 'finance:member-transaction:page-query', '93', '0', '交易记录');
INSERT INTO `admin_permission` VALUES ('20', '提现管理', 'finance:withdraw-record:page-query', '93', '0', '提现管理');
INSERT INTO `admin_permission` VALUES ('23', '币种管理', 'system:coin:page-query', '8', '0', '币币币种管理');
INSERT INTO `admin_permission` VALUES ('26', '公告管理', 'cms:notice', '18', '0', '公告管理');
INSERT INTO `admin_permission` VALUES ('27', '创建修改角色', 'system:role:merge', '8', '0', '创建修改角色');
INSERT INTO `admin_permission` VALUES ('28', '更改角色权限', 'system:role:permission:update', '8', '0', '更改角色权限');
INSERT INTO `admin_permission` VALUES ('29', '角色拥有权限', 'system:role:permission', '8', '0', '角色拥有权限');
INSERT INTO `admin_permission` VALUES ('30', '全部权限树', 'system:role:permission:all', '8', '0', '全部权限树');
INSERT INTO `admin_permission` VALUES ('31', '创建更改后台用户', 'system:employee:merge', '8', '0', '创建更改后台用户');
INSERT INTO `admin_permission` VALUES ('32', '后台用户详情', 'system:employee:detail', '8', '0', '后台用户详情');
INSERT INTO `admin_permission` VALUES ('33', '站点信息修改', 'system:website-information:alter', '8', '0', '站点信息修改');
INSERT INTO `admin_permission` VALUES ('34', '系统日志详情', 'system:access-log:detail', '8', '0', '系统日志详情');
INSERT INTO `admin_permission` VALUES ('35', '创建系统广告', 'cms:system-advertise:create', '18', '0', '创建系统广告');
INSERT INTO `admin_permission` VALUES ('36', '所有系统广告', 'cms:system-advertise:all', '18', '0', '所有系统广告');
INSERT INTO `admin_permission` VALUES ('37', '系统广告详情', 'cms:system-advertise:detail', '18', '0', '系统广告详情');
INSERT INTO `admin_permission` VALUES ('38', '更新系统广告', 'cms:system-advertise:update', '18', '0', '更新系统广告');
INSERT INTO `admin_permission` VALUES ('39', '删除系统广告', 'cms:system-advertise:deletes', '18', '0', '删除系统广告');
INSERT INTO `admin_permission` VALUES ('40', '导出广告excel', 'cms:system-advertise:out-excel', '18', '0', '导出广告excel');
INSERT INTO `admin_permission` VALUES ('41', '创建系统帮助', 'cms:system-help:create', '18', '0', '创建系统帮助');
INSERT INTO `admin_permission` VALUES ('42', '系统帮助详情', 'cms:system-help:detail', '18', '0', '系统帮助详情');
INSERT INTO `admin_permission` VALUES ('43', '更新系统帮助', 'cms:system-help:update', '18', '0', '更新系统帮助');
INSERT INTO `admin_permission` VALUES ('44', '删除系统帮助', 'cms:system-help:deletes', '18', '0', '删除系统帮助');
INSERT INTO `admin_permission` VALUES ('45', '导出系统帮助excel', 'cms:system-help:out-excel', '18', '0', '导出系统帮助excel');
INSERT INTO `admin_permission` VALUES ('46', '会员详情', 'member:detail', '11', '0', '会员详情');
INSERT INTO `admin_permission` VALUES ('47', '会员删除', 'member:delete', '11', '0', '会员删除');
INSERT INTO `admin_permission` VALUES ('48', '会员更新', 'member:update', '11', '0', '会员更新');
INSERT INTO `admin_permission` VALUES ('49', '认证商家审核', 'member:audit-business', '66', '0', '认证商家审核');
INSERT INTO `admin_permission` VALUES ('50', '导出会员excel', 'member:out-excel', '11', '0', '导出会员excel');
INSERT INTO `admin_permission` VALUES ('51', '实名信息详情', 'member:member-application:detail', '11', '0', '实名信息详情');
INSERT INTO `admin_permission` VALUES ('52', '实名审核通过', 'member:member-application:pass', '11', '0', '实名审核通过');
INSERT INTO `admin_permission` VALUES ('53', '实名审核不通过', 'member:member-application:no-pass', '11', '0', '实名审核不通过');
INSERT INTO `admin_permission` VALUES ('54', '交易记录详情', 'finance:member-transaction:detail', '93', '0', '交易记录详情');
INSERT INTO `admin_permission` VALUES ('55', '导出交易记录excel', 'finance:member-transaction:out-excel', '93', '0', '导出交易记录excel');
INSERT INTO `admin_permission` VALUES ('56', '提现记录详情', 'finance:withdraw-record:detail', '93', '0', '提现记录详情');
INSERT INTO `admin_permission` VALUES ('57', '提现记录一键审核通过', 'finance:withdraw-record:audit-pass', '93', '0', '提现记录一键审核通过');
INSERT INTO `admin_permission` VALUES ('58', '提现记录一键审核不通过', 'finance:withdraw-record:audit-no-pass', '93', '0', '提现记录一键审核不通过');
INSERT INTO `admin_permission` VALUES ('59', '批量打款', 'finance:withdraw-record:remittance', '93', '0', '批量打款');
INSERT INTO `admin_permission` VALUES ('60', '币币管理', 'exchange-------', '0', '3', '币币管理父菜单');
INSERT INTO `admin_permission` VALUES ('61', '币币交易订单详情', 'exchange:exchange-order:detail', '60', '0', '币币交易订单详情');
INSERT INTO `admin_permission` VALUES ('62', '订单管理', 'exchange:exchange-order:page-query', '60', '0', '币币交易订单');
INSERT INTO `admin_permission` VALUES ('63', '导出币币交易订单excel', 'exchange:exchange-order:out-excel', '60', '0', '导出币币交易订单excel');
INSERT INTO `admin_permission` VALUES ('64', '币种管理', 'exchange:exchange-coin:page-query', '60', '0', '币种管理');
INSERT INTO `admin_permission` VALUES ('65', '币币交易对详情', 'exchange:exchange-coin:detail', '60', '0', '币币交易对详情');
INSERT INTO `admin_permission` VALUES ('66', 'OTC管理', 'otc-------', '0', '5', '法币OTC');
INSERT INTO `admin_permission` VALUES ('67', '后台广告详情', 'otc:advertise:detail', '66', '0', '后台广告详情');
INSERT INTO `admin_permission` VALUES ('68', '关闭后台广告', 'otc:advertise:turnoff', '66', '0', '关闭后台广告');
INSERT INTO `admin_permission` VALUES ('69', '后台广告状态修改', 'otc:advertise:alter-status', '66', '0', '后台广告状态修改');
INSERT INTO `admin_permission` VALUES ('70', '后台广告', 'otc:advertise:page-query', '66', '0', '后台广告');
INSERT INTO `admin_permission` VALUES ('71', '后台广告导出excel', 'otc:advertise:out-excel', '66', '0', '后台广告导出excel');
INSERT INTO `admin_permission` VALUES ('72', '后台申诉', 'otc:appeal:page-query', '66', '0', '后台申诉');
INSERT INTO `admin_permission` VALUES ('73', '申诉详情', 'otc:appeal:detail', '66', '0', '申诉详情');
INSERT INTO `admin_permission` VALUES ('74', '申诉处理', 'otc:appeal:audit', '66', '0', '申诉处理');
INSERT INTO `admin_permission` VALUES ('75', '法币交易订单详情', 'otc:order:detail', '66', '0', '法币交易订单详情');
INSERT INTO `admin_permission` VALUES ('76', '法币交易订单状态修改', 'otc:order:alert-status', '66', '0', '法币交易订单状态修改');
INSERT INTO `admin_permission` VALUES ('77', '订单管理', 'otc:order:page-query', '66', '0', '法币交易订单');
INSERT INTO `admin_permission` VALUES ('78', '导出法币交易订单excel', 'otc:order:out-excel', '66', '0', '导出法币交易订单excel');
INSERT INTO `admin_permission` VALUES ('79', '创建otc币种', 'otc:otc-coin:create', '66', '0', '创建otc币种');
INSERT INTO `admin_permission` VALUES ('80', 'otc币种详情', 'otc:otc-coin:detail', '66', '0', 'otc币种详情');
INSERT INTO `admin_permission` VALUES ('81', 'otc币种更新', 'otc:otc-coin:update', '66', '0', 'otc币种更新');
INSERT INTO `admin_permission` VALUES ('82', 'otc币种交易率修改', 'otc:otc-coin:alter-jy-rate', '66', '0', 'otc币种交易率修改');
INSERT INTO `admin_permission` VALUES ('83', '币种管理', 'otc:otc-coin:page-query', '66', '0', '法币币种管理');
INSERT INTO `admin_permission` VALUES ('84', '导出otc币种excel', 'otc:otc-coin:out-excel', '66', '0', '导出otc币种excel');
INSERT INTO `admin_permission` VALUES ('85', '创建后台货币', 'system:coin:create', '8', '0', '创建后台货币');
INSERT INTO `admin_permission` VALUES ('86', '部门详情', 'system:department:detail', '8', '0', '部门详情');
INSERT INTO `admin_permission` VALUES ('87', '查询新增用户曲线', 'system:statistics:member-statistics', '8', '0', '查询新增用户曲线');
INSERT INTO `admin_permission` VALUES ('88', '委托量曲线', 'system:statistics:delegation-statistics', '8', '0', '委托量曲线');
INSERT INTO `admin_permission` VALUES ('89', '法币交易订单量曲线', 'system:statistics:order-statistics', '8', '0', '法币交易订单量曲线');
INSERT INTO `admin_permission` VALUES ('90', 'otc_order统计', 'system:statistics:dashboard', '8', '0', 'otc_order统计');
INSERT INTO `admin_permission` VALUES ('91', '余额管理', 'member:member-wallet:balance', '11', '0', '余额管理');
INSERT INTO `admin_permission` VALUES ('92', '充值管理', 'finance:member-transaction:page-query:recharge', '93', '0', '充值管理');
INSERT INTO `admin_permission` VALUES ('93', '财务管理', 'finance-------', '0', '7', '财务管理');
INSERT INTO `admin_permission` VALUES ('94', '提币审核', 'finance:member-transaction:page-query:check', '93', '0', '提现客服审核');
INSERT INTO `admin_permission` VALUES ('95', '手续费管理', 'finance:member-transaction:page-query:fee', '93', '0', '手续费管理');
INSERT INTO `admin_permission` VALUES ('96', '创建公告', 'system:announcement:create', '8', '0', '创建公告');
INSERT INTO `admin_permission` VALUES ('97', '分页查询公告', 'system:announcement:page-query', '8', '0', '分页查询公告');
INSERT INTO `admin_permission` VALUES ('98', '删除公告', 'system:announcement:deletes', '8', '0', '删除公告');
INSERT INTO `admin_permission` VALUES ('99', '公告详情', 'system:announcement:detail', '8', '0', '公告详情');
INSERT INTO `admin_permission` VALUES ('100', '更新公告', 'system:announcement:update', '8', '0', '更新公告');
INSERT INTO `admin_permission` VALUES ('101', '关闭公告', 'system:announcement:turn-off', '8', '0', '关闭公告');
INSERT INTO `admin_permission` VALUES ('102', '打开公告', 'system:announcement:turn-on', '8', '0', '打开公告');
INSERT INTO `admin_permission` VALUES ('103', '币币设置', 'exchange:set', '60', '0', '币币设置');
INSERT INTO `admin_permission` VALUES ('104', '放币处理', 'otc:appeal:release-coin', '66', '0', '放币处理');
INSERT INTO `admin_permission` VALUES ('105', '取消订单', 'otc:appeal:cancel-order', '66', '0', '取消订单');
INSERT INTO `admin_permission` VALUES ('106', '创建修改部门', 'system:department:merge', '8', '0', '创建修改部门');
INSERT INTO `admin_permission` VALUES ('107', '删除exchangeCoin', 'exchange:exchange-coin:deletes', '60', '0', '删除exchangeCoin');
INSERT INTO `admin_permission` VALUES ('108', '删除otcCoin', 'otc:otc-coin:deletes', '66', '0', '删除otcCoin');
INSERT INTO `admin_permission` VALUES ('109', '删除部门', 'system:department:deletes', '8', '0', '删除部门');
INSERT INTO `admin_permission` VALUES ('110', '增加/修改权限', 'system:permission:merge', '8', '0', '增加权限');
INSERT INTO `admin_permission` VALUES ('111', '权限管理', 'system:permission:page-query', '8', '0', '分页查询权限');
INSERT INTO `admin_permission` VALUES ('112', '权限详情', 'system:permission:details', '8', '0', '权限详情');
INSERT INTO `admin_permission` VALUES ('113', '权限删除', 'system:permission:deletes', '8', '0', '权限删除');
INSERT INTO `admin_permission` VALUES ('114', '添加交易流水号', 'finance:withdraw-record:add-transaction-number', '93', '0', '财务提现转账成功添加流水号');
INSERT INTO `admin_permission` VALUES ('115', '人工充值', 'member:member-wallet:recharge', '11', '0', '人工充值');
INSERT INTO `admin_permission` VALUES ('116', '首页订单数', 'otc:order:get-order-num', '66', '0', '首页订单数');
INSERT INTO `admin_permission` VALUES ('117', '投票管理', 'system:vote:merge', '8', '0', '新增/修改投票');
INSERT INTO `admin_permission` VALUES ('118', '分页查询', 'system:vote:page-query', '8', '0', '分页查询');
INSERT INTO `admin_permission` VALUES ('119', 'admin更改密码', 'system:employee:update-password', '8', '0', 'admin更改密码');
INSERT INTO `admin_permission` VALUES ('120', '系统公告置顶', 'cms:system-help:top', '18', '0', '系统公告置顶');
INSERT INTO `admin_permission` VALUES ('121', '系统广告置顶', 'cms:system-advertise:top', '18', '0', '系统广告置顶');
INSERT INTO `admin_permission` VALUES ('122', '公告置顶', 'system:announcement:top', '8', '0', '公告置顶');
INSERT INTO `admin_permission` VALUES ('123', '转账地址', 'system:transfer-address:page-query', '8', '0', '转账地址管理    拍币网独有');
INSERT INTO `admin_permission` VALUES ('124', '新增/修改转账地址', 'system:transfer-address:merge', '8', '0', '新增/修改转账地址  拍币网独有');
INSERT INTO `admin_permission` VALUES ('125', '转账地址详情', 'system:transfer-address:detail', '8', '0', '转账地址详情  拍币网独有');
INSERT INTO `admin_permission` VALUES ('126', '批量删除转账地址', 'system:transfer-address:deletes', '8', '0', '批量删除转账地址   拍币网独有');
INSERT INTO `admin_permission` VALUES ('128', '分红管理', 'system:dividend:page-query', '8', '0', '分红管理分页查询');
INSERT INTO `admin_permission` VALUES ('129', '开始分红', 'system:dividend:start', '8', '0', '开始分红');
INSERT INTO `admin_permission` VALUES ('130', '分红手续费', 'system:dividend:fee-query', '8', '0', '分红手续费');
INSERT INTO `admin_permission` VALUES ('131', '充币记录', 'finance:member-deposit:page-query', '93', '0', '区块链钱包充币记录');
INSERT INTO `admin_permission` VALUES ('132', '人工转账', 'system:coin:transfer', '60', '0', '热钱包转账至冷钱包');
INSERT INTO `admin_permission` VALUES ('133', '转入明细', 'system:coin:hot-transfer-record:page-query', '8', '0', '热钱包转入冷钱包记录');
INSERT INTO `admin_permission` VALUES ('134', '实名认证配置修改', 'system:member-application-config:merge', '8', '0', '实名认证配置修改');
INSERT INTO `admin_permission` VALUES ('135', '实名认证配置详情', 'system:member-application-config:detail', '8', '0', '实名认证配置详情');
INSERT INTO `admin_permission` VALUES ('136', '禁用/解禁发布广告', 'member:alter-publish-advertisement-status', '11', '0', '禁用/解禁发布广告 1表示正常');
INSERT INTO `admin_permission` VALUES ('137', '禁用/解禁会员账号', 'member:alter-status', '11', '0', '禁用/解禁会员账号 0表示正常');
INSERT INTO `admin_permission` VALUES ('138', '推荐会员', 'promotion:member:page-query', '143', '0', '推荐会员分页');
INSERT INTO `admin_permission` VALUES ('139', '删除用户', 'system:employee:deletes', '8', '0', '批量删除用户');
INSERT INTO `admin_permission` VALUES ('140', '充值管理', 'legal-wallet-recharge', '66', '0', '充值管理分页');
INSERT INTO `admin_permission` VALUES ('141', '提币管理', 'legal-wallet-withdraw', '66', '0', '提币管理查询分页');
INSERT INTO `admin_permission` VALUES ('142', '是否禁止交易', 'member:alter-transaction-status', '11', '0', '是否禁止交易  1表示正常');
INSERT INTO `admin_permission` VALUES ('143', '推荐返佣', 'promotion-------', '0', '11', '推荐返佣');
INSERT INTO `admin_permission` VALUES ('144', '新增/修改推荐返佣配置', 'promotion:reward:merge', '143', '0', '新增/修改推荐返佣配置');
INSERT INTO `admin_permission` VALUES ('145', '重置会员钱包地址', 'member:member-wallet:reset-address', '11', '0', '重置会员钱包地址');
INSERT INTO `admin_permission` VALUES ('146', '佣金参数', 'promotion:reward:page-query', '143', '0', '佣金参数');
INSERT INTO `admin_permission` VALUES ('147', '系统信息维护', 'system:data-dictionary', '8', '0', '系统信息管理');
INSERT INTO `admin_permission` VALUES ('148', '数据字典添加', 'system:data-dictionary:create', '8', '0', '数据字典添加');
INSERT INTO `admin_permission` VALUES ('149', '数据字典修改', 'system:data-dictionary:update', '8', '0', '数据字典修改');
INSERT INTO `admin_permission` VALUES ('150', '版本管理', 'system:app-revision:page-query', '8', '0', '版本管理');
INSERT INTO `admin_permission` VALUES ('151', '添加版本信息', 'system:app-revision:create', '8', '0', '添加版本信息');
INSERT INTO `admin_permission` VALUES ('152', '更新版本信息', 'system:app-revision:update', '8', '0', '更新版本信息');
INSERT INTO `admin_permission` VALUES ('153', '版本信息详情', 'system:app-revision:details', '8', '0', '版本信息详情');
INSERT INTO `admin_permission` VALUES ('154', '推荐会员导出', 'promotion:member:out-excel', '143', '0', '推荐会员导出');
INSERT INTO `admin_permission` VALUES ('155', '推荐会员明细', 'promotion:member:details', '143', '0', '推荐会员明细');
INSERT INTO `admin_permission` VALUES ('156', '测试权限', '测试名称', '18', '0', '描述');
INSERT INTO `admin_permission` VALUES ('158', '取消委托', 'exchange:exchange-order:cancel', '18', '0', '取消委托订单');
INSERT INTO `admin_permission` VALUES ('159', '法币交易明细', 'finance:otc:order:page-query', '93', '0', '法币交易明细');
INSERT INTO `admin_permission` VALUES ('160', '提币明细', 'finance:withdraw-record:page-query:success', '93', '0', '提币明细');
INSERT INTO `admin_permission` VALUES ('161', '保证金管理', 'business-auth:manager', '93', '0', '保证金管理');
INSERT INTO `admin_permission` VALUES ('162', '活动管理', 'activity-------', '0', '9', '活动管理');
INSERT INTO `admin_permission` VALUES ('164', '签到新增', 'activity:sign:post', '162', '0', '签到新增');
INSERT INTO `admin_permission` VALUES ('165', '签到修改', 'activity:sign:put', '162', '0', '签到修改');
INSERT INTO `admin_permission` VALUES ('167', '签到管理', 'activity:sign:page-query', '162', '0', '签到分页');
INSERT INTO `admin_permission` VALUES ('168', '签到详情', 'activity:sign:id:get', '162', '0', '签到详情');
INSERT INTO `admin_permission` VALUES ('169', '签到提前关闭', 'activity:sign:id:early-closing', '162', '0', '签到提前关闭');
INSERT INTO `admin_permission` VALUES ('170', '签到记录', 'activity:member-sign-record:page-query', '162', '0', '签到记录');
INSERT INTO `admin_permission` VALUES ('171', '财务统计', 'finance:statistics:turnover', '93', '0', '成交量/成交额统计');
INSERT INTO `admin_permission` VALUES ('172', '手续费合计', 'finance:statistics:fee', '93', '0', '手续费合计');
INSERT INTO `admin_permission` VALUES ('173', '锁定钱包', 'member:member-wallet:lock-wallet', '11', '0', '锁定钱包');
INSERT INTO `admin_permission` VALUES ('174', '解锁钱包', 'member:member-wallet:unlock-wallet', '11', '0', '解锁钱包');
INSERT INTO `admin_permission` VALUES ('176', '角色删除', 'system:role:deletes', '8', '0', '角色删除');
INSERT INTO `admin_permission` VALUES ('177', '保证金管理', 'business:auth:deposit', '0', '12', '保证金管理');
INSERT INTO `admin_permission` VALUES ('178', '查询保证金策略', 'business:auth:deposit:page', '177', '0', '查询保证金策略');
INSERT INTO `admin_permission` VALUES ('179', '创建保证金策略', 'business:auth:deposit:create', '177', '0', '创建保证金策略');
INSERT INTO `admin_permission` VALUES ('180', '修改保证金策略', 'business:auth:deposit:update', '177', '0', '修改保证金策略');
INSERT INTO `admin_permission` VALUES ('181', '退保审核', 'business:cancel-apply:check', '66', '0', '退保审核');
INSERT INTO `admin_permission` VALUES ('182', '退保管理', 'business:cancel-apply:page-query', '66', '0', '退保申请记录');
INSERT INTO `admin_permission` VALUES ('183', '退保用户详情', 'business:cancel-apply:detail', '66', '0', '退保用户详情');
INSERT INTO `admin_permission` VALUES ('184', '认证商家', 'business-auth:apply:page-query', '66', '0', '认证商家');
INSERT INTO `admin_permission` VALUES ('185', '佣金参数详情', 'promotion:reward:detail', '143', '0', '佣金参数详情');
INSERT INTO `admin_permission` VALUES ('186', '认证商家详情', 'business-auth:apply:detail', '66', '0', '认证商家详情');
INSERT INTO `admin_permission` VALUES ('187', '币种详情', 'system:coin:detail', '8', '0', '系统管理下币种详情');
INSERT INTO `admin_permission` VALUES ('188', '添加交易对', 'exchange:exchange-coin:merge', '60', '0', '添加交易对');
INSERT INTO `admin_permission` VALUES ('189', '修改交易对', 'exchange:exchange-coin:alter-rate', '60', '0', '修改交易对');
INSERT INTO `admin_permission` VALUES ('190', '更新后台货币', 'system:coin:update', '8', '0', '系统管理下更新后台货币');
INSERT INTO `admin_permission` VALUES ('191', '添加用户钱包记录', 'system:coin:newwallet', '8', '0', '系统管理下添加用户钱包记录');
INSERT INTO `admin_permission` VALUES ('192', '启动交易引擎', 'exchange:exchange-coin:start-trader', '60', '0', '启动交易引擎');
INSERT INTO `admin_permission` VALUES ('193', '停止交易引擎', 'exchange:exchange-coin:stop-trader', '60', '0', '停止交易引擎');
INSERT INTO `admin_permission` VALUES ('194', '撤销某交易对委托', 'exchange:exchange-coin:cancel-all-order', '60', '0', '撤销某交易对所有委托单');
INSERT INTO `admin_permission` VALUES ('195', '查看交易对盘面', 'exchange:exchange-coin:exchange-overview', '60', '0', '查看交易对盘面');
INSERT INTO `admin_permission` VALUES ('196', '活动列表', 'activity:activity:page-query', '162', '0', '活动列表');
INSERT INTO `admin_permission` VALUES ('197', '添加活动', 'activity:activity:add', '162', '0', '添加活动');
INSERT INTO `admin_permission` VALUES ('198', '修改活动', 'activity:activity:modify', '162', '0', '修改活动');
INSERT INTO `admin_permission` VALUES ('199', '活动详情', 'activity:activity:detail', '162', '0', '查看活动详情');
INSERT INTO `admin_permission` VALUES ('200', '修改活动进度', 'activity:activity:modify-progress', '162', '0', '修改活动进度');
INSERT INTO `admin_permission` VALUES ('201', '活动参与详情', 'activity:activity:orderlist', '162', '0', '活动参与详情列表');
INSERT INTO `admin_permission` VALUES ('202', '派发活动币', 'activity:activity:distribute', '162', '0', '');
INSERT INTO `admin_permission` VALUES ('203', 'CTC管理', 'ctc---------', '0', '6', '法币C2C');
INSERT INTO `admin_permission` VALUES ('204', '订单列表', 'ctc:order:page-query', '203', '0', '用户买入卖出列表');
INSERT INTO `admin_permission` VALUES ('205', '订单详情', 'ctc:order:order-detail', '203', '0', '订单详情');
INSERT INTO `admin_permission` VALUES ('206', '标记付款', 'ctc:order:pay-order', '203', '0', '标记付款');
INSERT INTO `admin_permission` VALUES ('207', '完成放币', 'ctc:order:complete-order', '203', '0', '完成放币');
INSERT INTO `admin_permission` VALUES ('208', '接单', 'ctc:order:confirm-order', '203', '0', '接单');
INSERT INTO `admin_permission` VALUES ('209', '取消订单', 'ctc:order:cancel-order', '203', '0', '取消订单');
INSERT INTO `admin_permission` VALUES ('210', '承兑商列表', 'ctc:acceptor:page-query', '203', '0', '承兑商列表');
INSERT INTO `admin_permission` VALUES ('211', '切换承兑商状态', 'ctc:acceptor:switch', '203', '0', '切换状态');
INSERT INTO `admin_permission` VALUES ('212', '查看机器人参数', 'exchange:exchange-coin:robot-config', '60', '0', '查看机器人参数');
INSERT INTO `admin_permission` VALUES ('213', '修改一般机器人参数', 'exchange:exchange-coin:alter-robot-config', '60', '0', '修改一般机器人参数');
INSERT INTO `admin_permission` VALUES ('214', '邀请管理', 'invite-------', '0', '2', '邀请管理');
INSERT INTO `admin_permission` VALUES ('215', '邀请记录', 'invite:management:query', '214', '0', '邀请记录');
INSERT INTO `admin_permission` VALUES ('216', '邀请排名', 'invite:management:rank', '214', '0', '邀请');
INSERT INTO `admin_permission` VALUES ('217', '更新邀请参数', 'invite:management:update-rank', '214', '0', '更新邀请参数');
INSERT INTO `admin_permission` VALUES ('218', '邀请详情', 'invite:management:detail-rank', '214', '0', '邀请详情');
INSERT INTO `admin_permission` VALUES ('219', '创建一般机器人', 'exchange:exchange-coin:create-robot-config', '60', '0', '创建交易机器人');
INSERT INTO `admin_permission` VALUES ('220', '红包管理', 'envelope-----', '0', '8', '红包管理');
INSERT INTO `admin_permission` VALUES ('221', '红包列表', 'envelope:page-query', '220', '0', '红包列表');
INSERT INTO `admin_permission` VALUES ('222', '红包详情', 'envelope:detail', '220', '0', '红包详情');
INSERT INTO `admin_permission` VALUES ('223', '红包领取详情', 'envelope:receive-detail', '220', '0', '红包领取详情');
INSERT INTO `admin_permission` VALUES ('224', '添加红包', 'envelope:add', '220', '0', '添加红包');
INSERT INTO `admin_permission` VALUES ('225', '修改红包', 'envelope:modify', '220', '0', '修改红包');
INSERT INTO `admin_permission` VALUES ('226', '修改定价机器人', 'exchange:exchange-coin:alter-robot-config-price', '60', '0', '修改定价机器人');
INSERT INTO `admin_permission` VALUES ('227', '创建定价机器人', 'exchange:exchange-coin:create-robot-config-price', '60', '0', '创建定价机器人');
INSERT INTO `admin_permission` VALUES ('228', '控盘机器人', 'exchange:robot', '60', '0', '控盘机器人');
INSERT INTO `admin_permission` VALUES ('229', '保存K线数据', 'exchange:exchange-coin:save-robot-kline', '60', '0', '保存K线数据');
INSERT INTO `admin_permission` VALUES ('230', '控盘币种列表', 'exchange:exchange-coin:custom-coin-list', '60', '0', '控盘币种列表');
INSERT INTO `admin_permission` VALUES ('231', '机器人k线列表', 'exchange:exchange-coin:robot-kline-list', '60', '0', '获取控盘机器人K线');
INSERT INTO `admin_permission` VALUES ('232', '预测合约', 'option-------------', '0', '3', '预测合约');
INSERT INTO `admin_permission` VALUES ('233', '交易对管理', 'option-coin:page-query', '232', '0', '获取交易对');
INSERT INTO `admin_permission` VALUES ('234', '获取交易对详情', 'option-coin:detail', '232', '0', '获取交易对详情');
INSERT INTO `admin_permission` VALUES ('235', '添加交易对', 'option-coin:add', '232', '0', '添加交易对');
INSERT INTO `admin_permission` VALUES ('236', '修改交易对', 'option-coin:alter', '232', '0', '修改交易对');
INSERT INTO `admin_permission` VALUES ('237', '合约管理', 'option:page-query', '232', '0', '查询每期合约');
INSERT INTO `admin_permission` VALUES ('238', '订单管理', 'option:order:page-query', '232', '0', '查询所有合约订单');
INSERT INTO `admin_permission` VALUES ('239', '单期合约所有订单', 'option:order:option-list', '232', '0', '单期合约所有订单');
INSERT INTO `admin_permission` VALUES ('240', '指定用户所有合约订单', 'option:order:member-list', '232', '0', '指定用户所有合约订单');
INSERT INTO `admin_permission` VALUES ('241', '重置交易引擎', 'exchange:exchange-coin:reset-trader	', '60', '0', '重置交易引擎');
INSERT INTO `admin_permission` VALUES ('242', '永续合约', 'swap------------------', '0', '3', '永续合约');
INSERT INTO `admin_permission` VALUES ('243', '交易对管理', 'swap-coin:page-query', '242', '0', '交易对管理');
INSERT INTO `admin_permission` VALUES ('244', '查看交易对详情', 'swap-coin:detail', '242', '0', '查看交易对详情');
INSERT INTO `admin_permission` VALUES ('245', '添加交易对', 'swap-coin:add', '242', '0', '添加交易对');
INSERT INTO `admin_permission` VALUES ('246', '修改交易对', 'swap-coin:alter', '242', '0', '修改交易对');
INSERT INTO `admin_permission` VALUES ('247', '添加合约账户', 'swap-coin:init-wallet', '242', '0', '添加合约账户');
INSERT INTO `admin_permission` VALUES ('248', '委托管理', 'swap:order:page-query', '242', '0', '委托管理');
INSERT INTO `admin_permission` VALUES ('249', '撤销委托	', 'swap:order:cancel', '242', '0', '撤销委托	');
INSERT INTO `admin_permission` VALUES ('250', '仓位管理	', 'swap:position:page-query', '242', '0', '仓位管理	\n');
INSERT INTO `admin_permission` VALUES ('251', '强制平仓	', 'swap:order:force-close	', '242', '0', '强制平仓	\n');
INSERT INTO `admin_permission` VALUES ('252', '定点爆仓	', 'swap-coin:blast', '242', '0', '定点爆仓	\n');
INSERT INTO `admin_permission` VALUES ('253', '授权代理商	\r\n', 'member:alter-member-superpartner', '11', '0', '授权代理商	\r\n');
INSERT INTO `admin_permission` VALUES ('254', '查询用户锁仓', 'activity:activity:locked-activity', '162', '0', '查询用户锁仓');
INSERT INTO `admin_permission` VALUES ('255', '设置控盘跟随趋势	', 'exchange:exchange-coin:save-robot-flow', '60', '0', '设置控盘跟随趋势	\n');
INSERT INTO `admin_permission` VALUES ('256', '戳一下', 'swap-coin:poke', '242', '0', '戳一下');
INSERT INTO `admin_permission` VALUES ('257', '返佣管理', 'swap:reward:page-query', '214', '0', '返佣管理');
INSERT INTO `admin_permission` VALUES ('258', '返佣比例', 'swap:reward:rewardSets', '214', '0', '返佣比例');
INSERT INTO `admin_permission` VALUES ('259', '清除缓存', 'swap:reward:clear', '214', '0', '清除缓存');
INSERT INTO `admin_permission` VALUES ('260', '设置预设价格', 'option:alter', '237', '0', '设置预设价格');
INSERT INTO `admin_permission` VALUES ('261', '设置期权合约订单', 'option:order:setOptionOrder', '237', '0', '设置期权合约订单');

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES ('1', '系统管理员', '系统管理员');
INSERT INTO `admin_role` VALUES ('61', '外部', '客服');
INSERT INTO `admin_role` VALUES ('64', '', '演示');

-- ----------------------------
-- Table structure for admin_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permission`;
CREATE TABLE `admin_role_permission` (
  `role_id` bigint(20) NOT NULL,
  `rule_id` bigint(20) NOT NULL,
  UNIQUE KEY `UKplesprlvm1sob8nl9yc5rgh3m` (`role_id`,`rule_id`) USING BTREE,
  KEY `FK52rddd3qje4p49iubt08gplb5` (`role_id`) USING BTREE,
  KEY `FKqf3fhgl5mjqqb0jeupx7yafh0` (`rule_id`) USING BTREE,
  CONSTRAINT `FK52rddd3qje4p49iubt08gplb5` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`),
  CONSTRAINT `FKqf3fhgl5mjqqb0jeupx7yafh0` FOREIGN KEY (`rule_id`) REFERENCES `admin_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_role_permission
-- ----------------------------
INSERT INTO `admin_role_permission` VALUES ('1', '2');
INSERT INTO `admin_role_permission` VALUES ('1', '3');
INSERT INTO `admin_role_permission` VALUES ('1', '4');
INSERT INTO `admin_role_permission` VALUES ('1', '5');
INSERT INTO `admin_role_permission` VALUES ('1', '6');
INSERT INTO `admin_role_permission` VALUES ('1', '7');
INSERT INTO `admin_role_permission` VALUES ('1', '8');
INSERT INTO `admin_role_permission` VALUES ('1', '9');
INSERT INTO `admin_role_permission` VALUES ('1', '10');
INSERT INTO `admin_role_permission` VALUES ('1', '11');
INSERT INTO `admin_role_permission` VALUES ('1', '12');
INSERT INTO `admin_role_permission` VALUES ('1', '13');
INSERT INTO `admin_role_permission` VALUES ('1', '14');
INSERT INTO `admin_role_permission` VALUES ('1', '18');
INSERT INTO `admin_role_permission` VALUES ('1', '19');
INSERT INTO `admin_role_permission` VALUES ('1', '20');
INSERT INTO `admin_role_permission` VALUES ('1', '23');
INSERT INTO `admin_role_permission` VALUES ('1', '26');
INSERT INTO `admin_role_permission` VALUES ('1', '27');
INSERT INTO `admin_role_permission` VALUES ('1', '28');
INSERT INTO `admin_role_permission` VALUES ('1', '29');
INSERT INTO `admin_role_permission` VALUES ('1', '30');
INSERT INTO `admin_role_permission` VALUES ('1', '31');
INSERT INTO `admin_role_permission` VALUES ('1', '32');
INSERT INTO `admin_role_permission` VALUES ('1', '33');
INSERT INTO `admin_role_permission` VALUES ('1', '34');
INSERT INTO `admin_role_permission` VALUES ('1', '35');
INSERT INTO `admin_role_permission` VALUES ('1', '36');
INSERT INTO `admin_role_permission` VALUES ('1', '37');
INSERT INTO `admin_role_permission` VALUES ('1', '38');
INSERT INTO `admin_role_permission` VALUES ('1', '39');
INSERT INTO `admin_role_permission` VALUES ('1', '40');
INSERT INTO `admin_role_permission` VALUES ('1', '41');
INSERT INTO `admin_role_permission` VALUES ('1', '42');
INSERT INTO `admin_role_permission` VALUES ('1', '43');
INSERT INTO `admin_role_permission` VALUES ('1', '44');
INSERT INTO `admin_role_permission` VALUES ('1', '45');
INSERT INTO `admin_role_permission` VALUES ('1', '46');
INSERT INTO `admin_role_permission` VALUES ('1', '47');
INSERT INTO `admin_role_permission` VALUES ('1', '48');
INSERT INTO `admin_role_permission` VALUES ('1', '49');
INSERT INTO `admin_role_permission` VALUES ('1', '50');
INSERT INTO `admin_role_permission` VALUES ('1', '51');
INSERT INTO `admin_role_permission` VALUES ('1', '52');
INSERT INTO `admin_role_permission` VALUES ('1', '53');
INSERT INTO `admin_role_permission` VALUES ('1', '54');
INSERT INTO `admin_role_permission` VALUES ('1', '55');
INSERT INTO `admin_role_permission` VALUES ('1', '56');
INSERT INTO `admin_role_permission` VALUES ('1', '57');
INSERT INTO `admin_role_permission` VALUES ('1', '58');
INSERT INTO `admin_role_permission` VALUES ('1', '59');
INSERT INTO `admin_role_permission` VALUES ('1', '60');
INSERT INTO `admin_role_permission` VALUES ('1', '61');
INSERT INTO `admin_role_permission` VALUES ('1', '62');
INSERT INTO `admin_role_permission` VALUES ('1', '63');
INSERT INTO `admin_role_permission` VALUES ('1', '64');
INSERT INTO `admin_role_permission` VALUES ('1', '65');
INSERT INTO `admin_role_permission` VALUES ('1', '66');
INSERT INTO `admin_role_permission` VALUES ('1', '67');
INSERT INTO `admin_role_permission` VALUES ('1', '68');
INSERT INTO `admin_role_permission` VALUES ('1', '69');
INSERT INTO `admin_role_permission` VALUES ('1', '70');
INSERT INTO `admin_role_permission` VALUES ('1', '71');
INSERT INTO `admin_role_permission` VALUES ('1', '72');
INSERT INTO `admin_role_permission` VALUES ('1', '73');
INSERT INTO `admin_role_permission` VALUES ('1', '74');
INSERT INTO `admin_role_permission` VALUES ('1', '75');
INSERT INTO `admin_role_permission` VALUES ('1', '76');
INSERT INTO `admin_role_permission` VALUES ('1', '77');
INSERT INTO `admin_role_permission` VALUES ('1', '78');
INSERT INTO `admin_role_permission` VALUES ('1', '79');
INSERT INTO `admin_role_permission` VALUES ('1', '80');
INSERT INTO `admin_role_permission` VALUES ('1', '81');
INSERT INTO `admin_role_permission` VALUES ('1', '82');
INSERT INTO `admin_role_permission` VALUES ('1', '83');
INSERT INTO `admin_role_permission` VALUES ('1', '84');
INSERT INTO `admin_role_permission` VALUES ('1', '85');
INSERT INTO `admin_role_permission` VALUES ('1', '86');
INSERT INTO `admin_role_permission` VALUES ('1', '87');
INSERT INTO `admin_role_permission` VALUES ('1', '88');
INSERT INTO `admin_role_permission` VALUES ('1', '89');
INSERT INTO `admin_role_permission` VALUES ('1', '90');
INSERT INTO `admin_role_permission` VALUES ('1', '91');
INSERT INTO `admin_role_permission` VALUES ('1', '92');
INSERT INTO `admin_role_permission` VALUES ('1', '93');
INSERT INTO `admin_role_permission` VALUES ('1', '94');
INSERT INTO `admin_role_permission` VALUES ('1', '95');
INSERT INTO `admin_role_permission` VALUES ('1', '96');
INSERT INTO `admin_role_permission` VALUES ('1', '97');
INSERT INTO `admin_role_permission` VALUES ('1', '98');
INSERT INTO `admin_role_permission` VALUES ('1', '99');
INSERT INTO `admin_role_permission` VALUES ('1', '100');
INSERT INTO `admin_role_permission` VALUES ('1', '101');
INSERT INTO `admin_role_permission` VALUES ('1', '102');
INSERT INTO `admin_role_permission` VALUES ('1', '103');
INSERT INTO `admin_role_permission` VALUES ('1', '104');
INSERT INTO `admin_role_permission` VALUES ('1', '105');
INSERT INTO `admin_role_permission` VALUES ('1', '106');
INSERT INTO `admin_role_permission` VALUES ('1', '107');
INSERT INTO `admin_role_permission` VALUES ('1', '108');
INSERT INTO `admin_role_permission` VALUES ('1', '109');
INSERT INTO `admin_role_permission` VALUES ('1', '110');
INSERT INTO `admin_role_permission` VALUES ('1', '111');
INSERT INTO `admin_role_permission` VALUES ('1', '112');
INSERT INTO `admin_role_permission` VALUES ('1', '113');
INSERT INTO `admin_role_permission` VALUES ('1', '114');
INSERT INTO `admin_role_permission` VALUES ('1', '115');
INSERT INTO `admin_role_permission` VALUES ('1', '116');
INSERT INTO `admin_role_permission` VALUES ('1', '117');
INSERT INTO `admin_role_permission` VALUES ('1', '118');
INSERT INTO `admin_role_permission` VALUES ('1', '119');
INSERT INTO `admin_role_permission` VALUES ('1', '120');
INSERT INTO `admin_role_permission` VALUES ('1', '121');
INSERT INTO `admin_role_permission` VALUES ('1', '122');
INSERT INTO `admin_role_permission` VALUES ('1', '123');
INSERT INTO `admin_role_permission` VALUES ('1', '124');
INSERT INTO `admin_role_permission` VALUES ('1', '125');
INSERT INTO `admin_role_permission` VALUES ('1', '126');
INSERT INTO `admin_role_permission` VALUES ('1', '128');
INSERT INTO `admin_role_permission` VALUES ('1', '129');
INSERT INTO `admin_role_permission` VALUES ('1', '130');
INSERT INTO `admin_role_permission` VALUES ('1', '131');
INSERT INTO `admin_role_permission` VALUES ('1', '132');
INSERT INTO `admin_role_permission` VALUES ('1', '133');
INSERT INTO `admin_role_permission` VALUES ('1', '134');
INSERT INTO `admin_role_permission` VALUES ('1', '135');
INSERT INTO `admin_role_permission` VALUES ('1', '136');
INSERT INTO `admin_role_permission` VALUES ('1', '137');
INSERT INTO `admin_role_permission` VALUES ('1', '138');
INSERT INTO `admin_role_permission` VALUES ('1', '139');
INSERT INTO `admin_role_permission` VALUES ('1', '140');
INSERT INTO `admin_role_permission` VALUES ('1', '141');
INSERT INTO `admin_role_permission` VALUES ('1', '142');
INSERT INTO `admin_role_permission` VALUES ('1', '143');
INSERT INTO `admin_role_permission` VALUES ('1', '144');
INSERT INTO `admin_role_permission` VALUES ('1', '145');
INSERT INTO `admin_role_permission` VALUES ('1', '146');
INSERT INTO `admin_role_permission` VALUES ('1', '147');
INSERT INTO `admin_role_permission` VALUES ('1', '148');
INSERT INTO `admin_role_permission` VALUES ('1', '149');
INSERT INTO `admin_role_permission` VALUES ('1', '150');
INSERT INTO `admin_role_permission` VALUES ('1', '151');
INSERT INTO `admin_role_permission` VALUES ('1', '152');
INSERT INTO `admin_role_permission` VALUES ('1', '153');
INSERT INTO `admin_role_permission` VALUES ('1', '154');
INSERT INTO `admin_role_permission` VALUES ('1', '155');
INSERT INTO `admin_role_permission` VALUES ('1', '156');
INSERT INTO `admin_role_permission` VALUES ('1', '158');
INSERT INTO `admin_role_permission` VALUES ('1', '159');
INSERT INTO `admin_role_permission` VALUES ('1', '160');
INSERT INTO `admin_role_permission` VALUES ('1', '161');
INSERT INTO `admin_role_permission` VALUES ('1', '162');
INSERT INTO `admin_role_permission` VALUES ('1', '164');
INSERT INTO `admin_role_permission` VALUES ('1', '165');
INSERT INTO `admin_role_permission` VALUES ('1', '167');
INSERT INTO `admin_role_permission` VALUES ('1', '168');
INSERT INTO `admin_role_permission` VALUES ('1', '169');
INSERT INTO `admin_role_permission` VALUES ('1', '170');
INSERT INTO `admin_role_permission` VALUES ('1', '171');
INSERT INTO `admin_role_permission` VALUES ('1', '172');
INSERT INTO `admin_role_permission` VALUES ('1', '173');
INSERT INTO `admin_role_permission` VALUES ('1', '174');
INSERT INTO `admin_role_permission` VALUES ('1', '176');
INSERT INTO `admin_role_permission` VALUES ('1', '177');
INSERT INTO `admin_role_permission` VALUES ('1', '178');
INSERT INTO `admin_role_permission` VALUES ('1', '179');
INSERT INTO `admin_role_permission` VALUES ('1', '180');
INSERT INTO `admin_role_permission` VALUES ('1', '181');
INSERT INTO `admin_role_permission` VALUES ('1', '182');
INSERT INTO `admin_role_permission` VALUES ('1', '183');
INSERT INTO `admin_role_permission` VALUES ('1', '184');
INSERT INTO `admin_role_permission` VALUES ('1', '185');
INSERT INTO `admin_role_permission` VALUES ('1', '186');
INSERT INTO `admin_role_permission` VALUES ('1', '187');
INSERT INTO `admin_role_permission` VALUES ('1', '188');
INSERT INTO `admin_role_permission` VALUES ('1', '189');
INSERT INTO `admin_role_permission` VALUES ('1', '190');
INSERT INTO `admin_role_permission` VALUES ('1', '191');
INSERT INTO `admin_role_permission` VALUES ('1', '192');
INSERT INTO `admin_role_permission` VALUES ('1', '193');
INSERT INTO `admin_role_permission` VALUES ('1', '194');
INSERT INTO `admin_role_permission` VALUES ('1', '195');
INSERT INTO `admin_role_permission` VALUES ('1', '196');
INSERT INTO `admin_role_permission` VALUES ('1', '197');
INSERT INTO `admin_role_permission` VALUES ('1', '198');
INSERT INTO `admin_role_permission` VALUES ('1', '199');
INSERT INTO `admin_role_permission` VALUES ('1', '200');
INSERT INTO `admin_role_permission` VALUES ('1', '201');
INSERT INTO `admin_role_permission` VALUES ('1', '202');
INSERT INTO `admin_role_permission` VALUES ('1', '203');
INSERT INTO `admin_role_permission` VALUES ('1', '204');
INSERT INTO `admin_role_permission` VALUES ('1', '205');
INSERT INTO `admin_role_permission` VALUES ('1', '206');
INSERT INTO `admin_role_permission` VALUES ('1', '207');
INSERT INTO `admin_role_permission` VALUES ('1', '208');
INSERT INTO `admin_role_permission` VALUES ('1', '209');
INSERT INTO `admin_role_permission` VALUES ('1', '210');
INSERT INTO `admin_role_permission` VALUES ('1', '211');
INSERT INTO `admin_role_permission` VALUES ('1', '212');
INSERT INTO `admin_role_permission` VALUES ('1', '213');
INSERT INTO `admin_role_permission` VALUES ('1', '214');
INSERT INTO `admin_role_permission` VALUES ('1', '215');
INSERT INTO `admin_role_permission` VALUES ('1', '216');
INSERT INTO `admin_role_permission` VALUES ('1', '217');
INSERT INTO `admin_role_permission` VALUES ('1', '218');
INSERT INTO `admin_role_permission` VALUES ('1', '219');
INSERT INTO `admin_role_permission` VALUES ('1', '220');
INSERT INTO `admin_role_permission` VALUES ('1', '221');
INSERT INTO `admin_role_permission` VALUES ('1', '222');
INSERT INTO `admin_role_permission` VALUES ('1', '223');
INSERT INTO `admin_role_permission` VALUES ('1', '224');
INSERT INTO `admin_role_permission` VALUES ('1', '225');
INSERT INTO `admin_role_permission` VALUES ('1', '226');
INSERT INTO `admin_role_permission` VALUES ('1', '227');
INSERT INTO `admin_role_permission` VALUES ('1', '228');
INSERT INTO `admin_role_permission` VALUES ('1', '229');
INSERT INTO `admin_role_permission` VALUES ('1', '230');
INSERT INTO `admin_role_permission` VALUES ('1', '231');
INSERT INTO `admin_role_permission` VALUES ('1', '232');
INSERT INTO `admin_role_permission` VALUES ('1', '233');
INSERT INTO `admin_role_permission` VALUES ('1', '234');
INSERT INTO `admin_role_permission` VALUES ('1', '235');
INSERT INTO `admin_role_permission` VALUES ('1', '236');
INSERT INTO `admin_role_permission` VALUES ('1', '237');
INSERT INTO `admin_role_permission` VALUES ('1', '238');
INSERT INTO `admin_role_permission` VALUES ('1', '239');
INSERT INTO `admin_role_permission` VALUES ('1', '240');
INSERT INTO `admin_role_permission` VALUES ('1', '241');
INSERT INTO `admin_role_permission` VALUES ('1', '242');
INSERT INTO `admin_role_permission` VALUES ('1', '243');
INSERT INTO `admin_role_permission` VALUES ('1', '244');
INSERT INTO `admin_role_permission` VALUES ('1', '245');
INSERT INTO `admin_role_permission` VALUES ('1', '246');
INSERT INTO `admin_role_permission` VALUES ('1', '247');
INSERT INTO `admin_role_permission` VALUES ('1', '248');
INSERT INTO `admin_role_permission` VALUES ('1', '249');
INSERT INTO `admin_role_permission` VALUES ('1', '250');
INSERT INTO `admin_role_permission` VALUES ('1', '251');
INSERT INTO `admin_role_permission` VALUES ('1', '252');
INSERT INTO `admin_role_permission` VALUES ('1', '253');
INSERT INTO `admin_role_permission` VALUES ('1', '254');
INSERT INTO `admin_role_permission` VALUES ('1', '255');
INSERT INTO `admin_role_permission` VALUES ('61', '8');
INSERT INTO `admin_role_permission` VALUES ('61', '9');
INSERT INTO `admin_role_permission` VALUES ('61', '10');
INSERT INTO `admin_role_permission` VALUES ('61', '11');
INSERT INTO `admin_role_permission` VALUES ('61', '12');
INSERT INTO `admin_role_permission` VALUES ('61', '13');
INSERT INTO `admin_role_permission` VALUES ('61', '14');
INSERT INTO `admin_role_permission` VALUES ('61', '18');
INSERT INTO `admin_role_permission` VALUES ('61', '26');
INSERT INTO `admin_role_permission` VALUES ('61', '35');
INSERT INTO `admin_role_permission` VALUES ('61', '36');
INSERT INTO `admin_role_permission` VALUES ('61', '37');
INSERT INTO `admin_role_permission` VALUES ('61', '38');
INSERT INTO `admin_role_permission` VALUES ('61', '39');
INSERT INTO `admin_role_permission` VALUES ('61', '40');
INSERT INTO `admin_role_permission` VALUES ('61', '41');
INSERT INTO `admin_role_permission` VALUES ('61', '42');
INSERT INTO `admin_role_permission` VALUES ('61', '43');
INSERT INTO `admin_role_permission` VALUES ('61', '44');
INSERT INTO `admin_role_permission` VALUES ('61', '45');
INSERT INTO `admin_role_permission` VALUES ('61', '46');
INSERT INTO `admin_role_permission` VALUES ('61', '47');
INSERT INTO `admin_role_permission` VALUES ('61', '51');
INSERT INTO `admin_role_permission` VALUES ('61', '52');
INSERT INTO `admin_role_permission` VALUES ('61', '53');
INSERT INTO `admin_role_permission` VALUES ('61', '66');
INSERT INTO `admin_role_permission` VALUES ('61', '90');
INSERT INTO `admin_role_permission` VALUES ('61', '116');
INSERT INTO `admin_role_permission` VALUES ('61', '120');
INSERT INTO `admin_role_permission` VALUES ('61', '121');
INSERT INTO `admin_role_permission` VALUES ('61', '137');
INSERT INTO `admin_role_permission` VALUES ('61', '142');
INSERT INTO `admin_role_permission` VALUES ('61', '156');
INSERT INTO `admin_role_permission` VALUES ('61', '158');
INSERT INTO `admin_role_permission` VALUES ('64', '7');
INSERT INTO `admin_role_permission` VALUES ('64', '8');
INSERT INTO `admin_role_permission` VALUES ('64', '9');
INSERT INTO `admin_role_permission` VALUES ('64', '10');
INSERT INTO `admin_role_permission` VALUES ('64', '11');
INSERT INTO `admin_role_permission` VALUES ('64', '12');
INSERT INTO `admin_role_permission` VALUES ('64', '13');
INSERT INTO `admin_role_permission` VALUES ('64', '14');
INSERT INTO `admin_role_permission` VALUES ('64', '18');
INSERT INTO `admin_role_permission` VALUES ('64', '19');
INSERT INTO `admin_role_permission` VALUES ('64', '20');
INSERT INTO `admin_role_permission` VALUES ('64', '23');
INSERT INTO `admin_role_permission` VALUES ('64', '26');
INSERT INTO `admin_role_permission` VALUES ('64', '32');
INSERT INTO `admin_role_permission` VALUES ('64', '33');
INSERT INTO `admin_role_permission` VALUES ('64', '34');
INSERT INTO `admin_role_permission` VALUES ('64', '35');
INSERT INTO `admin_role_permission` VALUES ('64', '36');
INSERT INTO `admin_role_permission` VALUES ('64', '37');
INSERT INTO `admin_role_permission` VALUES ('64', '38');
INSERT INTO `admin_role_permission` VALUES ('64', '40');
INSERT INTO `admin_role_permission` VALUES ('64', '41');
INSERT INTO `admin_role_permission` VALUES ('64', '42');
INSERT INTO `admin_role_permission` VALUES ('64', '43');
INSERT INTO `admin_role_permission` VALUES ('64', '45');
INSERT INTO `admin_role_permission` VALUES ('64', '46');
INSERT INTO `admin_role_permission` VALUES ('64', '48');
INSERT INTO `admin_role_permission` VALUES ('64', '49');
INSERT INTO `admin_role_permission` VALUES ('64', '50');
INSERT INTO `admin_role_permission` VALUES ('64', '51');
INSERT INTO `admin_role_permission` VALUES ('64', '52');
INSERT INTO `admin_role_permission` VALUES ('64', '53');
INSERT INTO `admin_role_permission` VALUES ('64', '54');
INSERT INTO `admin_role_permission` VALUES ('64', '55');
INSERT INTO `admin_role_permission` VALUES ('64', '56');
INSERT INTO `admin_role_permission` VALUES ('64', '57');
INSERT INTO `admin_role_permission` VALUES ('64', '58');
INSERT INTO `admin_role_permission` VALUES ('64', '59');
INSERT INTO `admin_role_permission` VALUES ('64', '60');
INSERT INTO `admin_role_permission` VALUES ('64', '61');
INSERT INTO `admin_role_permission` VALUES ('64', '62');
INSERT INTO `admin_role_permission` VALUES ('64', '63');
INSERT INTO `admin_role_permission` VALUES ('64', '64');
INSERT INTO `admin_role_permission` VALUES ('64', '65');
INSERT INTO `admin_role_permission` VALUES ('64', '66');
INSERT INTO `admin_role_permission` VALUES ('64', '67');
INSERT INTO `admin_role_permission` VALUES ('64', '68');
INSERT INTO `admin_role_permission` VALUES ('64', '69');
INSERT INTO `admin_role_permission` VALUES ('64', '70');
INSERT INTO `admin_role_permission` VALUES ('64', '71');
INSERT INTO `admin_role_permission` VALUES ('64', '72');
INSERT INTO `admin_role_permission` VALUES ('64', '73');
INSERT INTO `admin_role_permission` VALUES ('64', '74');
INSERT INTO `admin_role_permission` VALUES ('64', '75');
INSERT INTO `admin_role_permission` VALUES ('64', '76');
INSERT INTO `admin_role_permission` VALUES ('64', '77');
INSERT INTO `admin_role_permission` VALUES ('64', '78');
INSERT INTO `admin_role_permission` VALUES ('64', '79');
INSERT INTO `admin_role_permission` VALUES ('64', '80');
INSERT INTO `admin_role_permission` VALUES ('64', '81');
INSERT INTO `admin_role_permission` VALUES ('64', '82');
INSERT INTO `admin_role_permission` VALUES ('64', '83');
INSERT INTO `admin_role_permission` VALUES ('64', '84');
INSERT INTO `admin_role_permission` VALUES ('64', '85');
INSERT INTO `admin_role_permission` VALUES ('64', '87');
INSERT INTO `admin_role_permission` VALUES ('64', '88');
INSERT INTO `admin_role_permission` VALUES ('64', '89');
INSERT INTO `admin_role_permission` VALUES ('64', '90');
INSERT INTO `admin_role_permission` VALUES ('64', '91');
INSERT INTO `admin_role_permission` VALUES ('64', '92');
INSERT INTO `admin_role_permission` VALUES ('64', '93');
INSERT INTO `admin_role_permission` VALUES ('64', '94');
INSERT INTO `admin_role_permission` VALUES ('64', '95');
INSERT INTO `admin_role_permission` VALUES ('64', '96');
INSERT INTO `admin_role_permission` VALUES ('64', '97');
INSERT INTO `admin_role_permission` VALUES ('64', '99');
INSERT INTO `admin_role_permission` VALUES ('64', '100');
INSERT INTO `admin_role_permission` VALUES ('64', '101');
INSERT INTO `admin_role_permission` VALUES ('64', '102');
INSERT INTO `admin_role_permission` VALUES ('64', '103');
INSERT INTO `admin_role_permission` VALUES ('64', '104');
INSERT INTO `admin_role_permission` VALUES ('64', '105');
INSERT INTO `admin_role_permission` VALUES ('64', '106');
INSERT INTO `admin_role_permission` VALUES ('64', '108');
INSERT INTO `admin_role_permission` VALUES ('64', '112');
INSERT INTO `admin_role_permission` VALUES ('64', '114');
INSERT INTO `admin_role_permission` VALUES ('64', '115');
INSERT INTO `admin_role_permission` VALUES ('64', '116');
INSERT INTO `admin_role_permission` VALUES ('64', '117');
INSERT INTO `admin_role_permission` VALUES ('64', '118');
INSERT INTO `admin_role_permission` VALUES ('64', '119');
INSERT INTO `admin_role_permission` VALUES ('64', '120');
INSERT INTO `admin_role_permission` VALUES ('64', '121');
INSERT INTO `admin_role_permission` VALUES ('64', '122');
INSERT INTO `admin_role_permission` VALUES ('64', '123');
INSERT INTO `admin_role_permission` VALUES ('64', '124');
INSERT INTO `admin_role_permission` VALUES ('64', '125');
INSERT INTO `admin_role_permission` VALUES ('64', '126');
INSERT INTO `admin_role_permission` VALUES ('64', '128');
INSERT INTO `admin_role_permission` VALUES ('64', '129');
INSERT INTO `admin_role_permission` VALUES ('64', '130');
INSERT INTO `admin_role_permission` VALUES ('64', '131');
INSERT INTO `admin_role_permission` VALUES ('64', '132');
INSERT INTO `admin_role_permission` VALUES ('64', '133');
INSERT INTO `admin_role_permission` VALUES ('64', '134');
INSERT INTO `admin_role_permission` VALUES ('64', '135');
INSERT INTO `admin_role_permission` VALUES ('64', '136');
INSERT INTO `admin_role_permission` VALUES ('64', '137');
INSERT INTO `admin_role_permission` VALUES ('64', '138');
INSERT INTO `admin_role_permission` VALUES ('64', '140');
INSERT INTO `admin_role_permission` VALUES ('64', '141');
INSERT INTO `admin_role_permission` VALUES ('64', '142');
INSERT INTO `admin_role_permission` VALUES ('64', '143');
INSERT INTO `admin_role_permission` VALUES ('64', '144');
INSERT INTO `admin_role_permission` VALUES ('64', '145');
INSERT INTO `admin_role_permission` VALUES ('64', '146');
INSERT INTO `admin_role_permission` VALUES ('64', '147');
INSERT INTO `admin_role_permission` VALUES ('64', '148');
INSERT INTO `admin_role_permission` VALUES ('64', '149');
INSERT INTO `admin_role_permission` VALUES ('64', '150');
INSERT INTO `admin_role_permission` VALUES ('64', '151');
INSERT INTO `admin_role_permission` VALUES ('64', '152');
INSERT INTO `admin_role_permission` VALUES ('64', '153');
INSERT INTO `admin_role_permission` VALUES ('64', '154');
INSERT INTO `admin_role_permission` VALUES ('64', '155');
INSERT INTO `admin_role_permission` VALUES ('64', '156');
INSERT INTO `admin_role_permission` VALUES ('64', '158');
INSERT INTO `admin_role_permission` VALUES ('64', '159');
INSERT INTO `admin_role_permission` VALUES ('64', '160');
INSERT INTO `admin_role_permission` VALUES ('64', '161');
INSERT INTO `admin_role_permission` VALUES ('64', '162');
INSERT INTO `admin_role_permission` VALUES ('64', '164');
INSERT INTO `admin_role_permission` VALUES ('64', '165');
INSERT INTO `admin_role_permission` VALUES ('64', '167');
INSERT INTO `admin_role_permission` VALUES ('64', '168');
INSERT INTO `admin_role_permission` VALUES ('64', '169');
INSERT INTO `admin_role_permission` VALUES ('64', '170');
INSERT INTO `admin_role_permission` VALUES ('64', '171');
INSERT INTO `admin_role_permission` VALUES ('64', '172');
INSERT INTO `admin_role_permission` VALUES ('64', '173');
INSERT INTO `admin_role_permission` VALUES ('64', '174');
INSERT INTO `admin_role_permission` VALUES ('64', '177');
INSERT INTO `admin_role_permission` VALUES ('64', '178');
INSERT INTO `admin_role_permission` VALUES ('64', '179');
INSERT INTO `admin_role_permission` VALUES ('64', '180');
INSERT INTO `admin_role_permission` VALUES ('64', '181');
INSERT INTO `admin_role_permission` VALUES ('64', '182');
INSERT INTO `admin_role_permission` VALUES ('64', '183');
INSERT INTO `admin_role_permission` VALUES ('64', '184');
INSERT INTO `admin_role_permission` VALUES ('64', '185');
INSERT INTO `admin_role_permission` VALUES ('64', '186');
INSERT INTO `admin_role_permission` VALUES ('64', '187');
INSERT INTO `admin_role_permission` VALUES ('64', '188');
INSERT INTO `admin_role_permission` VALUES ('64', '189');
INSERT INTO `admin_role_permission` VALUES ('64', '190');
INSERT INTO `admin_role_permission` VALUES ('64', '191');
INSERT INTO `admin_role_permission` VALUES ('64', '192');
INSERT INTO `admin_role_permission` VALUES ('64', '193');
INSERT INTO `admin_role_permission` VALUES ('64', '194');
INSERT INTO `admin_role_permission` VALUES ('64', '195');
INSERT INTO `admin_role_permission` VALUES ('64', '196');
INSERT INTO `admin_role_permission` VALUES ('64', '197');
INSERT INTO `admin_role_permission` VALUES ('64', '198');
INSERT INTO `admin_role_permission` VALUES ('64', '199');
INSERT INTO `admin_role_permission` VALUES ('64', '200');
INSERT INTO `admin_role_permission` VALUES ('64', '201');
INSERT INTO `admin_role_permission` VALUES ('64', '202');
INSERT INTO `admin_role_permission` VALUES ('64', '203');
INSERT INTO `admin_role_permission` VALUES ('64', '204');
INSERT INTO `admin_role_permission` VALUES ('64', '205');
INSERT INTO `admin_role_permission` VALUES ('64', '206');
INSERT INTO `admin_role_permission` VALUES ('64', '207');
INSERT INTO `admin_role_permission` VALUES ('64', '208');
INSERT INTO `admin_role_permission` VALUES ('64', '209');
INSERT INTO `admin_role_permission` VALUES ('64', '210');
INSERT INTO `admin_role_permission` VALUES ('64', '211');
INSERT INTO `admin_role_permission` VALUES ('64', '212');
INSERT INTO `admin_role_permission` VALUES ('64', '213');
INSERT INTO `admin_role_permission` VALUES ('64', '214');
INSERT INTO `admin_role_permission` VALUES ('64', '215');
INSERT INTO `admin_role_permission` VALUES ('64', '216');
INSERT INTO `admin_role_permission` VALUES ('64', '217');
INSERT INTO `admin_role_permission` VALUES ('64', '218');
INSERT INTO `admin_role_permission` VALUES ('64', '219');
INSERT INTO `admin_role_permission` VALUES ('64', '220');
INSERT INTO `admin_role_permission` VALUES ('64', '221');
INSERT INTO `admin_role_permission` VALUES ('64', '222');
INSERT INTO `admin_role_permission` VALUES ('64', '223');
INSERT INTO `admin_role_permission` VALUES ('64', '224');
INSERT INTO `admin_role_permission` VALUES ('64', '225');
INSERT INTO `admin_role_permission` VALUES ('64', '226');
INSERT INTO `admin_role_permission` VALUES ('64', '227');
INSERT INTO `admin_role_permission` VALUES ('64', '228');
INSERT INTO `admin_role_permission` VALUES ('64', '229');
INSERT INTO `admin_role_permission` VALUES ('64', '230');
INSERT INTO `admin_role_permission` VALUES ('64', '231');
INSERT INTO `admin_role_permission` VALUES ('64', '232');
INSERT INTO `admin_role_permission` VALUES ('64', '233');
INSERT INTO `admin_role_permission` VALUES ('64', '234');
INSERT INTO `admin_role_permission` VALUES ('64', '235');
INSERT INTO `admin_role_permission` VALUES ('64', '236');
INSERT INTO `admin_role_permission` VALUES ('64', '237');
INSERT INTO `admin_role_permission` VALUES ('64', '238');
INSERT INTO `admin_role_permission` VALUES ('64', '239');
INSERT INTO `admin_role_permission` VALUES ('64', '240');
INSERT INTO `admin_role_permission` VALUES ('64', '241');
INSERT INTO `admin_role_permission` VALUES ('64', '242');
INSERT INTO `admin_role_permission` VALUES ('64', '243');
INSERT INTO `admin_role_permission` VALUES ('64', '244');
INSERT INTO `admin_role_permission` VALUES ('64', '245');
INSERT INTO `admin_role_permission` VALUES ('64', '246');
INSERT INTO `admin_role_permission` VALUES ('64', '247');
INSERT INTO `admin_role_permission` VALUES ('64', '248');
INSERT INTO `admin_role_permission` VALUES ('64', '249');
INSERT INTO `admin_role_permission` VALUES ('64', '250');
INSERT INTO `admin_role_permission` VALUES ('64', '251');
INSERT INTO `admin_role_permission` VALUES ('64', '252');
INSERT INTO `admin_role_permission` VALUES ('64', '253');
INSERT INTO `admin_role_permission` VALUES ('64', '254');
INSERT INTO `admin_role_permission` VALUES ('64', '255');

-- ----------------------------
-- Table structure for advertise
-- ----------------------------
DROP TABLE IF EXISTS `advertise`;
CREATE TABLE `advertise` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `advertise_type` int(11) NOT NULL,
  `auto` int(11) DEFAULT NULL,
  `autoword` varchar(255) DEFAULT NULL,
  `coin_unit` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deal_amount` decimal(18,8) DEFAULT NULL COMMENT '交易中数量',
  `level` int(11) DEFAULT NULL,
  `limit_money` varchar(255) DEFAULT NULL,
  `max_limit` decimal(18,2) DEFAULT NULL COMMENT '最高单笔交易额',
  `min_limit` decimal(18,2) DEFAULT NULL COMMENT '最低单笔交易额',
  `number` decimal(18,8) DEFAULT NULL COMMENT '计划数量',
  `pay_mode` varchar(255) DEFAULT NULL,
  `premise_rate` decimal(18,6) DEFAULT NULL COMMENT '溢价百分比',
  `price` decimal(18,2) DEFAULT NULL COMMENT '交易价格',
  `price_type` int(11) NOT NULL,
  `remain_amount` decimal(18,8) DEFAULT NULL COMMENT '计划剩余数量',
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `time_limit` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `coin_id` bigint(20) NOT NULL,
  `country` varchar(255) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK75rse9iecdnimf8ugtf20c43l` (`coin_id`) USING BTREE,
  KEY `FK9lueh92242ckyajg17xr9tcie` (`country`) USING BTREE,
  KEY `FKspoip5yq9ednwwondsga9c9k6` (`member_id`) USING BTREE,
  CONSTRAINT `FK75rse9iecdnimf8ugtf20c43l` FOREIGN KEY (`coin_id`) REFERENCES `otc_coin` (`id`),
  CONSTRAINT `FK9lueh92242ckyajg17xr9tcie` FOREIGN KEY (`country`) REFERENCES `country` (`zh_name`),
  CONSTRAINT `FKspoip5yq9ednwwondsga9c9k6` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of advertise
-- ----------------------------

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `is_show` bit(1) DEFAULT NULL,
  `is_top` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `announcement_classification` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of announcement
-- ----------------------------
INSERT INTO `announcement` VALUES ('1', '<p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(17, 17, 17); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">尊敬的用户：</font></span><span style=\"font-family: 微软雅黑; color: rgb(17, 17, 17); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(17, 17, 17); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\"><br></font></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(17, 17, 17); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">为保证</font>BIZZAN平台系统平稳运行，平台将开启注册测试，</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">邀您体验！请提前做好</font></span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">注册</font></span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">准备。</font></span><span style=\"font-family: 微软雅黑; color: rgb(17, 17, 17); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\"><br></font></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">平台测试时间：</font>2020年09月26号22：00-----2020年10月3号22：00</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">开放交易时间：</font></span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2020年10月3号12：00后平台将开放交易</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">测试内容：</font></span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\"><br></font></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">1：平台注册功能。</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2：平台OTC功能。</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">3：平台运行状态。</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">4：网页链接错误信息。</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">5：其他功能上的漏洞。</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">6：其他建议或需要完善的地方。</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">感谢您对</font></span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">BIZZAN</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">的支持！</font></span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\"><br></font></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">BIZZAN</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">团队</font></span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2020</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">年</font></span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">9</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">月</font></span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">25</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">日</font></span><span style=\"font-family: 微软雅黑; color: rgb(17, 17, 17); letter-spacing: 0pt; font-size: 10.5pt;\"><o:p></o:p></span></p>', '2020-09-25 21:35:53', null, '', '0', '12', 'BIZZAN开放注册测试', 'CN', '0');
INSERT INTO `announcement` VALUES ('2', '<p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(17, 17, 17); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">尊敬的用户：</font></span><span style=\"font-family: 微软雅黑; color: rgb(17, 17, 17); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(17, 17, 17); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(17, 17, 17); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">51WAN泛娱乐平台与BIZZAN达成战略合作，将开放51WAN数据全部平移至BIZZAN平台，平移期间数据将会进行二次审核，届时如有问题，请咨询51WAN或BIZZAN客服。</span><span style=\"font-family: 微软雅黑; color: rgb(17, 17, 17); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(17, 17, 17); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">平台间数据平移时间：</font>2020年09月18号12：00-----2020年09月28号12：00</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">平台间数据激活时间：</font>2020年09月28号12：00-----2020年10月5号12：00</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">51C交易时间：另行公告</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">平移内容：</font></span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\"><br></font></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">1：原51WAN账号信息。</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2：原51WAN全部资产。</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">3：原51WAN推荐关系。</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">注意事项：</font></span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\"><br></font></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">原</font>51WAN数据导入后登陆QIBIT平台原密码需使用原手机号码重置。</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">其他问题相关事项请咨询相关客服</font></span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\"><br></font></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">感谢您对</font></span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">BIZZAN</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">的支持！</font></span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\"><br></font></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">BIZZAN</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">团队</font></span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2020年9月</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">25</span><span style=\"font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 11pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font face=\"微软雅黑\">日</font></span><span style=\"font-family: 微软雅黑; color: rgb(17, 17, 17); letter-spacing: 0pt; font-size: 10.5pt;\"><o:p></o:p></span></p>', '2020-09-25 22:26:31', null, '', '0', '13', '51WAN数据平移通知', 'CN', '3');
INSERT INTO `announcement` VALUES ('3', '<p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(17, 17, 17); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">尊敬的用户：<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(17, 17, 17); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">BIZZAN</span><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(17, 17, 17); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">平台经过一周测试，收集和采纳了很多用户反馈和建议，平台将用户的反馈和建议进行修正，故延长测试交易时间，希望能够带给您更好的安全体验！<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">平台测试时间：<span lang=\"EN-US\">2020</span>年<span lang=\"EN-US\">09</span>月<span lang=\"EN-US\">26</span>号<span lang=\"EN-US\">12</span>：<span lang=\"EN-US\">00-----2020</span>年<span lang=\"EN-US\">10</span>月<span lang=\"EN-US\">03</span>号<span lang=\"EN-US\">12</span>：<span lang=\"EN-US\">00<o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">平台升级时间：<span lang=\"EN-US\">2020</span>年<span lang=\"EN-US\">10</span>月<span lang=\"EN-US\">03</span>号<span lang=\"EN-US\">12</span>：<span lang=\"EN-US\">00-----2020</span>年<span lang=\"EN-US\">10</span>月<span lang=\"EN-US\">10</span>号<span lang=\"EN-US\">12</span>：<span lang=\"EN-US\">00</span>（如遇不可控因素顺延）<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">开放交易时间：以公告时间为准</span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">升级内容：<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">1</span><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">：平台认证功能升级，增加人脸识别。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2</span><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">：平台<span lang=\"EN-US\">OTC</span>功能开放，增加<span lang=\"EN-US\">CTC</span>商家申请。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">3</span><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">：链上数据冲突，升级<span lang=\"EN-US\">51C</span>技术链<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">4</span><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">：平台运行状态持续监测。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">5</span><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">：矿机模式预备上线。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">6</span><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">：<span lang=\"EN-US\">APP</span>，<span lang=\"EN-US\">ui</span>升级。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">7</span><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">：增加登录验证方式，陆续增加谷歌，邮箱验证等。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">8</span><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">：原<span lang=\"EN-US\">51</span>客户数据部分紊乱调整。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">9</span><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">：其他建议或需要完善的地方。 <span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p>&nbsp;</o:p></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 11pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">感谢您对<span lang=\"EN-US\">BIZZAN</span>的支持！<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">BIZZAN</span><span style=\"font-size: 11pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">团队<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2020</span><span style=\"font-size: 11pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">年<span lang=\"EN-US\">10</span>月<span lang=\"EN-US\">3</span>日</span><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:\n微软雅黑;color:#111111\"><o:p></o:p></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></p>', '2020-10-03 11:51:28', null, '', '0', '3', 'BIZZAN升级并延迟交易测试', 'zh_CN', '3');
INSERT INTO `announcement` VALUES ('4', '<p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(17, 17, 17); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">尊敬的用户：<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(17, 17, 17); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">BIZZAN</span><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(17, 17, 17); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">平台经过一周测试，收集和采纳了很多用户反馈和建议，平台将用户的反馈和建议进行修正，故延长测试交易时间，希望能够带给您更好的安全体验！<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">平台测试时间：<span lang=\"EN-US\">2020</span>年<span lang=\"EN-US\">09</span>月<span lang=\"EN-US\">26</span>号<span lang=\"EN-US\">12</span>：<span lang=\"EN-US\">00-----2020</span>年<span lang=\"EN-US\">10</span>月<span lang=\"EN-US\">03</span>号<span lang=\"EN-US\">12</span>：<span lang=\"EN-US\">00<o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">平台升级时间：<span lang=\"EN-US\">2020</span>年<span lang=\"EN-US\">10</span>月<span lang=\"EN-US\">03</span>号<span lang=\"EN-US\">12</span>：<span lang=\"EN-US\">00-----2020</span>年<span lang=\"EN-US\">10</span>月<span lang=\"EN-US\">10</span>号<span lang=\"EN-US\">12</span>：<span lang=\"EN-US\">00</span>（如遇不可控因素顺延）<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">开放交易时间：以公告时间为准</span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">升级内容：<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">1</span><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">：平台认证功能升级，增加人脸识别。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2</span><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">：平台<span lang=\"EN-US\">OTC</span>功能开放，增加<span lang=\"EN-US\">CTC</span>商家申请。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">3</span><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">：链上数据冲突，升级<span lang=\"EN-US\">51C</span>技术链<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">4</span><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">：平台运行状态持续监测。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">5</span><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">：矿机模式预备上线。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">6</span><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">：<span lang=\"EN-US\">APP</span>，<span lang=\"EN-US\">ui</span>升级。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">7</span><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">：增加登录验证方式，陆续增加谷歌，邮箱验证等。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">8</span><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">：原<span lang=\"EN-US\">51</span>客户数据部分紊乱调整。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">9</span><span style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">：其他建议或需要完善的地方。 <span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p>&nbsp;</o:p></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 11pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">感谢您对<span lang=\"EN-US\">BIZZAN</span>的支持！<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">BIZZAN</span><span style=\"font-size: 11pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">团队<span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2020</span><span style=\"font-size: 11pt; font-family: 微软雅黑, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">年<span lang=\"EN-US\">10</span>月<span lang=\"EN-US\">3</span>日</span><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:\n微软雅黑;color:#111111\"><o:p></o:p></span></p><p style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></p>', '2020-10-03 11:51:29', null, '', '0', '11', 'BIZZAN升级并延迟交易测试', 'zh_CN', '3');
INSERT INTO `announcement` VALUES ('10', '<p class=\"p\" style=\"margin:0cm\"><span style=\"font-size:10.5pt;font-family:&quot;微软雅黑&quot;,sans-serif;\nmso-bidi-font-family:Helvetica;color:#111111\">尊敬的用户：</span><span lang=\"EN-US\"><u1:p></u1:p></span><o:p></o:p><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span></p><p class=\"p\" style=\"margin:0cm\"><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif; letter-spacing: 1.15pt;\">&nbsp;</span></p><p class=\"p\" style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\n&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:Helvetica;color:#111111\">BIZZAN</span><span style=\"font-size:10.5pt;font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:\nHelvetica;color:#111111\">试运营十五天，平台用户量激增，为更好的为客户提供服务体验，将于<span lang=\"EN-US\">2020</span>年<span lang=\"EN-US\">10</span>月<span lang=\"EN-US\">19</span>日下午<span lang=\"EN-US\">17</span>：<span lang=\"EN-US\">30</span>进行服务器升级，升级时间为<span lang=\"EN-US\">2</span>小时，敬请大家关注！<span lang=\"EN-US\"><o:p></o:p></span></span></span></p><p class=\"p\" style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:\nHelvetica;color:#111111\"><br></span></span></p><p class=\"p\" style=\"margin:0cm\"><span style=\"font-size:10.5pt;font-family:&quot;微软雅黑&quot;,sans-serif;\nmso-bidi-font-family:Helvetica;color:#111111\">升级内容：<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"p\" style=\"margin:0cm\"><span lang=\"EN-US\" style=\"font-size:10.5pt;\nfont-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:Helvetica;color:#111111\">1</span><span style=\"font-size:10.5pt;font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:\nHelvetica;color:#111111\">：钱包服务器扩容。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"p\" style=\"margin:0cm\"><span lang=\"EN-US\" style=\"font-size:10.5pt;\nfont-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:Helvetica;color:#111111\">2</span><span style=\"font-size:10.5pt;font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:\nHelvetica;color:#111111\">：主服务器扩容。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"p\" style=\"margin:0cm\"><span lang=\"EN-US\" style=\"font-size:11.0pt;\nfont-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:Helvetica;color:#333333\"><br>\n<!--[if !supportLineBreakNewLine]--><br>\n<!--[endif]--></span><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif; letter-spacing: 1.15pt;\"></span><o:p></o:p></p><p class=\"p\" style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:\n&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:Helvetica;color:#333333\">BIZZAN</span></span><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:11.0pt;font-family:&quot;微软雅黑&quot;,sans-serif;\nmso-bidi-font-family:Helvetica;color:#333333\">团队</span></span><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><u1:p></u1:p></span><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif; letter-spacing: 1.15pt;\"><o:p></o:p></span></p><p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n</p><p class=\"p\" style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:\n&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:Helvetica;color:#333333\">2020</span></span><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:11.0pt;font-family:&quot;微软雅黑&quot;,sans-serif;\nmso-bidi-font-family:Helvetica;color:#333333\">年</span><span lang=\"EN-US\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">10</span>月</span><span lang=\"EN-US\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">19</span>日</span></span><span lang=\"EN-US\" style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif; letter-spacing: 1.15pt;\"><o:p></o:p></span></p>', '2020-10-19 16:48:08', null, '', '0', '9', 'BIZZAN服务器更新公告', 'zh_CN', '3');
INSERT INTO `announcement` VALUES ('11', '<p>你好</p>', '2021-03-13 23:04:02', null, '', '0', '8', '时间就是金钱', 'zh_CN', '0');

-- ----------------------------
-- Table structure for app_revision
-- ----------------------------
DROP TABLE IF EXISTS `app_revision`;
CREATE TABLE `app_revision` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `download_url` varchar(255) DEFAULT NULL,
  `platform` int(11) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of app_revision
-- ----------------------------
INSERT INTO `app_revision` VALUES ('1', '1', '0', '2020-09-28 12:20:03', '安卓APP', '1.0.6');
INSERT INTO `app_revision` VALUES ('2', 'https://www.bizzan.pro/app', '1', '2020-09-28 00:00:00', '苹果APP', '1.0.0');

-- ----------------------------
-- Table structure for appeal
-- ----------------------------
DROP TABLE IF EXISTS `appeal`;
CREATE TABLE `appeal` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `associate_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deal_with_time` datetime DEFAULT NULL,
  `initiator_id` bigint(20) DEFAULT NULL,
  `is_success` int(11) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_todwxorutclquf69bwow70kml` (`order_id`) USING BTREE,
  KEY `FKanmcnj859x2tv3y0pv7u05cqa` (`admin_id`) USING BTREE,
  CONSTRAINT `FKanmcnj859x2tv3y0pv7u05cqa` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `FKs3vo8h01sq39icylq1qdwekn1` FOREIGN KEY (`order_id`) REFERENCES `otc_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of appeal
-- ----------------------------
INSERT INTO `appeal` VALUES ('1', '600800', '2020-11-09 04:56:51', null, '1', null, '测试', '0', null, '11');

-- ----------------------------
-- Table structure for business_auth_apply
-- ----------------------------
DROP TABLE IF EXISTS `business_auth_apply`;
CREATE TABLE `business_auth_apply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(19,2) DEFAULT NULL,
  `auditing_time` datetime DEFAULT NULL,
  `auth_info` text,
  `certified_business_status` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deposit_record_id` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `business_auth_deposit_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKds72omottejlk5isd34ha5i10` (`business_auth_deposit_id`) USING BTREE,
  KEY `FKdghp8ri44t77ntuw06gicphuu` (`member_id`) USING BTREE,
  CONSTRAINT `FKdghp8ri44t77ntuw06gicphuu` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKds72omottejlk5isd34ha5i10` FOREIGN KEY (`business_auth_deposit_id`) REFERENCES `business_auth_deposit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of business_auth_apply
-- ----------------------------

-- ----------------------------
-- Table structure for business_auth_deposit
-- ----------------------------
DROP TABLE IF EXISTS `business_auth_deposit`;
CREATE TABLE `business_auth_deposit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '保证金数额',
  `create_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKfj3hxtr3ae1yma9bxeuqc29pj` (`admin_id`) USING BTREE,
  KEY `FKjx7799a3pwdtnu43fkpn27kj6` (`coin_id`) USING BTREE,
  CONSTRAINT `FKfj3hxtr3ae1yma9bxeuqc29pj` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `FKjx7799a3pwdtnu43fkpn27kj6` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of business_auth_deposit
-- ----------------------------
INSERT INTO `business_auth_deposit` VALUES ('1', '10000.00000000', '2020-09-29 04:57:10', '0', '1', 'USDT');
INSERT INTO `business_auth_deposit` VALUES ('2', '100.00000000', '2020-11-03 15:56:03', '0', '1', 'BitcoinCash');

-- ----------------------------
-- Table structure for bussiness_cancel_apply
-- ----------------------------
DROP TABLE IF EXISTS `bussiness_cancel_apply`;
CREATE TABLE `bussiness_cancel_apply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cancel_apply_time` datetime DEFAULT NULL,
  `deposit_record_id` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `handle_time` datetime DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKbwtwtm0jd1eqa8dh7e8ychcx1` (`member_id`) USING BTREE,
  CONSTRAINT `FKbwtwtm0jd1eqa8dh7e8ychcx1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bussiness_cancel_apply
-- ----------------------------

-- ----------------------------
-- Table structure for coin
-- ----------------------------
DROP TABLE IF EXISTS `coin`;
CREATE TABLE `coin` (
  `name` varchar(255) NOT NULL,
  `can_auto_withdraw` int(11) DEFAULT NULL,
  `can_recharge` int(11) DEFAULT NULL,
  `can_transfer` int(11) DEFAULT NULL,
  `can_withdraw` int(11) DEFAULT NULL,
  `cny_rate` double NOT NULL,
  `enable_rpc` int(11) DEFAULT NULL,
  `is_platform_coin` int(11) DEFAULT NULL,
  `max_tx_fee` double NOT NULL,
  `max_withdraw_amount` decimal(18,8) DEFAULT NULL COMMENT '最大提币数量',
  `min_tx_fee` double NOT NULL,
  `min_withdraw_amount` decimal(18,8) DEFAULT NULL COMMENT '最小提币数量',
  `name_cn` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `unit` varchar(255) NOT NULL,
  `usd_rate` double NOT NULL,
  `withdraw_threshold` decimal(18,8) DEFAULT NULL COMMENT '提现阈值',
  `has_legal` bit(1) NOT NULL DEFAULT b'0',
  `cold_wallet_address` varchar(255) DEFAULT NULL,
  `miner_fee` decimal(18,8) DEFAULT NULL COMMENT '矿工费',
  `withdraw_scale` int(11) DEFAULT '4' COMMENT '提币精度',
  `information` varchar(255) DEFAULT NULL,
  `infolink` varchar(255) DEFAULT NULL,
  `account_type` int(11) DEFAULT '0' COMMENT '币种账户类型',
  `deposit_address` varchar(255) DEFAULT NULL,
  `min_recharge_amount` decimal(18,8) DEFAULT NULL COMMENT '最小充值数量',
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of coin
-- ----------------------------
INSERT INTO `coin` VALUES ('BItball', '0', '0', '1', '0', '0', '0', '0', '10', '100000.00000000', '0.1', '10.00000000', '比特权', '20', '0', 'BTB', '0', '0.00000000', '\0', null, null, '0', '', '', '0', '', '1.00000000');
INSERT INTO `coin` VALUES ('Bitcoin', '0', '1', '1', '1', '0', '1', '0', '0.01', '5.00000000', '0.001', '0.00200000', '比特币', '3', '0', 'BTC', '0', '0.10000000', '\0', null, '0.00002000', '4', '比特币（BitCoin）的概念最初由中本聪在2008年提出，根据中本聪的思路设计发布的开源软件以及建构其上的P2P网络。比特币是一种P2P形式的数字货币。点对点的传输意味着一个去中心化的支付系统。', 'https://www.51mex.io/helpdetail?cate=3&id=10&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99', '0', null, '0.10000000');
INSERT INTO `coin` VALUES ('BitcoinCash', '0', '1', '1', '1', '0', '1', '0', '0.01', '1000.00000000', '0.001', '0.10000000', 'BCHABC', '5', '0', 'BCH', '0', '0.01000000', '\0', null, null, '0', '比特币现金（BitcoinCash）与比特币相同，是一种基于去中心化，采用点对点网络与共识主动性，开放源代码，以区块链作为底层技术的加密货货币。', 'https://www.51mex.io/helpdetail?cate=3&id=14&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99', '0', null, '0.01000000');
INSERT INTO `coin` VALUES ('BitcoinSV', '0', '1', '1', '1', '0', '1', '0', '0.0008', '1000.00000000', '0.0005', '0.20000000', 'BSV', '6', '0', 'BSV', '0', '0.00010000', '\0', null, null, '0', 'BSV（Bitcoin Satoshi Vision）是遵循中本聪白皮书原始设计和协议稳定的比特币，实现原定的大规模链上扩容愿景，旨在成为全球通用的点对点电子现金与价值数据传输网络。', 'https://www.51mex.io/helpdetail?cate=3&id=42&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99', '0', null, '0.01000000');
INSERT INTO `coin` VALUES ('EOS', '0', '1', '1', '1', '0', '0', '0', '1', '10000.00000000', '0.1', '20.00000000', 'Enterprise Operation System', '7', '0', 'EOS', '0', '0.00100000', '\0', null, null, '0', 'EOS是区块链奇才BM（Daniel Larimer）领导开发的类似操作系统的区块链架构平台，旨在实现分布式应用的性能扩展。EOS 提供帐户，身份验证，数据库，异步通信以及在数以百计的CPU或群集上的程序调度。', 'https://www.51mex.io/helpdetail?cate=3&id=15&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99', '1', null, '0.10000000');
INSERT INTO `coin` VALUES ('Ethereum', '0', '1', '1', '1', '0', '1', '0', '0.2', '1000.00000000', '0.01', '0.10000000', '以太坊', '4', '0', 'ETH', '0', '0.01000000', '\0', null, null, '0', 'Ethereum（以太坊）是一个平台和一种编程语言，使开发人员能够建立和发布下一代分布式应用。 Ethereum可以用来编程，分散，担保和交易任何事物：投票，域名，金融交易所，众筹，公司管理， 合同和大部分的协议，知识产权，还有得益于硬件集成的智能资产。', 'https://www.51mex.io/helpdetail?cate=3&id=11&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99', '0', null, '0.01000000');
INSERT INTO `coin` VALUES ('EUSDT', '0', '1', '1', '1', '0', '0', '0', '10', '10000.00000000', '4', '10.00000000', 'EUSDT', '2', '0', 'EUSDT', '0', '1.00000000', '\0', '', null, '0', '', '', '0', '', '1.00000000');
INSERT INTO `coin` VALUES ('Litecoin', '0', '1', '1', '1', '0', '1', '0', '0.005', '1000.00000000', '0.001', '0.20000000', '莱特币', '10', '0', 'LTC', '0', '0.00001000', '\0', null, null, '0', '莱特币 (Litecoin, LTC) 是受比特币(BitCoin, BTC) 的启发而推出的改进版数字货币，由一名曾任职于谷歌的程序员设计并编程实现 , 2011年11月9日发布运行。莱特币与比特币在技术上具有相同的实现原理，但莱特币的创造和转让基于一种开源的加密协议，不受到任何中央机构的管理。', 'https://www.51mex.io/helpdetail?cate=3&id=13&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99', '0', null, '0.00010000');
INSERT INTO `coin` VALUES ('Ripple', '0', '1', '1', '1', '0', '0', '0', '5', '100000.00000000', '0.15', '30.00000000', '瑞波币', '8', '0', 'XRP', '0', '1.00000000', '\0', null, null, '0', 'Ripple(瑞波)是世界上第一个开放的支付网络，通过这个支付网络可以转账任意一种货币，简便易行快捷，交易确认在几秒以内完成，交易费用几乎是零，没有所谓的跨行异地以及跨国支付费用。Ripple开放式支付系统是一个虚拟货币网络、未来的电子支付平台。', 'https://www.51mex.io/helpdetail?cate=3&id=12&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99', '1', null, '1.00000000');
INSERT INTO `coin` VALUES ('USDT', '0', '1', '1', '1', '6.71', '1', '0', '10', '100000.00000000', '4', '10.00000000', '泰达币', '1', '0', 'USDT', '1', '1.00000000', '\0', '0xeEAc71040c749a3D632A8Fd7f966a1e98FA23323', null, '0', '', '', '0', '', '1.00000000');

-- ----------------------------
-- Table structure for contract_coin
-- ----------------------------
DROP TABLE IF EXISTS `contract_coin`;
CREATE TABLE `contract_coin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `base_coin_scale` int(11) NOT NULL,
  `base_symbol` varchar(255) DEFAULT NULL,
  `close_fee` decimal(18,8) DEFAULT '0.00010000' COMMENT '平仓手续费',
  `coin_scale` int(11) NOT NULL,
  `coin_symbol` varchar(255) DEFAULT NULL,
  `enable` int(2) DEFAULT '1' COMMENT '状态',
  `enable_market_buy` int(2) DEFAULT '1' COMMENT '是否启用市价开仓做多',
  `enable_market_sell` int(2) DEFAULT '1' COMMENT '是否启用市价开仓做空',
  `enable_open_buy` int(2) DEFAULT '1' COMMENT '是否允许开仓做多',
  `enable_open_sell` int(2) DEFAULT '1' COMMENT '是否允许开仓做空',
  `enable_trigger_entrust` int(2) DEFAULT '1' COMMENT '是否启用开仓计划委托',
  `exchangeable` int(2) DEFAULT '1' COMMENT '是否可交易',
  `fee_percent` decimal(18,8) DEFAULT '0.00100000' COMMENT '隔夜费率',
  `interval_hour` int(11) DEFAULT '1' COMMENT '点差类型',
  `leverage` varchar(255) DEFAULT NULL,
  `leverage_type` int(2) DEFAULT '1' COMMENT '点差类型',
  `maintenance_margin_rate` decimal(18,8) DEFAULT '0.00500000' COMMENT '维持保证金率',
  `maker_fee` decimal(18,8) DEFAULT '0.00010000' COMMENT '平多手续费',
  `max_share` decimal(18,8) DEFAULT '1000.00000000' COMMENT '最大手数',
  `min_share` decimal(18,8) DEFAULT '1.00000000' COMMENT '最小手数',
  `name` varchar(255) DEFAULT NULL,
  `open_fee` decimal(18,8) DEFAULT '0.00010000' COMMENT '开仓手续费',
  `share_number` decimal(18,8) DEFAULT NULL COMMENT '单位手数',
  `sort` int(11) NOT NULL,
  `spread` decimal(18,8) DEFAULT NULL COMMENT '点差',
  `spread_type` int(2) DEFAULT '1' COMMENT '点差类型',
  `symbol` varchar(255) DEFAULT NULL,
  `taker_fee` decimal(18,8) DEFAULT '0.00010000' COMMENT '平空手续费',
  `total_close_fee` decimal(26,8) DEFAULT NULL COMMENT '合约总平仓手续费',
  `total_loss` decimal(26,8) DEFAULT NULL COMMENT '合约平台亏损',
  `total_open_fee` decimal(26,8) DEFAULT NULL COMMENT '合约总开仓手续费',
  `total_profit` decimal(26,8) DEFAULT NULL COMMENT '合约平台盈利',
  `type` int(11) DEFAULT '0' COMMENT '合约类型',
  `visible` int(2) DEFAULT '1' COMMENT '前台可见状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of contract_coin
-- ----------------------------
INSERT INTO `contract_coin` VALUES ('1', '4', 'USDT', '0.00010000', '4', 'BTC', '1', '1', '1', '1', '1', '1', '1', '0.00100000', '8', '10,20,30,40,50,60,70,80,90,100', '1', '0.00500000', '0.00010000', '99999999.00000000', '1.00000000', 'BTC永续合约', '0.00010000', '100.00000000', '1', '0.00000000', '1', 'BTC/USDT', '0.00010000', '4671.16000000', '237913.70798900', '4771.28000000', '2005831.93333600', '0', '1');
INSERT INTO `contract_coin` VALUES ('2', '4', 'USDT', '0.00010000', '4', 'ETH', '1', '1', '1', '1', '1', '1', '1', '0.00100000', '8', '10,20,30,40,50,60,70,80,90,100', '1', '0.00500000', '0.00010000', '1000.00000000', '1.00000000', 'ETH永续', '0.00010000', '100.00000000', '1', '0.00000000', '1', 'ETH/USDT', '0.00010000', '0.00000000', '0.00000000', '0.02000000', '0.00000000', '0', '1');
INSERT INTO `contract_coin` VALUES ('3', '4', 'USDT', '0.00010000', '4', 'LTC', '1', '1', '1', '1', '1', '1', '1', '0.00100000', '8', '10,20,30,40,50,60,70,80,90,100', '1', '0.00500000', '0.00010000', '1000.00000000', '1.00000000', 'LTC永续', '0.00010000', '100.00000000', '1', '0.00000000', '1', 'LTC/USDT', '0.00010000', '0.00000000', '0.00000000', '0.01000000', '0.00000000', '0', '1');

-- ----------------------------
-- Table structure for contract_option
-- ----------------------------
DROP TABLE IF EXISTS `contract_option`;
CREATE TABLE `contract_option` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `close_price` decimal(18,8) DEFAULT NULL COMMENT '收盘价格',
  `close_time` bigint(20) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `init_buy` decimal(18,8) DEFAULT NULL COMMENT '买涨奖池总金额',
  `init_sell` decimal(18,8) DEFAULT NULL COMMENT '买涨奖池总金额',
  `open_price` decimal(18,8) DEFAULT NULL COMMENT '开盘价格',
  `open_time` bigint(20) DEFAULT NULL,
  `option_no` int(11) DEFAULT '0' COMMENT '合约序号',
  `result` int(4) DEFAULT '1' COMMENT '当局结果',
  `status` int(4) DEFAULT '1' COMMENT '本期合约状态',
  `symbol` varchar(255) DEFAULT NULL,
  `total_buy` decimal(18,8) DEFAULT NULL COMMENT '买涨奖池总金额',
  `total_buy_count` int(11) DEFAULT '0' COMMENT '买涨人数',
  `total_pl` decimal(18,8) DEFAULT NULL COMMENT '买涨奖池总金额',
  `total_sell` decimal(18,8) DEFAULT NULL COMMENT '买跌奖池总金额',
  `total_sell_count` int(11) DEFAULT '0' COMMENT '买涨人数',
  `preset_price` decimal(18,8) DEFAULT '0.00000000' COMMENT '预设收盘价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1344 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of contract_option
-- ----------------------------

-- ----------------------------
-- Table structure for contract_option_coin
-- ----------------------------
DROP TABLE IF EXISTS `contract_option_coin`;
CREATE TABLE `contract_option_coin` (
  `symbol` varchar(255) NOT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `base_coin_scale` int(11) DEFAULT '4' COMMENT '基币小数精度',
  `base_symbol` varchar(255) DEFAULT NULL,
  `close_time_gap` int(11) DEFAULT '300' COMMENT '开盘到收盘时间间隔',
  `coin_scale` int(11) DEFAULT '4' COMMENT '交易币小数精度',
  `coin_symbol` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `enable` int(2) DEFAULT '1' COMMENT '状态',
  `enable_buy` int(2) DEFAULT '1' COMMENT '是否允许看涨',
  `enable_sell` int(2) DEFAULT '1' COMMENT '是否允许看跌',
  `fee_percent` decimal(8,4) DEFAULT NULL COMMENT '开仓手续费',
  `init_buy_reward` decimal(8,4) DEFAULT NULL COMMENT '初始买涨奖池金额',
  `init_sell_reward` decimal(8,4) DEFAULT NULL COMMENT '初始买跌奖池金额',
  `max_option_no` int(11) DEFAULT '0' COMMENT '最新期号',
  `name` varchar(255) DEFAULT NULL,
  `ngnore_percent` decimal(8,4) DEFAULT '0.0001' COMMENT '忽视涨跌幅度',
  `open_time_gap` int(11) DEFAULT '300' COMMENT '开始到开盘时间间隔',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `tied_type` int(2) DEFAULT '1' COMMENT '平局处理方式',
  `total_profit` decimal(8,4) DEFAULT NULL COMMENT '预测合约总盈利',
  `visible` int(2) DEFAULT '1' COMMENT '前台可见状态',
  `win_fee_percent` decimal(8,4) DEFAULT '0.0010' COMMENT '赢家手续费',
  `oods` decimal(8,4) DEFAULT '1.0000' COMMENT '赔率',
  PRIMARY KEY (`symbol`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of contract_option_coin
-- ----------------------------
INSERT INTO `contract_option_coin` VALUES ('BTC/USDT', '10,20,50,100,200,500,1000,2000', '4', 'USDT', '300', '4', 'BTC', '2020-11-29 02:00:20', '1', '1', '1', '0.0000', '0.0000', '0.0000', '449', 'BTC/USDT预测合约', null, '300', '1', '1', '0.0000', '1', '0.0010', '1.0000');
INSERT INTO `contract_option_coin` VALUES ('ETH/USDT', '10,20,50,100,200,500,1000,2000', '4', 'USDT', '300', '4', 'ETH', '2020-11-29 02:00:47', '1', '1', '1', '0.0000', '0.0000', '0.0000', '447', 'ETH/USDT预测合约', null, '300', '2', '1', '0.0000', '1', '0.0010', '1.0000');
INSERT INTO `contract_option_coin` VALUES ('LTC/USDT', '10,20,50,100,200,500,1000,2000', '4', 'USDT', '300', '4', 'LTC', '2020-11-29 02:01:05', '1', '1', '1', '0.0000', '0.0000', '0.0000', '447', 'LTC/USDT预测合约', null, '300', '3', '1', '0.0000', '1', '0.0010', '1.0000');

-- ----------------------------
-- Table structure for contract_option_order
-- ----------------------------
DROP TABLE IF EXISTS `contract_option_order`;
CREATE TABLE `contract_option_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `base_symbol` varchar(255) DEFAULT NULL,
  `bet_amount` decimal(18,8) DEFAULT NULL COMMENT '投注金额',
  `coin_symbol` varchar(255) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `direction` int(4) DEFAULT '1' COMMENT '方向',
  `fee` decimal(18,8) DEFAULT NULL COMMENT '手续费',
  `member_id` bigint(20) DEFAULT NULL,
  `option_id` bigint(20) DEFAULT NULL,
  `option_no` int(11) DEFAULT '0' COMMENT '合约序号',
  `result` int(4) DEFAULT '1' COMMENT '参与结果',
  `reward_amount` decimal(18,8) DEFAULT NULL COMMENT '胜利奖金',
  `status` int(4) DEFAULT '1' COMMENT '订单状态',
  `symbol` varchar(255) DEFAULT NULL,
  `win_fee` decimal(18,8) DEFAULT NULL COMMENT '抽水',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of contract_option_order
-- ----------------------------

-- ----------------------------
-- Table structure for contract_order_entrust
-- ----------------------------
DROP TABLE IF EXISTS `contract_order_entrust`;
CREATE TABLE `contract_order_entrust` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `base_symbol` varchar(255) DEFAULT NULL,
  `close_fee` decimal(18,8) DEFAULT NULL COMMENT '开仓手续费',
  `coin_symbol` varchar(255) DEFAULT NULL,
  `contract_id` bigint(20) DEFAULT NULL,
  `contract_order_entrust_id` varchar(255) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `current_price` decimal(18,8) DEFAULT NULL COMMENT '下单时价',
  `direction` int(11) DEFAULT '1' COMMENT '方向',
  `entrust_price` decimal(19,2) DEFAULT NULL,
  `entrust_type` int(11) DEFAULT '0' COMMENT '委托订单类型',
  `is_blast` int(2) DEFAULT '0' COMMENT '是否是计划委托的委托单',
  `is_from_spot` int(2) DEFAULT '0' COMMENT '是否是计划委托的委托单',
  `member_id` bigint(20) DEFAULT NULL,
  `open_fee` decimal(18,8) DEFAULT NULL COMMENT '开仓手续费',
  `patterns` int(11) DEFAULT '1' COMMENT '仓位模式',
  `principal_amount` decimal(18,8) DEFAULT NULL COMMENT '本金数量',
  `principal_unit` varchar(255) DEFAULT NULL,
  `profit_and_loss` decimal(18,8) DEFAULT NULL COMMENT '盈亏',
  `share_number` decimal(18,8) DEFAULT NULL COMMENT '合约面值',
  `status` int(11) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `traded_price` decimal(19,2) DEFAULT NULL,
  `traded_volume` decimal(18,8) DEFAULT NULL COMMENT '委托数量',
  `trigger_price` decimal(19,2) DEFAULT NULL,
  `triggering_time` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `volume` decimal(18,8) DEFAULT NULL COMMENT '委托数量',
  `is_agree` int(2) DEFAULT '0' COMMENT '是否同意协议',
  `is_reward` int(2) DEFAULT '0' COMMENT '是否已返佣',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=422 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of contract_order_entrust
-- ----------------------------

-- ----------------------------
-- Table structure for contract_reward_record
-- ----------------------------
DROP TABLE IF EXISTS `contract_reward_record`;
CREATE TABLE `contract_reward_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `num` decimal(18,8) DEFAULT NULL COMMENT '奖励数量',
  `type` int(11) DEFAULT NULL,
  `coin_id` varchar(255) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `from_member_id` bigint(20) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpealk2hwhjppr85yi2764xhpo` (`coin_id`),
  KEY `FK390fr8sh5bnxuc8q23gat1kcl` (`order_id`),
  KEY `FK5ofrlnudc62tw7cc4ghapkjmp` (`from_member_id`),
  KEY `FKpto449dtrxryaovu5yrg5dm62` (`member_id`),
  CONSTRAINT `FK390fr8sh5bnxuc8q23gat1kcl` FOREIGN KEY (`order_id`) REFERENCES `contract_order_entrust` (`id`),
  CONSTRAINT `FK5ofrlnudc62tw7cc4ghapkjmp` FOREIGN KEY (`from_member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKpealk2hwhjppr85yi2764xhpo` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`),
  CONSTRAINT `FKpto449dtrxryaovu5yrg5dm62` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contract_reward_record
-- ----------------------------

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `zh_name` varchar(255) NOT NULL,
  `area_code` varchar(255) DEFAULT NULL,
  `en_name` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `local_currency` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`zh_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('中国', '86', 'China', 'zh_CN', 'CNY', '0');
INSERT INTO `country` VALUES ('中国台湾', '886', 'Taiwan,China', 'zh_TW', 'TWD', '0');
INSERT INTO `country` VALUES ('新加坡', '65', 'Singapore', 'en_US', 'SGD', '0');
INSERT INTO `country` VALUES ('美国', '1', 'America', 'en_US', 'USD', '0');
INSERT INTO `country` VALUES ('香港', '852', 'HongKong', 'zh_HK', 'HKD', '0');

-- ----------------------------
-- Table structure for ctc_acceptor
-- ----------------------------
DROP TABLE IF EXISTS `ctc_acceptor`;
CREATE TABLE `ctc_acceptor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `cny_in` decimal(18,2) DEFAULT NULL COMMENT '买入CNY',
  `cny_out` decimal(18,2) DEFAULT NULL COMMENT '售出CNY',
  `usdt_in` decimal(18,2) DEFAULT NULL COMMENT '买入USDT',
  `usdt_out` decimal(18,2) DEFAULT NULL COMMENT '售出USDT',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKk3nfn54patdd6rwa0skk70tq6` (`member_id`) USING BTREE,
  CONSTRAINT `FKk3nfn54patdd6rwa0skk70tq6` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ctc_acceptor
-- ----------------------------
INSERT INTO `ctc_acceptor` VALUES ('1', '1', '1', '3500.00', '346.50', '50.00', '500.00');

-- ----------------------------
-- Table structure for ctc_order
-- ----------------------------
DROP TABLE IF EXISTS `ctc_order`;
CREATE TABLE `ctc_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ali_no` varchar(255) DEFAULT NULL,
  `qr_code_url` varchar(255) DEFAULT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `card_no` varchar(255) DEFAULT NULL,
  `cancel_reason` varchar(255) DEFAULT NULL,
  `cancel_time` datetime DEFAULT NULL,
  `complete_time` datetime DEFAULT NULL,
  `confirm_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `direction` int(11) NOT NULL,
  `money` decimal(18,2) DEFAULT NULL COMMENT '交易金额',
  `order_sn` varchar(255) NOT NULL,
  `pay_mode` varchar(255) NOT NULL,
  `pay_time` datetime DEFAULT NULL,
  `price` decimal(18,2) DEFAULT NULL COMMENT '价格',
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `qr_we_code_url` varchar(255) DEFAULT NULL,
  `wechat` varchar(255) DEFAULT NULL,
  `acceptor_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_t212u5lpa982v4yc0ue7c3eab` (`order_sn`) USING BTREE,
  KEY `FKgk8nq4d3ouoj9eyo1kfqtw0wq` (`acceptor_id`) USING BTREE,
  KEY `FK419ewpncecgofa3j1338d6ma6` (`member_id`) USING BTREE,
  CONSTRAINT `FK419ewpncecgofa3j1338d6ma6` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKgk8nq4d3ouoj9eyo1kfqtw0wq` FOREIGN KEY (`acceptor_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ctc_order
-- ----------------------------

-- ----------------------------
-- Table structure for data_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `data_dictionary`;
CREATE TABLE `data_dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bond` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of data_dictionary
-- ----------------------------
INSERT INTO `data_dictionary` VALUES ('1', 'register_allow', '新用户注册', '2019-09-19 15:06:48', '2019-09-19 15:06:48', '1');

-- ----------------------------
-- Table structure for dealer
-- ----------------------------
DROP TABLE IF EXISTS `dealer`;
CREATE TABLE `dealer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `flow_count` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dealer
-- ----------------------------

-- ----------------------------
-- Table structure for dealer_member_relation
-- ----------------------------
DROP TABLE IF EXISTS `dealer_member_relation`;
CREATE TABLE `dealer_member_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dealer_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dealer_member_relation
-- ----------------------------

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `leader_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_1t68827l97cwyxo9r1u6t4p7d` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '2019-08-27 13:33:20', '1', '客服部', '', '2019-08-27 13:33:20');
INSERT INTO `department` VALUES ('2', '2020-09-28 12:17:29', null, 'boos', '', '2020-10-09 18:53:04');
INSERT INTO `department` VALUES ('3', '2020-11-06 08:15:24', null, '演示', '', '2020-11-06 08:15:24');

-- ----------------------------
-- Table structure for deposit_record
-- ----------------------------
DROP TABLE IF EXISTS `deposit_record`;
CREATE TABLE `deposit_record` (
  `id` varchar(255) NOT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK7x5q0lmqqtty5i0w5mq09o8r7` (`coin_id`) USING BTREE,
  KEY `FKji8p5uoc1ad45npyf72rgf2lx` (`member_id`) USING BTREE,
  CONSTRAINT `FK7x5q0lmqqtty5i0w5mq09o8r7` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`),
  CONSTRAINT `FKji8p5uoc1ad45npyf72rgf2lx` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of deposit_record
-- ----------------------------

-- ----------------------------
-- Table structure for dividend_start_record
-- ----------------------------
DROP TABLE IF EXISTS `dividend_start_record`;
CREATE TABLE `dividend_start_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,6) DEFAULT NULL COMMENT '数量',
  `date` datetime DEFAULT NULL,
  `end` bigint(20) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `rate` decimal(18,2) DEFAULT NULL COMMENT '比例',
  `start` bigint(20) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK226c1iy2t1dt9tjjo20pum39d` (`admin_id`) USING BTREE,
  CONSTRAINT `FK226c1iy2t1dt9tjjo20pum39d` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dividend_start_record
-- ----------------------------

-- ----------------------------
-- Table structure for exchange_coin
-- ----------------------------
DROP TABLE IF EXISTS `exchange_coin`;
CREATE TABLE `exchange_coin` (
  `symbol` varchar(255) NOT NULL,
  `base_coin_scale` int(11) NOT NULL,
  `base_symbol` varchar(255) DEFAULT NULL,
  `coin_scale` int(11) NOT NULL,
  `coin_symbol` varchar(255) DEFAULT NULL,
  `enable` int(11) NOT NULL,
  `fee` decimal(8,4) DEFAULT NULL COMMENT '交易手续费',
  `sort` int(11) NOT NULL,
  `enable_market_buy` int(11) DEFAULT '1' COMMENT '是否启用市价买',
  `enable_market_sell` int(11) DEFAULT '1' COMMENT '是否启用市价卖',
  `min_sell_price` decimal(18,8) DEFAULT NULL COMMENT '最低挂单卖价',
  `flag` int(11) DEFAULT '0' COMMENT '默认为0，1表示推荐',
  `max_trading_order` int(11) DEFAULT '0' COMMENT '最大允许同时交易的订单数，0表示不限制',
  `max_trading_time` int(11) DEFAULT '0' COMMENT '委托超时自动下架时间，单位为秒，0表示不过期',
  `instrument` varchar(20) DEFAULT NULL COMMENT '交易类型，B2C2特有',
  `min_turnover` decimal(18,8) DEFAULT NULL COMMENT '最小挂单成交额',
  `max_volume` decimal(18,8) DEFAULT NULL COMMENT '最大下单量',
  `min_volume` decimal(18,8) DEFAULT NULL COMMENT '最小下单量',
  `zone` int(11) DEFAULT '0',
  `clear_time` varchar(30) DEFAULT '1' COMMENT '清盘时间',
  `end_time` varchar(30) DEFAULT '1' COMMENT '结束时间',
  `publish_price` decimal(18,8) DEFAULT NULL COMMENT ' 分摊发行价格',
  `publish_type` int(11) DEFAULT '1' COMMENT '发行活动类型 1:无活动,2:抢购发行,3:分摊发行',
  `start_time` varchar(30) DEFAULT '1' COMMENT '开始时间',
  `exchangeable` int(11) DEFAULT '1' COMMENT ' 是否可交易',
  `publish_amount` decimal(18,8) DEFAULT NULL COMMENT ' 活动发行数量',
  `visible` int(11) DEFAULT '1' COMMENT ' 前台可见状态',
  `max_buy_price` decimal(18,8) DEFAULT NULL COMMENT '最高买单价',
  `robot_type` int(11) DEFAULT '0' COMMENT '机器人类型',
  `enable_buy` int(11) DEFAULT '1' COMMENT '是否允许买',
  `enable_sell` int(11) DEFAULT '1' COMMENT '是否允许卖',
  PRIMARY KEY (`symbol`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of exchange_coin
-- ----------------------------
INSERT INTO `exchange_coin` VALUES ('BCH/BTC', '6', 'BTC', '4', 'BCH', '1', '0.0010', '13', '1', '1', '0.00000000', '0', '0', '0', null, '0.00000000', '0.00000000', '0.00000000', '0', '2020-10-28 00:57:14', '2020-10-28 00:57:14', null, '1', '2020-10-28 00:57:14', '2', '0.00000000', '1', '0.00000000', '0', '1', '1');
INSERT INTO `exchange_coin` VALUES ('BCH/USDT', '6', 'USDT', '4', 'BCH', '1', '0.0010', '4', '1', '1', '0.00100000', '1', '0', '0', null, '0.00010000', '0.00000000', '0.00100000', '0', '2019-09-14 15:26:31', '2019-09-14 15:26:31', null, '1', '2019-09-14 15:26:31', '2', '0.00000000', '1', '0.00000000', '0', '1', '1');
INSERT INTO `exchange_coin` VALUES ('BSV/BTC', '6', 'BTC', '4', 'BSV', '1', '0.0010', '14', '1', '1', '0.00000000', '0', '0', '0', null, '0.00000000', '0.00000000', '0.00000000', '0', '2020-10-28 00:57:40', '2020-10-28 00:57:40', null, '1', '2020-10-28 00:57:40', '2', '0.00000000', '1', '0.00000000', '0', '1', '1');
INSERT INTO `exchange_coin` VALUES ('BSV/USDT', '6', 'USDT', '6', 'BSV', '1', '0.0010', '5', '1', '1', '0.00010000', '1', '0', '0', null, '0.00100000', '0.00000000', '0.00100000', '0', '2019-09-17 14:49:23', '2019-09-17 14:49:23', null, '1', '2019-09-17 14:49:23', '2', '0.00000000', '1', '0.00000000', '0', '1', '1');
INSERT INTO `exchange_coin` VALUES ('BTB/USDT', '6', 'USDT', '4', 'BTB', '1', '0.0010', '16', '1', '1', '0.00000000', '0', '0', '0', null, '0.00000000', '0.00000000', '0.00000000', '0', '2021-03-07 11:49:03', '2021-03-07 11:49:03', null, '1', '2021-03-07 11:49:03', '1', '0.00000000', '1', '0.00000000', '1', '1', '1');
INSERT INTO `exchange_coin` VALUES ('BTC/USDT', '6', 'USDT', '8', 'BTC', '1', '0.0010', '1', '1', '1', '0.00100000', '1', '0', '0', null, '0.00010000', '0.00000000', '0.00100000', '0', '2019-09-08 11:22:19', '2019-09-08 11:22:19', null, '1', '2019-09-08 11:22:19', '1', '0.00000000', '1', '0.00000000', '0', '1', '1');
INSERT INTO `exchange_coin` VALUES ('EOS/ETH', '6', 'ETH', '4', 'EOS', '1', '0.0010', '12', '1', '1', '0.00000000', '0', '0', '0', null, '0.00000000', '0.00000000', '0.00000000', '0', '2020-10-28 00:55:09', '2020-10-28 00:55:09', null, '1', '2020-10-28 00:55:09', '2', '0.00000000', '1', '0.00000000', '0', '1', '1');
INSERT INTO `exchange_coin` VALUES ('EOS/USDT', '6', 'USDT', '4', 'EOS', '1', '0.0010', '7', '1', '1', '0.00010000', '0', '0', '0', null, '0.00100000', '0.00000000', '0.00100000', '0', '2019-09-18 15:14:25', '2019-09-18 15:14:25', null, '1', '2019-09-18 15:14:25', '2', '0.00000000', '1', '0.00000000', '0', '1', '1');
INSERT INTO `exchange_coin` VALUES ('ETH/BTC', '6', 'BTC', '4', 'ETH', '1', '0.0010', '9', '1', '1', '0.00000000', '0', '0', '0', null, '0.00000000', '0.00000000', '0.00000000', '0', '2020-10-28 00:50:36', '2020-10-28 00:50:36', null, '1', '2020-10-28 00:50:36', '2', '0.00000000', '1', '0.00000000', '0', '1', '1');
INSERT INTO `exchange_coin` VALUES ('ETH/USDT', '6', 'USDT', '4', 'ETH', '1', '0.0010', '2', '1', '1', '0.00100000', '1', '0', '0', null, '0.00100000', '0.00000000', '0.00100000', '0', '2019-09-11 13:45:01', '2019-09-11 13:45:01', null, '1', '2019-09-11 13:45:01', '1', '0.00000000', '1', '0.00000000', '0', '1', '1');
INSERT INTO `exchange_coin` VALUES ('LTC/ETH', '6', 'ETH', '4', 'LTC', '1', '0.0010', '11', '1', '1', '0.00000000', '0', '0', '0', null, '0.00000000', '0.00000000', '0.00000000', '0', '2020-10-28 00:54:31', '2020-10-28 00:54:31', null, '1', '2020-10-28 00:54:31', '2', '0.00000000', '1', '0.00000000', '0', '1', '1');
INSERT INTO `exchange_coin` VALUES ('LTC/USDT', '6', 'USDT', '4', 'LTC', '1', '0.0010', '6', '1', '1', '0.00010000', '1', '0', '0', null, '0.00010000', '0.00000000', '0.00010000', '0', '2019-09-16 14:37:10', '2019-09-16 14:37:10', null, '1', '2019-09-16 14:37:10', '2', '0.00000000', '1', '0.00000000', '0', '1', '1');
INSERT INTO `exchange_coin` VALUES ('XRP/ETH', '6', 'ETH', '4', 'XRP', '1', '0.0010', '10', '1', '1', '0.00000000', '0', '0', '0', null, '0.00000000', '0.00000000', '0.00000000', '0', '2020-10-28 00:52:11', '2020-10-28 00:52:11', null, '1', '2020-10-28 00:52:11', '2', '0.00000000', '1', '0.00000000', '0', '1', '1');
INSERT INTO `exchange_coin` VALUES ('XRP/USDT', '6', 'USDT', '4', 'XRP', '1', '0.0010', '3', '1', '1', '0.00010000', '1', '0', '0', null, '0.00010000', '0.00000000', '0.00100000', '0', '2019-09-12 19:12:07', '2019-09-12 19:12:07', null, '1', '2019-09-12 19:12:07', '2', '0.00000000', '1', '0.00000000', '0', '1', '1');

-- ----------------------------
-- Table structure for exchange_favor_symbol
-- ----------------------------
DROP TABLE IF EXISTS `exchange_favor_symbol`;
CREATE TABLE `exchange_favor_symbol` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `add_time` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=543 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of exchange_favor_symbol
-- ----------------------------

-- ----------------------------
-- Table structure for exchange_order
-- ----------------------------
DROP TABLE IF EXISTS `exchange_order`;
CREATE TABLE `exchange_order` (
  `order_id` varchar(255) NOT NULL,
  `amount` decimal(18,8) DEFAULT NULL,
  `base_symbol` varchar(255) DEFAULT NULL,
  `canceled_time` bigint(20) DEFAULT NULL,
  `coin_symbol` varchar(255) DEFAULT NULL,
  `completed_time` bigint(20) DEFAULT NULL,
  `direction` int(11) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `price` decimal(18,8) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `traded_amount` decimal(26,16) DEFAULT NULL,
  `turnover` decimal(26,16) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `use_discount` varchar(255) DEFAULT NULL,
  `order_resource` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of exchange_order
-- ----------------------------

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKmonjtjt92g6gruqyfumtmg8m8` (`member_id`) USING BTREE,
  CONSTRAINT `FKmonjtjt92g6gruqyfumtmg8m8` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES ('1', '2020-09-28 06:57:58', '上传照片是反转的', '42900');
INSERT INTO `feedback` VALUES ('2', '2020-09-30 06:37:54', '你好，我的资产与现有资产不符！麻烦给查收', '18797');
INSERT INTO `feedback` VALUES ('3', '2020-10-02 12:23:23', '您好，请问什么时候可以身份认证审核呢？急，谢谢！', '46632');
INSERT INTO `feedback` VALUES ('4', '2020-10-09 17:40:33', '你好，我当初买币时不需要身份认证，所以用了老公的手机号跟身份证号，现在平台需要本人身份证认证，我老公一直反对我做平台，他不知道这件事，请问我现在应该怎么解决这件事？我能不能换个手机号找朋友帮忙认证', '804680');
INSERT INTO `feedback` VALUES ('5', '2020-10-10 21:37:41', '实名通过不了', '830687');
INSERT INTO `feedback` VALUES ('6', '2020-10-15 11:40:05', '你好，我的实名认证已经做过的，也通过了为何现在后台显示有没有了？', '834401');
INSERT INTO `feedback` VALUES ('7', '2020-10-15 11:40:55', '你好，我的实名认证已经做过的，也通过了为何现在后台显示有没有了？', '807435');
INSERT INTO `feedback` VALUES ('8', '2020-10-16 16:12:22', '我已通过实名认证，但收款设置仍提示“请先完成实名认证”，请问怎么办？13906858577\n客服处发了图片，但没反应。', '817615');
INSERT INTO `feedback` VALUES ('9', '2020-10-16 22:45:46', '充币未到账', '800964');
INSERT INTO `feedback` VALUES ('10', '2020-10-17 20:33:02', '你好，我这个账号怎么没有释放％10\n', '843496');
INSERT INTO `feedback` VALUES ('11', '2020-10-18 12:59:18', '你好，提币两天了还没有审核麻烦给审核一下。\n', '838125');
INSERT INTO `feedback` VALUES ('12', '2020-10-21 09:50:33', '为什么我的卖单委托取消不了', '835269');

-- ----------------------------
-- Table structure for financial_item
-- ----------------------------
DROP TABLE IF EXISTS `financial_item`;
CREATE TABLE `financial_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coin_minnum` decimal(19,2) DEFAULT NULL,
  `coin_name` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deadline` int(11) NOT NULL,
  `item_desc` varchar(255) DEFAULT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_state` int(11) NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `yield` double DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of financial_item
-- ----------------------------

-- ----------------------------
-- Table structure for financial_order
-- ----------------------------
DROP TABLE IF EXISTS `financial_order`;
CREATE TABLE `financial_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coin_name` varchar(255) DEFAULT NULL,
  `coin_num` decimal(19,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `frozen_days` int(11) NOT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `order_no` bigint(20) DEFAULT NULL,
  `order_state` int(11) NOT NULL,
  `order_usdt_rate` double DEFAULT NULL,
  `plan_revenue_time` datetime DEFAULT NULL,
  `real_income` decimal(19,2) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of financial_order
-- ----------------------------

-- ----------------------------
-- Table structure for hot_transfer_record
-- ----------------------------
DROP TABLE IF EXISTS `hot_transfer_record`;
CREATE TABLE `hot_transfer_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) DEFAULT NULL,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '转账金额',
  `balance` decimal(18,8) DEFAULT NULL COMMENT '热钱包余额',
  `cold_address` varchar(255) DEFAULT NULL,
  `miner_fee` decimal(18,8) DEFAULT NULL COMMENT '矿工费',
  `transaction_number` varchar(255) DEFAULT NULL,
  `transfer_time` datetime DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of hot_transfer_record
-- ----------------------------

-- ----------------------------
-- Table structure for init_plate
-- ----------------------------
DROP TABLE IF EXISTS `init_plate`;
CREATE TABLE `init_plate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `final_price` varchar(255) DEFAULT NULL,
  `init_price` varchar(255) DEFAULT NULL,
  `interference_factor` varchar(255) DEFAULT NULL,
  `relative_time` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of init_plate
-- ----------------------------

-- ----------------------------
-- Table structure for legal_wallet_recharge
-- ----------------------------
DROP TABLE IF EXISTS `legal_wallet_recharge`;
CREATE TABLE `legal_wallet_recharge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,2) NOT NULL COMMENT '充值金额',
  `creation_time` datetime DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `pay_mode` int(11) NOT NULL,
  `payment_instrument` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_name` varchar(255) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKtfjvrkn1oe0yu2tfjh6qcms73` (`admin_id`) USING BTREE,
  KEY `FKsdtoqyvbjpd0bmw4n41ijc0kk` (`coin_name`) USING BTREE,
  KEY `FK170xpb7hoxqoj5ovdrcibs9gn` (`member_id`) USING BTREE,
  CONSTRAINT `FK170xpb7hoxqoj5ovdrcibs9gn` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKsdtoqyvbjpd0bmw4n41ijc0kk` FOREIGN KEY (`coin_name`) REFERENCES `coin` (`name`),
  CONSTRAINT `FKtfjvrkn1oe0yu2tfjh6qcms73` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of legal_wallet_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for legal_wallet_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `legal_wallet_withdraw`;
CREATE TABLE `legal_wallet_withdraw` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '申请总数量',
  `create_time` datetime DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `pay_mode` int(11) NOT NULL,
  `payment_instrument` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `remit_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_name` varchar(255) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKe95o0059kwsgmsxxv3amdb0d2` (`admin_id`) USING BTREE,
  KEY `FKbilsav1ug8vjtn4ffghrlogqx` (`coin_name`) USING BTREE,
  KEY `FKcpw5k7o3tchlifu1wqmjhku9t` (`member_id`) USING BTREE,
  CONSTRAINT `FKbilsav1ug8vjtn4ffghrlogqx` FOREIGN KEY (`coin_name`) REFERENCES `coin` (`name`),
  CONSTRAINT `FKcpw5k7o3tchlifu1wqmjhku9t` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKe95o0059kwsgmsxxv3amdb0d2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of legal_wallet_withdraw
-- ----------------------------

-- ----------------------------
-- Table structure for locked_order
-- ----------------------------
DROP TABLE IF EXISTS `locked_order`;
CREATE TABLE `locked_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `current_releaseamount` decimal(18,8) DEFAULT NULL COMMENT '当前周期释放数量',
  `end_time` varchar(30) NOT NULL DEFAULT '2000-01-01 01:00:00' COMMENT '结束时间',
  `image` varchar(255) DEFAULT NULL,
  `locked_days` int(11) NOT NULL,
  `locked_invite` decimal(24,8) DEFAULT NULL,
  `locked_invitelimit` decimal(24,8) DEFAULT NULL,
  `locked_status` int(11) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  `origin_releaseamount` decimal(18,8) DEFAULT NULL COMMENT '原始周期释放数量',
  `period` int(11) NOT NULL,
  `release_currentpercent` decimal(19,2) DEFAULT NULL,
  `release_percent` decimal(19,2) DEFAULT NULL,
  `release_times` decimal(24,8) DEFAULT NULL,
  `release_type` int(11) NOT NULL,
  `release_unit` varchar(255) DEFAULT NULL,
  `released_days` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `total_locked` decimal(18,8) DEFAULT NULL COMMENT '总锁仓',
  `total_release` decimal(18,8) DEFAULT NULL COMMENT '总释放',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of locked_order
-- ----------------------------

-- ----------------------------
-- Table structure for locked_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `locked_order_detail`;
CREATE TABLE `locked_order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `locked_order_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  `output` decimal(18,8) DEFAULT NULL COMMENT '矿机当期产出',
  `release_unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of locked_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ali_no` varchar(255) DEFAULT NULL,
  `qr_code_url` varchar(255) DEFAULT NULL,
  `appeal_success_times` int(11) NOT NULL,
  `appeal_times` int(11) NOT NULL,
  `application_time` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `card_no` varchar(255) DEFAULT NULL,
  `certified_business_apply_time` datetime DEFAULT NULL,
  `certified_business_check_time` datetime DEFAULT NULL,
  `certified_business_status` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_level` int(11) NOT NULL,
  `google_date` datetime DEFAULT NULL,
  `google_key` varchar(255) DEFAULT NULL,
  `google_state` int(11) DEFAULT NULL,
  `id_number` varchar(255) DEFAULT NULL,
  `inviter_id` bigint(20) DEFAULT NULL,
  `jy_password` varchar(255) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `login_count` int(11) NOT NULL,
  `margin` varchar(255) DEFAULT NULL,
  `member_level` int(11) DEFAULT NULL,
  `mobile_phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `promotion_code` varchar(255) DEFAULT NULL,
  `publish_advertise` int(11) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `real_name_status` int(11) DEFAULT NULL,
  `registration_time` datetime DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `second_level` int(11) NOT NULL,
  `sign_in_ability` bit(1) NOT NULL DEFAULT b'1',
  `status` int(11) DEFAULT NULL,
  `super_partner` varchar(255) DEFAULT NULL,
  `third_level` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_expire_time` datetime DEFAULT NULL,
  `transaction_status` int(11) DEFAULT NULL,
  `transactions` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `qr_we_code_url` varchar(255) DEFAULT NULL,
  `wechat` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_gc3jmn7c2abyo3wf6syln5t2i` (`username`) USING BTREE,
  UNIQUE KEY `UK_mbmcqelty0fbrvxp1q58dn57t` (`email`) USING BTREE,
  UNIQUE KEY `UK_10ixebfiyeqolglpuye0qb49u` (`mobile_phone`) USING BTREE,
  KEY `FKbt72vgf5myy3uhygc90xna65j` (`local`) USING BTREE,
  CONSTRAINT `FKbt72vgf5myy3uhygc90xna65j` FOREIGN KEY (`local`) REFERENCES `country` (`zh_name`)
) ENGINE=InnoDB AUTO_INCREMENT=600809 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1', null, null, '0', '0', '2020-09-26 21:43:26', '', '中国工商银行', '工行', '60002160601398896', '2020-10-24 18:22:37', '2020-10-24 18:29:10', '2', '97095646@qq.com', '0', null, null, null, '110101199003074000', null, 'edbf857a065c525f01341039a0ee28e2', null, null, '中国', null, null, '103', null, '2', '13791233111', 'edbf857a065c525f01341039a0ee28e2', '0QGW', '1', '机器人', '2', '2020-07-31 04:32:54', '333435303631393236333635313731373132', '0', '', '0', '1', '0', '831ec3850bd2896bb2980a06ad9c8e04', '2020-12-07 10:48:03', '1', '1', '13791233111', null, null, '中国');
INSERT INTO `member` VALUES ('600800', null, null, '0', '0', '2020-09-26 21:43:26', '', '', '', '60002160601398896', '2020-10-24 18:22:37', '2020-10-24 18:29:10', '2', null, '0', null, null, null, '110101199003074000', null, 'edbf857a065c525f01341039a0ee28e2', null, null, '中国', null, null, '164', null, '2', '13800138001', 'edbf857a065c525f01341039a0ee28e2', '0QGX', '1', '测试', '2', '2020-07-31 04:32:54', '333435303631393236333635313731373132', '0', '', '0', '1', '0', 'e6348317d0203471a9fdb130972539d0', '2021-03-20 23:10:11', '1', '1', '13800138001', null, null, '中国');
INSERT INTO `member` VALUES ('600801', null, null, '0', '0', null, 'https://bizzan.oss-cn-hangzhou.aliyuncs.com/defaultavatar.png', null, null, null, null, null, '0', null, '0', null, null, null, null, null, null, null, null, '中国', null, null, '4', null, '0', '18858125915', 'f6fdd4b760ed41d0ea1768ed303476ce', 'OQTI', '1', null, '0', '2020-11-02 15:25:30', '333739323930363137353535303632373834', '0', '', '0', '1', '0', 'c1a3658e6511bbff2073cfb8e1d6fc29', '2020-11-11 02:23:51', '1', '0', '18858125915', null, null, '中国');
INSERT INTO `member` VALUES ('600802', null, null, '0', '0', null, 'https://bizzan.oss-cn-hangzhou.aliyuncs.com/defaultavatar.png', null, null, null, null, null, '0', null, '0', null, null, null, null, null, null, null, null, '中国', null, null, '1', null, '0', '18305458968', 'af1470fe1ca3189d07a1db4109421dc3', 'OQTJ', '1', null, '0', '2020-11-08 18:44:36', '333831353135303530343533373030363038', '0', '', '0', '1', '0', null, '2020-11-15 18:44:46', '1', '0', '18305458968', null, null, '中国');
INSERT INTO `member` VALUES ('600803', null, null, '0', '0', '2020-11-11 18:02:57', 'https://bizzan.oss-cn-hangzhou.aliyuncs.com/defaultavatar.png', null, null, null, null, null, '0', null, '0', null, null, null, '370124199402270013', null, null, null, null, '中国', null, null, '7', null, '1', '18609730102', '4c26179824cd0cee255fb6ce875c28b0', 'OQT2', '1', '张三丰', '2', '2020-11-10 14:17:20', '333832313732353634393936333632323430', '0', '', '0', '0', '0', 'cae0ad346a4dcbbb80c142ba3371fe3b', '2021-03-15 15:17:20', '1', '0', '18609730102', null, null, '中国');
INSERT INTO `member` VALUES ('600804', null, null, '0', '0', null, 'https://bizzan.oss-cn-hangzhou.aliyuncs.com/defaultavatar.png', null, null, null, null, null, '0', null, '0', null, null, null, null, null, null, null, null, '中国', null, null, '2', null, '0', '15771791361', '7cf26b102eaafddab54b6665253bcd40', 'OQTR', '1', null, '0', '2020-11-12 21:34:22', '333833303037333235393237313136383030', '0', '', '0', '0', '0', null, '2020-11-19 22:00:24', '1', '0', '15771791361', null, null, '中国');
INSERT INTO `member` VALUES ('600805', null, null, '0', '0', null, null, null, null, null, null, null, '0', null, '0', null, null, null, null, null, null, null, null, '中国', null, null, '1', null, '0', '15801018660', '3719fa34b5012ee23e49c341b032f29e', 'OQTS', '1', null, '0', '2020-11-16 16:38:46', '333834333832343836383930383131333932', '0', '', '0', '1', '0', null, '2020-11-23 16:39:08', '1', '0', '15801018660', null, null, '中国');
INSERT INTO `member` VALUES ('600806', null, null, '0', '0', null, null, null, null, null, null, null, '0', null, '0', null, null, null, null, null, null, null, null, '中国', null, null, '1', null, '0', '18566220020', '248b41247c4122315eb4118be0036eae', 'OQTT', '1', null, '0', '2020-11-25 22:20:45', '333837373330303339373832393033383038', '0', '', '0', '1', '0', null, '2020-12-02 22:21:06', '1', '0', '18566220020', null, null, '中国');
INSERT INTO `member` VALUES ('600807', null, null, '0', '0', null, null, null, null, null, null, null, '0', null, '0', null, null, null, null, null, null, null, null, '中国', null, null, '2', null, '0', '15103821590', '39af3d95ff14a90d194207eccd440a43', 'OQTU', '1', null, '0', '2020-11-25 22:23:14', '333837373330363633383439323031363634', '0', '', '0', '1', '0', null, '2020-12-02 22:28:28', '1', '0', '15103821590', null, null, '中国');
INSERT INTO `member` VALUES ('600808', null, null, '0', '0', null, 'https://bizzan.oss-cn-hangzhou.aliyuncs.com/defaultavatar.png', null, null, null, null, null, '0', null, '0', null, null, null, null, null, null, null, null, '中国', null, null, '1', null, '0', '15875414009', 'e3c031ee268ce8b221b088e1cefd6a24', 'OQTV', '1', null, '0', '2020-11-30 16:19:46', '333839343531313335363439343532303332', '0', '', '0', '0', '0', null, '2020-12-07 16:20:00', '1', '0', '15875414009', null, null, '中国');

-- ----------------------------
-- Table structure for member_address
-- ----------------------------
DROP TABLE IF EXISTS `member_address`;
CREATE TABLE `member_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKhcqqqntcf8hqmoa6dpo95okyh` (`coin_id`) USING BTREE,
  CONSTRAINT `FKhcqqqntcf8hqmoa6dpo95okyh` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of member_address
-- ----------------------------

-- ----------------------------
-- Table structure for member_api_key
-- ----------------------------
DROP TABLE IF EXISTS `member_api_key`;
CREATE TABLE `member_api_key` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `api_key` varchar(255) DEFAULT NULL,
  `api_name` varchar(255) DEFAULT NULL,
  `bind_ip` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of member_api_key
-- ----------------------------

-- ----------------------------
-- Table structure for member_application
-- ----------------------------
DROP TABLE IF EXISTS `member_application`;
CREATE TABLE `member_application` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `audit_status` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `identity_card_img_front` varchar(255) NOT NULL,
  `identity_card_img_in_hand` varchar(255) NOT NULL,
  `identity_card_img_reverse` varchar(255) NOT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `reject_reason` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK2djx7q0j54th0cgj7153qfbl1` (`member_id`) USING BTREE,
  CONSTRAINT `FK2djx7q0j54th0cgj7153qfbl1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of member_application
-- ----------------------------
INSERT INTO `member_application` VALUES ('1', '2', '2020-09-26 21:37:55', '110101199003074012', 'http://bizzano.oss-cn-shanghai.aliyuncs.com/2020/09/26/3a0c3080-d64d-4dbc-9424-befdd44ead25.png', 'http://bizzano.oss-cn-shanghai.aliyuncs.com/2020/09/26/07b65e3e-0460-46d6-b41b-703b44f18b46.png', 'http://bizzano.oss-cn-shanghai.aliyuncs.com/2020/09/26/3f841a9e-024c-40ab-86f6-ef6d335bcf1f.png', '机器人', null, '2020-09-26 21:43:20', '1');
INSERT INTO `member_application` VALUES ('2', '2', '2020-11-10 14:18:53', '370124199402270013', 'http://bizzano.oss-cn-shanghai.aliyuncs.com/2020/11/10/7cb65338-5e67-4fe9-82e1-71fe0f0d19f7.png', 'http://bizzano.oss-cn-shanghai.aliyuncs.com/2020/11/10/be54a105-41ba-4a73-87a6-37e85694121b.png', 'http://bizzano.oss-cn-shanghai.aliyuncs.com/2020/11/10/38603780-ea57-4fa1-b46b-ecd18e269883.png', '张三丰', null, '2020-11-11 18:02:57', '600803');

-- ----------------------------
-- Table structure for member_application_config
-- ----------------------------
DROP TABLE IF EXISTS `member_application_config`;
CREATE TABLE `member_application_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `promotion_on` int(11) DEFAULT NULL,
  `recharge_coin_on` int(11) DEFAULT NULL,
  `transaction_on` int(11) DEFAULT NULL,
  `withdraw_coin_on` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of member_application_config
-- ----------------------------

-- ----------------------------
-- Table structure for member_bonus
-- ----------------------------
DROP TABLE IF EXISTS `member_bonus`;
CREATE TABLE `member_bonus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `arrive_time` varchar(255) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  `have_time` varchar(255) DEFAULT NULL,
  `mem_bouns` decimal(18,8) DEFAULT NULL COMMENT '分红数量',
  `member_id` bigint(20) DEFAULT NULL,
  `total` decimal(18,8) DEFAULT NULL COMMENT '当天总手续费',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of member_bonus
-- ----------------------------

-- ----------------------------
-- Table structure for member_contract_wallet
-- ----------------------------
DROP TABLE IF EXISTS `member_contract_wallet`;
CREATE TABLE `member_contract_wallet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coin_balance` decimal(18,8) DEFAULT NULL COMMENT '币种余额',
  `coin_buy_leverage` decimal(18,8) DEFAULT NULL COMMENT '做多杠杆倍数',
  `coin_buy_position` decimal(18,8) DEFAULT NULL COMMENT '开多仓位',
  `coin_buy_price` decimal(18,8) DEFAULT NULL COMMENT '多仓均价',
  `coin_buy_principal_amount` decimal(18,8) DEFAULT NULL COMMENT '多仓保证金',
  `coin_frozen_balance` decimal(18,8) DEFAULT NULL COMMENT '冻结余额',
  `coin_frozen_buy_position` decimal(18,8) DEFAULT NULL COMMENT '开多仓位',
  `coin_frozen_sell_position` decimal(18,8) DEFAULT NULL COMMENT '开空仓位',
  `coin_pattern` int(4) DEFAULT '1' COMMENT '币本位仓位模式',
  `coin_sell_leverage` decimal(18,8) DEFAULT NULL COMMENT '做空杠杆倍数',
  `coin_sell_position` decimal(18,8) DEFAULT NULL COMMENT '开空仓位',
  `coin_sell_price` decimal(18,8) DEFAULT NULL COMMENT '空仓均价',
  `coin_sell_principal_amount` decimal(18,8) DEFAULT NULL COMMENT '空仓保证金',
  `coin_share_number` decimal(18,8) DEFAULT NULL COMMENT '开空仓位',
  `member_id` bigint(20) DEFAULT NULL,
  `usdt_balance` decimal(18,8) DEFAULT NULL COMMENT 'USDT余额',
  `usdt_buy_leverage` decimal(18,8) DEFAULT NULL COMMENT '做多杠杆倍数',
  `usdt_buy_position` decimal(18,8) DEFAULT NULL COMMENT '开多仓位',
  `usdt_buy_price` decimal(18,8) DEFAULT NULL COMMENT '多仓均价',
  `usdt_buy_principal_amount` decimal(18,8) DEFAULT NULL COMMENT '多仓保证金',
  `usdt_frozen_balance` decimal(18,8) DEFAULT NULL COMMENT '冻结余额',
  `usdt_frozen_buy_position` decimal(18,8) DEFAULT NULL COMMENT '开多仓位',
  `usdt_frozen_sell_position` decimal(18,8) DEFAULT NULL COMMENT '开空仓位',
  `usdt_loss` decimal(18,8) DEFAULT NULL COMMENT 'USDT亏损',
  `usdt_pattern` int(4) DEFAULT '1' COMMENT '金本位仓位模式',
  `usdt_profit` decimal(18,8) DEFAULT NULL COMMENT 'USDT盈利',
  `usdt_sell_leverage` decimal(18,8) DEFAULT NULL COMMENT '做空杠杆倍数',
  `usdt_sell_position` decimal(18,8) DEFAULT NULL COMMENT '开空仓位',
  `usdt_sell_price` decimal(18,8) DEFAULT NULL COMMENT '空仓均价',
  `usdt_sell_principal_amount` decimal(18,8) DEFAULT NULL COMMENT '空仓保证金',
  `usdt_share_number` decimal(18,8) DEFAULT NULL COMMENT '开空仓位',
  `contract_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UKe17oj0my6ih9ejhlw6m84l1cd` (`member_id`,`contract_id`) USING BTREE,
  KEY `FKni1vfmlpo78vdm4tvr5woqvpo` (`contract_id`) USING BTREE,
  CONSTRAINT `FKni1vfmlpo78vdm4tvr5woqvpo` FOREIGN KEY (`contract_id`) REFERENCES `contract_coin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of member_contract_wallet
-- ----------------------------

-- ----------------------------
-- Table structure for member_deposit
-- ----------------------------
DROP TABLE IF EXISTS `member_deposit`;
CREATE TABLE `member_deposit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` decimal(18,8) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `txid` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UKl2ibi99fuxplt8qt3rrpb0q4w` (`txid`,`address`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of member_deposit
-- ----------------------------

-- ----------------------------
-- Table structure for member_invite_stastic
-- ----------------------------
DROP TABLE IF EXISTS `member_invite_stastic`;
CREATE TABLE `member_invite_stastic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `btc_reward` decimal(24,8) DEFAULT NULL,
  `estimated_reward` decimal(24,8) DEFAULT NULL,
  `eth_reward` decimal(24,8) DEFAULT NULL,
  `extra_reward` decimal(24,8) DEFAULT NULL,
  `is_robot` int(11) NOT NULL,
  `level_one` int(11) NOT NULL,
  `level_two` int(11) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `other_reward` varchar(255) DEFAULT NULL,
  `stastic_date` varchar(30) NOT NULL DEFAULT '2000-01-01 01:00:00' COMMENT '统计日期',
  `usdt_reward` decimal(24,8) DEFAULT NULL,
  `user_identify` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `member_id` (`member_id`) USING BTREE,
  UNIQUE KEY `UK4o6jykp20ax1pybxgxcwsxq01` (`member_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=59274 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of member_invite_stastic
-- ----------------------------

-- ----------------------------
-- Table structure for member_invite_stastic_rank
-- ----------------------------
DROP TABLE IF EXISTS `member_invite_stastic_rank`;
CREATE TABLE `member_invite_stastic_rank` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_robot` int(11) NOT NULL,
  `level_one` int(11) NOT NULL,
  `level_two` int(11) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `stastic_date` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  `user_identify` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of member_invite_stastic_rank
-- ----------------------------

-- ----------------------------
-- Table structure for member_level
-- ----------------------------
DROP TABLE IF EXISTS `member_level`;
CREATE TABLE `member_level` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_default` bit(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of member_level
-- ----------------------------

-- ----------------------------
-- Table structure for member_promotion
-- ----------------------------
DROP TABLE IF EXISTS `member_promotion`;
CREATE TABLE `member_promotion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `invitees_id` bigint(20) DEFAULT NULL,
  `inviter_id` bigint(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9360 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of member_promotion
-- ----------------------------

-- ----------------------------
-- Table structure for member_sign_record
-- ----------------------------
DROP TABLE IF EXISTS `member_sign_record`;
CREATE TABLE `member_sign_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(19,2) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `coin_name` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `sign_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK7qa42qkaoqxlyvwhxwdstclic` (`coin_name`) USING BTREE,
  KEY `FK2r4i90tejcbf85vhk0d8besle` (`member_id`) USING BTREE,
  KEY `FKq1926wgosqk7ka4kvw8rtxew` (`sign_id`) USING BTREE,
  CONSTRAINT `FK2r4i90tejcbf85vhk0d8besle` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FK7qa42qkaoqxlyvwhxwdstclic` FOREIGN KEY (`coin_name`) REFERENCES `coin` (`name`),
  CONSTRAINT `FKq1926wgosqk7ka4kvw8rtxew` FOREIGN KEY (`sign_id`) REFERENCES `sign` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of member_sign_record
-- ----------------------------

-- ----------------------------
-- Table structure for member_transaction
-- ----------------------------
DROP TABLE IF EXISTS `member_transaction`;
CREATE TABLE `member_transaction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` decimal(26,16) DEFAULT NULL COMMENT '充币金额',
  `create_time` datetime DEFAULT NULL,
  `discount_fee` varchar(255) DEFAULT NULL,
  `fee` decimal(26,16) DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  `member_id` bigint(20) DEFAULT NULL,
  `real_fee` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=86936 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of member_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for member_wallet
-- ----------------------------
DROP TABLE IF EXISTS `member_wallet`;
CREATE TABLE `member_wallet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `balance` decimal(26,16) DEFAULT NULL COMMENT '可用余额',
  `frozen_balance` decimal(26,16) DEFAULT NULL COMMENT '冻结余额',
  `is_lock` int(11) DEFAULT '0' COMMENT '钱包不是锁定',
  `member_id` bigint(20) DEFAULT NULL,
  `to_released` decimal(18,8) DEFAULT NULL COMMENT '待释放总量',
  `version` int(11) NOT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UKm68bscpof0bpnxocxl4qdnvbe` (`member_id`,`coin_id`) USING BTREE,
  KEY `FKf9tgbp9y9py8t9c5xj0lllcib` (`coin_id`) USING BTREE,
  CONSTRAINT `FKf9tgbp9y9py8t9c5xj0lllcib` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of member_wallet
-- ----------------------------
INSERT INTO `member_wallet` VALUES ('1', '', '9988715386.2768000000000000', '11284612.3039000000000000', '0', '1', '0.00000000', '6', 'BitcoinCash');
INSERT INTO `member_wallet` VALUES ('2', '0xadcce70a59d8773810c6624a8b23616a9d46e1d5', '9992665549.7718123485000000', '7333462.3433208060000000', '0', '1', '0.00000000', '4', 'Ethereum');
INSERT INTO `member_wallet` VALUES ('3', '', '9879200422.0012000000000000', '130799575.0188000000000000', '0', '1', '0.00000000', '3', 'Ripple');
INSERT INTO `member_wallet` VALUES ('4', '', '9867391235.8933000000000000', '132598833.1106000000000000', '0', '1', '0.00000000', '2', 'EOS');
INSERT INTO `member_wallet` VALUES ('5', '1FuHCr3NUi7sD5W3prqdD2X474zRTXSRsU', '9999990927.7459545400000000', '9798.8695992600000000', '0', '1', '0.00000000', '11', 'Bitcoin');
INSERT INTO `member_wallet` VALUES ('6', '', '9999830497.0814260000000000', '169501.9185740000000000', '0', '1', '0.00000000', '4', 'BitcoinSV');
INSERT INTO `member_wallet` VALUES ('7', '', '9932638762.2545000000000000', '67361234.6506000000000000', '0', '1', '0.00000000', '2', 'Litecoin');
INSERT INTO `member_wallet` VALUES ('8', '', '9587211651.7662080670437200', '390096181.9340485445750000', '0', '1', '0.00000000', '2', 'USDT');
INSERT INTO `member_wallet` VALUES ('9', '', '9988733061.2838000000000000', '11266939.2959000000000000', '0', '600800', '0.00000000', '0', 'BitcoinCash');
INSERT INTO `member_wallet` VALUES ('10', '', '9996999920.1568186586210800', '11267153.5612352400000000', '0', '600800', '0.00000000', '0', 'USDT');
INSERT INTO `member_wallet` VALUES ('11', '1NHdDaSmDLZgUdcviPCLNBYd98HUJmjpSb', '9988729812.0912800125400000', '11269464.3204640000000000', '0', '600800', '0.00000000', '1', 'Bitcoin');
INSERT INTO `member_wallet` VALUES ('12', '', '9988733060.2848000000000000', '11266939.2959000000000000', '0', '600800', '0.00000000', '0', 'BitcoinSV');
INSERT INTO `member_wallet` VALUES ('13', '', '9988742964.9161000000000000', '11266954.6527000000000000', '0', '600800', '0.00000000', '0', 'EOS');
INSERT INTO `member_wallet` VALUES ('14', '0xdbfbfcd3d4a32b34981892a3eaab9b95fa2b0efc', '9988734059.2659668455000000', '11266939.2959000000000000', '0', '600800', '0.00000000', '1', 'Ethereum');
INSERT INTO `member_wallet` VALUES ('15', '', '9988733060.3021826000000000', '11266939.2959000000000000', '0', '600800', '0.00000000', '0', 'Litecoin');
INSERT INTO `member_wallet` VALUES ('16', '', '9988733061.2838000000000000', '11266939.2959000000000000', '0', '600800', '0.00000000', '0', 'Ripple');
INSERT INTO `member_wallet` VALUES ('20', '1LGnGNq1dCcfF7dVibjrYfyh3WcNBJENLB', '0.0000000000000000', '0.0000000000000000', '0', '600802', '0.00000000', '1', 'Bitcoin');
INSERT INTO `member_wallet` VALUES ('21', '', '0.0000000000000000', '0.0000000000000000', '0', '600802', '0.00000000', '0', 'BitcoinCash');
INSERT INTO `member_wallet` VALUES ('22', '', '0.0000000000000000', '0.0000000000000000', '0', '600802', '0.00000000', '0', 'BitcoinSV');
INSERT INTO `member_wallet` VALUES ('23', '', '0.0000000000000000', '0.0000000000000000', '0', '600802', '0.00000000', '0', 'EOS');
INSERT INTO `member_wallet` VALUES ('24', '0x702a59a4e6e636a750352d22e6f7640b6f975101', '0.0000000000000000', '0.0000000000000000', '0', '600802', '0.00000000', '1', 'Ethereum');
INSERT INTO `member_wallet` VALUES ('25', '', '0.0000000000000000', '0.0000000000000000', '0', '600802', '0.00000000', '0', 'Litecoin');
INSERT INTO `member_wallet` VALUES ('26', '', '0.0000000000000000', '0.0000000000000000', '0', '600802', '0.00000000', '0', 'Ripple');
INSERT INTO `member_wallet` VALUES ('27', '', '0.0000000000000000', '0.0000000000000000', '0', '600802', '0.00000000', '0', 'SIC');
INSERT INTO `member_wallet` VALUES ('28', '', '0.0000000000000000', '0.0000000000000000', '0', '600802', '0.00000000', '0', 'USDT');
INSERT INTO `member_wallet` VALUES ('30', '', '100.0000000000000000', '0.0000000000000000', '0', '600803', '0.00000000', '1', 'Bitcoin');
INSERT INTO `member_wallet` VALUES ('31', '', '0.0000000000000000', '0.0000000000000000', '0', '600803', '0.00000000', '0', 'BitcoinCash');
INSERT INTO `member_wallet` VALUES ('32', '', '0.0000000000000000', '0.0000000000000000', '0', '600803', '0.00000000', '0', 'BitcoinSV');
INSERT INTO `member_wallet` VALUES ('33', '', '0.0000000000000000', '0.0000000000000000', '0', '600803', '0.00000000', '0', 'EOS');
INSERT INTO `member_wallet` VALUES ('34', '', '1000.0000000000000000', '0.0000000000000000', '0', '600803', '0.00000000', '1', 'Ethereum');
INSERT INTO `member_wallet` VALUES ('35', '', '0.0000000000000000', '0.0000000000000000', '0', '600803', '0.00000000', '0', 'Litecoin');
INSERT INTO `member_wallet` VALUES ('36', '', '0.0000000000000000', '0.0000000000000000', '0', '600803', '0.00000000', '0', 'Ripple');
INSERT INTO `member_wallet` VALUES ('37', '', '0.0000000000000000', '0.0000000000000000', '0', '600803', '0.00000000', '0', 'SIC');
INSERT INTO `member_wallet` VALUES ('38', '', '0.0000000000000000', '0.0000000000000000', '0', '600803', '0.00000000', '1', 'USDT');
INSERT INTO `member_wallet` VALUES ('40', '', '0.0000000000000000', '0.0000000000000000', '0', '600804', '0.00000000', '0', 'Bitcoin');
INSERT INTO `member_wallet` VALUES ('41', '', '0.0000000000000000', '0.0000000000000000', '0', '600804', '0.00000000', '0', 'BitcoinCash');
INSERT INTO `member_wallet` VALUES ('42', '', '0.0000000000000000', '0.0000000000000000', '0', '600804', '0.00000000', '0', 'BitcoinSV');
INSERT INTO `member_wallet` VALUES ('43', '', '0.0000000000000000', '0.0000000000000000', '0', '600804', '0.00000000', '0', 'EOS');
INSERT INTO `member_wallet` VALUES ('44', '', '0.0000000000000000', '0.0000000000000000', '0', '600804', '0.00000000', '0', 'Ethereum');
INSERT INTO `member_wallet` VALUES ('45', '', '0.0000000000000000', '0.0000000000000000', '0', '600804', '0.00000000', '0', 'Litecoin');
INSERT INTO `member_wallet` VALUES ('46', '', '0.0000000000000000', '0.0000000000000000', '0', '600804', '0.00000000', '0', 'Ripple');
INSERT INTO `member_wallet` VALUES ('47', '', '0.0000000000000000', '0.0000000000000000', '0', '600804', '0.00000000', '0', 'SIC');
INSERT INTO `member_wallet` VALUES ('48', '', '0.0000000000000000', '0.0000000000000000', '0', '600804', '0.00000000', '0', 'USDT');
INSERT INTO `member_wallet` VALUES ('50', '1FdB6AxhB92tr2P3emAYJsMxtcpZgN4f9g', '0.0000000000000000', '0.0000000000000000', '0', '600805', '0.00000000', '1', 'Bitcoin');
INSERT INTO `member_wallet` VALUES ('51', '', '0.0000000000000000', '0.0000000000000000', '0', '600805', '0.00000000', '0', 'BitcoinCash');
INSERT INTO `member_wallet` VALUES ('52', '', '0.0000000000000000', '0.0000000000000000', '0', '600805', '0.00000000', '0', 'BitcoinSV');
INSERT INTO `member_wallet` VALUES ('53', '', '0.0000000000000000', '0.0000000000000000', '0', '600805', '0.00000000', '0', 'EOS');
INSERT INTO `member_wallet` VALUES ('54', '', '0.0000000000000000', '0.0000000000000000', '0', '600805', '0.00000000', '0', 'Ethereum');
INSERT INTO `member_wallet` VALUES ('55', '', '0.0000000000000000', '0.0000000000000000', '0', '600805', '0.00000000', '0', 'Litecoin');
INSERT INTO `member_wallet` VALUES ('56', '', '0.0000000000000000', '0.0000000000000000', '0', '600805', '0.00000000', '0', 'Ripple');
INSERT INTO `member_wallet` VALUES ('57', '', '0.0000000000000000', '0.0000000000000000', '0', '600805', '0.00000000', '0', 'SIC');
INSERT INTO `member_wallet` VALUES ('58', '', '0.0000000000000000', '0.0000000000000000', '0', '600805', '0.00000000', '0', 'USDT');
INSERT INTO `member_wallet` VALUES ('87', '', '1.0000000000000000', '0.0000000000000000', '0', '1', '0.00000000', '0', 'EUSDT');
INSERT INTO `member_wallet` VALUES ('88', '', '1000000.0000000000000000', '0.0000000000000000', '0', '600800', '0.00000000', '0', 'EUSDT');
INSERT INTO `member_wallet` VALUES ('89', '', '0.0000000000000000', '0.0000000000000000', '0', '600804', '0.00000000', '0', 'EUSDT');
INSERT INTO `member_wallet` VALUES ('90', '', '0.0000000000000000', '0.0000000000000000', '0', '600805', '0.00000000', '0', 'EUSDT');
INSERT INTO `member_wallet` VALUES ('91', '', '0.0000000000000000', '0.0000000000000000', '0', '600802', '0.00000000', '0', 'EUSDT');
INSERT INTO `member_wallet` VALUES ('92', '', '0.0000000000000000', '0.0000000000000000', '0', '600803', '0.00000000', '0', 'EUSDT');
INSERT INTO `member_wallet` VALUES ('93', '', '0.0000000000000000', '0.0000000000000000', '0', '600801', '0.00000000', '0', 'EUSDT');
INSERT INTO `member_wallet` VALUES ('122', '', '0.0000000000000000', '0.0000000000000000', '0', '600806', '0.00000000', '0', 'Bitcoin');
INSERT INTO `member_wallet` VALUES ('123', '', '0.0000000000000000', '0.0000000000000000', '0', '600806', '0.00000000', '0', 'BitcoinCash');
INSERT INTO `member_wallet` VALUES ('124', '', '0.0000000000000000', '0.0000000000000000', '0', '600806', '0.00000000', '0', 'BitcoinSV');
INSERT INTO `member_wallet` VALUES ('125', '', '0.0000000000000000', '0.0000000000000000', '0', '600806', '0.00000000', '0', 'EOS');
INSERT INTO `member_wallet` VALUES ('126', '', '0.0000000000000000', '0.0000000000000000', '0', '600806', '0.00000000', '0', 'Ethereum');
INSERT INTO `member_wallet` VALUES ('127', '', '0.0000000000000000', '0.0000000000000000', '0', '600806', '0.00000000', '0', 'EUSDT');
INSERT INTO `member_wallet` VALUES ('128', '', '0.0000000000000000', '0.0000000000000000', '0', '600806', '0.00000000', '0', 'Litecoin');
INSERT INTO `member_wallet` VALUES ('129', '', '0.0000000000000000', '0.0000000000000000', '0', '600806', '0.00000000', '0', 'Ripple');
INSERT INTO `member_wallet` VALUES ('130', '', '0.0000000000000000', '0.0000000000000000', '0', '600806', '0.00000000', '0', 'USDT');
INSERT INTO `member_wallet` VALUES ('131', '1PFp65wdkb696F2Dv7MBU2NPHkvB3yu54M', '0.0000000000000000', '0.0000000000000000', '0', '600807', '0.00000000', '1', 'Bitcoin');
INSERT INTO `member_wallet` VALUES ('132', '', '0.0000000000000000', '0.0000000000000000', '0', '600807', '0.00000000', '0', 'BitcoinCash');
INSERT INTO `member_wallet` VALUES ('133', '', '0.0000000000000000', '0.0000000000000000', '0', '600807', '0.00000000', '0', 'BitcoinSV');
INSERT INTO `member_wallet` VALUES ('134', '', '0.0000000000000000', '0.0000000000000000', '0', '600807', '0.00000000', '0', 'EOS');
INSERT INTO `member_wallet` VALUES ('135', '0xbde4973e7febb4b47288ade99a4554ef9bd601d2', '0.0000000000000000', '0.0000000000000000', '0', '600807', '0.00000000', '1', 'Ethereum');
INSERT INTO `member_wallet` VALUES ('136', '', '0.0000000000000000', '0.0000000000000000', '0', '600807', '0.00000000', '0', 'EUSDT');
INSERT INTO `member_wallet` VALUES ('137', '', '0.0000000000000000', '0.0000000000000000', '0', '600807', '0.00000000', '0', 'Litecoin');
INSERT INTO `member_wallet` VALUES ('138', '', '0.0000000000000000', '0.0000000000000000', '0', '600807', '0.00000000', '0', 'Ripple');
INSERT INTO `member_wallet` VALUES ('139', '', '0.0000000000000000', '0.0000000000000000', '0', '600807', '0.00000000', '0', 'USDT');
INSERT INTO `member_wallet` VALUES ('140', '', '9999989.0000000000000000', '0.0000000000000000', '0', '1', '0.00000000', '1', 'BItball');
INSERT INTO `member_wallet` VALUES ('141', '', '10.9890000000000000', '0.0000000000000000', '0', '600800', '0.00000000', '0', 'BItball');
INSERT INTO `member_wallet` VALUES ('142', '', '0.0000000000000000', '0.0000000000000000', '0', '600807', '0.00000000', '0', 'BItball');
INSERT INTO `member_wallet` VALUES ('143', '', '0.0000000000000000', '0.0000000000000000', '0', '600804', '0.00000000', '0', 'BItball');
INSERT INTO `member_wallet` VALUES ('144', '', '0.0000000000000000', '0.0000000000000000', '0', '600805', '0.00000000', '0', 'BItball');
INSERT INTO `member_wallet` VALUES ('145', '', '0.0000000000000000', '0.0000000000000000', '0', '600808', '0.00000000', '0', 'BItball');
INSERT INTO `member_wallet` VALUES ('146', '', '0.0000000000000000', '0.0000000000000000', '0', '600802', '0.00000000', '0', 'BItball');
INSERT INTO `member_wallet` VALUES ('147', '', '0.0000000000000000', '0.0000000000000000', '0', '600806', '0.00000000', '0', 'BItball');
INSERT INTO `member_wallet` VALUES ('148', '', '0.0000000000000000', '0.0000000000000000', '0', '600803', '0.00000000', '0', 'BItball');
INSERT INTO `member_wallet` VALUES ('149', '', '0.0000000000000000', '0.0000000000000000', '0', '600801', '0.00000000', '0', 'BItball');

-- ----------------------------
-- Table structure for mining_order
-- ----------------------------
DROP TABLE IF EXISTS `mining_order`;
CREATE TABLE `mining_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `current_daysprofit` decimal(18,8) DEFAULT NULL COMMENT '矿机当前日产出',
  `end_time` varchar(30) NOT NULL DEFAULT '2000-01-01 01:00:00' COMMENT '结束时间',
  `member_id` bigint(20) NOT NULL,
  `mining_days` int(11) NOT NULL,
  `mining_daysprofit` decimal(18,8) DEFAULT NULL COMMENT '矿机原始日产出',
  `mining_unit` varchar(255) DEFAULT NULL,
  `mininged_days` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `mining_status` int(11) NOT NULL,
  `period` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `mining_invite` decimal(24,8) DEFAULT NULL,
  `mining_invitelimit` decimal(24,8) DEFAULT NULL,
  `total_profit` decimal(18,8) DEFAULT NULL COMMENT '矿机总产出',
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mining_order
-- ----------------------------

-- ----------------------------
-- Table structure for mining_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `mining_order_detail`;
CREATE TABLE `mining_order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  `mining_order_id` bigint(20) DEFAULT NULL,
  `mining_unit` varchar(255) DEFAULT NULL,
  `output` decimal(18,8) DEFAULT NULL COMMENT '矿机当期产出',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mining_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for otc_coin
-- ----------------------------
DROP TABLE IF EXISTS `otc_coin`;
CREATE TABLE `otc_coin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `buy_min_amount` decimal(18,8) DEFAULT NULL COMMENT '买入广告最低发布数量',
  `is_platform_coin` int(11) DEFAULT NULL,
  `jy_rate` decimal(18,6) DEFAULT NULL COMMENT '交易手续费率',
  `name` varchar(255) NOT NULL,
  `name_cn` varchar(255) NOT NULL,
  `sell_min_amount` decimal(18,8) DEFAULT NULL COMMENT '卖出广告最低发布数量',
  `sort` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `unit` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of otc_coin
-- ----------------------------
INSERT INTO `otc_coin` VALUES ('1', '0.01000000', '0', '1.000000', 'Bitcoin', '比特币', '0.10000000', '0', '0', 'BTC');
INSERT INTO `otc_coin` VALUES ('2', '0.01000000', '0', '0.000000', 'USDT', '泰达币', '0.10000000', '0', '0', 'USDT');
INSERT INTO `otc_coin` VALUES ('3', '0.01000000', '0', '1.000000', 'Ethereum', '以太坊', '0.10000000', '0', '0', 'ETH');

-- ----------------------------
-- Table structure for otc_order
-- ----------------------------
DROP TABLE IF EXISTS `otc_order`;
CREATE TABLE `otc_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `advertise_id` bigint(20) NOT NULL,
  `advertise_type` int(11) NOT NULL,
  `ali_no` varchar(255) DEFAULT NULL,
  `qr_code_url` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `card_no` varchar(255) DEFAULT NULL,
  `cancel_time` datetime DEFAULT NULL,
  `commission` decimal(18,8) DEFAULT NULL COMMENT '手续费',
  `country` varchar(255) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_real_name` varchar(255) DEFAULT NULL,
  `max_limit` decimal(18,2) DEFAULT NULL COMMENT '最高交易额',
  `member_id` bigint(20) NOT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `member_real_name` varchar(255) DEFAULT NULL,
  `min_limit` decimal(18,2) DEFAULT NULL COMMENT '最低交易额',
  `money` decimal(18,2) DEFAULT NULL COMMENT '交易金额',
  `number` decimal(18,8) DEFAULT NULL COMMENT '交易数量',
  `order_sn` varchar(255) NOT NULL,
  `pay_mode` varchar(255) NOT NULL,
  `pay_time` datetime DEFAULT NULL,
  `price` decimal(18,2) DEFAULT NULL COMMENT '价格',
  `release_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `time_limit` int(11) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `qr_we_code_url` varchar(255) DEFAULT NULL,
  `wechat` varchar(255) DEFAULT NULL,
  `coin_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_qmfpakgu6mowmslv4m5iy43t9` (`order_sn`) USING BTREE,
  KEY `FKjh47nnmiehmu15wqjfwnh8a6u` (`coin_id`) USING BTREE,
  CONSTRAINT `FKjh47nnmiehmu15wqjfwnh8a6u` FOREIGN KEY (`coin_id`) REFERENCES `otc_coin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of otc_order
-- ----------------------------
INSERT INTO `otc_order` VALUES ('10', '1', '1', null, null, '中国工商银行', '工行', '60002160601398896', null, '0.00000000', '中国', '2020-10-31 05:01:02', '600800', '13800138001', '测试', '1000.00', '1', '13791233920', '机器人', '100.00', '100.00', '14.99250375', '378408690937495552', '银联', '2020-10-31 05:01:14', '6.67', '2020-10-31 05:46:58', null, '3', '15', '0', null, null, '2');
INSERT INTO `otc_order` VALUES ('11', '2', '1', null, null, '', '', '60002160601398896', null, '0.00000000', '中国', '2020-11-08 22:10:42', '1', '13791233920', '机器人', '103.00', '600800', '13800138001', '测试', '100.00', '100.00', '14.26533524', '381566914771550208', '银联', '2020-11-08 22:10:56', '7.01', null, '', '4', '17', '0', null, null, '2');

-- ----------------------------
-- Table structure for promotion_card
-- ----------------------------
DROP TABLE IF EXISTS `promotion_card`;
CREATE TABLE `promotion_card` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '单个卡券金额',
  `card_desc` varchar(255) DEFAULT NULL,
  `card_name` varchar(255) NOT NULL,
  `card_no` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `exchange_count` int(11) NOT NULL,
  `is_enabled` int(11) NOT NULL,
  `is_free` int(11) NOT NULL,
  `is_lock` int(11) NOT NULL,
  `lock_days` int(11) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  `total_amount` decimal(18,8) DEFAULT NULL COMMENT '所有卡券总金额',
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_3781uubel3iuh86ht6yv0n0r7` (`card_no`) USING BTREE,
  KEY `FKem2r42s1av7tfni612176gt9f` (`coin_id`) USING BTREE,
  CONSTRAINT `FKem2r42s1av7tfni612176gt9f` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of promotion_card
-- ----------------------------
INSERT INTO `promotion_card` VALUES ('1', '0.00100000', '', '合伙人推广卡', 'VPTGL0FL3', '30', '2020-10-13 18:43:29', '2', '1', '1', '0', '0', '800749', '0.03000000', 'Bitcoin');
INSERT INTO `promotion_card` VALUES ('2', '0.00100000', '', '合伙人推广卡', 'REB6P3GQV', '30', '2020-10-13 18:52:00', '2', '1', '1', '0', '0', '805330', '0.03000000', 'Bitcoin');
INSERT INTO `promotion_card` VALUES ('3', '0.00100000', '', '合伙人推广卡', '711C0NEUH', '30', '2020-10-13 18:52:09', '1', '1', '1', '0', '0', '834706', '0.03000000', 'Bitcoin');
INSERT INTO `promotion_card` VALUES ('4', '0.00100000', '', '合伙人推广卡', 'CK30OTAWO', '30', '2020-10-13 18:58:39', '1', '1', '1', '0', '0', '804916', '0.03000000', 'Bitcoin');
INSERT INTO `promotion_card` VALUES ('5', '0.00100000', '', '合伙人推广卡', 'VBLBTJH1K', '30', '2020-10-18 18:50:48', '0', '1', '1', '0', '0', '828465', '0.03000000', 'Bitcoin');
INSERT INTO `promotion_card` VALUES ('6', '0.00100000', '', '合伙人推广卡', '0QGWGCYFB', '30', '2020-10-31 02:46:37', '1', '1', '1', '0', '0', '1', '0.03000000', 'Bitcoin');

-- ----------------------------
-- Table structure for promotion_card_order
-- ----------------------------
DROP TABLE IF EXISTS `promotion_card_order`;
CREATE TABLE `promotion_card_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '兑换金额',
  `create_time` datetime DEFAULT NULL,
  `is_free` int(11) NOT NULL,
  `is_lock` int(11) NOT NULL,
  `lock_days` int(11) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  `state` int(11) NOT NULL,
  `card_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK1e6ykywfbw68oodq33no4ao8u` (`card_id`) USING BTREE,
  CONSTRAINT `FK1e6ykywfbw68oodq33no4ao8u` FOREIGN KEY (`card_id`) REFERENCES `promotion_card` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of promotion_card_order
-- ----------------------------
INSERT INTO `promotion_card_order` VALUES ('1', '0.00100000', '2020-10-13 18:46:03', '1', '0', '0', '800749', '1', '1');
INSERT INTO `promotion_card_order` VALUES ('2', '0.00100000', '2020-10-13 18:52:48', '1', '0', '0', '834706', '1', '1');
INSERT INTO `promotion_card_order` VALUES ('3', '0.00100000', '2020-10-13 18:53:01', '1', '0', '0', '805330', '1', '3');
INSERT INTO `promotion_card_order` VALUES ('4', '0.00100000', '2020-10-13 18:59:09', '1', '0', '0', '804916', '1', '4');
INSERT INTO `promotion_card_order` VALUES ('5', '0.00100000', '2020-10-13 19:00:29', '1', '0', '0', '862728', '1', '2');
INSERT INTO `promotion_card_order` VALUES ('6', '0.00100000', '2020-10-15 21:25:53', '1', '0', '0', '862740', '1', '2');
INSERT INTO `promotion_card_order` VALUES ('7', '0.00100000', '2020-10-31 02:47:05', '1', '0', '0', '1', '1', '6');

-- ----------------------------
-- Table structure for quick_exchange
-- ----------------------------
DROP TABLE IF EXISTS `quick_exchange`;
CREATE TABLE `quick_exchange` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(24,8) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `ex_amount` decimal(24,8) DEFAULT NULL,
  `from_unit` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  `rate` decimal(24,8) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `to_unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of quick_exchange
-- ----------------------------

-- ----------------------------
-- Table structure for rebate
-- ----------------------------
DROP TABLE IF EXISTS `rebate`;
CREATE TABLE `rebate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `percent` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rebate
-- ----------------------------

-- ----------------------------
-- Table structure for red_envelope
-- ----------------------------
DROP TABLE IF EXISTS `red_envelope`;
CREATE TABLE `red_envelope` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bg_image` varchar(255) DEFAULT NULL,
  `count` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `detail` text,
  `envelope_no` varchar(255) NOT NULL,
  `expired_hours` int(11) NOT NULL,
  `invite` int(11) NOT NULL,
  `logo_image` varchar(255) DEFAULT NULL,
  `max_rand` decimal(18,8) DEFAULT NULL COMMENT '最大随机领取额',
  `member_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `plateform` int(11) NOT NULL,
  `receive_amount` decimal(18,8) DEFAULT NULL COMMENT '领取总额',
  `receive_count` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `total_amount` decimal(18,8) DEFAULT NULL COMMENT '红包总额',
  `type` int(11) NOT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `invite_user` varchar(255) DEFAULT NULL,
  `invite_user_avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_kpc525u446ufbpp8a8wxq6b93` (`envelope_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of red_envelope
-- ----------------------------

-- ----------------------------
-- Table structure for red_envelope_detail
-- ----------------------------
DROP TABLE IF EXISTS `red_envelope_detail`;
CREATE TABLE `red_envelope_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '领取数额',
  `cate` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `envelope_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  `user_identify` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of red_envelope_detail
-- ----------------------------

-- ----------------------------
-- Table structure for reward_activity_setting
-- ----------------------------
DROP TABLE IF EXISTS `reward_activity_setting`;
CREATE TABLE `reward_activity_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKra9w7qwgbxti55cmkb6kycau7` (`admin_id`) USING BTREE,
  KEY `FKmxq57nrqt4lb9lqpxwc095h1h` (`coin_id`) USING BTREE,
  CONSTRAINT `FKmxq57nrqt4lb9lqpxwc095h1h` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`),
  CONSTRAINT `FKra9w7qwgbxti55cmkb6kycau7` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of reward_activity_setting
-- ----------------------------

-- ----------------------------
-- Table structure for reward_promotion_setting
-- ----------------------------
DROP TABLE IF EXISTS `reward_promotion_setting`;
CREATE TABLE `reward_promotion_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `effective_time` int(11) NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK7fl96plmj12crmepem7t876u3` (`admin_id`) USING BTREE,
  KEY `FKfhtlsn9g8lj5qecbo596ymhey` (`coin_id`) USING BTREE,
  CONSTRAINT `FK7fl96plmj12crmepem7t876u3` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `FKfhtlsn9g8lj5qecbo596ymhey` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of reward_promotion_setting
-- ----------------------------

-- ----------------------------
-- Table structure for reward_record
-- ----------------------------
DROP TABLE IF EXISTS `reward_record`;
CREATE TABLE `reward_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '数目',
  `create_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `coin_id` varchar(255) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKtm2ha75hh60am8n7lco838nmo` (`coin_id`) USING BTREE,
  KEY `FK9m2bd6gjgad67vb6of4waxtov` (`member_id`) USING BTREE,
  CONSTRAINT `FK9m2bd6gjgad67vb6of4waxtov` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKtm2ha75hh60am8n7lco838nmo` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of reward_record
-- ----------------------------
INSERT INTO `reward_record` VALUES ('1', '0.05752046', '2020-10-11 22:22:24', '币币推广交易', '0', 'USDT', '847216');
INSERT INTO `reward_record` VALUES ('2', '0.00063365', '2020-10-11 22:22:24', '币币推广交易', '0', 'USDT', '847216');
INSERT INTO `reward_record` VALUES ('3', '0.00534766', '2020-10-11 22:22:24', '币币推广交易', '0', 'USDT', '847216');
INSERT INTO `reward_record` VALUES ('4', '0.01104454', '2020-10-11 22:22:24', '币币推广交易', '0', 'USDT', '847216');
INSERT INTO `reward_record` VALUES ('5', '0.03996563', '2020-10-11 22:37:16', '币币推广交易', '0', 'USDT', '847216');
INSERT INTO `reward_record` VALUES ('6', '0.03459294', '2020-10-11 22:37:16', '币币推广交易', '0', 'USDT', '847216');
INSERT INTO `reward_record` VALUES ('7', '0.07488304', '2020-10-11 22:38:13', '币币推广交易', '0', 'USDT', '847216');
INSERT INTO `reward_record` VALUES ('8', '0.00059963', '2020-10-11 22:42:31', '币币推广交易', '0', 'USDT', '847216');
INSERT INTO `reward_record` VALUES ('9', '0.04844939', '2020-10-11 22:42:31', '币币推广交易', '0', 'USDT', '847216');
INSERT INTO `reward_record` VALUES ('10', '0.10604998', '2020-10-11 22:54:08', '币币推广交易', '0', 'USDT', '847216');
INSERT INTO `reward_record` VALUES ('11', '0.00002800', '2020-10-11 23:16:15', '币币推广交易', '0', 'USDT', '847216');
INSERT INTO `reward_record` VALUES ('12', '0.00277200', '2020-10-11 23:43:32', '币币推广交易', '0', 'USDT', '804668');
INSERT INTO `reward_record` VALUES ('13', '0.00391300', '2020-10-11 23:55:05', '币币推广交易', '0', 'USDT', '821381');

-- ----------------------------
-- Table structure for sign
-- ----------------------------
DROP TABLE IF EXISTS `sign`;
CREATE TABLE `sign` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(19,2) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `coin_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK58kn2gi7nvswa8hb76h87wtdl` (`coin_name`) USING BTREE,
  CONSTRAINT `FK58kn2gi7nvswa8hb76h87wtdl` FOREIGN KEY (`coin_name`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sign
-- ----------------------------

-- ----------------------------
-- Table structure for sys_advertise
-- ----------------------------
DROP TABLE IF EXISTS `sys_advertise`;
CREATE TABLE `sys_advertise` (
  `serial_number` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `end_time` varchar(255) NOT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `sys_advertise_location` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `lang` varchar(255) NOT NULL,
  PRIMARY KEY (`serial_number`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_advertise
-- ----------------------------
INSERT INTO `sys_advertise` VALUES ('48C18549F54F4BB18B6282E6D3633043', null, null, null, '2021-03-31 00:00:00', '', '1', '', '1', '2021-03-09 00:00:00', '0', '1', 'https://coingod.oss-cn-hongkong.aliyuncs.com/2021/03/09/3d9352b4-ae06-4388-bad0-f2cbd48b33f0.png', 'zh_CN');
INSERT INTO `sys_advertise` VALUES ('6133E970447B40688F9F304B13B3DF4C', null, null, '2021-03-09 02:29:15', '2021-03-31 00:00:00', '1', '1', '1', '1', '2021-03-09 00:00:00', '0', '0', 'https://coingod.oss-cn-hongkong.aliyuncs.com/2021/03/09/7ef316dc-7f9f-4e0b-bab6-09f55bb74b59.png', 'zh_CN');

-- ----------------------------
-- Table structure for sys_help
-- ----------------------------
DROP TABLE IF EXISTS `sys_help`;
CREATE TABLE `sys_help` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `is_top` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sys_help_classification` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `lang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_help
-- ----------------------------
INSERT INTO `sys_help` VALUES ('1', 'admin', '<h3 style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:22.5000pt;\nmargin-left:0.0000pt;text-indent:0.0000pt;padding:0pt 0pt 0pt 0pt ;\nmso-pagination:widow-orphan;mso-line-height-alt:12pt;\"><b><span style=\"font-family: Helvetica; color: rgb(105, 105, 105); letter-spacing: 0pt; font-size: 21pt;\">C2C法币交易须知</span></b><b><span style=\"font-family: Helvetica; color: rgb(105, 105, 105); letter-spacing: 0pt; font-size: 21pt;\"><o:p></o:p></span></b></h3><h3 style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:22.5000pt;\nmargin-left:0.0000pt;text-indent:0.0000pt;padding:0pt 0pt 0pt 0pt ;\nmso-pagination:widow-orphan;mso-line-height-alt:12pt;\"><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">C2C交易打通了法币与数字货币的兑换通道，用户可以用法币(人民币/美元)购买数字货币，也可以在盈利后将数字货币售出，兑换成法币。</span><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">交易前提：通过实名认证</font>+设置资金密码+设置收付款账户。</span></b><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">1、买卖承兑商均通过实名认证，提供足额保证金(50万</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">YNC</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">或</font>350万人民币)，且由平台托管数字资产，可以放心交易；</span><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">2、法币交易区是用户与承兑商之间资产交易，资金不经转平台，平台也不接受人民币充值/汇款；</span><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">3、承兑商服务时间为每天09:00-21:00，接单后30分钟内完成承兑，2小时未完成交易作废；</span><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">4、法币交易区支持银行卡，禁止使用他人代付，ATM及柜台转账等，必须使用本人已实名认证的账户进行转账；</span><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">5、每天最多只能发起5笔卖单和5笔买单，请合理安排；</span><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">6、如您的交易24小时内未处理，请及时联系客服登记，待我们与承兑商确认后将联系您，请保持手机畅通；</span><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">申请成为承兑商：</font>apply@QIBIT.io</span><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"Helvetica\">附：关于（</font></span></b><b><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">YNC</span></b><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"Helvetica\">）</font>— </span></b><b><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"宋体\">一诺</font></span></b><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"Helvetica\">币</font></span></b><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">YNC</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">是</font></span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">公司推出的基于稳定价值</font></span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"宋体\">货币人民币</font></span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">（</font></span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">CNY</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">）的代币</font></span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">YNC</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">（下称</font></span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">YNC</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">），</font>1</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">YNC</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">=1</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"宋体\">人民币</font></span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">，用户可以随时使用</font></span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">YNC</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">与</font></span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">CNY</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">进行</font>1:1兑换。</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">公司严格遵守</font>1:1准备金保证，即每发行1个 </span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">YNC</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">代币，其银行账户都会有</font>1</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"宋体\">人民币</font></span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">的资金保障。</font></span><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp; &nbsp; &nbsp; &nbsp;用户可以在</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">平台进行资金查询，以保障透明度。用户可以通过</font></span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"宋体\">汇款人民币</font></span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">至</font></span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">公司提供的银行帐户，或通过交易所换取</font></span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">YNC</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">；赎回</font></span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"宋体\">人民币</font></span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">时，反向操作即可。用户也可在交易平台用比特币换取</font></span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">YNC</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">。</font></span><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">YNC</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">的发行和交易使用的是</font>Omni（原Mastercoin）协议，它是一个基于比特币区块链的2.0币种。</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">YNC</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">的交易确认等参数与比特币是一致的。</font></span><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">公司严格遵守</font>1:1准备金保证，即每发行1个 </span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">YNC</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">代币，其银行账户都会有</font>1</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"宋体\">人民币</font></span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">的资金保障。</font></span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">用户可以在</font></span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">平台进行资金查询，以保障透明度。</font></span><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">YNC</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;<font face=\"Helvetica\">并不是一个新出现的币种，早在</font> 201</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">9</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;<font face=\"Helvetica\">年就已上线交易，但因国内交易所引入较晚，所以很多投资者对其并不是很了解。币币交易后，很多投资者都比较关心如何将手中代币兑换成法币的问题，</font></span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">YNC</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">的出现给大家提供了一个将持有的代币兑换成法币的渠道。</font></span><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp; &nbsp; &nbsp; </span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">平台法币交易区提供人民币</font>/</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">YNC</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">兑换服务，其过程如下：</font></span><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp; &nbsp; &nbsp; &nbsp;1、承兑商与币严建立合作关系，将持有的</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">YNC</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">充值到币严平台，由币严平台托管，承兑商即开始提供兑换服务。</font></span><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp; &nbsp; &nbsp; &nbsp;2、买入</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">YNC</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">业务过程：</font></span><span style=\"mso-spacerun:\'yes\';font-family:Helvetica;color:rgb(116,119,122);\nletter-spacing:0.7500pt;font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:72.0000pt;margin-bottom:0.0000pt;\nmargin-left:72.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">①、用户下单购买</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">YNC</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"宋体\">，此时订单状态为【未接单】</font></span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:72.0000pt;margin-bottom:0.0000pt;\nmargin-left:72.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">②、承兑商收到订单并接单（</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">YNC</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"宋体\">余额充足时自动接单），此时订单状态为【已接单】</font></span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:72.0000pt;margin-bottom:0.0000pt;\nmargin-left:72.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">③、用户向承兑商的账户汇款，标记订单为【已付款】，此时订单状态为【已付款】</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:72.0000pt;margin-bottom:0.0000pt;\nmargin-left:72.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">④、承兑商查看收款账户，确认收款后，标记订单为【已完成】，币严平台自动扣除承兑商相应数量的</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">YNC</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"宋体\">，并为用户账户增加订单数量的</font></span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">YNC</span><span style=\"mso-spacerun:\'yes\';font-family:宋体;mso-ascii-font-family:Calibri;\nmso-hansi-font-family:Calibri;mso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;\nmso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:72.0000pt;margin-bottom:0.0000pt;\nmargin-left:72.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">⑤、订单完成！</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:72.0000pt;margin-bottom:0.0000pt;\nmargin-left:72.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:36.0000pt;margin-bottom:0.0000pt;\nmargin-left:36.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">3、卖出</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">YNC</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"Helvetica\">业务过程：</font></span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:72.0000pt;margin-bottom:0.0000pt;\nmargin-left:72.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">①、用户下单卖出</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">YNC</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"宋体\">，此时订单状态为【未接单】</font></span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:72.0000pt;margin-bottom:0.0000pt;\nmargin-left:72.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">②、承兑商收到订单，确认自己法币账户余额充足后，标记订单为【已接单】</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:72.0000pt;margin-bottom:0.0000pt;\nmargin-left:72.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">③、承兑商向用户提供的银行卡付款后，标记订单为【已付款】</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:72.0000pt;margin-bottom:0.0000pt;\nmargin-left:72.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">④、用户确认收款后，平台自动扣除用户订单数量的</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">YNC</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"宋体\">，并为承兑商账户增加订单数量的</font></span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">YNC</span><span style=\"mso-spacerun:\'yes\';font-family:宋体;mso-ascii-font-family:Calibri;\nmso-hansi-font-family:Calibri;mso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;\nmso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:72.0000pt;margin-bottom:0.0000pt;\nmargin-left:72.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">⑤、订单完成！</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:72.0000pt;margin-bottom:0.0000pt;\nmargin-left:72.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0pt 72pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"Helvetica\">注意一：买入</font></span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">YNC</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"Helvetica\">时，请在承兑商接单后</font>30分钟完成付款，否则将自动取消订单；</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0pt 36pt 0pt 66pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"Helvetica\">注意二、买入和卖出时，会自动冻结承兑商和用户订单数量的</font></span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">YNC</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"Helvetica\">；</font></span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0pt 36pt 0pt 66pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"Helvetica\">注意三、请勿频繁恶意下单，否则平台将对恶意下单账户进行冻结</font>/禁止交易的操作；</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"><o:p>&nbsp;</o:p></span></p></h3>', '2020-09-19 06:53:42', '', null, '10', '0', '2', 'C2C法币交易须知', 'CN');
INSERT INTO `sys_help` VALUES ('2', 'admin', '<p>如您在QIBIT（QIBIT.io）已完成提币转账申请操作，但提币仍未到账时，您可进行以下查验操作：</p><p><br></p><p><br></p><p><br></p><p>1、进入“个人中心”→“资产管理”→“提币”→“提币记录”中查看您的转账Transaction ID（TXID）。同时，生成Transaction ID（TXID）即代表QIBIT已为您完成提币转账操作，区块网络已接收到您的提币转账申请;</p><p><br></p><p><br></p><p><br></p><p>2、在区块浏览器上通过Transaction ID（TXID）查看区块确认数;</p><p><br></p><p><br></p><p><br></p><p>3、具体到账时间请您咨询您的提币入账方;</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>特别注意：</p><p><br></p><p><br></p><p><br></p><p>出于用户资金安全考虑，提现金额较大时会需要人工审核，人工审核无误后订单会被放行，请您耐心等待。若2小时后在您账户的“提币记录”中仍然没有Transaction ID（TXID）生成，请联系官方客服并提供：您的账户，提币种类数量，提现历史中该笔转账的截图。</p><p><br></p><p><br></p><p><br></p><p>&nbsp;</p><p><br></p><p><br></p><p><br></p><p>附件：部分币种区块确认数查询网站</p><p><br></p><p><br></p><p><br></p><p>USDT、BTC：https://btc.com/</p><p><br></p><p><br></p><p><br></p><p>ETH及ERC20币种：https://etherscan.io/</p><p><br></p><p><br></p><p><br></p><p>莱特币：https://chainz.cryptoid.info/ltc/</p><p><br></p><p><br></p><p><br></p><p>以太经典：http://gastracker.io/</p><p><br></p><p><br></p><p><br></p><p>BCH：https://bch.btc.com/</p><p><br></p><p><br></p><p><br></p><p>XRP：https://bithomp.com/explorer/</p><p><br></p>', '2020-09-19 06:55:51', '', null, '10', '0', '1', '提币未到账怎么办？', 'CN');
INSERT INTO `sys_help` VALUES ('3', 'admin', '<p>币种概况</p><p><br></p><p><br></p><p><br></p><p>发行时间： 2008-11-01</p><p><br></p><p>最大供应量： 21,000,000 BTC</p><p><br></p><p>总供应量： 17,811,737 BTC</p><p><br></p><p>核心算法： SHA256</p><p><br></p><p>激励机制： POW</p><p><br></p><p><br></p><p><br></p><p>币种简介</p><p><br></p><p><br></p><p><br></p><p>比特币（BitCoin）的概念最初由中本聪在2008年提出，根据中本聪的思路设计发布的开源软件以及建构其上的P2P网络。比特币是一种P2P形式的数字货币。点对点的传输意味着一个去中心化的支付系统。</p><p><br></p><p><br></p><p><br></p><p>与大多数货币不同，比特币不依靠特定货币机构发行，它依据特定算法，通过大量的计算产生，比特币经济使用整个p2p网络中众多节点构成的分布式数据库来确认并记录所有的交易行为，并使用密码学的设计来确保货币流通各个环节安全性。</p><p><br></p><p><br></p><p><br></p><p>p2p的去中心化特性与算法本身可以确保无法通过大量制造比特币来人为操控币值。基于密码学的设计可以使比特币只能被真实的拥有者转移或支付。这同样确保了货币所有权与流通交易的匿名性。比特币与其他虚拟货币最大的不同，是其总数量非常有限，具有极强的稀缺性。该货币系统曾在4年内只有不超过1050万个，之后的总数量将被永久限制在2100万个。</p><p><br></p><p>&nbsp;</p><p><br></p><p>比特，是一种计算机专业术语，是信息量单位，是由英文BIT音译而来。二进制数的一位所包含的信息就是一比特，如二进制数0100就是4比特。那么，比特这个概念和货币联系到一起，不难看出，比特币非现实货币，而是一种计算机电子虚拟货币，存储在你的电脑上。</p><p><br></p><p><br></p><p><br></p><p>目前，这种崭新的虚拟货币不受任何政府、任何银行控制。因此，它还未被合法化。</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>如何得到比特币</p><p><br></p><p><br></p><p><br></p><p>&nbsp; &nbsp; &nbsp; 如果你对它产生兴趣，你不仅可以在交易市场买到比特币，在很早期，比特币算力难度非常低时，还可以使用计算机依照算法进行大量的运算来“开采”比特币。</p><p><br></p><p>&nbsp; &nbsp; &nbsp; 在用户“开采”比特币时，需要用电脑搜寻64位的数字就行，然后通过反 复解谜与其他淘金者相互竞争，为比特币网络提供所需的数字，如果用户的电脑成功地创造出一组数字，那么就将会获得区块所奖励的比特币。&nbsp; &nbsp;</p><p><br></p><p>&nbsp; &nbsp; &nbsp; 但是由于比特币价值不断升高，目前比特币挖矿的用户数量非常庞大，有上百万的专业矿机在同时挖矿，而每10分钟产出的比特币又十分有限，形成了千万人抢1个区块的情况出现，所以，如果你用个人电脑单独挖矿，有可能一整年也抢不到一个区块，在这种情况下，人们就想出了一种组队挖矿的方法，于是矿池(mining pool)诞生了。</p><p><br></p><p>&nbsp; &nbsp; &nbsp; 矿池是一个通过特定算法而设计的服务器，所有连接到矿池服务器的用户，会组队进行挖矿，个人电脑的性能虽然渺小，但是成千上万的人进行组队挖矿，总体性能就会变得十分强大，在这种情况，挖矿的成功率会大大提升，一旦矿池中的队伍成功制造了一个区块，那么所有队伍中的人会根据每个人的电脑性能进行分红。</p><p><br></p><p>&nbsp; &nbsp; &nbsp; 比特币目前全网算力56.48 EH/s，全网难度7,409,399,249,090 - 7.41 T，每T收益1T * 24H = 0.00003394 BTC（2019年6月20日数据）。</p><p><br></p><p>&nbsp; &nbsp; &nbsp; 预计到2020-05-05，比特币产量会减半，而到2140年，流通的比特币上限将会达到2100万。换句话说，比特币系统是能够实现自给自足的，通过编码来抵御通胀，并防止他人对这些代码进行破坏。</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>比特币的特点</p><p><br></p><p><br></p><p><br></p><p>去中心化</p><p><br></p><p>比特币是第一种分布式的虚拟货币，整个网络由用户构成，没有中央银行。去中心化是比特币安全与自由的保证。</p><p><br></p><p><br></p><p><br></p><p>全世界流通</p><p><br></p><p>比特币可以在任意一台接入互联网的电脑上管理。不管身处何方，任何人都可以挖掘、购买、出售或收取比特币</p><p><br></p><p><br></p><p><br></p><p>专属所有权</p><p><br></p><p>操控你的比特币需要你的私钥，它可以被隔离保存在任何存储介质。除了你之外无人可以获取。</p><p><br></p><p><br></p><p><br></p><p>低交易费用</p><p><br></p><p>目前可以免费汇出比特币，但最终对每笔交易将收取约1比特分的交易费以确保交易更快执行。关于交易费的详情。</p><p><br></p><p><br></p><p><br></p><p>无隐藏成本</p><p><br></p><p>作为由A到B的支付手段，比特币没有繁琐的额度与手续限制。知道对方比特币地址就可以进行支付。</p><p><br></p><p><br></p><p><br></p><p>跨平台挖掘</p><p><br></p><p>比特币是技术人士的热爱！可以在众多平台上发掘不同硬件的计算能力。非小号的极客用户们应该会很有同感：这本身已构成一种乐趣。</p><p><br></p><p><br></p><p><br></p><p><br></p><p>比特币Q&amp;A</p><p><br></p><p><br></p><p><br></p><p>比特币是如何运作的?</p><p><br></p><p>比特币使用了公开密钥系统。每一个钱币都包括了其拥有者的公开密匙。当钱币从用户A支付给用户B时, A将B的公开密匙添加到钱币中, 然后这个钱币又被A用私人密码匙来签封。B现在即拥有了这个钱币并且可以将来使用，而A就不可能再次使用这个钱币，因为以前的交易记录以被全体网络计算机收录维护。在每笔交易前，钱币的有效性都必须经过检验确认。</p><p><br></p><p>&nbsp;</p><p><br></p><p>比特币值多少钱？</p><p><br></p><p>在比特币刚诞生的时候，几乎一文不值，1美元平均能够买到1309.03个比特币，但比特币价格曾一度飙升至15000美元，感兴趣的朋友可以在非小号网站，了解比特币的实时行情。</p><p><br></p><p>&nbsp;</p><p><br></p><p>比特币能否兑换现金？</p><p><br></p><p>答案是肯定的。你只需与比特币交易机构取得联系即可完成兑换。币严BIZZAN即将开通法币兑换OTC服务，届时在BIZZAN即可完成一站式买卖比特币。</p><p><br></p><p>&nbsp;</p><p><br></p><p>比特币是匿名的吗？</p><p><br></p><p>比特币不是匿名的，相反，严格来讲，比特币是完全公开而且可追踪的。与其说比特币是匿名，不如说是非实名的。举个例子，如果在非小号上，你不用真名注册，不填写个人信息，你的唯一代号是你的id，这叫非实名；你发帖选择匿名用户，这才叫匿名。</p><p><br></p><p><br></p><p>在比特币世界里的地址的所有转账记录都可追踪，简单说，如果你从交易所转一笔钱到比特币，然后拿来黑市交易，不管你进行多少次交易，想查的话很快就能查到你钱的来路从而追踪到你。就如同你用同样的ID上非小号，只要你暴露过个人信息，总能人肉到你。</p><p><br></p><p>所以比特币不是匿名的，而是非实名。</p><p><br></p><p><br></p><p><br></p><p>真正的匿名的有门罗币（XMR）、大零币（ZEC）、达世币（DASH）等，非小号一共收录了40种匿名货币，其中XMR，DASH，ZEC产生较早，市值较大，应用较广，并称为三大匿名货币。大家可以点击进行比较哦。</p><p><br></p><p><br></p><p><br></p><p>比特币能做什么？</p><p><br></p><p>智能合约、信息公开、投资避险、支付汇款、炒作标的、价值储存、货币发行与社会公平、洗钱、赌博等，哦对了，还有买披萨。</p><p><br></p><p>&nbsp;</p><p><br></p><p>为何要关注比特币？</p><p><br></p><p>比特币代表了一种完全匿名而且无需成本的交易方式，比特币不属于任何国家，并且不受地域限制，是一种用户能够随时随地进行自由兑换的货币。对于这种新鲜且前景一片大好的货币形式，我们没有理由不去关注它。</p><p><br></p><p>&nbsp;</p><p><br></p><p>比特币交易合法吗？</p><p><br></p><p>2013 年 12 月，中国人民银行等五部委联合发布的《关于防范比特币风险的通知》中，禁止金融机构介入比特币，但同时认为：</p><p><br></p><p>“比特币是一种特定的虚拟商品，不具有与货币等同的法律地位，不能且不应作为货币在市场上流通使用。但是，比特币交易作为一种互联网上的商品买卖行为，普通民众在自担风险的前提下拥有参与的自由。”</p><p><br></p><p>根据国家相关法律法规，买卖比特币是属于合法的。</p><p><br></p><p>据目前五部委的声明，比特币是商品，是交易合法的。</p><p><br></p><p>相关链接</p><p><br></p><p>官方网址：https://bitcoin.org/</p><p>白皮书：http://www.bitcoin.org/bitcoin.pdf</p><p>区块浏览器①：https://www.blockchain.com/explorer</p><p>区块浏览器②：https://blockexplorer.com/</p><p>区块浏览器③：https://btc.com/</p><p>区块浏览器④：https://blockchair.com/bitcoin/blocks</p>', '2020-09-19 06:56:52', '', null, '10', '0', '3', 'BTC-比特币（Bitcoin）简介', 'CN');
INSERT INTO `sys_help` VALUES ('4', 'admin', '<p>币种概况</p><p><br></p><p><br></p><p><br></p><p>发行时间 2014-07-24</p><p><br></p><p>最大供应量 106,856,137 ETH</p><p><br></p><p>总供应量 106,856,137 ETH</p><p><br></p><p>核心算法 Ethash</p><p><br></p><p>激励机制 POW+POS</p><p><br></p><p><br></p><p><br></p><p>币种简介</p><p><br></p><p><br></p><p><br></p><p>Ethereum（以太坊）是一个平台和一种编程语言，使开发人员能够建立和发布下一代分布式应用。 Ethereum可以用来编程，分散，担保和交易任何事物：投票，域名，金融交易所，众筹，公司管理， 合同和大部分的协议，知识产权，还有得益于硬件集成的智能资产。</p><p><br></p><p><br></p><p><br></p><p>以太坊将使用混合型的安全协议，前期使用工作量证明机制（POW），用于分发以太币，然后会切换到权益证明机制（POS）。自上线时起，每年都将有0.26x，即每年有60102216 * 0.26 = 15626576个以太币被矿工挖出。转成POS后，每年产出的以太币将减少。</p><p><br></p><p>&nbsp;</p><p><br></p><p>以太坊的产生背景</p><p><br></p><p>&nbsp;</p><p><br></p><p>比特币开创了去中心化密码货币的先河，五年多的时间充分检验了区块链技术的可行性和安全性。比特币的区块链事实上是一套分布式的数据库，如果再在其中加进一个符号——比特币，并规定一套协议使得这个符号可以在数据库上安全地转移，并且无需信任第三方，这些特征的组合完美地构造了一个货币传输体系——比特币网络。</p><p><br></p><p><br></p><p><br></p><p>然而比特币并不完美，其中协议的扩展性是一项不足，例如比特币网络里只有一种符号——比特币，用户无法自定义另外的符号，这些符号可以是代表公司的股票，或者是债务凭证等，这就损失了一些功能。另外，比特币协议里使用了一套基于堆栈的脚本语言，这语言虽然具有一定灵活性，使得像多重签名这样的功能得以实现，然而却不足以构建更高级的应用，例如去中心化交易所等。以太坊从设计上就是为了解决比特币扩展性不足的问题。</p><p><br></p><p>&nbsp;</p><p><br></p><p>以太坊开启“区块链2.0时代”</p><p><br></p><p>&nbsp;</p><p><br></p><p>区块链技术是比特币的底层技术，这一技术第一次被描述是在中本聪2008年发表的白皮书“比特币：点对点电子现金系统”中。区块链技术更多的一般性用途在原书中已经有所讨论，但直到几年后，区块链技术才作为通用术语出现。一个区块链是一个分布式计算架构，里面的每个网络节点执行并记录相同的交易，交易被分组为区块。一次只能增加一个区块，每个区块有一个数学证明来保证新的区块与之前的区块保持先后顺序。这样一来，区块链的“分布式数据库”就能和整个网络保持一致。个体用户与总账的互动（交易）受到安全的密码保护。由数学执行并编码到协议中的经济激励因素刺激着维持和验证网络的节点。</p><p><br></p><p><br></p><p>在比特币中，分布式数据库被设想为一个账户余额表，一个总账，交易就是通过比特币的转移以实现个体之间无需信任基础的金融活动。但是随着比特币吸引了越来越多开发者和技术专家的注意，新的项目开始将比特币网络用于有价代币转移之外的其他用途。其中很多都采用了“代币”的形式——以原始比特币协议为基础，增加了新的特征或功能，采用各自加密货币的独立区块链。在2013年末，以太坊的发明者Vitalik Buterin（被圈内人尊称为“V神”）建议能够通过程序重组来运行任意复杂运算的单个区块链应该包含其他的程序。</p><p><br></p><p><br></p><p><br></p><p>2014年，以太坊的创始人Vitalik Buterin, Gavin Wood和Jeffrey Wilcke开始研究新一代区块链，试图实现一个总体上完全无需信任基础的智能合约平台。</p><p><br></p><p><br></p><p><br></p><p>以太坊的最高峰时期，大家可以从行情图上看到以太坊在2018年年初曾高达＄1506，这是因为当时数以万计的项目都靠以太坊来进行发币（也就是ICO狂潮时期），所有使用以太坊智能合约发币的又被大家称为“山寨币”，可以说没有以太坊的诞生，就没有成千上万的区块链项目，所以以太坊是名副其实地开启了“区块链2.0时代”。</p><p><br></p><p><br></p><p><br></p><p>基于以太坊开发的区块链项目，比较具有代表性的有：唯链（VET）、Augur（REP）、Zilliqa (ZIL)、LoopringCoin V2 (LRC)等等。</p><p><br></p><p>&nbsp;</p><p><br></p><p>以太坊的工作原理</p><p><br></p><p>&nbsp;</p><p><br></p><p>以太坊是一个平台，它上面提供各种模块让用户来搭建应用，如果将搭建应用比作造房子，那么以太坊就提供了墙面、屋顶、地板等模块，用户只需像搭积木一样把房子搭起来，因此在以太坊上建立应用的成本和速度都大大改善。具体来说，以太坊通过一套图灵完备的脚本语言（Ethereum Virtual Machine code，简称EVM语言）来建立应用，它类似于汇编语言，我们知道，直接用汇编语言编程是非常痛苦的，但以太坊里的编程并不需要直接使用EVM语言，而是类似C语言、Python、Lisp等高级语言，再通过编译器转成EVM语言。</p><p><br></p><p><br></p><p><br></p><p>上面所说的平台之上的应用，其实就是合约，这是以太坊的核心。合约是一个活在以太坊系统里的自动代理人，他有一个自己的以太币地址，当用户向合约的地址里发送一笔交易后，该合约就被激活，然后根据交易中的额外信息，合约会运行自身的代码，最后返回一个结果，这个结果可能是从合约的地址发出另外一笔交易。需要指出的是，以太坊中的交易，不单只是发送以太币而已，它还可以嵌入相当多的额外信息。如果一笔交易是发送给合约的，那么这些信息就非常重要，因为合约将根据这些信息来完成自身的业务逻辑。</p><p><br></p><p><br></p><p><br></p><p>合约所能提供的业务，几乎是无穷无尽的，它的边界就是你的想象力，因为图灵完备的语言提供了完整的自由度，让用户搭建各种应用。白皮书举了几个例子，如储蓄账户、用户自定义的子货币等。</p><p><br></p><p><br></p><p><br></p><p>以太坊的技术原理</p><p><br></p><p><br></p><p><br></p><p>以太坊合并了很多对比特币用户来说十分熟悉的特征和技术，同时自己也进行了很多修正和创新。比特币区块链纯粹是一个关于交易的列表，而以太坊的基础单元是账户。以太坊区块链跟踪每个账户的状态，所有以太坊区块链上的状态转换都是账户之间价值和信息的转移。账户分为两类：</p><p><br></p><p><br></p><p><br></p><p>外部账户（EOA），由私人密码控制</p><p>合约账户，由它们的合约编码控制，只能由外部账户“激活”</p><p>&nbsp;</p><p><br></p><p>对于大部分用户来说，两者基本的区别在于外部账户是由人类用户掌控——因为他们能够控制私钥，进而控制外部账户。而合约账户则是由内部编码管控。如果他们是被人类用户“控制”的，那也是因为程序设定它们被具有特定地址的外部账户控制，进而被持有私钥控制外部账户的人控制着。“智能合约”这个流行的术语指的是在合约账户中编码——交易被发送给该账户时所运行的程序。用户可以通过在区块链中部署编码来创建新的合约。</p><p><br></p><p><br></p><p><br></p><p>只有当外部账户发出指令时，合约账户才会执行相应的操作。所以合约账户不可能自发地执行诸如任意数码生成或应用程序界面调用等操作--只有受外部账户提示时，它才会做这些事。这是因为以太坊要求节点能够与运算结果保持一致，这就要求保证严格确定执行。</p><p><br></p><p><br></p><p><br></p><p>和比特币一样，以太坊用户必须向网络支付少量交易费用。这可以使以太坊区块链免受无关紧要或恶意的运算任务干扰，比如分布式拒绝服务（DDoS）攻击或无限循环 。交易的发送者必须在激活的“程序”每一步付款，包括运算和记忆储存。费用通过以太坊自有的有价代币，以太币的形式支付。</p><p><br></p><p><br></p><p><br></p><p>交易费用由节点收集，节点使网络生效。这些“矿工”就是以太坊网络中收集、传播、确认和执行交易的节点。矿工们将交易分组——包括许多以太坊区块链中账户“状态”的更新——分成的组被称为“区块”，矿工们会互相竞争，以使他们的区块可以添加到下一个区块链上。矿工们每挖到一个成功的区块就会得到以太币奖励。这就为人们带来了经济激励，促使人们为以太坊网络贡献硬件和电力。</p><p><br></p><p><br></p><p><br></p><p>和比特币网络一样，矿工们有解决复杂数学问题的任务以便成功地“挖”到区块。这被称为“工作量证明”。一个运算问题，如果在算法上解决，比验证解决方法需要更多数量级的资源，那么它就是工作证明的极佳选择。为防止比特币网络中已经发生的，专门硬件（例如特定用途集成电路）造成的中心化现象，以太坊选择了难以存储的运算问题。如果问题需要存储器和CPU，事实上理想的硬件是普通的电脑。这就使以太坊的工作量证明具有抗特定用途集成电路性，和比特币这种由专门硬件控制挖矿的区块链相比，能够带来更加去中心化的安全分布。</p><p><br></p><p>相关链接</p><p><br></p><p>官方网址：https://www.ethereum.org/</p><p>白皮书：https://github.com/ethereum/wiki/wiki/White-Paper</p><p>区块浏览器①：https://www.yitaifang.com/</p><p>区块浏览器②：https://etherscan.io/</p><p>区块浏览器③：https://ethplorer.io/</p><p>区块浏览器④：https://etherchain.org/</p><div><br></div>', '2020-09-19 06:57:19', '', null, '11', '0', '3', 'ETH-以太坊（Ethereum）简介', 'CN');
INSERT INTO `sys_help` VALUES ('5', 'admin', '<p>市价交易分为市价买入与市价卖出：</p><p><br></p><p><br></p><p><br></p><p>【市价买入】</p><p><br></p><p>即根据已有的挂单进行成交，如果你要求以市价买入，你会优先和卖1成交，如果卖1的挂单成交完了还未达到你委托的买入量，则和卖2成交，如果还未达到委托量，再和卖3成交，以此类推。</p><p><br></p><p><br></p><p><br></p><p>【市价卖出】</p><p><br></p><p>同样的道理，先和买1成交，未达到委托量，再分别和买2、买3、买4成交，直到达到委托量为止。</p><p><br></p><p><br></p><p><br></p><p>市价成交也被称为“吃单”，因为形象上就是把别人挂的买一卖一、买二卖二“吃掉”。当然，用远高于卖1的限价委托买入或者用远低于买1的限价委托卖出也能够达到“吃单”的效果。</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>举例，假如当前盘面如下：</p><p><br></p><p><br></p><p><br></p><p>-------------价格-----挂单数----</p><p><br></p><p>卖5:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;25&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2</p><p><br></p><p>卖4:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;24&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2</p><p><br></p><p>卖3:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;23&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3</p><p><br></p><p>卖2:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;22&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2</p><p><br></p><p>卖1:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;21&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2</p><p><br></p><p>----------------------------------</p><p><br></p><p>最新成交价：9.1</p><p><br></p><p>----------------------------------</p><p><br></p><p>买1:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;20&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</p><p><br></p><p>买2:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;19&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2</p><p><br></p><p>买3:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;18&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3</p><p><br></p><p>买4:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;17&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2</p><p><br></p><p>买5:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3</p><p><br></p><p>-------------价格-----挂单数----</p><p><br></p><p><br></p><p><br></p><p>一、小王假如挂100usdt的市价买单，那么小王的委托将会得到以下成交结果：</p><p><br></p><p><br></p><p><br></p><p>21usdt，成交&nbsp; &nbsp;2个 = 42usdt</p><p><br></p><p>22usdt，成交&nbsp; &nbsp;2个 = 44usdt</p><p><br></p><p>23usdt，成交0.6个 = 14usdt</p><p><br></p><p><br></p><p><br></p><p>也就是说，小王用100usdt买到了4.6个币，成交均价为100/4.6 = 21.73 usdt</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>二、小王如挂7个币的市价卖单，那么小王的市价委托将得到如下成交结果：</p><p><br></p><p><br></p><p><br></p><p>20usdt，成交&nbsp; &nbsp; &nbsp;1个&nbsp; =&nbsp; 20usdt</p><p><br></p><p>19usdt，成交&nbsp; &nbsp; &nbsp;2个&nbsp; =&nbsp; 38usdt</p><p><br></p><p>18usdt，成交&nbsp; &nbsp; &nbsp;3个&nbsp; =&nbsp; 54usdt</p><p><br></p><p>17usdt，成交&nbsp; &nbsp; &nbsp;1个&nbsp; =&nbsp; 17usdt</p><p><br></p><p><br></p><p><br></p><p>也就是说，小王通过卖出7个币，得到了20+38+54+17 = 129usdt</p><p><br></p><p><br></p><p><br></p><p>特别提醒：</p><p>请谨慎操作市价卖单与市价卖单，当市场交易深度足够时，市价订单可能会以较为接近当前价格成交，但当市场深度不足时，很可能会发生天价成交或地价成交的情况。</p>', '2020-09-19 06:59:02', '', null, '11', '0', '2', '什么是市价交易？', 'CN');
INSERT INTO `sys_help` VALUES ('6', 'admin', '<div class=\"image-desc\" style=\"text-align: center; color: #333;\"><br></div><div class=\"image-desc\" style=\"text-align: center;\"><div class=\"image-desc\" style=\"\"><font color=\"#333333\">限价交易分为限价买入与限价卖出：</font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\">Limit Buy = 限价买入 ---- 限定必须以等于或低于指定价格的价格成交</font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\">例子：比特币现价是12000usdt，小编预计未来行情会跌到11000usdt然后开始反弹走高，那么小编就在11000做挂单，这时就用限价买入，这时只有当比特币价格跌到11000或低于11000，小编的挂单才会成交。</font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\">注意：挂限价买入单时，如果下单价高于当前现价，那么如有合适卖单对应，则会直接成交；如下单价低于当前现价，则下单当时不会有任何成交，直到价格下跌到下单价时才会成交。</font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\">Limit Sell = 限阶卖出 ---- 限定必须以等于或高于指定价格的价格成交</font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\">例子：比特币现价是12000usdt，小编预计未来行情会涨到16000usdt到顶，然后开始下跌，那么小编就在16000做挂单，这时就用限价卖出。这时只有当比特币价格涨到16000或高于16000，小编的挂单才会成交。</font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\" style=\"\"><font color=\"#333333\">注意：挂限价卖出单时，如果下单价高于当前现价，那么下单当时不会有任何成交；如下单价低于当前现价，则下单当时如有合适的买入订单则会成交。</font></div><div class=\"image-desc\" style=\"color: rgb(51, 51, 51);\"><br></div></div>', '2020-09-19 07:00:44', '', null, '13', '0', '2', '什么是限价交易？', 'CN');
INSERT INTO `sys_help` VALUES ('7', 'admin', '<p>风险提示</p><p><br></p><p><br></p><p><br></p><p>1. 数字资产涉及重大风险，市场交易不确定性因素较多。同时由于数字货币总市值普遍偏少，价格易受到庄家控制以及全球各政府政策的影响而出现大幅波动。由于价格波动，您可能会有大额的盈利或亏损。任何数字资产都可能发生大幅度波动，甚至可能变得毫无价值。</p><p><br></p><p><br></p><p><br></p><p>2.因各国法律、法规和规范性文件的制定或者修改，数字资产交易随时可能被暂停、或被禁止，用户使用QIBIT服务时请自行根据当地法律法规、政策性文件评估风险。</p><p><br></p><p><br></p><p><br></p><p>3.用户参与数字资产交易，应当根据自己财务状况，仔细考虑、评估数字资产投资价值和投资风险，自行控制交易风险，并承担可能损失全部投资的经济风险。</p><p><br></p><p><br></p><p><br></p><p>法律声明</p><p><br></p><p><br></p><p><br></p><p>一、权利归属</p><p><br></p><p><br></p><p><br></p><p>除非QIBIT另行声明，QIBIT内的所有产品、技术、软件、程序、数据及其他信息（包括文字、图标、图片、照片、音频、视频、图表、色彩组合、版面设计等）的所有权利（包括版权、商标权、专利权、商业秘密及其他相关权利）均归QIBIT服务提供者及/或其关联公司所有。未经QIBIT服务提供者及/或其关联公司许可，任何人不得以包括通过机器人、蜘蛛等程序或设备监视、复制、传播、展示、镜像、上载、下载等方式擅自使用QIBIT内的任何内容。</p><p><br></p><p><br></p><p><br></p><p>QIBIT文字及标识，以及QIBIT的其他标识、徽记、产品和服务名称均为QIBIT服务提供者及/或其关联公司商标，如有宣传、展示等任何使用需要，您必须取得QIBIT服务提供者及/或其关联公司事先书面授权。</p><p><br></p><p><br></p><p><br></p><p>二、责任限制</p><p><br></p><p><br></p><p><br></p><p>鉴于QIBIT系提供一个包含数字资产的在线交易平台，用于交易数字资产和衍生品。QIBIT作为“网络服务提供者”的第三方平台，不担保网站平台上的信息及服务能充分满足用户的需求。QIBIT转载的作品（包括用户评论）出于传递更多信息之目的，并不意味我们赞同其观点或已经证实其内容的真实性。&nbsp;</p><p><br></p><p><br></p><p><br></p><p>1、用户理解并同意，QIBIT的服务是按照现有技术和条件所能达到的现状提供的。QIBIT会尽最大努力向用户提供服务，确保服务的连贯性和安全性；但QIBIT不能随时预见和防范法律、技术以及其他风险，包括但不限于不可抗力、病毒、木马、黑客攻击、系统不稳定、第三方服务瑕疵、政府行为等原因可能导致的服务中断、数据丢失以及其他的损失和风险。QIBIT因下列情形无法正常运作，致使用户无法使用各项服务时，QIBIT将免于承担任何损害赔偿责任，该情形包括但不限于：</p><p><br></p><p><br></p><p><br></p><p>1）．QIBIT平台公告之系统停机维护期间；</p><p><br></p><p><br></p><p><br></p><p>2）．电信设备出现故障不能进行数据传输的；</p><p><br></p><p><br></p><p><br></p><p>3）．因台风、地震、海啸、洪水、停电、战争、恐怖袭击等不可抗力之因素，造成QIBIT平台系统障碍不能正常运作的；</p><p><br></p><p><br></p><p><br></p><p>4）．由于黑客攻击、计算机病毒侵入或发作、电信部门技术调整或故障、网站升级、银行方面的问题、因政府管制而造成的暂时性关闭等影响网络正常经营的原因而造成的服务中断或者延迟；</p><p><br></p><p><br></p><p><br></p><p>5）．因为行业现有技术力量无法预测或无法解决的技术问题而造成的损失；</p><p><br></p><p><br></p><p><br></p><p>6）．因第三方的过错或者延误而给用户或者其他第三方造成的损失。</p><p><br></p><p><br></p><p><br></p><p>由于系统故障，网络原因，DDos等黑客攻击等意外因素可能导致的异常成交，行情中断，以及其他可能的异常情况，QIBIT有权根据实际情况取消异常成交结果，以及回滚某一段时间的所有成交。</p><p><br></p><p><br></p><p><br></p><p>2.、用户在使用QIBIT服务时已充分了解交易风险并同意在任何情况下，QIBIT就以下各事项不承担任何赔偿责任：</p><p><br></p><p><br></p><p><br></p><p>1)收入的损失；</p><p><br></p><p><br></p><p><br></p><p>2)交易利润或合同损失；</p><p><br></p><p><br></p><p><br></p><p>3)业务中断；</p><p><br></p><p><br></p><p><br></p><p>4)预期可节省的货币的损失；</p><p><br></p><p><br></p><p><br></p><p>5)信息的损失；</p><p><br></p><p><br></p><p><br></p><p>6)机会、商誉或声誉的损失；</p><p><br></p><p><br></p><p><br></p><p>7)数据的损坏或损失；</p><p><br></p><p><br></p><p><br></p><p>8)购买替代产品或服务的成本；</p><p><br></p><p><br></p><p><br></p><p>9)数字资产消亡或退出市场。</p>', '2020-09-19 07:05:46', '', null, '1', '0', '5', '免责声明', 'CN');
INSERT INTO `sys_help` VALUES ('8', 'admin', '<p>一、双方</p><p><br></p><p><br></p><p><br></p><p>1.1 QIBIT LTD.（以下称 “公司”）是一家根据开曼群岛法律在开曼群岛注册成立的公司，该公司运营网站http://www.QIBIT.io（以下称“本网站”或“网站”），该网站是一个专门供用户进行数字资产交易和提供相关服务（以下称“该服务”或“服务”）的平台。为了本协议表述之方便，公司和该网站在本协议中合称使用“我们”或其他第一人称称呼。</p><p><br></p><p><br></p><p><br></p><p>1.2 只要登陆该网站的自然人或其他主体均为本网站的用户，本协议表述之便利，以下使用“您”或其他第二人称。</p><p><br></p><p><br></p><p><br></p><p>1.3 为了本协议表述之便利，我们和您在本协议中合称为“双方”，我们或您单称为“一方”。</p><p><br></p><p><br></p><p><br></p><p>&nbsp;</p><p><br></p><p><br></p><p><br></p><p>二、隐私政策制定的目的</p><p><br></p><p><br></p><p><br></p><p>隐私政策规定了我们只通过您登陆本网站、在本网站上注册和/或使用我们提供的服务采集您信息的类型以及我们如何使用和保护这些采集到的信息。</p><p><br></p><p><br></p><p><br></p><p>&nbsp;</p><p><br></p><p><br></p><p><br></p><p>三、您的同意</p><p><br></p><p><br></p><p><br></p><p>为确保您对我们在处理个人资料上有充分信心, 您切要详细阅读及理解隐私政策的条文。特别是您一旦登陆我们的网站，不论您是否在该网站上注册，您均向我们表明您接受、同意、承诺和确认：</p><p><br></p><p><br></p><p><br></p><p>3.1 您在自愿下连同所需的同意向我们披露个人资料；</p><p><br></p><p><br></p><p><br></p><p>3.2 您会遵守本隐私政策的全部条款和限制；</p><p><br></p><p><br></p><p><br></p><p>3.3 您同意我们通过您登陆本网站、在本网站上注册和/或使用我们提供的服务收集您的信息；您同意日后我们对隐私政策的任何修改；</p><p><br></p><p><br></p><p><br></p><p>3.4 您同意我们的分公司、附属公司、雇员就您可能会感兴趣的产品和服务与您联络( 除非您已经表示不想收到该等讯息 )。</p><p><br></p><p><br></p><p><br></p><p>&nbsp;</p><p><br></p><p><br></p><p><br></p><p>四、收集的信息</p><p><br></p><p><br></p><p><br></p><p>4.1 当您使用本网站时，您同意我们开始使用cookies来追踪您的每一个动作，并收集和记住您留下的所有信息，其中包括但不限于您的IP地址，地理位置及其他资料。</p><p><br></p><p><br></p><p><br></p><p>4.2 如果您愿意使用本网站提供的服务，您需要填写和提供以下两种信息：</p><p><br></p><p><br></p><p><br></p><p>4.2.1 身份信息。该信息可以帮助我们验证您是否有资格注册为本网站会员，包括但不限于您的名字、您的居住地址、邮寄地址、您所属国家或政府签发的其他具有证明您身份信息的不同的证书以及涉及到的号码及所有其他可帮助我们验证您身份的信息（以下合称为“身份信息” ）。</p><p><br></p><p><br></p><p><br></p><p>4.2.2 服务信息。该信息帮助我们与您联系并顺利为您提供服务，包括但不限于您的电话号码、传真号码、有效的电子邮件地址、邮寄地址以及您的借记卡信息和/或其他帐户信息（以下合 称为“服务信息” ）。</p><p><br></p><p><br></p><p><br></p><p>4.3 在您使用本网站或其提供的服务时，我们可能会为了改进本网站的使用功能，提升您对使用本网站及其提供的服务及其安全性的体验或是根据法院或可适用法律法规或有管辖权的其他政府机构的命令，通过本网站公示的专属于我们的邮箱或其他我们认为合规的方式收集更多的必要的信息。</p><p><br></p><p><br></p><p><br></p><p>4.4 如果您访问了在本网站上的其他第三方网站或合作的第三方的任何链接，您应同意并遵守该第三方网单独和独立的隐私政策。我们对这些网站或合作方的内容及活动不承担任何责任。</p><p><br></p><p><br></p><p><br></p><p>&nbsp;</p><p><br></p><p><br></p><p><br></p><p>五、Cookies</p><p><br></p><p><br></p><p><br></p><p>5.1 当您到访我们网站时, 我们通过cookies使用Google Stats去记录我们的业绩以及核对在线广告的效果。Cookie是发送到您的浏览器上并在您的电脑硬盘驱动器上存储的小量数据。只有当您使用您的电脑进入我们网站时,Cookie才能够被发送到您的电脑硬盘上。</p><p><br></p><p><br></p><p><br></p><p>5.2 Cookies常用于记录访问者浏览我们网站上的各个项目时的习惯以及偏好。Cookies所搜集的资料是不记名的集体统计数据, 不载有个人资料。</p><p><br></p><p><br></p><p><br></p><p>5.3 Cookies不能用于取得您的硬盘上的数据、您的电邮地址、及您的私人数据，其可使本网站或服务商系统识别到您的浏览器并捕捉和记忆信息。大多数浏览器都预设为可以接受Cookies。您可以选择将您的浏览器设定为不接受Cookies,或如果Cookies一被装上就通知您。不过, 若设定为禁止Cookies, 您或许便不能启动或使用我们网站的某些功能。</p><p><br></p><p><br></p><p><br></p><p>&nbsp;</p><p><br></p><p><br></p><p><br></p><p>六、信息使用用途</p><p><br></p><p><br></p><p><br></p><p>6.1 我们为了以下目的或以下列方式使用我们收集到的您的信息：</p><p><br></p><p><br></p><p><br></p><p>6.1.1 通过我们的网站向您提供我们的各项服务；</p><p><br></p><p><br></p><p><br></p><p>6.1.2 当您使用我们的网站时, 能辨认及确认您的身份；</p><p><br></p><p><br></p><p><br></p><p>6.1.3 为了改善和提高网站的服务（根据我们收到的您的信息及反馈，帮助我们改善网站的服务，进而我们可以更有效地对您的服务请求和支持需求做出回应）；</p><p><br></p><p><br></p><p><br></p><p>6.1.4 统计我们网站使用量的数据和政府机关、事业单位等合作的数据分析；</p><p><br></p><p><br></p><p><br></p><p>6.1.5 个性化您的体验（您的信息将帮助我们更好地为您的个性化需求作出回应）；</p><p><br></p><p><br></p><p><br></p><p>6.1.6 处理交易（您的信息，无论是公共或私人的，未经您的同意不会以任何理由被出售、交换、转移，或提供给任何其他公司，但除了为完成您所要求的交易的明确目的之外 ）；</p><p><br></p><p><br></p><p><br></p><p>6.1.7 定期发送电子邮件（您提供订单处理的电子邮件地址，除了偶尔接收我们的新闻，更新，相关产品或服务的信息等，可用来向您发送信息和更新有关您的订单）；</p><p><br></p><p><br></p><p><br></p><p>6.1.8 满足本网站用户协议规定的其他目的和为了满足该等目的的所有合法途径。</p><p><br></p><p><br></p><p><br></p><p>6.2 我们不会向其他方出售、交易或以其他方式转让信息或允许他人收集、使用信息，但不包括以下其他方和以下信息：我们的关联方、帮助我们经营我们的网站、开展业务、或者向您提供服务的受信任的第三方，只要这些当事方同意将这些信息保密；当我们相信披露的信息是适当的，是遵守法律、法规、规章制度的或来自于法院或他主管当局的命令、执行我们的网站策略，正常运行网站所需要，关联方提供服务所需或保护我们或他人的权利、财产或安全的。但是，您的信息不会提供给其他方进行营销，广告或其他用途。</p><p><br></p><p><br></p><p><br></p><p>&nbsp;</p><p><br></p><p><br></p><p><br></p><p>七、个人资料的保护</p><p><br></p><p><br></p><p><br></p><p>7.1 我们实施妥善的实物、电子、管理及技术方面的措施来保护和保障您的个人资料的安全。我们尽力确保通过我们网站所搜集的任何个人资料皆免于任何与我们无关的第三者的滋扰。我们采取的安全措施包括但不限于：</p><p><br></p><p><br></p><p><br></p><p>7.1.1 实物措施：存有您个人资料的记录会被存放在有锁的地方。</p><p><br></p><p><br></p><p><br></p><p>7.1.2 电子措施：存有您个人资料的电脑数据会被存放在受严格登入限制的电脑系统和存储媒体上。</p><p><br></p><p><br></p><p><br></p><p>7.1.3 管理措施：只有经我们授权的职员才能接触到您的个人资料, 这些职员需要遵守我们个人资料保密的内部守则。</p><p><br></p><p><br></p><p><br></p><p>7.1.4 技术措施：可能采用如Secure Socket Layer Encryption这种加密技术来输送您的个人资料。</p><p><br></p><p><br></p><p><br></p><p>7.1.5 其它措施：我们的网络服务器受到“防火墙”的保护。</p><p><br></p><p><br></p><p><br></p><p>7.2 若您知悉我们的网站上有任何安全方面的漏洞, 请马上联系我们, 使我们可以尽快采取妥适的行动。</p><p><br></p><p><br></p><p><br></p><p>7.3 尽管实施了上述技术和保安的措施, 我们不能保证资料在互联网上的输送绝对安全, 因此我们不能绝对保证您通过我们网站提供给我们的个人资料在一切时候都是安全的。对任何因未经授权而接触您个人资料所发生的事件我们一槪不承担责任, 于这方面产生或导致的任何损失或损害, 我们不负责赔偿。</p><p><br></p><p><br></p><p><br></p><p>&nbsp;</p><p><br></p><p><br></p><p><br></p><p>八、隐私政策的修订</p><p><br></p><p><br></p><p><br></p><p>我们保留随时修改该隐私政策的权利。我们通过更新和发布新版本的生效日期告诉您我们修订了隐私政策，并突出修订处，有时我们会发布通知告诉您隐私政策已修订，但这不是我们的一项义务。您应定期查看隐私政策并关注其修订情况，如果您不同意修订的内容，您应停止立即访问本网站。当隐私政策的更新版本发布，您持续访问本网站显示和表明您同意该更新的内容，并同意遵守该更新的隐私权政策。</p><p><br></p><p><br></p><p><br></p><p>&nbsp;</p><p><br></p><p><br></p><p><br></p><p>九、与我们的沟通</p><p><br></p><p><br></p><p><br></p><p>9.1 如果您有任何要求和意见，您可以通过电子邮件contact@QIBIT.io，这是属于我们与您沟通的唯一有效和官方电子邮件，所以我们对您未使用有效的联系方式，任何作为或不作为不承担责任。</p><p><br></p><p><br></p><p><br></p><p>9.2 我们只通过本网站上的有效的联系方式发布公告和信息或在本网站张贴公告，所以我们对由于您信任了未通过以上方式获得的信息而产生的任何损失不承担责任。</p><p><br></p><p><br></p><p><br></p><p>9.3 若您对我们的隐私政策有任何问题, 欢迎随时联系我们。</p><p><br></p>', '2020-09-19 07:07:52', '', null, '10', '0', '5', '隐私条款', 'CN');
INSERT INTO `sys_help` VALUES ('9', 'admin', '<p>项目申请</p><p><br></p><p>项目通过QIBIT官网提交项目白皮书、官网（或发送文件到指定邮箱：listing@QIBIT.io）、Token信息等相关资料，官方上币团队审核材料的真实性、完整性、合约安全性等。</p><p><br></p><p><br></p><p><br></p><p>&nbsp;</p><p><br></p><p>上线交易</p><p><br></p><p>首先开通BTC和ETH交易对， BTC和ETH交易对中每周流动性排名第一且未上线USDT交易对的项目可直接上线USDT交易对； 关于对流动性排名的计算方法：每周计算BTC和ETH区交易对的交易人数排名、交易额排名，同时要有正常的盘面深度，交易人数和交易额权重分别是70%、30%，加权后排名第一的项目即是流动性第一的项目； 关于开通USDT的业务要求：业务进展顺利，社群积极维护</p><p><br></p><p><br></p><p><br></p><p>退市处理情形</p><p><br></p><p>上币项目出现下列情形之一的，我们会给予退市处理：</p><p><br></p><p><br></p><p><br></p><p>1) 项目方故意隐瞒可能严重影响代币价格的重大事件；</p><p><br></p><p>2) 项目涉嫌洗钱、欺诈或传销等违法犯罪活动的；</p><p><br></p><p>3) 项目存在其他重大风险隐患如黑客盗币、隐瞒增发等，足以使项目发生风险事件的。</p><p><br></p><p>4) 代币日平均交易额低于2万美金或其他等值代币，持续达15日以上;</p><p><br></p><p>5) 项目方涉嫌操纵市场，情节严重的；</p><p><br></p><p>6) 项目方宣传或市场行为损害BikiCoin或社区利益，情节严重的；</p><p><br></p><p>7) 项目方团队解散或发生成员异动；</p><p><br></p><p>8) 其他足以退市的情形。</p><p><br></p>', '2020-09-19 07:09:37', '', null, '2', '0', '5', '商务对接', 'CN');
INSERT INTO `sys_help` VALUES ('10', 'admin', '<p>什么是KDJ指标？</p><p><br></p><p>KDJ全名为随机指标（Stochastics），由George Lane所创，其综合动量观念，强弱指标及移动平均线的优点，早年应用在期货投资方面，功能颇为显著，目前为股市中最常用的指标之一。</p><p><br></p><p><br></p><p><br></p><p>　　买卖原则：</p><p><br></p><p><br></p><p><br></p><p>　　1. K值由右边向下交叉D值作卖，K值由右边向上交叉D值作买。</p><p><br></p><p>　　2. 高档连续两次向下交叉确认跌势。低档两次向上交叉确认涨势。</p><p><br></p><p>　　3. D值《20%超卖，D值》80%超买；J》100%超买，J《10%超卖。</p><p><br></p><p>　　4. KD值于50%左右徘徊或交叉时，无意义。</p><p><br></p><p>　　5. 投机性太强的个股不适用。</p><p><br></p><p>　　6. 可观察KD值与股价之背离，以确认高低点。</p><p><br></p><p><br></p><p><br></p><p>　　KDJ指标</p><p><br></p><p><br></p><p><br></p><p>　　KDJ指标的中文名称是随机指数（Stochastics），是由George Lane首创的。</p><p><br></p><p><br></p><p><br></p><p>　　1．KDJ指标的计算公式和理论上的依据</p><p><br></p><p><br></p><p><br></p><p>　　产生KD以前，先产生未成熟随机值RSV（Row Stochastic value）。其计算公式为</p><p><br></p><p><br></p><p><br></p><p>　　式中，l／3为平滑因子，可以改成别的数字，同样已成约定，1／3也已经固定。</p><p><br></p><p><br></p><p><br></p><p>　　KD是在WMS的基础上发展起来的，所以KD就有WMS的一些特性。在反映证券市场价格变化时，WMS最快，K其次，D最慢。在使用KD指标时，我们往往称K指标为快指标，D指标为慢指标。K指标反应敏捷，但容易出错；D指标反应稍慢，但稳重可靠。</p><p><br></p><p><br></p><p><br></p><p>　　在介绍KD时，往往还附带一个J指标，计算公式为</p><p><br></p><p><br></p><p><br></p><p>　　J＝3D一2K＝D十2（D―K）</p><p><br></p><p><br></p><p><br></p><p>　　可见J是D加上一个修正值。J的实质是反映D和D与K的差值。此外，有的书中J指标的计算公式为</p><p><br></p><p><br></p><p><br></p><p>　　J＝3K一2D</p><p><br></p><p><br></p><p><br></p><p>　　2．KDJ指标的应用法则</p><p><br></p><p><br></p><p><br></p><p>　　KDJ指标是三条曲线，在应用时主要从五个方面进行考虑：KD取值的绝对数字；KD曲线的形态；KD指标的交叉；KD指标的背离；J指标的取值大小。</p><p><br></p><p><br></p><p><br></p><p>　　第一，从KD的取值方面考虑。KD的取值范围都是0―l00，将其划分为几个区域：超买区、超卖区、徘徊区。按一般的划分法，80以上为超买区，20以下为超卖区，其余为徘徊区。</p><p><br></p><p><br></p><p><br></p><p>　　根据这种划分，KD超过80就应该考虑卖出，低于20就应该考虑买入。这种操作是很简单的，同时又是很容易出错的，完全按这种方法进行操作很容易招致损失。大多数对KD指标了解不深入的人，以为KD指标的操作就限于此，故而对KD指标的作用产生误解。应该说明的是，上述对0一100的划分只是一个应用KD指标的初步过程，仅仅是信号。</p><p><br></p><p><br></p><p><br></p><p>　　第二，从KD指标曲线的形态方面考虑。当KD指标在较高或较低的位置形成了头肩形和多重顶（底）时，是采取行动的信号。注意，这些形态一定要在较高位置或较低位置出现，位置越高或越低，结论越可靠，越正确。操作时可按形态学方面的原则进行。</p><p><br></p><p><br></p><p><br></p><p>　　对于KD的曲线我们也可以画趋势线，以明确KD的趋势。在KD的曲线图中仍然可以引进支撑线和压力线的概念。某一条支撑线或压力线的被突破，也是采取行动的信号。</p><p><br></p><p><br></p><p><br></p><p>　　第三，从KD指标的交叉方面考虑。K与D的关系就如同股价与MA的关系一样，也有死亡交叉和黄金交叉的问题，不过这里交叉的应用是很复杂的，还附带很多其他条件。</p><p><br></p><p>下面以K从下向上与D交叉为例进行介绍。</p><p><br></p><p><br></p><p><br></p><p>　　K上穿D是金叉，为买入信号，这是正确的。但是出现了金叉是否应该买入，还要看别的条件：</p><p><br></p><p><br></p><p><br></p><p>　　第一个条件是金叉的位置应该比较低，是在超卖区的位置，越低越好。</p><p><br></p><p>　　第二个条件是与D相交的次数。有时在低位，K、D要来回交叉好几次。交叉的次数以2次为最少，越多越好。</p><p><br></p><p>　　第三个条件是交叉点相对于KD线低点的位置，这就是常说的“右侧相交”原则。K是在D已经抬头向上时才同D相交，比D还在下降时与之相交要可靠得多。换句话说，右侧相交比左侧相交好。</p><p><br></p><p><br></p><p><br></p><p>　　满足了上述条件，买入就放心一些。少满足一条，买入的风险就多一些。但是，如果要求每个条件都满足，尽管比较安全，但也会错过很多机会。</p><p><br></p><p><br></p><p><br></p><p>　　对于K从上向下穿破D的死叉，也有类似的结果，读者不妨自己试试，这里就不重复了。</p><p><br></p><p><br></p><p><br></p><p>　　第四，从KD指标的背离方面考虑。简单地说，背离就是走势的不一致。在KD处在高位或低位，如果出现与股价走向的背离，则是采取行动的信号。当KD处在高位，并形成两个依次向下的峰，而此时股价还在一个劲地上涨，这叫顶背离，是卖出的信号；与之相反，KD处在低位，并形成一底比一底高，而股价还继续下跌，这构成底背离，是买入信号。</p><p><br></p><p><br></p><p><br></p><p>　　第五，J指标取值超过100和低于0，都属于价格的非正常区域，大于100为超买，小于O为超卖。</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>KDJ指标的实战经验应用</p><p><br></p><p><br></p><p><br></p><p>　　1） 在实际操作中，一些做短平快的短线客常用分钟指标，来判断后市决定买卖时机，在T+0时代常用15分钟和30分钟KDJ指标，在T+0时代多用30分钟和60分钟KDJ来指导进出，几条经验规律总结如下：</p><p><br></p><p>A） 如果30分钟KDJ在20以下盘整较长时间，60分钟KDJ也是如此，则一旦30分钟K值上穿D值并越过20，可能引发一轮持续在2天以上的反弹行情；若日线KDJ指标也在低位发生金叉，则可能是一轮中级行情。但需注意K值与D值金叉后只有K值大于D值20％以上，这种交叉才有效；</p><p>B） 如果30分钟KDJ在80以上向下掉头，K值下穿D值并跌破80，而60分钟KDJ才刚刚越过20不到50，则说明行情会出现回档，30分钟KDJ探底后，可能继续向上；</p><p>C） 如果30分钟和60分钟KDJ在80以上，盘整较长时间后K值同时向下死叉D值，则表明要开始至少2天的下跌调整行情；</p><p>D） 如果30分钟KDJ跌至20以下掉头向上，而60分钟KDJ还在50以上，则要观察60分钟K值是否会有效穿过D值（K值大于D值20％），若有效表明将开始一轮新的上攻；若无效则表明仅是下跌过程中的反弹，反弹过后仍要继续下跌；</p><p>E） 如果30分钟KDJ在50之前止跌，而60分钟KDJ才刚刚向上交叉，说明行情可能会再持续向上，目前仅属于回档；</p><p>F） 30分钟或60分钟KDJ出现背离现象，也可作为研判大市顶底的依据，详见前面日线背离的论述；</p><p>G） 在超强市场中，30分钟KDJ可以达到90以上，而且在高位屡次发生无效交叉，此时重点看60分钟KDJ，当60分钟KDJ出现向下交叉时，可能引发短线较深的回档；</p><p>H） 在暴跌过程中30分钟KDJ可以接近0值，而大势依然跌势不止，此时也应看60分钟KDJ，当60分钟KDJ向上发生有效交叉时，会引发极强的反弹。</p><p><br></p><p><br></p><p>　　2） 当行情处在极强极弱单边市场中，日KDJ出现屡屡钝化，应改用MACD等中长指标；当股价短期波动剧烈，日KDJ反应滞后，应改用CCI，ROC等指标；或是使用SLOWKD慢速指标；3） KDJ在周线中参数一般用5，周KDJ指标见底和见顶有明显的提示作用，据此波段操作可以免去许多辛劳，争取利润最大化，需提示的是一般周J值在超卖区V形单底上升，说明只是反弹行情，形成双底才为可靠的中级行情；但J值在超买区单顶也会有大幅下跌的可能性，所以应该提高警惕，此时应结合其他指标综合研判；但当股市处在牛市时，J值在超买区盘中一段时间后，股价仍会大幅上升。</p><p><br></p><p><br></p><p><br></p><p>KDJ指标钝化的应对技巧</p><p><br></p><p>　　KDJ指标是投资者研判行情时经常使用的一种技术指标，它的优点是对价格的未来走向变动比较敏感，一般来说，黄金交叉意味着买进，死亡交叉意味着抛空。</p><p><br></p><p><br></p><p><br></p><p>　　但是，任何指标都不是万能的。从另一方面来讲，KDJ指标的反应敏感又是它不足的地方，黄金交叉的信号经常可能使投资者进货太早而被套牢，死亡交叉信号也可能使投资者出货太早而被轧空，KDJ指标失灵的情况往往出现在极强的市场或极弱的市场中，此时KDJ必然会发生高位钝化和低位钝化的情况，如果这时候还按照黄金交叉进货，死亡交叉出货进行操作，就会在行情刚启动时，丢掉一个主升段行情；行情刚开始下跌，KDJ就发出黄金交叉，进货可能被套牢，而且价位损失将非常大，因为KDJ指标可以在钝化再钝化。</p><p><br></p><p><br></p><p><br></p><p>　　当KDJ指标发生钝化的时候，可以用如下方法来识别：</p><p><br></p><p>一、由于KDJ指标的敏感，它给出的指标经常超前，因此可以通过观察KDJ指标的形态来帮助寻找正确的买点和卖点，KDJ指标在低位形成W底、三重底和头肩底形态时再进货；在较强的市场里，KDJ指标在高位形成M头和头肩顶时，出货的信号更可靠。投资者尤其应该注意KDJ与RSI一样，经过振荡后形成的反压线准确性较高。</p><p><br></p><p><br></p><p><br></p><p>二、KDJ指标和数浪相结合，是一种非常有效的方法。在K线图上，经常可以清晰地分辨出上升形态的一浪、三浪、五浪。在K线图上，期价盘底结束，开始上升，往往在上升第一子浪时，KDJ指标即发出死亡交叉的出货信号，这时候，可以少考虑这个卖出信号，因为它很可能是一个错误信号或是一个骗线信号。当期价运行到第三浪时，加大对抛空信号的重视程度，当期价运动到明显的第五子浪时，如果KDJ指标给出卖出信号，则应坚决出货。这时候信号通常都是非常准确的，当期价刚刚结束上升开始下跌时，在下跌的第一子浪，应少考虑KDJ指标的买进信号，当期价下跌到第三子浪或第五子浪时，再考虑KDJ指标的买入信号，尤其是下跌五子浪后的KDJ给出的买进信号较准确。</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>KDJ指标实用技巧</p><p><br></p><p><br></p><p><br></p><p>　　在知晓KDJ指标的基本原理及其一般应用法则的基础上，还应对其实用技巧作一定了解，并在实际操作中逐步巩固、完善。</p><p><br></p><p><br></p><p><br></p><p>　　一、KDJ指标的局限性</p><p><br></p><p><br></p><p><br></p><p>　　对KDJ指标的分析、运用必须附属于基本的趋势分析，从这个意义上说，KDJ指标只是一种第二位的指标。市场的主要趋势是压倒一切的，在一场重要运动即将降临时，KDJ指标可能丧失功能，甚至产生误导，以青山纸业（2.37，0.01，0.42%）（2.37，0.01，0.42%）（600103）为例，其KDJ指标在7月5日与5月31日超买区形成双顶，并开始掉头向下，甚至在7月7日KDJ指标超买区一度发生死叉，发出强烈卖出信号，但当时基本趋势是底部放量，向上突破10.2元重要阻力位，如果此时仅凭KDJ指标的卖出信号作出决策，则将错失整个主升浪。</p><p><br></p><p><br></p><p><br></p><p>　　二、KDJ指标何时最有效</p><p><br></p><p><br></p><p><br></p><p>　　当市场进入无趋势阶段（横向延伸状态）时，大多数跟随趋势系统都不能正常工作，而KDJ指标却能提供较好的帮助。依据KDJ指标发出的买入、卖出信号，可以帮助短线投资者在无趋势市场环境中获得短差，如中兴通讯（13.59，0.11，0.82%）（13.59，0.11，0.82%）（0063），5.19行情之后，相当部分时间处于横盘状态，依据KDJ指标发出的信号，可以几次短线获利。</p><p><br></p><p><br></p><p><br></p><p>　　在趋势阶段，把KDJ指标与价格图表参照使用，当市场即将出现短暂的极端状态时，KDJ指标能提醒投资者。同时，当趋势渐趋成熟，KDJ指标可以在价格明显显露之前，给投资者提供预警信号。</p><p><br></p><p><br></p><p><br></p><p>　　三、与K线形态等综合使用</p><p><br></p><p><br></p><p><br></p><p>　　我们知道，K线形态中，有一些可以预警趋势的反转，如流星、黄昏星、高位十字星与空头吞噬等有上升趋势反转的预警作用；而多头吞噬、启明星、锤子线等则有下降趋势反转的预警作用。如果把KDJ指标与这些K线形态综合使用，相互印证，则可提高决策的准确性。</p><p><br></p><p><br></p><p><br></p><p>　　如大亚股份（0910）8月28日K线形态为流星，KDJ指标高位形成双顶，均预示着股价的回跌。</p><p><br></p><p><br></p><p><br></p><p>　　同样，把KDJ指标与重要阻力、支持位，成交量变化等综合使用，也可提高KDJ指标使用的准确性。再以大亚股份为例，8月28日股价最高上摸15.2元，临近15.3元重要阻力位，且上攻时成交量未能有效放大（与8月24日相比），也印证了KDJ指标发出的卖出信号。</p><p><br></p><p><br></p><p><br></p><p>　　四、周线KDJ指标更为有效</p><p><br></p><p><br></p><p><br></p><p>　　由于周线指标作为中期指标，不容易制造“骗线”，因而在应用KDJ指标时，周线往往效果更佳，当周线KDJ指标两次或两次以上发出金叉（死叉）时，往往能预示MACD等跟随趋势指标发生金叉（死叉），从而提前预示重要趋势的降临，这对中长线投资者无疑极具意义。</p>', '2020-09-19 07:11:52', '', null, '1', '0', '4', 'KDJ指标基础', 'CN');
INSERT INTO `sys_help` VALUES ('11', 'admin', '<p>什么是MACD指标？</p><p><br></p><p><br></p><p><br></p><p>MACD基本介绍MACD的全名为 Moving Average Convergence/Pergence，它是一种移动平均线的波动指标，不过它使用的不是普通移动平均线，而是将长期与中期的平滑移动平均线 (EMA)的累积差距计算出来。 在MACD图形中显示两条图线，一条是实线就是MACD线，而另一条线为虚线 (Trigger line)就是MACD的移动平均线。在MACD线与Trigger线之间的差距可以画成柱状垂直线图 (Oscillators)，且以零 (0)为中心轴，以柱状垂直线图 (Oscillators) 图的正负表示MACD线与Trigger线何者在上，何者在下以作为研判买卖的最佳时机。</p><p><br></p><p><br></p><p><br></p><p>MACD的计算公式</p><p><br></p><p><br></p><p><br></p><p>MACD在应用上应先行计算出快速（一般选12日）移动平均数值与慢速（一般选26日）移动平均数值。以这两个数值作为测量两者（快速与慢速线）间的\"差离值\"依据。所谓\"差离值\"（DIF），即12日EMA数值减去26日EMA数值。因此，在持续的涨势中，12日EMA在26日EMA之上。其间的正差离值（+DIF）会愈来愈大。反之在跌势中，差离值可能变负（-DIF），也愈来愈大。</p><p><br></p><p><br></p><p><br></p><p>至于行情开始回转，正或负差离值要缩小到怎样的程度，才真正是行情反转的信号。MACD的反转信号界定为\"差离值\"的9日移动平均值（9日EMA）。</p><p><br></p><p><br></p><p><br></p><p>在MACD的指数平滑移动平均线计算公式中，都分别加重最近一日的份量权值，以现在流行的参数12和26为例，其公式如下：</p><p><br></p><p><br></p><p><br></p><p>12日EMA的计算：EMA12 = 前一日EMA12 X 11/13 + 今日收盘 X 2/13</p><p><br></p><p><br></p><p><br></p><p>26日EMA的计算：EMA26 = 前一日EMA26 X 25/27 + 今日收盘 X 2/27</p><p><br></p><p><br></p><p><br></p><p>差离值（DIF）的计算： DIF = EMA12 - EMA26</p><p><br></p><p><br></p><p><br></p><p>然后再根据差离值计算其9日的EMA，即\"差离平均值\"，\"差离平均值\"用DEA来表示。</p><p><br></p><p><br></p><p><br></p><p>DEA = （前一日DEA X 8/10 + 今日DIF X 2/10）</p><p><br></p><p><br></p><p><br></p><p>计算出的DIF与DEA为正或负值，因而形成在0轴上下移动的两条快速与慢速线。为了方便判断，用DIF减去DEA，用以绘制柱状图。</p><p><br></p><p><br></p><p><br></p><p>MACD的作用</p><p><br></p><p><br></p><p><br></p><p>就其优点而言，MACD可自动定义出目前股价趋势之偏多或偏空，避免逆向操作的危险。而在趋势确定之后，则可确立进出策略，避免无谓之进出次数，或者发生进出时机不当之后果。MACD虽然适于研判中期走势，但不适于短线操作。再者，MACD可以用来研判中期上涨或下跌行情的开始与结束，但对箱形的大幅振荡走势或胶著不动的盘面并无价值。同理，MACD用于分析各股的走势时，较适用于狂跌的投机股，对于价格甚少变动的所谓牛皮股则不适用。总而言之，MACD的作用是找出市场的超买超卖点，从市场的转势点。</p><p><br></p><p><br></p><p><br></p><p>MACD金叉与死叉</p><p><br></p><p><br></p><p><br></p><p>MACD白线从下往上穿过黄线，这种叫金叉，一般在低位由跌转涨的时候，一般作为买入机会。</p><p><br></p><p><br></p><p><br></p><p>MACD白线从上而下穿过黄线，这种叉叫死叉，一般在高位由涨转跌的时候，一般作为卖出操作。</p><p><br></p><p><br></p><p><br></p><p>MACD金叉是典型的买入信号，但是MACD金叉的出现时常也是情况各异，比如有0轴上方MACD金叉、0轴下方MACD金叉等，这些表示的市场含义都是不一样的，0轴上MACD金叉一般是上升行情的开始或者是延续之前的上升行情，而0轴下MACD金叉的实质一般是下跌行情后的第一波反弹，因此对于不同的MACD金叉情况，我们需要有不同的辅助指标来区分配合，同时还要细心分辨和处理。同样利用死叉卖出也是一样，需要区分对待。</p><p><br></p><p><br></p><p><br></p><p>MACD指标最有效常用的逃顶方法：</p><p><br></p><p><br></p><p><br></p><p>在实际投资中，MACD是指标不但具备抄底（背离是底）、捕捉极强势上涨点（MACD连续二次翻红买入）、捕捉“洗盘结束点”（上下背离买入）的功能，使你尽享-买后就涨的乐趣，同时，它还具备使你捕捉到最佳卖点，帮你成功逃顶，使你尽享丰收后的感觉。</p><p><br></p><p><br></p><p><br></p><p>MACD捕捉最佳卖（做空）点的方法如下：</p><p><br></p><p><br></p><p><br></p><p>调整MACD的有关参数——MACD参数设定为：8、13、9；移动平均线参数分别为5、10、30。设定好参数后，便是寻找卖点。</p><p><br></p><p><br></p><p><br></p><p>由于一个股票的卖点有许多，这里介绍两种最有效、最常用的逃顶方法：</p><p><br></p><p><br></p><p><br></p><p>第一卖点或称相对顶——其含义是指股价在经过大幅拉升后出现横盘，从而形成的一个相对高点，投资者尤其是资金量较大的投资者，必须在第一卖点出货，或减仓。判断“第一卖点”成立的技巧-是“股价横盘、MACD死叉卖出”，也就是说，当股价经过连续的上涨出现横盘时，5日、10日移动平均线尚未形成死叉，但MACD率先死叉，死叉之日便是“第一-卖点”形成之时，应该卖出或减仓。</p><p><br></p><p><br></p><p><br></p><p>MACD指标使用技巧</p><p><br></p><p><br></p><p><br></p><p>MACD买入技巧</p><p><br></p><p><br></p><p><br></p><p>1、一只股票的强弱程度，从周K线中完全可以获知。特别要关注周K线中半年均线的走势，如果上市时间较短，半年均线还没有生成，就要关注60天均线的走势，也可以获得同样的效果。</p><p><br></p><p><br></p><p><br></p><p>一只股票在周K线上出现半年均线，要2年零4个月的时间，出现60天均线需要1年零2个月的时间。如果让半年均线走平，上市时间要4年半，让60天均线走平要3年半。在这么长的时间里，如果股价的走势能使半年均线或60天均线走平，且股价在它上面站稳，充分说明其中隐藏着大庄家或者是大机构。当股价上上下下走过几个来回后，里面的中小散户已经被吓得魂飞魄散，震的死去活来，大多数筹码已经进了大机构的口袋。这时大机构只要用少量的筹码，就可以轻松的把股价打上去。在半年均线走平半年到一年的时间内，大机构如果仍不拉升该股，可能有三个原因：一是大盘形势不好，拉升时间未到；二是庄家手头资金还不宽裕，需要调集资金；三是庄家与上市公司的谈判还未取得实际成果。</p><p><br></p><p><br></p><p><br></p><p>2、周K线中的半年均线或60天均线呈10或15度角微上翘的股票。有了这条经验，大机构再洗盘，你就不回被洗掉。</p><p><br></p><p><br></p><p><br></p><p>3、散户进入的时机最好是“三金叉见底”首次拉升后回调之时，当周K线MACD在0轴上方金叉，成交量均线形成金叉，周K线中5天均线与10天均线金叉后，散户朋友可以大胆买入，不涨一倍不卖出。</p><p><br></p><p><br></p><p><br></p><p>MACD卖出技巧</p><p><br></p><p><br></p><p><br></p><p>第一卖点。股价在经过大幅拉升后出现横盘，从而形成的一个相对高点，投资者尤其是资金量较大的投资者，必须在第一卖点出货，或减仓。判断“第一卖点”成立的技巧是“股价横盘、MACD死叉卖出”，也就是说，当股价经过连续的上涨出现横盘时，5日、10日移动平均线尚未形成死叉，但MACD率先死叉，死叉之日便是“第一卖点”形成之时，应该卖出或减仓。</p><p><br></p><p><br></p><p><br></p><p>当第一卖点形成之后，会有一些股票没有出现大跌，反而回调之后为掩护出货假装向上突破的现象，多头主力做出货前的最后一次拉升，又称虚浪拉升，此时形成的高点往往是成为一波牛市行情的最高点，所以又称绝对顶，如果此时不能顺利出逃的话，后果不堪设想。</p><p><br></p><p><br></p><p><br></p><p>判断绝对顶成立技巧是“价格、MACD背离卖出”，即当股价进行虚浪拉升创出新高时，MACD却不能同步创出新高，二者的走势产生背离，这是股价见顶的明显信号。必然说明的是在绝对顶卖股票时，决不能等MACD死叉后再卖，因为当MACD死叉时股价已经下跌了许多，在虚浪顶卖股票必须参考K线组合。</p><p><br></p><p><br></p><p><br></p><p>一般来说，在虚浪急拉过程中如果出现“高开低走阴线”或“长下影线涨停阳线”时，是卖出的极佳时机。最后需要提醒的是，由于MACD指标具有滞后性，用MACD寻找最佳卖点逃顶特别适合那些大幅拉升后做平台头的股票，不适合那些急拉急跌的股票。上面的两点都是在股票大幅度上涨之后才会出现的，换句话说，它出现在股票主升浪之后，如果一只股票尚未大幅上涨，不定期没有进行过主升浪，那么，不要使用上面的方法。</p><p><br></p><p><br></p><p><br></p><p>逃顶的办法很多，具体股民适用哪个都是不确定的，所以要找到适合自己的方法。只有适合自己的才是最好的。</p>', '2020-09-19 07:12:16', '', null, '2', '0', '4', 'MACD指标基础', 'CN');
INSERT INTO `sys_help` VALUES ('12', 'admin', '<p style=\"padding-top: 0px; padding-bottom: 0px;\"><i><font size=\"2\" color=\"#949494\">前言：现在比特币市值已经超过1000多亿美元，但是外界仍然对这种数字货币争论不休。有人认为包括比特币在内的数字货币是庞氏骗局。它是不是庞氏骗局呢？不同的人对这个问题有不同的看法。本文来自decentralize.today，作者Miguel Cuneta通过分析认为比特币和庞氏骗局是完全不同的东西，原文由蓝狐笔记社群“iGreenMind”负责翻译。</font></i></p><p style=\"padding-top: 0px; padding-bottom: 0px;\"><br></p><p style=\"padding-top: 0px; padding-bottom: 0px;\"><span style=\"font-weight: bolder;\">什么是“庞氏骗局”?</span></p><p style=\"padding-top: 0px; padding-bottom: 0px;\"><br></p><p style=\"padding-top: 0px; padding-bottom: 0px;\">Investopedia上是这么解释的：</p><p style=\"padding-top: 0px; padding-bottom: 0px;\"><br></p><p style=\"padding-top: 0px; padding-bottom: 0px;\"><i><font size=\"2\" color=\"#949494\">“庞氏骗局是一种欺骗性的投资骗局，承诺高回报率、对投资者来说风险很小。庞氏骗局通过吸纳新投资者来为老投资者带来回报。这类似于一个金字塔骗局，两者都是使用新投资者的资金来支付早期的支持者。对于庞氏骗局和金字塔骗局，最终没有足够的资金来解决这些问题。”</font></i></p><p style=\"padding-top: 0px; padding-bottom: 0px;\"><br></p><div class=\"image-desc\" style=\"text-align: center; color: rgb(51, 51, 51);\"><img class=\"uploaded-img\" src=\"https://bizzan.oss-cn-hangzhou.aliyuncs.com/2019/07/11/3894ee85-7c4d-41a7-aad7-ba2c5a18c427.png\" max-width=\"100%\" width=\"auto\" height=\"auto\" style=\"border-style: none; width: 1713px;\"></div><div class=\"image-desc\"><p style=\"padding-top: 0px; padding-bottom: 0px;\"><br></p><p style=\"padding-top: 0px; padding-bottom: 0px;\">&nbsp; &nbsp; &nbsp; 想让全世界知道你对比特币技术完全无知，最好的方法有：一是使用郁金香泡沫作比喻，二是说比特币是一种庞氏骗局。一个人喜欢这么说，大多是因为在对一件自己不了解的事物做出断言前，根本没有能力去做一些基础研究。</p><p style=\"padding-top: 0px; padding-bottom: 0px;\"><br></p><p style=\"padding-top: 0px; padding-bottom: 0px;\">&nbsp; &nbsp; &nbsp; 当你了解比特币背后的技术和它被发明的原因，或许就会发现<span style=\"font-weight: bolder;\">比特币完全不是旁氏骗局</span>。好了，让我们抽丝剥茧地来做一个分解。有人说，庞氏骗局是一种欺骗性的投资骗局，承诺高回报率，对投资者来说风险很小。</p><p style=\"padding-top: 0px; padding-bottom: 0px;\"><br></p><p style=\"padding-top: 0px; padding-bottom: 0px;\">&nbsp; &nbsp; &nbsp; 中本聪最初发布的比特币白皮书，大概有八页那么长，相当有技术性，但消化起来也不是特别困难。其中没有提到任何关于比特币“投资”的回报，它甚至没有提到比特币的价格。</p><p style=\"padding-top: 0px; padding-bottom: 0px;\"><br></p><p style=\"padding-top: 0px; padding-bottom: 0px;\">&nbsp; &nbsp; &nbsp; 它简单地解决了计算机科学中最古老的问题之一，即拜占庭将军（译注：拜占庭容错，拜占庭共识）的问题，从而确立了它在这个过程中的价值。比特币的价值主张从来都不是利润驱动，在最初的几年里持有比特币被认为是“正当的”。</p><p style=\"padding-top: 0px; padding-bottom: 0px;\"><br></p><p style=\"padding-top: 0px; padding-bottom: 0px;\">&nbsp; &nbsp; &nbsp;&nbsp;<span style=\"font-weight: bolder;\">比特币绝对不是一项机密，它是世界上最开放的技术之一</span>。它是开源的，任何人都可以查看代码，任何人都可以为代码做出贡献，任何人都可以自动运行软件并参与到网络中。所有比特币交易的历史，对世界上任何一个人来说都是可见的。</p><p style=\"padding-top: 0px; padding-bottom: 0px;\"><br></p><p style=\"padding-top: 0px; padding-bottom: 0px;\">&nbsp; &nbsp; &nbsp;&nbsp;<span style=\"font-weight: bolder;\">这是人类历史上一种金融体系的范式转移，与欺诈性的投资骗局完全相反</span>。这些骗局大都带有一种含糊不清的承诺，例如高回报，而且资本流入和流出基本都是不透明的，资金交易都被保存在一个秘密的账簿里。</p><p style=\"padding-top: 0px; padding-bottom: 0px;\"><br></p><p style=\"padding-top: 0px; padding-bottom: 0px;\">&nbsp; &nbsp; &nbsp; 从这个角度来看，庞氏骗局也有点类似金字塔骗局，毕竟两者都是通过收割新投资者为老投资者带来回报。</p><p style=\"padding-top: 0px; padding-bottom: 0px;\"><br></p><div class=\"image-desc\" style=\"text-align: center; color: rgb(51, 51, 51);\"><img class=\"uploaded-img\" src=\"https://bizzan.oss-cn-hangzhou.aliyuncs.com/2019/07/11/f9fff9b2-e22a-4709-82be-47479aa3ffca.png\" max-width=\"100%\" width=\"auto\" height=\"auto\" style=\"border-style: none; width: 1713px;\"></div><div class=\"image-desc\" style=\"text-align: center; color: rgb(51, 51, 51);\"><br></div><div class=\"image-desc\"><div class=\"image-desc\"><font color=\"#333333\"><span style=\"font-weight: bolder;\">赚钱不是目的，赚钱也永远不会成为目标&nbsp;</span></font></div><div class=\"image-desc\"><br></div><div class=\"image-desc\"><font color=\"#333333\">&nbsp; &nbsp; &nbsp; 比特币不产生回报，但比特币的价格与稀缺性，导致了其与人们的需求直接相关，这种需求不是强加给别人的。比特币的最大支持者也不会四处询问你有多少钱，然后蛊惑你去投资更多的比特币。加入比特币网络的新用户，不会用新资金去为老用户提供资金。可以毫不客气地说，宣传比特币是庞氏骗局的人，大都懒于去认真研究理解比特币的真正价值。</font></div><div class=\"image-desc\"><br></div><div class=\"image-desc\"><font color=\"#333333\">&nbsp; &nbsp; &nbsp; 在典型的金字塔骗局中，创始人是最富有的。越多人加入，他们就会赚得越多，因为所有的钱都流向了顶层。他们是这个金字塔骗局里面的最初“投资者”，然后吸引其他人投资，把这些资金投入到他们的口袋里。这是他们赚钱的唯一途径，庞氏骗局也是如此。</font></div><div class=\"image-desc\"><br></div><div class=\"image-desc\"><font color=\"#333333\">&nbsp; &nbsp; &nbsp; 比特币的情况正好相反。很多在早期进入的投资者，现在并没有在投资中享受500倍的回报。我认识很多人，他们买了成千上万的比特币，把它们花在诸如披萨、采矿设备、博彩、电子游戏上。说一下我自己的经历，2014年的时候，我在博彩网站上损失了几十个比特币。另外，当我在大学里演讲的时候，也把很多比特币送给别人。放到现在来看，那些损失掉和送出去的比特币，估计也能带来50倍～60倍的收益。</font></div><div class=\"image-desc\"><br></div><div class=\"image-desc\"><font color=\"#333333\">&nbsp; &nbsp; &nbsp; 这些年来，真正持有比特币的人是寥寥无几的。由于比特币的价格暴涨，他们中的一些人现在非常富有，但是他们的净资产并没有以法定货币的形式呈现，而是以方便会计统计的形式。他们用持有的比特币数量来衡量自己的净值，而不是以其法币价值来衡量。</font></div><div class=\"image-desc\"><br></div><div class=\"image-desc\"><font color=\"#333333\">&nbsp; &nbsp; &nbsp; 他们并没有将比特币换成法币来致富，也许一些人会卖出很小一部分以改善自己的生活。但是呢，这并不是我们常人所理解的通过将比特币换成法币来套现，而是将比特币作为交易的媒介，去换取自己想要的东西。他们会用比特币去支付新房子、小汽车，或者就是用比特币去投资。对于那些想拥有比特币的人来说，他们绝不会被强迫或被欺骗，事实上，他们会寻找愿意用比特币支付的人。相信我，大多数人都不想轻易放弃他们的比特币。交易市场，消费者会优先使用廉价货币，保存优质货币，而比特币远比当今世界上任何一种货币都要优越。</font></div><div class=\"image-desc\"><br></div><div class=\"image-desc\"><font color=\"#333333\">&nbsp; &nbsp; &nbsp; 在一个庞氏骗局中，最老的投资者总有一天会把所有的钱都套现出场。这样一来，新进入者就会承受巨大风险，甚至是背黑锅。而对比特币来说，新的投资者就是那些想一夜暴富的人，实际上也是最弱的一方（就是我们口中常说的“韭菜”），他们会在价格出现轻微下跌的迹象时抛售比特币。</font></div><div class=\"image-desc\"><br></div><div class=\"image-desc\"><font color=\"#333333\">&nbsp; &nbsp; &nbsp; 这样一来，真正持有比特币的人也越来越少，或者彻底没了。那个时候，我们会去理解这项技术，并且会发现比特币作为一种高级的价值储存手段，是一种不受限制的、具有审查性的、安全的传输协议。对于我们这些坚信比特币的人来说，终将获利。到那时，我们会很乐意用比特币作为交易媒介，去换取我们想要的东西，或者我们也可以通过比特币去投资一些有价值的项目，甚至是去帮助他人。赚钱不是目的，赚钱也永远不会成为目标。</font></div><div class=\"image-desc\"><br></div><div class=\"image-desc\"><font color=\"#333333\">&nbsp; &nbsp; &nbsp; 最近，一名早期的比特币持有者向安德里亚斯·安东诺普洛斯（Andreas Antonopoulos）捐赠了79个比特币，价值大约为100多万美元（以文章发表时的比特币行情计价）。安德里亚斯也是比特币支持者之一，最近他告诉人们，尽管自己在2012年进入比特币世界，但在世界各地宣讲也让自己花去了很多早期持有的比特币，因此也没能够享受到2017年币价飙升带来的巨大红利。</font></div><div class=\"image-desc\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\"><div class=\"image-desc\"><font color=\"#333333\">&nbsp; &nbsp; &nbsp; 而捐赠者却说，如果没有听安德里亚斯的宣讲，自己就不会开始持有比特币。这位捐赠者之所以给安德里亚斯捐赠价值100万美元的比特币，主要也是出于感激。</font></div><div class=\"image-desc\"><br></div><div class=\"image-desc\"><font color=\"#333333\">&nbsp; &nbsp; &nbsp; 身边其实还有很多这样的例子。最近的一个是菠萝基金——一支拥有5057个比特币的基金，想用这些比特币获取的收益来回报世界。据说，这个基金将会把价值超过9000万美元的比特币赠予那些需要资助的慈善机构和组织。</font></div><div class=\"image-desc\"><br></div><div class=\"image-desc\"><font color=\"#333333\">&nbsp; &nbsp; &nbsp; 对我们来说，比特币是终极游戏。我们从旧的系统中套现出来，只是因为我们面对正在使用的那个系统别无选择。而对于庞氏骗局和金字塔骗局来说，最终如果没有足够的资金做周转，这些骗局也就崩盘了。</font></div><div class=\"image-desc\"><br></div><div class=\"image-desc\"><font color=\"#333333\">&nbsp; &nbsp; &nbsp;&nbsp;</font><font size=\"4\" color=\"#d51228\"><span style=\"font-weight: bolder;\">自发布以来，比特币已经增长了500%</span></font></div></div><div class=\"image-desc\"><br><div class=\"image-desc\" style=\"text-align: center; color: rgb(51, 51, 51);\"><img class=\"uploaded-img\" src=\"https://bizzan.oss-cn-hangzhou.aliyuncs.com/2019/07/11/8e957e0e-1547-4f53-9026-3a260b5fb84d.png\" max-width=\"100%\" width=\"auto\" height=\"auto\" style=\"border-style: none; width: 1713px;\"></div></div><div class=\"image-desc\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\"><font color=\"#333333\"><br></font></div><div class=\"image-desc\"><div class=\"image-desc\" style=\"color: rgb(116, 119, 122); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;\\\\5FAE软雅黑&quot;, Arial, sans-serif; letter-spacing: 1px;\">&nbsp; &nbsp; &nbsp; 你可能在一些地方看过上图，通过这张图，你可以更好地了解世界上所有的货币，包括比特币。在全球范围内，将会有更多的资本流向比特币。其中使用硬币和纸币的国家流通7.6万亿美元，黄金市场7.7万亿美元，股票市场74万亿美元，全球广义货币供应量为90万亿美元。</div><div class=\"image-desc\" style=\"color: rgb(116, 119, 122); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;\\\\5FAE软雅黑&quot;, Arial, sans-serif; letter-spacing: 1px;\"><br></div><div class=\"image-desc\" style=\"color: rgb(116, 119, 122); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;\\\\5FAE软雅黑&quot;, Arial, sans-serif; letter-spacing: 1px;\">&nbsp; &nbsp; &nbsp; 提出这些例子是为了说明，<span style=\"font-weight: bolder;\">比特币的最大上行空间约为180万亿美元</span>，不包括217万亿美元的房地产市场和544万亿美元的衍生品市场。比特币最大发行量是2100万比特币，也就是说比特币单价约合850万美元。这会发生吗?可能不会。那比特币会对这些市场产生巨大影响吗？其实它已经开始影响这些市场了（关于比特币单价达到100万美元以上的看法，值得商榷，这是因为整个区块链的数字token市场发展很蓬勃，未来还有很多可能性）。</div><div class=\"image-desc\" style=\"color: rgb(116, 119, 122); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;\\\\5FAE软雅黑&quot;, Arial, sans-serif; letter-spacing: 1px;\"><br></div><div class=\"image-desc\" style=\"color: rgb(116, 119, 122); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;\\\\5FAE软雅黑&quot;, Arial, sans-serif; letter-spacing: 1px;\">&nbsp; &nbsp; &nbsp; &nbsp;今天的比特币，被“专家”称为“庞氏骗局”，价值高达2000亿美元，也只是全球商业海洋中的一滴水。一些所谓的经济专家称比特币为“庞氏骗局”或“泡沫”，就好像一些专家说“互联网是一个毫无价值的想法”一样，他们只是无知和目光短浅。我们的工作不是试图说服他们并与他们争论，而是保持比特币的价值、投入的时间，为比特币网络的未来发展做贡献。</div><div class=\"image-desc\" style=\"color: rgb(116, 119, 122); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;\\\\5FAE软雅黑&quot;, Arial, sans-serif; letter-spacing: 1px;\"><br></div><div class=\"image-desc\" style=\"color: rgb(116, 119, 122); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;\\\\5FAE软雅黑&quot;, Arial, sans-serif; letter-spacing: 1px;\">&nbsp; &nbsp; &nbsp; 比特币打开了潘多拉的创新魔盒，在短短8年时间里，它创造了规模5000亿美元的市场，在全球范围内创造了巨大的价值。这个价值并不是因为新投资者的入局，而是因为成千上万的创业公司和企业创造了数以万计的工作岗位，为用户、基础设施、硬件、软件和应用程序提供了价值。</div><div class=\"image-desc\" style=\"color: rgb(116, 119, 122); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;\\\\5FAE软雅黑&quot;, Arial, sans-serif; letter-spacing: 1px;\"><br></div><div class=\"image-desc\" style=\"color: rgb(116, 119, 122); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;\\\\5FAE软雅黑&quot;, Arial, sans-serif; letter-spacing: 1px;\">&nbsp; &nbsp; &nbsp; 比特币的真正价值不体现于暴涨的币价，其价值主张在于带来的一个又一个效应。比特币不会解体，因为真正理解比特币价值的人永远不会选择去兑现。我们不想要现金，我们想要比特币。为什么我们要用一种有限的、稀缺的、有价值的资产来换取无限印刷的纸张呢?</div><div class=\"image-desc\" style=\"color: rgb(116, 119, 122); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;\\\\5FAE软雅黑&quot;, Arial, sans-serif; letter-spacing: 1px;\"><br></div><div class=\"image-desc\" style=\"color: rgb(116, 119, 122); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;\\\\5FAE软雅黑&quot;, Arial, sans-serif; letter-spacing: 1px;\">&nbsp; &nbsp; &nbsp;&nbsp;<span style=\"font-weight: bolder;\">比特币不是泡沫，而是刺破泡沫的针。对于我们和其他成千上万的人来说，我们不是在等待出口，比特币就是出口。</span></div><div><span style=\"font-weight: bolder;\"><br></span></div></div></div></div>', '2020-09-19 07:13:11', '', null, '1', '0', '6', '比特币是庞氏骗局吗？', 'CN');
INSERT INTO `sys_help` VALUES ('13', 'admin', '<p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">本文将告诉你如何在</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">通过人民币、美元等法定货币购买比特币、以太坊等数字货币。本文也为新手准备了一些概念普及知识，见文末附文。</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><b><span style=\"font-family: Helvetica; color: rgb(1, 163, 176); letter-spacing: 0.75pt; font-size: 13.5pt;\"><font face=\"Helvetica\">为了帮助用户完成法币兑换</font>/入金，</span></b><b><span style=\"font-family: 宋体; color: rgb(1, 163, 176); letter-spacing: 0.75pt; font-size: 13.5pt;\">QIBIT</span></b><b><span style=\"font-family: Helvetica; color: rgb(1, 163, 176); letter-spacing: 0.75pt; font-size: 13.5pt;\"><font face=\"Helvetica\">为用户推荐以下几种途径：</font></span></b><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"Helvetica\">一、</font></span></b><b><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">QIBIT</span></b><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">(</span></b><b><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">QIBIT.IO</span></b><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">)法币C2C通道（推荐）</span></b><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">为了更加高效的完成法币与数字货币的转换，</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">引进了具备相当资金体量的承兑商，所有合作承兑商经过实名认证，并且通过抵押现金的方式，保证承兑商的服务稳定性。</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT&nbsp;</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">C2C法币通道具体操作过程示例如下：</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">①、打开</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">官网（</font>http://www.</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT.io</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">），登录你的账户</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">②、完成实名认证、资金密码设置，图示如下：</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;text-indent:0.0000pt;padding:0pt 0pt 0pt 0pt ;\nmso-pagination:widow-orphan;text-align:center;\"><img width=\"554\" height=\"452\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\ksohtml4492\\wps1.jpg\"><span style=\"font-family: Helvetica; color: rgb(51, 51, 51); letter-spacing: 1.15pt; font-size: 10.5pt;\">&nbsp;</span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Calibri; letter-spacing: 1.15pt; font-size: 12pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">③、完成支付账户/收款账户设置，图示如下：</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;text-indent:0.0000pt;padding:0pt 0pt 0pt 0pt ;\nmso-pagination:widow-orphan;text-align:center;\"><img width=\"554\" height=\"425\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\ksohtml4492\\wps2.jpg\"><span style=\"font-family: Helvetica; color: rgb(51, 51, 51); letter-spacing: 1.15pt; font-size: 10.5pt;\">&nbsp;</span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">注意：绑定的账户必须与你实名认证的姓名一致，否则承兑商不会收付款</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">④、进入[法币交易]面板，输入购买USDT的数量，点击按钮【买入USDT】</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;text-indent:0.0000pt;padding:0pt 0pt 0pt 0pt ;\nmso-pagination:widow-orphan;text-align:center;\"><img width=\"554\" height=\"658\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\ksohtml4492\\wps3.jpg\"><span style=\"font-family: Helvetica; color: rgb(51, 51, 51); letter-spacing: 1.15pt; font-size: 10.5pt;\">&nbsp;</span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Calibri; letter-spacing: 1.15pt; font-size: 12pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">⑤、输入验证码和资产密码提交后，如果成功会弹出如下界面</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;text-indent:0.0000pt;padding:0pt 0pt 0pt 0pt ;\nmso-pagination:widow-orphan;text-align:center;\"><img width=\"1920\" height=\"942\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\ksohtml4492\\wps4.jpg\"><span style=\"font-family: Helvetica; color: rgb(51, 51, 51); letter-spacing: 1.15pt; font-size: 10.5pt;\">&nbsp;</span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">此时可按照提示进行转账，转账成功后，点击【标记已付款】，承兑商将收到你的买入订单，并核验是否到账，核验到账后，你将收到相应数量的</font>USDT。</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">查看</font>USDT：进入个人中心 —&gt; 资产管理查看即可。</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">卖出</font>USDT也可以在法币交易面板操作，相应的，承兑商将向你的银行卡转入对应金额的人民币，交易完成后将扣除你的USDT余额。</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"Helvetica\">二、</font></span></b><b><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">QIBIT</span></b><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">(</span></b><b><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">QIBIT.IO</span></b><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">)法币OTC人工通道</span></b><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">为了让刚接触数字货币投资的新人能够方便快捷的通过人民币或美元购买比特币等数字货币，</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">(</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">)联合资金实力雄厚的专业场外交易方成立了专为新人提供数字货币买卖服务的人工通道，新用户可通过添加</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">(</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">)官方微信，建立与场外交易方的联系通道，并由</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">(</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">)提供担保，进行数字货币买卖，从而实现人民币或美元与比特币等数字货币的兑换服务。具体步骤如下：</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Calibri; letter-spacing: 1.15pt; font-size: 12pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">1）、添加</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">(</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">)官方法币交易客服微信：“</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">aws3131</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">”</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">2）、提供</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">(</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">)账户验证信息</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">3）、由官方客服微信建立由用户、场外交易服务方、</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">三方组成的三人微信群</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">4）、通过三方微信群进行法币与数字货币的兑换服务</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Calibri; letter-spacing: 1.15pt; font-size: 12pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><i><span style=\"font-family: Helvetica; color: rgb(254, 44, 35); letter-spacing: 0.75pt; font-size: 10.5pt;\">*为了您的资金安全，强烈建议新人在官方客服的指导下完成首次数字货币兑换</span></i><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Calibri; letter-spacing: 1.15pt; font-size: 12pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">特别声明：</span></b><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><i><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">a）、兑换交易由</span></i><i><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span></i><i><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">(</span></i><i><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span></i><i><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">)提供担保，如用户出现资金损失，</span></i><i><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span></i><i><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">(</span></i><i><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span></i><i><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">)将承担一切损失</span></i><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><i><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">b）、场外交易服务提供者必须将自己的数字货币先行存在</span></i><i><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span></i><i><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">(</span></i><i><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span></i><i><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">)交易所</span></i><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><i><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">c）、用户完成法币兑数字货币后，将直接充值到用户在</span></i><i><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span></i><i><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">(</span></i><i><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span></i><i><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">)的资金账户</span></i><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Calibri; letter-spacing: 1.15pt; font-size: 12pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Calibri; letter-spacing: 1.15pt; font-size: 12pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"Helvetica\">三、</font>QIBIT(QIBIT.IO)法币线上OTC通道</span></b><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0pt 36pt 0pt 66pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT(</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">)将开通线上OTC交易通道，在用户熟悉数字货币交易后，可自主通过OTC通道进行法币与数字货币的兑换。该服务系统目前仍在开发中，上线后将招募OTC服务商家，OTC服务商家须提供质押资金以确保服务提供能力。届时无论新用户还是老用户都可以通过QIBIT(</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">)官方OTC通道进行自动化交易。</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0pt 36pt 0pt 66pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 13.5pt;\"><font face=\"Helvetica\">四、其他第三方</font>OTC交易平台</span></b><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Calibri; letter-spacing: 1.15pt; font-size: 12pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">以下推荐法币</font>OTC交易平台为第三方交易平台，</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">(</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">)仅提供参考推荐，不对资金安全做保证，请在充分了解的前提下，慎重使用第三方OTC交易平台进行交易。</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">在第三方</font>OTC交易平台兑换数字货币后，您可以通过“提币”或“转账”将数字货币充值到您在</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">(</span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">)交易平台的账户。</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Calibri; letter-spacing: 1.15pt; font-size: 12pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">1）、OTCBTC场外交易平台（人民币）</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0pt 72pt; text-indent: 0pt; padding: 0pt; line-height: 21pt;\"><span style=\"font-family: 宋体; color: rgb(132, 146, 156); letter-spacing: 0pt; font-size: 12pt;\"><font face=\"宋体\">官网地址</font></span><span style=\"font-family: 宋体; color: rgb(81, 90, 110); letter-spacing: 0pt; font-size: 9pt;\">&nbsp;</span><a href=\"#/content/helpManage/_blank\"><span class=\"15\" style=\"font-family: 宋体; color: rgb(0, 155, 244); letter-spacing: 0pt; font-size: 12pt;\">https://otcbtc.com</span></a><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0pt 72pt; text-indent: 0pt; padding: 0pt; line-height: 21pt;\"><span style=\"font-family: 宋体; color: rgb(132, 146, 156); letter-spacing: 0pt; font-size: 10.5pt;\"><font face=\"宋体\">手续费</font></span><span style=\"font-family: 宋体; color: rgb(81, 90, 110); letter-spacing: 0pt; font-size: 9pt;\">&nbsp;</span><a href=\"#/content/helpManage/_blank\"><span class=\"15\" style=\"font-family: 宋体; color: rgb(0, 155, 244); letter-spacing: 0pt; font-size: 10.5pt;\">https://otcbtc.com/fee</span></a><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0pt 72pt; text-indent: 0pt; padding: 0pt; line-height: 21pt;\"><span style=\"font-family: 宋体; color: rgb(132, 146, 156); letter-spacing: 0pt; font-size: 10.5pt;\"><font face=\"宋体\">官网备用地址</font></span><span style=\"font-family: 宋体; color: rgb(81, 90, 110); letter-spacing: 0pt; font-size: 9pt;\">&nbsp;</span><a href=\"#/content/helpManage/_blank\"><span class=\"15\" style=\"font-family: 宋体; color: rgb(0, 155, 244); letter-spacing: 0pt; font-size: 10.5pt;\">https://otcbtc.io/</span></a><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 72pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">OTCBTC，成立于2017年9月，是由一群爱好区块链行业的台湾团队，结合交易所、ICO、金融外汇应用的开发经验，运用严格KYC程序、公平的评分机制等措施，专注于为全球用户提供安全易用、便捷可靠的区块链服务，建立一个提供虚拟数字货币交易平台。</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 36pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">2）、火币点对点平台（人民币）</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 72pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: 宋体; color: rgb(132, 146, 156); letter-spacing: 0pt; font-size: 12pt;\"><font face=\"宋体\">官网地址</font></span><span style=\"font-family: 宋体; color: rgb(81, 90, 110); letter-spacing: 0pt; font-size: 9pt;\">&nbsp;</span><a href=\"#/content/helpManage/_blank\"><span class=\"15\" style=\"font-family: 宋体; color: rgb(0, 155, 244); letter-spacing: 0pt; font-size: 12pt;\">https://otc.huobi.pro</span></a><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 72pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"宋体\">火币全球专业站点对点交易平台（以下简称</font>“点对点平台”）：是火币全球专业站设立关于数字资产场外交易的平台，您可以在点对点平台创建出售/购买数字资产的卖单/买单，与意向交易对方达成交易，以满足用户间交换数字资产的需求。</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 72pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Calibri; letter-spacing: 1.15pt; font-size: 12pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0pt 72pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">3）、Circle Trade（美元）</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 72pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: 宋体; color: rgb(132, 146, 156); letter-spacing: 0pt; font-size: 12pt;\"><font face=\"宋体\">官网地址</font></span><span style=\"font-family: 宋体; color: rgb(81, 90, 110); letter-spacing: 0pt; font-size: 9pt;\">&nbsp;</span><a href=\"#/content/helpManage/_blank\"><span class=\"15\" style=\"font-family: 宋体; color: rgb(0, 155, 244); letter-spacing: 0pt; font-size: 12pt;\">https://www.circle.com/en/trade</span></a><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 72pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"宋体\">作为世界上最大的流动资产提供商和场外交易（</font>OTC）数字资产市场之一，在Circle比特币交易订单最低额度已经高达50万美元。这家在都柏林注册的公司在2018年3月宣布，它正在招聘100名新员工以改善Poloniex的技术、运营和客户支持。此外，该公司还提到计划雇用25-35名员工来支持其在亚洲的业务。</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 72pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Calibri; letter-spacing: 1.15pt; font-size: 12pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0pt 72pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">4）、LocalBitcoins</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0pt 72pt 0pt 102pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: 宋体; color: rgb(132, 146, 156); letter-spacing: 0pt; font-size: 12pt;\"><font face=\"宋体\">官网地址</font></span><span style=\"font-family: 宋体; color: rgb(81, 90, 110); letter-spacing: 0pt; font-size: 9pt;\">&nbsp;</span><a href=\"#/content/helpManage/_blank\"><span class=\"15\" style=\"font-family: 宋体; color: rgb(0, 155, 244); letter-spacing: 0pt; font-size: 12pt;\">https://localbitcoins.net/zh-cn/</span></a><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0pt 36pt 0pt 66pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0pt 36pt 0pt 66pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">5）、COINCOLA</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0pt 72pt 0pt 102pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: 宋体; color: rgb(132, 146, 156); letter-spacing: 0pt; font-size: 12pt;\"><font face=\"宋体\">官网地址</font></span><span style=\"font-family: 宋体; color: rgb(81, 90, 110); letter-spacing: 0pt; font-size: 9pt;\">&nbsp;</span><a href=\"#/content/helpManage/_blank\"><span class=\"15\" style=\"font-family: 宋体; color: rgb(0, 155, 244); letter-spacing: 0pt; font-size: 12pt;\">http://www.coincula.com/about</span></a><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 72pt 12pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">CoinCola是一家位于香港的数字货币场外、币币交易平台。平台成立的宗旨是为用户提供最优质的数字货币交易体验。</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt 72pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Calibri; letter-spacing: 1.15pt; font-size: 12pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">附录：</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">1、什么是交易所？</span></b><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp; &nbsp; &nbsp; 如果你手持人民币或者美元，想购买比特币或其他数字货币时，首先，你需要找到一个拥有比特币并且愿意卖给你的人，而在我们身边可能持有比特币的人很少、或者持有但不愿意卖、或者愿意卖的数量不够你买。类似的情形，当你有比特币，想兑换成人民币或者法币的时候；或者有比特币，想兑换成其他数字货币的时候。为了满足大家交易的需求，就形成了基于互联网的线上交易场所。</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp; &nbsp; &nbsp; 线上交易所目前有三类：中心化撮合式交易所、OTC场外交易和去中心化交易，适合新人的主要是中心化撮合式交易所和OTC场外交易。其中OTC场外交易所主要的业务是对接法币与数字货币的交易，比如人民币与比特币之间的交换；而中心化撮合式交易所主要业务内容是完成币币之间的兑换，比如比特币与以太坊之间的兑换。</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">2、什么OTC交易？</span></b><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp; &nbsp; &nbsp; OTC的全称是Over the counter，即柜台交易的意思。在传统金融场景里，如果仅仅有股市（如A股、纳斯达克等）这样制度完善、监管严格的股权交易方式，那么大部分无法上市的公司就很难完成股权转让及交易，这时候就有了场外交易的需求，它不需要那么严格的制度限制，没有那么严格的监管，但是更加方便了交易方的交易，只要大家遵从一个更大范围的制度——法律，如合同法，也就可以了。</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp; &nbsp; &nbsp; 那么前面提到，我们在身边很难找到合适的人完成兑换交易，这时候就出现一个又一个平台聚集了一些需要兑换的人。你可以视之为中介平台，在这样的平台网站或APP上，你可以看到别人的挂单，你也可以参与买卖。如下图：</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;text-indent:0.0000pt;padding:0pt 0pt 0pt 0pt ;\nmso-pagination:widow-orphan;text-align:center;\"><span style=\"font-family: Helvetica; color: rgb(51, 51, 51); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;text-indent:0.0000pt;padding:0pt 0pt 0pt 0pt ;\nmso-pagination:widow-orphan;text-align:center;\"><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;text-indent:0.0000pt;padding:0pt 0pt 0pt 0pt ;\nmso-pagination:widow-orphan;text-align:center;\"><img width=\"1109\" height=\"625\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\ksohtml4492\\wps5.jpg\"><span style=\"font-family: Helvetica; color: rgb(51, 51, 51); letter-spacing: 1.15pt; font-size: 10.5pt;\">&nbsp;</span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">3、撮合式交易所与OTC交易的区别是什么？</span></b><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp; &nbsp; &nbsp; OTC交易的主要功能是完成人民币/美元等法币与数字货币的兑换，而中心化撮合式交易所则是快速的撮合式交易，它不涉及到数字货币与法币之间的兑换，跟传统的股票交易市场没什么本质区别。</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">4、什么是法币，什么是稳定币？</span></b><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp; &nbsp; &nbsp; 法币（Fiat Currency）是以国家政府信用背书，以法律为保障发行的货币，也就是法定货币，如人民币、美元、卢布等就属于法币。</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp; &nbsp; &nbsp; 稳定币是数字货币领域为了方便交易而发行的数字货币，比如USDT、PAX、EUSD等等，他们都可以完成与美元法币接近1:1的兑换，在数字货币领域，因为这类币的价格很稳定，不会像比特币那样猛涨猛跌，所以就称之为稳定币。</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">搞清了上面三个概念，也就知道如何参与数字货币交易了：第一步是通过一些途径（如</font>OTC交易）将法币换成数字货币，第二步是交易数字货币。</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0pt; text-indent: 0pt; padding: 0pt;\"><span style=\"font-family: Calibri; letter-spacing: 1.15pt; font-size: 10.5pt;\">&nbsp;</span><span style=\"font-family: Helvetica; letter-spacing: 1.15pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"><o:p>&nbsp;</o:p></span></p>', '2020-09-24 18:32:24', '', null, '1', '0', '0', '如何用人民币/美元买卖数字货币？', 'CN');
INSERT INTO `sys_help` VALUES ('14', 'admin', '<h3 style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:22.5000pt;\nmargin-left:0.0000pt;text-indent:0.0000pt;padding:0pt 0pt 0pt 0pt ;\nmso-pagination:widow-orphan;mso-line-height-alt:12pt;\"><b><span style=\"font-family: Helvetica; color: rgb(105, 105, 105); letter-spacing: 0pt; font-size: 21pt;\"><font face=\"Helvetica\">如何加入</font></span></b><font style=\"\"><font color=\"#696969\" face=\"宋体\"><span style=\"font-size: 28px; letter-spacing: normal;\">BIZZAN</span></font><font color=\"#696969\" face=\"Helvetica\"><span style=\"font-size: 21pt; letter-spacing: 0pt;\">社群</span></font></font><font color=\"#696969\" face=\"Helvetica\"><span style=\"font-size: 21pt; letter-spacing: 0pt;\">?</span></font><b><span style=\"font-family: Helvetica; color: rgb(105, 105, 105); letter-spacing: 0pt; font-size: 21pt;\"><o:p></o:p></span></b></h3><h3 style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:22.5000pt;\nmargin-left:0.0000pt;text-indent:0.0000pt;padding:0pt 0pt 0pt 0pt ;\nmso-pagination:widow-orphan;mso-line-height-alt:12pt;\"><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">为了让</font></span><font style=\"\"><font color=\"#74777a\" face=\"宋体\"><span style=\"font-size: 14px; letter-spacing: 1px;\">BIZZAN</span></font><font color=\"#74777a\" face=\"Helvetica\"><span style=\"font-size: 10.5pt; letter-spacing: 0.75pt;\">交易平台用户有一个共同沟通、最快获悉币严</span></font></font><font color=\"#74777a\" face=\"Helvetica\"><span style=\"font-size: 10.5pt; letter-spacing: 0.75pt;\">(</span></font><font color=\"#74777a\" face=\"宋体\"><span style=\"font-size: 14px; letter-spacing: 1px;\">BIZZAN</span></font><font color=\"#74777a\" face=\"Helvetica\"><span style=\"font-size: 10.5pt; letter-spacing: 0.75pt;\">)最新资讯、极速问题响应通道，币严(</span></font><font color=\"#74777a\" face=\"宋体\"><span style=\"font-size: 14px; letter-spacing: 1px;\">BIZZAN</span></font><font color=\"#74777a\" face=\"Helvetica\"><span style=\"font-size: 10.5pt; letter-spacing: 0.75pt;\">)成立了社群服务组，专门负责社群维护、消息发布、咨询服务等服务。</span></font><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">目前社群服务内容包括但不仅限于以下内容：</font></span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:36.0000pt;margin-bottom:0.0000pt;\nmargin-left:36.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">1、上币通知</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:36.0000pt;margin-bottom:0.0000pt;\nmargin-left:36.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">2、活动通知</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:36.0000pt;margin-bottom:0.0000pt;\nmargin-left:36.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">3、系统维护通知</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:36.0000pt;margin-bottom:0.0000pt;\nmargin-left:36.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">4、平台使用疑问解答</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:36.0000pt;margin-bottom:0.0000pt;\nmargin-left:36.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">5、充值/提现等资金问题解答</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:36.0000pt;margin-bottom:0.0000pt;\nmargin-left:36.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">6、平台用户体验改进建议要求</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\">QIBIT</span><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><font face=\"Helvetica\">当前开通了以下社群通道：</font></span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"Helvetica\">一、微信群</font></span></b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"Helvetica\">（推荐）</font></span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:36.0000pt;margin-bottom:0.0000pt;\nmargin-left:36.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><b><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"宋体\">加入方法</font></span></b><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"宋体\">：添加社群客服微信号（xxxxx</font></span><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"宋体\">）为好友，通过验证请求后，提供注册平台的账号即可获得拉入微信群资格。</font></span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:36.0000pt;margin-bottom:0.0000pt;\nmargin-left:36.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><i><span style=\"font-family: 宋体; color: rgb(148, 148, 148); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"宋体\">注意：社群客服微信号如添加好友超过微信限制，会更新微信号，但这不影响已经加入的用户。</font></span></i><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:36.0000pt;margin-bottom:0.0000pt;\nmargin-left:36.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0pt; text-indent: 0pt; border-top: 1pt solid rgb(235, 235, 235); padding: 0pt;\"><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"Helvetica\">二、电报</font>(Telegram)中文社区</span></b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:36.0000pt;margin-bottom:0.0000pt;\nmargin-left:36.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">https://t.me/</span><font color=\"#74777a\" face=\"宋体\"><span style=\"font-size: 16px; letter-spacing: 1px;\">BIZZAN</span><span style=\"font-size: 12pt; letter-spacing: 0.75pt;\">official</span></font><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:36.0000pt;margin-bottom:0.0000pt;\nmargin-left:36.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"Helvetica\">三、币用（</font>Biyong）中文社区</span></b><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:36.0000pt;margin-bottom:0.0000pt;\nmargin-left:36.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">https://0.plus/</span><font color=\"#74777a\" face=\"宋体\"><span style=\"font-size: 16px; letter-spacing: 1px;\">BIZZAN</span><span style=\"font-size: 12pt; letter-spacing: 0.75pt;\">official</span></font><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"Helvetica\">四、官方微博</font>(Weibo)</span></b><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:36.0000pt;margin-bottom:0.0000pt;\nmargin-left:36.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">https://weibo.com/</span><span style=\"font-size: 16px; letter-spacing: 1px; color: rgb(116, 119, 122); font-family: 宋体; text-indent: 0pt;\">BIZZAN</span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"Helvetica\">五、官方推特</font>(Twitter)</span></b><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:36.0000pt;margin-bottom:0.0000pt;\nmargin-left:36.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">https://twitter.com/</span><font color=\"#74777a\" face=\"宋体\"><span style=\"font-size: 16px; letter-spacing: 1px;\">BIZZAN</span><span style=\"font-size: 12pt; letter-spacing: 0.75pt;\">Global</span></font><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"Helvetica\">六、</font>Medium</span></b><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:36.0000pt;margin-bottom:0.0000pt;\nmargin-left:36.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">https://medium.com/@</span><span style=\"font-size: 16px; letter-spacing: 1px; color: rgb(116, 119, 122); font-family: 宋体; text-indent: 0pt;\">BIZZAN</span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:36.0000pt;margin-bottom:0.0000pt;\nmargin-left:36.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p>&nbsp;</o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:0.0000pt;margin-bottom:0.0000pt;\nmargin-left:0.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><b><span style=\"font-family: Helvetica; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\"><font face=\"Helvetica\">七、</font>Reddit</span></b><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"p\" style=\"margin-top:0.0000pt;margin-right:36.0000pt;margin-bottom:0.0000pt;\nmargin-left:36.0000pt;padding:0pt 0pt 0pt 0pt ;mso-pagination:widow-orphan;\"><span style=\"font-family: 宋体; color: rgb(116, 119, 122); letter-spacing: 0.75pt; font-size: 12pt;\">https://www.reddit.com/u/</span><font color=\"#74777a\" face=\"宋体\"><span style=\"font-size: 16px; letter-spacing: 1px;\">BIZZAN</span><span style=\"font-size: 12pt; letter-spacing: 0.75pt;\">global</span></font><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:12.0000pt;mso-font-kerning:0.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"><o:p>&nbsp;</o:p></span></p></h3>', '2020-09-24 18:39:59', '', null, '2', '0', '0', '如何加入BIZZAN社群?', 'CN');

-- ----------------------------
-- Table structure for tb_sms
-- ----------------------------
DROP TABLE IF EXISTS `tb_sms`;
CREATE TABLE `tb_sms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key_id` varchar(255) DEFAULT NULL,
  `key_secret` varchar(255) DEFAULT NULL,
  `sign_id` varchar(255) DEFAULT NULL,
  `sms_name` varchar(255) DEFAULT NULL,
  `sms_status` varchar(255) DEFAULT NULL,
  `template_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_sms
-- ----------------------------
INSERT INTO `tb_sms` VALUES ('1', '5f6ce0d8efb9a30ca4fb28dc', '50155d47f0be444a9741e7cf7e9029dd', 'BIZZAN', 'saiyou', '0', 'verifymessage');

-- ----------------------------
-- Table structure for transfer_address
-- ----------------------------
DROP TABLE IF EXISTS `transfer_address`;
CREATE TABLE `transfer_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `min_amount` decimal(18,2) DEFAULT NULL COMMENT '最低转账数目',
  `status` int(11) DEFAULT NULL,
  `transfer_fee` decimal(18,6) DEFAULT NULL COMMENT '转账手续费率',
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK7iv0cmmj36ncaw1nx92x15vtu` (`coin_id`) USING BTREE,
  CONSTRAINT `FK7iv0cmmj36ncaw1nx92x15vtu` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of transfer_address
-- ----------------------------

-- ----------------------------
-- Table structure for transfer_record
-- ----------------------------
DROP TABLE IF EXISTS `transfer_record`;
CREATE TABLE `transfer_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `fee` decimal(18,8) DEFAULT NULL COMMENT '手续费',
  `member_id` bigint(20) DEFAULT NULL,
  `order_sn` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKkrlf3bglmf2c51sorq9fpue0g` (`coin_id`) USING BTREE,
  CONSTRAINT `FKkrlf3bglmf2c51sorq9fpue0g` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of transfer_record
-- ----------------------------

-- ----------------------------
-- Table structure for wallet_trans_record
-- ----------------------------
DROP TABLE IF EXISTS `wallet_trans_record`;
CREATE TABLE `wallet_trans_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(26,16) DEFAULT NULL COMMENT '划转金额',
  `create_time` datetime DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `source` int(11) DEFAULT '0' COMMENT '从哪里划转',
  `target` int(11) DEFAULT '0' COMMENT '划转到哪里去',
  `unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wallet_trans_record
-- ----------------------------
INSERT INTO `wallet_trans_record` VALUES ('1', '10000.0000000000000000', '2020-11-05 17:56:14', '1', '0', '1', 'USDT');
INSERT INTO `wallet_trans_record` VALUES ('2', '10000000.0000000000000000', '2020-11-06 09:22:28', '1', '0', '1', 'USDT');
INSERT INTO `wallet_trans_record` VALUES ('3', '100000.0000000000000000', '2020-11-09 04:28:13', '600800', '0', '1', 'USDT');
INSERT INTO `wallet_trans_record` VALUES ('4', '1000000.0000000000000000', '2020-11-09 05:13:05', '1', '0', '1', 'USDT');
INSERT INTO `wallet_trans_record` VALUES ('5', '10000.0000000000000000', '2020-11-09 05:13:28', '1', '0', '1', 'USDT');
INSERT INTO `wallet_trans_record` VALUES ('6', '100000.0000000000000000', '2020-11-09 05:13:55', '1', '0', '1', 'USDT');
INSERT INTO `wallet_trans_record` VALUES ('7', '10000.0000000000000000', '2020-11-10 14:26:02', '600803', '0', '1', 'USDT');
INSERT INTO `wallet_trans_record` VALUES ('8', '100000.0000000000000000', '2020-11-19 01:51:41', '600800', '0', '1', 'USDT');
INSERT INTO `wallet_trans_record` VALUES ('9', '100000.0000000000000000', '2020-11-19 01:51:45', '600800', '0', '1', 'USDT');
INSERT INTO `wallet_trans_record` VALUES ('10', '100000.0000000000000000', '2020-11-19 01:51:48', '600800', '0', '1', 'USDT');
INSERT INTO `wallet_trans_record` VALUES ('11', '100000.0000000000000000', '2020-11-19 01:53:05', '1', '0', '1', 'USDT');
INSERT INTO `wallet_trans_record` VALUES ('12', '100000.0000000000000000', '2020-11-19 01:53:08', '1', '0', '1', 'USDT');
INSERT INTO `wallet_trans_record` VALUES ('13', '100000.0000000000000000', '2020-11-19 01:53:11', '1', '0', '1', 'USDT');
INSERT INTO `wallet_trans_record` VALUES ('14', '1000000.0000000000000000', '2020-11-30 10:03:44', '1', '0', '1', 'USDT');
INSERT INTO `wallet_trans_record` VALUES ('15', '22222.0000000000000000', '2021-03-08 14:18:37', '600800', '0', '1', 'USDT');
INSERT INTO `wallet_trans_record` VALUES ('16', '22222.0000000000000000', '2021-03-08 14:18:40', '600800', '0', '1', 'USDT');
INSERT INTO `wallet_trans_record` VALUES ('17', '22222.0000000000000000', '2021-03-08 14:18:42', '600800', '0', '1', 'USDT');
INSERT INTO `wallet_trans_record` VALUES ('18', '22222.0000000000000000', '2021-03-08 14:18:42', '600800', '0', '1', 'USDT');
INSERT INTO `wallet_trans_record` VALUES ('19', '11111.0000000000000000', '2021-03-08 16:29:52', '600800', '0', '1', 'USDT');
INSERT INTO `wallet_trans_record` VALUES ('20', '489953.0000000000000000', '2021-03-08 16:45:13', '600800', '0', '1', 'USDT');

-- ----------------------------
-- Table structure for website_information
-- ----------------------------
DROP TABLE IF EXISTS `website_information`;
CREATE TABLE `website_information` (
  `id` bigint(20) NOT NULL,
  `address_icon` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `other_information` text,
  `postcode` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of website_information
-- ----------------------------

-- ----------------------------
-- Table structure for withdraw_code_record
-- ----------------------------
DROP TABLE IF EXISTS `withdraw_code_record`;
CREATE TABLE `withdraw_code_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `rmember_id` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `withdraw_amount` decimal(18,8) DEFAULT NULL COMMENT '申请总数量',
  `withdraw_code` varchar(255) DEFAULT NULL,
  `coin_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKa3kybqr5vhpnf5a57ridds671` (`coin_id`) USING BTREE,
  CONSTRAINT `FKa3kybqr5vhpnf5a57ridds671` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of withdraw_code_record
-- ----------------------------
INSERT INTO `withdraw_code_record` VALUES ('1', '2020-11-17 08:49:38', null, '1', null, null, '0', '10.00000000', '37353BD8DF862FA1C82969497B611A2B', 'USDT');

-- ----------------------------
-- Table structure for withdraw_record
-- ----------------------------
DROP TABLE IF EXISTS `withdraw_record`;
CREATE TABLE `withdraw_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `arrived_amount` decimal(18,8) DEFAULT NULL COMMENT '预计到账数量',
  `can_auto_withdraw` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `fee` decimal(18,8) DEFAULT NULL COMMENT '手续费',
  `is_auto` int(11) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `total_amount` decimal(18,8) DEFAULT NULL COMMENT '申请总数量',
  `transaction_number` varchar(255) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK2lmq6bcbk4nl3hmqcxbnx2kuc` (`admin_id`) USING BTREE,
  KEY `FK6drad9oqabujy0jsre3minxi` (`coin_id`) USING BTREE,
  CONSTRAINT `FK2lmq6bcbk4nl3hmqcxbnx2kuc` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `FK6drad9oqabujy0jsre3minxi` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of withdraw_record
-- ----------------------------
