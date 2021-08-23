/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : robotDB

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 23/08/2021 12:29:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for robot_blocks
-- ----------------------------
DROP TABLE IF EXISTS `robot_blocks`;
CREATE TABLE `robot_blocks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `blocks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '代码块',
  `type` int NOT NULL DEFAULT '0' COMMENT '0:快速入门1:案例',
  `img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of robot_blocks
-- ----------------------------
BEGIN;
INSERT INTO `robot_blocks` VALUES (3, '入门第三课', '2021-08-23 10:38:26', '2021-07-11 16:59:18', '<xml xmlns=\"https://developers.google.com/blockly/xml\"><block type=\"while_program_start\" id=\"cC3n899#Tp^9)}@u+hI}\" x=\"50\" y=\"50\"><statement name=\"while_content\"><block type=\"draw\" id=\"RekGB9XvSVwhY8y-f}Op\"><field name=\"pencilState\">1</field><next><block type=\"move\" id=\"GS3`vT~2u+77Xn;l=J7T\"><field name=\"move_distance\">16</field><next><block type=\"arc\" id=\"i4rGw2-@dzPQVja$-_H8\"><field name=\"dirction\">0</field><field name=\"degree\">90</field><field name=\"radius\">16</field><next><block type=\"turn\" id=\"i,X1x66c|os@0Z:vZY!1\"><field name=\"dirction\">1</field><field name=\"degree\">90</field></block></next></block></next></block></next></block></statement></block></xml>', 1, 'art.jpg');
INSERT INTO `robot_blocks` VALUES (4, '入门第四课', '2021-08-23 10:54:30', '2021-07-11 16:59:20', '<xml xmlns=\"https://developers.google.com/blockly/xml\"><block type=\"while_program_start\" id=\"cC3n899#Tp^9)}@u+hI}\" x=\"50\" y=\"0\"><statement name=\"while_content\"><block type=\"draw\" id=\"RekGB9XvSVwhY8y-f}Op\"><field name=\"pencilState\">1</field><next><block type=\"controls_repeat_ext\" id=\"qLGU[go$yv6jqq(/.vM#\"><value name=\"TIMES\"><block type=\"math_number\" id=\"p*QD^Q71jH%5OpfBxo~z\"><field name=\"NUM\">2</field></block></value><statement name=\"DO\"><block type=\"move\" id=\"GS3`vT~2u+77Xn;l=J7T\"><field name=\"move_distance\">16</field><next><block type=\"arc\" id=\"i4rGw2-@dzPQVja$-_H8\"><field name=\"dirction\">0</field><field name=\"degree\">90</field><field name=\"radius\">16</field><next><block type=\"turn\" id=\"i,X1x66c|os@0Z:vZY!1\"><field name=\"dirction\">0</field><field name=\"degree\">90</field></block></next></block></next></block></statement></block></next></block></statement></block></xml>', 1, 'book.jpg');
INSERT INTO `robot_blocks` VALUES (5, '案例1.11', '2021-08-23 10:54:38', '2021-07-11 17:00:33', '<xml xmlns=\"https://developers.google.com/blockly/xml\"><block type=\"while_program_start\" id=\"2m0(mgv2]2*7d:Nkizua\" x=\"50\" y=\"50\"><statement name=\"while_content\"><block type=\"draw\" id=\"M[@5V0mk6R(}~RB8Dow5\"><field name=\"pencilState\">1</field><next><block type=\"arc\" id=\"h0:yF9-@,SP!Gz1/CtZ#\"><field name=\"dirction\">0</field><field name=\"degree\">90</field><field name=\"radius\">50</field><next><block type=\"move\" id=\"yw-_Aq}(rGGIz_:Rf8.{\"><field name=\"move_distance\">50</field></block></next></block></next></block></statement></block></xml>', 2, 'code.jpg');
INSERT INTO `robot_blocks` VALUES (6, '案例2.1', '2021-08-23 10:54:43', '2021-07-11 17:00:34', '<xml xmlns=\"https://developers.google.com/blockly/xml\"><block type=\"while_program_start\" id=\"z1yZ]lws}/Ch]EwJ*C0*\" x=\"50\" y=\"50\"><statement name=\"while_content\"><block type=\"draw\" id=\"q9Mx!=T`YiL8vRIe(:P6\"><field name=\"pencilState\">1</field><next><block type=\"move\" id=\"GgJ{MOU2RxF/-A:%g2Ae\"><field name=\"move_distance\">50</field></block></next></block></statement></block></xml>', 2, 'game.jpg');
INSERT INTO `robot_blocks` VALUES (7, '案例3.2', '2021-08-23 10:54:52', '2021-07-11 17:00:36', '<xml xmlns=\"https://developers.google.com/blockly/xml\"><block type=\"while_program_start\" id=\"9-4d]6KdHIczk`eyV-L5\" x=\"50\" y=\"50\"><statement name=\"while_content\"><block type=\"move\" id=\"LRH}6sutaRG|MT?bbIK/\"><field name=\"move_distance\">50</field></block></statement></block></xml>', 2, 'globe.jpg');
INSERT INTO `robot_blocks` VALUES (8, '案例4', '2021-08-23 10:54:58', '2021-07-11 17:00:38', '<xml xmlns=\"https://developers.google.com/blockly/xml\"><block type=\"while_program_start\" x=\"50\" y=\"50\"><statement name=\"while_content\"><block type=\"move\"><field name=\"move_distance\">50</field></block></statement></block></xml>', 2, 'math.jpg');
INSERT INTO `robot_blocks` VALUES (18, '入门第一课', '2021-08-23 12:28:51', '2021-07-12 23:19:07', '<xml xmlns=\"https://developers.google.com/blockly/xml\"><block type=\"while_program_start\" id=\"KJKqWX%DdQr.^e0kD9tn\" x=\"50\" y=\"50\"><statement name=\"while_content\"><block type=\"move\" id=\";5ZpB~1Yj8}+LrUO{cg~\"><field name=\"move_distance\">50</field></block></statement></block></xml>', 1, 'science.jpg');
INSERT INTO `robot_blocks` VALUES (19, '进阶课堂1', '2021-08-23 10:38:44', '2021-07-12 23:22:25', '<xml xmlns=\"https://developers.google.com/blockly/xml\"><block type=\"while_program_start\" id=\"A?CN@G#JZB`{W@4F9$yL\" x=\"150\" y=\"150\"><statement name=\"while_content\"><block type=\"draw\" id=\"+Xz7z77Y3Z,^AfMzk+.H\"><field name=\"pencilState\">1</field><next><block type=\"controls_repeat_ext\" id=\"#5o[Gn5L0U~f$rXvfuhh\"><value name=\"TIMES\"><block type=\"math_number\" id=\"YS@1JOuNhW;-e(^r:MCB\"><field name=\"NUM\">4</field></block></value><statement name=\"DO\"><block type=\"arc\" id=\"Iz1ya%(1;){(3ggD[@):\"><field name=\"dirction\">0</field><field name=\"degree\">90</field><field name=\"radius\">50</field></block></statement></block></next></block></statement></block></xml>', 14, 'art.jpg');
COMMIT;

-- ----------------------------
-- Table structure for robot_project_type
-- ----------------------------
DROP TABLE IF EXISTS `robot_project_type`;
CREATE TABLE `robot_project_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of robot_project_type
-- ----------------------------
BEGIN;
INSERT INTO `robot_project_type` VALUES (1, '快速入门');
INSERT INTO `robot_project_type` VALUES (2, '学习案例');
INSERT INTO `robot_project_type` VALUES (14, '进阶技巧');
INSERT INTO `robot_project_type` VALUES (15, '学习板块');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
