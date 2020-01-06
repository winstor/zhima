/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : zhima

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-01-05 23:25:08
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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '首页', 'fa-bank', '/', '*', null, '2020-01-05 08:46:47');
INSERT INTO `admin_menu` VALUES ('2', '0', '2', '系统设置', 'fa-cogs', null, '*', null, '2020-01-05 08:40:17');
INSERT INTO `admin_menu` VALUES ('3', '2', '3', '管理员', 'fa-users', 'auth/users', null, null, '2020-01-03 03:36:31');
INSERT INTO `admin_menu` VALUES ('4', '2', '4', '角色管理', 'fa-user', 'auth/roles', null, null, '2020-01-03 03:36:43');
INSERT INTO `admin_menu` VALUES ('5', '2', '5', '权限管理', 'fa-ban', 'auth/permissions', null, null, '2020-01-03 03:36:55');
INSERT INTO `admin_menu` VALUES ('6', '2', '6', '菜单管理', 'fa-bars', 'auth/menu', null, null, '2020-01-03 03:37:40');
INSERT INTO `admin_menu` VALUES ('7', '2', '7', '日志管理', 'fa-history', 'auth/logs', null, null, '2020-01-03 03:37:15');
INSERT INTO `admin_menu` VALUES ('8', '0', '8', '网站设置', 'fa-adjust', 'configs', null, '2020-01-03 01:31:16', '2020-01-03 05:36:55');
INSERT INTO `admin_menu` VALUES ('9', '12', '10', '专利分类', 'fa-bars', 'patent-categories', '*', '2020-01-04 12:15:48', '2020-01-04 15:49:13');
INSERT INTO `admin_menu` VALUES ('10', '12', '11', '热门领域', 'fa-bars', 'patent-domains', null, '2020-01-04 14:46:23', '2020-01-04 15:49:13');
INSERT INTO `admin_menu` VALUES ('11', '12', '12', '专利类型', 'fa-bars', 'patent-types', '*', '2020-01-04 15:26:32', '2020-01-04 15:49:13');
INSERT INTO `admin_menu` VALUES ('12', '0', '9', '专利管理', 'fa-bars', null, null, '2020-01-04 15:48:58', '2020-01-04 15:49:13');
INSERT INTO `admin_menu` VALUES ('13', '12', '14', '会员专利', 'fa-bars', 'patents', null, '2020-01-05 03:46:35', '2020-01-05 06:55:17');
INSERT INTO `admin_menu` VALUES ('14', '12', '13', '专利状态', 'fa-bars', 'patent-states', null, '2020-01-05 05:15:16', '2020-01-05 05:15:25');
INSERT INTO `admin_menu` VALUES ('15', '0', '15', '高校专场', 'fa-graduation-cap', 'colleges', null, '2020-01-05 07:21:38', '2020-01-05 08:41:02');
INSERT INTO `admin_menu` VALUES ('16', '0', '16', '电子账户', 'fa-key', 'electron-users', null, '2020-01-05 07:24:08', '2020-01-05 08:42:46');
INSERT INTO `admin_menu` VALUES ('17', '0', '17', '文章管理', 'fa-weibo', 'articles', null, '2020-01-05 12:28:02', '2020-01-05 12:28:40');
INSERT INTO `admin_menu` VALUES ('18', '0', '19', '关键字', 'fa-bars', 'keywords', null, '2020-01-05 15:00:14', '2020-01-05 15:00:51');
INSERT INTO `admin_menu` VALUES ('19', '0', '18', '友情链接', 'fa-bars', 'friend-links', null, '2020-01-05 15:00:36', '2020-01-05 15:00:51');

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
) ENGINE=MyISAM AUTO_INCREMENT=2017 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `admin_operation_log` VALUES ('459', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-01-03 15:01:47', '2020-01-03 15:01:47');
INSERT INTO `admin_operation_log` VALUES ('460', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:01:51', '2020-01-03 15:01:51');
INSERT INTO `admin_operation_log` VALUES ('461', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:01:55', '2020-01-03 15:01:55');
INSERT INTO `admin_operation_log` VALUES ('462', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:01:59', '2020-01-03 15:01:59');
INSERT INTO `admin_operation_log` VALUES ('463', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-03 15:02:02', '2020-01-03 15:02:02');
INSERT INTO `admin_operation_log` VALUES ('464', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"email\"}', '2020-01-03 15:02:03', '2020-01-03 15:02:03');
INSERT INTO `admin_operation_log` VALUES ('465', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-03 15:02:04', '2020-01-03 15:02:04');
INSERT INTO `admin_operation_log` VALUES ('466', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"email\"}', '2020-01-03 15:02:06', '2020-01-03 15:02:06');
INSERT INTO `admin_operation_log` VALUES ('467', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-03 15:02:07', '2020-01-03 15:02:07');
INSERT INTO `admin_operation_log` VALUES ('468', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"site\"}', '2020-01-03 15:02:10', '2020-01-03 15:02:10');
INSERT INTO `admin_operation_log` VALUES ('469', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-03 15:02:29', '2020-01-03 15:02:29');
INSERT INTO `admin_operation_log` VALUES ('470', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"company_tel\":\"0371-63302335\",\"company_email\":\"zhimaipr@163.com\",\"company_address\":\"\\u90d1\\u5dde\\u5e02\\u9ad8\\u65b0\\u533a\\u957f\\u693f\\u8def\\u4e0e\\u68a7\\u6850\\u8857\\u4ea4\\u53c9\\u53e3\\u6cb3\\u5357\\u7701\\u56fd\\u5bb6\\u5927\\u5b66\\u79d1\\u6280\\u56ed\\u5b75\\u53161\\u53f7\\u697c3A16\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Address\",\"_token\":\"v9wnZM46tZooRw2GKOL5xTw6mSLRLvqpel68iGZQ\"}', '2020-01-03 15:05:46', '2020-01-03 15:05:46');
INSERT INTO `admin_operation_log` VALUES ('471', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-03 15:05:46', '2020-01-03 15:05:46');
INSERT INTO `admin_operation_log` VALUES ('472', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:06:37', '2020-01-03 15:06:37');
INSERT INTO `admin_operation_log` VALUES ('473', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site-title\":\"111\",\"site-keywords\":\"11\",\"site-description\":\"22\",\"site-copyright\":null,\"site-icp\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"v9wnZM46tZooRw2GKOL5xTw6mSLRLvqpel68iGZQ\"}', '2020-01-03 15:07:01', '2020-01-03 15:07:01');
INSERT INTO `admin_operation_log` VALUES ('474', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 15:07:01', '2020-01-03 15:07:01');
INSERT INTO `admin_operation_log` VALUES ('475', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 15:07:04', '2020-01-03 15:07:04');
INSERT INTO `admin_operation_log` VALUES ('476', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:07:09', '2020-01-03 15:07:09');
INSERT INTO `admin_operation_log` VALUES ('477', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:07:09', '2020-01-03 15:07:09');
INSERT INTO `admin_operation_log` VALUES ('478', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:07:12', '2020-01-03 15:07:12');
INSERT INTO `admin_operation_log` VALUES ('479', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:07:13', '2020-01-03 15:07:13');
INSERT INTO `admin_operation_log` VALUES ('480', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:07:45', '2020-01-03 15:07:45');
INSERT INTO `admin_operation_log` VALUES ('481', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-03 15:07:49', '2020-01-03 15:07:49');
INSERT INTO `admin_operation_log` VALUES ('482', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-03 15:08:49', '2020-01-03 15:08:49');
INSERT INTO `admin_operation_log` VALUES ('483', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:08:59', '2020-01-03 15:08:59');
INSERT INTO `admin_operation_log` VALUES ('484', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:09:00', '2020-01-03 15:09:00');
INSERT INTO `admin_operation_log` VALUES ('485', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:09:02', '2020-01-03 15:09:02');
INSERT INTO `admin_operation_log` VALUES ('486', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 15:09:16', '2020-01-03 15:09:16');
INSERT INTO `admin_operation_log` VALUES ('487', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 15:09:35', '2020-01-03 15:09:35');
INSERT INTO `admin_operation_log` VALUES ('488', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 15:09:43', '2020-01-03 15:09:43');
INSERT INTO `admin_operation_log` VALUES ('489', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 15:10:18', '2020-01-03 15:10:18');
INSERT INTO `admin_operation_log` VALUES ('490', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 15:10:23', '2020-01-03 15:10:23');
INSERT INTO `admin_operation_log` VALUES ('491', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 15:10:24', '2020-01-03 15:10:24');
INSERT INTO `admin_operation_log` VALUES ('492', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 15:10:28', '2020-01-03 15:10:28');
INSERT INTO `admin_operation_log` VALUES ('493', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 15:10:36', '2020-01-03 15:10:36');
INSERT INTO `admin_operation_log` VALUES ('494', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 15:10:51', '2020-01-03 15:10:51');
INSERT INTO `admin_operation_log` VALUES ('495', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-03 15:10:55', '2020-01-03 15:10:55');
INSERT INTO `admin_operation_log` VALUES ('496', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:11:18', '2020-01-03 15:11:18');
INSERT INTO `admin_operation_log` VALUES ('497', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:11:19', '2020-01-03 15:11:19');
INSERT INTO `admin_operation_log` VALUES ('498', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:11:20', '2020-01-03 15:11:20');
INSERT INTO `admin_operation_log` VALUES ('499', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:11:21', '2020-01-03 15:11:21');
INSERT INTO `admin_operation_log` VALUES ('500', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:11:22', '2020-01-03 15:11:22');
INSERT INTO `admin_operation_log` VALUES ('501', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:11:22', '2020-01-03 15:11:22');
INSERT INTO `admin_operation_log` VALUES ('502', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:11:23', '2020-01-03 15:11:23');
INSERT INTO `admin_operation_log` VALUES ('503', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:11:23', '2020-01-03 15:11:23');
INSERT INTO `admin_operation_log` VALUES ('504', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:11:25', '2020-01-03 15:11:25');
INSERT INTO `admin_operation_log` VALUES ('505', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 15:11:27', '2020-01-03 15:11:27');
INSERT INTO `admin_operation_log` VALUES ('506', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-01-04 12:11:04', '2020-01-04 12:11:04');
INSERT INTO `admin_operation_log` VALUES ('507', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:11:07', '2020-01-04 12:11:07');
INSERT INTO `admin_operation_log` VALUES ('508', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:11:08', '2020-01-04 12:11:08');
INSERT INTO `admin_operation_log` VALUES ('509', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:11:08', '2020-01-04 12:11:08');
INSERT INTO `admin_operation_log` VALUES ('510', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:11:08', '2020-01-04 12:11:08');
INSERT INTO `admin_operation_log` VALUES ('511', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:11:11', '2020-01-04 12:11:11');
INSERT INTO `admin_operation_log` VALUES ('512', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:11:13', '2020-01-04 12:11:13');
INSERT INTO `admin_operation_log` VALUES ('513', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:11:13', '2020-01-04 12:11:13');
INSERT INTO `admin_operation_log` VALUES ('514', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:11:14', '2020-01-04 12:11:14');
INSERT INTO `admin_operation_log` VALUES ('515', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:14:27', '2020-01-04 12:14:27');
INSERT INTO `admin_operation_log` VALUES ('516', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"patent-categories\",\"icon\":\"fa-bars\",\"uri\":\"patent-categories\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\"}', '2020-01-04 12:15:48', '2020-01-04 12:15:48');
INSERT INTO `admin_operation_log` VALUES ('517', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-04 12:15:48', '2020-01-04 12:15:48');
INSERT INTO `admin_operation_log` VALUES ('518', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:16:00', '2020-01-04 12:16:00');
INSERT INTO `admin_operation_log` VALUES ('519', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u70ed\\u95e8\\u9886\\u57df\",\"icon\":\"fa-bars\",\"uri\":\"patent-categories\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-04 12:16:10', '2020-01-04 12:16:10');
INSERT INTO `admin_operation_log` VALUES ('520', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-04 12:16:10', '2020-01-04 12:16:10');
INSERT INTO `admin_operation_log` VALUES ('521', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":9}]\"}', '2020-01-04 12:16:14', '2020-01-04 12:16:14');
INSERT INTO `admin_operation_log` VALUES ('522', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:16:15', '2020-01-04 12:16:15');
INSERT INTO `admin_operation_log` VALUES ('523', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-04 12:16:15', '2020-01-04 12:16:15');
INSERT INTO `admin_operation_log` VALUES ('524', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:16:17', '2020-01-04 12:16:17');
INSERT INTO `admin_operation_log` VALUES ('525', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:16:19', '2020-01-04 12:16:19');
INSERT INTO `admin_operation_log` VALUES ('526', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:16:20', '2020-01-04 12:16:20');
INSERT INTO `admin_operation_log` VALUES ('527', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:16:21', '2020-01-04 12:16:21');
INSERT INTO `admin_operation_log` VALUES ('528', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:16:21', '2020-01-04 12:16:21');
INSERT INTO `admin_operation_log` VALUES ('529', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:16:22', '2020-01-04 12:16:22');
INSERT INTO `admin_operation_log` VALUES ('530', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:16:24', '2020-01-04 12:16:24');
INSERT INTO `admin_operation_log` VALUES ('531', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:16:26', '2020-01-04 12:16:26');
INSERT INTO `admin_operation_log` VALUES ('532', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-01-04 12:16:27', '2020-01-04 12:16:27');
INSERT INTO `admin_operation_log` VALUES ('533', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:16:32', '2020-01-04 12:16:32');
INSERT INTO `admin_operation_log` VALUES ('534', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:16:39', '2020-01-04 12:16:39');
INSERT INTO `admin_operation_log` VALUES ('535', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:16:42', '2020-01-04 12:16:42');
INSERT INTO `admin_operation_log` VALUES ('536', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:16:45', '2020-01-04 12:16:45');
INSERT INTO `admin_operation_log` VALUES ('537', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:16:59', '2020-01-04 12:16:59');
INSERT INTO `admin_operation_log` VALUES ('538', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:17:21', '2020-01-04 12:17:21');
INSERT INTO `admin_operation_log` VALUES ('539', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:17:41', '2020-01-04 12:17:41');
INSERT INTO `admin_operation_log` VALUES ('540', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:17:43', '2020-01-04 12:17:43');
INSERT INTO `admin_operation_log` VALUES ('541', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:20:16', '2020-01-04 12:20:16');
INSERT INTO `admin_operation_log` VALUES ('542', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:20:17', '2020-01-04 12:20:17');
INSERT INTO `admin_operation_log` VALUES ('543', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:20:18', '2020-01-04 12:20:18');
INSERT INTO `admin_operation_log` VALUES ('544', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:20:19', '2020-01-04 12:20:19');
INSERT INTO `admin_operation_log` VALUES ('545', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:20:30', '2020-01-04 12:20:30');
INSERT INTO `admin_operation_log` VALUES ('546', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:22:58', '2020-01-04 12:22:58');
INSERT INTO `admin_operation_log` VALUES ('547', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:22:59', '2020-01-04 12:22:59');
INSERT INTO `admin_operation_log` VALUES ('548', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:23:00', '2020-01-04 12:23:00');
INSERT INTO `admin_operation_log` VALUES ('549', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:23:00', '2020-01-04 12:23:00');
INSERT INTO `admin_operation_log` VALUES ('550', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:23:01', '2020-01-04 12:23:01');
INSERT INTO `admin_operation_log` VALUES ('551', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:23:55', '2020-01-04 12:23:55');
INSERT INTO `admin_operation_log` VALUES ('552', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:23:58', '2020-01-04 12:23:58');
INSERT INTO `admin_operation_log` VALUES ('553', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:24:28', '2020-01-04 12:24:28');
INSERT INTO `admin_operation_log` VALUES ('554', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:24:33', '2020-01-04 12:24:33');
INSERT INTO `admin_operation_log` VALUES ('555', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 12:24:36', '2020-01-04 12:24:36');
INSERT INTO `admin_operation_log` VALUES ('556', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:24:41', '2020-01-04 12:24:41');
INSERT INTO `admin_operation_log` VALUES ('557', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:25:29', '2020-01-04 12:25:29');
INSERT INTO `admin_operation_log` VALUES ('558', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:26:03', '2020-01-04 12:26:03');
INSERT INTO `admin_operation_log` VALUES ('559', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:26:17', '2020-01-04 12:26:17');
INSERT INTO `admin_operation_log` VALUES ('560', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:26:55', '2020-01-04 12:26:55');
INSERT INTO `admin_operation_log` VALUES ('561', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:27:07', '2020-01-04 12:27:07');
INSERT INTO `admin_operation_log` VALUES ('562', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:27:08', '2020-01-04 12:27:08');
INSERT INTO `admin_operation_log` VALUES ('563', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:27:09', '2020-01-04 12:27:09');
INSERT INTO `admin_operation_log` VALUES ('564', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:27:11', '2020-01-04 12:27:11');
INSERT INTO `admin_operation_log` VALUES ('565', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:27:27', '2020-01-04 12:27:27');
INSERT INTO `admin_operation_log` VALUES ('566', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:27:44', '2020-01-04 12:27:44');
INSERT INTO `admin_operation_log` VALUES ('567', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:27:45', '2020-01-04 12:27:45');
INSERT INTO `admin_operation_log` VALUES ('568', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:28:55', '2020-01-04 12:28:55');
INSERT INTO `admin_operation_log` VALUES ('569', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:28:57', '2020-01-04 12:28:57');
INSERT INTO `admin_operation_log` VALUES ('570', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:29:09', '2020-01-04 12:29:09');
INSERT INTO `admin_operation_log` VALUES ('571', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:29:12', '2020-01-04 12:29:12');
INSERT INTO `admin_operation_log` VALUES ('572', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:29:13', '2020-01-04 12:29:13');
INSERT INTO `admin_operation_log` VALUES ('573', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:29:17', '2020-01-04 12:29:17');
INSERT INTO `admin_operation_log` VALUES ('574', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:30:14', '2020-01-04 12:30:14');
INSERT INTO `admin_operation_log` VALUES ('575', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:30:16', '2020-01-04 12:30:16');
INSERT INTO `admin_operation_log` VALUES ('576', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:30:17', '2020-01-04 12:30:17');
INSERT INTO `admin_operation_log` VALUES ('577', '1', 'admin/patent-categories', 'POST', '127.0.0.1', '{\"cat_name\":null,\"logo\":null,\"sort\":\"0\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\"}', '2020-01-04 12:30:18', '2020-01-04 12:30:18');
INSERT INTO `admin_operation_log` VALUES ('578', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:30:18', '2020-01-04 12:30:18');
INSERT INTO `admin_operation_log` VALUES ('579', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:30:21', '2020-01-04 12:30:21');
INSERT INTO `admin_operation_log` VALUES ('580', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:30:34', '2020-01-04 12:30:34');
INSERT INTO `admin_operation_log` VALUES ('581', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:30:35', '2020-01-04 12:30:35');
INSERT INTO `admin_operation_log` VALUES ('582', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:30:50', '2020-01-04 12:30:50');
INSERT INTO `admin_operation_log` VALUES ('583', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:30:57', '2020-01-04 12:30:57');
INSERT INTO `admin_operation_log` VALUES ('584', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:30:59', '2020-01-04 12:30:59');
INSERT INTO `admin_operation_log` VALUES ('585', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:31:06', '2020-01-04 12:31:06');
INSERT INTO `admin_operation_log` VALUES ('586', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:31:11', '2020-01-04 12:31:11');
INSERT INTO `admin_operation_log` VALUES ('587', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:31:50', '2020-01-04 12:31:50');
INSERT INTO `admin_operation_log` VALUES ('588', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:32:04', '2020-01-04 12:32:04');
INSERT INTO `admin_operation_log` VALUES ('589', '1', 'admin/patent-categories', 'POST', '127.0.0.1', '{\"cat_name\":\"\\u5bb6\\u5c45\",\"sort\":\"0\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\"}', '2020-01-04 12:32:19', '2020-01-04 12:32:19');
INSERT INTO `admin_operation_log` VALUES ('590', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 12:32:19', '2020-01-04 12:32:19');
INSERT INTO `admin_operation_log` VALUES ('591', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 13:15:57', '2020-01-04 13:15:57');
INSERT INTO `admin_operation_log` VALUES ('592', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 13:18:53', '2020-01-04 13:18:53');
INSERT INTO `admin_operation_log` VALUES ('593', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 13:20:16', '2020-01-04 13:20:16');
INSERT INTO `admin_operation_log` VALUES ('594', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 13:20:18', '2020-01-04 13:20:18');
INSERT INTO `admin_operation_log` VALUES ('595', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 13:21:56', '2020-01-04 13:21:56');
INSERT INTO `admin_operation_log` VALUES ('596', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 13:27:14', '2020-01-04 13:27:14');
INSERT INTO `admin_operation_log` VALUES ('597', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 13:27:40', '2020-01-04 13:27:40');
INSERT INTO `admin_operation_log` VALUES ('598', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 13:27:41', '2020-01-04 13:27:41');
INSERT INTO `admin_operation_log` VALUES ('599', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 13:27:42', '2020-01-04 13:27:42');
INSERT INTO `admin_operation_log` VALUES ('600', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 13:27:44', '2020-01-04 13:27:44');
INSERT INTO `admin_operation_log` VALUES ('601', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 13:27:44', '2020-01-04 13:27:44');
INSERT INTO `admin_operation_log` VALUES ('602', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 13:28:06', '2020-01-04 13:28:06');
INSERT INTO `admin_operation_log` VALUES ('603', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 13:29:36', '2020-01-04 13:29:36');
INSERT INTO `admin_operation_log` VALUES ('604', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 13:29:48', '2020-01-04 13:29:48');
INSERT INTO `admin_operation_log` VALUES ('605', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 13:29:49', '2020-01-04 13:29:49');
INSERT INTO `admin_operation_log` VALUES ('606', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 13:29:50', '2020-01-04 13:29:50');
INSERT INTO `admin_operation_log` VALUES ('607', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 13:29:51', '2020-01-04 13:29:51');
INSERT INTO `admin_operation_log` VALUES ('608', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 13:30:14', '2020-01-04 13:30:14');
INSERT INTO `admin_operation_log` VALUES ('609', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 14:45:34', '2020-01-04 14:45:34');
INSERT INTO `admin_operation_log` VALUES ('610', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:45:36', '2020-01-04 14:45:36');
INSERT INTO `admin_operation_log` VALUES ('611', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:45:37', '2020-01-04 14:45:37');
INSERT INTO `admin_operation_log` VALUES ('612', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:45:39', '2020-01-04 14:45:39');
INSERT INTO `admin_operation_log` VALUES ('613', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:45:42', '2020-01-04 14:45:42');
INSERT INTO `admin_operation_log` VALUES ('614', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4e13\\u5229\\u5206\\u7c7b\",\"icon\":\"fa-bars\",\"uri\":\"patent-categories\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-04 14:45:50', '2020-01-04 14:45:50');
INSERT INTO `admin_operation_log` VALUES ('615', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-04 14:45:50', '2020-01-04 14:45:50');
INSERT INTO `admin_operation_log` VALUES ('616', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-04 14:45:52', '2020-01-04 14:45:52');
INSERT INTO `admin_operation_log` VALUES ('617', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:45:54', '2020-01-04 14:45:54');
INSERT INTO `admin_operation_log` VALUES ('618', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:45:55', '2020-01-04 14:45:55');
INSERT INTO `admin_operation_log` VALUES ('619', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:45:56', '2020-01-04 14:45:56');
INSERT INTO `admin_operation_log` VALUES ('620', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:45:57', '2020-01-04 14:45:57');
INSERT INTO `admin_operation_log` VALUES ('621', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:46:00', '2020-01-04 14:46:00');
INSERT INTO `admin_operation_log` VALUES ('622', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:46:01', '2020-01-04 14:46:01');
INSERT INTO `admin_operation_log` VALUES ('623', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:46:02', '2020-01-04 14:46:02');
INSERT INTO `admin_operation_log` VALUES ('624', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u70ed\\u95e8\\u9886\\u57df\",\"icon\":\"fa-bars\",\"uri\":\"patent-domains\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\"}', '2020-01-04 14:46:23', '2020-01-04 14:46:23');
INSERT INTO `admin_operation_log` VALUES ('625', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-04 14:46:23', '2020-01-04 14:46:23');
INSERT INTO `admin_operation_log` VALUES ('626', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:46:26', '2020-01-04 14:46:26');
INSERT INTO `admin_operation_log` VALUES ('627', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4e13\\u5229\\u5206\\u7c7b\",\"icon\":\"fa-bars\",\"uri\":\"patent-categories\",\"roles\":[\"1\",\"2\",null],\"permission\":\"*\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-04 14:46:30', '2020-01-04 14:46:30');
INSERT INTO `admin_operation_log` VALUES ('628', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-04 14:46:30', '2020-01-04 14:46:30');
INSERT INTO `admin_operation_log` VALUES ('629', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:46:34', '2020-01-04 14:46:34');
INSERT INTO `admin_operation_log` VALUES ('630', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:46:38', '2020-01-04 14:46:38');
INSERT INTO `admin_operation_log` VALUES ('631', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:46:41', '2020-01-04 14:46:41');
INSERT INTO `admin_operation_log` VALUES ('632', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '[]', '2020-01-04 14:46:44', '2020-01-04 14:46:44');
INSERT INTO `admin_operation_log` VALUES ('633', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:46:46', '2020-01-04 14:46:46');
INSERT INTO `admin_operation_log` VALUES ('634', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:46:47', '2020-01-04 14:46:47');
INSERT INTO `admin_operation_log` VALUES ('635', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:47:19', '2020-01-04 14:47:19');
INSERT INTO `admin_operation_log` VALUES ('636', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:47:22', '2020-01-04 14:47:22');
INSERT INTO `admin_operation_log` VALUES ('637', '1', 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"jwb123\",\"name\":\"\\u7126\\u6587\\u658c\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/users\"}', '2020-01-04 14:47:36', '2020-01-04 14:47:36');
INSERT INTO `admin_operation_log` VALUES ('638', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-01-04 14:47:37', '2020-01-04 14:47:37');
INSERT INTO `admin_operation_log` VALUES ('639', '2', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-01-04 14:47:46', '2020-01-04 14:47:46');
INSERT INTO `admin_operation_log` VALUES ('640', '2', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-01-04 14:48:02', '2020-01-04 14:48:02');
INSERT INTO `admin_operation_log` VALUES ('641', '2', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:48:06', '2020-01-04 14:48:06');
INSERT INTO `admin_operation_log` VALUES ('642', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:48:07', '2020-01-04 14:48:07');
INSERT INTO `admin_operation_log` VALUES ('643', '2', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:48:07', '2020-01-04 14:48:07');
INSERT INTO `admin_operation_log` VALUES ('644', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:48:16', '2020-01-04 14:48:16');
INSERT INTO `admin_operation_log` VALUES ('645', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:48:18', '2020-01-04 14:48:18');
INSERT INTO `admin_operation_log` VALUES ('646', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:48:21', '2020-01-04 14:48:21');
INSERT INTO `admin_operation_log` VALUES ('647', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:48:25', '2020-01-04 14:48:25');
INSERT INTO `admin_operation_log` VALUES ('648', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:48:28', '2020-01-04 14:48:28');
INSERT INTO `admin_operation_log` VALUES ('649', '1', 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-04 14:48:32', '2020-01-04 14:48:32');
INSERT INTO `admin_operation_log` VALUES ('650', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-04 14:48:32', '2020-01-04 14:48:32');
INSERT INTO `admin_operation_log` VALUES ('651', '2', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 14:48:36', '2020-01-04 14:48:36');
INSERT INTO `admin_operation_log` VALUES ('652', '2', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 14:48:37', '2020-01-04 14:48:37');
INSERT INTO `admin_operation_log` VALUES ('653', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:52:03', '2020-01-04 14:52:03');
INSERT INTO `admin_operation_log` VALUES ('654', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:52:04', '2020-01-04 14:52:04');
INSERT INTO `admin_operation_log` VALUES ('655', '2', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:52:04', '2020-01-04 14:52:04');
INSERT INTO `admin_operation_log` VALUES ('656', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:52:07', '2020-01-04 14:52:07');
INSERT INTO `admin_operation_log` VALUES ('657', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:52:08', '2020-01-04 14:52:08');
INSERT INTO `admin_operation_log` VALUES ('658', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10}]\"}', '2020-01-04 14:52:12', '2020-01-04 14:52:12');
INSERT INTO `admin_operation_log` VALUES ('659', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:52:13', '2020-01-04 14:52:13');
INSERT INTO `admin_operation_log` VALUES ('660', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-04 14:52:15', '2020-01-04 14:52:15');
INSERT INTO `admin_operation_log` VALUES ('661', '2', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 14:52:18', '2020-01-04 14:52:18');
INSERT INTO `admin_operation_log` VALUES ('662', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:52:20', '2020-01-04 14:52:20');
INSERT INTO `admin_operation_log` VALUES ('663', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:52:21', '2020-01-04 14:52:21');
INSERT INTO `admin_operation_log` VALUES ('664', '2', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:52:22', '2020-01-04 14:52:22');
INSERT INTO `admin_operation_log` VALUES ('665', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:52:22', '2020-01-04 14:52:22');
INSERT INTO `admin_operation_log` VALUES ('666', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:52:23', '2020-01-04 14:52:23');
INSERT INTO `admin_operation_log` VALUES ('667', '2', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:52:24', '2020-01-04 14:52:24');
INSERT INTO `admin_operation_log` VALUES ('668', '2', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:52:24', '2020-01-04 14:52:24');
INSERT INTO `admin_operation_log` VALUES ('669', '2', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:52:25', '2020-01-04 14:52:25');
INSERT INTO `admin_operation_log` VALUES ('670', '2', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:52:26', '2020-01-04 14:52:26');
INSERT INTO `admin_operation_log` VALUES ('671', '2', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:52:27', '2020-01-04 14:52:27');
INSERT INTO `admin_operation_log` VALUES ('672', '2', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:52:27', '2020-01-04 14:52:27');
INSERT INTO `admin_operation_log` VALUES ('673', '2', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:52:28', '2020-01-04 14:52:28');
INSERT INTO `admin_operation_log` VALUES ('674', '2', 'admin/patent-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:52:39', '2020-01-04 14:52:39');
INSERT INTO `admin_operation_log` VALUES ('675', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:54:56', '2020-01-04 14:54:56');
INSERT INTO `admin_operation_log` VALUES ('676', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 14:55:56', '2020-01-04 14:55:56');
INSERT INTO `admin_operation_log` VALUES ('677', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:55:57', '2020-01-04 14:55:57');
INSERT INTO `admin_operation_log` VALUES ('678', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 14:56:17', '2020-01-04 14:56:17');
INSERT INTO `admin_operation_log` VALUES ('679', '1', 'admin/patent-categories', 'POST', '127.0.0.1', '{\"cat_name\":\"\\u4eba\\u7c7b\\u751f\\u6d3b\\u5fc5\\u9700\\uff08\\u519c\\u3001\\u8f7b\\u3001\\u533b\\uff09\",\"cat_sn\":\"A\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-categories\"}', '2020-01-04 14:56:49', '2020-01-04 14:56:49');
INSERT INTO `admin_operation_log` VALUES ('680', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 14:56:49', '2020-01-04 14:56:49');
INSERT INTO `admin_operation_log` VALUES ('681', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 14:57:19', '2020-01-04 14:57:19');
INSERT INTO `admin_operation_log` VALUES ('682', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:57:21', '2020-01-04 14:57:21');
INSERT INTO `admin_operation_log` VALUES ('683', '1', 'admin/patent-categories', 'POST', '127.0.0.1', '{\"name\":\"\\u4eba\\u7c7b\\u751f\\u6d3b\\u5fc5\\u9700\\uff08\\u519c\\u3001\\u8f7b\\u3001\\u533b\\uff09\",\"cat_sn\":\"A\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\"}', '2020-01-04 14:57:45', '2020-01-04 14:57:45');
INSERT INTO `admin_operation_log` VALUES ('684', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 14:57:45', '2020-01-04 14:57:45');
INSERT INTO `admin_operation_log` VALUES ('685', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 14:57:47', '2020-01-04 14:57:47');
INSERT INTO `admin_operation_log` VALUES ('686', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:58:06', '2020-01-04 14:58:06');
INSERT INTO `admin_operation_log` VALUES ('687', '1', 'admin/patent-categories', 'POST', '127.0.0.1', '{\"name\":\"\\u4f5c\\u4e1a\\u3001\\u8fd0\\u8f93\",\"cat_sn\":\"B\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-categories\"}', '2020-01-04 14:58:19', '2020-01-04 14:58:19');
INSERT INTO `admin_operation_log` VALUES ('688', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 14:58:19', '2020-01-04 14:58:19');
INSERT INTO `admin_operation_log` VALUES ('689', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:58:21', '2020-01-04 14:58:21');
INSERT INTO `admin_operation_log` VALUES ('690', '1', 'admin/patent-categories', 'POST', '127.0.0.1', '{\"name\":\"\\u5316\\u5b66\\u3001\\u51b6\\u91d1\",\"cat_sn\":\"C\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-categories\"}', '2020-01-04 14:58:31', '2020-01-04 14:58:31');
INSERT INTO `admin_operation_log` VALUES ('691', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 14:58:31', '2020-01-04 14:58:31');
INSERT INTO `admin_operation_log` VALUES ('692', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:58:33', '2020-01-04 14:58:33');
INSERT INTO `admin_operation_log` VALUES ('693', '2', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:58:46', '2020-01-04 14:58:46');
INSERT INTO `admin_operation_log` VALUES ('694', '2', 'admin/patent-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:58:48', '2020-01-04 14:58:48');
INSERT INTO `admin_operation_log` VALUES ('695', '2', 'admin/patent-categories', 'POST', '127.0.0.1', '{\"name\":\"\\u7eba\\u7ec7\\u3001\\u9020\\u7eb8\",\"cat_sn\":\"D\",\"_token\":\"imNLAtpijRL9YbBuxG5lmbbZjylbi32qQzC6fAtn\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-categories\"}', '2020-01-04 14:58:55', '2020-01-04 14:58:55');
INSERT INTO `admin_operation_log` VALUES ('696', '2', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 14:58:55', '2020-01-04 14:58:55');
INSERT INTO `admin_operation_log` VALUES ('697', '2', 'admin/patent-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:58:57', '2020-01-04 14:58:57');
INSERT INTO `admin_operation_log` VALUES ('698', '2', 'admin/patent-categories', 'POST', '127.0.0.1', '{\"name\":\"\\u56fa\\u5b9a\\u5efa\\u7b51\\u7269\\uff08\\u5efa\\u7b51\\u3001\\u91c7\\u77ff\\uff09\",\"cat_sn\":\"E\",\"_token\":\"imNLAtpijRL9YbBuxG5lmbbZjylbi32qQzC6fAtn\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-categories\"}', '2020-01-04 14:59:12', '2020-01-04 14:59:12');
INSERT INTO `admin_operation_log` VALUES ('699', '2', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 14:59:12', '2020-01-04 14:59:12');
INSERT INTO `admin_operation_log` VALUES ('700', '2', 'admin/patent-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:59:16', '2020-01-04 14:59:16');
INSERT INTO `admin_operation_log` VALUES ('701', '1', 'admin/patent-categories', 'POST', '127.0.0.1', '{\"name\":\"\\u673a\\u68b0\\u5de5\\u7a0b\",\"cat_sn\":\"F\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-categories\"}', '2020-01-04 14:59:33', '2020-01-04 14:59:33');
INSERT INTO `admin_operation_log` VALUES ('702', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 14:59:34', '2020-01-04 14:59:34');
INSERT INTO `admin_operation_log` VALUES ('703', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:59:35', '2020-01-04 14:59:35');
INSERT INTO `admin_operation_log` VALUES ('704', '1', 'admin/patent-categories', 'POST', '127.0.0.1', '{\"name\":\"\\u7269\\u7406\",\"cat_sn\":\"G\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-categories\"}', '2020-01-04 14:59:45', '2020-01-04 14:59:45');
INSERT INTO `admin_operation_log` VALUES ('705', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 14:59:45', '2020-01-04 14:59:45');
INSERT INTO `admin_operation_log` VALUES ('706', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 14:59:52', '2020-01-04 14:59:52');
INSERT INTO `admin_operation_log` VALUES ('707', '1', 'admin/patent-categories', 'POST', '127.0.0.1', '{\"name\":\"\\u7535\\u5b66\",\"cat_sn\":\"H\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-categories\"}', '2020-01-04 14:59:58', '2020-01-04 14:59:58');
INSERT INTO `admin_operation_log` VALUES ('708', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 14:59:58', '2020-01-04 14:59:58');
INSERT INTO `admin_operation_log` VALUES ('709', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:01:27', '2020-01-04 15:01:27');
INSERT INTO `admin_operation_log` VALUES ('710', '1', 'admin/patent-domains/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:01:29', '2020-01-04 15:01:29');
INSERT INTO `admin_operation_log` VALUES ('711', '1', 'admin/patent-domains/create', 'GET', '127.0.0.1', '[]', '2020-01-04 15:01:31', '2020-01-04 15:01:31');
INSERT INTO `admin_operation_log` VALUES ('712', '1', 'admin/patent-domains/create', 'GET', '127.0.0.1', '[]', '2020-01-04 15:04:09', '2020-01-04 15:04:09');
INSERT INTO `admin_operation_log` VALUES ('713', '1', 'admin/patent-domains/create', 'GET', '127.0.0.1', '[]', '2020-01-04 15:04:20', '2020-01-04 15:04:20');
INSERT INTO `admin_operation_log` VALUES ('714', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:04:42', '2020-01-04 15:04:42');
INSERT INTO `admin_operation_log` VALUES ('715', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:04:43', '2020-01-04 15:04:43');
INSERT INTO `admin_operation_log` VALUES ('716', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:04:44', '2020-01-04 15:04:44');
INSERT INTO `admin_operation_log` VALUES ('717', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 15:04:50', '2020-01-04 15:04:50');
INSERT INTO `admin_operation_log` VALUES ('718', '1', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 15:05:07', '2020-01-04 15:05:07');
INSERT INTO `admin_operation_log` VALUES ('719', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:05:09', '2020-01-04 15:05:09');
INSERT INTO `admin_operation_log` VALUES ('720', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:05:10', '2020-01-04 15:05:10');
INSERT INTO `admin_operation_log` VALUES ('721', '1', 'admin/patent-categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:05:13', '2020-01-04 15:05:13');
INSERT INTO `admin_operation_log` VALUES ('722', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:05:15', '2020-01-04 15:05:15');
INSERT INTO `admin_operation_log` VALUES ('723', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:05:19', '2020-01-04 15:05:19');
INSERT INTO `admin_operation_log` VALUES ('724', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:05:21', '2020-01-04 15:05:21');
INSERT INTO `admin_operation_log` VALUES ('725', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:07:00', '2020-01-04 15:07:00');
INSERT INTO `admin_operation_log` VALUES ('726', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:07:02', '2020-01-04 15:07:02');
INSERT INTO `admin_operation_log` VALUES ('727', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:09:44', '2020-01-04 15:09:44');
INSERT INTO `admin_operation_log` VALUES ('728', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:09:45', '2020-01-04 15:09:45');
INSERT INTO `admin_operation_log` VALUES ('729', '1', 'admin/patent-domains/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:09:46', '2020-01-04 15:09:46');
INSERT INTO `admin_operation_log` VALUES ('730', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:10:46', '2020-01-04 15:10:46');
INSERT INTO `admin_operation_log` VALUES ('731', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:10:58', '2020-01-04 15:10:58');
INSERT INTO `admin_operation_log` VALUES ('732', '1', 'admin/patent-domains/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:10:59', '2020-01-04 15:10:59');
INSERT INTO `admin_operation_log` VALUES ('733', '1', 'admin/patent-domains', 'POST', '127.0.0.1', '{\"name\":\"\\u751f\\u6d3b\\u5fc5\\u9700\",\"cat_sn\":\"A\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-domains\"}', '2020-01-04 15:11:09', '2020-01-04 15:11:09');
INSERT INTO `admin_operation_log` VALUES ('734', '1', 'admin/patent-domains/create', 'GET', '127.0.0.1', '[]', '2020-01-04 15:11:09', '2020-01-04 15:11:09');
INSERT INTO `admin_operation_log` VALUES ('735', '1', 'admin/patent-domains', 'POST', '127.0.0.1', '{\"name\":\"\\u751f\\u6d3b\\u5fc5\\u9700\",\"cat_sn\":\"A\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\"}', '2020-01-04 15:13:31', '2020-01-04 15:13:31');
INSERT INTO `admin_operation_log` VALUES ('736', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:13:31', '2020-01-04 15:13:31');
INSERT INTO `admin_operation_log` VALUES ('737', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:13:32', '2020-01-04 15:13:32');
INSERT INTO `admin_operation_log` VALUES ('738', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:16:35', '2020-01-04 15:16:35');
INSERT INTO `admin_operation_log` VALUES ('739', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:17:18', '2020-01-04 15:17:18');
INSERT INTO `admin_operation_log` VALUES ('740', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:17:29', '2020-01-04 15:17:29');
INSERT INTO `admin_operation_log` VALUES ('741', '2', 'admin/patent-categories/create', 'GET', '127.0.0.1', '[]', '2020-01-04 15:18:13', '2020-01-04 15:18:13');
INSERT INTO `admin_operation_log` VALUES ('742', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:18:16', '2020-01-04 15:18:16');
INSERT INTO `admin_operation_log` VALUES ('743', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:18:18', '2020-01-04 15:18:18');
INSERT INTO `admin_operation_log` VALUES ('744', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:18:30', '2020-01-04 15:18:30');
INSERT INTO `admin_operation_log` VALUES ('745', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:18:31', '2020-01-04 15:18:31');
INSERT INTO `admin_operation_log` VALUES ('746', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:18:36', '2020-01-04 15:18:36');
INSERT INTO `admin_operation_log` VALUES ('747', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:18:38', '2020-01-04 15:18:38');
INSERT INTO `admin_operation_log` VALUES ('748', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:18:44', '2020-01-04 15:18:44');
INSERT INTO `admin_operation_log` VALUES ('749', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:18:45', '2020-01-04 15:18:45');
INSERT INTO `admin_operation_log` VALUES ('750', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:18:46', '2020-01-04 15:18:46');
INSERT INTO `admin_operation_log` VALUES ('751', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:18:47', '2020-01-04 15:18:47');
INSERT INTO `admin_operation_log` VALUES ('752', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 15:19:35', '2020-01-04 15:19:35');
INSERT INTO `admin_operation_log` VALUES ('753', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 15:20:37', '2020-01-04 15:20:37');
INSERT INTO `admin_operation_log` VALUES ('754', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:21:09', '2020-01-04 15:21:09');
INSERT INTO `admin_operation_log` VALUES ('755', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:23:15', '2020-01-04 15:23:15');
INSERT INTO `admin_operation_log` VALUES ('756', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:26:10', '2020-01-04 15:26:10');
INSERT INTO `admin_operation_log` VALUES ('757', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4e13\\u5229\\u7c7b\\u578b\",\"icon\":\"fa-bars\",\"uri\":\"patent-types\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\"}', '2020-01-04 15:26:32', '2020-01-04 15:26:32');
INSERT INTO `admin_operation_log` VALUES ('758', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-04 15:26:32', '2020-01-04 15:26:32');
INSERT INTO `admin_operation_log` VALUES ('759', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11}]\"}', '2020-01-04 15:26:37', '2020-01-04 15:26:37');
INSERT INTO `admin_operation_log` VALUES ('760', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:26:37', '2020-01-04 15:26:37');
INSERT INTO `admin_operation_log` VALUES ('761', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-04 15:26:38', '2020-01-04 15:26:38');
INSERT INTO `admin_operation_log` VALUES ('762', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:26:40', '2020-01-04 15:26:40');
INSERT INTO `admin_operation_log` VALUES ('763', '1', 'admin/patent-types', 'GET', '127.0.0.1', '[]', '2020-01-04 15:27:06', '2020-01-04 15:27:06');
INSERT INTO `admin_operation_log` VALUES ('764', '1', 'admin/patent-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:27:09', '2020-01-04 15:27:09');
INSERT INTO `admin_operation_log` VALUES ('765', '1', 'admin/patent-types/create', 'GET', '127.0.0.1', '[]', '2020-01-04 15:27:42', '2020-01-04 15:27:42');
INSERT INTO `admin_operation_log` VALUES ('766', '1', 'admin/patent-types/create', 'GET', '127.0.0.1', '[]', '2020-01-04 15:27:58', '2020-01-04 15:27:58');
INSERT INTO `admin_operation_log` VALUES ('767', '1', 'admin/patent-types/create', 'GET', '127.0.0.1', '[]', '2020-01-04 15:27:59', '2020-01-04 15:27:59');
INSERT INTO `admin_operation_log` VALUES ('768', '1', 'admin/patent-types', 'POST', '127.0.0.1', '{\"name\":\"\\u53d1\\u660e\\u4e13\\u5229\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\"}', '2020-01-04 15:30:44', '2020-01-04 15:30:44');
INSERT INTO `admin_operation_log` VALUES ('769', '1', 'admin/patent-types', 'GET', '127.0.0.1', '[]', '2020-01-04 15:30:45', '2020-01-04 15:30:45');
INSERT INTO `admin_operation_log` VALUES ('770', '1', 'admin/patent-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:30:51', '2020-01-04 15:30:51');
INSERT INTO `admin_operation_log` VALUES ('771', '1', 'admin/patent-types', 'POST', '127.0.0.1', '{\"name\":\"\\u5b9e\\u7528\\u65b0\\u578b\\u4e13\\u5229\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-types\"}', '2020-01-04 15:31:09', '2020-01-04 15:31:09');
INSERT INTO `admin_operation_log` VALUES ('772', '1', 'admin/patent-types', 'GET', '127.0.0.1', '[]', '2020-01-04 15:31:09', '2020-01-04 15:31:09');
INSERT INTO `admin_operation_log` VALUES ('773', '1', 'admin/patent-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:31:16', '2020-01-04 15:31:16');
INSERT INTO `admin_operation_log` VALUES ('774', '1', 'admin/patent-types', 'POST', '127.0.0.1', '{\"name\":\"\\u5916\\u89c2\\u8bbe\\u8ba1\\u4e13\\u5229\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-types\"}', '2020-01-04 15:31:25', '2020-01-04 15:31:25');
INSERT INTO `admin_operation_log` VALUES ('775', '1', 'admin/patent-types', 'GET', '127.0.0.1', '[]', '2020-01-04 15:31:25', '2020-01-04 15:31:25');
INSERT INTO `admin_operation_log` VALUES ('776', '1', 'admin/patent-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:32:14', '2020-01-04 15:32:14');
INSERT INTO `admin_operation_log` VALUES ('777', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:32:17', '2020-01-04 15:32:17');
INSERT INTO `admin_operation_log` VALUES ('778', '1', 'admin/patent-types', 'GET', '127.0.0.1', '[]', '2020-01-04 15:32:48', '2020-01-04 15:32:48');
INSERT INTO `admin_operation_log` VALUES ('779', '1', 'admin/patent-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:32:49', '2020-01-04 15:32:49');
INSERT INTO `admin_operation_log` VALUES ('780', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:32:55', '2020-01-04 15:32:55');
INSERT INTO `admin_operation_log` VALUES ('781', '1', 'admin/patent-types', 'GET', '127.0.0.1', '[]', '2020-01-04 15:32:56', '2020-01-04 15:32:56');
INSERT INTO `admin_operation_log` VALUES ('782', '1', 'admin/patent-types', 'GET', '127.0.0.1', '[]', '2020-01-04 15:33:56', '2020-01-04 15:33:56');
INSERT INTO `admin_operation_log` VALUES ('783', '1', 'admin/patent-types', 'GET', '127.0.0.1', '[]', '2020-01-04 15:34:00', '2020-01-04 15:34:00');
INSERT INTO `admin_operation_log` VALUES ('784', '1', 'admin/patent-types', 'GET', '127.0.0.1', '[]', '2020-01-04 15:34:27', '2020-01-04 15:34:27');
INSERT INTO `admin_operation_log` VALUES ('785', '1', 'admin/patent-types', 'GET', '127.0.0.1', '[]', '2020-01-04 15:34:29', '2020-01-04 15:34:29');
INSERT INTO `admin_operation_log` VALUES ('786', '1', 'admin/patent-types', 'GET', '127.0.0.1', '[]', '2020-01-04 15:35:30', '2020-01-04 15:35:30');
INSERT INTO `admin_operation_log` VALUES ('787', '1', 'admin/patent-types/1', 'GET', '127.0.0.1', '[]', '2020-01-04 15:36:07', '2020-01-04 15:36:07');
INSERT INTO `admin_operation_log` VALUES ('788', '1', 'admin/patent-types', 'GET', '127.0.0.1', '[]', '2020-01-04 15:36:07', '2020-01-04 15:36:07');
INSERT INTO `admin_operation_log` VALUES ('789', '1', 'admin/patent-types', 'GET', '127.0.0.1', '[]', '2020-01-04 15:36:12', '2020-01-04 15:36:12');
INSERT INTO `admin_operation_log` VALUES ('790', '1', 'admin/patent-types/1', 'GET', '127.0.0.1', '[]', '2020-01-04 15:36:16', '2020-01-04 15:36:16');
INSERT INTO `admin_operation_log` VALUES ('791', '1', 'admin/patent-types', 'GET', '127.0.0.1', '[]', '2020-01-04 15:36:16', '2020-01-04 15:36:16');
INSERT INTO `admin_operation_log` VALUES ('792', '1', 'admin/patent-types', 'GET', '127.0.0.1', '[]', '2020-01-04 15:37:38', '2020-01-04 15:37:38');
INSERT INTO `admin_operation_log` VALUES ('793', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:37:43', '2020-01-04 15:37:43');
INSERT INTO `admin_operation_log` VALUES ('794', '1', 'admin/patent-domains/1', 'GET', '127.0.0.1', '[]', '2020-01-04 15:37:46', '2020-01-04 15:37:46');
INSERT INTO `admin_operation_log` VALUES ('795', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:43:08', '2020-01-04 15:43:08');
INSERT INTO `admin_operation_log` VALUES ('796', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:43:14', '2020-01-04 15:43:14');
INSERT INTO `admin_operation_log` VALUES ('797', '1', 'admin/patent-domains/1', 'GET', '127.0.0.1', '[]', '2020-01-04 15:43:42', '2020-01-04 15:43:42');
INSERT INTO `admin_operation_log` VALUES ('798', '1', 'admin/patent-domains/1', 'GET', '127.0.0.1', '[]', '2020-01-04 15:44:25', '2020-01-04 15:44:25');
INSERT INTO `admin_operation_log` VALUES ('799', '1', 'admin/patent-domains/1', 'GET', '127.0.0.1', '[]', '2020-01-04 15:45:22', '2020-01-04 15:45:22');
INSERT INTO `admin_operation_log` VALUES ('800', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:45:36', '2020-01-04 15:45:36');
INSERT INTO `admin_operation_log` VALUES ('801', '1', 'admin/patent-domains/1', 'GET', '127.0.0.1', '[]', '2020-01-04 15:45:39', '2020-01-04 15:45:39');
INSERT INTO `admin_operation_log` VALUES ('802', '1', 'admin/patent-domains/1', 'GET', '127.0.0.1', '[]', '2020-01-04 15:45:42', '2020-01-04 15:45:42');
INSERT INTO `admin_operation_log` VALUES ('803', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:45:43', '2020-01-04 15:45:43');
INSERT INTO `admin_operation_log` VALUES ('804', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:45:44', '2020-01-04 15:45:44');
INSERT INTO `admin_operation_log` VALUES ('805', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:45:45', '2020-01-04 15:45:45');
INSERT INTO `admin_operation_log` VALUES ('806', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-04 15:46:40', '2020-01-04 15:46:40');
INSERT INTO `admin_operation_log` VALUES ('807', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:46:41', '2020-01-04 15:46:41');
INSERT INTO `admin_operation_log` VALUES ('808', '1', 'admin/patent-domains/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:46:42', '2020-01-04 15:46:42');
INSERT INTO `admin_operation_log` VALUES ('809', '1', 'admin/patent-domains/create', 'GET', '127.0.0.1', '[]', '2020-01-04 15:46:51', '2020-01-04 15:46:51');
INSERT INTO `admin_operation_log` VALUES ('810', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:46:52', '2020-01-04 15:46:52');
INSERT INTO `admin_operation_log` VALUES ('811', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:46:53', '2020-01-04 15:46:53');
INSERT INTO `admin_operation_log` VALUES ('812', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:46:54', '2020-01-04 15:46:54');
INSERT INTO `admin_operation_log` VALUES ('813', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:46:55', '2020-01-04 15:46:55');
INSERT INTO `admin_operation_log` VALUES ('814', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:46:55', '2020-01-04 15:46:55');
INSERT INTO `admin_operation_log` VALUES ('815', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:46:57', '2020-01-04 15:46:57');
INSERT INTO `admin_operation_log` VALUES ('816', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:46:57', '2020-01-04 15:46:57');
INSERT INTO `admin_operation_log` VALUES ('817', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:46:58', '2020-01-04 15:46:58');
INSERT INTO `admin_operation_log` VALUES ('818', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:47:10', '2020-01-04 15:47:10');
INSERT INTO `admin_operation_log` VALUES ('819', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:47:11', '2020-01-04 15:47:11');
INSERT INTO `admin_operation_log` VALUES ('820', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:47:12', '2020-01-04 15:47:12');
INSERT INTO `admin_operation_log` VALUES ('821', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:47:13', '2020-01-04 15:47:13');
INSERT INTO `admin_operation_log` VALUES ('822', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:47:16', '2020-01-04 15:47:16');
INSERT INTO `admin_operation_log` VALUES ('823', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:48:17', '2020-01-04 15:48:17');
INSERT INTO `admin_operation_log` VALUES ('824', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:48:40', '2020-01-04 15:48:40');
INSERT INTO `admin_operation_log` VALUES ('825', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:48:43', '2020-01-04 15:48:43');
INSERT INTO `admin_operation_log` VALUES ('826', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:48:44', '2020-01-04 15:48:44');
INSERT INTO `admin_operation_log` VALUES ('827', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4e13\\u5229\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\"}', '2020-01-04 15:48:58', '2020-01-04 15:48:58');
INSERT INTO `admin_operation_log` VALUES ('828', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-04 15:48:58', '2020-01-04 15:48:58');
INSERT INTO `admin_operation_log` VALUES ('829', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11}]}]\"}', '2020-01-04 15:49:13', '2020-01-04 15:49:13');
INSERT INTO `admin_operation_log` VALUES ('830', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:13', '2020-01-04 15:49:13');
INSERT INTO `admin_operation_log` VALUES ('831', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-04 15:49:14', '2020-01-04 15:49:14');
INSERT INTO `admin_operation_log` VALUES ('832', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:17', '2020-01-04 15:49:17');
INSERT INTO `admin_operation_log` VALUES ('833', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:18', '2020-01-04 15:49:18');
INSERT INTO `admin_operation_log` VALUES ('834', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:19', '2020-01-04 15:49:19');
INSERT INTO `admin_operation_log` VALUES ('835', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:19', '2020-01-04 15:49:19');
INSERT INTO `admin_operation_log` VALUES ('836', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:20', '2020-01-04 15:49:20');
INSERT INTO `admin_operation_log` VALUES ('837', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:21', '2020-01-04 15:49:21');
INSERT INTO `admin_operation_log` VALUES ('838', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:21', '2020-01-04 15:49:21');
INSERT INTO `admin_operation_log` VALUES ('839', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:22', '2020-01-04 15:49:22');
INSERT INTO `admin_operation_log` VALUES ('840', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:27', '2020-01-04 15:49:27');
INSERT INTO `admin_operation_log` VALUES ('841', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:27', '2020-01-04 15:49:27');
INSERT INTO `admin_operation_log` VALUES ('842', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:28', '2020-01-04 15:49:28');
INSERT INTO `admin_operation_log` VALUES ('843', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:29', '2020-01-04 15:49:29');
INSERT INTO `admin_operation_log` VALUES ('844', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:29', '2020-01-04 15:49:29');
INSERT INTO `admin_operation_log` VALUES ('845', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:30', '2020-01-04 15:49:30');
INSERT INTO `admin_operation_log` VALUES ('846', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:49:31', '2020-01-04 15:49:31');
INSERT INTO `admin_operation_log` VALUES ('847', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:33', '2020-01-04 15:49:33');
INSERT INTO `admin_operation_log` VALUES ('848', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:33', '2020-01-04 15:49:33');
INSERT INTO `admin_operation_log` VALUES ('849', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:34', '2020-01-04 15:49:34');
INSERT INTO `admin_operation_log` VALUES ('850', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:36', '2020-01-04 15:49:36');
INSERT INTO `admin_operation_log` VALUES ('851', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:36', '2020-01-04 15:49:36');
INSERT INTO `admin_operation_log` VALUES ('852', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:37', '2020-01-04 15:49:37');
INSERT INTO `admin_operation_log` VALUES ('853', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:37', '2020-01-04 15:49:37');
INSERT INTO `admin_operation_log` VALUES ('854', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:38', '2020-01-04 15:49:38');
INSERT INTO `admin_operation_log` VALUES ('855', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:39', '2020-01-04 15:49:39');
INSERT INTO `admin_operation_log` VALUES ('856', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:49:40', '2020-01-04 15:49:40');
INSERT INTO `admin_operation_log` VALUES ('857', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:52:28', '2020-01-04 15:52:28');
INSERT INTO `admin_operation_log` VALUES ('858', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:53:18', '2020-01-04 15:53:18');
INSERT INTO `admin_operation_log` VALUES ('859', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:53:20', '2020-01-04 15:53:20');
INSERT INTO `admin_operation_log` VALUES ('860', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:53:21', '2020-01-04 15:53:21');
INSERT INTO `admin_operation_log` VALUES ('861', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:54:08', '2020-01-04 15:54:08');
INSERT INTO `admin_operation_log` VALUES ('862', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:54:49', '2020-01-04 15:54:49');
INSERT INTO `admin_operation_log` VALUES ('863', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-04 15:54:54', '2020-01-04 15:54:54');
INSERT INTO `admin_operation_log` VALUES ('864', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:56:50', '2020-01-04 15:56:50');
INSERT INTO `admin_operation_log` VALUES ('865', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 15:56:52', '2020-01-04 15:56:52');
INSERT INTO `admin_operation_log` VALUES ('866', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-04 16:03:33', '2020-01-04 16:03:33');
INSERT INTO `admin_operation_log` VALUES ('867', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"company_tel\":\"0371-63302335\",\"company_email\":\"zhimaipr@163.com\",\"company_address\":\"\\u90d1\\u5dde\\u5e02\\u9ad8\\u65b0\\u533a\\u957f\\u693f\\u8def\\u4e0e\\u68a7\\u6850\\u8857\\u4ea4\\u53c9\\u53e3\\u6cb3\\u5357\\u7701\\u56fd\\u5bb6\\u5927\\u5b66\\u79d1\\u6280\\u56ed\\u5b75\\u53161\\u53f7\\u697c3A16\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Address\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\"}', '2020-01-04 16:03:41', '2020-01-04 16:03:41');
INSERT INTO `admin_operation_log` VALUES ('868', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-04 16:03:50', '2020-01-04 16:03:50');
INSERT INTO `admin_operation_log` VALUES ('869', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"company_tel\":\"0371-63302335\",\"company_email\":\"zhimaipr@163.com\",\"company_address\":\"\\u90d1\\u5dde\\u5e02\\u9ad8\\u65b0\\u533a\\u957f\\u693f\\u8def\\u4e0e\\u68a7\\u6850\\u8857\\u4ea4\\u53c9\\u53e3\\u6cb3\\u5357\\u7701\\u56fd\\u5bb6\\u5927\\u5b66\\u79d1\\u6280\\u56ed\\u5b75\\u53161\\u53f7\\u697c3A16\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Address\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\"}', '2020-01-04 16:07:01', '2020-01-04 16:07:01');
INSERT INTO `admin_operation_log` VALUES ('870', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 16:09:35', '2020-01-04 16:09:35');
INSERT INTO `admin_operation_log` VALUES ('871', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-04 16:09:37', '2020-01-04 16:09:37');
INSERT INTO `admin_operation_log` VALUES ('872', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-04 16:10:10', '2020-01-04 16:10:10');
INSERT INTO `admin_operation_log` VALUES ('873', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"company_tel\":\"0371-63302335\",\"company_email\":\"zhimaipr@163.com\",\"company_address\":\"\\u90d1\\u5dde\\u5e02\\u9ad8\\u65b0\\u533a\\u957f\\u693f\\u8def\\u4e0e\\u68a7\\u6850\\u8857\\u4ea4\\u53c9\\u53e3\\u6cb3\\u5357\\u7701\\u56fd\\u5bb6\\u5927\\u5b66\\u79d1\\u6280\\u56ed\\u5b75\\u53161\\u53f7\\u697c3A16\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Address\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\"}', '2020-01-04 16:10:20', '2020-01-04 16:10:20');
INSERT INTO `admin_operation_log` VALUES ('874', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-04 16:10:20', '2020-01-04 16:10:20');
INSERT INTO `admin_operation_log` VALUES ('875', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-04 16:10:22', '2020-01-04 16:10:22');
INSERT INTO `admin_operation_log` VALUES ('876', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-04 16:11:42', '2020-01-04 16:11:42');
INSERT INTO `admin_operation_log` VALUES ('877', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-04 16:11:51', '2020-01-04 16:11:51');
INSERT INTO `admin_operation_log` VALUES ('878', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"site-title\":\"111\",\"site-keywords\":\"11\",\"site-description\":\"22\",\"site-copyright\":null,\"site-icp\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\"}', '2020-01-04 16:11:56', '2020-01-04 16:11:56');
INSERT INTO `admin_operation_log` VALUES ('879', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-04 16:11:56', '2020-01-04 16:11:56');
INSERT INTO `admin_operation_log` VALUES ('880', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\",\"_pjax\":\"#pjax-container\"}', '2020-01-04 16:12:01', '2020-01-04 16:12:01');
INSERT INTO `admin_operation_log` VALUES ('881', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-04 16:12:01', '2020-01-04 16:12:01');
INSERT INTO `admin_operation_log` VALUES ('882', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"company_tel\":\"0371-63302335\",\"company_email\":\"zhimaipr@163.com\",\"company_address\":\"\\u90d1\\u5dde\\u5e02\\u9ad8\\u65b0\\u533a\\u957f\\u693f\\u8def\\u4e0e\\u68a7\\u6850\\u8857\\u4ea4\\u53c9\\u53e3\\u6cb3\\u5357\\u7701\\u56fd\\u5bb6\\u5927\\u5b66\\u79d1\\u6280\\u56ed\\u5b75\\u53161\\u53f7\\u697c3A16\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Address\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\"}', '2020-01-04 16:12:51', '2020-01-04 16:12:51');
INSERT INTO `admin_operation_log` VALUES ('883', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-04 16:12:51', '2020-01-04 16:12:51');
INSERT INTO `admin_operation_log` VALUES ('884', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-04 16:12:53', '2020-01-04 16:12:53');
INSERT INTO `admin_operation_log` VALUES ('885', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-04 16:13:22', '2020-01-04 16:13:22');
INSERT INTO `admin_operation_log` VALUES ('886', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-04 16:14:54', '2020-01-04 16:14:54');
INSERT INTO `admin_operation_log` VALUES ('887', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"company_tel\":\"0371-63302335\",\"company_email\":\"zhimaipr@163.com\",\"company_address\":\"\\u90d1\\u5dde\\u5e02\\u9ad8\\u65b0\\u533a\\u957f\\u693f\\u8def\\u4e0e\\u68a7\\u6850\\u8857\\u4ea4\\u53c9\\u53e3\\u6cb3\\u5357\\u7701\\u56fd\\u5bb6\\u5927\\u5b66\\u79d1\\u6280\\u56ed\\u5b75\\u53161\\u53f7\\u697c3A16\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Address\",\"_token\":\"kOC4n6cwVkPHMfl5QfTcyIBeqzzXGbhB9BzQt8ar\"}', '2020-01-04 16:15:58', '2020-01-04 16:15:58');
INSERT INTO `admin_operation_log` VALUES ('888', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-04 16:15:58', '2020-01-04 16:15:58');
INSERT INTO `admin_operation_log` VALUES ('889', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-04 16:16:00', '2020-01-04 16:16:00');
INSERT INTO `admin_operation_log` VALUES ('890', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"email\",\"_pjax\":\"#pjax-container\"}', '2020-01-04 16:16:02', '2020-01-04 16:16:02');
INSERT INTO `admin_operation_log` VALUES ('891', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-04 16:16:03', '2020-01-04 16:16:03');
INSERT INTO `admin_operation_log` VALUES ('892', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-04 16:16:05', '2020-01-04 16:16:05');
INSERT INTO `admin_operation_log` VALUES ('893', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-04 16:16:06', '2020-01-04 16:16:06');
INSERT INTO `admin_operation_log` VALUES ('894', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2020-01-04 16:16:07', '2020-01-04 16:16:07');
INSERT INTO `admin_operation_log` VALUES ('895', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 16:16:28', '2020-01-04 16:16:28');
INSERT INTO `admin_operation_log` VALUES ('896', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 16:16:28', '2020-01-04 16:16:28');
INSERT INTO `admin_operation_log` VALUES ('897', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 16:16:29', '2020-01-04 16:16:29');
INSERT INTO `admin_operation_log` VALUES ('898', '1', 'admin/patent-types', 'GET', '127.0.0.1', '[]', '2020-01-04 16:16:30', '2020-01-04 16:16:30');
INSERT INTO `admin_operation_log` VALUES ('899', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 16:16:32', '2020-01-04 16:16:32');
INSERT INTO `admin_operation_log` VALUES ('900', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 16:16:32', '2020-01-04 16:16:32');
INSERT INTO `admin_operation_log` VALUES ('901', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 16:16:33', '2020-01-04 16:16:33');
INSERT INTO `admin_operation_log` VALUES ('902', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 16:16:34', '2020-01-04 16:16:34');
INSERT INTO `admin_operation_log` VALUES ('903', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 16:16:34', '2020-01-04 16:16:34');
INSERT INTO `admin_operation_log` VALUES ('904', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 16:16:35', '2020-01-04 16:16:35');
INSERT INTO `admin_operation_log` VALUES ('905', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 16:16:37', '2020-01-04 16:16:37');
INSERT INTO `admin_operation_log` VALUES ('906', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 16:16:37', '2020-01-04 16:16:37');
INSERT INTO `admin_operation_log` VALUES ('907', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-01-05 02:31:21', '2020-01-05 02:31:21');
INSERT INTO `admin_operation_log` VALUES ('908', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 02:31:25', '2020-01-05 02:31:25');
INSERT INTO `admin_operation_log` VALUES ('909', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-05 02:31:27', '2020-01-05 02:31:27');
INSERT INTO `admin_operation_log` VALUES ('910', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"company_tel\":\"0371-63302335\",\"company_email\":\"zhimaipr@163.com\",\"company_address\":\"\\u90d1\\u5dde\\u5e02\\u9ad8\\u65b0\\u533a\\u957f\\u693f\\u8def\\u4e0e\\u68a7\\u6850\\u8857\\u4ea4\\u53c9\\u53e3\\u6cb3\\u5357\\u7701\\u56fd\\u5bb6\\u5927\\u5b66\\u79d1\\u6280\\u56ed\\u5b75\\u53161\\u53f7\\u697c3A16\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Address\",\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\"}', '2020-01-05 02:31:39', '2020-01-05 02:31:39');
INSERT INTO `admin_operation_log` VALUES ('911', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 02:41:19', '2020-01-05 02:41:19');
INSERT INTO `admin_operation_log` VALUES ('912', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"company_tel\":\"0371-63302335\",\"company_email\":\"zhimaipr@163.com\",\"company_address\":\"\\u90d1\\u5dde\\u5e02\\u9ad8\\u65b0\\u533a\\u957f\\u693f\\u8def\\u4e0e\\u68a7\\u6850\\u8857\\u4ea4\\u53c9\\u53e3\\u6cb3\\u5357\\u7701\\u56fd\\u5bb6\\u5927\\u5b66\\u79d1\\u6280\\u56ed\\u5b75\\u53161\\u53f7\\u697c3A16\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Address\",\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\"}', '2020-01-05 02:41:25', '2020-01-05 02:41:25');
INSERT INTO `admin_operation_log` VALUES ('913', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-05 03:32:04', '2020-01-05 03:32:04');
INSERT INTO `admin_operation_log` VALUES ('914', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 03:32:04', '2020-01-05 03:32:04');
INSERT INTO `admin_operation_log` VALUES ('915', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 03:32:04', '2020-01-05 03:32:04');
INSERT INTO `admin_operation_log` VALUES ('916', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 03:32:05', '2020-01-05 03:32:05');
INSERT INTO `admin_operation_log` VALUES ('917', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 03:32:05', '2020-01-05 03:32:05');
INSERT INTO `admin_operation_log` VALUES ('918', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 03:32:05', '2020-01-05 03:32:05');
INSERT INTO `admin_operation_log` VALUES ('919', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 03:32:05', '2020-01-05 03:32:05');
INSERT INTO `admin_operation_log` VALUES ('920', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 03:32:06', '2020-01-05 03:32:06');
INSERT INTO `admin_operation_log` VALUES ('921', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 03:32:06', '2020-01-05 03:32:06');
INSERT INTO `admin_operation_log` VALUES ('922', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 03:32:06', '2020-01-05 03:32:06');
INSERT INTO `admin_operation_log` VALUES ('923', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 03:32:06', '2020-01-05 03:32:06');
INSERT INTO `admin_operation_log` VALUES ('924', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 03:32:07', '2020-01-05 03:32:07');
INSERT INTO `admin_operation_log` VALUES ('925', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 03:32:07', '2020-01-05 03:32:07');
INSERT INTO `admin_operation_log` VALUES ('926', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 03:32:07', '2020-01-05 03:32:07');
INSERT INTO `admin_operation_log` VALUES ('927', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 03:32:07', '2020-01-05 03:32:07');
INSERT INTO `admin_operation_log` VALUES ('928', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 03:32:08', '2020-01-05 03:32:08');
INSERT INTO `admin_operation_log` VALUES ('929', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-05 03:32:13', '2020-01-05 03:32:13');
INSERT INTO `admin_operation_log` VALUES ('930', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-01-05 03:32:18', '2020-01-05 03:32:18');
INSERT INTO `admin_operation_log` VALUES ('931', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 03:32:21', '2020-01-05 03:32:21');
INSERT INTO `admin_operation_log` VALUES ('932', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-01-05 03:32:21', '2020-01-05 03:32:21');
INSERT INTO `admin_operation_log` VALUES ('933', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-01-05 03:32:37', '2020-01-05 03:32:37');
INSERT INTO `admin_operation_log` VALUES ('934', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 03:32:39', '2020-01-05 03:32:39');
INSERT INTO `admin_operation_log` VALUES ('935', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-05 03:32:40', '2020-01-05 03:32:40');
INSERT INTO `admin_operation_log` VALUES ('936', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 03:36:07', '2020-01-05 03:36:07');
INSERT INTO `admin_operation_log` VALUES ('937', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"company_tel\":\"0371-63302335\",\"company_email\":\"zhimaipr@163.com\",\"company_address\":\"\\u90d1\\u5dde\\u5e02\\u9ad8\\u65b0\\u533a\\u957f\\u693f\\u8def\\u4e0e\\u68a7\\u6850\\u8857\\u4ea4\\u53c9\\u53e3\\u6cb3\\u5357\\u7701\\u56fd\\u5bb6\\u5927\\u5b66\\u79d1\\u6280\\u56ed\\u5b75\\u53161\\u53f7\\u697c3A16\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Address\",\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\"}', '2020-01-05 03:36:12', '2020-01-05 03:36:12');
INSERT INTO `admin_operation_log` VALUES ('938', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-05 03:36:15', '2020-01-05 03:36:15');
INSERT INTO `admin_operation_log` VALUES ('939', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"company_tel\":\"0371-63302335\",\"company_email\":\"zhimaipr@163.com\",\"company_address\":\"\\u90d1\\u5dde\\u5e02\\u9ad8\\u65b0\\u533a\\u957f\\u693f\\u8def\\u4e0e\\u68a7\\u6850\\u8857\\u4ea4\\u53c9\\u53e3\\u6cb3\\u5357\\u7701\\u56fd\\u5bb6\\u5927\\u5b66\\u79d1\\u6280\\u56ed\\u5b75\\u53161\\u53f7\\u697c3A16\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Address\",\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\"}', '2020-01-05 03:37:15', '2020-01-05 03:37:15');
INSERT INTO `admin_operation_log` VALUES ('940', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\",\"_pjax\":\"#pjax-container\"}', '2020-01-05 03:41:09', '2020-01-05 03:41:09');
INSERT INTO `admin_operation_log` VALUES ('941', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"company_tel\":\"0371-63302335\",\"company_email\":\"zhimaipr@163.com\",\"company_address\":\"\\u90d1\\u5dde\\u5e02\\u9ad8\\u65b0\\u533a\\u957f\\u693f\\u8def\\u4e0e\\u68a7\\u6850\\u8857\\u4ea4\\u53c9\\u53e3\\u6cb3\\u5357\\u7701\\u56fd\\u5bb6\\u5927\\u5b66\\u79d1\\u6280\\u56ed\\u5b75\\u53161\\u53f7\\u697c3A16\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Address\",\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\"}', '2020-01-05 03:43:03', '2020-01-05 03:43:03');
INSERT INTO `admin_operation_log` VALUES ('942', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 03:43:03', '2020-01-05 03:43:03');
INSERT INTO `admin_operation_log` VALUES ('943', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 03:43:05', '2020-01-05 03:43:05');
INSERT INTO `admin_operation_log` VALUES ('944', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 03:44:25', '2020-01-05 03:44:25');
INSERT INTO `admin_operation_log` VALUES ('945', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 03:44:49', '2020-01-05 03:44:49');
INSERT INTO `admin_operation_log` VALUES ('946', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 03:44:49', '2020-01-05 03:44:49');
INSERT INTO `admin_operation_log` VALUES ('947', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 03:44:50', '2020-01-05 03:44:50');
INSERT INTO `admin_operation_log` VALUES ('948', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-05 03:46:10', '2020-01-05 03:46:10');
INSERT INTO `admin_operation_log` VALUES ('949', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 03:46:13', '2020-01-05 03:46:13');
INSERT INTO `admin_operation_log` VALUES ('950', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 03:46:18', '2020-01-05 03:46:18');
INSERT INTO `admin_operation_log` VALUES ('951', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 03:46:19', '2020-01-05 03:46:19');
INSERT INTO `admin_operation_log` VALUES ('952', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4e13\\u5229\\u5217\\u8868\",\"icon\":\"fa-bars\",\"uri\":\"patents\",\"roles\":[null],\"permission\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\"}', '2020-01-05 03:46:35', '2020-01-05 03:46:35');
INSERT INTO `admin_operation_log` VALUES ('953', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 03:46:36', '2020-01-05 03:46:36');
INSERT INTO `admin_operation_log` VALUES ('954', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":13}]}]\"}', '2020-01-05 03:46:41', '2020-01-05 03:46:41');
INSERT INTO `admin_operation_log` VALUES ('955', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 03:46:41', '2020-01-05 03:46:41');
INSERT INTO `admin_operation_log` VALUES ('956', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 03:46:43', '2020-01-05 03:46:43');
INSERT INTO `admin_operation_log` VALUES ('957', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 03:46:46', '2020-01-05 03:46:46');
INSERT INTO `admin_operation_log` VALUES ('958', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 03:49:04', '2020-01-05 03:49:04');
INSERT INTO `admin_operation_log` VALUES ('959', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 03:49:11', '2020-01-05 03:49:11');
INSERT INTO `admin_operation_log` VALUES ('960', '1', 'admin/patents/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 03:49:12', '2020-01-05 03:49:12');
INSERT INTO `admin_operation_log` VALUES ('961', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 03:49:12', '2020-01-05 03:49:12');
INSERT INTO `admin_operation_log` VALUES ('962', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 03:49:21', '2020-01-05 03:49:21');
INSERT INTO `admin_operation_log` VALUES ('963', '1', 'admin/patents/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 03:49:23', '2020-01-05 03:49:23');
INSERT INTO `admin_operation_log` VALUES ('964', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 03:49:26', '2020-01-05 03:49:26');
INSERT INTO `admin_operation_log` VALUES ('965', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 03:49:31', '2020-01-05 03:49:31');
INSERT INTO `admin_operation_log` VALUES ('966', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 03:49:33', '2020-01-05 03:49:33');
INSERT INTO `admin_operation_log` VALUES ('967', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 03:56:52', '2020-01-05 03:56:52');
INSERT INTO `admin_operation_log` VALUES ('968', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 03:57:51', '2020-01-05 03:57:51');
INSERT INTO `admin_operation_log` VALUES ('969', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 03:58:57', '2020-01-05 03:58:57');
INSERT INTO `admin_operation_log` VALUES ('970', '1', 'admin/patents/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 03:58:57', '2020-01-05 03:58:57');
INSERT INTO `admin_operation_log` VALUES ('971', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 03:58:57', '2020-01-05 03:58:57');
INSERT INTO `admin_operation_log` VALUES ('972', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 03:59:34', '2020-01-05 03:59:34');
INSERT INTO `admin_operation_log` VALUES ('973', '1', 'admin/patents/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 03:59:35', '2020-01-05 03:59:35');
INSERT INTO `admin_operation_log` VALUES ('974', '1', 'admin/patents', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"electron_user_id\":\"1\",\"patent_sn\":\"23434\",\"patent_name\":\"fsdf\",\"college_id\":\"1\",\"Patent_person\":\"12\",\"inventor\":\"22\",\"patent_domain_id\":\"1\",\"patent_type_id\":\"1\",\"patent_state_id\":\"1\",\"cert_state_id\":\"1\",\"apply_date\":\"2020-01-05 03:59:35\",\"patent_remark\":\"2\",\"is_monitor\":\"on\",\"monitor_state\":\"on\",\"monitor_date\":\"2020-01-05 03:59:35\",\"fee_remark\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patents\"}', '2020-01-05 04:00:50', '2020-01-05 04:00:50');
INSERT INTO `admin_operation_log` VALUES ('975', '1', 'admin/patents/create', 'GET', '127.0.0.1', '[]', '2020-01-05 04:00:50', '2020-01-05 04:00:50');
INSERT INTO `admin_operation_log` VALUES ('976', '1', 'admin/patents', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"electron_user_id\":\"1\",\"patent_sn\":\"23434\",\"patent_name\":\"fsdf\",\"college_id\":\"1\",\"Patent_person\":\"12\",\"inventor\":\"22\",\"patent_domain_id\":\"1\",\"patent_type_id\":\"1\",\"patent_state_id\":\"1\",\"cert_state_id\":\"1\",\"apply_date\":\"2020-01-05 03:59:35\",\"patent_remark\":\"2\",\"is_monitor\":\"on\",\"monitor_state\":\"on\",\"monitor_date\":\"2020-01-05 03:59:35\",\"fee_remark\":\"333\",\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\"}', '2020-01-05 04:00:57', '2020-01-05 04:00:57');
INSERT INTO `admin_operation_log` VALUES ('977', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:00:57', '2020-01-05 04:00:57');
INSERT INTO `admin_operation_log` VALUES ('978', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:01:00', '2020-01-05 04:01:00');
INSERT INTO `admin_operation_log` VALUES ('979', '1', 'admin/patents/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 04:01:39', '2020-01-05 04:01:39');
INSERT INTO `admin_operation_log` VALUES ('980', '1', 'admin/patents/1', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"electron_user_id\":\"1\",\"patent_sn\":\"23434\",\"patent_name\":\"fsdf\",\"college_id\":\"1\",\"Patent_person\":null,\"inventor\":\"22\",\"patent_domain_id\":\"1\",\"patent_type_id\":\"1\",\"patent_state_id\":\"1\",\"cert_state_id\":\"1\",\"apply_date\":\"2020-01-05 03:59:35\",\"patent_remark\":\"2\",\"is_monitor\":\"on\",\"monitor_state\":\"on\",\"monitor_date\":\"2020-01-05 03:59:35\",\"fee_remark\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patents\"}', '2020-01-05 04:01:43', '2020-01-05 04:01:43');
INSERT INTO `admin_operation_log` VALUES ('981', '1', 'admin/patents/1/edit', 'GET', '127.0.0.1', '[]', '2020-01-05 04:01:43', '2020-01-05 04:01:43');
INSERT INTO `admin_operation_log` VALUES ('982', '1', 'admin/patents/1/edit', 'GET', '127.0.0.1', '[]', '2020-01-05 04:02:16', '2020-01-05 04:02:16');
INSERT INTO `admin_operation_log` VALUES ('983', '1', 'admin/patents/1', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"electron_user_id\":\"1\",\"patent_sn\":\"23434\",\"patent_name\":\"fsdf\",\"college_id\":\"1\",\"Patent_person\":null,\"inventor\":\"22\",\"patent_domain_id\":\"1\",\"patent_type_id\":\"1\",\"patent_state_id\":\"1\",\"cert_state_id\":\"1\",\"apply_date\":\"2020-01-05 03:59:35\",\"patent_remark\":null,\"is_monitor\":\"on\",\"monitor_state\":\"on\",\"monitor_date\":\"2020-01-05 03:59:35\",\"fee_remark\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patents\"}', '2020-01-05 04:02:21', '2020-01-05 04:02:21');
INSERT INTO `admin_operation_log` VALUES ('984', '1', 'admin/patents/1/edit', 'GET', '127.0.0.1', '[]', '2020-01-05 04:02:21', '2020-01-05 04:02:21');
INSERT INTO `admin_operation_log` VALUES ('985', '1', 'admin/patents/1', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"electron_user_id\":\"1\",\"patent_sn\":\"23434\",\"patent_name\":\"fsdf\",\"college_id\":\"1\",\"Patent_person\":null,\"inventor\":\"22\",\"patent_domain_id\":\"1\",\"patent_type_id\":\"1\",\"patent_state_id\":\"1\",\"cert_state_id\":\"1\",\"apply_date\":\"2020-01-05 03:59:35\",\"patent_remark\":null,\"is_monitor\":\"on\",\"monitor_state\":\"on\",\"monitor_date\":\"2020-01-05 03:59:35\",\"fee_remark\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_method\":\"PUT\"}', '2020-01-05 04:03:14', '2020-01-05 04:03:14');
INSERT INTO `admin_operation_log` VALUES ('986', '1', 'admin/patents/1/edit', 'GET', '127.0.0.1', '[]', '2020-01-05 04:03:14', '2020-01-05 04:03:14');
INSERT INTO `admin_operation_log` VALUES ('987', '1', 'admin/patents/1', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"electron_user_id\":\"1\",\"patent_sn\":\"23434\",\"patent_name\":\"fsdf\",\"college_id\":\"1\",\"Patent_person\":\"4545\",\"inventor\":\"22\",\"patent_domain_id\":\"1\",\"patent_type_id\":\"1\",\"patent_state_id\":\"1\",\"cert_state_id\":\"1\",\"apply_date\":\"2020-01-05 03:59:35\",\"patent_remark\":null,\"is_monitor\":\"on\",\"monitor_state\":\"on\",\"monitor_date\":\"2020-01-05 03:59:35\",\"fee_remark\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_method\":\"PUT\"}', '2020-01-05 04:03:27', '2020-01-05 04:03:27');
INSERT INTO `admin_operation_log` VALUES ('988', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:03:27', '2020-01-05 04:03:27');
INSERT INTO `admin_operation_log` VALUES ('989', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:03:31', '2020-01-05 04:03:31');
INSERT INTO `admin_operation_log` VALUES ('990', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:07:47', '2020-01-05 04:07:47');
INSERT INTO `admin_operation_log` VALUES ('991', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:07:48', '2020-01-05 04:07:48');
INSERT INTO `admin_operation_log` VALUES ('992', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 04:07:50', '2020-01-05 04:07:50');
INSERT INTO `admin_operation_log` VALUES ('993', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 04:07:53', '2020-01-05 04:07:53');
INSERT INTO `admin_operation_log` VALUES ('994', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 04:07:53', '2020-01-05 04:07:53');
INSERT INTO `admin_operation_log` VALUES ('995', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-05 04:08:26', '2020-01-05 04:08:26');
INSERT INTO `admin_operation_log` VALUES ('996', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 04:08:27', '2020-01-05 04:08:27');
INSERT INTO `admin_operation_log` VALUES ('997', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:08:29', '2020-01-05 04:08:29');
INSERT INTO `admin_operation_log` VALUES ('998', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:08:58', '2020-01-05 04:08:58');
INSERT INTO `admin_operation_log` VALUES ('999', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:09:00', '2020-01-05 04:09:00');
INSERT INTO `admin_operation_log` VALUES ('1000', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:10:31', '2020-01-05 04:10:31');
INSERT INTO `admin_operation_log` VALUES ('1001', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:14:05', '2020-01-05 04:14:05');
INSERT INTO `admin_operation_log` VALUES ('1002', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:14:24', '2020-01-05 04:14:24');
INSERT INTO `admin_operation_log` VALUES ('1003', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:14:45', '2020-01-05 04:14:45');
INSERT INTO `admin_operation_log` VALUES ('1004', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:16:59', '2020-01-05 04:16:59');
INSERT INTO `admin_operation_log` VALUES ('1005', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:17:08', '2020-01-05 04:17:08');
INSERT INTO `admin_operation_log` VALUES ('1006', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:22:05', '2020-01-05 04:22:05');
INSERT INTO `admin_operation_log` VALUES ('1007', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:22:07', '2020-01-05 04:22:07');
INSERT INTO `admin_operation_log` VALUES ('1008', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:23:24', '2020-01-05 04:23:24');
INSERT INTO `admin_operation_log` VALUES ('1009', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:23:26', '2020-01-05 04:23:26');
INSERT INTO `admin_operation_log` VALUES ('1010', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:25:10', '2020-01-05 04:25:10');
INSERT INTO `admin_operation_log` VALUES ('1011', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:25:11', '2020-01-05 04:25:11');
INSERT INTO `admin_operation_log` VALUES ('1012', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:25:21', '2020-01-05 04:25:21');
INSERT INTO `admin_operation_log` VALUES ('1013', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:25:24', '2020-01-05 04:25:24');
INSERT INTO `admin_operation_log` VALUES ('1014', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:25:31', '2020-01-05 04:25:31');
INSERT INTO `admin_operation_log` VALUES ('1015', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:25:33', '2020-01-05 04:25:33');
INSERT INTO `admin_operation_log` VALUES ('1016', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:25:39', '2020-01-05 04:25:39');
INSERT INTO `admin_operation_log` VALUES ('1017', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:25:57', '2020-01-05 04:25:57');
INSERT INTO `admin_operation_log` VALUES ('1018', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:26:31', '2020-01-05 04:26:31');
INSERT INTO `admin_operation_log` VALUES ('1019', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:27:23', '2020-01-05 04:27:23');
INSERT INTO `admin_operation_log` VALUES ('1020', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:28:55', '2020-01-05 04:28:55');
INSERT INTO `admin_operation_log` VALUES ('1021', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:29:20', '2020-01-05 04:29:20');
INSERT INTO `admin_operation_log` VALUES ('1022', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:29:39', '2020-01-05 04:29:39');
INSERT INTO `admin_operation_log` VALUES ('1023', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:30:42', '2020-01-05 04:30:42');
INSERT INTO `admin_operation_log` VALUES ('1024', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:30:51', '2020-01-05 04:30:51');
INSERT INTO `admin_operation_log` VALUES ('1025', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:31:05', '2020-01-05 04:31:05');
INSERT INTO `admin_operation_log` VALUES ('1026', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:31:09', '2020-01-05 04:31:09');
INSERT INTO `admin_operation_log` VALUES ('1027', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:31:32', '2020-01-05 04:31:32');
INSERT INTO `admin_operation_log` VALUES ('1028', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:32:00', '2020-01-05 04:32:00');
INSERT INTO `admin_operation_log` VALUES ('1029', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:32:30', '2020-01-05 04:32:30');
INSERT INTO `admin_operation_log` VALUES ('1030', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:32:40', '2020-01-05 04:32:40');
INSERT INTO `admin_operation_log` VALUES ('1031', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:32:55', '2020-01-05 04:32:55');
INSERT INTO `admin_operation_log` VALUES ('1032', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:33:53', '2020-01-05 04:33:53');
INSERT INTO `admin_operation_log` VALUES ('1033', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:42:10', '2020-01-05 04:42:10');
INSERT INTO `admin_operation_log` VALUES ('1034', '1', 'admin/patents/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 04:42:53', '2020-01-05 04:42:53');
INSERT INTO `admin_operation_log` VALUES ('1035', '1', 'admin/patents/1', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"electron_user_id\":\"1\",\"patent_sn\":\"2018101912996049\",\"patent_name\":\"\\u4e00\\u79cd\\u56ed\\u6797\\u7eff\\u5316\\u65bd\\u5de5\\u5212\\u7ebf\\u88c5\\u7f6e\",\"college_id\":\"1\",\"Patent_person\":null,\"inventor\":\"22\",\"patent_domain_id\":\"1\",\"patent_type_id\":\"1\",\"patent_state_id\":\"1\",\"cert_state_id\":\"1\",\"apply_date\":\"2020-01-05 12:03:27\",\"patent_remark\":null,\"is_monitor\":\"on\",\"monitor_state\":\"on\",\"monitor_date\":\"2020-01-05 03:59:35\",\"fee_remark\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patents\"}', '2020-01-05 04:43:09', '2020-01-05 04:43:09');
INSERT INTO `admin_operation_log` VALUES ('1036', '1', 'admin/patents/1/edit', 'GET', '127.0.0.1', '[]', '2020-01-05 04:43:09', '2020-01-05 04:43:09');
INSERT INTO `admin_operation_log` VALUES ('1037', '1', 'admin/patents/1/edit', 'GET', '127.0.0.1', '[]', '2020-01-05 04:43:59', '2020-01-05 04:43:59');
INSERT INTO `admin_operation_log` VALUES ('1038', '1', 'admin/patents/1', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"electron_user_id\":\"1\",\"patent_sn\":\"2019112000391260\",\"patent_name\":\"\\u4e00\\u79cd\\u56ed\\u6797\\u7eff\\u5316\\u65bd\\u5de5\\u5212\\u7ebf\\u88c5\\u7f6e\",\"college_id\":\"1\",\"patent_person\":\"\\u6731\\u4e9a\\u83f2\",\"inventor\":\"22\",\"patent_domain_id\":\"1\",\"patent_type_id\":\"1\",\"patent_state_id\":\"1\",\"cert_state_id\":\"1\",\"apply_date\":\"2020-01-05 12:03:27\",\"patent_remark\":null,\"is_monitor\":\"on\",\"monitor_state\":\"on\",\"monitor_date\":\"2020-01-05 03:59:35\",\"fee_remark\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patents\"}', '2020-01-05 04:44:28', '2020-01-05 04:44:28');
INSERT INTO `admin_operation_log` VALUES ('1039', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:44:28', '2020-01-05 04:44:28');
INSERT INTO `admin_operation_log` VALUES ('1040', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:44:30', '2020-01-05 04:44:30');
INSERT INTO `admin_operation_log` VALUES ('1041', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:47:25', '2020-01-05 04:47:25');
INSERT INTO `admin_operation_log` VALUES ('1042', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:47:52', '2020-01-05 04:47:52');
INSERT INTO `admin_operation_log` VALUES ('1043', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 04:48:28', '2020-01-05 04:48:28');
INSERT INTO `admin_operation_log` VALUES ('1044', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:00:52', '2020-01-05 05:00:52');
INSERT INTO `admin_operation_log` VALUES ('1045', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:00:53', '2020-01-05 05:00:53');
INSERT INTO `admin_operation_log` VALUES ('1046', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:00:54', '2020-01-05 05:00:54');
INSERT INTO `admin_operation_log` VALUES ('1047', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:00:55', '2020-01-05 05:00:55');
INSERT INTO `admin_operation_log` VALUES ('1048', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:00:56', '2020-01-05 05:00:56');
INSERT INTO `admin_operation_log` VALUES ('1049', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:00:57', '2020-01-05 05:00:57');
INSERT INTO `admin_operation_log` VALUES ('1050', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:00:58', '2020-01-05 05:00:58');
INSERT INTO `admin_operation_log` VALUES ('1051', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:00:59', '2020-01-05 05:00:59');
INSERT INTO `admin_operation_log` VALUES ('1052', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:01:00', '2020-01-05 05:01:00');
INSERT INTO `admin_operation_log` VALUES ('1053', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:01:00', '2020-01-05 05:01:00');
INSERT INTO `admin_operation_log` VALUES ('1054', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:01:01', '2020-01-05 05:01:01');
INSERT INTO `admin_operation_log` VALUES ('1055', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:01:02', '2020-01-05 05:01:02');
INSERT INTO `admin_operation_log` VALUES ('1056', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:01:03', '2020-01-05 05:01:03');
INSERT INTO `admin_operation_log` VALUES ('1057', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:01:03', '2020-01-05 05:01:03');
INSERT INTO `admin_operation_log` VALUES ('1058', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:01:05', '2020-01-05 05:01:05');
INSERT INTO `admin_operation_log` VALUES ('1059', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:01:07', '2020-01-05 05:01:07');
INSERT INTO `admin_operation_log` VALUES ('1060', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:11:57', '2020-01-05 05:11:57');
INSERT INTO `admin_operation_log` VALUES ('1061', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:14:53', '2020-01-05 05:14:53');
INSERT INTO `admin_operation_log` VALUES ('1062', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:14:54', '2020-01-05 05:14:54');
INSERT INTO `admin_operation_log` VALUES ('1063', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:14:56', '2020-01-05 05:14:56');
INSERT INTO `admin_operation_log` VALUES ('1064', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4e13\\u5229\\u72b6\\u6001\",\"icon\":\"fa-bars\",\"uri\":\"patent-states\",\"roles\":[null],\"permission\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\"}', '2020-01-05 05:15:16', '2020-01-05 05:15:16');
INSERT INTO `admin_operation_log` VALUES ('1065', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 05:15:17', '2020-01-05 05:15:17');
INSERT INTO `admin_operation_log` VALUES ('1066', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":14},{\\\"id\\\":13}]}]\"}', '2020-01-05 05:15:25', '2020-01-05 05:15:25');
INSERT INTO `admin_operation_log` VALUES ('1067', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:15:25', '2020-01-05 05:15:25');
INSERT INTO `admin_operation_log` VALUES ('1068', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 05:15:28', '2020-01-05 05:15:28');
INSERT INTO `admin_operation_log` VALUES ('1069', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:15:31', '2020-01-05 05:15:31');
INSERT INTO `admin_operation_log` VALUES ('1070', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:15:33', '2020-01-05 05:15:33');
INSERT INTO `admin_operation_log` VALUES ('1071', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:15:34', '2020-01-05 05:15:34');
INSERT INTO `admin_operation_log` VALUES ('1072', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:15:35', '2020-01-05 05:15:35');
INSERT INTO `admin_operation_log` VALUES ('1073', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:15:46', '2020-01-05 05:15:46');
INSERT INTO `admin_operation_log` VALUES ('1074', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:15:48', '2020-01-05 05:15:48');
INSERT INTO `admin_operation_log` VALUES ('1075', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:15:55', '2020-01-05 05:15:55');
INSERT INTO `admin_operation_log` VALUES ('1076', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:15:57', '2020-01-05 05:15:57');
INSERT INTO `admin_operation_log` VALUES ('1077', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '[]', '2020-01-05 05:20:51', '2020-01-05 05:20:51');
INSERT INTO `admin_operation_log` VALUES ('1078', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:20:55', '2020-01-05 05:20:55');
INSERT INTO `admin_operation_log` VALUES ('1079', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:21:07', '2020-01-05 05:21:07');
INSERT INTO `admin_operation_log` VALUES ('1080', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:22:18', '2020-01-05 05:22:18');
INSERT INTO `admin_operation_log` VALUES ('1081', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:22:18', '2020-01-05 05:22:18');
INSERT INTO `admin_operation_log` VALUES ('1082', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '[]', '2020-01-05 05:22:46', '2020-01-05 05:22:46');
INSERT INTO `admin_operation_log` VALUES ('1083', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '[]', '2020-01-05 05:22:48', '2020-01-05 05:22:48');
INSERT INTO `admin_operation_log` VALUES ('1084', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '[]', '2020-01-05 05:22:49', '2020-01-05 05:22:49');
INSERT INTO `admin_operation_log` VALUES ('1085', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '[]', '2020-01-05 05:22:49', '2020-01-05 05:22:49');
INSERT INTO `admin_operation_log` VALUES ('1086', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '[]', '2020-01-05 05:22:50', '2020-01-05 05:22:50');
INSERT INTO `admin_operation_log` VALUES ('1087', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '[]', '2020-01-05 05:22:51', '2020-01-05 05:22:51');
INSERT INTO `admin_operation_log` VALUES ('1088', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '[]', '2020-01-05 05:22:51', '2020-01-05 05:22:51');
INSERT INTO `admin_operation_log` VALUES ('1089', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '[]', '2020-01-05 05:22:52', '2020-01-05 05:22:52');
INSERT INTO `admin_operation_log` VALUES ('1090', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '[]', '2020-01-05 05:22:52', '2020-01-05 05:22:52');
INSERT INTO `admin_operation_log` VALUES ('1091', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '[]', '2020-01-05 05:22:53', '2020-01-05 05:22:53');
INSERT INTO `admin_operation_log` VALUES ('1092', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '[]', '2020-01-05 05:23:16', '2020-01-05 05:23:16');
INSERT INTO `admin_operation_log` VALUES ('1093', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u7b49\\u5f85\\u7533\\u8bf7\\u8d39\",\"cert_state_id\":\"1\",\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\"}', '2020-01-05 05:23:58', '2020-01-05 05:23:58');
INSERT INTO `admin_operation_log` VALUES ('1094', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:23:58', '2020-01-05 05:23:58');
INSERT INTO `admin_operation_log` VALUES ('1095', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:24:00', '2020-01-05 05:24:00');
INSERT INTO `admin_operation_log` VALUES ('1096', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u51c6\\u5907\\u8fdb\\u5165\\u65b0\\u578b\\u521d\\u5ba1\",\"cert_state_id\":\"1\",\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:24:15', '2020-01-05 05:24:15');
INSERT INTO `admin_operation_log` VALUES ('1097', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:24:15', '2020-01-05 05:24:15');
INSERT INTO `admin_operation_log` VALUES ('1098', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:24:27', '2020-01-05 05:24:27');
INSERT INTO `admin_operation_log` VALUES ('1099', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u7b49\\u5f85\\u63d0\\u6848\",\"cert_state_id\":\"1\",\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:24:33', '2020-01-05 05:24:33');
INSERT INTO `admin_operation_log` VALUES ('1100', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:24:33', '2020-01-05 05:24:33');
INSERT INTO `admin_operation_log` VALUES ('1101', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:24:40', '2020-01-05 05:24:40');
INSERT INTO `admin_operation_log` VALUES ('1102', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u65b0\\u6848\\u5ba1\\u67e5\",\"cert_state_id\":\"1\",\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:24:44', '2020-01-05 05:24:44');
INSERT INTO `admin_operation_log` VALUES ('1103', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:24:44', '2020-01-05 05:24:44');
INSERT INTO `admin_operation_log` VALUES ('1104', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:25:09', '2020-01-05 05:25:09');
INSERT INTO `admin_operation_log` VALUES ('1105', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:25:16', '2020-01-05 05:25:16');
INSERT INTO `admin_operation_log` VALUES ('1106', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u521d\\u5ba1\\u5f85\\u7b54\\u590d\",\"cert_state_id\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:25:18', '2020-01-05 05:25:18');
INSERT INTO `admin_operation_log` VALUES ('1107', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '[]', '2020-01-05 05:25:18', '2020-01-05 05:25:18');
INSERT INTO `admin_operation_log` VALUES ('1108', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u521d\\u5ba1\\u5f85\\u7b54\\u590d\",\"cert_state_id\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\"}', '2020-01-05 05:27:39', '2020-01-05 05:27:39');
INSERT INTO `admin_operation_log` VALUES ('1109', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:27:40', '2020-01-05 05:27:40');
INSERT INTO `admin_operation_log` VALUES ('1110', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:27:41', '2020-01-05 05:27:41');
INSERT INTO `admin_operation_log` VALUES ('1111', '1', 'admin/patent-states/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:27:52', '2020-01-05 05:27:52');
INSERT INTO `admin_operation_log` VALUES ('1112', '1', 'admin/patent-states/5', 'PUT', '127.0.0.1', '{\"name\":\"\\u521d\\u5ba1\\u5f85\\u7b54\\u590d\",\"cert_state_id\":\"1\",\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:27:55', '2020-01-05 05:27:55');
INSERT INTO `admin_operation_log` VALUES ('1113', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:27:55', '2020-01-05 05:27:55');
INSERT INTO `admin_operation_log` VALUES ('1114', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:27:56', '2020-01-05 05:27:56');
INSERT INTO `admin_operation_log` VALUES ('1115', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:28:08', '2020-01-05 05:28:08');
INSERT INTO `admin_operation_log` VALUES ('1116', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u56de\\u6848\\u5ba1\\u67e5\",\"cert_state_id\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:28:21', '2020-01-05 05:28:21');
INSERT INTO `admin_operation_log` VALUES ('1117', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:28:21', '2020-01-05 05:28:21');
INSERT INTO `admin_operation_log` VALUES ('1118', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:28:23', '2020-01-05 05:28:23');
INSERT INTO `admin_operation_log` VALUES ('1119', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u4e00\\u901a\\u51fa\\u6848\\u5f85\\u7b54\\u590d\",\"cert_state_id\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:28:25', '2020-01-05 05:28:25');
INSERT INTO `admin_operation_log` VALUES ('1120', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:28:25', '2020-01-05 05:28:25');
INSERT INTO `admin_operation_log` VALUES ('1121', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:28:26', '2020-01-05 05:28:26');
INSERT INTO `admin_operation_log` VALUES ('1122', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u4e00\\u901a\\u56de\\u6848\\u5b9e\\u5ba1\",\"cert_state_id\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:28:34', '2020-01-05 05:28:34');
INSERT INTO `admin_operation_log` VALUES ('1123', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:28:34', '2020-01-05 05:28:34');
INSERT INTO `admin_operation_log` VALUES ('1124', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:28:36', '2020-01-05 05:28:36');
INSERT INTO `admin_operation_log` VALUES ('1125', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u4e2d\\u901a\\u51fa\\u6848\\u5f85\\u7b54\\u590d\",\"cert_state_id\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:28:44', '2020-01-05 05:28:44');
INSERT INTO `admin_operation_log` VALUES ('1126', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:28:44', '2020-01-05 05:28:44');
INSERT INTO `admin_operation_log` VALUES ('1127', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:28:52', '2020-01-05 05:28:52');
INSERT INTO `admin_operation_log` VALUES ('1128', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u4e2d\\u901a\\u56de\\u6848\\u5b9e\\u5ba1\",\"cert_state_id\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:28:55', '2020-01-05 05:28:55');
INSERT INTO `admin_operation_log` VALUES ('1129', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:28:55', '2020-01-05 05:28:55');
INSERT INTO `admin_operation_log` VALUES ('1130', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:29:03', '2020-01-05 05:29:03');
INSERT INTO `admin_operation_log` VALUES ('1131', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u5f85\\u8d28\\u68c0\\u62bd\\u6848\",\"cert_state_id\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:29:05', '2020-01-05 05:29:05');
INSERT INTO `admin_operation_log` VALUES ('1132', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:29:05', '2020-01-05 05:29:05');
INSERT INTO `admin_operation_log` VALUES ('1133', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:29:15', '2020-01-05 05:29:15');
INSERT INTO `admin_operation_log` VALUES ('1134', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u5f85\\u53d1\\u6388\\u6743\\u529e\\u767b\\u901a\\u77e5\\u4e66\",\"cert_state_id\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:29:18', '2020-01-05 05:29:18');
INSERT INTO `admin_operation_log` VALUES ('1135', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:29:18', '2020-01-05 05:29:18');
INSERT INTO `admin_operation_log` VALUES ('1136', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:29:26', '2020-01-05 05:29:26');
INSERT INTO `admin_operation_log` VALUES ('1137', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u7b49\\u5e74\\u767b\\u5370\\u8d39\",\"cert_state_id\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:29:28', '2020-01-05 05:29:28');
INSERT INTO `admin_operation_log` VALUES ('1138', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:29:28', '2020-01-05 05:29:28');
INSERT INTO `admin_operation_log` VALUES ('1139', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:29:36', '2020-01-05 05:29:36');
INSERT INTO `admin_operation_log` VALUES ('1140', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u9a73\\u56de\\u51b3\\u5b9a\",\"cert_state_id\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:29:38', '2020-01-05 05:29:38');
INSERT INTO `admin_operation_log` VALUES ('1141', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:29:39', '2020-01-05 05:29:39');
INSERT INTO `admin_operation_log` VALUES ('1142', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:29:46', '2020-01-05 05:29:46');
INSERT INTO `admin_operation_log` VALUES ('1143', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u9a73\\u56de\\u7b49\\u590d\\u5ba1\\u8bf7\\u6c42\",\"cert_state_id\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:29:48', '2020-01-05 05:29:48');
INSERT INTO `admin_operation_log` VALUES ('1144', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:29:48', '2020-01-05 05:29:48');
INSERT INTO `admin_operation_log` VALUES ('1145', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:29:55', '2020-01-05 05:29:55');
INSERT INTO `admin_operation_log` VALUES ('1146', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u5f85\\u516c\\u544a\",\"cert_state_id\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:29:57', '2020-01-05 05:29:57');
INSERT INTO `admin_operation_log` VALUES ('1147', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:29:58', '2020-01-05 05:29:58');
INSERT INTO `admin_operation_log` VALUES ('1148', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:30:05', '2020-01-05 05:30:05');
INSERT INTO `admin_operation_log` VALUES ('1149', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u516c\\u544a\\u5c01\\u5377\",\"cert_state_id\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:30:08', '2020-01-05 05:30:08');
INSERT INTO `admin_operation_log` VALUES ('1150', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:30:08', '2020-01-05 05:30:08');
INSERT INTO `admin_operation_log` VALUES ('1151', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:30:14', '2020-01-05 05:30:14');
INSERT INTO `admin_operation_log` VALUES ('1152', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u7b49\\u5f85\\u9881\\u8bc1\\u516c\\u544a\",\"cert_state_id\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:30:16', '2020-01-05 05:30:16');
INSERT INTO `admin_operation_log` VALUES ('1153', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:30:16', '2020-01-05 05:30:16');
INSERT INTO `admin_operation_log` VALUES ('1154', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:30:25', '2020-01-05 05:30:25');
INSERT INTO `admin_operation_log` VALUES ('1155', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u4e13\\u5229\\u6743\\u7ef4\\u6301\",\"cert_state_id\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:30:27', '2020-01-05 05:30:27');
INSERT INTO `admin_operation_log` VALUES ('1156', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:30:27', '2020-01-05 05:30:27');
INSERT INTO `admin_operation_log` VALUES ('1157', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:30:34', '2020-01-05 05:30:34');
INSERT INTO `admin_operation_log` VALUES ('1158', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u7b49\\u5e74\\u6ede\\u7eb3\\u91d1\",\"cert_state_id\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:30:36', '2020-01-05 05:30:36');
INSERT INTO `admin_operation_log` VALUES ('1159', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:30:36', '2020-01-05 05:30:36');
INSERT INTO `admin_operation_log` VALUES ('1160', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:30:44', '2020-01-05 05:30:44');
INSERT INTO `admin_operation_log` VALUES ('1161', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u672a\\u7f34\\u5e74\\u8d39\\u4e13\\u5229\\u6743\\u7ec8\\u6b62\",\"cert_state_id\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:30:46', '2020-01-05 05:30:46');
INSERT INTO `admin_operation_log` VALUES ('1162', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:30:46', '2020-01-05 05:30:46');
INSERT INTO `admin_operation_log` VALUES ('1163', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:30:55', '2020-01-05 05:30:55');
INSERT INTO `admin_operation_log` VALUES ('1164', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u7b49\\u6062\\u590d\",\"cert_state_id\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:30:58', '2020-01-05 05:30:58');
INSERT INTO `admin_operation_log` VALUES ('1165', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:30:58', '2020-01-05 05:30:58');
INSERT INTO `admin_operation_log` VALUES ('1166', '1', 'admin/patent-states/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:31:06', '2020-01-05 05:31:06');
INSERT INTO `admin_operation_log` VALUES ('1167', '1', 'admin/patent-states', 'POST', '127.0.0.1', '{\"name\":\"\\u672a\\u7f34\\u5e74\\u8d39\\u7ec8\\u6b62\\u5931\\u6548\",\"cert_state_id\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/patent-states\"}', '2020-01-05 05:31:08', '2020-01-05 05:31:08');
INSERT INTO `admin_operation_log` VALUES ('1168', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 05:31:08', '2020-01-05 05:31:08');
INSERT INTO `admin_operation_log` VALUES ('1169', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:31:11', '2020-01-05 05:31:11');
INSERT INTO `admin_operation_log` VALUES ('1170', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"per_page\":\"50\",\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:31:15', '2020-01-05 05:31:15');
INSERT INTO `admin_operation_log` VALUES ('1171', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-05 05:31:40', '2020-01-05 05:31:40');
INSERT INTO `admin_operation_log` VALUES ('1172', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-05 05:31:50', '2020-01-05 05:31:50');
INSERT INTO `admin_operation_log` VALUES ('1173', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-05 05:32:00', '2020-01-05 05:32:00');
INSERT INTO `admin_operation_log` VALUES ('1174', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-05 05:32:01', '2020-01-05 05:32:01');
INSERT INTO `admin_operation_log` VALUES ('1175', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-05 05:32:02', '2020-01-05 05:32:02');
INSERT INTO `admin_operation_log` VALUES ('1176', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-05 05:32:07', '2020-01-05 05:32:07');
INSERT INTO `admin_operation_log` VALUES ('1177', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-05 05:32:09', '2020-01-05 05:32:09');
INSERT INTO `admin_operation_log` VALUES ('1178', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-05 05:32:10', '2020-01-05 05:32:10');
INSERT INTO `admin_operation_log` VALUES ('1179', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-05 05:33:12', '2020-01-05 05:33:12');
INSERT INTO `admin_operation_log` VALUES ('1180', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-05 05:33:18', '2020-01-05 05:33:18');
INSERT INTO `admin_operation_log` VALUES ('1181', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-05 05:39:17', '2020-01-05 05:39:17');
INSERT INTO `admin_operation_log` VALUES ('1182', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"type\":[null],\"reason\":\"45\",\"_model\":\"App_PatentState\",\"_key\":\"1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23\",\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2020-01-05 05:39:34', '2020-01-05 05:39:34');
INSERT INTO `admin_operation_log` VALUES ('1183', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"per_page\":\"50\",\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:39:34', '2020-01-05 05:39:34');
INSERT INTO `admin_operation_log` VALUES ('1184', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-05 05:39:59', '2020-01-05 05:39:59');
INSERT INTO `admin_operation_log` VALUES ('1185', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-05 05:40:12', '2020-01-05 05:40:12');
INSERT INTO `admin_operation_log` VALUES ('1186', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-05 05:40:17', '2020-01-05 05:40:17');
INSERT INTO `admin_operation_log` VALUES ('1187', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-05 05:40:29', '2020-01-05 05:40:29');
INSERT INTO `admin_operation_log` VALUES ('1188', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:40:33', '2020-01-05 05:40:33');
INSERT INTO `admin_operation_log` VALUES ('1189', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:40:35', '2020-01-05 05:40:35');
INSERT INTO `admin_operation_log` VALUES ('1190', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:40:36', '2020-01-05 05:40:36');
INSERT INTO `admin_operation_log` VALUES ('1191', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:40:38', '2020-01-05 05:40:38');
INSERT INTO `admin_operation_log` VALUES ('1192', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:40:40', '2020-01-05 05:40:40');
INSERT INTO `admin_operation_log` VALUES ('1193', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:40:41', '2020-01-05 05:40:41');
INSERT INTO `admin_operation_log` VALUES ('1194', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:40:41', '2020-01-05 05:40:41');
INSERT INTO `admin_operation_log` VALUES ('1195', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:40:42', '2020-01-05 05:40:42');
INSERT INTO `admin_operation_log` VALUES ('1196', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:40:44', '2020-01-05 05:40:44');
INSERT INTO `admin_operation_log` VALUES ('1197', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:40:44', '2020-01-05 05:40:44');
INSERT INTO `admin_operation_log` VALUES ('1198', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:40:45', '2020-01-05 05:40:45');
INSERT INTO `admin_operation_log` VALUES ('1199', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:40:49', '2020-01-05 05:40:49');
INSERT INTO `admin_operation_log` VALUES ('1200', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:40:51', '2020-01-05 05:40:51');
INSERT INTO `admin_operation_log` VALUES ('1201', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:40:52', '2020-01-05 05:40:52');
INSERT INTO `admin_operation_log` VALUES ('1202', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:40:54', '2020-01-05 05:40:54');
INSERT INTO `admin_operation_log` VALUES ('1203', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:40:56', '2020-01-05 05:40:56');
INSERT INTO `admin_operation_log` VALUES ('1204', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:40:57', '2020-01-05 05:40:57');
INSERT INTO `admin_operation_log` VALUES ('1205', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:40:57', '2020-01-05 05:40:57');
INSERT INTO `admin_operation_log` VALUES ('1206', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '[]', '2020-01-05 05:41:42', '2020-01-05 05:41:42');
INSERT INTO `admin_operation_log` VALUES ('1207', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:42:13', '2020-01-05 05:42:13');
INSERT INTO `admin_operation_log` VALUES ('1208', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:42:15', '2020-01-05 05:42:15');
INSERT INTO `admin_operation_log` VALUES ('1209', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:44:05', '2020-01-05 05:44:05');
INSERT INTO `admin_operation_log` VALUES ('1210', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:44:08', '2020-01-05 05:44:08');
INSERT INTO `admin_operation_log` VALUES ('1211', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:44:29', '2020-01-05 05:44:29');
INSERT INTO `admin_operation_log` VALUES ('1212', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:45:13', '2020-01-05 05:45:13');
INSERT INTO `admin_operation_log` VALUES ('1213', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:47:45', '2020-01-05 05:47:45');
INSERT INTO `admin_operation_log` VALUES ('1214', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:47:53', '2020-01-05 05:47:53');
INSERT INTO `admin_operation_log` VALUES ('1215', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:49:51', '2020-01-05 05:49:51');
INSERT INTO `admin_operation_log` VALUES ('1216', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:49:53', '2020-01-05 05:49:53');
INSERT INTO `admin_operation_log` VALUES ('1217', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:53:57', '2020-01-05 05:53:57');
INSERT INTO `admin_operation_log` VALUES ('1218', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:55:11', '2020-01-05 05:55:11');
INSERT INTO `admin_operation_log` VALUES ('1219', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:55:12', '2020-01-05 05:55:12');
INSERT INTO `admin_operation_log` VALUES ('1220', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:57:42', '2020-01-05 05:57:42');
INSERT INTO `admin_operation_log` VALUES ('1221', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:57:44', '2020-01-05 05:57:44');
INSERT INTO `admin_operation_log` VALUES ('1222', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:58:01', '2020-01-05 05:58:01');
INSERT INTO `admin_operation_log` VALUES ('1223', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:58:03', '2020-01-05 05:58:03');
INSERT INTO `admin_operation_log` VALUES ('1224', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:58:04', '2020-01-05 05:58:04');
INSERT INTO `admin_operation_log` VALUES ('1225', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:58:19', '2020-01-05 05:58:19');
INSERT INTO `admin_operation_log` VALUES ('1226', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:59:15', '2020-01-05 05:59:15');
INSERT INTO `admin_operation_log` VALUES ('1227', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:59:17', '2020-01-05 05:59:17');
INSERT INTO `admin_operation_log` VALUES ('1228', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:59:18', '2020-01-05 05:59:18');
INSERT INTO `admin_operation_log` VALUES ('1229', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:59:19', '2020-01-05 05:59:19');
INSERT INTO `admin_operation_log` VALUES ('1230', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:59:19', '2020-01-05 05:59:19');
INSERT INTO `admin_operation_log` VALUES ('1231', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 05:59:39', '2020-01-05 05:59:39');
INSERT INTO `admin_operation_log` VALUES ('1232', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 05:59:47', '2020-01-05 05:59:47');
INSERT INTO `admin_operation_log` VALUES ('1233', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 06:00:22', '2020-01-05 06:00:22');
INSERT INTO `admin_operation_log` VALUES ('1234', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 06:00:23', '2020-01-05 06:00:23');
INSERT INTO `admin_operation_log` VALUES ('1235', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:00:24', '2020-01-05 06:00:24');
INSERT INTO `admin_operation_log` VALUES ('1236', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:00:37', '2020-01-05 06:00:37');
INSERT INTO `admin_operation_log` VALUES ('1237', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:00:51', '2020-01-05 06:00:51');
INSERT INTO `admin_operation_log` VALUES ('1238', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:01:11', '2020-01-05 06:01:11');
INSERT INTO `admin_operation_log` VALUES ('1239', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:01:34', '2020-01-05 06:01:34');
INSERT INTO `admin_operation_log` VALUES ('1240', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:02:38', '2020-01-05 06:02:38');
INSERT INTO `admin_operation_log` VALUES ('1241', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:04:27', '2020-01-05 06:04:27');
INSERT INTO `admin_operation_log` VALUES ('1242', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:04:29', '2020-01-05 06:04:29');
INSERT INTO `admin_operation_log` VALUES ('1243', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:04:50', '2020-01-05 06:04:50');
INSERT INTO `admin_operation_log` VALUES ('1244', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:05:08', '2020-01-05 06:05:08');
INSERT INTO `admin_operation_log` VALUES ('1245', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:05:14', '2020-01-05 06:05:14');
INSERT INTO `admin_operation_log` VALUES ('1246', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:05:51', '2020-01-05 06:05:51');
INSERT INTO `admin_operation_log` VALUES ('1247', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:06:51', '2020-01-05 06:06:51');
INSERT INTO `admin_operation_log` VALUES ('1248', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:08:04', '2020-01-05 06:08:04');
INSERT INTO `admin_operation_log` VALUES ('1249', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:08:05', '2020-01-05 06:08:05');
INSERT INTO `admin_operation_log` VALUES ('1250', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:08:51', '2020-01-05 06:08:51');
INSERT INTO `admin_operation_log` VALUES ('1251', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:11:23', '2020-01-05 06:11:23');
INSERT INTO `admin_operation_log` VALUES ('1252', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:11:30', '2020-01-05 06:11:30');
INSERT INTO `admin_operation_log` VALUES ('1253', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:11:31', '2020-01-05 06:11:31');
INSERT INTO `admin_operation_log` VALUES ('1254', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:11:35', '2020-01-05 06:11:35');
INSERT INTO `admin_operation_log` VALUES ('1255', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:11:45', '2020-01-05 06:11:45');
INSERT INTO `admin_operation_log` VALUES ('1256', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:12:21', '2020-01-05 06:12:21');
INSERT INTO `admin_operation_log` VALUES ('1257', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:12:23', '2020-01-05 06:12:23');
INSERT INTO `admin_operation_log` VALUES ('1258', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:12:37', '2020-01-05 06:12:37');
INSERT INTO `admin_operation_log` VALUES ('1259', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:12:38', '2020-01-05 06:12:38');
INSERT INTO `admin_operation_log` VALUES ('1260', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:12:39', '2020-01-05 06:12:39');
INSERT INTO `admin_operation_log` VALUES ('1261', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:12:40', '2020-01-05 06:12:40');
INSERT INTO `admin_operation_log` VALUES ('1262', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:21:05', '2020-01-05 06:21:05');
INSERT INTO `admin_operation_log` VALUES ('1263', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:21:15', '2020-01-05 06:21:15');
INSERT INTO `admin_operation_log` VALUES ('1264', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:21:17', '2020-01-05 06:21:17');
INSERT INTO `admin_operation_log` VALUES ('1265', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:21:18', '2020-01-05 06:21:18');
INSERT INTO `admin_operation_log` VALUES ('1266', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:21:18', '2020-01-05 06:21:18');
INSERT INTO `admin_operation_log` VALUES ('1267', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:21:19', '2020-01-05 06:21:19');
INSERT INTO `admin_operation_log` VALUES ('1268', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:21:20', '2020-01-05 06:21:20');
INSERT INTO `admin_operation_log` VALUES ('1269', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:21:27', '2020-01-05 06:21:27');
INSERT INTO `admin_operation_log` VALUES ('1270', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:27:16', '2020-01-05 06:27:16');
INSERT INTO `admin_operation_log` VALUES ('1271', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:27:32', '2020-01-05 06:27:32');
INSERT INTO `admin_operation_log` VALUES ('1272', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:27:33', '2020-01-05 06:27:33');
INSERT INTO `admin_operation_log` VALUES ('1273', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:27:34', '2020-01-05 06:27:34');
INSERT INTO `admin_operation_log` VALUES ('1274', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:27:43', '2020-01-05 06:27:43');
INSERT INTO `admin_operation_log` VALUES ('1275', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:27:45', '2020-01-05 06:27:45');
INSERT INTO `admin_operation_log` VALUES ('1276', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:28:25', '2020-01-05 06:28:25');
INSERT INTO `admin_operation_log` VALUES ('1277', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:28:26', '2020-01-05 06:28:26');
INSERT INTO `admin_operation_log` VALUES ('1278', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:28:38', '2020-01-05 06:28:38');
INSERT INTO `admin_operation_log` VALUES ('1279', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:28:39', '2020-01-05 06:28:39');
INSERT INTO `admin_operation_log` VALUES ('1280', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:31:43', '2020-01-05 06:31:43');
INSERT INTO `admin_operation_log` VALUES ('1281', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:31:44', '2020-01-05 06:31:44');
INSERT INTO `admin_operation_log` VALUES ('1282', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:31:45', '2020-01-05 06:31:45');
INSERT INTO `admin_operation_log` VALUES ('1283', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:31:46', '2020-01-05 06:31:46');
INSERT INTO `admin_operation_log` VALUES ('1284', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:33:34', '2020-01-05 06:33:34');
INSERT INTO `admin_operation_log` VALUES ('1285', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:33:36', '2020-01-05 06:33:36');
INSERT INTO `admin_operation_log` VALUES ('1286', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:33:45', '2020-01-05 06:33:45');
INSERT INTO `admin_operation_log` VALUES ('1287', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:33:47', '2020-01-05 06:33:47');
INSERT INTO `admin_operation_log` VALUES ('1288', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:33:59', '2020-01-05 06:33:59');
INSERT INTO `admin_operation_log` VALUES ('1289', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:34:00', '2020-01-05 06:34:00');
INSERT INTO `admin_operation_log` VALUES ('1290', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:34:01', '2020-01-05 06:34:01');
INSERT INTO `admin_operation_log` VALUES ('1291', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:34:37', '2020-01-05 06:34:37');
INSERT INTO `admin_operation_log` VALUES ('1292', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:34:38', '2020-01-05 06:34:38');
INSERT INTO `admin_operation_log` VALUES ('1293', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:34:39', '2020-01-05 06:34:39');
INSERT INTO `admin_operation_log` VALUES ('1294', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:35:25', '2020-01-05 06:35:25');
INSERT INTO `admin_operation_log` VALUES ('1295', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:36:37', '2020-01-05 06:36:37');
INSERT INTO `admin_operation_log` VALUES ('1296', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:36:38', '2020-01-05 06:36:38');
INSERT INTO `admin_operation_log` VALUES ('1297', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:36:38', '2020-01-05 06:36:38');
INSERT INTO `admin_operation_log` VALUES ('1298', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:36:59', '2020-01-05 06:36:59');
INSERT INTO `admin_operation_log` VALUES ('1299', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:37:27', '2020-01-05 06:37:27');
INSERT INTO `admin_operation_log` VALUES ('1300', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:37:28', '2020-01-05 06:37:28');
INSERT INTO `admin_operation_log` VALUES ('1301', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:37:29', '2020-01-05 06:37:29');
INSERT INTO `admin_operation_log` VALUES ('1302', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:37:30', '2020-01-05 06:37:30');
INSERT INTO `admin_operation_log` VALUES ('1303', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:42:52', '2020-01-05 06:42:52');
INSERT INTO `admin_operation_log` VALUES ('1304', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:43:28', '2020-01-05 06:43:28');
INSERT INTO `admin_operation_log` VALUES ('1305', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:43:29', '2020-01-05 06:43:29');
INSERT INTO `admin_operation_log` VALUES ('1306', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:43:51', '2020-01-05 06:43:51');
INSERT INTO `admin_operation_log` VALUES ('1307', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:43:53', '2020-01-05 06:43:53');
INSERT INTO `admin_operation_log` VALUES ('1308', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:43:53', '2020-01-05 06:43:53');
INSERT INTO `admin_operation_log` VALUES ('1309', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:43:54', '2020-01-05 06:43:54');
INSERT INTO `admin_operation_log` VALUES ('1310', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:46:20', '2020-01-05 06:46:20');
INSERT INTO `admin_operation_log` VALUES ('1311', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:46:40', '2020-01-05 06:46:40');
INSERT INTO `admin_operation_log` VALUES ('1312', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:47:15', '2020-01-05 06:47:15');
INSERT INTO `admin_operation_log` VALUES ('1313', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:47:58', '2020-01-05 06:47:58');
INSERT INTO `admin_operation_log` VALUES ('1314', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:47:59', '2020-01-05 06:47:59');
INSERT INTO `admin_operation_log` VALUES ('1315', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:48:01', '2020-01-05 06:48:01');
INSERT INTO `admin_operation_log` VALUES ('1316', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:50:15', '2020-01-05 06:50:15');
INSERT INTO `admin_operation_log` VALUES ('1317', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:50:16', '2020-01-05 06:50:16');
INSERT INTO `admin_operation_log` VALUES ('1318', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:50:21', '2020-01-05 06:50:21');
INSERT INTO `admin_operation_log` VALUES ('1319', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:50:23', '2020-01-05 06:50:23');
INSERT INTO `admin_operation_log` VALUES ('1320', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:50:40', '2020-01-05 06:50:40');
INSERT INTO `admin_operation_log` VALUES ('1321', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:50:42', '2020-01-05 06:50:42');
INSERT INTO `admin_operation_log` VALUES ('1322', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:50:42', '2020-01-05 06:50:42');
INSERT INTO `admin_operation_log` VALUES ('1323', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:50:43', '2020-01-05 06:50:43');
INSERT INTO `admin_operation_log` VALUES ('1324', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:50:45', '2020-01-05 06:50:45');
INSERT INTO `admin_operation_log` VALUES ('1325', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:50:57', '2020-01-05 06:50:57');
INSERT INTO `admin_operation_log` VALUES ('1326', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:51:55', '2020-01-05 06:51:55');
INSERT INTO `admin_operation_log` VALUES ('1327', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:51:56', '2020-01-05 06:51:56');
INSERT INTO `admin_operation_log` VALUES ('1328', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:51:56', '2020-01-05 06:51:56');
INSERT INTO `admin_operation_log` VALUES ('1329', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:51:57', '2020-01-05 06:51:57');
INSERT INTO `admin_operation_log` VALUES ('1330', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:52:00', '2020-01-05 06:52:00');
INSERT INTO `admin_operation_log` VALUES ('1331', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:52:03', '2020-01-05 06:52:03');
INSERT INTO `admin_operation_log` VALUES ('1332', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:52:04', '2020-01-05 06:52:04');
INSERT INTO `admin_operation_log` VALUES ('1333', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:52:05', '2020-01-05 06:52:05');
INSERT INTO `admin_operation_log` VALUES ('1334', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:52:06', '2020-01-05 06:52:06');
INSERT INTO `admin_operation_log` VALUES ('1335', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:52:06', '2020-01-05 06:52:06');
INSERT INTO `admin_operation_log` VALUES ('1336', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:52:07', '2020-01-05 06:52:07');
INSERT INTO `admin_operation_log` VALUES ('1337', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:52:08', '2020-01-05 06:52:08');
INSERT INTO `admin_operation_log` VALUES ('1338', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:52:09', '2020-01-05 06:52:09');
INSERT INTO `admin_operation_log` VALUES ('1339', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:53:58', '2020-01-05 06:53:58');
INSERT INTO `admin_operation_log` VALUES ('1340', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:53:59', '2020-01-05 06:53:59');
INSERT INTO `admin_operation_log` VALUES ('1341', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:54:00', '2020-01-05 06:54:00');
INSERT INTO `admin_operation_log` VALUES ('1342', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:54:01', '2020-01-05 06:54:01');
INSERT INTO `admin_operation_log` VALUES ('1343', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:54:03', '2020-01-05 06:54:03');
INSERT INTO `admin_operation_log` VALUES ('1344', '1', 'admin/patents/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:54:14', '2020-01-05 06:54:14');
INSERT INTO `admin_operation_log` VALUES ('1345', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:54:17', '2020-01-05 06:54:17');
INSERT INTO `admin_operation_log` VALUES ('1346', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:54:21', '2020-01-05 06:54:21');
INSERT INTO `admin_operation_log` VALUES ('1347', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:54:42', '2020-01-05 06:54:42');
INSERT INTO `admin_operation_log` VALUES ('1348', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:54:43', '2020-01-05 06:54:43');
INSERT INTO `admin_operation_log` VALUES ('1349', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:54:43', '2020-01-05 06:54:43');
INSERT INTO `admin_operation_log` VALUES ('1350', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:54:44', '2020-01-05 06:54:44');
INSERT INTO `admin_operation_log` VALUES ('1351', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:54:54', '2020-01-05 06:54:54');
INSERT INTO `admin_operation_log` VALUES ('1352', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:54:55', '2020-01-05 06:54:55');
INSERT INTO `admin_operation_log` VALUES ('1353', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:54:56', '2020-01-05 06:54:56');
INSERT INTO `admin_operation_log` VALUES ('1354', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:55:03', '2020-01-05 06:55:03');
INSERT INTO `admin_operation_log` VALUES ('1355', '1', 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:55:06', '2020-01-05 06:55:06');
INSERT INTO `admin_operation_log` VALUES ('1356', '1', 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"\\u4f1a\\u5458\\u4e13\\u5229\",\"icon\":\"fa-bars\",\"uri\":\"patents\",\"roles\":[null],\"permission\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-05 06:55:16', '2020-01-05 06:55:16');
INSERT INTO `admin_operation_log` VALUES ('1357', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 06:55:17', '2020-01-05 06:55:17');
INSERT INTO `admin_operation_log` VALUES ('1358', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 06:55:18', '2020-01-05 06:55:18');
INSERT INTO `admin_operation_log` VALUES ('1359', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:55:21', '2020-01-05 06:55:21');
INSERT INTO `admin_operation_log` VALUES ('1360', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:55:23', '2020-01-05 06:55:23');
INSERT INTO `admin_operation_log` VALUES ('1361', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:55:29', '2020-01-05 06:55:29');
INSERT INTO `admin_operation_log` VALUES ('1362', '1', 'admin/patents/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:56:44', '2020-01-05 06:56:44');
INSERT INTO `admin_operation_log` VALUES ('1363', '1', 'admin/patents/create', 'GET', '127.0.0.1', '[]', '2020-01-05 06:56:45', '2020-01-05 06:56:45');
INSERT INTO `admin_operation_log` VALUES ('1364', '1', 'admin/patents/create', 'GET', '127.0.0.1', '[]', '2020-01-05 06:56:48', '2020-01-05 06:56:48');
INSERT INTO `admin_operation_log` VALUES ('1365', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 06:56:50', '2020-01-05 06:56:50');
INSERT INTO `admin_operation_log` VALUES ('1366', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:56:52', '2020-01-05 06:56:52');
INSERT INTO `admin_operation_log` VALUES ('1367', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:56:54', '2020-01-05 06:56:54');
INSERT INTO `admin_operation_log` VALUES ('1368', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:56:56', '2020-01-05 06:56:56');
INSERT INTO `admin_operation_log` VALUES ('1369', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:57:04', '2020-01-05 06:57:04');
INSERT INTO `admin_operation_log` VALUES ('1370', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:58:19', '2020-01-05 06:58:19');
INSERT INTO `admin_operation_log` VALUES ('1371', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:58:24', '2020-01-05 06:58:24');
INSERT INTO `admin_operation_log` VALUES ('1372', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:58:26', '2020-01-05 06:58:26');
INSERT INTO `admin_operation_log` VALUES ('1373', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:58:30', '2020-01-05 06:58:30');
INSERT INTO `admin_operation_log` VALUES ('1374', '1', 'admin/patents', 'GET', '127.0.0.1', '[]', '2020-01-05 06:58:32', '2020-01-05 06:58:32');
INSERT INTO `admin_operation_log` VALUES ('1375', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-01-05 06:58:46', '2020-01-05 06:58:46');
INSERT INTO `admin_operation_log` VALUES ('1376', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_export_\":\"page:1\"}', '2020-01-05 06:59:21', '2020-01-05 06:59:21');
INSERT INTO `admin_operation_log` VALUES ('1377', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-01-05 06:59:36', '2020-01-05 06:59:36');
INSERT INTO `admin_operation_log` VALUES ('1378', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_export_\":\"page:1\"}', '2020-01-05 06:59:40', '2020-01-05 06:59:40');
INSERT INTO `admin_operation_log` VALUES ('1379', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_export_\":\"page:1\"}', '2020-01-05 06:59:43', '2020-01-05 06:59:43');
INSERT INTO `admin_operation_log` VALUES ('1380', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_export_\":\"page:1\"}', '2020-01-05 06:59:46', '2020-01-05 06:59:46');
INSERT INTO `admin_operation_log` VALUES ('1381', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_export_\":\"page:1\"}', '2020-01-05 06:59:49', '2020-01-05 06:59:49');
INSERT INTO `admin_operation_log` VALUES ('1382', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:08:13', '2020-01-05 07:08:13');
INSERT INTO `admin_operation_log` VALUES ('1383', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:08:15', '2020-01-05 07:08:15');
INSERT INTO `admin_operation_log` VALUES ('1384', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:08:19', '2020-01-05 07:08:19');
INSERT INTO `admin_operation_log` VALUES ('1385', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-05 07:17:47', '2020-01-05 07:17:47');
INSERT INTO `admin_operation_log` VALUES ('1386', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-05 07:19:58', '2020-01-05 07:19:58');
INSERT INTO `admin_operation_log` VALUES ('1387', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:21:27', '2020-01-05 07:21:27');
INSERT INTO `admin_operation_log` VALUES ('1388', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9ad8\\u6821\\u4e13\\u573a\",\"icon\":\"fa-bars\",\"uri\":\"colleges\",\"roles\":[null],\"permission\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\"}', '2020-01-05 07:21:38', '2020-01-05 07:21:38');
INSERT INTO `admin_operation_log` VALUES ('1389', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 07:21:38', '2020-01-05 07:21:38');
INSERT INTO `admin_operation_log` VALUES ('1390', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":14},{\\\"id\\\":13}]},{\\\"id\\\":15}]\"}', '2020-01-05 07:21:54', '2020-01-05 07:21:54');
INSERT INTO `admin_operation_log` VALUES ('1391', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:21:54', '2020-01-05 07:21:54');
INSERT INTO `admin_operation_log` VALUES ('1392', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7535\\u5b50\\u7528\\u6237\",\"icon\":\"fa-bars\",\"uri\":\"electron-users\",\"roles\":[null],\"permission\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\"}', '2020-01-05 07:24:08', '2020-01-05 07:24:08');
INSERT INTO `admin_operation_log` VALUES ('1393', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 07:24:09', '2020-01-05 07:24:09');
INSERT INTO `admin_operation_log` VALUES ('1394', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":14},{\\\"id\\\":13}]},{\\\"id\\\":15},{\\\"id\\\":16}]\"}', '2020-01-05 07:24:13', '2020-01-05 07:24:13');
INSERT INTO `admin_operation_log` VALUES ('1395', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:24:14', '2020-01-05 07:24:14');
INSERT INTO `admin_operation_log` VALUES ('1396', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 07:24:19', '2020-01-05 07:24:19');
INSERT INTO `admin_operation_log` VALUES ('1397', '1', 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:24:21', '2020-01-05 07:24:21');
INSERT INTO `admin_operation_log` VALUES ('1398', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:24:22', '2020-01-05 07:24:22');
INSERT INTO `admin_operation_log` VALUES ('1399', '1', 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:24:23', '2020-01-05 07:24:23');
INSERT INTO `admin_operation_log` VALUES ('1400', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:24:24', '2020-01-05 07:24:24');
INSERT INTO `admin_operation_log` VALUES ('1401', '1', 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:24:24', '2020-01-05 07:24:24');
INSERT INTO `admin_operation_log` VALUES ('1402', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:24:25', '2020-01-05 07:24:25');
INSERT INTO `admin_operation_log` VALUES ('1403', '1', 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:24:26', '2020-01-05 07:24:26');
INSERT INTO `admin_operation_log` VALUES ('1404', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:24:27', '2020-01-05 07:24:27');
INSERT INTO `admin_operation_log` VALUES ('1405', '1', 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:24:28', '2020-01-05 07:24:28');
INSERT INTO `admin_operation_log` VALUES ('1406', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:24:30', '2020-01-05 07:24:30');
INSERT INTO `admin_operation_log` VALUES ('1407', '1', 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:24:31', '2020-01-05 07:24:31');
INSERT INTO `admin_operation_log` VALUES ('1408', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:24:47', '2020-01-05 07:24:47');
INSERT INTO `admin_operation_log` VALUES ('1409', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:25:47', '2020-01-05 07:25:47');
INSERT INTO `admin_operation_log` VALUES ('1410', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:25:50', '2020-01-05 07:25:50');
INSERT INTO `admin_operation_log` VALUES ('1411', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:26:09', '2020-01-05 07:26:09');
INSERT INTO `admin_operation_log` VALUES ('1412', '1', 'admin/colleges/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:26:10', '2020-01-05 07:26:10');
INSERT INTO `admin_operation_log` VALUES ('1413', '1', 'admin/colleges/create', 'GET', '127.0.0.1', '[]', '2020-01-05 07:26:11', '2020-01-05 07:26:11');
INSERT INTO `admin_operation_log` VALUES ('1414', '1', 'admin/colleges/create', 'GET', '127.0.0.1', '[]', '2020-01-05 07:26:12', '2020-01-05 07:26:12');
INSERT INTO `admin_operation_log` VALUES ('1415', '1', 'admin/colleges/create', 'GET', '127.0.0.1', '[]', '2020-01-05 07:26:13', '2020-01-05 07:26:13');
INSERT INTO `admin_operation_log` VALUES ('1416', '1', 'admin/colleges/create', 'GET', '127.0.0.1', '[]', '2020-01-05 07:26:40', '2020-01-05 07:26:40');
INSERT INTO `admin_operation_log` VALUES ('1417', '1', 'admin/colleges/create', 'GET', '127.0.0.1', '[]', '2020-01-05 07:26:41', '2020-01-05 07:26:41');
INSERT INTO `admin_operation_log` VALUES ('1418', '1', 'admin/colleges/create', 'GET', '127.0.0.1', '[]', '2020-01-05 07:26:55', '2020-01-05 07:26:55');
INSERT INTO `admin_operation_log` VALUES ('1419', '1', 'admin/colleges/create', 'GET', '127.0.0.1', '[]', '2020-01-05 07:27:50', '2020-01-05 07:27:50');
INSERT INTO `admin_operation_log` VALUES ('1420', '1', 'admin/colleges/create', 'GET', '127.0.0.1', '[]', '2020-01-05 07:27:51', '2020-01-05 07:27:51');
INSERT INTO `admin_operation_log` VALUES ('1421', '1', 'admin/colleges/create', 'GET', '127.0.0.1', '[]', '2020-01-05 07:28:23', '2020-01-05 07:28:23');
INSERT INTO `admin_operation_log` VALUES ('1422', '1', 'admin/colleges/create', 'GET', '127.0.0.1', '[]', '2020-01-05 07:28:24', '2020-01-05 07:28:24');
INSERT INTO `admin_operation_log` VALUES ('1423', '1', 'admin/colleges/create', 'GET', '127.0.0.1', '[]', '2020-01-05 07:29:32', '2020-01-05 07:29:32');
INSERT INTO `admin_operation_log` VALUES ('1424', '1', 'admin/colleges', 'POST', '127.0.0.1', '{\"name\":\"\\u6e05\\u534e\\u5927\\u5b66\",\"sort\":\"0\",\"desc\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\"}', '2020-01-05 07:30:06', '2020-01-05 07:30:06');
INSERT INTO `admin_operation_log` VALUES ('1425', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:30:06', '2020-01-05 07:30:06');
INSERT INTO `admin_operation_log` VALUES ('1426', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:30:07', '2020-01-05 07:30:07');
INSERT INTO `admin_operation_log` VALUES ('1427', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:30:08', '2020-01-05 07:30:08');
INSERT INTO `admin_operation_log` VALUES ('1428', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:30:09', '2020-01-05 07:30:09');
INSERT INTO `admin_operation_log` VALUES ('1429', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:30:10', '2020-01-05 07:30:10');
INSERT INTO `admin_operation_log` VALUES ('1430', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:30:11', '2020-01-05 07:30:11');
INSERT INTO `admin_operation_log` VALUES ('1431', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:30:30', '2020-01-05 07:30:30');
INSERT INTO `admin_operation_log` VALUES ('1432', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:30:32', '2020-01-05 07:30:32');
INSERT INTO `admin_operation_log` VALUES ('1433', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:31:50', '2020-01-05 07:31:50');
INSERT INTO `admin_operation_log` VALUES ('1434', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:31:52', '2020-01-05 07:31:52');
INSERT INTO `admin_operation_log` VALUES ('1435', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:32:00', '2020-01-05 07:32:00');
INSERT INTO `admin_operation_log` VALUES ('1436', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:32:02', '2020-01-05 07:32:02');
INSERT INTO `admin_operation_log` VALUES ('1437', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:32:04', '2020-01-05 07:32:04');
INSERT INTO `admin_operation_log` VALUES ('1438', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:32:22', '2020-01-05 07:32:22');
INSERT INTO `admin_operation_log` VALUES ('1439', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:32:41', '2020-01-05 07:32:41');
INSERT INTO `admin_operation_log` VALUES ('1440', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:32:49', '2020-01-05 07:32:49');
INSERT INTO `admin_operation_log` VALUES ('1441', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:34:48', '2020-01-05 07:34:48');
INSERT INTO `admin_operation_log` VALUES ('1442', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:34:49', '2020-01-05 07:34:49');
INSERT INTO `admin_operation_log` VALUES ('1443', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:34:51', '2020-01-05 07:34:51');
INSERT INTO `admin_operation_log` VALUES ('1444', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:34:56', '2020-01-05 07:34:56');
INSERT INTO `admin_operation_log` VALUES ('1445', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:35:04', '2020-01-05 07:35:04');
INSERT INTO `admin_operation_log` VALUES ('1446', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:35:20', '2020-01-05 07:35:20');
INSERT INTO `admin_operation_log` VALUES ('1447', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:35:46', '2020-01-05 07:35:46');
INSERT INTO `admin_operation_log` VALUES ('1448', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:35:53', '2020-01-05 07:35:53');
INSERT INTO `admin_operation_log` VALUES ('1449', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:35:56', '2020-01-05 07:35:56');
INSERT INTO `admin_operation_log` VALUES ('1450', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:38:47', '2020-01-05 07:38:47');
INSERT INTO `admin_operation_log` VALUES ('1451', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:38:55', '2020-01-05 07:38:55');
INSERT INTO `admin_operation_log` VALUES ('1452', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:40:56', '2020-01-05 07:40:56');
INSERT INTO `admin_operation_log` VALUES ('1453', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:40:59', '2020-01-05 07:40:59');
INSERT INTO `admin_operation_log` VALUES ('1454', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:41:15', '2020-01-05 07:41:15');
INSERT INTO `admin_operation_log` VALUES ('1455', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:41:17', '2020-01-05 07:41:17');
INSERT INTO `admin_operation_log` VALUES ('1456', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:41:48', '2020-01-05 07:41:48');
INSERT INTO `admin_operation_log` VALUES ('1457', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:41:50', '2020-01-05 07:41:50');
INSERT INTO `admin_operation_log` VALUES ('1458', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:41:51', '2020-01-05 07:41:51');
INSERT INTO `admin_operation_log` VALUES ('1459', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:41:52', '2020-01-05 07:41:52');
INSERT INTO `admin_operation_log` VALUES ('1460', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:41:52', '2020-01-05 07:41:52');
INSERT INTO `admin_operation_log` VALUES ('1461', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:42:27', '2020-01-05 07:42:27');
INSERT INTO `admin_operation_log` VALUES ('1462', '1', 'admin/colleges/1', 'PUT', '127.0.0.1', '{\"name\":\"sort\",\"value\":\"1\",\"pk\":\"1\",\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2020-01-05 07:42:41', '2020-01-05 07:42:41');
INSERT INTO `admin_operation_log` VALUES ('1463', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:42:43', '2020-01-05 07:42:43');
INSERT INTO `admin_operation_log` VALUES ('1464', '1', 'admin/colleges/1', 'PUT', '127.0.0.1', '{\"name\":\"sort\",\"value\":\"0\",\"pk\":\"1\",\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2020-01-05 07:42:55', '2020-01-05 07:42:55');
INSERT INTO `admin_operation_log` VALUES ('1465', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:42:57', '2020-01-05 07:42:57');
INSERT INTO `admin_operation_log` VALUES ('1466', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:42:58', '2020-01-05 07:42:58');
INSERT INTO `admin_operation_log` VALUES ('1467', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:42:59', '2020-01-05 07:42:59');
INSERT INTO `admin_operation_log` VALUES ('1468', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:43:01', '2020-01-05 07:43:01');
INSERT INTO `admin_operation_log` VALUES ('1469', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:43:02', '2020-01-05 07:43:02');
INSERT INTO `admin_operation_log` VALUES ('1470', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:45:44', '2020-01-05 07:45:44');
INSERT INTO `admin_operation_log` VALUES ('1471', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:45:45', '2020-01-05 07:45:45');
INSERT INTO `admin_operation_log` VALUES ('1472', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:46:08', '2020-01-05 07:46:08');
INSERT INTO `admin_operation_log` VALUES ('1473', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:47:19', '2020-01-05 07:47:19');
INSERT INTO `admin_operation_log` VALUES ('1474', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:51:17', '2020-01-05 07:51:17');
INSERT INTO `admin_operation_log` VALUES ('1475', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:51:20', '2020-01-05 07:51:20');
INSERT INTO `admin_operation_log` VALUES ('1476', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:51:21', '2020-01-05 07:51:21');
INSERT INTO `admin_operation_log` VALUES ('1477', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:51:21', '2020-01-05 07:51:21');
INSERT INTO `admin_operation_log` VALUES ('1478', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:51:22', '2020-01-05 07:51:22');
INSERT INTO `admin_operation_log` VALUES ('1479', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:51:22', '2020-01-05 07:51:22');
INSERT INTO `admin_operation_log` VALUES ('1480', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:51:23', '2020-01-05 07:51:23');
INSERT INTO `admin_operation_log` VALUES ('1481', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:51:23', '2020-01-05 07:51:23');
INSERT INTO `admin_operation_log` VALUES ('1482', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:51:24', '2020-01-05 07:51:24');
INSERT INTO `admin_operation_log` VALUES ('1483', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:51:31', '2020-01-05 07:51:31');
INSERT INTO `admin_operation_log` VALUES ('1484', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 07:51:32', '2020-01-05 07:51:32');
INSERT INTO `admin_operation_log` VALUES ('1485', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:52:58', '2020-01-05 07:52:58');
INSERT INTO `admin_operation_log` VALUES ('1486', '1', 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:52:59', '2020-01-05 07:52:59');
INSERT INTO `admin_operation_log` VALUES ('1487', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:53:00', '2020-01-05 07:53:00');
INSERT INTO `admin_operation_log` VALUES ('1488', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:53:01', '2020-01-05 07:53:01');
INSERT INTO `admin_operation_log` VALUES ('1489', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:53:04', '2020-01-05 07:53:04');
INSERT INTO `admin_operation_log` VALUES ('1490', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:53:05', '2020-01-05 07:53:05');
INSERT INTO `admin_operation_log` VALUES ('1491', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:53:07', '2020-01-05 07:53:07');
INSERT INTO `admin_operation_log` VALUES ('1492', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-05 07:54:12', '2020-01-05 07:54:12');
INSERT INTO `admin_operation_log` VALUES ('1493', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-05 07:54:13', '2020-01-05 07:54:13');
INSERT INTO `admin_operation_log` VALUES ('1494', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-05 07:54:14', '2020-01-05 07:54:14');
INSERT INTO `admin_operation_log` VALUES ('1495', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-05 07:54:15', '2020-01-05 07:54:15');
INSERT INTO `admin_operation_log` VALUES ('1496', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-05 07:54:47', '2020-01-05 07:54:47');
INSERT INTO `admin_operation_log` VALUES ('1497', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-05 07:54:50', '2020-01-05 07:54:50');
INSERT INTO `admin_operation_log` VALUES ('1498', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-05 07:54:51', '2020-01-05 07:54:51');
INSERT INTO `admin_operation_log` VALUES ('1499', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-05 07:55:38', '2020-01-05 07:55:38');
INSERT INTO `admin_operation_log` VALUES ('1500', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-05 07:55:46', '2020-01-05 07:55:46');
INSERT INTO `admin_operation_log` VALUES ('1501', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-05 07:55:47', '2020-01-05 07:55:47');
INSERT INTO `admin_operation_log` VALUES ('1502', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-05 07:55:51', '2020-01-05 07:55:51');
INSERT INTO `admin_operation_log` VALUES ('1503', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:57:00', '2020-01-05 07:57:00');
INSERT INTO `admin_operation_log` VALUES ('1504', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:57:01', '2020-01-05 07:57:01');
INSERT INTO `admin_operation_log` VALUES ('1505', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:57:02', '2020-01-05 07:57:02');
INSERT INTO `admin_operation_log` VALUES ('1506', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 07:57:03', '2020-01-05 07:57:03');
INSERT INTO `admin_operation_log` VALUES ('1507', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 07:57:08', '2020-01-05 07:57:08');
INSERT INTO `admin_operation_log` VALUES ('1508', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 07:57:15', '2020-01-05 07:57:15');
INSERT INTO `admin_operation_log` VALUES ('1509', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 07:57:29', '2020-01-05 07:57:29');
INSERT INTO `admin_operation_log` VALUES ('1510', '1', 'admin/patent-states', 'GET', '127.0.0.1', '[]', '2020-01-05 08:01:34', '2020-01-05 08:01:34');
INSERT INTO `admin_operation_log` VALUES ('1511', '1', 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:01:36', '2020-01-05 08:01:36');
INSERT INTO `admin_operation_log` VALUES ('1512', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:01:38', '2020-01-05 08:01:38');
INSERT INTO `admin_operation_log` VALUES ('1513', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:01:55', '2020-01-05 08:01:55');
INSERT INTO `admin_operation_log` VALUES ('1514', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:01:59', '2020-01-05 08:01:59');
INSERT INTO `admin_operation_log` VALUES ('1515', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:02:00', '2020-01-05 08:02:00');
INSERT INTO `admin_operation_log` VALUES ('1516', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:02:01', '2020-01-05 08:02:01');
INSERT INTO `admin_operation_log` VALUES ('1517', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:02:02', '2020-01-05 08:02:02');
INSERT INTO `admin_operation_log` VALUES ('1518', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:02:10', '2020-01-05 08:02:10');
INSERT INTO `admin_operation_log` VALUES ('1519', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:02:14', '2020-01-05 08:02:14');
INSERT INTO `admin_operation_log` VALUES ('1520', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:02:35', '2020-01-05 08:02:35');
INSERT INTO `admin_operation_log` VALUES ('1521', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:02:36', '2020-01-05 08:02:36');
INSERT INTO `admin_operation_log` VALUES ('1522', '1', 'admin/colleges/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:02:37', '2020-01-05 08:02:37');
INSERT INTO `admin_operation_log` VALUES ('1523', '1', 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:02:40', '2020-01-05 08:02:40');
INSERT INTO `admin_operation_log` VALUES ('1524', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:02:41', '2020-01-05 08:02:41');
INSERT INTO `admin_operation_log` VALUES ('1525', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:02:42', '2020-01-05 08:02:42');
INSERT INTO `admin_operation_log` VALUES ('1526', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:02:44', '2020-01-05 08:02:44');
INSERT INTO `admin_operation_log` VALUES ('1527', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:03:09', '2020-01-05 08:03:09');
INSERT INTO `admin_operation_log` VALUES ('1528', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:03:31', '2020-01-05 08:03:31');
INSERT INTO `admin_operation_log` VALUES ('1529', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:03:32', '2020-01-05 08:03:32');
INSERT INTO `admin_operation_log` VALUES ('1530', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:03:34', '2020-01-05 08:03:34');
INSERT INTO `admin_operation_log` VALUES ('1531', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:03:54', '2020-01-05 08:03:54');
INSERT INTO `admin_operation_log` VALUES ('1532', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:03:56', '2020-01-05 08:03:56');
INSERT INTO `admin_operation_log` VALUES ('1533', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:04:03', '2020-01-05 08:04:03');
INSERT INTO `admin_operation_log` VALUES ('1534', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:04:04', '2020-01-05 08:04:04');
INSERT INTO `admin_operation_log` VALUES ('1535', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:05:09', '2020-01-05 08:05:09');
INSERT INTO `admin_operation_log` VALUES ('1536', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:05:10', '2020-01-05 08:05:10');
INSERT INTO `admin_operation_log` VALUES ('1537', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:05:11', '2020-01-05 08:05:11');
INSERT INTO `admin_operation_log` VALUES ('1538', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:05:12', '2020-01-05 08:05:12');
INSERT INTO `admin_operation_log` VALUES ('1539', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:05:17', '2020-01-05 08:05:17');
INSERT INTO `admin_operation_log` VALUES ('1540', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:05:18', '2020-01-05 08:05:18');
INSERT INTO `admin_operation_log` VALUES ('1541', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:05:22', '2020-01-05 08:05:22');
INSERT INTO `admin_operation_log` VALUES ('1542', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:05:28', '2020-01-05 08:05:28');
INSERT INTO `admin_operation_log` VALUES ('1543', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:05:30', '2020-01-05 08:05:30');
INSERT INTO `admin_operation_log` VALUES ('1544', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:05:55', '2020-01-05 08:05:55');
INSERT INTO `admin_operation_log` VALUES ('1545', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:05:59', '2020-01-05 08:05:59');
INSERT INTO `admin_operation_log` VALUES ('1546', '1', 'admin/auth/menu/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:06:01', '2020-01-05 08:06:01');
INSERT INTO `admin_operation_log` VALUES ('1547', '1', 'admin/auth/menu/16', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7535\\u5b50\\u8d26\\u6237\",\"icon\":\"fa-bars\",\"uri\":\"electron-users\",\"roles\":[null],\"permission\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-05 08:06:06', '2020-01-05 08:06:06');
INSERT INTO `admin_operation_log` VALUES ('1548', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 08:06:06', '2020-01-05 08:06:06');
INSERT INTO `admin_operation_log` VALUES ('1549', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 08:06:07', '2020-01-05 08:06:07');
INSERT INTO `admin_operation_log` VALUES ('1550', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:06:09', '2020-01-05 08:06:09');
INSERT INTO `admin_operation_log` VALUES ('1551', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:06:58', '2020-01-05 08:06:58');
INSERT INTO `admin_operation_log` VALUES ('1552', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:06:59', '2020-01-05 08:06:59');
INSERT INTO `admin_operation_log` VALUES ('1553', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:07:21', '2020-01-05 08:07:21');
INSERT INTO `admin_operation_log` VALUES ('1554', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:07:22', '2020-01-05 08:07:22');
INSERT INTO `admin_operation_log` VALUES ('1555', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:07:23', '2020-01-05 08:07:23');
INSERT INTO `admin_operation_log` VALUES ('1556', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:07:23', '2020-01-05 08:07:23');
INSERT INTO `admin_operation_log` VALUES ('1557', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:07:27', '2020-01-05 08:07:27');
INSERT INTO `admin_operation_log` VALUES ('1558', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:07:28', '2020-01-05 08:07:28');
INSERT INTO `admin_operation_log` VALUES ('1559', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:07:53', '2020-01-05 08:07:53');
INSERT INTO `admin_operation_log` VALUES ('1560', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-01-05 08:07:55', '2020-01-05 08:07:55');
INSERT INTO `admin_operation_log` VALUES ('1561', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:07:58', '2020-01-05 08:07:58');
INSERT INTO `admin_operation_log` VALUES ('1562', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:08:01', '2020-01-05 08:08:01');
INSERT INTO `admin_operation_log` VALUES ('1563', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:08:07', '2020-01-05 08:08:07');
INSERT INTO `admin_operation_log` VALUES ('1564', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:08:09', '2020-01-05 08:08:09');
INSERT INTO `admin_operation_log` VALUES ('1565', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:08:49', '2020-01-05 08:08:49');
INSERT INTO `admin_operation_log` VALUES ('1566', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:08:55', '2020-01-05 08:08:55');
INSERT INTO `admin_operation_log` VALUES ('1567', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:09:12', '2020-01-05 08:09:12');
INSERT INTO `admin_operation_log` VALUES ('1568', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:09:13', '2020-01-05 08:09:13');
INSERT INTO `admin_operation_log` VALUES ('1569', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:09:14', '2020-01-05 08:09:14');
INSERT INTO `admin_operation_log` VALUES ('1570', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:09:15', '2020-01-05 08:09:15');
INSERT INTO `admin_operation_log` VALUES ('1571', '1', 'admin/electron-users/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\"}', '2020-01-05 08:09:18', '2020-01-05 08:09:18');
INSERT INTO `admin_operation_log` VALUES ('1572', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:09:18', '2020-01-05 08:09:18');
INSERT INTO `admin_operation_log` VALUES ('1573', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:09:19', '2020-01-05 08:09:19');
INSERT INTO `admin_operation_log` VALUES ('1574', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:09:20', '2020-01-05 08:09:20');
INSERT INTO `admin_operation_log` VALUES ('1575', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:09:21', '2020-01-05 08:09:21');
INSERT INTO `admin_operation_log` VALUES ('1576', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:09:22', '2020-01-05 08:09:22');
INSERT INTO `admin_operation_log` VALUES ('1577', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:09:25', '2020-01-05 08:09:25');
INSERT INTO `admin_operation_log` VALUES ('1578', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:10:28', '2020-01-05 08:10:28');
INSERT INTO `admin_operation_log` VALUES ('1579', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:10:29', '2020-01-05 08:10:29');
INSERT INTO `admin_operation_log` VALUES ('1580', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:12:05', '2020-01-05 08:12:05');
INSERT INTO `admin_operation_log` VALUES ('1581', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:12:28', '2020-01-05 08:12:28');
INSERT INTO `admin_operation_log` VALUES ('1582', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:12:29', '2020-01-05 08:12:29');
INSERT INTO `admin_operation_log` VALUES ('1583', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:12:30', '2020-01-05 08:12:30');
INSERT INTO `admin_operation_log` VALUES ('1584', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:13:17', '2020-01-05 08:13:17');
INSERT INTO `admin_operation_log` VALUES ('1585', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:13:18', '2020-01-05 08:13:18');
INSERT INTO `admin_operation_log` VALUES ('1586', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:13:33', '2020-01-05 08:13:33');
INSERT INTO `admin_operation_log` VALUES ('1587', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:13:34', '2020-01-05 08:13:34');
INSERT INTO `admin_operation_log` VALUES ('1588', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:14:03', '2020-01-05 08:14:03');
INSERT INTO `admin_operation_log` VALUES ('1589', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:14:04', '2020-01-05 08:14:04');
INSERT INTO `admin_operation_log` VALUES ('1590', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:17:36', '2020-01-05 08:17:36');
INSERT INTO `admin_operation_log` VALUES ('1591', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:17:39', '2020-01-05 08:17:39');
INSERT INTO `admin_operation_log` VALUES ('1592', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:17:48', '2020-01-05 08:17:48');
INSERT INTO `admin_operation_log` VALUES ('1593', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:17:53', '2020-01-05 08:17:53');
INSERT INTO `admin_operation_log` VALUES ('1594', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:17:58', '2020-01-05 08:17:58');
INSERT INTO `admin_operation_log` VALUES ('1595', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:18:00', '2020-01-05 08:18:00');
INSERT INTO `admin_operation_log` VALUES ('1596', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:18:29', '2020-01-05 08:18:29');
INSERT INTO `admin_operation_log` VALUES ('1597', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:18:31', '2020-01-05 08:18:31');
INSERT INTO `admin_operation_log` VALUES ('1598', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:18:36', '2020-01-05 08:18:36');
INSERT INTO `admin_operation_log` VALUES ('1599', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:18:37', '2020-01-05 08:18:37');
INSERT INTO `admin_operation_log` VALUES ('1600', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:18:38', '2020-01-05 08:18:38');
INSERT INTO `admin_operation_log` VALUES ('1601', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:18:39', '2020-01-05 08:18:39');
INSERT INTO `admin_operation_log` VALUES ('1602', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:19:18', '2020-01-05 08:19:18');
INSERT INTO `admin_operation_log` VALUES ('1603', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:19:23', '2020-01-05 08:19:23');
INSERT INTO `admin_operation_log` VALUES ('1604', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:19:24', '2020-01-05 08:19:24');
INSERT INTO `admin_operation_log` VALUES ('1605', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:19:52', '2020-01-05 08:19:52');
INSERT INTO `admin_operation_log` VALUES ('1606', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:19:55', '2020-01-05 08:19:55');
INSERT INTO `admin_operation_log` VALUES ('1607', '1', 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:19:58', '2020-01-05 08:19:58');
INSERT INTO `admin_operation_log` VALUES ('1608', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:19:59', '2020-01-05 08:19:59');
INSERT INTO `admin_operation_log` VALUES ('1609', '1', 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:20:00', '2020-01-05 08:20:00');
INSERT INTO `admin_operation_log` VALUES ('1610', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:20:01', '2020-01-05 08:20:01');
INSERT INTO `admin_operation_log` VALUES ('1611', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:20:02', '2020-01-05 08:20:02');
INSERT INTO `admin_operation_log` VALUES ('1612', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:20:05', '2020-01-05 08:20:05');
INSERT INTO `admin_operation_log` VALUES ('1613', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:20:11', '2020-01-05 08:20:11');
INSERT INTO `admin_operation_log` VALUES ('1614', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:20:18', '2020-01-05 08:20:18');
INSERT INTO `admin_operation_log` VALUES ('1615', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:20:25', '2020-01-05 08:20:25');
INSERT INTO `admin_operation_log` VALUES ('1616', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:20:26', '2020-01-05 08:20:26');
INSERT INTO `admin_operation_log` VALUES ('1617', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:20:31', '2020-01-05 08:20:31');
INSERT INTO `admin_operation_log` VALUES ('1618', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:27:19', '2020-01-05 08:27:19');
INSERT INTO `admin_operation_log` VALUES ('1619', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:27:23', '2020-01-05 08:27:23');
INSERT INTO `admin_operation_log` VALUES ('1620', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:31:43', '2020-01-05 08:31:43');
INSERT INTO `admin_operation_log` VALUES ('1621', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:36:17', '2020-01-05 08:36:17');
INSERT INTO `admin_operation_log` VALUES ('1622', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:36:18', '2020-01-05 08:36:18');
INSERT INTO `admin_operation_log` VALUES ('1623', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:36:28', '2020-01-05 08:36:28');
INSERT INTO `admin_operation_log` VALUES ('1624', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:36:30', '2020-01-05 08:36:30');
INSERT INTO `admin_operation_log` VALUES ('1625', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:37:27', '2020-01-05 08:37:27');
INSERT INTO `admin_operation_log` VALUES ('1626', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 08:37:42', '2020-01-05 08:37:42');
INSERT INTO `admin_operation_log` VALUES ('1627', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:38:38', '2020-01-05 08:38:38');
INSERT INTO `admin_operation_log` VALUES ('1628', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:38:40', '2020-01-05 08:38:40');
INSERT INTO `admin_operation_log` VALUES ('1629', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:38:43', '2020-01-05 08:38:43');
INSERT INTO `admin_operation_log` VALUES ('1630', '1', 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5de5\\u4f5c\\u53f0\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-05 08:38:50', '2020-01-05 08:38:50');
INSERT INTO `admin_operation_log` VALUES ('1631', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 08:38:50', '2020-01-05 08:38:50');
INSERT INTO `admin_operation_log` VALUES ('1632', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 08:38:52', '2020-01-05 08:38:52');
INSERT INTO `admin_operation_log` VALUES ('1633', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 08:38:53', '2020-01-05 08:38:53');
INSERT INTO `admin_operation_log` VALUES ('1634', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:39:05', '2020-01-05 08:39:05');
INSERT INTO `admin_operation_log` VALUES ('1635', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:39:08', '2020-01-05 08:39:08');
INSERT INTO `admin_operation_log` VALUES ('1636', '1', 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5de5\\u4f5c\\u53f0\",\"icon\":\"fa-bank\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-05 08:39:50', '2020-01-05 08:39:50');
INSERT INTO `admin_operation_log` VALUES ('1637', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 08:39:51', '2020-01-05 08:39:51');
INSERT INTO `admin_operation_log` VALUES ('1638', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 08:39:53', '2020-01-05 08:39:53');
INSERT INTO `admin_operation_log` VALUES ('1639', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:39:57', '2020-01-05 08:39:57');
INSERT INTO `admin_operation_log` VALUES ('1640', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:40:02', '2020-01-05 08:40:02');
INSERT INTO `admin_operation_log` VALUES ('1641', '1', 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u8bbe\\u7f6e\",\"icon\":\"fa-cogs\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-05 08:40:17', '2020-01-05 08:40:17');
INSERT INTO `admin_operation_log` VALUES ('1642', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 08:40:17', '2020-01-05 08:40:17');
INSERT INTO `admin_operation_log` VALUES ('1643', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 08:40:19', '2020-01-05 08:40:19');
INSERT INTO `admin_operation_log` VALUES ('1644', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:40:23', '2020-01-05 08:40:23');
INSERT INTO `admin_operation_log` VALUES ('1645', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:40:30', '2020-01-05 08:40:30');
INSERT INTO `admin_operation_log` VALUES ('1646', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:40:32', '2020-01-05 08:40:32');
INSERT INTO `admin_operation_log` VALUES ('1647', '1', 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:40:35', '2020-01-05 08:40:35');
INSERT INTO `admin_operation_log` VALUES ('1648', '1', 'admin/auth/menu/15', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9ad8\\u6821\\u4e13\\u573a\",\"icon\":\"fa-graduation-cap\",\"uri\":\"colleges\",\"roles\":[null],\"permission\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-05 08:41:02', '2020-01-05 08:41:02');
INSERT INTO `admin_operation_log` VALUES ('1649', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 08:41:02', '2020-01-05 08:41:02');
INSERT INTO `admin_operation_log` VALUES ('1650', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 08:41:04', '2020-01-05 08:41:04');
INSERT INTO `admin_operation_log` VALUES ('1651', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:41:06', '2020-01-05 08:41:06');
INSERT INTO `admin_operation_log` VALUES ('1652', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:41:08', '2020-01-05 08:41:08');
INSERT INTO `admin_operation_log` VALUES ('1653', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:41:09', '2020-01-05 08:41:09');
INSERT INTO `admin_operation_log` VALUES ('1654', '1', 'admin/auth/menu/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:41:12', '2020-01-05 08:41:12');
INSERT INTO `admin_operation_log` VALUES ('1655', '1', 'admin/auth/menu/16', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7535\\u5b50\\u8d26\\u6237\",\"icon\":\"fa-key\",\"uri\":\"electron-users\",\"roles\":[null],\"permission\":null,\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-05 08:42:46', '2020-01-05 08:42:46');
INSERT INTO `admin_operation_log` VALUES ('1656', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 08:42:46', '2020-01-05 08:42:46');
INSERT INTO `admin_operation_log` VALUES ('1657', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 08:42:48', '2020-01-05 08:42:48');
INSERT INTO `admin_operation_log` VALUES ('1658', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:42:51', '2020-01-05 08:42:51');
INSERT INTO `admin_operation_log` VALUES ('1659', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:42:55', '2020-01-05 08:42:55');
INSERT INTO `admin_operation_log` VALUES ('1660', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:42:57', '2020-01-05 08:42:57');
INSERT INTO `admin_operation_log` VALUES ('1661', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2020-01-05 08:46:16', '2020-01-05 08:46:16');
INSERT INTO `admin_operation_log` VALUES ('1662', '1', 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:46:23', '2020-01-05 08:46:23');
INSERT INTO `admin_operation_log` VALUES ('1663', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:46:24', '2020-01-05 08:46:24');
INSERT INTO `admin_operation_log` VALUES ('1664', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:46:25', '2020-01-05 08:46:25');
INSERT INTO `admin_operation_log` VALUES ('1665', '1', 'admin/configs', 'GET', '127.0.0.1', '[]', '2020-01-05 08:46:27', '2020-01-05 08:46:27');
INSERT INTO `admin_operation_log` VALUES ('1666', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:46:28', '2020-01-05 08:46:28');
INSERT INTO `admin_operation_log` VALUES ('1667', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:46:29', '2020-01-05 08:46:29');
INSERT INTO `admin_operation_log` VALUES ('1668', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:46:37', '2020-01-05 08:46:37');
INSERT INTO `admin_operation_log` VALUES ('1669', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:46:40', '2020-01-05 08:46:40');
INSERT INTO `admin_operation_log` VALUES ('1670', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:46:42', '2020-01-05 08:46:42');
INSERT INTO `admin_operation_log` VALUES ('1671', '1', 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bank\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"eojsoU56JsnOCKZnD0pV8KTTaARF815pdauLvBgU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-05 08:46:47', '2020-01-05 08:46:47');
INSERT INTO `admin_operation_log` VALUES ('1672', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 08:46:47', '2020-01-05 08:46:47');
INSERT INTO `admin_operation_log` VALUES ('1673', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 08:46:49', '2020-01-05 08:46:49');
INSERT INTO `admin_operation_log` VALUES ('1674', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 08:46:52', '2020-01-05 08:46:52');
INSERT INTO `admin_operation_log` VALUES ('1675', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:46:58', '2020-01-05 08:46:58');
INSERT INTO `admin_operation_log` VALUES ('1676', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:49:15', '2020-01-05 08:49:15');
INSERT INTO `admin_operation_log` VALUES ('1677', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:49:16', '2020-01-05 08:49:16');
INSERT INTO `admin_operation_log` VALUES ('1678', '1', 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:49:34', '2020-01-05 08:49:34');
INSERT INTO `admin_operation_log` VALUES ('1679', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:49:35', '2020-01-05 08:49:35');
INSERT INTO `admin_operation_log` VALUES ('1680', '1', 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:49:36', '2020-01-05 08:49:36');
INSERT INTO `admin_operation_log` VALUES ('1681', '1', 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:49:38', '2020-01-05 08:49:38');
INSERT INTO `admin_operation_log` VALUES ('1682', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:49:39', '2020-01-05 08:49:39');
INSERT INTO `admin_operation_log` VALUES ('1683', '1', 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:49:56', '2020-01-05 08:49:56');
INSERT INTO `admin_operation_log` VALUES ('1684', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:51:57', '2020-01-05 08:51:57');
INSERT INTO `admin_operation_log` VALUES ('1685', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:52:00', '2020-01-05 08:52:00');
INSERT INTO `admin_operation_log` VALUES ('1686', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:52:01', '2020-01-05 08:52:01');
INSERT INTO `admin_operation_log` VALUES ('1687', '1', 'admin/colleges', 'GET', '127.0.0.1', '[]', '2020-01-05 08:52:01', '2020-01-05 08:52:01');
INSERT INTO `admin_operation_log` VALUES ('1688', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:52:07', '2020-01-05 08:52:07');
INSERT INTO `admin_operation_log` VALUES ('1689', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:52:08', '2020-01-05 08:52:08');
INSERT INTO `admin_operation_log` VALUES ('1690', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:56:38', '2020-01-05 08:56:38');
INSERT INTO `admin_operation_log` VALUES ('1691', '1', 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:56:38', '2020-01-05 08:56:38');
INSERT INTO `admin_operation_log` VALUES ('1692', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:56:40', '2020-01-05 08:56:40');
INSERT INTO `admin_operation_log` VALUES ('1693', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:56:41', '2020-01-05 08:56:41');
INSERT INTO `admin_operation_log` VALUES ('1694', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:56:41', '2020-01-05 08:56:41');
INSERT INTO `admin_operation_log` VALUES ('1695', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:56:42', '2020-01-05 08:56:42');
INSERT INTO `admin_operation_log` VALUES ('1696', '1', 'admin/patent-states', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:56:42', '2020-01-05 08:56:42');
INSERT INTO `admin_operation_log` VALUES ('1697', '1', 'admin/patents', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:56:43', '2020-01-05 08:56:43');
INSERT INTO `admin_operation_log` VALUES ('1698', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:56:44', '2020-01-05 08:56:44');
INSERT INTO `admin_operation_log` VALUES ('1699', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 08:56:44', '2020-01-05 08:56:44');
INSERT INTO `admin_operation_log` VALUES ('1700', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '[]', '2020-01-05 09:04:54', '2020-01-05 09:04:54');
INSERT INTO `admin_operation_log` VALUES ('1701', '1', 'admin/patent-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 09:04:55', '2020-01-05 09:04:55');
INSERT INTO `admin_operation_log` VALUES ('1702', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 09:04:56', '2020-01-05 09:04:56');
INSERT INTO `admin_operation_log` VALUES ('1703', '1', 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 09:04:57', '2020-01-05 09:04:57');
INSERT INTO `admin_operation_log` VALUES ('1704', '1', 'admin/patent-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 09:05:25', '2020-01-05 09:05:25');
INSERT INTO `admin_operation_log` VALUES ('1705', '1', 'admin/patent-domains', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 09:05:26', '2020-01-05 09:05:26');
INSERT INTO `admin_operation_log` VALUES ('1706', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 11:24:53', '2020-01-05 11:24:53');
INSERT INTO `admin_operation_log` VALUES ('1707', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"address\"}', '2020-01-05 11:24:54', '2020-01-05 11:24:54');
INSERT INTO `admin_operation_log` VALUES ('1708', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 11:28:05', '2020-01-05 11:28:05');
INSERT INTO `admin_operation_log` VALUES ('1709', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 11:28:07', '2020-01-05 11:28:07');
INSERT INTO `admin_operation_log` VALUES ('1710', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 11:28:08', '2020-01-05 11:28:08');
INSERT INTO `admin_operation_log` VALUES ('1711', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 11:28:18', '2020-01-05 11:28:18');
INSERT INTO `admin_operation_log` VALUES ('1712', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 11:28:19', '2020-01-05 11:28:19');
INSERT INTO `admin_operation_log` VALUES ('1713', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 11:28:20', '2020-01-05 11:28:20');
INSERT INTO `admin_operation_log` VALUES ('1714', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 11:32:14', '2020-01-05 11:32:14');
INSERT INTO `admin_operation_log` VALUES ('1715', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 11:33:10', '2020-01-05 11:33:10');
INSERT INTO `admin_operation_log` VALUES ('1716', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"address\"}', '2020-01-05 11:48:09', '2020-01-05 11:48:09');
INSERT INTO `admin_operation_log` VALUES ('1717', '1', 'admin/configs', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2020-01-05 11:48:11', '2020-01-05 11:48:11');
INSERT INTO `admin_operation_log` VALUES ('1718', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 11:48:12', '2020-01-05 11:48:12');
INSERT INTO `admin_operation_log` VALUES ('1719', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 11:48:14', '2020-01-05 11:48:14');
INSERT INTO `admin_operation_log` VALUES ('1720', '1', 'admin/electron-users', 'GET', '127.0.0.1', '[]', '2020-01-05 11:52:35', '2020-01-05 11:52:35');
INSERT INTO `admin_operation_log` VALUES ('1721', '1', 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:27:48', '2020-01-05 12:27:48');
INSERT INTO `admin_operation_log` VALUES ('1722', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:27:50', '2020-01-05 12:27:50');
INSERT INTO `admin_operation_log` VALUES ('1723', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"articles\",\"roles\":[null],\"permission\":null,\"_token\":\"6JfyXZPza7LDzDY4BsSPAE846qrChScwuwBVu7Qj\"}', '2020-01-05 12:28:02', '2020-01-05 12:28:02');
INSERT INTO `admin_operation_log` VALUES ('1724', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 12:28:02', '2020-01-05 12:28:02');
INSERT INTO `admin_operation_log` VALUES ('1725', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"6JfyXZPza7LDzDY4BsSPAE846qrChScwuwBVu7Qj\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":14},{\\\"id\\\":13}]},{\\\"id\\\":15},{\\\"id\\\":16},{\\\"id\\\":17}]\"}', '2020-01-05 12:28:10', '2020-01-05 12:28:10');
INSERT INTO `admin_operation_log` VALUES ('1726', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:28:10', '2020-01-05 12:28:10');
INSERT INTO `admin_operation_log` VALUES ('1727', '1', 'admin/auth/menu/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:28:11', '2020-01-05 12:28:11');
INSERT INTO `admin_operation_log` VALUES ('1728', '1', 'admin/auth/menu/17', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"icon\":\"fa-weibo\",\"uri\":\"articles\",\"roles\":[null],\"permission\":null,\"_token\":\"6JfyXZPza7LDzDY4BsSPAE846qrChScwuwBVu7Qj\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/auth\\/menu\"}', '2020-01-05 12:28:40', '2020-01-05 12:28:40');
INSERT INTO `admin_operation_log` VALUES ('1729', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 12:28:40', '2020-01-05 12:28:40');
INSERT INTO `admin_operation_log` VALUES ('1730', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 12:28:44', '2020-01-05 12:28:44');
INSERT INTO `admin_operation_log` VALUES ('1731', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:28:45', '2020-01-05 12:28:45');
INSERT INTO `admin_operation_log` VALUES ('1732', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:28:47', '2020-01-05 12:28:47');
INSERT INTO `admin_operation_log` VALUES ('1733', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:28:50', '2020-01-05 12:28:50');
INSERT INTO `admin_operation_log` VALUES ('1734', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:28:51', '2020-01-05 12:28:51');
INSERT INTO `admin_operation_log` VALUES ('1735', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:28:52', '2020-01-05 12:28:52');
INSERT INTO `admin_operation_log` VALUES ('1736', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:28:53', '2020-01-05 12:28:53');
INSERT INTO `admin_operation_log` VALUES ('1737', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:28:54', '2020-01-05 12:28:54');
INSERT INTO `admin_operation_log` VALUES ('1738', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:28:54', '2020-01-05 12:28:54');
INSERT INTO `admin_operation_log` VALUES ('1739', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:28:55', '2020-01-05 12:28:55');
INSERT INTO `admin_operation_log` VALUES ('1740', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:28:55', '2020-01-05 12:28:55');
INSERT INTO `admin_operation_log` VALUES ('1741', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:28:56', '2020-01-05 12:28:56');
INSERT INTO `admin_operation_log` VALUES ('1742', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:28:56', '2020-01-05 12:28:56');
INSERT INTO `admin_operation_log` VALUES ('1743', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:29:39', '2020-01-05 12:29:39');
INSERT INTO `admin_operation_log` VALUES ('1744', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 12:31:19', '2020-01-05 12:31:19');
INSERT INTO `admin_operation_log` VALUES ('1745', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 12:33:13', '2020-01-05 12:33:13');
INSERT INTO `admin_operation_log` VALUES ('1746', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:33:14', '2020-01-05 12:33:14');
INSERT INTO `admin_operation_log` VALUES ('1747', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 12:33:31', '2020-01-05 12:33:31');
INSERT INTO `admin_operation_log` VALUES ('1748', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:33:32', '2020-01-05 12:33:32');
INSERT INTO `admin_operation_log` VALUES ('1749', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:33:54', '2020-01-05 12:33:54');
INSERT INTO `admin_operation_log` VALUES ('1750', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:33:56', '2020-01-05 12:33:56');
INSERT INTO `admin_operation_log` VALUES ('1751', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:33:59', '2020-01-05 12:33:59');
INSERT INTO `admin_operation_log` VALUES ('1752', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:33:59', '2020-01-05 12:33:59');
INSERT INTO `admin_operation_log` VALUES ('1753', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:34:02', '2020-01-05 12:34:02');
INSERT INTO `admin_operation_log` VALUES ('1754', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:34:05', '2020-01-05 12:34:05');
INSERT INTO `admin_operation_log` VALUES ('1755', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:34:06', '2020-01-05 12:34:06');
INSERT INTO `admin_operation_log` VALUES ('1756', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:34:09', '2020-01-05 12:34:09');
INSERT INTO `admin_operation_log` VALUES ('1757', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:34:15', '2020-01-05 12:34:15');
INSERT INTO `admin_operation_log` VALUES ('1758', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:35:02', '2020-01-05 12:35:02');
INSERT INTO `admin_operation_log` VALUES ('1759', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:35:04', '2020-01-05 12:35:04');
INSERT INTO `admin_operation_log` VALUES ('1760', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 12:35:15', '2020-01-05 12:35:15');
INSERT INTO `admin_operation_log` VALUES ('1761', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:35:20', '2020-01-05 12:35:20');
INSERT INTO `admin_operation_log` VALUES ('1762', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:38:18', '2020-01-05 12:38:18');
INSERT INTO `admin_operation_log` VALUES ('1763', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:39:10', '2020-01-05 12:39:10');
INSERT INTO `admin_operation_log` VALUES ('1764', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:39:16', '2020-01-05 12:39:16');
INSERT INTO `admin_operation_log` VALUES ('1765', '1', 'admin/articles', 'POST', '127.0.0.1', '{\"type\":\"about\",\"title\":\"222\",\"author\":\"22\",\"from\":null,\"desc\":null,\"_token\":\"6JfyXZPza7LDzDY4BsSPAE846qrChScwuwBVu7Qj\",\"editorValue\":\"<p>2222<br\\/><\\/p>\"}', '2020-01-05 12:39:37', '2020-01-05 12:39:37');
INSERT INTO `admin_operation_log` VALUES ('1766', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 12:39:37', '2020-01-05 12:39:37');
INSERT INTO `admin_operation_log` VALUES ('1767', '1', 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:39:40', '2020-01-05 12:39:40');
INSERT INTO `admin_operation_log` VALUES ('1768', '1', 'admin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-01-05 12:43:07', '2020-01-05 12:43:07');
INSERT INTO `admin_operation_log` VALUES ('1769', '1', 'admin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-01-05 12:43:18', '2020-01-05 12:43:18');
INSERT INTO `admin_operation_log` VALUES ('1770', '1', 'admin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-01-05 12:43:19', '2020-01-05 12:43:19');
INSERT INTO `admin_operation_log` VALUES ('1771', '1', 'admin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-01-05 12:47:43', '2020-01-05 12:47:43');
INSERT INTO `admin_operation_log` VALUES ('1772', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:47:48', '2020-01-05 12:47:48');
INSERT INTO `admin_operation_log` VALUES ('1773', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-01-05 12:47:54', '2020-01-05 12:47:54');
INSERT INTO `admin_operation_log` VALUES ('1774', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:47:55', '2020-01-05 12:47:55');
INSERT INTO `admin_operation_log` VALUES ('1775', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:47:56', '2020-01-05 12:47:56');
INSERT INTO `admin_operation_log` VALUES ('1776', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:48:00', '2020-01-05 12:48:00');
INSERT INTO `admin_operation_log` VALUES ('1777', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:49:38', '2020-01-05 12:49:38');
INSERT INTO `admin_operation_log` VALUES ('1778', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:49:39', '2020-01-05 12:49:39');
INSERT INTO `admin_operation_log` VALUES ('1779', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:52:12', '2020-01-05 12:52:12');
INSERT INTO `admin_operation_log` VALUES ('1780', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:52:53', '2020-01-05 12:52:53');
INSERT INTO `admin_operation_log` VALUES ('1781', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:53:00', '2020-01-05 12:53:00');
INSERT INTO `admin_operation_log` VALUES ('1782', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:53:01', '2020-01-05 12:53:01');
INSERT INTO `admin_operation_log` VALUES ('1783', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 12:53:21', '2020-01-05 12:53:21');
INSERT INTO `admin_operation_log` VALUES ('1784', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:53:24', '2020-01-05 12:53:24');
INSERT INTO `admin_operation_log` VALUES ('1785', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 12:53:25', '2020-01-05 12:53:25');
INSERT INTO `admin_operation_log` VALUES ('1786', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:09:30', '2020-01-05 13:09:30');
INSERT INTO `admin_operation_log` VALUES ('1787', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:09:53', '2020-01-05 13:09:53');
INSERT INTO `admin_operation_log` VALUES ('1788', '1', 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:09:55', '2020-01-05 13:09:55');
INSERT INTO `admin_operation_log` VALUES ('1789', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:09:58', '2020-01-05 13:09:58');
INSERT INTO `admin_operation_log` VALUES ('1790', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:10:01', '2020-01-05 13:10:01');
INSERT INTO `admin_operation_log` VALUES ('1791', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:10:12', '2020-01-05 13:10:12');
INSERT INTO `admin_operation_log` VALUES ('1792', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:10:15', '2020-01-05 13:10:15');
INSERT INTO `admin_operation_log` VALUES ('1793', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:10:17', '2020-01-05 13:10:17');
INSERT INTO `admin_operation_log` VALUES ('1794', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:10:20', '2020-01-05 13:10:20');
INSERT INTO `admin_operation_log` VALUES ('1795', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:10:21', '2020-01-05 13:10:21');
INSERT INTO `admin_operation_log` VALUES ('1796', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:10:22', '2020-01-05 13:10:22');
INSERT INTO `admin_operation_log` VALUES ('1797', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:10:26', '2020-01-05 13:10:26');
INSERT INTO `admin_operation_log` VALUES ('1798', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:10:28', '2020-01-05 13:10:28');
INSERT INTO `admin_operation_log` VALUES ('1799', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:10:32', '2020-01-05 13:10:32');
INSERT INTO `admin_operation_log` VALUES ('1800', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:10:33', '2020-01-05 13:10:33');
INSERT INTO `admin_operation_log` VALUES ('1801', '2', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:10:48', '2020-01-05 13:10:48');
INSERT INTO `admin_operation_log` VALUES ('1802', '2', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:10:53', '2020-01-05 13:10:53');
INSERT INTO `admin_operation_log` VALUES ('1803', '2', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:10:55', '2020-01-05 13:10:55');
INSERT INTO `admin_operation_log` VALUES ('1804', '2', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:11:01', '2020-01-05 13:11:01');
INSERT INTO `admin_operation_log` VALUES ('1805', '2', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:11:21', '2020-01-05 13:11:21');
INSERT INTO `admin_operation_log` VALUES ('1806', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:11:26', '2020-01-05 13:11:26');
INSERT INTO `admin_operation_log` VALUES ('1807', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:11:30', '2020-01-05 13:11:30');
INSERT INTO `admin_operation_log` VALUES ('1808', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:11:41', '2020-01-05 13:11:41');
INSERT INTO `admin_operation_log` VALUES ('1809', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:11:42', '2020-01-05 13:11:42');
INSERT INTO `admin_operation_log` VALUES ('1810', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:12:15', '2020-01-05 13:12:15');
INSERT INTO `admin_operation_log` VALUES ('1811', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:17:07', '2020-01-05 13:17:07');
INSERT INTO `admin_operation_log` VALUES ('1812', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:18:47', '2020-01-05 13:18:47');
INSERT INTO `admin_operation_log` VALUES ('1813', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:19:14', '2020-01-05 13:19:14');
INSERT INTO `admin_operation_log` VALUES ('1814', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:19:16', '2020-01-05 13:19:16');
INSERT INTO `admin_operation_log` VALUES ('1815', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:19:17', '2020-01-05 13:19:17');
INSERT INTO `admin_operation_log` VALUES ('1816', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:19:18', '2020-01-05 13:19:18');
INSERT INTO `admin_operation_log` VALUES ('1817', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:20:14', '2020-01-05 13:20:14');
INSERT INTO `admin_operation_log` VALUES ('1818', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:20:30', '2020-01-05 13:20:30');
INSERT INTO `admin_operation_log` VALUES ('1819', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:20:31', '2020-01-05 13:20:31');
INSERT INTO `admin_operation_log` VALUES ('1820', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:20:32', '2020-01-05 13:20:32');
INSERT INTO `admin_operation_log` VALUES ('1821', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:20:43', '2020-01-05 13:20:43');
INSERT INTO `admin_operation_log` VALUES ('1822', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:20:45', '2020-01-05 13:20:45');
INSERT INTO `admin_operation_log` VALUES ('1823', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:20:55', '2020-01-05 13:20:55');
INSERT INTO `admin_operation_log` VALUES ('1824', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:21:02', '2020-01-05 13:21:02');
INSERT INTO `admin_operation_log` VALUES ('1825', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:21:07', '2020-01-05 13:21:07');
INSERT INTO `admin_operation_log` VALUES ('1826', '1', 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:21:12', '2020-01-05 13:21:12');
INSERT INTO `admin_operation_log` VALUES ('1827', '1', 'admin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-01-05 13:21:15', '2020-01-05 13:21:15');
INSERT INTO `admin_operation_log` VALUES ('1828', '1', 'admin/articles/1', 'PUT', '127.0.0.1', '{\"type\":\"about\",\"title\":\"\\u4f01\\u4e1a\\u4ecb\\u7ecd\",\"author\":null,\"from\":null,\"desc\":null,\"_token\":\"T4TimI5xrTKESnrorWBlcNp57Q0tIgULvkkdTtdP\",\"_method\":\"PUT\",\"content\":\"<p style=\\\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-size: 18px;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; text-indent: 32px; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); background: rgb(255, 255, 255);\\\">\\u90d1\\u5dde\\u829d\\u9ebb\\u77e5\\u8bc6\\u4ea7\\u6743\\u4ee3\\u7406\\u4e8b\\u52a1\\u6240(\\u666e\\u901a\\u5408\\u4f19)\\u662f\\u4e00\\u5bb6\\u7ecf<\\/span><strong style=\\\"margin: 0px; padding: 0px; list-style-type: none; text-indent: 32px;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); background: rgb(255, 255, 255);\\\">\\u56fd\\u52a1\\u9662\\u4e13\\u5229\\u884c\\u653f\\u90e8\\u95e8\\u6279\\u51c6\\u8bbe\\u7acb<\\/span><\\/strong><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; text-indent: 32px; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); background: rgb(255, 255, 255);\\\">\\u7684\\u7efc\\u5408\\u6027\\u77e5\\u8bc6\\u4ea7\\u6743\\u4ee3\\u7406\\u670d\\u52a1\\u673a\\u6784\\uff0c\\u56fd\\u5bb6\\u77e5\\u8bc6\\u4ea7\\u6743\\u6279\\u51c6\\u4ee3\\u7801\\uff1a41173\\u3002<\\/span><\\/span><\\/p><p style=\\\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\\\"><strong style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u516c\\u53f8\\u6982\\u51b5\\u53ca\\u4e1a\\u52a1\\u8303\\u56f4<\\/span><\\/span><\\/strong><\\/p><p style=\\\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u90d1\\u5dde\\u829d\\u9ebb<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u77e5\\u8bc6\\u4ea7\\u6743<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u4ee5\\u8bda\\u4fe1<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u3001<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u4e25\\u8c28\\u7684\\u4f01\\u4e1a\\u6001\\u5ea6<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\uff0c<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u51ed\\u501f\\u4e13\\u4e1a\\u7684\\u6280\\u672f\\u6c34\\u5e73\\uff0c\\u9ad8\\u8d28\\u91cf\\u7684\\u5ba2\\u6237\\u670d\\u52a1\\uff0c<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u4e3a\\u5ba2\\u6237\\u7684\\u65b0\\u4ea7\\u54c1\\u3001\\u65b0\\u6280\\u672f\\u63d0\\u4f9b<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u5168\\u65b9\\u4f4d<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u7684\\u77e5\\u8bc6\\u4ea7\\u6743\\u4fdd\\u62a4\\u65b9\\u6848<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\uff0c<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u81f4\\u529b\\u4e8e<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u6253\\u9020\\u5168\\u56fd\\u4e00\\u6d41\\u670d\\u52a1\\u56e2\\u961f\\u3001\\u521b\\u5efa\\u4e00\\u6d41\\u670d\\u52a1\\u5e73\\u53f0\\u3002<\\/span><\\/span><\\/p><p style=\\\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u516c\\u53f8<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u73b0<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u4e0b\\u8bbe\\u673a\\u68b0\\u4e13\\u5229\\u4ee3\\u7406\\u90e8\\u3001\\u7535\\u5b66\\u4e13\\u5229\\u4ee3\\u7406\\u90e8\\u3001\\u5316\\u5b66\\u4e13\\u5229\\u4ee3\\u7406\\u90e8\\u3001\\u5546\\u6807\\u4ee3\\u7406\\u90e8\\u3001\\u8457\\u4f5c\\u6743\\u4ee3\\u7406\\u90e8\\u3001\\u79d1\\u6280\\u9879\\u76ee\\u90e8\\u3001\\u4eba\\u5de5\\u667a\\u80fd\\u7814\\u53d1\\u90e8\\u3001\\u9ad8\\u6821\\u670d\\u52a1\\u90e8\\u3001\\u6d41\\u7a0b\\u90e8\\u3001\\u6cd5\\u5f8b\\u8bc9\\u8bbc\\u90e8<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u7b49\\u591a\\u4e2a\\u90e8\\u95e8\\uff0c\\u591a\\u5e74\\u6765\\u51ed\\u501f<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u4e30\\u5bcc\\u7684\\u4e13\\u4e1a\\u77e5\\u8bc6\\u548c\\u77e5\\u8bc6\\u4ea7\\u6743\\u4ee3\\u7406\\u7ecf\\u9a8c<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\uff0c<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u670d\\u52a1\\u4e8e\\u5404\\u4e2a<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u4e13\\u4e1a\\u9886\\u57df<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\uff0c<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u4e1a\\u52a1\\u8303\\u56f4<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u6db5\\u76d6\\u5316\\u5de5\\u3001\\u533b\\u836f\\u3001\\u7535\\u5b50\\u3001\\u901a\\u4fe1\\u3001\\u7f51\\u7edc\\u3001\\u8ba1\\u7b97\\u673a\\u8f6f\\u4ef6\\u3001\\u96c6\\u6210\\u7535\\u8def\\u3001\\u534a\\u5bfc\\u4f53\\u3001\\u7eff\\u8272\\u80fd\\u6e90\\u3001\\u673a\\u68b0\\u3001\\u81ea\\u52a8\\u5316\\u3001\\u4eba\\u5de5\\u667a\\u80fd<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u7b49<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u56fd\\u5185\\u5916\\u4e13\\u5229<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u4ee3\\u7406<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u3001\\u5546\\u6807\\u4ee3\\u7406\\u3001\\u4fe1\\u606f\\u68c0\\u7d22\\u3001\\u79d1\\u6280\\u9879\\u76ee\\u7533\\u62a5<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u670d\\u52a1<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\uff0c<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u53ca<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u4e13\\u5229\\u9884\\u8b66\\u5206\\u6790\\u3001\\u4e13\\u5229\\u65e0\\u6548\\u8bc9\\u8bbc\\u7b49<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u77e5\\u8bc6\\u4ea7\\u6743\\u6cd5\\u5f8b\\u670d\\u52a1<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\uff0c<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u7b49\\u7b49<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u3002<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1;\\\">&nbsp;<\\/span><\\/p><p style=\\\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\\\"><strong style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u4f01\\u4e1a\\u8363\\u8a89<\\/span><\\/span><\\/strong><\\/p><p style=\\\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\\\"><strong style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u4e2d\\u534e\\u5168\\u56fd\\u4e13\\u5229\\u4ee3\\u7406\\u4eba\\u534f\\u4f1a\\u4f1a\\u5458\\u5355\\u4f4d<\\/span><\\/span><\\/strong><\\/p><p style=\\\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\\\"><strong style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u90d1\\u5dde\\u5e02\\u91d1\\u6c34\\u533a\\u77e5\\u8bc6\\u4ea7\\u6743\\u534f\\u4f1a\\u526f\\u4f1a\\u957f\\u5355\\u4f4d<\\/span><\\/span><\\/strong><\\/p><p style=\\\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\\\"><strong style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u56fd\\u5bb6<\\/span><\\/span><\\/strong><strong style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u77e5\\u8bc6\\u4ea7\\u6743\\u521b\\u610f\\u4ea7\\u4e1a\\u8bd5\\u70b9\\u56ed\\u533a\\u4e13\\u5229\\u4fe1\\u606f\\u68c0\\u7d22\\u670d\\u52a1\\u4e2d\\u5fc3\\u6307\\u5b9a\\u5408\\u4f5c\\u4f19\\u4f34<\\/span><\\/span><\\/strong><strong style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); background: rgb(255, 255, 255);\\\">&nbsp;<\\/span><\\/strong><\\/p><p style=\\\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\\\"><strong style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u6210\\u529f\\u6848\\u4f8b<\\/span><\\/span><\\/strong><\\/p><p style=\\\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u829d\\u9ebb\\u76ee\\u524d<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u5408\\u4f5c<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u5ba2\\u6237\\u6db5\\u76d6\\u591a\\u4e2a\\u9886\\u57df\\uff0c\\u4e3b\\u8981<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u6709<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; font-size: 16px;\\\">\\u89e3\\u653e\\u519b\\u4fe1\\u606f\\u5de5\\u7a0b\\u5927\\u5b66\\u3001<\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u897f\\u5b89\\u7535\\u5b50\\u79d1\\u6280\\u5927\\u5b66\\u3001\\u90d1\\u5dde\\u5927\\u5b66\\u3001\\u6cb3\\u5357\\u5927\\u5b66\\u3001\\u90d1\\u5dde\\u822a\\u7a7a\\u5de5\\u4e1a\\u7ba1\\u7406\\u5b66\\u9662\\u3001\\u4e2d\\u94c1\\u5de5\\u7a0b\\u88c5\\u5907\\u96c6\\u56e2\\u6709\\u9650\\u516c\\u53f8\\u3001\\u6cb3\\u5357\\u68ee\\u6e90\\u9e3f\\u9a6c\\u7535\\u52a8\\u6c7d\\u8f66\\u6709\\u9650\\u516c\\u53f8\\u3001\\u6cb3\\u5357\\u8d85\\u5a01\\u7535\\u6e90\\u6709\\u9650\\u516c\\u53f8\\u3001\\u5357\\u9633\\u9632\\u7206\\u96c6\\u56e2\\u80a1\\u4efd\\u6709\\u9650\\u516c\\u53f8\\u7b49<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u7b49<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u3002<\\/span><\\/span><\\/p><p style=\\\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\\\"><strong style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u4f01\\u4e1a\\u7406\\u5ff5<\\/span><\\/span><\\/strong><\\/p><p style=\\\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\\\"><strong style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255); font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1;\\\">\\u54c1\\u8d28<\\/span><\\/strong><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\">\\u2014\\u2014\\u4eba\\u4e3a\\u672c\\uff0c\\u8d28\\u505a\\u57fa\\uff0c\\u4f01\\u4e1a\\u5927\\u53a6\\u5e73\\u5730\\u8d77\\uff01\\u90d1\\u5dde\\u829d\\u9ebb\\u7684\\u670d\\u52a1\\u7406\\u5ff5\\u65e0\\u5f02\\u4e8e<\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; font-size: 16px;\\\">\\u201c\\u54c1\\u8d28\\u201d\\u4e8c\\u5b57\\uff0c\\u9ad8\\u7aef\\u4e13\\u4e1a\\u7684\\u670d\\u52a1\\u5b9a\\u5236\\uff0c\\u5168\\u65b9\\u4f4d\\u9ad8\\u8d28\\u91cf\\u7684\\u670d\\u52a1\\u7406\\u5ff5\\uff0c\\u8ba9\\u6bcf\\u4e00\\u4f4d\\u8d70\\u8fdb\\u829d\\u9ebb\\u7684\\u5ba2\\u6237\\uff0c\\u4e58\\u5174\\u800c\\u6765\\uff0c\\u4e58\\u5174\\u800c\\u5f52\\uff01<\\/span><\\/p><p style=\\\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\\\"><strong style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u4e92\\u52a9<\\/span><\\/span><\\/strong><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\">\\u2014\\u2014\\u4eba\\u4e4b\\u6240\\u52a9\\u8005\\uff0c\\u4fe1\\u4e5f\\u3002\\u8fd9\\u662f\\u4e00\\u4e2a\\u6700\\u597d\\u7684\\u65f6\\u4ee3\\uff0c\\u4e5f\\u662f\\u4e00\\u4e2a\\u6700\\u574f\\u7684\\u65f6\\u4ee3\\u3002\\u4eba\\u5355\\u817f\\u4e0d\\u80fd\\u8d70\\u8def\\uff0c\\u6ca1\\u6709\\u54ea\\u4e2a\\u884c\\u4e1a\\u53ea\\u5b58\\u5728\\u201c\\u5355\\u6253\\u72ec\\u6597\\u201d\\u7684\\u4f01\\u4e1a\\u3002\\u90d1\\u5dde\\u829d\\u9ebb\\u7684\\u7f8e\\u597d\\u613f\\u666f\\uff0c\\u662f\\u4e0e\\u6bcf\\u4e00\\u4f4d\\u77e5\\u8bc6\\u4ea7\\u6743\\u4eba\\u643a\\u624b\\u8fdb\\u9000\\uff0c\\u5728\\u77e5\\u8bc6\\u4ea7\\u6743\\u7684\\u7f8e\\u597d\\u672a\\u6765\\u8def\\u4e0a\\u62fc\\u5c3d\\u5168\\u529b\\u3001\\u534f\\u4f5c\\u5171\\u8d62\\uff01<\\/span><\\/p><p style=\\\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\\\"><strong style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u8d64\\u8bda<\\/span><\\/span><\\/strong><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\">\\u2014\\u2014\\u5e38\\u6000\\u8d64\\u5b50\\u4e4b\\u5fc3\\uff0c\\u4eba\\u751f\\u65e0\\u9650\\u6d9f\\u6f2a\\u3002\\u7528\\u4e00\\u9897\\u6ee1\\u6000\\u611f\\u6069\\u7684\\u5fc3\\u5bf9\\u5f85\\u5ba2\\u6237\\u5bb6\\u4eba\\u3001\\u670b\\u53cb\\uff0c\\u7528\\u4e00\\u9897\\u8d64\\u8bda\\u4e4b\\u5fc3\\u6295\\u5165\\u5de5\\u4f5c\\u3001\\u751f\\u6d3b\\u3001\\u62b1\\u8d1f\\u3002\\u90d1\\u5dde\\u829d\\u9ebb\\u7684\\u6bcf\\u4e00\\u4f4d\\u5458\\u5de5\\uff0c\\u65e0\\u4e0d\\u6000\\u7740\\u8fd9\\u6837\\u7684\\u5fc3\\u60c5\\u6295\\u5165\\u5230\\u77e5\\u8bc6\\u4ea7\\u6743\\u670d\\u52a1\\u884c\\u4e1a\\uff0c\\u6211\\u4eec\\u76f8\\u4fe1\\uff0c\\u4ee5\\u5fc3\\u6613\\u5fc3\\uff0c\\u56de\\u62a5\\u5fc5\\u5b9a\\u5927\\u4e8e\\u4ed8\\u51fa\\uff01<\\/span><\\/p><p style=\\\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\\\"><strong style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u5353\\u8d8a<\\/span><\\/span><\\/strong><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\">\\u2014\\u2014\\u4e00\\u4e2a\\u4f1f\\u5927\\u7684\\u7075\\u9b42\\uff0c\\u4f1a\\u5f3a\\u5316\\u601d\\u60f3\\u548c\\u751f\\u547d\\u3002\\u4f01\\u4e1a\\u4e5f\\u5e94\\u5982\\u6b64\\uff0c<\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\">&nbsp;<\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u77e5\\u8bc6\\u4ea7\\u6743\\u884c<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u4e1a\\u7684\\u5185\\u6db5\\u968f\\u7740\\u77e5\\u8bc6\\u7ecf\\u6d4e\\u65f6\\u4ee3\\u7684\\u5230\\u6765<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\uff0c<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u5728\\u56fd\\u6c11\\u7ecf\\u6d4e\\u4e2d\\u7684\\u4ea7\\u503c\\u65e5\\u76ca\\u589e\\u5927<\\/span><\\/span><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\uff0c\\u8fd9\\u662f\\u884c\\u4e1a\\u826f\\u6027\\u53d1\\u5c55\\u7684\\u8868\\u73b0\\uff0c\\u90d1\\u5dde\\u829d\\u9ebb\\u77e5\\u8bc6\\u4ea7\\u6743\\u4f5c\\u4e3a\\u77e5\\u8bc6\\u4ea7\\u6743\\u884c\\u4e1a\\u5e9e\\u5927\\u5e02\\u573a\\u7684\\u4e00\\u4efd\\u5b50\\uff0c\\u4e0e\\u5e7f\\u5927\\u7684\\u77e5\\u8bc6\\u4ea7\\u6743\\u884c\\u4e1a\\u540c\\u80de\\u4eec\\u4e00\\u6837\\uff0c\\u4e5f\\u81f4\\u529b\\u4e8e\\u4e3a\\u4e2d\\u56fd\\u7684\\u77e5\\u8bc6\\u4ea7\\u6743\\u884c\\u4e1a\\u8d21\\u732e\\u81ea\\u5df1\\u7684\\u4e00\\u4efd\\u8584\\u529b\\uff01<\\/span><\\/span><\\/p><p style=\\\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\\\"><strong style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u4e13\\u5229\\u64ac\\u52a8\\u65f6\\u4ee3\\uff0c\\u670d\\u52a1\\u6539\\u53d8\\u672a\\u6765\\uff01\\u90d1\\u5dde\\u829d\\u9ebb\\uff0c\\u77e5\\u8bc6\\u4ea7\\u6743\\u7684\\u5b88\\u62a4\\u8005\\uff01<\\/span><\\/span><\\/strong><\\/p><p><br\\/><\\/p>\"}', '2020-01-05 13:21:46', '2020-01-05 13:21:46');
INSERT INTO `admin_operation_log` VALUES ('1829', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:21:46', '2020-01-05 13:21:46');
INSERT INTO `admin_operation_log` VALUES ('1830', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:21:48', '2020-01-05 13:21:48');
INSERT INTO `admin_operation_log` VALUES ('1831', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:21:50', '2020-01-05 13:21:50');
INSERT INTO `admin_operation_log` VALUES ('1832', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:22:00', '2020-01-05 13:22:00');
INSERT INTO `admin_operation_log` VALUES ('1833', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:22:06', '2020-01-05 13:22:06');
INSERT INTO `admin_operation_log` VALUES ('1834', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:22:08', '2020-01-05 13:22:08');
INSERT INTO `admin_operation_log` VALUES ('1835', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:22:10', '2020-01-05 13:22:10');
INSERT INTO `admin_operation_log` VALUES ('1836', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:22:15', '2020-01-05 13:22:15');
INSERT INTO `admin_operation_log` VALUES ('1837', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:23:18', '2020-01-05 13:23:18');
INSERT INTO `admin_operation_log` VALUES ('1838', '1', 'admin/articles', 'POST', '127.0.0.1', '{\"type\":\"about\",\"title\":\"\\u521b\\u59cb\\u4eba\\u5bc4\\u8bed\",\"author\":null,\"from\":null,\"desc\":null,\"_token\":\"T4TimI5xrTKESnrorWBlcNp57Q0tIgULvkkdTtdP\",\"content\":\"<p style=\\\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; color: rgb(227, 108, 9); font-size: 18px;\\\"><strong style=\\\"margin: 0px; padding: 0px; list-style-type: none;\\\">\\u603b\\u7ecf\\u7406: \\u5218\\u548f\\u6668<\\/strong><\\/span><br\\/><\\/p><p style=\\\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 2em; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1, &quot;Microsoft YaHei&quot;; font-size: 16px;\\\">\\u4e00\\u4e2a\\u4f01\\u4e1a\\uff0c\\u521b\\u59cb\\u4eba\\u7684\\u8fb9\\u754c\\uff0c\\u5c31\\u662f\\u5176\\u6700\\u7ec8\\u7684\\u53d1\\u5c55\\u8fb9\\u754c\\uff1b<\\/span><\\/p><p style=\\\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 2em; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1, &quot;Microsoft YaHei&quot;; font-size: 16px;\\\">\\u4e00\\u4e2a\\u521b\\u59cb\\u4eba\\uff0c\\u4f5c\\u4e3a\\u516c\\u53f8\\u5e73\\u53f0\\u7684\\u539f\\u751f\\u529b\\u91cf\\uff0c\\u4f34\\u968f\\u4ece0\\u52301\\uff0c\\u4ece1\\u5230N\\u7684\\u6240\\u6709\\u6210\\u957f\\u8de8\\u8d8a\\uff1b<\\/span><\\/p><p style=\\\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 2em; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-size: 16px;\\\"><span style=\\\"margin: 0px; padding: 0px; list-style-type: none; font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1, &quot;Microsoft YaHei&quot;;\\\">\\u90d1\\u5dde\\u829d\\u9ebb\\u77e5\\u8bc6\\u4ea7\\u6743\\u7684\\u521b\\u59cb\\u4eba\\u5218\\u548f\\u6668\\u5148\\u751f\\uff0c\\u591a\\u5e74\\u4ee5\\u6765\\u4ee5\\u829d\\u9ebb\\u77e5\\u8bc6\\u4ea7\\u6743\\u4f20\\u64ad\\u8005\\u548c\\u8df5\\u884c\\u8005\\u7684\\u8eab\\u4efd\\u4e0d\\u65ad\\u4e0e\\u884c\\u4e1a\\u5bf9\\u8bdd\\u3001\\u9488\\u5bf9\\u6027\\u4ea4\\u6d41\\uff0c\\u7cbe\\u786e\\u5224\\u65ad\\u673a\\u4f1a\\u548c\\u98ce\\u9669\\uff0c\\u4e0d\\u65ad\\u5b9e\\u73b0\\u90d1\\u5dde\\u829d\\u9ebb\\u77e5\\u8bc6\\u4ea7\\u6743\\u521b\\u65b0\\u62d3\\u5c55\\u7684\\u80fd\\u529b\\uff0c\\u4fdd\\u6301\\u4f01\\u4e1a\\u751f\\u547d\\u7684\\u6c38\\u52a8\\u529b\\uff01<\\/span><\\/span><\\/p><p><br\\/><\\/p>\"}', '2020-01-05 13:23:58', '2020-01-05 13:23:58');
INSERT INTO `admin_operation_log` VALUES ('1839', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:23:59', '2020-01-05 13:23:59');
INSERT INTO `admin_operation_log` VALUES ('1840', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:24:03', '2020-01-05 13:24:03');
INSERT INTO `admin_operation_log` VALUES ('1841', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:24:05', '2020-01-05 13:24:05');
INSERT INTO `admin_operation_log` VALUES ('1842', '1', 'admin/articles', 'POST', '127.0.0.1', '{\"type\":\"about\",\"title\":\"\\u53d1\\u5c55\\u5386\\u7a0b\",\"author\":null,\"from\":null,\"desc\":null,\"_token\":\"T4TimI5xrTKESnrorWBlcNp57Q0tIgULvkkdTtdP\",\"content\":\"<p><img src=\\\"\\/storage\\/uploads\\/images\\/20200105\\/1578230688150675.jpg\\\" title=\\\"1578230688150675.jpg\\\" alt=\\\"6369854242248450439594064.jpg\\\"\\/><\\/p>\"}', '2020-01-05 13:24:50', '2020-01-05 13:24:50');
INSERT INTO `admin_operation_log` VALUES ('1843', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:24:50', '2020-01-05 13:24:50');
INSERT INTO `admin_operation_log` VALUES ('1844', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:24:52', '2020-01-05 13:24:52');
INSERT INTO `admin_operation_log` VALUES ('1845', '1', 'admin/articles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:24:55', '2020-01-05 13:24:55');
INSERT INTO `admin_operation_log` VALUES ('1846', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:25:00', '2020-01-05 13:25:00');
INSERT INTO `admin_operation_log` VALUES ('1847', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:25:02', '2020-01-05 13:25:02');
INSERT INTO `admin_operation_log` VALUES ('1848', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:25:18', '2020-01-05 13:25:18');
INSERT INTO `admin_operation_log` VALUES ('1849', '1', 'admin/articles', 'POST', '127.0.0.1', '{\"type\":\"business\",\"title\":\"\\u4e13\\u5229\",\"author\":null,\"from\":null,\"desc\":null,\"_token\":\"T4TimI5xrTKESnrorWBlcNp57Q0tIgULvkkdTtdP\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/articles\"}', '2020-01-05 13:25:37', '2020-01-05 13:25:37');
INSERT INTO `admin_operation_log` VALUES ('1850', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:25:37', '2020-01-05 13:25:37');
INSERT INTO `admin_operation_log` VALUES ('1851', '1', 'admin/articles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:25:40', '2020-01-05 13:25:40');
INSERT INTO `admin_operation_log` VALUES ('1852', '1', 'admin/articles/4/edit', 'GET', '127.0.0.1', '[]', '2020-01-05 13:25:49', '2020-01-05 13:25:49');
INSERT INTO `admin_operation_log` VALUES ('1853', '1', 'admin/articles/4', 'PUT', '127.0.0.1', '{\"type\":\"business\",\"title\":\"\\u4e13\\u5229\",\"author\":null,\"from\":null,\"desc\":null,\"_token\":\"T4TimI5xrTKESnrorWBlcNp57Q0tIgULvkkdTtdP\",\"_method\":\"PUT\",\"content\":\"<p><img src=\\\"\\/storage\\/uploads\\/images\\/20200105\\/1578230761443143.jpg\\\" title=\\\"1578230761443143.jpg\\\" alt=\\\"6369880025598327714280501.jpg\\\"\\/><\\/p>\"}', '2020-01-05 13:26:04', '2020-01-05 13:26:04');
INSERT INTO `admin_operation_log` VALUES ('1854', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:26:04', '2020-01-05 13:26:04');
INSERT INTO `admin_operation_log` VALUES ('1855', '1', 'admin/articles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:26:07', '2020-01-05 13:26:07');
INSERT INTO `admin_operation_log` VALUES ('1856', '1', 'admin/articles/4/edit', 'GET', '127.0.0.1', '[]', '2020-01-05 13:26:15', '2020-01-05 13:26:15');
INSERT INTO `admin_operation_log` VALUES ('1857', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:26:22', '2020-01-05 13:26:22');
INSERT INTO `admin_operation_log` VALUES ('1858', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:43:29', '2020-01-05 13:43:29');
INSERT INTO `admin_operation_log` VALUES ('1859', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:43:36', '2020-01-05 13:43:36');
INSERT INTO `admin_operation_log` VALUES ('1860', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:43:41', '2020-01-05 13:43:41');
INSERT INTO `admin_operation_log` VALUES ('1861', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:49:04', '2020-01-05 13:49:04');
INSERT INTO `admin_operation_log` VALUES ('1862', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:49:24', '2020-01-05 13:49:24');
INSERT INTO `admin_operation_log` VALUES ('1863', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:49:28', '2020-01-05 13:49:28');
INSERT INTO `admin_operation_log` VALUES ('1864', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:50:21', '2020-01-05 13:50:21');
INSERT INTO `admin_operation_log` VALUES ('1865', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:50:26', '2020-01-05 13:50:26');
INSERT INTO `admin_operation_log` VALUES ('1866', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:50:28', '2020-01-05 13:50:28');
INSERT INTO `admin_operation_log` VALUES ('1867', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:50:58', '2020-01-05 13:50:58');
INSERT INTO `admin_operation_log` VALUES ('1868', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:50:59', '2020-01-05 13:50:59');
INSERT INTO `admin_operation_log` VALUES ('1869', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:51:31', '2020-01-05 13:51:31');
INSERT INTO `admin_operation_log` VALUES ('1870', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:52:35', '2020-01-05 13:52:35');
INSERT INTO `admin_operation_log` VALUES ('1871', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:52:50', '2020-01-05 13:52:50');
INSERT INTO `admin_operation_log` VALUES ('1872', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:52:59', '2020-01-05 13:52:59');
INSERT INTO `admin_operation_log` VALUES ('1873', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:53:00', '2020-01-05 13:53:00');
INSERT INTO `admin_operation_log` VALUES ('1874', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:53:31', '2020-01-05 13:53:31');
INSERT INTO `admin_operation_log` VALUES ('1875', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:53:35', '2020-01-05 13:53:35');
INSERT INTO `admin_operation_log` VALUES ('1876', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:53:36', '2020-01-05 13:53:36');
INSERT INTO `admin_operation_log` VALUES ('1877', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:53:40', '2020-01-05 13:53:40');
INSERT INTO `admin_operation_log` VALUES ('1878', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 13:53:51', '2020-01-05 13:53:51');
INSERT INTO `admin_operation_log` VALUES ('1879', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:53:53', '2020-01-05 13:53:53');
INSERT INTO `admin_operation_log` VALUES ('1880', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 13:53:58', '2020-01-05 13:53:58');
INSERT INTO `admin_operation_log` VALUES ('1881', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:53:59', '2020-01-05 13:53:59');
INSERT INTO `admin_operation_log` VALUES ('1882', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 13:54:00', '2020-01-05 13:54:00');
INSERT INTO `admin_operation_log` VALUES ('1883', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:09:09', '2020-01-05 14:09:09');
INSERT INTO `admin_operation_log` VALUES ('1884', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:09:12', '2020-01-05 14:09:12');
INSERT INTO `admin_operation_log` VALUES ('1885', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:09:21', '2020-01-05 14:09:21');
INSERT INTO `admin_operation_log` VALUES ('1886', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:09:23', '2020-01-05 14:09:23');
INSERT INTO `admin_operation_log` VALUES ('1887', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:10:01', '2020-01-05 14:10:01');
INSERT INTO `admin_operation_log` VALUES ('1888', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:10:13', '2020-01-05 14:10:13');
INSERT INTO `admin_operation_log` VALUES ('1889', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:12:06', '2020-01-05 14:12:06');
INSERT INTO `admin_operation_log` VALUES ('1890', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:12:09', '2020-01-05 14:12:09');
INSERT INTO `admin_operation_log` VALUES ('1891', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:14:51', '2020-01-05 14:14:51');
INSERT INTO `admin_operation_log` VALUES ('1892', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:19:46', '2020-01-05 14:19:46');
INSERT INTO `admin_operation_log` VALUES ('1893', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:20:09', '2020-01-05 14:20:09');
INSERT INTO `admin_operation_log` VALUES ('1894', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:20:42', '2020-01-05 14:20:42');
INSERT INTO `admin_operation_log` VALUES ('1895', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:22:12', '2020-01-05 14:22:12');
INSERT INTO `admin_operation_log` VALUES ('1896', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:22:18', '2020-01-05 14:22:18');
INSERT INTO `admin_operation_log` VALUES ('1897', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:22:23', '2020-01-05 14:22:23');
INSERT INTO `admin_operation_log` VALUES ('1898', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:22:33', '2020-01-05 14:22:33');
INSERT INTO `admin_operation_log` VALUES ('1899', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:22:40', '2020-01-05 14:22:40');
INSERT INTO `admin_operation_log` VALUES ('1900', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:23:14', '2020-01-05 14:23:14');
INSERT INTO `admin_operation_log` VALUES ('1901', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 14:23:17', '2020-01-05 14:23:17');
INSERT INTO `admin_operation_log` VALUES ('1902', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:23:18', '2020-01-05 14:23:18');
INSERT INTO `admin_operation_log` VALUES ('1903', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:23:59', '2020-01-05 14:23:59');
INSERT INTO `admin_operation_log` VALUES ('1904', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:24:00', '2020-01-05 14:24:00');
INSERT INTO `admin_operation_log` VALUES ('1905', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:24:04', '2020-01-05 14:24:04');
INSERT INTO `admin_operation_log` VALUES ('1906', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:24:05', '2020-01-05 14:24:05');
INSERT INTO `admin_operation_log` VALUES ('1907', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:25:26', '2020-01-05 14:25:26');
INSERT INTO `admin_operation_log` VALUES ('1908', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:25:28', '2020-01-05 14:25:28');
INSERT INTO `admin_operation_log` VALUES ('1909', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:26:08', '2020-01-05 14:26:08');
INSERT INTO `admin_operation_log` VALUES ('1910', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:26:41', '2020-01-05 14:26:41');
INSERT INTO `admin_operation_log` VALUES ('1911', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:27:15', '2020-01-05 14:27:15');
INSERT INTO `admin_operation_log` VALUES ('1912', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:27:18', '2020-01-05 14:27:18');
INSERT INTO `admin_operation_log` VALUES ('1913', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:27:27', '2020-01-05 14:27:27');
INSERT INTO `admin_operation_log` VALUES ('1914', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:27:28', '2020-01-05 14:27:28');
INSERT INTO `admin_operation_log` VALUES ('1915', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:27:30', '2020-01-05 14:27:30');
INSERT INTO `admin_operation_log` VALUES ('1916', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:31:08', '2020-01-05 14:31:08');
INSERT INTO `admin_operation_log` VALUES ('1917', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:31:11', '2020-01-05 14:31:11');
INSERT INTO `admin_operation_log` VALUES ('1918', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:31:13', '2020-01-05 14:31:13');
INSERT INTO `admin_operation_log` VALUES ('1919', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:31:49', '2020-01-05 14:31:49');
INSERT INTO `admin_operation_log` VALUES ('1920', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:31:51', '2020-01-05 14:31:51');
INSERT INTO `admin_operation_log` VALUES ('1921', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:31:52', '2020-01-05 14:31:52');
INSERT INTO `admin_operation_log` VALUES ('1922', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:31:53', '2020-01-05 14:31:53');
INSERT INTO `admin_operation_log` VALUES ('1923', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:32:03', '2020-01-05 14:32:03');
INSERT INTO `admin_operation_log` VALUES ('1924', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:32:05', '2020-01-05 14:32:05');
INSERT INTO `admin_operation_log` VALUES ('1925', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:32:24', '2020-01-05 14:32:24');
INSERT INTO `admin_operation_log` VALUES ('1926', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:32:25', '2020-01-05 14:32:25');
INSERT INTO `admin_operation_log` VALUES ('1927', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:32:27', '2020-01-05 14:32:27');
INSERT INTO `admin_operation_log` VALUES ('1928', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:32:28', '2020-01-05 14:32:28');
INSERT INTO `admin_operation_log` VALUES ('1929', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:32:29', '2020-01-05 14:32:29');
INSERT INTO `admin_operation_log` VALUES ('1930', '1', 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:32:31', '2020-01-05 14:32:31');
INSERT INTO `admin_operation_log` VALUES ('1931', '2', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:32:45', '2020-01-05 14:32:45');
INSERT INTO `admin_operation_log` VALUES ('1932', '2', 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:32:47', '2020-01-05 14:32:47');
INSERT INTO `admin_operation_log` VALUES ('1933', '1', 'admin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-01-05 14:33:26', '2020-01-05 14:33:26');
INSERT INTO `admin_operation_log` VALUES ('1934', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:33:29', '2020-01-05 14:33:29');
INSERT INTO `admin_operation_log` VALUES ('1935', '1', 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:33:33', '2020-01-05 14:33:33');
INSERT INTO `admin_operation_log` VALUES ('1936', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:33:44', '2020-01-05 14:33:44');
INSERT INTO `admin_operation_log` VALUES ('1937', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:36:42', '2020-01-05 14:36:42');
INSERT INTO `admin_operation_log` VALUES ('1938', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:42:31', '2020-01-05 14:42:31');
INSERT INTO `admin_operation_log` VALUES ('1939', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:42:37', '2020-01-05 14:42:37');
INSERT INTO `admin_operation_log` VALUES ('1940', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:42:38', '2020-01-05 14:42:38');
INSERT INTO `admin_operation_log` VALUES ('1941', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:42:49', '2020-01-05 14:42:49');
INSERT INTO `admin_operation_log` VALUES ('1942', '1', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:43:00', '2020-01-05 14:43:00');
INSERT INTO `admin_operation_log` VALUES ('1943', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:44:05', '2020-01-05 14:44:05');
INSERT INTO `admin_operation_log` VALUES ('1944', '1', 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-01-05 14:44:34', '2020-01-05 14:44:34');
INSERT INTO `admin_operation_log` VALUES ('1945', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:44:35', '2020-01-05 14:44:35');
INSERT INTO `admin_operation_log` VALUES ('1946', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:44:36', '2020-01-05 14:44:36');
INSERT INTO `admin_operation_log` VALUES ('1947', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:44:36', '2020-01-05 14:44:36');
INSERT INTO `admin_operation_log` VALUES ('1948', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:59:11', '2020-01-05 14:59:11');
INSERT INTO `admin_operation_log` VALUES ('1949', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:59:13', '2020-01-05 14:59:13');
INSERT INTO `admin_operation_log` VALUES ('1950', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:59:15', '2020-01-05 14:59:15');
INSERT INTO `admin_operation_log` VALUES ('1951', '2', 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:59:15', '2020-01-05 14:59:15');
INSERT INTO `admin_operation_log` VALUES ('1952', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:59:31', '2020-01-05 14:59:31');
INSERT INTO `admin_operation_log` VALUES ('1953', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:59:33', '2020-01-05 14:59:33');
INSERT INTO `admin_operation_log` VALUES ('1954', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 14:59:36', '2020-01-05 14:59:36');
INSERT INTO `admin_operation_log` VALUES ('1955', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 15:00:03', '2020-01-05 15:00:03');
INSERT INTO `admin_operation_log` VALUES ('1956', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5173\\u952e\\u5b57\",\"icon\":\"fa-bars\",\"uri\":\"keywords\",\"roles\":[null],\"permission\":null,\"_token\":\"T4TimI5xrTKESnrorWBlcNp57Q0tIgULvkkdTtdP\"}', '2020-01-05 15:00:14', '2020-01-05 15:00:14');
INSERT INTO `admin_operation_log` VALUES ('1957', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 15:00:15', '2020-01-05 15:00:15');
INSERT INTO `admin_operation_log` VALUES ('1958', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u53cb\\u60c5\\u94fe\\u63a5\",\"icon\":\"fa-bars\",\"uri\":\"friend-links\",\"roles\":[null],\"permission\":null,\"_token\":\"T4TimI5xrTKESnrorWBlcNp57Q0tIgULvkkdTtdP\"}', '2020-01-05 15:00:36', '2020-01-05 15:00:36');
INSERT INTO `admin_operation_log` VALUES ('1959', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 15:00:36', '2020-01-05 15:00:36');
INSERT INTO `admin_operation_log` VALUES ('1960', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"T4TimI5xrTKESnrorWBlcNp57Q0tIgULvkkdTtdP\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":14},{\\\"id\\\":13}]},{\\\"id\\\":15},{\\\"id\\\":16},{\\\"id\\\":17},{\\\"id\\\":19},{\\\"id\\\":18}]\"}', '2020-01-05 15:00:51', '2020-01-05 15:00:51');
INSERT INTO `admin_operation_log` VALUES ('1961', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:00:52', '2020-01-05 15:00:52');
INSERT INTO `admin_operation_log` VALUES ('1962', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 15:00:54', '2020-01-05 15:00:54');
INSERT INTO `admin_operation_log` VALUES ('1963', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-05 15:00:59', '2020-01-05 15:00:59');
INSERT INTO `admin_operation_log` VALUES ('1964', '1', 'admin/friend-links', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:01:00', '2020-01-05 15:01:00');
INSERT INTO `admin_operation_log` VALUES ('1965', '1', 'admin/friend-links', 'GET', '127.0.0.1', '[]', '2020-01-05 15:02:14', '2020-01-05 15:02:14');
INSERT INTO `admin_operation_log` VALUES ('1966', '1', 'admin/friend-links/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:02:16', '2020-01-05 15:02:16');
INSERT INTO `admin_operation_log` VALUES ('1967', '1', 'admin/friend-links/create', 'GET', '127.0.0.1', '[]', '2020-01-05 15:02:49', '2020-01-05 15:02:49');
INSERT INTO `admin_operation_log` VALUES ('1968', '1', 'admin/friend-links/create', 'GET', '127.0.0.1', '[]', '2020-01-05 15:03:08', '2020-01-05 15:03:08');
INSERT INTO `admin_operation_log` VALUES ('1969', '1', 'admin/friend-links/create', 'GET', '127.0.0.1', '[]', '2020-01-05 15:03:14', '2020-01-05 15:03:14');
INSERT INTO `admin_operation_log` VALUES ('1970', '1', 'admin/friend-links/create', 'GET', '127.0.0.1', '[]', '2020-01-05 15:03:16', '2020-01-05 15:03:16');
INSERT INTO `admin_operation_log` VALUES ('1971', '1', 'admin/friend-links/create', 'GET', '127.0.0.1', '[]', '2020-01-05 15:03:20', '2020-01-05 15:03:20');
INSERT INTO `admin_operation_log` VALUES ('1972', '1', 'admin/friend-links', 'POST', '127.0.0.1', '{\"name\":\"\\u56fd\\u5bb6\\u77e5\\u8bc6\\u4ea7\\u6743\\u5c40\",\"url\":\"http:\\/\\/cpquery.sipo.gov.cn\\/\",\"_token\":\"T4TimI5xrTKESnrorWBlcNp57Q0tIgULvkkdTtdP\"}', '2020-01-05 15:05:11', '2020-01-05 15:05:11');
INSERT INTO `admin_operation_log` VALUES ('1973', '1', 'admin/friend-links', 'GET', '127.0.0.1', '[]', '2020-01-05 15:05:11', '2020-01-05 15:05:11');
INSERT INTO `admin_operation_log` VALUES ('1974', '1', 'admin/friend-links', 'GET', '127.0.0.1', '[]', '2020-01-05 15:05:12', '2020-01-05 15:05:12');
INSERT INTO `admin_operation_log` VALUES ('1975', '1', 'admin/friend-links', 'GET', '127.0.0.1', '[]', '2020-01-05 15:05:14', '2020-01-05 15:05:14');
INSERT INTO `admin_operation_log` VALUES ('1976', '1', 'admin/friend-links', 'GET', '127.0.0.1', '[]', '2020-01-05 15:05:14', '2020-01-05 15:05:14');
INSERT INTO `admin_operation_log` VALUES ('1977', '1', 'admin/friend-links', 'GET', '127.0.0.1', '[]', '2020-01-05 15:05:15', '2020-01-05 15:05:15');
INSERT INTO `admin_operation_log` VALUES ('1978', '1', 'admin/friend-links', 'GET', '127.0.0.1', '[]', '2020-01-05 15:05:16', '2020-01-05 15:05:16');
INSERT INTO `admin_operation_log` VALUES ('1979', '1', 'admin/friend-links', 'GET', '127.0.0.1', '[]', '2020-01-05 15:05:17', '2020-01-05 15:05:17');
INSERT INTO `admin_operation_log` VALUES ('1980', '1', 'admin/friend-links', 'GET', '127.0.0.1', '[]', '2020-01-05 15:05:21', '2020-01-05 15:05:21');
INSERT INTO `admin_operation_log` VALUES ('1981', '1', 'admin/friend-links', 'GET', '127.0.0.1', '[]', '2020-01-05 15:05:25', '2020-01-05 15:05:25');
INSERT INTO `admin_operation_log` VALUES ('1982', '1', 'admin/friend-links', 'GET', '127.0.0.1', '[]', '2020-01-05 15:05:35', '2020-01-05 15:05:35');
INSERT INTO `admin_operation_log` VALUES ('1983', '1', 'admin/keywords', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:05:37', '2020-01-05 15:05:37');
INSERT INTO `admin_operation_log` VALUES ('1984', '1', 'admin/keywords', 'GET', '127.0.0.1', '[]', '2020-01-05 15:07:10', '2020-01-05 15:07:10');
INSERT INTO `admin_operation_log` VALUES ('1985', '1', 'admin/keywords', 'GET', '127.0.0.1', '[]', '2020-01-05 15:07:11', '2020-01-05 15:07:11');
INSERT INTO `admin_operation_log` VALUES ('1986', '1', 'admin/keywords', 'GET', '127.0.0.1', '[]', '2020-01-05 15:07:22', '2020-01-05 15:07:22');
INSERT INTO `admin_operation_log` VALUES ('1987', '1', 'admin/keywords', 'GET', '127.0.0.1', '[]', '2020-01-05 15:07:23', '2020-01-05 15:07:23');
INSERT INTO `admin_operation_log` VALUES ('1988', '1', 'admin/keywords', 'GET', '127.0.0.1', '[]', '2020-01-05 15:08:22', '2020-01-05 15:08:22');
INSERT INTO `admin_operation_log` VALUES ('1989', '1', 'admin/keywords/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:08:24', '2020-01-05 15:08:24');
INSERT INTO `admin_operation_log` VALUES ('1990', '1', 'admin/keywords', 'POST', '127.0.0.1', '{\"name\":\"AI\",\"url\":\"http:\\/\\/cpquery.sipo.gov.cn\\/\",\"type\":\"1\",\"_token\":\"T4TimI5xrTKESnrorWBlcNp57Q0tIgULvkkdTtdP\",\"_previous_\":\"http:\\/\\/www.zhima.cn\\/admin\\/keywords\"}', '2020-01-05 15:08:33', '2020-01-05 15:08:33');
INSERT INTO `admin_operation_log` VALUES ('1991', '1', 'admin/keywords', 'GET', '127.0.0.1', '[]', '2020-01-05 15:08:33', '2020-01-05 15:08:33');
INSERT INTO `admin_operation_log` VALUES ('1992', '1', 'admin/keywords', 'GET', '127.0.0.1', '[]', '2020-01-05 15:08:43', '2020-01-05 15:08:43');
INSERT INTO `admin_operation_log` VALUES ('1993', '1', 'admin/keywords', 'GET', '127.0.0.1', '[]', '2020-01-05 15:08:48', '2020-01-05 15:08:48');
INSERT INTO `admin_operation_log` VALUES ('1994', '1', 'admin/keywords', 'GET', '127.0.0.1', '[]', '2020-01-05 15:08:49', '2020-01-05 15:08:49');
INSERT INTO `admin_operation_log` VALUES ('1995', '1', 'admin/keywords', 'GET', '127.0.0.1', '[]', '2020-01-05 15:08:49', '2020-01-05 15:08:49');
INSERT INTO `admin_operation_log` VALUES ('1996', '1', 'admin/keywords', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:08:51', '2020-01-05 15:08:51');
INSERT INTO `admin_operation_log` VALUES ('1997', '1', 'admin/friend-links', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:08:52', '2020-01-05 15:08:52');
INSERT INTO `admin_operation_log` VALUES ('1998', '1', 'admin/keywords', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:08:53', '2020-01-05 15:08:53');
INSERT INTO `admin_operation_log` VALUES ('1999', '1', 'admin/keywords', 'GET', '127.0.0.1', '[]', '2020-01-05 15:08:55', '2020-01-05 15:08:55');
INSERT INTO `admin_operation_log` VALUES ('2000', '1', 'admin/keywords', 'GET', '127.0.0.1', '[]', '2020-01-05 15:08:57', '2020-01-05 15:08:57');
INSERT INTO `admin_operation_log` VALUES ('2001', '1', 'admin/friend-links', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:08:58', '2020-01-05 15:08:58');
INSERT INTO `admin_operation_log` VALUES ('2002', '1', 'admin/keywords', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:08:59', '2020-01-05 15:08:59');
INSERT INTO `admin_operation_log` VALUES ('2003', '1', 'admin/friend-links', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:09:00', '2020-01-05 15:09:00');
INSERT INTO `admin_operation_log` VALUES ('2004', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:09:01', '2020-01-05 15:09:01');
INSERT INTO `admin_operation_log` VALUES ('2005', '1', 'admin/friend-links', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:09:01', '2020-01-05 15:09:01');
INSERT INTO `admin_operation_log` VALUES ('2006', '1', 'admin/keywords', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:09:02', '2020-01-05 15:09:02');
INSERT INTO `admin_operation_log` VALUES ('2007', '1', 'admin/friend-links', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:09:02', '2020-01-05 15:09:02');
INSERT INTO `admin_operation_log` VALUES ('2008', '1', 'admin/keywords', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:09:03', '2020-01-05 15:09:03');
INSERT INTO `admin_operation_log` VALUES ('2009', '1', 'admin/friend-links', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:09:03', '2020-01-05 15:09:03');
INSERT INTO `admin_operation_log` VALUES ('2010', '1', 'admin/keywords', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:09:04', '2020-01-05 15:09:04');
INSERT INTO `admin_operation_log` VALUES ('2011', '1', 'admin/friend-links', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:09:05', '2020-01-05 15:09:05');
INSERT INTO `admin_operation_log` VALUES ('2012', '1', 'admin/electron-users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:09:05', '2020-01-05 15:09:05');
INSERT INTO `admin_operation_log` VALUES ('2013', '1', 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:09:06', '2020-01-05 15:09:06');
INSERT INTO `admin_operation_log` VALUES ('2014', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:09:07', '2020-01-05 15:09:07');
INSERT INTO `admin_operation_log` VALUES ('2015', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-05 15:09:08', '2020-01-05 15:09:08');
INSERT INTO `admin_operation_log` VALUES ('2016', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-01-05 15:09:11', '2020-01-05 15:09:11');

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
INSERT INTO `admin_role_menu` VALUES ('1', '9', null, null);
INSERT INTO `admin_role_menu` VALUES ('2', '9', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '10', null, null);
INSERT INTO `admin_role_menu` VALUES ('2', '10', null, null);

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
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$vTIa5lcdFWbvxv6cL03/6Ov/M.zE.CQ6iCncGBjBuVX9fnDKmXq9K', 'Administrator', null, 'VhLLBSoVMyCwykd9ekHILlRYPHvWAm0fPuc1IApQpwmM1jselQVEHBxDmMup', '2019-12-23 07:48:14', '2019-12-23 07:48:14');
INSERT INTO `admin_users` VALUES ('2', 'jwb123', '$2y$10$XfbnhRkRj5QY/XT2BLJ4luF4zq9EChYVKLCFSCHbo7f6dtwFnEWoe', '焦文斌', null, 'nqk40eCvTpcUP5hdHdOEf1y1wiybw3krznYvTPAnK2myqqGecw7GOLOk3blT', '2020-01-03 05:37:26', '2020-01-04 14:47:36');

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
-- Table structure for `articles`
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '类型',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `desc` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '列表图',
  `from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '来源',
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '作者',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', 'about', '企业介绍', null, null, null, null, '<p style=\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-size: 18px;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; text-indent: 32px; font-family: 微软雅黑; color: rgb(51, 51, 51); background: rgb(255, 255, 255);\">郑州芝麻知识产权代理事务所(普通合伙)是一家经</span><strong style=\"margin: 0px; padding: 0px; list-style-type: none; text-indent: 32px;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); background: rgb(255, 255, 255);\">国务院专利行政部门批准设立</span></strong><span style=\"margin: 0px; padding: 0px; list-style-type: none; text-indent: 32px; font-family: 微软雅黑; color: rgb(51, 51, 51); background: rgb(255, 255, 255);\">的综合性知识产权代理服务机构，国家知识产权批准代码：41173。</span></span></p><p style=\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\"><strong style=\"margin: 0px; padding: 0px; list-style-type: none;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">公司概况及业务范围</span></span></strong></p><p style=\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">郑州芝麻</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">知识产权</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">以诚信</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">、</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">严谨的企业态度</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">，</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">凭借专业的技术水平，高质量的客户服务，</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">为客户的新产品、新技术提供</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">全方位</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">的知识产权保护方案</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">，</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">致力于</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">打造全国一流服务团队、创建一流服务平台。</span></span></p><p style=\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">公司</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">现</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">下设机械专利代理部、电学专利代理部、化学专利代理部、商标代理部、著作权代理部、科技项目部、人工智能研发部、高校服务部、流程部、法律诉讼部</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">等多个部门，多年来凭借</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">丰富的专业知识和知识产权代理经验</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">，</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">服务于各个</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">专业领域</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">，</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">业务范围</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">涵盖化工、医药、电子、通信、网络、计算机软件、集成电路、半导体、绿色能源、机械、自动化、人工智能</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">等</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">国内外专利</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">代理</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">、商标代理、信息检索、科技项目申报</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">服务</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">，</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">及</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">专利预警分析、专利无效诉讼等</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">知识产权法律服务</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">，</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">等等</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">。</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: 微软雅黑;\">&nbsp;</span></p><p style=\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\"><strong style=\"margin: 0px; padding: 0px; list-style-type: none;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">企业荣誉</span></span></strong></p><p style=\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\"><strong style=\"margin: 0px; padding: 0px; list-style-type: none;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">中华全国专利代理人协会会员单位</span></span></strong></p><p style=\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\"><strong style=\"margin: 0px; padding: 0px; list-style-type: none;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">郑州市金水区知识产权协会副会长单位</span></span></strong></p><p style=\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\"><strong style=\"margin: 0px; padding: 0px; list-style-type: none;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">国家</span></span></strong><strong style=\"margin: 0px; padding: 0px; list-style-type: none;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">知识产权创意产业试点园区专利信息检索服务中心指定合作伙伴</span></span></strong><strong style=\"margin: 0px; padding: 0px; list-style-type: none;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); background: rgb(255, 255, 255);\">&nbsp;</span></strong></p><p style=\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\"><strong style=\"margin: 0px; padding: 0px; list-style-type: none;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">成功案例</span></span></strong></p><p style=\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">芝麻目前</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">合作</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">客户涵盖多个领域，主要</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">有</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; font-size: 16px;\">解放军信息工程大学、</span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">西安电子科技大学、郑州大学、河南大学、郑州航空工业管理学院、中铁工程装备集团有限公司、河南森源鸿马电动汽车有限公司、河南超威电源有限公司、南阳防爆集团股份有限公司等</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">等</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">。</span></span></p><p style=\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\"><strong style=\"margin: 0px; padding: 0px; list-style-type: none;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">企业理念</span></span></strong></p><p style=\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\"><strong style=\"margin: 0px; padding: 0px; list-style-type: none;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255); font-family: 微软雅黑;\">品质</span></strong><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\">——人为本，质做基，企业大厦平地起！郑州芝麻的服务理念无异于</span><span style=\"margin: 0px; padding: 0px; list-style-type: none; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px;\">“品质”二字，高端专业的服务定制，全方位高质量的服务理念，让每一位走进芝麻的客户，乘兴而来，乘兴而归！</span></p><p style=\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\"><strong style=\"margin: 0px; padding: 0px; list-style-type: none;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">互助</span></span></strong><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\">——人之所助者，信也。这是一个最好的时代，也是一个最坏的时代。人单腿不能走路，没有哪个行业只存在“单打独斗”的企业。郑州芝麻的美好愿景，是与每一位知识产权人携手进退，在知识产权的美好未来路上拼尽全力、协作共赢！</span></p><p style=\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\"><strong style=\"margin: 0px; padding: 0px; list-style-type: none;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">赤诚</span></span></strong><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\">——常怀赤子之心，人生无限涟漪。用一颗满怀感恩的心对待客户家人、朋友，用一颗赤诚之心投入工作、生活、抱负。郑州芝麻的每一位员工，无不怀着这样的心情投入到知识产权服务行业，我们相信，以心易心，回报必定大于付出！</span></p><p style=\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\"><strong style=\"margin: 0px; padding: 0px; list-style-type: none;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">卓越</span></span></strong><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\">——一个伟大的灵魂，会强化思想和生命。企业也应如此，</span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">知识产权行</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">业的内涵随着知识经济时代的到来</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">，</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">在国民经济中的产值日益增大</span></span><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">，这是行业良性发展的表现，郑州芝麻知识产权作为知识产权行业庞大市场的一份子，与广大的知识产权行业同胞们一样，也致力于为中国的知识产权行业贡献自己的一份薄力！</span></span></p><p style=\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal; text-indent: 32px;\"><strong style=\"margin: 0px; padding: 0px; list-style-type: none;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑; color: rgb(51, 51, 51); font-size: 16px; background: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style-type: none;\">专利撬动时代，服务改变未来！郑州芝麻，知识产权的守护者！</span></span></strong></p><p><br/></p>', '2020-01-05 12:39:37', '2020-01-05 13:21:46');
INSERT INTO `articles` VALUES ('2', 'about', '创始人寄语', null, null, null, null, '<p style=\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 30px; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; color: rgb(227, 108, 9); font-size: 18px;\"><strong style=\"margin: 0px; padding: 0px; list-style-type: none;\">总经理: 刘咏晨</strong></span><br/></p><p style=\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 2em; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">一个企业，创始人的边界，就是其最终的发展边界；</span></p><p style=\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 2em; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">一个创始人，作为公司平台的原生力量，伴随从0到1，从1到N的所有成长跨越；</span></p><p style=\"margin-top: 20px; margin-bottom: 0px; padding: 0px; list-style-type: none; line-height: 2em; font-size: 14px; color: rgb(84, 84, 84); font-family: &quot;Microsoft YaHei&quot;; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-size: 16px;\"><span style=\"margin: 0px; padding: 0px; list-style-type: none; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">郑州芝麻知识产权的创始人刘咏晨先生，多年以来以芝麻知识产权传播者和践行者的身份不断与行业对话、针对性交流，精确判断机会和风险，不断实现郑州芝麻知识产权创新拓展的能力，保持企业生命的永动力！</span></span></p><p><br/></p>', '2020-01-05 13:23:58', '2020-01-05 13:23:58');
INSERT INTO `articles` VALUES ('3', 'about', '发展历程', null, null, null, null, '<p><img src=\"/storage/uploads/images/20200105/1578230688150675.jpg\" title=\"1578230688150675.jpg\" alt=\"6369854242248450439594064.jpg\"/></p>', '2020-01-05 13:24:50', '2020-01-05 13:24:50');
INSERT INTO `articles` VALUES ('4', 'business', '专利', null, null, null, null, '<p><img src=\"/storage/uploads/images/20200105/1578230761443143.jpg\" title=\"1578230761443143.jpg\" alt=\"6369880025598327714280501.jpg\"/></p>', '2020-01-05 13:25:37', '2020-01-05 13:26:04');

-- ----------------------------
-- Table structure for `cert_states`
-- ----------------------------
DROP TABLE IF EXISTS `cert_states`;
CREATE TABLE `cert_states` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '证件状态名称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cert_states
-- ----------------------------

-- ----------------------------
-- Table structure for `colleges`
-- ----------------------------
DROP TABLE IF EXISTS `colleges`;
CREATE TABLE `colleges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '高校名称',
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '高校logo',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `desc` text COLLATE utf8mb4_unicode_ci COMMENT '高校简介',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of colleges
-- ----------------------------
INSERT INTO `colleges` VALUES ('1', '清华大学', 'images/0d338744ebf81a4c4f09f9b9d92a6059252da682.png', '0', '士大夫士大夫随风倒士大夫山豆根豆腐干地方就的更加发达国家法定', '2020-01-05 07:30:06', '2020-01-05 07:42:55');

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
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `configs` VALUES ('27', 'company_tel', 'contact', '0371-63302335', null, '2020-01-03 15:05:46', '2020-01-03 15:05:46');
INSERT INTO `configs` VALUES ('28', 'company_email', 'contact', 'zhimaipr@163.com', null, '2020-01-03 15:05:46', '2020-01-03 15:05:46');
INSERT INTO `configs` VALUES ('29', 'company_address', 'contact', '郑州市高新区长椿路与梧桐街交叉口河南省国家大学科技园孵化1号楼3A16', null, '2020-01-03 15:05:46', '2020-01-03 15:05:46');
INSERT INTO `configs` VALUES ('30', 'company_qr_code', 'contact', 'images/XtDeQNK3AuYAR4cGCpadCm6GoNcmZ20kv8UOQ3PX.jpeg', null, '2020-01-03 15:05:46', '2020-01-03 15:05:46');
INSERT INTO `configs` VALUES ('31', 'site-title', 'site', '111', null, '2020-01-03 15:07:01', '2020-01-03 15:07:01');
INSERT INTO `configs` VALUES ('32', 'site-keywords', 'site', '11', null, '2020-01-03 15:07:01', '2020-01-03 15:07:01');
INSERT INTO `configs` VALUES ('33', 'site-description', 'site', '22', null, '2020-01-03 15:07:01', '2020-01-03 15:07:01');
INSERT INTO `configs` VALUES ('34', 'site-copyright', 'site', null, null, '2020-01-03 15:07:01', '2020-01-03 15:07:01');
INSERT INTO `configs` VALUES ('35', 'site-icp', 'site', null, null, '2020-01-03 15:07:01', '2020-01-03 15:07:01');
INSERT INTO `configs` VALUES ('36', 'site-logo', 'site', 'images/U7sFC6FASYOaoNoixcZMEPrVdJUfWBiz16jGPUTp.jpeg', null, '2020-01-03 15:07:01', '2020-01-03 15:07:01');
INSERT INTO `configs` VALUES ('37', 'company_tel', 'contact', '0371-63302335', null, '2020-01-04 16:10:20', '2020-01-04 16:10:20');
INSERT INTO `configs` VALUES ('38', 'company_email', 'contact', 'zhimaipr@163.com', null, '2020-01-04 16:10:20', '2020-01-04 16:10:20');
INSERT INTO `configs` VALUES ('39', 'company_address', 'contact', '郑州市高新区长椿路与梧桐街交叉口河南省国家大学科技园孵化1号楼3A16', null, '2020-01-04 16:10:20', '2020-01-04 16:10:20');
INSERT INTO `configs` VALUES ('40', 'company_qr_code', 'contact', 'images/company_qr_code.png', null, '2020-01-04 16:10:20', '2020-01-04 16:10:20');
INSERT INTO `configs` VALUES ('41', 'site-title', 'site', '111', null, '2020-01-04 16:11:56', '2020-01-04 16:11:56');
INSERT INTO `configs` VALUES ('42', 'site-keywords', 'site', '11', null, '2020-01-04 16:11:56', '2020-01-04 16:11:56');
INSERT INTO `configs` VALUES ('43', 'site-description', 'site', '22', null, '2020-01-04 16:11:56', '2020-01-04 16:11:56');
INSERT INTO `configs` VALUES ('44', 'site-copyright', 'site', null, null, '2020-01-04 16:11:56', '2020-01-04 16:11:56');
INSERT INTO `configs` VALUES ('45', 'site-icp', 'site', null, null, '2020-01-04 16:11:56', '2020-01-04 16:11:56');
INSERT INTO `configs` VALUES ('46', 'site-logo', 'site', 'images/site-logo.png', null, '2020-01-04 16:11:56', '2020-01-04 16:11:56');
INSERT INTO `configs` VALUES ('47', 'company_tel', 'contact', '0371-63302335', null, '2020-01-04 16:12:51', '2020-01-04 16:12:51');
INSERT INTO `configs` VALUES ('48', 'company_email', 'contact', 'zhimaipr@163.com', null, '2020-01-04 16:12:51', '2020-01-04 16:12:51');
INSERT INTO `configs` VALUES ('49', 'company_address', 'contact', '郑州市高新区长椿路与梧桐街交叉口河南省国家大学科技园孵化1号楼3A16', null, '2020-01-04 16:12:51', '2020-01-04 16:12:51');
INSERT INTO `configs` VALUES ('50', 'company_qr_code', 'contact', 'images/company_qr_code.png', null, '2020-01-04 16:12:51', '2020-01-04 16:12:51');
INSERT INTO `configs` VALUES ('51', 'company_tel', 'contact', '0371-63302335', null, '2020-01-04 16:15:58', '2020-01-04 16:15:58');
INSERT INTO `configs` VALUES ('52', 'company_email', 'contact', 'zhimaipr@163.com', null, '2020-01-04 16:15:58', '2020-01-04 16:15:58');
INSERT INTO `configs` VALUES ('53', 'company_address', 'contact', '郑州市高新区长椿路与梧桐街交叉口河南省国家大学科技园孵化1号楼3A16', null, '2020-01-04 16:15:58', '2020-01-04 16:15:58');
INSERT INTO `configs` VALUES ('54', 'company_qr_code', 'contact', 'images/company_qr_code.png', null, '2020-01-04 16:15:58', '2020-01-04 16:15:58');
INSERT INTO `configs` VALUES ('55', 'company_tel', 'contact', '0371-63302335', null, '2020-01-05 03:43:03', '2020-01-05 03:43:03');
INSERT INTO `configs` VALUES ('56', 'company_email', 'contact', 'zhimaipr@163.com', null, '2020-01-05 03:43:03', '2020-01-05 03:43:03');
INSERT INTO `configs` VALUES ('57', 'company_address', 'contact', '郑州市高新区长椿路与梧桐街交叉口河南省国家大学科技园孵化1号楼3A16', null, '2020-01-05 03:43:03', '2020-01-05 03:43:03');
INSERT INTO `configs` VALUES ('58', 'company_qr_code', 'contact', 'images/contact/company_qr_code.png', null, '2020-01-05 03:43:03', '2020-01-05 03:43:03');

-- ----------------------------
-- Table structure for `electron_users`
-- ----------------------------
DROP TABLE IF EXISTS `electron_users`;
CREATE TABLE `electron_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账户',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  `remark` text COLLATE utf8mb4_unicode_ci COMMENT '备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `electron_users_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of electron_users
-- ----------------------------

-- ----------------------------
-- Table structure for `friend_links`
-- ----------------------------
DROP TABLE IF EXISTS `friend_links`;
CREATE TABLE `friend_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '链接名称',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '链接地址',
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '链接logo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of friend_links
-- ----------------------------
INSERT INTO `friend_links` VALUES ('1', '国家知识产权局', 'http://cpquery.sipo.gov.cn/', 'images/logo.png', '2020-01-05 15:05:11', '2020-01-05 15:05:11');

-- ----------------------------
-- Table structure for `keywords`
-- ----------------------------
DROP TABLE IF EXISTS `keywords`;
CREATE TABLE `keywords` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关键字名称',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关键字链接地址',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '专利关键字',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of keywords
-- ----------------------------
INSERT INTO `keywords` VALUES ('1', 'AI', 'http://cpquery.sipo.gov.cn/', '1', '2020-01-05 15:08:33', '2020-01-05 15:08:33');

-- ----------------------------
-- Table structure for `member_menu`
-- ----------------------------
DROP TABLE IF EXISTS `member_menu`;
CREATE TABLE `member_menu` (
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
-- Records of member_menu
-- ----------------------------
INSERT INTO `member_menu` VALUES ('1', '0', '1', 'Dashboard', 'fa-bar-chart', '/', null, null, null);
INSERT INTO `member_menu` VALUES ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null, null);
INSERT INTO `member_menu` VALUES ('3', '2', '3', 'Users', 'fa-users', 'auth/users', null, null, null);
INSERT INTO `member_menu` VALUES ('4', '2', '4', 'Roles', 'fa-user', 'auth/roles', null, null, null);
INSERT INTO `member_menu` VALUES ('5', '2', '5', 'Permission', 'fa-ban', 'auth/permissions', null, null, null);
INSERT INTO `member_menu` VALUES ('6', '2', '6', 'Menu', 'fa-bars', 'auth/menu', null, null, null);
INSERT INTO `member_menu` VALUES ('7', '2', '7', 'Operation log', 'fa-history', 'auth/logs', null, null, null);

-- ----------------------------
-- Table structure for `member_operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `member_operation_log`;
CREATE TABLE `member_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of member_operation_log
-- ----------------------------
INSERT INTO `member_operation_log` VALUES ('1', '1', 'members', 'GET', '127.0.0.1', '[]', '2020-01-04 12:00:09', '2020-01-04 12:00:09');
INSERT INTO `member_operation_log` VALUES ('2', '1', 'members', 'GET', '127.0.0.1', '[]', '2020-01-04 12:01:48', '2020-01-04 12:01:48');
INSERT INTO `member_operation_log` VALUES ('3', '1', 'members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:01:50', '2020-01-04 12:01:50');
INSERT INTO `member_operation_log` VALUES ('4', '1', 'members/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:01:52', '2020-01-04 12:01:52');
INSERT INTO `member_operation_log` VALUES ('5', '1', 'members/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-04 12:01:52', '2020-01-04 12:01:52');
INSERT INTO `member_operation_log` VALUES ('6', '1', 'members', 'GET', '127.0.0.1', '[]', '2020-01-04 12:03:14', '2020-01-04 12:03:14');
INSERT INTO `member_operation_log` VALUES ('7', '1', 'members', 'GET', '127.0.0.1', '[]', '2020-01-04 12:10:59', '2020-01-04 12:10:59');

-- ----------------------------
-- Table structure for `member_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `member_permissions`;
CREATE TABLE `member_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_permissions_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of member_permissions
-- ----------------------------
INSERT INTO `member_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `member_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `member_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `member_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `member_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);

-- ----------------------------
-- Table structure for `member_roles`
-- ----------------------------
DROP TABLE IF EXISTS `member_roles`;
CREATE TABLE `member_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_roles_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of member_roles
-- ----------------------------
INSERT INTO `member_roles` VALUES ('1', 'Administrator', 'administrator', '2020-01-04 11:59:04', '2020-01-04 11:59:04');

-- ----------------------------
-- Table structure for `member_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `member_role_menu`;
CREATE TABLE `member_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `member_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of member_role_menu
-- ----------------------------
INSERT INTO `member_role_menu` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for `member_role_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `member_role_permissions`;
CREATE TABLE `member_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `member_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of member_role_permissions
-- ----------------------------
INSERT INTO `member_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for `member_role_users`
-- ----------------------------
DROP TABLE IF EXISTS `member_role_users`;
CREATE TABLE `member_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `member_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of member_role_users
-- ----------------------------
INSERT INTO `member_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for `member_users`
-- ----------------------------
DROP TABLE IF EXISTS `member_users`;
CREATE TABLE `member_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of member_users
-- ----------------------------
INSERT INTO `member_users` VALUES ('1', 'admin', '$2y$10$Kp8S20FHh2VM0X4KGU2vq.0r417jUlv8Z2IJcaUfvjKOo3HY6hFUu', 'Administrator', null, null, '2020-01-04 11:59:04', '2020-01-04 11:59:04');

-- ----------------------------
-- Table structure for `member_users_copy`
-- ----------------------------
DROP TABLE IF EXISTS `member_users_copy`;
CREATE TABLE `member_users_copy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of member_users_copy
-- ----------------------------
INSERT INTO `member_users_copy` VALUES ('1', 'admin', '$2y$10$Kp8S20FHh2VM0X4KGU2vq.0r417jUlv8Z2IJcaUfvjKOo3HY6hFUu', 'Administrator', null, null, '2020-01-04 11:59:04', '2020-01-04 11:59:04');

-- ----------------------------
-- Table structure for `member_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `member_user_permissions`;
CREATE TABLE `member_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `member_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of member_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO `migrations` VALUES ('43', '2020_01_04_033429_create_cert_states_table', '5');
INSERT INTO `migrations` VALUES ('5', '2020_01_02_085511_create_configs_table', '3');
INSERT INTO `migrations` VALUES ('37', '2020_01_03_034909_create_patent_categories_table', '5');
INSERT INTO `migrations` VALUES ('38', '2020_01_03_040302_create_patent_types_table', '5');
INSERT INTO `migrations` VALUES ('39', '2020_01_03_043051_create_electron_users_table', '5');
INSERT INTO `migrations` VALUES ('40', '2020_01_03_043126_create_colleges_table', '5');
INSERT INTO `migrations` VALUES ('41', '2020_01_03_043233_create_patent_states_table', '5');
INSERT INTO `migrations` VALUES ('42', '2020_01_04_022814_create_patents_table', '5');
INSERT INTO `migrations` VALUES ('21', '2020_01_04_115904_create_member_tables', '4');
INSERT INTO `migrations` VALUES ('44', '2020_01_04_133721_create_patent_domains_table', '5');
INSERT INTO `migrations` VALUES ('45', '2020_01_05_091248_create_member_reals_table', '6');
INSERT INTO `migrations` VALUES ('46', '2020_01_05_093417_create_articles_table', '6');
INSERT INTO `migrations` VALUES ('47', '2020_01_05_144717_create_friend_links_table', '7');
INSERT INTO `migrations` VALUES ('48', '2020_01_05_144752_create_patent_keywords_table', '7');
INSERT INTO `migrations` VALUES ('49', '2020_01_05_145523_create_keywords_table', '8');

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
-- Table structure for `patents`
-- ----------------------------
DROP TABLE IF EXISTS `patents`;
CREATE TABLE `patents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `electron_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '电子账户ID',
  `patent_sn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '专利号',
  `patent_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '专利名称',
  `college_id` mediumint(9) NOT NULL DEFAULT '0' COMMENT '高校ID',
  `patent_person` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '申请人专利权人',
  `inventor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发明人设计人',
  `patent_domain_id` int(11) NOT NULL DEFAULT '0' COMMENT '领域ID',
  `patent_type_id` int(11) NOT NULL DEFAULT '0' COMMENT '类型ID',
  `patent_state_id` int(11) NOT NULL DEFAULT '0' COMMENT '专利状态ID',
  `cert_state_id` int(11) NOT NULL DEFAULT '0' COMMENT '下证状态ID',
  `apply_date` timestamp NULL DEFAULT NULL COMMENT '申请日期',
  `patent_remark` text COLLATE utf8mb4_unicode_ci COMMENT '专利备注',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '专利图',
  `is_monitor` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否监控',
  `monitor_state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '监控状态',
  `monitor_date` timestamp NULL DEFAULT NULL COMMENT '监控到期时间',
  `fee_remark` text COLLATE utf8mb4_unicode_ci COMMENT '年费备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `用户ID` (`user_id`),
  KEY `电子账户ID` (`electron_user_id`),
  KEY `高校ID` (`college_id`),
  KEY `类型ID` (`patent_type_id`),
  KEY `专利状态ID` (`patent_state_id`),
  KEY `下证状态ID` (`cert_state_id`),
  KEY `领域ID` (`patent_domain_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of patents
-- ----------------------------
INSERT INTO `patents` VALUES ('1', '1', '1', '2019112000391260', '一种园林绿化施工划线装置', '1', '朱亚菲', '22', '1', '1', '1', '1', '2020-01-05 12:44:28', '', '', '1', '1', '2020-01-05 03:59:35', '', '2020-01-05 04:00:57', '2020-01-05 04:44:28');

-- ----------------------------
-- Table structure for `patent_categories`
-- ----------------------------
DROP TABLE IF EXISTS `patent_categories`;
CREATE TABLE `patent_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `cat_sn` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一编号',
  `pid` mediumint(9) NOT NULL DEFAULT '0' COMMENT '父类ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of patent_categories
-- ----------------------------
INSERT INTO `patent_categories` VALUES ('1', '人类生活必需（农、轻、医）', 'A', '0', '2020-01-04 14:57:45', '2020-01-04 14:57:45');
INSERT INTO `patent_categories` VALUES ('2', '作业、运输', 'B', '0', '2020-01-04 14:58:19', '2020-01-04 14:58:19');
INSERT INTO `patent_categories` VALUES ('3', '化学、冶金', 'C', '0', '2020-01-04 14:58:31', '2020-01-04 14:58:31');
INSERT INTO `patent_categories` VALUES ('4', '纺织、造纸', 'D', '0', '2020-01-04 14:58:55', '2020-01-04 14:58:55');
INSERT INTO `patent_categories` VALUES ('5', '固定建筑物（建筑、采矿）', 'E', '0', '2020-01-04 14:59:12', '2020-01-04 14:59:12');
INSERT INTO `patent_categories` VALUES ('6', '机械工程', 'F', '0', '2020-01-04 14:59:34', '2020-01-04 14:59:34');
INSERT INTO `patent_categories` VALUES ('7', '物理', 'G', '0', '2020-01-04 14:59:45', '2020-01-04 14:59:45');
INSERT INTO `patent_categories` VALUES ('8', '电学', 'H', '0', '2020-01-04 14:59:58', '2020-01-04 14:59:58');

-- ----------------------------
-- Table structure for `patent_domains`
-- ----------------------------
DROP TABLE IF EXISTS `patent_domains`;
CREATE TABLE `patent_domains` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `cat_sn` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类编号',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of patent_domains
-- ----------------------------
INSERT INTO `patent_domains` VALUES ('1', '生活必需', 'A', '0', '2020-01-04 15:13:31', '2020-01-04 15:13:31');

-- ----------------------------
-- Table structure for `patent_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `patent_keywords`;
CREATE TABLE `patent_keywords` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关键字名称',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关键字链接地址',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of patent_keywords
-- ----------------------------

-- ----------------------------
-- Table structure for `patent_states`
-- ----------------------------
DROP TABLE IF EXISTS `patent_states`;
CREATE TABLE `patent_states` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '专利状态',
  `cert_state_id` smallint(6) NOT NULL DEFAULT '0' COMMENT '下证状态',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of patent_states
-- ----------------------------
INSERT INTO `patent_states` VALUES ('1', '等待申请费', '1', '2020-01-05 05:23:58', '2020-01-05 05:23:58');
INSERT INTO `patent_states` VALUES ('2', '准备进入新型初审', '1', '2020-01-05 05:24:15', '2020-01-05 05:24:15');
INSERT INTO `patent_states` VALUES ('3', '等待提案', '1', '2020-01-05 05:24:33', '2020-01-05 05:24:33');
INSERT INTO `patent_states` VALUES ('4', '新案审查', '1', '2020-01-05 05:24:44', '2020-01-05 05:24:44');
INSERT INTO `patent_states` VALUES ('5', '初审待答复', '1', '2020-01-05 05:27:39', '2020-01-05 05:27:55');
INSERT INTO `patent_states` VALUES ('6', '回案审查', '0', '2020-01-05 05:28:21', '2020-01-05 05:28:21');
INSERT INTO `patent_states` VALUES ('7', '一通出案待答复', '0', '2020-01-05 05:28:25', '2020-01-05 05:28:25');
INSERT INTO `patent_states` VALUES ('8', '一通回案实审', '0', '2020-01-05 05:28:34', '2020-01-05 05:28:34');
INSERT INTO `patent_states` VALUES ('9', '中通出案待答复', '0', '2020-01-05 05:28:44', '2020-01-05 05:28:44');
INSERT INTO `patent_states` VALUES ('10', '中通回案实审', '0', '2020-01-05 05:28:55', '2020-01-05 05:28:55');
INSERT INTO `patent_states` VALUES ('11', '待质检抽案', '0', '2020-01-05 05:29:05', '2020-01-05 05:29:05');
INSERT INTO `patent_states` VALUES ('12', '待发授权办登通知书', '0', '2020-01-05 05:29:18', '2020-01-05 05:29:18');
INSERT INTO `patent_states` VALUES ('13', '等年登印费', '0', '2020-01-05 05:29:28', '2020-01-05 05:29:28');
INSERT INTO `patent_states` VALUES ('14', '驳回决定', '0', '2020-01-05 05:29:38', '2020-01-05 05:29:38');
INSERT INTO `patent_states` VALUES ('15', '驳回等复审请求', '0', '2020-01-05 05:29:48', '2020-01-05 05:29:48');
INSERT INTO `patent_states` VALUES ('16', '待公告', '0', '2020-01-05 05:29:57', '2020-01-05 05:29:57');
INSERT INTO `patent_states` VALUES ('17', '公告封卷', '0', '2020-01-05 05:30:08', '2020-01-05 05:30:08');
INSERT INTO `patent_states` VALUES ('18', '等待颁证公告', '0', '2020-01-05 05:30:16', '2020-01-05 05:30:16');
INSERT INTO `patent_states` VALUES ('19', '专利权维持', '0', '2020-01-05 05:30:27', '2020-01-05 05:30:27');
INSERT INTO `patent_states` VALUES ('20', '等年滞纳金', '0', '2020-01-05 05:30:36', '2020-01-05 05:30:36');
INSERT INTO `patent_states` VALUES ('21', '未缴年费专利权终止', '0', '2020-01-05 05:30:46', '2020-01-05 05:30:46');
INSERT INTO `patent_states` VALUES ('22', '等恢复', '0', '2020-01-05 05:30:58', '2020-01-05 05:30:58');
INSERT INTO `patent_states` VALUES ('23', '未缴年费终止失效', '0', '2020-01-05 05:31:08', '2020-01-05 05:31:08');

-- ----------------------------
-- Table structure for `patent_types`
-- ----------------------------
DROP TABLE IF EXISTS `patent_types`;
CREATE TABLE `patent_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '专利类型名称',
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'logo',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of patent_types
-- ----------------------------
INSERT INTO `patent_types` VALUES ('1', '发明专利', 'images/faming.png', '0', '2020-01-04 15:30:44', '2020-01-04 15:30:44');
INSERT INTO `patent_types` VALUES ('2', '实用新型专利', 'images/shiyong.png', '0', '2020-01-04 15:31:09', '2020-01-04 15:31:09');
INSERT INTO `patent_types` VALUES ('3', '外观设计专利', 'images/waiguan.png', '0', '2020-01-04 15:31:25', '2020-01-04 15:31:25');

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
