/*
Navicat MySQL Data Transfer

Source Server         : localhost22222222222222222
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : zhima

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-01-03 18:08:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '首页', 'fa-bar-chart', '/', 'dashboard', null, '2020-01-03 05:39:30');
INSERT INTO `admin_menu` VALUES ('2', '0', '2', '系统设置', 'fa-tasks', null, '*', null, '2020-01-03 05:41:09');
INSERT INTO `admin_menu` VALUES ('3', '2', '3', '管理员', 'fa-users', 'auth/users', null, null, '2020-01-03 03:36:31');
INSERT INTO `admin_menu` VALUES ('4', '2', '4', '角色管理', 'fa-user', 'auth/roles', null, null, '2020-01-03 03:36:43');
INSERT INTO `admin_menu` VALUES ('5', '2', '5', '权限管理', 'fa-ban', 'auth/permissions', null, null, '2020-01-03 03:36:55');
INSERT INTO `admin_menu` VALUES ('6', '2', '6', '菜单管理', 'fa-bars', 'auth/menu', null, null, '2020-01-03 03:37:40');
INSERT INTO `admin_menu` VALUES ('7', '2', '7', '日志管理', 'fa-history', 'auth/logs', null, null, '2020-01-03 03:37:15');
INSERT INTO `admin_menu` VALUES ('8', '0', '8', '网站设置', 'fa-adjust', 'configs', null, '2020-01-03 01:31:16', '2020-01-03 05:36:55');

-- ----------------------------
-- Table structure for `admin_operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=459 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-12-27 02:11:22', '2019-12-27 02:11:22');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-12-27 02:14:15', '2019-12-27 02:14:15');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-12-27 02:14:17', '2019-12-27 02:14:17');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-12-27 02:14:25', '2019-12-27 02:14:25');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:14:29', '2019-12-27 02:14:29');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:14:29', '2019-12-27 02:14:29');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:14:32', '2019-12-27 02:14:32');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-12-27 02:14:51', '2019-12-27 02:14:51');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:16:16', '2019-12-27 02:16:16');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:16:17', '2019-12-27 02:16:17');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:16:18', '2019-12-27 02:16:18');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:16:24', '2019-12-27 02:16:24');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:31:20', '2019-12-27 02:31:20');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-12-27 02:34:45', '2019-12-27 02:34:45');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:28', '2019-12-27 02:35:28');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:30', '2019-12-27 02:35:30');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:30', '2019-12-27 02:35:30');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:31', '2019-12-27 02:35:31');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:31', '2019-12-27 02:35:31');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:33', '2019-12-27 02:35:33');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:33', '2019-12-27 02:35:33');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:33', '2019-12-27 02:35:33');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:35', '2019-12-27 02:35:35');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:36', '2019-12-27 02:35:36');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:36', '2019-12-27 02:35:36');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:37', '2019-12-27 02:35:37');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:38', '2019-12-27 02:35:38');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:39', '2019-12-27 02:35:39');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:40', '2019-12-27 02:35:40');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:41', '2019-12-27 02:35:41');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:42', '2019-12-27 02:35:42');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:42', '2019-12-27 02:35:42');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:43', '2019-12-27 02:35:43');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:44', '2019-12-27 02:35:44');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:47', '2019-12-27 02:35:47');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:49', '2019-12-27 02:35:49');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:49', '2019-12-27 02:35:49');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:50', '2019-12-27 02:35:50');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:51', '2019-12-27 02:35:51');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:35:55', '2019-12-27 02:35:55');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:36:07', '2019-12-27 02:36:07');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:36:08', '2019-12-27 02:36:08');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:36:09', '2019-12-27 02:36:09');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:36:10', '2019-12-27 02:36:10');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-01-02 03:01:58', '2020-01-02 03:01:58');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 03:02:02', '2020-01-02 03:02:02');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 03:02:03', '2020-01-02 03:02:03');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 03:02:04', '2020-01-02 03:02:04');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 03:02:04', '2020-01-02 03:02:04');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 03:02:06', '2020-01-02 03:02:06');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 03:02:06', '2020-01-02 03:02:06');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 08:03:11', '2020-01-02 08:03:11');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-01-02 08:04:01', '2020-01-02 08:04:01');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-01-02 09:23:15', '2020-01-02 09:23:15');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 09:23:20', '2020-01-02 09:23:20');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 09:23:22', '2020-01-02 09:23:22');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 09:23:23', '2020-01-02 09:23:23');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 09:23:24', '2020-01-02 09:23:24');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 09:23:26', '2020-01-02 09:23:26');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 09:23:27', '2020-01-02 09:23:27');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 09:23:27', '2020-01-02 09:23:27');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-02 09:25:52', '2020-01-02 09:25:52');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-02 09:27:11', '2020-01-02 09:27:11');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-02 09:27:13', '2020-01-02 09:27:13');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-02 09:27:16', '2020-01-02 09:27:16');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-02 09:27:19', '2020-01-02 09:27:19');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site_tel\":\"2342\",\"site_address\":null,\"site_email\":null,\"site_keyword\":null,\"site_qr_code\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"0OAa5nSWbaRBgbxh2X9z9aj351YG2WlQtVFrRd5s\"}', '2020-01-02 09:28:29', '2020-01-02 09:28:29');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 09:28:31', '2020-01-02 09:28:31');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site_tel\":null,\"site_address\":null,\"site_email\":null,\"site_keyword\":null,\"site_qr_code\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"0OAa5nSWbaRBgbxh2X9z9aj351YG2WlQtVFrRd5s\"}', '2020-01-02 09:28:42', '2020-01-02 09:28:42');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 09:31:33', '2020-01-02 09:31:33');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site_tel\":null,\"site_address\":null,\"site_email\":null,\"site_keyword\":null,\"site_qr_code\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"0OAa5nSWbaRBgbxh2X9z9aj351YG2WlQtVFrRd5s\"}', '2020-01-02 09:35:44', '2020-01-02 09:35:44');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-02 09:48:49', '2020-01-02 09:48:49');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-02 09:48:53', '2020-01-02 09:48:53');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site_tel\":null,\"site_address\":null,\"site_email\":null,\"site_keyword\":null,\"site_qr_code\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"0OAa5nSWbaRBgbxh2X9z9aj351YG2WlQtVFrRd5s\"}', '2020-01-02 09:48:57', '2020-01-02 09:48:57');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-02 09:48:58', '2020-01-02 09:48:58');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 09:49:21', '2020-01-02 09:49:21');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site_tel\":null,\"site_address\":null,\"site_email\":null,\"site_keyword\":null,\"site_qr_code\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"0OAa5nSWbaRBgbxh2X9z9aj351YG2WlQtVFrRd5s\"}', '2020-01-02 09:49:25', '2020-01-02 09:49:25');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-02 09:49:26', '2020-01-02 09:49:26');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site_tel\":null,\"site_address\":null,\"site_email\":null,\"site_keyword\":null,\"site_qr_code\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"0OAa5nSWbaRBgbxh2X9z9aj351YG2WlQtVFrRd5s\"}', '2020-01-02 09:49:55', '2020-01-02 09:49:55');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 09:52:47', '2020-01-02 09:52:47');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site_tel\":null,\"site_address\":null,\"site_email\":null,\"site_keyword\":null,\"site_qr_code\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"0OAa5nSWbaRBgbxh2X9z9aj351YG2WlQtVFrRd5s\"}', '2020-01-02 09:52:51', '2020-01-02 09:52:51');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 09:54:09', '2020-01-02 09:54:09');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site_tel\":null,\"site_address\":null,\"site_email\":null,\"site_keyword\":null,\"site_qr_code\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"0OAa5nSWbaRBgbxh2X9z9aj351YG2WlQtVFrRd5s\"}', '2020-01-02 09:54:14', '2020-01-02 09:54:14');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 09:54:46', '2020-01-02 09:54:46');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site_tel\":null,\"site_address\":null,\"site_email\":null,\"site_keyword\":null,\"site_qr_code\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"0OAa5nSWbaRBgbxh2X9z9aj351YG2WlQtVFrRd5s\"}', '2020-01-02 09:54:52', '2020-01-02 09:54:52');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 09:54:54', '2020-01-02 09:54:54');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site_tel\":null,\"site_address\":null,\"site_email\":null,\"site_keyword\":null,\"site_qr_code\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"0OAa5nSWbaRBgbxh2X9z9aj351YG2WlQtVFrRd5s\"}', '2020-01-02 09:55:58', '2020-01-02 09:55:58');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-02 10:01:33', '2020-01-02 10:01:33');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-02 10:01:34', '2020-01-02 10:01:34');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-02 10:02:16', '2020-01-02 10:02:16');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site_tel\":null,\"site_address\":null,\"site_email\":null,\"site_keyword\":null,\"site_qr_code\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"0OAa5nSWbaRBgbxh2X9z9aj351YG2WlQtVFrRd5s\"}', '2020-01-02 10:02:17', '2020-01-02 10:02:17');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 10:02:20', '2020-01-02 10:02:20');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site_tel\":null,\"site_address\":null,\"site_email\":null,\"site_keyword\":null,\"site_qr_code\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"0OAa5nSWbaRBgbxh2X9z9aj351YG2WlQtVFrRd5s\"}', '2020-01-02 10:05:06', '2020-01-02 10:05:06');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-02 10:05:09', '2020-01-02 10:05:09');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site_tel\":\"ttt\",\"site_address\":\"dad\",\"site_email\":\"asd\",\"site_keyword\":\"ad\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"0OAa5nSWbaRBgbxh2X9z9aj351YG2WlQtVFrRd5s\"}', '2020-01-02 10:05:43', '2020-01-02 10:05:43');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site_tel\":\"ttt\",\"site_address\":\"dad\",\"site_email\":\"asd\",\"site_keyword\":\"ad\",\"site_qr_code\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"0OAa5nSWbaRBgbxh2X9z9aj351YG2WlQtVFrRd5s\"}', '2020-01-02 10:08:41', '2020-01-02 10:08:41');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-02 10:08:41', '2020-01-02 10:08:41');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-02 10:12:14', '2020-01-02 10:12:14');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-02 10:13:43', '2020-01-02 10:13:43');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-02 10:13:48', '2020-01-02 10:13:48');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-01-03 01:30:45', '2020-01-03 01:30:45');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 01:30:52', '2020-01-03 01:30:52');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u8bbe\\u7f6e\",\"icon\":\"fa-adjust\",\"uri\":\"configs\",\"roles\":[null],\"permission\":null,\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\"}', '2020-01-03 01:31:16', '2020-01-03 01:31:16');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 01:31:16', '2020-01-03 01:31:16');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8}]\"}', '2020-01-03 01:31:23', '2020-01-03 01:31:23');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 01:31:23', '2020-01-03 01:31:23');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 01:31:25', '2020-01-03 01:31:25');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 01:31:27', '2020-01-03 01:31:27');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"email\"}', '2020-01-03 01:31:29', '2020-01-03 01:31:29');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"site\"}', '2020-01-03 01:31:30', '2020-01-03 01:31:30');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site_name\":null,\"site_keyword\":\"ad\",\"site_tel\":\"ttt\",\"site_address\":\"dad\",\"site_email\":\"asd\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\"}', '2020-01-03 01:31:36', '2020-01-03 01:31:36');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 01:31:36', '2020-01-03 01:31:36');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 01:31:48', '2020-01-03 01:31:48');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 01:31:49', '2020-01-03 01:31:49');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 01:31:50', '2020-01-03 01:31:50');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 01:31:51', '2020-01-03 01:31:51');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 01:33:07', '2020-01-03 01:33:07');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 01:33:22', '2020-01-03 01:33:22');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 01:33:23', '2020-01-03 01:33:23');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 01:36:40', '2020-01-03 01:36:40');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"name\":\"dd\",\"keyword\":\"dd\",\"tel\":\"dd\",\"address\":\"\\u9ec4\\u6cb3\\u8def\\u4e0e\\u59da\\u5be8\\u8def\\u4ea4\\u53c9\\u53e3\\u91d1\\u6210\\u65f6\\u4ee3\\u5e7f\\u573a6\\u53f7\\u697c5\\u5c42502\",\"email\":\"540124900@qq.com\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\"}', '2020-01-03 01:37:03', '2020-01-03 01:37:03');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 01:37:04', '2020-01-03 01:37:04');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"name\":\"dd\",\"keyword\":\"dd\",\"tel\":\"dd\",\"address\":\"\\u9ec4\\u6cb3\\u8def\\u4e0e\\u59da\\u5be8\\u8def\\u4ea4\\u53c9\\u53e3\\u91d1\\u6210\\u65f6\\u4ee3\\u5e7f\\u573a6\\u53f7\\u697c5\\u5c42502\",\"email\":\"540124900@qq.com\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\"}', '2020-01-03 01:37:12', '2020-01-03 01:37:12');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 01:37:13', '2020-01-03 01:37:13');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 01:37:15', '2020-01-03 01:37:15');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"name\":\"dd\",\"keyword\":\"dd\",\"tel\":\"dd\",\"address\":\"\\u9ec4\\u6cb3\\u8def\\u4e0e\\u59da\\u5be8\\u8def\\u4ea4\\u53c9\\u53e3\\u91d1\\u6210\\u65f6\\u4ee3\\u5e7f\\u573a6\\u53f7\\u697c5\\u5c42502\",\"email\":\"540124900@qq.com\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\"}', '2020-01-03 01:37:48', '2020-01-03 01:37:48');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 01:37:48', '2020-01-03 01:37:48');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 01:37:51', '2020-01-03 01:37:51');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"name\":\"dd\",\"keyword\":\"dd\",\"tel\":\"dd\",\"address\":\"\\u9ec4\\u6cb3\\u8def\\u4e0e\\u59da\\u5be8\\u8def\\u4ea4\\u53c9\\u53e3\\u91d1\\u6210\\u65f6\\u4ee3\\u5e7f\\u573a6\\u53f7\\u697c5\\u5c42502\",\"email\":\"540124900@qq.com\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\"}', '2020-01-03 01:38:41', '2020-01-03 01:38:41');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 01:38:41', '2020-01-03 01:38:41');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 01:58:58', '2020-01-03 01:58:58');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 01:59:19', '2020-01-03 01:59:19');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 02:06:53', '2020-01-03 02:06:53');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:06:55', '2020-01-03 02:06:55');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:06:55', '2020-01-03 02:06:55');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:07:02', '2020-01-03 02:07:02');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:07:03', '2020-01-03 02:07:03');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 02:07:23', '2020-01-03 02:07:23');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 02:07:33', '2020-01-03 02:07:33');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 02:09:18', '2020-01-03 02:09:18');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 02:09:20', '2020-01-03 02:09:20');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\"}', '2020-01-03 02:09:23', '2020-01-03 02:09:23');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\"}', '2020-01-03 02:09:29', '2020-01-03 02:09:29');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:09:31', '2020-01-03 02:09:31');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 02:09:50', '2020-01-03 02:09:50');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 02:10:16', '2020-01-03 02:10:16');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 02:10:36', '2020-01-03 02:10:36');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:10:39', '2020-01-03 02:10:39');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:10:40', '2020-01-03 02:10:40');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:10:41', '2020-01-03 02:10:41');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\"}', '2020-01-03 02:11:23', '2020-01-03 02:11:23');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:11:24', '2020-01-03 02:11:24');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:11:26', '2020-01-03 02:11:26');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:11:26', '2020-01-03 02:11:26');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:11:28', '2020-01-03 02:11:28');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:11:28', '2020-01-03 02:11:28');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:11:29', '2020-01-03 02:11:29');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:11:30', '2020-01-03 02:11:30');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:11:31', '2020-01-03 02:11:31');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:11:32', '2020-01-03 02:11:32');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:11:32', '2020-01-03 02:11:32');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:11:35', '2020-01-03 02:11:35');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-03 02:11:42', '2020-01-03 02:11:42');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-03 02:11:42', '2020-01-03 02:11:42');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-03 02:11:48', '2020-01-03 02:11:48');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-03 02:12:17', '2020-01-03 02:12:17');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:12:25', '2020-01-03 02:12:25');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:12:26', '2020-01-03 02:12:26');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:12:27', '2020-01-03 02:12:27');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:12:28', '2020-01-03 02:12:28');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:12:28', '2020-01-03 02:12:28');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:12:29', '2020-01-03 02:12:29');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:12:29', '2020-01-03 02:12:29');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:12:30', '2020-01-03 02:12:30');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:12:31', '2020-01-03 02:12:31');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:12:32', '2020-01-03 02:12:32');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:12:33', '2020-01-03 02:12:33');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:12:34', '2020-01-03 02:12:34');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-03 02:31:38', '2020-01-03 02:31:38');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:31:40', '2020-01-03 02:31:40');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site-title\":\"111\",\"site-keywords\":\"11\",\"site-description\":\"11\",\"site-copyright\":null,\"site-icp\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\"}', '2020-01-03 02:31:50', '2020-01-03 02:31:50');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 02:38:52', '2020-01-03 02:38:52');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:38:53', '2020-01-03 02:38:53');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:38:54', '2020-01-03 02:38:54');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site-title\":\"5454\",\"site-keywords\":\"45\",\"site-description\":\"545\",\"site-copyright\":null,\"site-icp\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\"}', '2020-01-03 02:39:05', '2020-01-03 02:39:05');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:39:08', '2020-01-03 02:39:08');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site-title\":\"45\",\"site-keywords\":\"5\",\"site-description\":\"5\",\"site-copyright\":null,\"site-icp\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\"}', '2020-01-03 02:41:18', '2020-01-03 02:41:18');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 02:41:18', '2020-01-03 02:41:18');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 02:41:38', '2020-01-03 02:41:38');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site-title\":\"22\",\"site-keywords\":\"22\",\"site-description\":\"22\",\"site-copyright\":null,\"site-icp\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\"}', '2020-01-03 02:41:44', '2020-01-03 02:41:44');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:42:03', '2020-01-03 02:42:03');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site-title\":\"3\",\"site-keywords\":\"3\",\"site-description\":\"3\",\"site-copyright\":null,\"site-icp\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\"}', '2020-01-03 02:42:09', '2020-01-03 02:42:09');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:42:49', '2020-01-03 02:42:49');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site-title\":\"5\",\"site-keywords\":\"6\",\"site-description\":\"5\",\"site-copyright\":null,\"site-icp\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\"}', '2020-01-03 02:42:56', '2020-01-03 02:42:56');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:43:49', '2020-01-03 02:43:49');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site-title\":\"22\",\"site-keywords\":\"3\",\"site-description\":\"3\",\"site-copyright\":null,\"site-icp\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\"}', '2020-01-03 02:44:31', '2020-01-03 02:44:31');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 02:44:35', '2020-01-03 02:44:35');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 02:51:01', '2020-01-03 02:51:01');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 02:55:00', '2020-01-03 02:55:00');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 03:07:57', '2020-01-03 03:07:57');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 03:08:15', '2020-01-03 03:08:15');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 03:08:30', '2020-01-03 03:08:30');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 03:09:18', '2020-01-03 03:09:18');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 03:09:23', '2020-01-03 03:09:23');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 03:15:03', '2020-01-03 03:15:03');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site-title\":\"111\",\"site-keywords\":\"11\",\"site-description\":\"22\",\"site-copyright\":null,\"site-icp\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\"}', '2020-01-03 03:15:10', '2020-01-03 03:15:10');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 03:15:10', '2020-01-03 03:15:10');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 03:15:11', '2020-01-03 03:15:11');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 03:15:20', '2020-01-03 03:15:20');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 03:15:21', '2020-01-03 03:15:21');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 03:15:29', '2020-01-03 03:15:29');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:28:38', '2020-01-03 03:28:38');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:28:40', '2020-01-03 03:28:40');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:28:41', '2020-01-03 03:28:41');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:28:42', '2020-01-03 03:28:42');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:28:43', '2020-01-03 03:28:43');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:28:44', '2020-01-03 03:28:44');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:28:45', '2020-01-03 03:28:45');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:28:46', '2020-01-03 03:28:46');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:28:55', '2020-01-03 03:28:55');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:28:55', '2020-01-03 03:28:55');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:33:13', '2020-01-03 03:33:13');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:33:16', '2020-01-03 03:33:16');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-03 03:33:24', '2020-01-03 03:33:24');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 03:33:24', '2020-01-03 03:33:24');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 03:33:27', '2020-01-03 03:33:27');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:33:30', '2020-01-03 03:33:30');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:33:34', '2020-01-03 03:33:34');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:33:35', '2020-01-03 03:33:35');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:33:39', '2020-01-03 03:33:39');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:36:09', '2020-01-03 03:36:09');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u8bbe\\u7f6e\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-03 03:36:15', '2020-01-03 03:36:15');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 03:36:16', '2020-01-03 03:36:16');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:36:20', '2020-01-03 03:36:20');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-03 03:36:31', '2020-01-03 03:36:31');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 03:36:31', '2020-01-03 03:36:31');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:36:34', '2020-01-03 03:36:34');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-03 03:36:43', '2020-01-03 03:36:43');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 03:36:43', '2020-01-03 03:36:43');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:36:50', '2020-01-03 03:36:50');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-03 03:36:55', '2020-01-03 03:36:55');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 03:36:55', '2020-01-03 03:36:55');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:36:57', '2020-01-03 03:36:57');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u76ee\\u5f55\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-03 03:37:04', '2020-01-03 03:37:04');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 03:37:04', '2020-01-03 03:37:04');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:37:10', '2020-01-03 03:37:10');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u65e5\\u5fd7\\u7ba1\\u7406\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-03 03:37:15', '2020-01-03 03:37:15');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 03:37:15', '2020-01-03 03:37:15');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 03:37:17', '2020-01-03 03:37:17');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:37:20', '2020-01-03 03:37:20');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:37:21', '2020-01-03 03:37:21');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:37:23', '2020-01-03 03:37:23');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:37:24', '2020-01-03 03:37:24');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:37:29', '2020-01-03 03:37:29');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:37:31', '2020-01-03 03:37:31');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:37:35', '2020-01-03 03:37:35');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-03 03:37:40', '2020-01-03 03:37:40');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 03:37:40', '2020-01-03 03:37:40');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:37:42', '2020-01-03 03:37:42');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 03:37:43', '2020-01-03 03:37:43');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:37:46', '2020-01-03 03:37:46');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:37:48', '2020-01-03 03:37:48');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:37:49', '2020-01-03 03:37:49');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:37:50', '2020-01-03 03:37:50');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:37:52', '2020-01-03 03:37:52');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:37:53', '2020-01-03 03:37:53');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:37:56', '2020-01-03 03:37:56');
INSERT INTO `admin_operation_log` VALUES ('268', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:37:59', '2020-01-03 03:37:59');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:38:00', '2020-01-03 03:38:00');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:38:00', '2020-01-03 03:38:00');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:38:01', '2020-01-03 03:38:01');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:38:02', '2020-01-03 03:38:02');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:38:03', '2020-01-03 03:38:03');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:38:04', '2020-01-03 03:38:04');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:38:09', '2020-01-03 03:38:09');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:38:11', '2020-01-03 03:38:11');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:38:13', '2020-01-03 03:38:13');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:38:20', '2020-01-03 03:38:20');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:38:24', '2020-01-03 03:38:24');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:38:28', '2020-01-03 03:38:28');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:38:32', '2020-01-03 03:38:32');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:38:34', '2020-01-03 03:38:34');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-01-03 03:38:47', '2020-01-03 03:38:47');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-01-03 03:38:52', '2020-01-03 03:38:52');
INSERT INTO `admin_operation_log` VALUES ('285', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:39:02', '2020-01-03 03:39:02');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:39:03', '2020-01-03 03:39:03');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:39:03', '2020-01-03 03:39:03');
INSERT INTO `admin_operation_log` VALUES ('288', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:39:05', '2020-01-03 03:39:05');
INSERT INTO `admin_operation_log` VALUES ('289', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:39:06', '2020-01-03 03:39:06');
INSERT INTO `admin_operation_log` VALUES ('290', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-03 03:39:10', '2020-01-03 03:39:10');
INSERT INTO `admin_operation_log` VALUES ('291', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"site\"}', '2020-01-03 03:39:10', '2020-01-03 03:39:10');
INSERT INTO `admin_operation_log` VALUES ('292', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"email\"}', '2020-01-03 03:39:12', '2020-01-03 03:39:12');
INSERT INTO `admin_operation_log` VALUES ('293', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-03 03:39:13', '2020-01-03 03:39:13');
INSERT INTO `admin_operation_log` VALUES ('294', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"site\"}', '2020-01-03 03:39:14', '2020-01-03 03:39:14');
INSERT INTO `admin_operation_log` VALUES ('295', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-03 03:39:15', '2020-01-03 03:39:15');
INSERT INTO `admin_operation_log` VALUES ('296', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"company_tel\":null,\"company_email\":null,\"company_address\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Address\",\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\"}', '2020-01-03 03:39:19', '2020-01-03 03:39:19');
INSERT INTO `admin_operation_log` VALUES ('297', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-03 03:39:19', '2020-01-03 03:39:19');
INSERT INTO `admin_operation_log` VALUES ('298', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-03 03:39:22', '2020-01-03 03:39:22');
INSERT INTO `admin_operation_log` VALUES ('299', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:39:23', '2020-01-03 03:39:23');
INSERT INTO `admin_operation_log` VALUES ('300', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:39:25', '2020-01-03 03:39:25');
INSERT INTO `admin_operation_log` VALUES ('301', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:39:26', '2020-01-03 03:39:26');
INSERT INTO `admin_operation_log` VALUES ('302', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 03:39:28', '2020-01-03 03:39:28');
INSERT INTO `admin_operation_log` VALUES ('303', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:36:30', '2020-01-03 05:36:30');
INSERT INTO `admin_operation_log` VALUES ('304', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:36:33', '2020-01-03 05:36:33');
INSERT INTO `admin_operation_log` VALUES ('305', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:36:34', '2020-01-03 05:36:34');
INSERT INTO `admin_operation_log` VALUES ('306', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:36:38', '2020-01-03 05:36:38');
INSERT INTO `admin_operation_log` VALUES ('307', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:36:41', '2020-01-03 05:36:41');
INSERT INTO `admin_operation_log` VALUES ('308', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:36:42', '2020-01-03 05:36:42');
INSERT INTO `admin_operation_log` VALUES ('309', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:36:43', '2020-01-03 05:36:43');
INSERT INTO `admin_operation_log` VALUES ('310', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:36:44', '2020-01-03 05:36:44');
INSERT INTO `admin_operation_log` VALUES ('311', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:36:45', '2020-01-03 05:36:45');
INSERT INTO `admin_operation_log` VALUES ('312', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:36:47', '2020-01-03 05:36:47');
INSERT INTO `admin_operation_log` VALUES ('313', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7f51\\u7ad9\\u8bbe\\u7f6e\",\"icon\":\"fa-adjust\",\"uri\":\"configs\",\"roles\":[null],\"permission\":null,\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-03 05:36:55', '2020-01-03 05:36:55');
INSERT INTO `admin_operation_log` VALUES ('314', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 05:36:55', '2020-01-03 05:36:55');
INSERT INTO `admin_operation_log` VALUES ('315', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 05:36:57', '2020-01-03 05:36:57');
INSERT INTO `admin_operation_log` VALUES ('316', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:36:59', '2020-01-03 05:36:59');
INSERT INTO `admin_operation_log` VALUES ('317', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:37:02', '2020-01-03 05:37:02');
INSERT INTO `admin_operation_log` VALUES ('318', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:37:03', '2020-01-03 05:37:03');
INSERT INTO `admin_operation_log` VALUES ('319', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:37:05', '2020-01-03 05:37:05');
INSERT INTO `admin_operation_log` VALUES ('320', '1', 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"\\u7126\\u6587\\u658c\",\"name\":\"\\u7126\\u6587\\u658c\",\"password\":\"jwb123\",\"password_confirmation\":\"jwb123\",\"roles\":[null],\"permissions\":[null],\"_token\":\"LEFmWXaUbk8DCxs76TLQ7Gq2SvQ0vlw7x7uuIxfn\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/users\"}', '2020-01-03 05:37:26', '2020-01-03 05:37:26');
INSERT INTO `admin_operation_log` VALUES ('321', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-01-03 05:37:26', '2020-01-03 05:37:26');
INSERT INTO `admin_operation_log` VALUES ('322', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-01-03 05:37:29', '2020-01-03 05:37:29');
INSERT INTO `admin_operation_log` VALUES ('323', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:37:32', '2020-01-03 05:37:32');
INSERT INTO `admin_operation_log` VALUES ('324', '2', 'admin', 'GET', '127.0.0.1', '[]', '2020-01-03 05:37:40', '2020-01-03 05:37:40');
INSERT INTO `admin_operation_log` VALUES ('325', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:37:42', '2020-01-03 05:37:42');
INSERT INTO `admin_operation_log` VALUES ('326', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:37:44', '2020-01-03 05:37:44');
INSERT INTO `admin_operation_log` VALUES ('327', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:37:45', '2020-01-03 05:37:45');
INSERT INTO `admin_operation_log` VALUES ('328', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:37:49', '2020-01-03 05:37:49');
INSERT INTO `admin_operation_log` VALUES ('329', '2', 'admin', 'GET', '127.0.0.1', '[]', '2020-01-03 05:37:53', '2020-01-03 05:37:53');
INSERT INTO `admin_operation_log` VALUES ('330', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:37:56', '2020-01-03 05:37:56');
INSERT INTO `admin_operation_log` VALUES ('331', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:38:01', '2020-01-03 05:38:01');
INSERT INTO `admin_operation_log` VALUES ('332', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-01-03 05:38:06', '2020-01-03 05:38:06');
INSERT INTO `admin_operation_log` VALUES ('333', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:38:09', '2020-01-03 05:38:09');
INSERT INTO `admin_operation_log` VALUES ('334', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:38:10', '2020-01-03 05:38:10');
INSERT INTO `admin_operation_log` VALUES ('335', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:38:13', '2020-01-03 05:38:13');
INSERT INTO `admin_operation_log` VALUES ('336', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:38:14', '2020-01-03 05:38:14');
INSERT INTO `admin_operation_log` VALUES ('337', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:38:20', '2020-01-03 05:38:20');
INSERT INTO `admin_operation_log` VALUES ('338', '1', 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"wH41uFIRo9GB3fnxU0PYgC1P5xgyks2ECO2ujfWJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-03 05:38:37', '2020-01-03 05:38:37');
INSERT INTO `admin_operation_log` VALUES ('339', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 05:38:37', '2020-01-03 05:38:37');
INSERT INTO `admin_operation_log` VALUES ('340', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 05:38:39', '2020-01-03 05:38:39');
INSERT INTO `admin_operation_log` VALUES ('341', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:38:42', '2020-01-03 05:38:42');
INSERT INTO `admin_operation_log` VALUES ('342', '2', 'admin', 'GET', '127.0.0.1', '[]', '2020-01-03 05:38:52', '2020-01-03 05:38:52');
INSERT INTO `admin_operation_log` VALUES ('343', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:38:56', '2020-01-03 05:38:56');
INSERT INTO `admin_operation_log` VALUES ('344', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:38:59', '2020-01-03 05:38:59');
INSERT INTO `admin_operation_log` VALUES ('345', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:39:02', '2020-01-03 05:39:02');
INSERT INTO `admin_operation_log` VALUES ('346', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-01-03 05:39:07', '2020-01-03 05:39:07');
INSERT INTO `admin_operation_log` VALUES ('347', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:39:10', '2020-01-03 05:39:10');
INSERT INTO `admin_operation_log` VALUES ('348', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:39:12', '2020-01-03 05:39:12');
INSERT INTO `admin_operation_log` VALUES ('349', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:39:14', '2020-01-03 05:39:14');
INSERT INTO `admin_operation_log` VALUES ('350', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:39:17', '2020-01-03 05:39:17');
INSERT INTO `admin_operation_log` VALUES ('351', '1', 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":\"dashboard\",\"_token\":\"h4wMaX61q3gy8VOXzUwmqS41L900lL2peA90qmgw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-03 05:39:30', '2020-01-03 05:39:30');
INSERT INTO `admin_operation_log` VALUES ('352', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 05:39:30', '2020-01-03 05:39:30');
INSERT INTO `admin_operation_log` VALUES ('353', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:39:33', '2020-01-03 05:39:33');
INSERT INTO `admin_operation_log` VALUES ('354', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:39:47', '2020-01-03 05:39:47');
INSERT INTO `admin_operation_log` VALUES ('355', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:39:49', '2020-01-03 05:39:49');
INSERT INTO `admin_operation_log` VALUES ('356', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:39:50', '2020-01-03 05:39:50');
INSERT INTO `admin_operation_log` VALUES ('357', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:39:51', '2020-01-03 05:39:51');
INSERT INTO `admin_operation_log` VALUES ('358', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:39:58', '2020-01-03 05:39:58');
INSERT INTO `admin_operation_log` VALUES ('359', '1', 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"\\u7126\\u6587\\u658c\",\"name\":\"\\u7126\\u6587\\u658c\",\"password\":\"$2y$10$wwcE18j9HSaEbDTCUPj7BOGWqk4bNmoBDcbDZsqn5WHQ0porzNmTm\",\"password_confirmation\":\"$2y$10$wwcE18j9HSaEbDTCUPj7BOGWqk4bNmoBDcbDZsqn5WHQ0porzNmTm\",\"roles\":[\"1\",null],\"permissions\":[\"1\",null],\"_token\":\"h4wMaX61q3gy8VOXzUwmqS41L900lL2peA90qmgw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/users\"}', '2020-01-03 05:40:08', '2020-01-03 05:40:08');
INSERT INTO `admin_operation_log` VALUES ('360', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-01-03 05:40:09', '2020-01-03 05:40:09');
INSERT INTO `admin_operation_log` VALUES ('361', '2', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-01-03 05:40:21', '2020-01-03 05:40:21');
INSERT INTO `admin_operation_log` VALUES ('362', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:40:28', '2020-01-03 05:40:28');
INSERT INTO `admin_operation_log` VALUES ('363', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:40:29', '2020-01-03 05:40:29');
INSERT INTO `admin_operation_log` VALUES ('364', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:40:36', '2020-01-03 05:40:36');
INSERT INTO `admin_operation_log` VALUES ('365', '1', 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"\\u7126\\u6587\\u658c\",\"name\":\"\\u7126\\u6587\\u658c\",\"password\":\"$2y$10$wwcE18j9HSaEbDTCUPj7BOGWqk4bNmoBDcbDZsqn5WHQ0porzNmTm\",\"password_confirmation\":\"$2y$10$wwcE18j9HSaEbDTCUPj7BOGWqk4bNmoBDcbDZsqn5WHQ0porzNmTm\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"h4wMaX61q3gy8VOXzUwmqS41L900lL2peA90qmgw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/users\"}', '2020-01-03 05:40:40', '2020-01-03 05:40:40');
INSERT INTO `admin_operation_log` VALUES ('366', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-01-03 05:40:40', '2020-01-03 05:40:40');
INSERT INTO `admin_operation_log` VALUES ('367', '2', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-01-03 05:40:47', '2020-01-03 05:40:47');
INSERT INTO `admin_operation_log` VALUES ('368', '2', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-01-03 05:40:52', '2020-01-03 05:40:52');
INSERT INTO `admin_operation_log` VALUES ('369', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:40:58', '2020-01-03 05:40:58');
INSERT INTO `admin_operation_log` VALUES ('370', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:41:00', '2020-01-03 05:41:00');
INSERT INTO `admin_operation_log` VALUES ('371', '1', 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u8bbe\\u7f6e\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"h4wMaX61q3gy8VOXzUwmqS41L900lL2peA90qmgw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-03 05:41:09', '2020-01-03 05:41:09');
INSERT INTO `admin_operation_log` VALUES ('372', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 05:41:09', '2020-01-03 05:41:09');
INSERT INTO `admin_operation_log` VALUES ('373', '2', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-01-03 05:41:13', '2020-01-03 05:41:13');
INSERT INTO `admin_operation_log` VALUES ('374', '2', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:41:18', '2020-01-03 05:41:18');
INSERT INTO `admin_operation_log` VALUES ('375', '2', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:41:20', '2020-01-03 05:41:20');
INSERT INTO `admin_operation_log` VALUES ('376', '2', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:41:21', '2020-01-03 05:41:21');
INSERT INTO `admin_operation_log` VALUES ('377', '2', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:41:24', '2020-01-03 05:41:24');
INSERT INTO `admin_operation_log` VALUES ('378', '2', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:41:51', '2020-01-03 05:41:51');
INSERT INTO `admin_operation_log` VALUES ('379', '2', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:41:55', '2020-01-03 05:41:55');
INSERT INTO `admin_operation_log` VALUES ('380', '2', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"admin\",\"name\":\"\\u7ba1\\u7406\\u5458\",\"permissions\":[\"2\",\"3\",\"4\",\"5\",null],\"_token\":\"O6hqN5NWYoaNnLoKTPvXYmTtwWVcOWMzt4cEPdzd\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/roles\"}', '2020-01-03 05:42:12', '2020-01-03 05:42:12');
INSERT INTO `admin_operation_log` VALUES ('381', '2', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-01-03 05:42:12', '2020-01-03 05:42:12');
INSERT INTO `admin_operation_log` VALUES ('382', '2', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-01-03 05:42:15', '2020-01-03 05:42:15');
INSERT INTO `admin_operation_log` VALUES ('383', '2', 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:42:19', '2020-01-03 05:42:19');
INSERT INTO `admin_operation_log` VALUES ('384', '2', 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"admin\",\"name\":\"\\u7ba1\\u7406\\u5458\",\"permissions\":[\"1\",\"2\",\"3\",\"4\",\"5\",null],\"_token\":\"O6hqN5NWYoaNnLoKTPvXYmTtwWVcOWMzt4cEPdzd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/roles\"}', '2020-01-03 05:42:22', '2020-01-03 05:42:22');
INSERT INTO `admin_operation_log` VALUES ('385', '2', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-01-03 05:42:22', '2020-01-03 05:42:22');
INSERT INTO `admin_operation_log` VALUES ('386', '2', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:42:25', '2020-01-03 05:42:25');
INSERT INTO `admin_operation_log` VALUES ('387', '2', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:42:26', '2020-01-03 05:42:26');
INSERT INTO `admin_operation_log` VALUES ('388', '2', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:42:27', '2020-01-03 05:42:27');
INSERT INTO `admin_operation_log` VALUES ('389', '2', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:42:30', '2020-01-03 05:42:30');
INSERT INTO `admin_operation_log` VALUES ('390', '2', 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"\\u7126\\u6587\\u658c\",\"name\":\"\\u7126\\u6587\\u658c\",\"password\":\"$2y$10$wwcE18j9HSaEbDTCUPj7BOGWqk4bNmoBDcbDZsqn5WHQ0porzNmTm\",\"password_confirmation\":\"$2y$10$wwcE18j9HSaEbDTCUPj7BOGWqk4bNmoBDcbDZsqn5WHQ0porzNmTm\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"O6hqN5NWYoaNnLoKTPvXYmTtwWVcOWMzt4cEPdzd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/users\"}', '2020-01-03 05:42:36', '2020-01-03 05:42:36');
INSERT INTO `admin_operation_log` VALUES ('391', '2', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-01-03 05:42:36', '2020-01-03 05:42:36');
INSERT INTO `admin_operation_log` VALUES ('392', '2', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-01-03 05:42:38', '2020-01-03 05:42:38');
INSERT INTO `admin_operation_log` VALUES ('393', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:42:40', '2020-01-03 05:42:40');
INSERT INTO `admin_operation_log` VALUES ('394', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-03 05:42:43', '2020-01-03 05:42:43');
INSERT INTO `admin_operation_log` VALUES ('395', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"email\"}', '2020-01-03 05:42:44', '2020-01-03 05:42:44');
INSERT INTO `admin_operation_log` VALUES ('396', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-03 05:42:45', '2020-01-03 05:42:45');
INSERT INTO `admin_operation_log` VALUES ('397', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"site\"}', '2020-01-03 05:42:46', '2020-01-03 05:42:46');
INSERT INTO `admin_operation_log` VALUES ('398', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-03 05:42:47', '2020-01-03 05:42:47');
INSERT INTO `admin_operation_log` VALUES ('399', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"email\"}', '2020-01-03 05:42:47', '2020-01-03 05:42:47');
INSERT INTO `admin_operation_log` VALUES ('400', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-03 05:42:48', '2020-01-03 05:42:48');
INSERT INTO `admin_operation_log` VALUES ('401', '2', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"company_tel\":null,\"company_email\":null,\"company_address\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Address\",\"_token\":\"O6hqN5NWYoaNnLoKTPvXYmTtwWVcOWMzt4cEPdzd\"}', '2020-01-03 05:43:14', '2020-01-03 05:43:14');
INSERT INTO `admin_operation_log` VALUES ('402', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-03 05:43:14', '2020-01-03 05:43:14');
INSERT INTO `admin_operation_log` VALUES ('403', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-03 05:43:16', '2020-01-03 05:43:16');
INSERT INTO `admin_operation_log` VALUES ('404', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-03 05:43:24', '2020-01-03 05:43:24');
INSERT INTO `admin_operation_log` VALUES ('405', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:44:05', '2020-01-03 05:44:05');
INSERT INTO `admin_operation_log` VALUES ('406', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:44:07', '2020-01-03 05:44:07');
INSERT INTO `admin_operation_log` VALUES ('407', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:44:08', '2020-01-03 05:44:08');
INSERT INTO `admin_operation_log` VALUES ('408', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:44:09', '2020-01-03 05:44:09');
INSERT INTO `admin_operation_log` VALUES ('409', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:44:10', '2020-01-03 05:44:10');
INSERT INTO `admin_operation_log` VALUES ('410', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:44:12', '2020-01-03 05:44:12');
INSERT INTO `admin_operation_log` VALUES ('411', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:44:13', '2020-01-03 05:44:13');
INSERT INTO `admin_operation_log` VALUES ('412', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:44:14', '2020-01-03 05:44:14');
INSERT INTO `admin_operation_log` VALUES ('413', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:44:15', '2020-01-03 05:44:15');
INSERT INTO `admin_operation_log` VALUES ('414', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:44:17', '2020-01-03 05:44:17');
INSERT INTO `admin_operation_log` VALUES ('415', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:44:21', '2020-01-03 05:44:21');
INSERT INTO `admin_operation_log` VALUES ('416', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:44:24', '2020-01-03 05:44:24');
INSERT INTO `admin_operation_log` VALUES ('417', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:44:35', '2020-01-03 05:44:35');
INSERT INTO `admin_operation_log` VALUES ('418', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:44:38', '2020-01-03 05:44:38');
INSERT INTO `admin_operation_log` VALUES ('419', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:44:41', '2020-01-03 05:44:41');
INSERT INTO `admin_operation_log` VALUES ('420', '1', 'admin/auth/roles/1', 'PUT', '127.0.0.1', '{\"slug\":\"administrator\",\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\",\"permissions\":[\"1\",null],\"_token\":\"h4wMaX61q3gy8VOXzUwmqS41L900lL2peA90qmgw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/roles\"}', '2020-01-03 05:44:47', '2020-01-03 05:44:47');
INSERT INTO `admin_operation_log` VALUES ('421', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-01-03 05:44:47', '2020-01-03 05:44:47');
INSERT INTO `admin_operation_log` VALUES ('422', '1', 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:44:50', '2020-01-03 05:44:50');
INSERT INTO `admin_operation_log` VALUES ('423', '1', 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"admin\",\"name\":\"\\u7ba1\\u7406\\u5458\",\"permissions\":[\"1\",null],\"_token\":\"h4wMaX61q3gy8VOXzUwmqS41L900lL2peA90qmgw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/roles\"}', '2020-01-03 05:44:54', '2020-01-03 05:44:54');
INSERT INTO `admin_operation_log` VALUES ('424', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-01-03 05:44:54', '2020-01-03 05:44:54');
INSERT INTO `admin_operation_log` VALUES ('425', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:44:56', '2020-01-03 05:44:56');
INSERT INTO `admin_operation_log` VALUES ('426', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-01-03 05:44:58', '2020-01-03 05:44:58');
INSERT INTO `admin_operation_log` VALUES ('427', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-01-03 05:45:01', '2020-01-03 05:45:01');
INSERT INTO `admin_operation_log` VALUES ('428', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:45:05', '2020-01-03 05:45:05');
INSERT INTO `admin_operation_log` VALUES ('429', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:45:14', '2020-01-03 05:45:14');
INSERT INTO `admin_operation_log` VALUES ('430', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:45:16', '2020-01-03 05:45:16');
INSERT INTO `admin_operation_log` VALUES ('431', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:45:17', '2020-01-03 05:45:17');
INSERT INTO `admin_operation_log` VALUES ('432', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:45:18', '2020-01-03 05:45:18');
INSERT INTO `admin_operation_log` VALUES ('433', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:45:19', '2020-01-03 05:45:19');
INSERT INTO `admin_operation_log` VALUES ('434', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:45:20', '2020-01-03 05:45:20');
INSERT INTO `admin_operation_log` VALUES ('435', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:45:20', '2020-01-03 05:45:20');
INSERT INTO `admin_operation_log` VALUES ('436', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:45:23', '2020-01-03 05:45:23');
INSERT INTO `admin_operation_log` VALUES ('437', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:45:25', '2020-01-03 05:45:25');
INSERT INTO `admin_operation_log` VALUES ('438', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:45:33', '2020-01-03 05:45:33');
INSERT INTO `admin_operation_log` VALUES ('439', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:45:36', '2020-01-03 05:45:36');
INSERT INTO `admin_operation_log` VALUES ('440', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:45:45', '2020-01-03 05:45:45');
INSERT INTO `admin_operation_log` VALUES ('441', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:45:47', '2020-01-03 05:45:47');
INSERT INTO `admin_operation_log` VALUES ('442', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:45:48', '2020-01-03 05:45:48');
INSERT INTO `admin_operation_log` VALUES ('443', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:45:49', '2020-01-03 05:45:49');
INSERT INTO `admin_operation_log` VALUES ('444', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-03 05:45:51', '2020-01-03 05:45:51');
INSERT INTO `admin_operation_log` VALUES ('445', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"email\"}', '2020-01-03 05:45:52', '2020-01-03 05:45:52');
INSERT INTO `admin_operation_log` VALUES ('446', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-03 05:45:53', '2020-01-03 05:45:53');
INSERT INTO `admin_operation_log` VALUES ('447', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"site\"}', '2020-01-03 05:45:53', '2020-01-03 05:45:53');
INSERT INTO `admin_operation_log` VALUES ('448', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-03 05:45:54', '2020-01-03 05:45:54');
INSERT INTO `admin_operation_log` VALUES ('449', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"email\"}', '2020-01-03 05:45:55', '2020-01-03 05:45:55');
INSERT INTO `admin_operation_log` VALUES ('450', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-03 05:45:56', '2020-01-03 05:45:56');
INSERT INTO `admin_operation_log` VALUES ('451', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"site\"}', '2020-01-03 05:45:57', '2020-01-03 05:45:57');
INSERT INTO `admin_operation_log` VALUES ('452', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-03 05:45:57', '2020-01-03 05:45:57');
INSERT INTO `admin_operation_log` VALUES ('453', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"email\"}', '2020-01-03 05:45:58', '2020-01-03 05:45:58');
INSERT INTO `admin_operation_log` VALUES ('454', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-03 05:46:00', '2020-01-03 05:46:00');
INSERT INTO `admin_operation_log` VALUES ('455', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"site\"}', '2020-01-03 05:46:00', '2020-01-03 05:46:00');
INSERT INTO `admin_operation_log` VALUES ('456', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:46:05', '2020-01-03 05:46:05');
INSERT INTO `admin_operation_log` VALUES ('457', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:46:06', '2020-01-03 05:46:06');
INSERT INTO `admin_operation_log` VALUES ('458', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:48:40', '2020-01-03 05:48:40');

-- ----------------------------
-- Table structure for `admin_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);

-- ----------------------------
-- Table structure for `admin_roles`
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', '超级管理员', 'administrator', '2019-12-23 07:48:14', '2020-01-03 05:44:47');
INSERT INTO `admin_roles` VALUES ('2', '管理员', 'admin', '2020-01-03 05:42:12', '2020-01-03 05:42:12');

-- ----------------------------
-- Table structure for `admin_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for `admin_role_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '1', null, null);

-- ----------------------------
-- Table structure for `admin_role_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_users` VALUES ('2', '2', null, null);

-- ----------------------------
-- Table structure for `admin_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$vTIa5lcdFWbvxv6cL03/6Ov/M.zE.CQ6iCncGBjBuVX9fnDKmXq9K', 'Administrator', null, '0Cki4hG4Tw6jZ3XtCjfQ0q3EX7BQ1oBtZlW0LJufOgAXVZid19LrDMX8wRYv', '2019-12-23 07:48:14', '2019-12-23 07:48:14');
INSERT INTO `admin_users` VALUES ('2', '焦文斌', '$2y$10$wwcE18j9HSaEbDTCUPj7BOGWqk4bNmoBDcbDZsqn5WHQ0porzNmTm', '焦文斌', null, 'nqk40eCvTpcUP5hdHdOEf1y1wiybw3krznYvTPAnK2myqqGecw7GOLOk3blT', '2020-01-03 05:37:26', '2020-01-03 05:37:26');

-- ----------------------------
-- Table structure for `admin_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `configs`
-- ----------------------------
DROP TABLE IF EXISTS `configs`;
CREATE TABLE `configs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '配置项名称',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '配置项类型',
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '配置项值',
  `remark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of configs
-- ----------------------------
INSERT INTO `configs` VALUES ('7', 'name', 'site', 'dd', null, '2020-01-03 01:37:12', '2020-01-03 01:38:41');
INSERT INTO `configs` VALUES ('8', 'keyword', 'site', 'dd', null, '2020-01-03 01:37:12', '2020-01-03 01:38:41');
INSERT INTO `configs` VALUES ('9', 'tel', 'site', 'dd', null, '2020-01-03 01:37:12', '2020-01-03 01:38:41');
INSERT INTO `configs` VALUES ('10', 'address', 'site', '黄河路与姚寨路交叉口金成时代广场6号楼5层502', null, '2020-01-03 01:37:12', '2020-01-03 01:38:41');
INSERT INTO `configs` VALUES ('11', 'email', 'site', '540124900@qq.com', null, '2020-01-03 01:37:12', '2020-01-03 01:38:41');
INSERT INTO `configs` VALUES ('12', 'logo', 'site', 'images/nXJHjgItHrcsJDMJ131nWEyLdBrRDcWiJRLewYzb.jpeg', null, '2020-01-03 01:37:12', '2020-01-03 01:38:41');
INSERT INTO `configs` VALUES ('13', 'qr_code', 'site', 'images/JJqu8sGJqkmpWoVoQjTxqddlEbR0jKZpfkaYefcr.jpeg', null, '2020-01-03 01:38:41', '2020-01-03 01:38:41');
INSERT INTO `configs` VALUES ('14', 'site-title', 'site', '111', null, '2020-01-03 03:15:10', '2020-01-03 03:15:10');
INSERT INTO `configs` VALUES ('15', 'site-keywords', 'site', '11', null, '2020-01-03 03:15:10', '2020-01-03 03:15:10');
INSERT INTO `configs` VALUES ('16', 'site-description', 'site', '22', null, '2020-01-03 03:15:10', '2020-01-03 03:15:10');
INSERT INTO `configs` VALUES ('17', 'site-copyright', 'site', null, null, '2020-01-03 03:15:10', '2020-01-03 03:15:10');
INSERT INTO `configs` VALUES ('18', 'site-icp', 'site', null, null, '2020-01-03 03:15:10', '2020-01-03 03:15:10');
INSERT INTO `configs` VALUES ('19', 'site-logo', 'site', 'images/rcBa5nvOe3mSYdFop3Htfbbz2GoxELwWa5SzJx7o.jpeg', null, '2020-01-03 03:15:10', '2020-01-03 03:15:10');
INSERT INTO `configs` VALUES ('20', 'company_tel', 'contact', null, null, '2020-01-03 03:39:19', '2020-01-03 03:39:19');
INSERT INTO `configs` VALUES ('21', 'company_email', 'contact', null, null, '2020-01-03 03:39:19', '2020-01-03 03:39:19');
INSERT INTO `configs` VALUES ('22', 'company_address', 'contact', null, null, '2020-01-03 03:39:19', '2020-01-03 03:39:19');
INSERT INTO `configs` VALUES ('23', 'company_qr_code', 'contact', 'images/FUfrcsayF9IDpldH7RB7SgIvEczzmz1ZtPMuv0Ee.jpeg', null, '2020-01-03 03:39:19', '2020-01-03 03:39:19');
INSERT INTO `configs` VALUES ('24', 'company_tel', 'contact', null, null, '2020-01-03 05:43:14', '2020-01-03 05:43:14');
INSERT INTO `configs` VALUES ('25', 'company_email', 'contact', null, null, '2020-01-03 05:43:14', '2020-01-03 05:43:14');
INSERT INTO `configs` VALUES ('26', 'company_address', 'contact', null, null, '2020-01-03 05:43:14', '2020-01-03 05:43:14');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO `migrations` VALUES ('4', '2019_12_23_080133_create_patent_tables', '2');
INSERT INTO `migrations` VALUES ('5', '2020_01_02_085511_create_configs_table', '3');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `patent_menu`
-- ----------------------------
DROP TABLE IF EXISTS `patent_menu`;
CREATE TABLE `patent_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of patent_menu
-- ----------------------------
INSERT INTO `patent_menu` VALUES ('1', '0', '1', '工作台', 'fa-bar-chart', '/', null, null, '2020-01-03 07:13:16');
INSERT INTO `patent_menu` VALUES ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null, null);
INSERT INTO `patent_menu` VALUES ('3', '2', '3', 'Users', 'fa-users', 'auth/users', null, null, null);
INSERT INTO `patent_menu` VALUES ('4', '2', '4', 'Roles', 'fa-user', 'auth/roles', null, null, null);
INSERT INTO `patent_menu` VALUES ('5', '2', '5', 'Permission', 'fa-ban', 'auth/permissions', null, null, null);
INSERT INTO `patent_menu` VALUES ('6', '2', '6', 'Menu', 'fa-bars', 'auth/menu', null, null, null);
INSERT INTO `patent_menu` VALUES ('7', '2', '7', 'Operation log', 'fa-history', 'auth/logs', null, null, null);

-- ----------------------------
-- Table structure for `patent_operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `patent_operation_log`;
CREATE TABLE `patent_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patent_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of patent_operation_log
-- ----------------------------
INSERT INTO `patent_operation_log` VALUES ('1', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-23 08:13:31', '2019-12-23 08:13:31');
INSERT INTO `patent_operation_log` VALUES ('2', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-23 08:18:34', '2019-12-23 08:18:34');
INSERT INTO `patent_operation_log` VALUES ('3', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-23 08:18:36', '2019-12-23 08:18:36');
INSERT INTO `patent_operation_log` VALUES ('4', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-23 08:27:21', '2019-12-23 08:27:21');
INSERT INTO `patent_operation_log` VALUES ('5', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-23 08:35:44', '2019-12-23 08:35:44');
INSERT INTO `patent_operation_log` VALUES ('6', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-23 08:35:48', '2019-12-23 08:35:48');
INSERT INTO `patent_operation_log` VALUES ('7', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-23 08:36:15', '2019-12-23 08:36:15');
INSERT INTO `patent_operation_log` VALUES ('8', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-23 08:36:20', '2019-12-23 08:36:20');
INSERT INTO `patent_operation_log` VALUES ('9', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-23 08:38:11', '2019-12-23 08:38:11');
INSERT INTO `patent_operation_log` VALUES ('10', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-23 08:38:22', '2019-12-23 08:38:22');
INSERT INTO `patent_operation_log` VALUES ('11', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-23 08:38:38', '2019-12-23 08:38:38');
INSERT INTO `patent_operation_log` VALUES ('12', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-23 08:51:15', '2019-12-23 08:51:15');
INSERT INTO `patent_operation_log` VALUES ('13', '1', 'patent/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-23 08:51:30', '2019-12-23 08:51:30');
INSERT INTO `patent_operation_log` VALUES ('14', '1', 'patent/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-23 08:51:31', '2019-12-23 08:51:31');
INSERT INTO `patent_operation_log` VALUES ('15', '1', 'patent/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-23 08:51:33', '2019-12-23 08:51:33');
INSERT INTO `patent_operation_log` VALUES ('16', '1', 'patent/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-23 08:51:34', '2019-12-23 08:51:34');
INSERT INTO `patent_operation_log` VALUES ('17', '1', 'patent/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-23 08:51:36', '2019-12-23 08:51:36');
INSERT INTO `patent_operation_log` VALUES ('18', '1', 'patent/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-23 08:51:37', '2019-12-23 08:51:37');
INSERT INTO `patent_operation_log` VALUES ('19', '1', 'patent/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-23 08:51:39', '2019-12-23 08:51:39');
INSERT INTO `patent_operation_log` VALUES ('20', '1', 'patent/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-23 08:51:39', '2019-12-23 08:51:39');
INSERT INTO `patent_operation_log` VALUES ('21', '1', 'patent/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-23 08:52:09', '2019-12-23 08:52:09');
INSERT INTO `patent_operation_log` VALUES ('22', '1', 'patent/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-23 08:52:36', '2019-12-23 08:52:36');
INSERT INTO `patent_operation_log` VALUES ('23', '1', 'patent/auth/users', 'GET', '127.0.0.1', '[]', '2019-12-23 08:53:07', '2019-12-23 08:53:07');
INSERT INTO `patent_operation_log` VALUES ('24', '1', 'patent', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-23 08:53:15', '2019-12-23 08:53:15');
INSERT INTO `patent_operation_log` VALUES ('25', '1', 'patent/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-23 08:53:17', '2019-12-23 08:53:17');
INSERT INTO `patent_operation_log` VALUES ('26', '1', 'patent/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-23 08:53:19', '2019-12-23 08:53:19');
INSERT INTO `patent_operation_log` VALUES ('27', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-27 02:11:56', '2019-12-27 02:11:56');
INSERT INTO `patent_operation_log` VALUES ('28', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-27 02:11:59', '2019-12-27 02:11:59');
INSERT INTO `patent_operation_log` VALUES ('29', '1', 'patent/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:12:03', '2019-12-27 02:12:03');
INSERT INTO `patent_operation_log` VALUES ('30', '1', 'patent/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:12:04', '2019-12-27 02:12:04');
INSERT INTO `patent_operation_log` VALUES ('31', '1', 'patent/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:12:05', '2019-12-27 02:12:05');
INSERT INTO `patent_operation_log` VALUES ('32', '1', 'patent/auth/roles', 'GET', '127.0.0.1', '[]', '2019-12-27 02:13:55', '2019-12-27 02:13:55');
INSERT INTO `patent_operation_log` VALUES ('33', '1', 'patent/auth/roles', 'GET', '127.0.0.1', '[]', '2019-12-27 02:13:56', '2019-12-27 02:13:56');
INSERT INTO `patent_operation_log` VALUES ('34', '1', 'patent/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-27 02:13:59', '2019-12-27 02:13:59');
INSERT INTO `patent_operation_log` VALUES ('35', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-30 09:37:05', '2019-12-30 09:37:05');
INSERT INTO `patent_operation_log` VALUES ('36', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-30 09:37:11', '2019-12-30 09:37:11');
INSERT INTO `patent_operation_log` VALUES ('37', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-30 09:37:52', '2019-12-30 09:37:52');
INSERT INTO `patent_operation_log` VALUES ('38', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-30 09:38:38', '2019-12-30 09:38:38');
INSERT INTO `patent_operation_log` VALUES ('39', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-30 09:39:19', '2019-12-30 09:39:19');
INSERT INTO `patent_operation_log` VALUES ('40', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-30 09:40:16', '2019-12-30 09:40:16');
INSERT INTO `patent_operation_log` VALUES ('41', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-30 09:42:11', '2019-12-30 09:42:11');
INSERT INTO `patent_operation_log` VALUES ('42', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 08:53:32', '2019-12-31 08:53:32');
INSERT INTO `patent_operation_log` VALUES ('43', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 08:54:44', '2019-12-31 08:54:44');
INSERT INTO `patent_operation_log` VALUES ('44', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:04:05', '2019-12-31 09:04:05');
INSERT INTO `patent_operation_log` VALUES ('45', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:08:24', '2019-12-31 09:08:24');
INSERT INTO `patent_operation_log` VALUES ('46', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:08:38', '2019-12-31 09:08:38');
INSERT INTO `patent_operation_log` VALUES ('47', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:10:28', '2019-12-31 09:10:28');
INSERT INTO `patent_operation_log` VALUES ('48', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:10:36', '2019-12-31 09:10:36');
INSERT INTO `patent_operation_log` VALUES ('49', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:10:52', '2019-12-31 09:10:52');
INSERT INTO `patent_operation_log` VALUES ('50', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:11:01', '2019-12-31 09:11:01');
INSERT INTO `patent_operation_log` VALUES ('51', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:17:28', '2019-12-31 09:17:28');
INSERT INTO `patent_operation_log` VALUES ('52', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:17:35', '2019-12-31 09:17:35');
INSERT INTO `patent_operation_log` VALUES ('53', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:18:24', '2019-12-31 09:18:24');
INSERT INTO `patent_operation_log` VALUES ('54', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:18:40', '2019-12-31 09:18:40');
INSERT INTO `patent_operation_log` VALUES ('55', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:19:36', '2019-12-31 09:19:36');
INSERT INTO `patent_operation_log` VALUES ('56', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:20:09', '2019-12-31 09:20:09');
INSERT INTO `patent_operation_log` VALUES ('57', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:21:06', '2019-12-31 09:21:06');
INSERT INTO `patent_operation_log` VALUES ('58', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:21:18', '2019-12-31 09:21:18');
INSERT INTO `patent_operation_log` VALUES ('59', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:21:34', '2019-12-31 09:21:34');
INSERT INTO `patent_operation_log` VALUES ('60', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:21:36', '2019-12-31 09:21:36');
INSERT INTO `patent_operation_log` VALUES ('61', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:23:22', '2019-12-31 09:23:22');
INSERT INTO `patent_operation_log` VALUES ('62', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:25:39', '2019-12-31 09:25:39');
INSERT INTO `patent_operation_log` VALUES ('63', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:26:59', '2019-12-31 09:26:59');
INSERT INTO `patent_operation_log` VALUES ('64', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:28:03', '2019-12-31 09:28:03');
INSERT INTO `patent_operation_log` VALUES ('65', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:29:00', '2019-12-31 09:29:00');
INSERT INTO `patent_operation_log` VALUES ('66', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:29:23', '2019-12-31 09:29:23');
INSERT INTO `patent_operation_log` VALUES ('67', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:33:34', '2019-12-31 09:33:34');
INSERT INTO `patent_operation_log` VALUES ('68', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:33:35', '2019-12-31 09:33:35');
INSERT INTO `patent_operation_log` VALUES ('69', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:33:37', '2019-12-31 09:33:37');
INSERT INTO `patent_operation_log` VALUES ('70', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:33:48', '2019-12-31 09:33:48');
INSERT INTO `patent_operation_log` VALUES ('71', '1', 'patent', 'GET', '127.0.0.1', '[]', '2019-12-31 09:34:32', '2019-12-31 09:34:32');
INSERT INTO `patent_operation_log` VALUES ('72', '1', 'patent', 'GET', '127.0.0.1', '[]', '2020-01-03 06:58:20', '2020-01-03 06:58:20');
INSERT INTO `patent_operation_log` VALUES ('73', '1', 'patent', 'GET', '127.0.0.1', '[]', '2020-01-03 06:58:23', '2020-01-03 06:58:23');
INSERT INTO `patent_operation_log` VALUES ('74', '1', 'patent', 'GET', '127.0.0.1', '[]', '2020-01-03 06:58:36', '2020-01-03 06:58:36');
INSERT INTO `patent_operation_log` VALUES ('75', '1', 'patent', 'GET', '127.0.0.1', '[]', '2020-01-03 06:58:50', '2020-01-03 06:58:50');
INSERT INTO `patent_operation_log` VALUES ('76', '1', 'patent', 'GET', '127.0.0.1', '[]', '2020-01-03 06:59:13', '2020-01-03 06:59:13');
INSERT INTO `patent_operation_log` VALUES ('77', '1', 'patent/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:59:18', '2020-01-03 06:59:18');
INSERT INTO `patent_operation_log` VALUES ('78', '1', 'patent/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:59:21', '2020-01-03 06:59:21');
INSERT INTO `patent_operation_log` VALUES ('79', '1', 'patent/auth/users', 'POST', '127.0.0.1', '{\"username\":\"jwb123\",\"name\":\"jwb123\",\"password\":\"jwb123\",\"password_confirmation\":\"jwb123\",\"roles\":[null],\"permissions\":[null],\"_token\":\"YjboyPm0o82zqY9zgYob9NMohN36tKnaKLvFczDM\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/patent\\/auth\\/users\"}', '2020-01-03 06:59:47', '2020-01-03 06:59:47');
INSERT INTO `patent_operation_log` VALUES ('80', '1', 'patent/auth/users', 'GET', '127.0.0.1', '[]', '2020-01-03 06:59:48', '2020-01-03 06:59:48');
INSERT INTO `patent_operation_log` VALUES ('81', '1', 'patent/auth/users', 'GET', '127.0.0.1', '[]', '2020-01-03 06:59:50', '2020-01-03 06:59:50');
INSERT INTO `patent_operation_log` VALUES ('82', '1', 'patent/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:59:53', '2020-01-03 06:59:53');
INSERT INTO `patent_operation_log` VALUES ('83', '2', 'patent', 'GET', '127.0.0.1', '[]', '2020-01-03 06:59:59', '2020-01-03 06:59:59');
INSERT INTO `patent_operation_log` VALUES ('84', '2', 'patent', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 07:00:02', '2020-01-03 07:00:02');
INSERT INTO `patent_operation_log` VALUES ('85', '2', 'patent', 'GET', '127.0.0.1', '[]', '2020-01-03 07:00:23', '2020-01-03 07:00:23');
INSERT INTO `patent_operation_log` VALUES ('86', '2', 'patent', 'GET', '127.0.0.1', '[]', '2020-01-03 07:03:51', '2020-01-03 07:03:51');
INSERT INTO `patent_operation_log` VALUES ('87', '2', 'patent', 'GET', '127.0.0.1', '[]', '2020-01-03 07:04:23', '2020-01-03 07:04:23');
INSERT INTO `patent_operation_log` VALUES ('88', '2', 'patent', 'GET', '127.0.0.1', '[]', '2020-01-03 07:07:57', '2020-01-03 07:07:57');
INSERT INTO `patent_operation_log` VALUES ('89', '1', 'patent', 'GET', '127.0.0.1', '[]', '2020-01-03 07:08:06', '2020-01-03 07:08:06');
INSERT INTO `patent_operation_log` VALUES ('90', '2', 'patent', 'GET', '127.0.0.1', '[]', '2020-01-03 07:08:16', '2020-01-03 07:08:16');
INSERT INTO `patent_operation_log` VALUES ('91', '1', 'patent', 'GET', '127.0.0.1', '[]', '2020-01-03 07:08:18', '2020-01-03 07:08:18');
INSERT INTO `patent_operation_log` VALUES ('92', '2', 'patent', 'GET', '127.0.0.1', '[]', '2020-01-03 07:08:27', '2020-01-03 07:08:27');
INSERT INTO `patent_operation_log` VALUES ('93', '1', 'patent', 'GET', '127.0.0.1', '[]', '2020-01-03 07:08:30', '2020-01-03 07:08:30');
INSERT INTO `patent_operation_log` VALUES ('94', '1', 'patent', 'GET', '127.0.0.1', '[]', '2020-01-03 07:09:08', '2020-01-03 07:09:08');
INSERT INTO `patent_operation_log` VALUES ('95', '1', 'patent', 'GET', '127.0.0.1', '[]', '2020-01-03 07:09:14', '2020-01-03 07:09:14');
INSERT INTO `patent_operation_log` VALUES ('96', '1', 'patent', 'GET', '127.0.0.1', '[]', '2020-01-03 07:10:35', '2020-01-03 07:10:35');
INSERT INTO `patent_operation_log` VALUES ('97', '1', 'patent', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 07:10:37', '2020-01-03 07:10:37');
INSERT INTO `patent_operation_log` VALUES ('98', '1', 'patent/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 07:10:38', '2020-01-03 07:10:38');
INSERT INTO `patent_operation_log` VALUES ('99', '1', 'patent/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 07:10:39', '2020-01-03 07:10:39');
INSERT INTO `patent_operation_log` VALUES ('100', '1', 'patent/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 07:10:41', '2020-01-03 07:10:41');
INSERT INTO `patent_operation_log` VALUES ('101', '1', 'patent/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"member\",\"name\":\"\\u4f1a\\u5458\",\"permissions\":[\"1\",null],\"_token\":\"ZKpWWg7pxoee9zjhohDUjmf4f23u2yeP5Y1zjBYQ\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/patent\\/auth\\/roles\"}', '2020-01-03 07:11:34', '2020-01-03 07:11:34');
INSERT INTO `patent_operation_log` VALUES ('102', '1', 'patent/auth/roles', 'GET', '127.0.0.1', '[]', '2020-01-03 07:11:34', '2020-01-03 07:11:34');
INSERT INTO `patent_operation_log` VALUES ('103', '1', 'patent/auth/roles', 'GET', '127.0.0.1', '[]', '2020-01-03 07:11:36', '2020-01-03 07:11:36');
INSERT INTO `patent_operation_log` VALUES ('104', '1', 'patent/auth/roles', 'GET', '127.0.0.1', '[]', '2020-01-03 07:11:44', '2020-01-03 07:11:44');
INSERT INTO `patent_operation_log` VALUES ('105', '1', 'patent/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 07:12:04', '2020-01-03 07:12:04');
INSERT INTO `patent_operation_log` VALUES ('106', '1', 'patent/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 07:12:13', '2020-01-03 07:12:13');
INSERT INTO `patent_operation_log` VALUES ('107', '1', 'patent/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 07:12:15', '2020-01-03 07:12:15');
INSERT INTO `patent_operation_log` VALUES ('108', '1', 'patent/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"jwb123\",\"name\":\"jwb123\",\"password\":\"$2y$10$ud8FQ38VrH6pYW7mnaQF8.\\/uCMhkqMHbvGabRk5BmDRPcamGx8\\/76\",\"password_confirmation\":\"$2y$10$ud8FQ38VrH6pYW7mnaQF8.\\/uCMhkqMHbvGabRk5BmDRPcamGx8\\/76\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"ZKpWWg7pxoee9zjhohDUjmf4f23u2yeP5Y1zjBYQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/patent\\/auth\\/users\"}', '2020-01-03 07:12:20', '2020-01-03 07:12:20');
INSERT INTO `patent_operation_log` VALUES ('109', '1', 'patent/auth/users', 'GET', '127.0.0.1', '[]', '2020-01-03 07:12:20', '2020-01-03 07:12:20');
INSERT INTO `patent_operation_log` VALUES ('110', '1', 'patent/auth/users', 'GET', '127.0.0.1', '[]', '2020-01-03 07:12:22', '2020-01-03 07:12:22');
INSERT INTO `patent_operation_log` VALUES ('111', '2', 'patent', 'GET', '127.0.0.1', '[]', '2020-01-03 07:12:54', '2020-01-03 07:12:54');
INSERT INTO `patent_operation_log` VALUES ('112', '2', 'patent', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 07:12:56', '2020-01-03 07:12:56');
INSERT INTO `patent_operation_log` VALUES ('113', '1', 'patent/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 07:13:00', '2020-01-03 07:13:00');
INSERT INTO `patent_operation_log` VALUES ('114', '1', 'patent/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 07:13:00', '2020-01-03 07:13:00');
INSERT INTO `patent_operation_log` VALUES ('115', '1', 'patent/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 07:13:08', '2020-01-03 07:13:08');
INSERT INTO `patent_operation_log` VALUES ('116', '1', 'patent/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5de5\\u4f5c\\u53f0\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"ZKpWWg7pxoee9zjhohDUjmf4f23u2yeP5Y1zjBYQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/patent\\/auth\\/menu\"}', '2020-01-03 07:13:16', '2020-01-03 07:13:16');
INSERT INTO `patent_operation_log` VALUES ('117', '1', 'patent/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 07:13:16', '2020-01-03 07:13:16');
INSERT INTO `patent_operation_log` VALUES ('118', '1', 'patent/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-03 07:13:19', '2020-01-03 07:13:19');
INSERT INTO `patent_operation_log` VALUES ('119', '2', 'patent', 'GET', '127.0.0.1', '[]', '2020-01-03 07:13:26', '2020-01-03 07:13:26');
INSERT INTO `patent_operation_log` VALUES ('120', '2', 'patent', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 07:13:28', '2020-01-03 07:13:28');
INSERT INTO `patent_operation_log` VALUES ('121', '2', 'patent', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 07:13:34', '2020-01-03 07:13:34');
INSERT INTO `patent_operation_log` VALUES ('122', '2', 'patent', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 07:15:59', '2020-01-03 07:15:59');

-- ----------------------------
-- Table structure for `patent_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `patent_permissions`;
CREATE TABLE `patent_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patent_permissions_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of patent_permissions
-- ----------------------------
INSERT INTO `patent_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `patent_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `patent_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `patent_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `patent_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);

-- ----------------------------
-- Table structure for `patent_roles`
-- ----------------------------
DROP TABLE IF EXISTS `patent_roles`;
CREATE TABLE `patent_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patent_roles_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of patent_roles
-- ----------------------------
INSERT INTO `patent_roles` VALUES ('1', 'Administrator', 'administrator', '2019-12-23 08:01:33', '2019-12-23 08:01:33');
INSERT INTO `patent_roles` VALUES ('2', '会员', 'member', '2020-01-03 07:11:34', '2020-01-03 07:11:34');

-- ----------------------------
-- Table structure for `patent_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `patent_role_menu`;
CREATE TABLE `patent_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `patent_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of patent_role_menu
-- ----------------------------
INSERT INTO `patent_role_menu` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for `patent_role_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `patent_role_permissions`;
CREATE TABLE `patent_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `patent_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of patent_role_permissions
-- ----------------------------
INSERT INTO `patent_role_permissions` VALUES ('1', '1', null, null);
INSERT INTO `patent_role_permissions` VALUES ('2', '1', null, null);

-- ----------------------------
-- Table structure for `patent_role_users`
-- ----------------------------
DROP TABLE IF EXISTS `patent_role_users`;
CREATE TABLE `patent_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `patent_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of patent_role_users
-- ----------------------------
INSERT INTO `patent_role_users` VALUES ('1', '1', null, null);
INSERT INTO `patent_role_users` VALUES ('2', '2', null, null);

-- ----------------------------
-- Table structure for `patent_users`
-- ----------------------------
DROP TABLE IF EXISTS `patent_users`;
CREATE TABLE `patent_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patent_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of patent_users
-- ----------------------------
INSERT INTO `patent_users` VALUES ('1', 'admin', '$2y$10$/Udf9iUXdHY8yDWqJAZNqeGRgJCU8InF0O4Tn1x87lCSL.gxXAu3y', 'Administrator', null, 'ECEWz9UfTX2DAKL1UT7gZGeVTH7SGN77BnNmD7tiITbiAYOi4UeeKotERZyM', '2019-12-23 08:01:33', '2019-12-23 08:01:33');
INSERT INTO `patent_users` VALUES ('2', 'jwb123', '$2y$10$ud8FQ38VrH6pYW7mnaQF8./uCMhkqMHbvGabRk5BmDRPcamGx8/76', 'jwb123', null, null, '2020-01-03 06:59:47', '2020-01-03 06:59:47');

-- ----------------------------
-- Table structure for `patent_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `patent_user_permissions`;
CREATE TABLE `patent_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `patent_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of patent_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
