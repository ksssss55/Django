/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : douban

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-04-23 18:41:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add choice', '1', 'add_choice');
INSERT INTO `auth_permission` VALUES ('2', 'Can change choice', '1', 'change_choice');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete choice', '1', 'delete_choice');
INSERT INTO `auth_permission` VALUES ('4', 'Can view choice', '1', 'view_choice');
INSERT INTO `auth_permission` VALUES ('5', 'Can add question', '2', 'add_question');
INSERT INTO `auth_permission` VALUES ('6', 'Can change question', '2', 'change_question');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete question', '2', 'delete_question');
INSERT INTO `auth_permission` VALUES ('8', 'Can view question', '2', 'view_question');
INSERT INTO `auth_permission` VALUES ('9', 'Can add log entry', '3', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('10', 'Can change log entry', '3', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete log entry', '3', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('12', 'Can view log entry', '3', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('13', 'Can add permission', '4', 'add_permission');
INSERT INTO `auth_permission` VALUES ('14', 'Can change permission', '4', 'change_permission');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete permission', '4', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('16', 'Can view permission', '4', 'view_permission');
INSERT INTO `auth_permission` VALUES ('17', 'Can add group', '5', 'add_group');
INSERT INTO `auth_permission` VALUES ('18', 'Can change group', '5', 'change_group');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete group', '5', 'delete_group');
INSERT INTO `auth_permission` VALUES ('20', 'Can view group', '5', 'view_group');
INSERT INTO `auth_permission` VALUES ('21', 'Can add user', '6', 'add_user');
INSERT INTO `auth_permission` VALUES ('22', 'Can change user', '6', 'change_user');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete user', '6', 'delete_user');
INSERT INTO `auth_permission` VALUES ('24', 'Can view user', '6', 'view_user');
INSERT INTO `auth_permission` VALUES ('25', 'Can add content type', '7', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('26', 'Can change content type', '7', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete content type', '7', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('28', 'Can view content type', '7', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('29', 'Can add session', '8', 'add_session');
INSERT INTO `auth_permission` VALUES ('30', 'Can change session', '8', 'change_session');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete session', '8', 'delete_session');
INSERT INTO `auth_permission` VALUES ('32', 'Can view session', '8', 'view_session');
INSERT INTO `auth_permission` VALUES ('33', 'Can add moives', '9', 'add_moives');
INSERT INTO `auth_permission` VALUES ('34', 'Can change moives', '9', 'change_moives');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete moives', '9', 'delete_moives');
INSERT INTO `auth_permission` VALUES ('36', 'Can view moives', '9', 'view_moives');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('3', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('5', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('6', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('7', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('9', 'movies', 'moives');
INSERT INTO `django_content_type` VALUES ('1', 'polls', 'choice');
INSERT INTO `django_content_type` VALUES ('2', 'polls', 'question');
INSERT INTO `django_content_type` VALUES ('8', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-04-17 06:58:31.590163');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2019-04-17 06:58:44.794816');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2019-04-17 06:58:46.964041');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-04-17 06:58:47.015901');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2019-04-17 06:58:47.080701');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2019-04-17 06:58:48.383216');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2019-04-17 06:58:49.245936');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2019-04-17 06:58:49.401523');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2019-04-17 06:58:49.451360');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2019-04-17 06:58:50.233271');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2019-04-17 06:58:50.274157');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2019-04-17 06:58:50.348989');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2019-04-17 06:58:51.416123');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2019-04-17 06:58:52.356587');
INSERT INTO `django_migrations` VALUES ('15', 'movies', '0001_initial', '2019-04-17 06:58:52.709643');
INSERT INTO `django_migrations` VALUES ('16', 'polls', '0001_initial', '2019-04-17 06:58:54.939703');
INSERT INTO `django_migrations` VALUES ('17', 'sessions', '0001_initial', '2019-04-17 06:58:56.268150');
INSERT INTO `django_migrations` VALUES ('18', 'movies', '0002_auto_20190418_2222', '2019-04-18 14:22:59.190161');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for maoyan
-- ----------------------------
DROP TABLE IF EXISTS `maoyan`;
CREATE TABLE `maoyan` (
  `index` int(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `actor` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of maoyan
-- ----------------------------

-- ----------------------------
-- Table structure for movies
-- ----------------------------
DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `actor` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movies
-- ----------------------------
INSERT INTO `movies` VALUES ('1', '肖申克的救赎', ' 弗兰克·德拉邦特 Frank Darabont', ' 蒂姆·罗宾斯 Tim Robbins /...', '1994', '美国', '犯罪 剧情', '9.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p480747492.jpg');
INSERT INTO `movies` VALUES ('2', '霸王别姬', ' 陈凯歌 Kaige Chen', ' 张国荣 Leslie Cheung / 张丰毅 Fengyi Zha...', '1993', '中国大陆 香港', '剧情 爱情 同性', '9.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910813120.jpg');
INSERT INTO `movies` VALUES ('3', '这个杀手不太冷', ' 吕克·贝松 Luc Besson', ' 让·雷诺 Jean Reno / 娜塔莉·波特曼 ...', '1994', '法国', '剧情 动作 犯罪', '9.4', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p511118051.jpg');
INSERT INTO `movies` VALUES ('4', '阿甘正传', ' 罗伯特·泽米吉斯 Robert Zemeckis', ' 汤姆·汉克斯 Tom Hanks / ...', '1994', '美国', '剧情 爱情', '9.4', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p510876377.jpg');
INSERT INTO `movies` VALUES ('5', '美丽人生', ' 罗伯托·贝尼尼 Roberto Benigni', ' 罗伯托·贝尼尼 Roberto Beni...', '1997', '意大利', '剧情 喜剧 爱情 战争', '9.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p510861873.jpg');
INSERT INTO `movies` VALUES ('6', '泰坦尼克号', ' 詹姆斯·卡梅隆 James Cameron', ' 莱昂纳多·迪卡普里奥 Leonardo...', '1997', '美国', '剧情 爱情 灾难', '9.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p457760035.jpg');
INSERT INTO `movies` VALUES ('7', '千与千寻', ' 宫崎骏 Hayao Miyazaki', ' 柊瑠美 Rumi Hîragi / 入野自由 Miy...', '2001', '日本', '剧情 动画 奇幻', '9.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1606727862.jpg');
INSERT INTO `movies` VALUES ('8', '辛德勒的名单', ' 史蒂文·斯皮尔伯格 Steven Spielberg', ' 连姆·尼森 Liam Neeson...', '1993', '美国', '剧情 历史 战争', '9.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p492406163.jpg');
INSERT INTO `movies` VALUES ('9', '盗梦空间', ' 克里斯托弗·诺兰 Christopher Nolan', ' 莱昂纳多·迪卡普里奥 Le...', '2010', '美国 英国', '剧情 科幻 悬疑 冒险', '9.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p513344864.jpg');
INSERT INTO `movies` VALUES ('10', '忠犬八公的故事', ' 莱塞·霍尔斯道姆 Lasse Hallström', ' 理查·基尔 Richard Ger...', '2009', '美国 英国', '剧情', '9.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p524964016.jpg');
INSERT INTO `movies` VALUES ('11', '机器人总动员', ' 安德鲁·斯坦顿 Andrew Stanton', ' 本·贝尔特 Ben Burtt / 艾丽...', '2008', '美国', '爱情 科幻 动画 冒险', '9.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1461851991.jpg');
INSERT INTO `movies` VALUES ('12', '三傻大闹宝莱坞', ' 拉库马·希拉尼 Rajkumar Hirani', ' 阿米尔·汗 Aamir Khan / 卡...', '2009', '印度', '剧情 喜剧 爱情 歌舞', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p579729551.jpg');
INSERT INTO `movies` VALUES ('13', '海上钢琴师', ' 朱塞佩·托纳多雷 Giuseppe Tornatore', ' 蒂姆·罗斯 Tim Roth / ...', '1998', '意大利', '剧情 音乐', '9.2', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p511146807.jpg');
INSERT INTO `movies` VALUES ('14', '放牛班的春天', ' 克里斯托夫·巴拉蒂 Christophe Barratier', ' 热拉尔·朱尼奥 Gé...', '2004', '法国 瑞士 德国', '剧情 音乐', '9.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910824951.jpg');
INSERT INTO `movies` VALUES ('15', '楚门的世界', ' 彼得·威尔 Peter Weir', ' 金·凯瑞 Jim Carrey / 劳拉·琳妮 Lau...', '1998', '美国', '剧情 科幻', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p479682972.jpg');
INSERT INTO `movies` VALUES ('16', '大话西游之大圣娶亲', ' 刘镇伟 Jeffrey Lau', ' 周星驰 Stephen Chow / 吴孟达 Man Tat Ng...', '1995', '香港 中国大陆', '喜剧 爱情 奇幻 古装', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2455050536.jpg');
INSERT INTO `movies` VALUES ('17', '星际穿越', ' 克里斯托弗·诺兰 Christopher Nolan', ' 马修·麦康纳 Matthew Mc...', '2014', '美国 英国 加拿大 冰岛', '剧情 科幻 冒险', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2206088801.jpg');
INSERT INTO `movies` VALUES ('18', '龙猫', ' 宫崎骏 Hayao Miyazaki', ' 日高法子 Noriko Hidaka / 坂本千夏 Ch...', '1988', '日本', '动画 奇幻 冒险', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2540924496.jpg');
INSERT INTO `movies` VALUES ('19', '教父', ' 弗朗西斯·福特·科波拉 Francis Ford Coppola', ' 马龙·白兰度 M...', '1972', '美国', '剧情 犯罪', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1853232210.jpg');
INSERT INTO `movies` VALUES ('20', '熔炉', ' 黄东赫 Dong-hyuk Hwang', ' 孔侑 Yoo Gong / 郑有美 Yu-mi Jeong ...', '2011', '韩国', '剧情', '9.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1363250216.jpg');
INSERT INTO `movies` VALUES ('21', '无间道', ' 刘伟强 / 麦兆辉', ' 刘德华 / 梁朝伟 / 黄秋生', '2002', '香港', '剧情 犯罪 悬疑', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2233971046.jpg');
INSERT INTO `movies` VALUES ('22', '疯狂动物城', ' 拜伦·霍华德 Byron Howard / 瑞奇·摩尔 Rich Moore', ' 金妮弗·...', '2016', '美国', '喜剧 动画 冒险', '9.2', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2315672647.jpg');
INSERT INTO `movies` VALUES ('23', '当幸福来敲门', ' 加布里尔·穆奇诺 Gabriele Muccino', ' 威尔·史密斯 Will Smith ...', '2006', '美国', '剧情 传记 家庭', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2220721286.jpg');
INSERT INTO `movies` VALUES ('24', '怦然心动', ' 罗伯·莱纳 Rob Reiner', ' 玛德琳·卡罗尔 Madeline Carroll / 卡...', '2010', '美国', '剧情 喜剧 爱情', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p663036666.jpg');
INSERT INTO `movies` VALUES ('25', '触不可及', ' 奥利维·那卡什 Olivier Nakache / 艾力克·托兰达 Eric Toledano', '.', '2011', '法国', '剧情 喜剧', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1454261925.jpg');
INSERT INTO `movies` VALUES ('26', '乱世佳人', ' 维克多·弗莱明 Victor Fleming / 乔治·库克 George Cukor', ' 费...', '1939', '美国', '剧情 历史 爱情 战争', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1963126880.jpg');
INSERT INTO `movies` VALUES ('27', '蝙蝠侠：黑暗骑士', ' 克里斯托弗·诺兰 Christopher Nolan', ' 克里斯蒂安·贝尔 Christ...', '2008', '美国 英国', '剧情 动作 科幻 犯罪 惊悚', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p462657443.jpg');
INSERT INTO `movies` VALUES ('28', '活着', ' 张艺谋 Yimou Zhang', ' 葛优 You Ge / 巩俐 Li Gong / 姜武 Wu Jiang', '1994', '中国大陆 香港', '剧情 历史 家庭', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2513253791.jpg');
INSERT INTO `movies` VALUES ('29', '少年派的奇幻漂流', ' 李安 Ang Lee', ' 苏拉·沙玛 Suraj Sharma / 伊尔凡·可汗 Irrfan...', '2012', '美国 台湾 英国 加拿大', '剧情 奇幻 冒险', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1784592701.jpg');
INSERT INTO `movies` VALUES ('30', '天堂电影院', ' 朱塞佩·托纳多雷 Giuseppe Tornatore', ' 安东内拉·阿蒂利 Anton...', '1988', '意大利 法国', '剧情 爱情', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910901025.jpg');
INSERT INTO `movies` VALUES ('31', '控方证人', ' 比利·怀尔德 Billy Wilder', ' 泰隆·鲍华 Tyrone Power / 玛琳·...', '1957', '美国', '剧情 犯罪 悬疑', '9.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1505392928.jpg');
INSERT INTO `movies` VALUES ('32', '鬼子来了', ' 姜文 Wen Jiang', ' 姜文 Wen Jiang / 香川照之 Teruyuki Kagawa /...', '2000', '中国大陆', '剧情 历史 战争', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1181775734.jpg');
INSERT INTO `movies` VALUES ('33', '十二怒汉', ' Sidney Lumet', ' 亨利·方达 Henry Fonda / 马丁·鲍尔萨姆 Marti...', '1957', '美国', '剧情', '9.4', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2173577632.jpg');
INSERT INTO `movies` VALUES ('34', '指环王3：王者无敌', ' 彼得·杰克逊 Peter Jackson', ' 维果·莫腾森 Viggo Mortensen / ...', '2003', '美国 新西兰', '剧情 动作 奇幻 冒险', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910825503.jpg');
INSERT INTO `movies` VALUES ('35', '天空之城', ' 宫崎骏 Hayao Miyazaki', ' 田中真弓 Mayumi Tanaka / 横泽启子 Ke...', '1986', '日本', '动画 奇幻 冒险', '9.1', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1446261379.jpg');
INSERT INTO `movies` VALUES ('36', '摔跤吧！爸爸', ' 涅提·蒂瓦里 Nitesh Tiwari', ' 阿米尔·汗 Aamir Khan / 法缇玛...', '2016', '印度', '剧情 传记 运动 家庭', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2457983084.jpg');
INSERT INTO `movies` VALUES ('37', '飞屋环游记', ' 彼特·道格特 Pete Docter / 鲍勃·彼德森 Bob Peterson', ' 爱德...', '2009', '美国', '剧情 喜剧 动画 冒险', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2364094053.jpg');
INSERT INTO `movies` VALUES ('38', '大话西游之月光宝盒', ' 刘镇伟 Jeffrey Lau', ' 周星驰 Stephen Chow / 吴孟达 Man Tat Ng...', '1995', '香港 中国大陆', '喜剧 爱情 奇幻 古装', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1280323646.jpg');
INSERT INTO `movies` VALUES ('39', '搏击俱乐部', ' 大卫·芬奇 David Fincher', ' 爱德华·诺顿 Edward Norton / 布拉...', '1999', '美国 德国', '剧情 动作 悬疑 惊悚', '9.0', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1910926158.jpg');
INSERT INTO `movies` VALUES ('40', '罗马假日', ' 威廉·惠勒 William Wyler', ' 奥黛丽·赫本 Audrey Hepburn / 格...', '1953', '美国', '喜剧 剧情 爱情', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2189265085.jpg');
INSERT INTO `movies` VALUES ('41', '哈尔的移动城堡', ' 宫崎骏 Hayao Miyazaki', ' 倍赏千惠子 Chieko Baishô / 木村拓...', '2004', '日本', '动画 奇幻 冒险', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2174346180.jpg');
INSERT INTO `movies` VALUES ('42', '闻香识女人', ' 马丁·布莱斯 Martin Brest', ' 阿尔·帕西诺 Al Pacino / 克里斯...', '1992', '美国', '剧情', '9.0', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2550757929.jpg');
INSERT INTO `movies` VALUES ('45', '两杆大烟枪', ' Guy Ritchie', ' Jason Flemyng / Dexter Fletcher / Nick Moran', '1998', '英国', '剧情 喜剧 犯罪', '9.1', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p792443418.jpg');
INSERT INTO `movies` VALUES ('46', '飞越疯人院', ' 米洛斯·福尔曼 Miloš Forman', ' 杰克·尼科尔森 Jack Nichols...', '1975', '美国', '剧情', '9.1', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p792238287.jpg');
INSERT INTO `movies` VALUES ('47', '死亡诗社', ' 彼得·威尔 Peter Weir', ' 罗宾·威廉姆斯 Robin Williams / 罗伯...', '1989', '美国', '剧情', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910824340.jpg');
INSERT INTO `movies` VALUES ('48', '末代皇帝', ' 贝纳尔多·贝托鲁奇 Bernardo Bertolucci', ' 尊龙 John Lone / 陈...', '1987', '英国 意大利 中国大陆 法国 美国', '剧情 传记 历史', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p452089833.jpg');
INSERT INTO `movies` VALUES ('49', '指环王2：双塔奇兵', ' 彼得·杰克逊 Peter Jackson', ' 伊利亚·伍德 Elijah Wood / 西恩...', '2002', '美国 新西兰', '剧情 动作 奇幻 冒险', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p909265336.jpg');
INSERT INTO `movies` VALUES ('50', 'V字仇杀队', ' 詹姆斯·麦克特格 James McTeigue', ' 娜塔莉·波特曼 Natalie Por...', '2005', '美国 英国 德国', '剧情 动作 科幻 惊悚', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1465235231.jpg');
INSERT INTO `movies` VALUES ('51', '教父2', ' 弗朗西斯·福特·科波拉 Francis Ford Coppola', ' 阿尔·帕西诺 A...', '1974', '美国', '剧情 犯罪', '9.1', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2194138787.jpg');
INSERT INTO `movies` VALUES ('52', '素媛', ' 李濬益 Jun-ik Lee', ' 薛景求 Kyung-gu Sol / 严志媛 Ji-won Uhm ...', '2013', '韩国', '剧情', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2118532944.jpg');
INSERT INTO `movies` VALUES ('53', '指环王1：魔戒再现', ' 彼得·杰克逊 Peter Jackson', ' 伊利亚·伍德 Elijah Wood / 西恩...', '2001', '新西兰 美国', '剧情 动作 奇幻 冒险', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1354436051.jpg');
INSERT INTO `movies` VALUES ('54', '海豚湾', ' 路易·西霍尤斯 Louie Psihoyos', ' Richard O\'Barry / 路易·西霍...', '2009', '美国', '纪录片', '9.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p455222172.jpg');
INSERT INTO `movies` VALUES ('55', '寻梦环游记', ' 李·昂克里奇 Lee Unkrich / 阿德里安·莫利纳 Adrian Molina', ' ...', '2017', '美国', '喜剧 动画 奇幻 音乐', '9.0', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2503997609.jpg');
INSERT INTO `movies` VALUES ('56', '饮食男女', ' 李安 Ang Lee', ' 郎雄 Sihung Lung / 杨贵媚 Kuei-Mei Yang / 吴...', '1994', '台湾 美国', '剧情 家庭', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910899751.jpg');
INSERT INTO `movies` VALUES ('57', '美丽心灵', ' 朗·霍华德 Ron Howard', ' 罗素·克劳 Russell Crowe / 艾德·哈...', '2001', '美国', '传记 剧情', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1665997400.jpg');
INSERT INTO `movies` VALUES ('58', '狮子王', ' Roger Allers / 罗伯·明可夫 Rob Minkoff', ' 乔纳森·泰勒·托马...', '1994', '美国', '剧情 动画 冒险 歌舞 家庭', '9.0', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p726659067.jpg');
INSERT INTO `movies` VALUES ('59', '情书', ' 岩井俊二 Shunji Iwai', ' 中山美穗 Miho Nakayama / 丰川悦司 Ets...', '1995', '日本', '剧情 爱情', '8.9', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p449897379.jpg');
INSERT INTO `movies` VALUES ('60', '钢琴家', ' 罗曼·波兰斯基 Roman Polanski', ' 艾德里安·布洛迪 Adrien Brod...', '2002', '法国 德国 英国 波兰', '剧情 传记 历史 战争 音乐', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p792484461.jpg');
INSERT INTO `movies` VALUES ('61', '美国往事', ' 赛尔乔·莱翁内 Sergio Leone', ' 罗伯特·德尼罗 Robert De Niro ...', '1984', '意大利 美国', '犯罪 剧情', '9.1', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p477229647.jpg');
INSERT INTO `movies` VALUES ('62', '本杰明·巴顿奇事', ' 大卫·芬奇 David Fincher', ' 凯特·布兰切特 Cate Blanchett / ...', '2008', '美国', '剧情 爱情 奇幻', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2192535722.jpg');
INSERT INTO `movies` VALUES ('63', '小鞋子', ' 马基德·马基迪 Majid Majidi', ' 法拉赫阿米尔·哈什米安 Amir Fa...', '1997', '伊朗', '剧情 儿童 家庭', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2165511465.jpg');
INSERT INTO `movies` VALUES ('64', '黑客帝国', ' 安迪·沃卓斯基 Andy Wachowski / 拉娜·沃卓斯基 Lana Wachowski', '.', '1999', '美国 澳大利亚', '动作 科幻', '8.9', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p451926968.jpg');
INSERT INTO `movies` VALUES ('65', '看不见的客人', ' 奥里奥尔·保罗 Oriol Paulo', ' 马里奥·卡萨斯 Mario Casas / 阿...', '2016', '西班牙', '剧情 犯罪 悬疑 惊悚', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2498971355.jpg');
INSERT INTO `movies` VALUES ('66', '西西里的美丽传说', ' 朱塞佩·托纳多雷 Giuseppe Tornatore', ' 莫妮卡·贝鲁奇 Monica ...', '2000', '意大利 美国', '剧情 战争 情色', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p792400696.jpg');
INSERT INTO `movies` VALUES ('67', '让子弹飞', ' 姜文 Wen Jiang', ' 姜文 Wen Jiang / 葛优 You Ge / 周润发 Yun-F...', '2010', '中国大陆 香港', '剧情 喜剧 动作 西部', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1512562287.jpg');
INSERT INTO `movies` VALUES ('68', '大闹天宫', ' 万籁鸣 Laiming Wan / 唐澄 Cheng  Tang', ' 邱岳峰 Yuefeng Qiu /...', '1961(中国大陆) / 1964(中国大陆) / 1978(中国大陆) / 2004(中国大陆)', '中国大陆', '动画 奇幻', '9.3', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2184505167.jpg');
INSERT INTO `movies` VALUES ('69', '拯救大兵瑞恩', ' 史蒂文·斯皮尔伯格 Steven Spielberg', ' 汤姆·汉克斯 Tom Hanks...', '1998', '美国', '剧情 历史 战争', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1014542496.jpg');
INSERT INTO `movies` VALUES ('70', '哈利·波特与魔法石', ' Chris Columbus', ' Daniel Radcliffe / Emma Watson / Rupert Grint', '2001', '美国 英国', '奇幻 冒险', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p804947166.jpg');
INSERT INTO `movies` VALUES ('71', '致命魔术', ' 克里斯托弗·诺兰 Christopher Nolan', ' 休·杰克曼 Hugh Jackman...', '2006', '美国 英国', '剧情 悬疑 惊悚', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p480383375.jpg');
INSERT INTO `movies` VALUES ('72', '七宗罪', ' 大卫·芬奇 David Fincher', ' 摩根·弗里曼 Morgan Freeman / 布...', '1995', '美国', '剧情 犯罪 悬疑 惊悚', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p457631605.jpg');
INSERT INTO `movies` VALUES ('73', '被嫌弃的松子的一生', ' 中岛哲也 Tetsuya Nakashima', ' 中谷美纪 Miki Nakatani / 瑛太 E...', '2006', '日本', '剧情 歌舞', '8.9', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p453723669.jpg');
INSERT INTO `movies` VALUES ('74', '音乐之声', ' 罗伯特·怀斯 Robert Wise', ' 朱莉·安德鲁斯 Julie Andrews / 克...', '1965', '美国', '剧情 传记 爱情 歌舞', '9.0', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p453788577.jpg');
INSERT INTO `movies` VALUES ('75', '低俗小说', ' 昆汀·塔伦蒂诺 Quentin Tarantino', ' 约翰·特拉沃尔塔 John Tra...', '1994', '美国', '剧情 喜剧 犯罪', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910902213.jpg');
INSERT INTO `movies` VALUES ('76', '天使爱美丽', ' 让-皮埃尔·热内 Jean-Pierre Jeunet', ' 奥黛丽·塔图 Audrey Tau...', '2001', '法国 德国', '喜剧 爱情', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p803896904.jpg');
INSERT INTO `movies` VALUES ('77', '沉默的羔羊', ' 乔纳森·戴米 Jonathan Demme', ' 朱迪·福斯特 Jodie Foster / 安...', '1991', '美国', '剧情 犯罪 惊悚', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1593414327.jpg');
INSERT INTO `movies` VALUES ('78', '勇敢的心', ' 梅尔·吉布森 Mel Gibson', ' 梅尔·吉布森 Mel Gibson / 苏菲·玛...', '1995', '美国', '动作 传记 剧情 历史 战争', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1374546770.jpg');
INSERT INTO `movies` VALUES ('79', '剪刀手爱德华', ' 蒂姆·波顿 Tim Burton', ' 约翰尼·德普 Johnny Depp / 薇诺娜·...', '1990', '美国', '剧情 奇幻 爱情', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p480956937.jpg');
INSERT INTO `movies` VALUES ('80', '蝴蝶效应', ' 埃里克·布雷斯 Eric Bress / J·麦基·格鲁伯 J. Mackye Gruber', '.', '2004', '美国 加拿大', '剧情 悬疑 科幻 惊悚', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2209066019.jpg');
INSERT INTO `movies` VALUES ('81', '猫鼠游戏', ' 史蒂文·斯皮尔伯格 Steven Spielberg', ' 莱昂纳多·迪卡普里奥 L...', '2002', '美国 加拿大', '传记 犯罪 剧情', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p453924541.jpg');
INSERT INTO `movies` VALUES ('82', '春光乍泄', ' 王家卫 Kar Wai Wong', ' 张国荣 Leslie Cheung / 梁朝伟 Tony Leu...', '1997', '香港 日本 韩国', '剧情 爱情 同性', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p465939041.jpg');
INSERT INTO `movies` VALUES ('83', '心灵捕手', ' 格斯·范·桑特 Gus Van Sant', ' 马特·达蒙 Matt Damon / 罗宾·...', '1997', '美国', '剧情', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p480965695.jpg');
INSERT INTO `movies` VALUES ('84', '布达佩斯大饭店', ' 韦斯·安德森 Wes Anderson', ' 拉尔夫·费因斯 Ralph Fiennes / ...', '2014', '美国 德国 英国', '剧情 喜剧 冒险', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2178872593.jpg');
INSERT INTO `movies` VALUES ('85', '禁闭岛', ' Martin Scorsese', ' 莱昂纳多·迪卡普里奥 Leonardo DiCaprio / ...', '2010', '美国', '剧情 悬疑 惊悚', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1832875827.jpg');
INSERT INTO `movies` VALUES ('86', '入殓师', ' 泷田洋二郎 Yôjirô Takita', ' 本木雅弘 Masahiro Motoki / ...', '2008', '日本', '剧情', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p594972928.jpg');
INSERT INTO `movies` VALUES ('87', '穿条纹睡衣的男孩', ' 马克·赫尔曼 Mark Herman', ' 阿萨·巴特菲尔德 Asa Butterfield ...', '2008', '英国 美国', '剧情 战争', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1473670352.jpg');
INSERT INTO `movies` VALUES ('88', '幽灵公主', ' 宫崎骏 Hayao Miyazaki', ' 松田洋治 Yôji Matsuda / 石田百合...', '1997', '日本', '动画 奇幻 冒险', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1613191025.jpg');
INSERT INTO `movies` VALUES ('89', '阿凡达', ' 詹姆斯·卡梅隆 James Cameron', ' 萨姆·沃辛顿 Sam Worthington ...', '2009', '美国 英国', '动作 战争 科幻 冒险', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2180085848.jpg');
INSERT INTO `movies` VALUES ('90', '阳光灿烂的日子', ' 姜文 Wen Jiang', ' 夏雨 Yu Xia / 宁静 Jing Ning / 陶虹 Hong Tao', '1994', '中国大陆 香港', '剧情 爱情', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p967457079.jpg');
INSERT INTO `movies` VALUES ('91', '第六感', ' M·奈特·沙马兰 M. Night Shyamalan', ' 布鲁斯·威利斯 Bruce Wi...', '1999', '美国', '剧情 悬疑 惊悚', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2220184425.jpg');
INSERT INTO `movies` VALUES ('92', '致命ID', ' James Mangold', ' John Cusack / Ray Liotta / Amanda Peet', '2003', '美国', '剧情 悬疑 惊悚', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p453720880.jpg');
INSERT INTO `movies` VALUES ('93', '玛丽和马克思', ' 亚当·艾略特 Adam Elliot', ' 托妮·科莱特 Toni Collette / 菲利...', '2009', '澳大利亚', '剧情 喜剧 动画', '8.9', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1820615077.jpg');
INSERT INTO `movies` VALUES ('94', '狩猎', ' 托马斯·温特伯格 Thomas Vinterberg', ' 麦斯·米科尔森 Mads Mik...', '2012', '丹麦 瑞典', '剧情', '9.1', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1546987967.jpg');
INSERT INTO `movies` VALUES ('95', '加勒比海盗', ' 戈尔·维宾斯基 Gore Verbinski', ' 约翰尼·德普 Johnny Depp / ...', '2003', '美国', '动作 冒险 奇幻', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1596085504.jpg');
INSERT INTO `movies` VALUES ('96', '断背山', ' 李安 Ang Lee', ' 希斯·莱杰 Heath Ledger / 杰克·吉伦哈尔 Jake...', '2005', '美国 加拿大', '剧情 爱情 同性 家庭', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p513535588.jpg');
INSERT INTO `movies` VALUES ('97', '重庆森林', ' 王家卫 Kar Wai Wong', ' 林青霞 Brigitte Lin / 金城武 Takeshi K...', '1994', '香港', '剧情 爱情', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p792381411.jpg');
INSERT INTO `movies` VALUES ('98', '摩登时代', ' 查理·卓别林 Charles Chaplin', ' 查理·卓别林 Charles Chaplin ...', '1936', '美国', '剧情 喜剧 爱情', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2173707976.jpg');
INSERT INTO `movies` VALUES ('99', '告白', ' 中岛哲也 Tetsuya Nakashima', ' 松隆子 Takako Matsu / 冈田将生 ...', '2010', '日本', '剧情 惊悚', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p689520756.jpg');
INSERT INTO `movies` VALUES ('100', '喜剧之王', ' 周星驰 Stephen Chow / 李力持 Lik-Chi Lee', ' 周星驰 Stephen Ch...', '1999', '香港', '喜剧 剧情 爱情', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1043597424.jpg');
INSERT INTO `movies` VALUES ('101', '大鱼', ' 蒂姆·波顿 Tim Burton', ' 伊万·麦克格雷格 Ewan McGregor / 阿...', '2003', '美国', '剧情 家庭 奇幻 冒险', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p692813374.jpg');
INSERT INTO `movies` VALUES ('102', '一一', ' 杨德昌 Edward Yang', ' 吴念真 / 李凯莉 Kelly Lee / 金燕玲 Elai...', '2000', '台湾 日本', '剧情 爱情 家庭', '9.0', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2119675128.jpg');
INSERT INTO `movies` VALUES ('103', '消失的爱人', ' 大卫·芬奇 David Fincher', ' 本·阿弗莱克 Ben Affleck / 罗莎蒙...', '2014', '美国', '剧情 犯罪 悬疑 惊悚', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2221768894.jpg');
INSERT INTO `movies` VALUES ('104', '射雕英雄传之东成西就', ' 刘镇伟 Jeffrey Lau', ' 梁朝伟 Tony Leung Chiu Wai / 林青霞 Bri...', '1993', '香港', '喜剧 奇幻 武侠 古装', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1993903133.jpg');
INSERT INTO `movies` VALUES ('105', '阳光姐妹淘', ' 姜炯哲 Hyeong-Cheol Kang', ' 沈恩京 Eun-kyung Shim / 闵孝琳 Hy...', '2011', '韩国', '剧情 喜剧', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1374786017.jpg');
INSERT INTO `movies` VALUES ('106', '甜蜜蜜', ' 陈可辛 Peter Chan', ' 黎明 Leon Lai / 张曼玉 Maggie Cheung / ...', '1996', '香港', '剧情 爱情', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1962839732.jpg');
INSERT INTO `movies` VALUES ('107', '爱在黎明破晓前', ' 理查德·林克莱特 Richard Linklater', ' 伊桑·霍克 Ethan Hawke ...', '1995', '美国 奥地利 瑞士', '剧情 爱情', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p452582315.jpg');
INSERT INTO `movies` VALUES ('108', '小森林 夏秋篇', ' 森淳一 Junichi Mori', ' 桥本爱 Ai Hashimoto / 三浦贵大 Takahir...', '2014', '日本', '剧情', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2221319641.jpg');
INSERT INTO `movies` VALUES ('109', '侧耳倾听', ' 近藤喜文 Yoshifumi Kondo', ' 本名阳子 Youko Honna / 小林桂树 K...', '1995', '日本', '剧情 爱情 动画', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2370996140.jpg');
INSERT INTO `movies` VALUES ('110', '驯龙高手', ' 迪恩·德布洛斯 Dean DeBlois / 克里斯·桑德斯 Chris Sanders', '...', '2010', '美国', '动画 奇幻 冒险', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2210954024.jpg');
INSERT INTO `movies` VALUES ('111', '红辣椒', ' 今敏 Satoshi Kon', ' 林原惠美 Megumi Hayashibara / 江守彻 Toru...', '2006', '日本', '动画 悬疑 科幻 惊悚', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p672363704.jpg');
INSERT INTO `movies` VALUES ('112', '倩女幽魂', ' 程小东 Siu-Tung Ching', ' 张国荣 Leslie Cheung / 王祖贤 Joey W...', '1987', '香港', '爱情 奇幻 武侠 古装', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2414157745.jpg');
INSERT INTO `movies` VALUES ('113', '请以你的名字呼唤我', ' 卢卡·瓜达尼诺 Luca Guadagnino', ' 艾米·汉莫 Armie Hammer / ...', '2017', '意大利 法国 巴西 美国 荷兰 德国', '剧情 爱情 同性', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2505525050.jpg');
INSERT INTO `movies` VALUES ('114', '恐怖直播', ' 金秉祐 Byeong-woo Kim', ' 河正宇 Jung-woo Ha / 李璟荣 Kyeong-y...', '2013', '韩国', '剧情 犯罪 悬疑', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2016930906.jpg');
INSERT INTO `movies` VALUES ('115', '风之谷', ' 宫崎骏 Hayao Miyazaki', ' 岛本须美 Sumi Shimamoto / 松田洋治 Y...', '1984', '日本', '动画 奇幻 冒险', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1917567652.jpg');
INSERT INTO `movies` VALUES ('116', '上帝之城', ' Kátia Lund / Fernando Meirelles', ' Alexandre Rodrigues / Lea...', '2002', '巴西 法国', '犯罪 剧情', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p455677490.jpg');
INSERT INTO `movies` VALUES ('117', '超脱', ' 托尼·凯耶 Tony Kaye', ' 艾德里安·布洛迪 Adrien Brody / 马西...', '2011', '美国', '剧情', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1305562621.jpg');
INSERT INTO `movies` VALUES ('118', '爱在日落黄昏时', ' 理查德·林克莱特 Richard Linklater', ' 伊桑·霍克 Ethan Hawke ...', '2004', '美国', '剧情 爱情', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910924055.jpg');
INSERT INTO `movies` VALUES ('119', '菊次郎的夏天', ' 北野武 Takeshi Kitano', ' 北野武 Takeshi Kitano / 关口雄介 Yus...', '1999', '日本', '剧情 喜剧', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p751835224.jpg');
INSERT INTO `movies` VALUES ('120', '幸福终点站', ' 史蒂文·斯皮尔伯格 Steven Spielberg', ' 汤姆·汉克斯 Tom Hanks...', '2004', '美国', '喜剧 剧情 爱情', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p792263736.jpg');
INSERT INTO `movies` VALUES ('121', '哈利·波特与死亡圣器(下)', ' 大卫·叶茨 David Yates', ' 丹尼尔·雷德克里夫 Daniel Radcliffe...', '2011', '美国 英国', '剧情 悬疑 奇幻 冒险', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p917846733.jpg');
INSERT INTO `movies` VALUES ('122', '小森林 冬春篇', ' 森淳一 Junichi Mori', ' 桥本爱 Ai Hashimoto / 三浦贵大 Takahir...', '2015', '日本', '剧情', '9.0', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2215147728.jpg');
INSERT INTO `movies` VALUES ('123', '杀人回忆', ' 奉俊昊 Joon-ho Bong', ' 宋康昊 Kang-ho Song / 金相庆 Sang-kyun...', '2003', '韩国', '犯罪 剧情 悬疑 惊悚', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p480225538.jpg');
INSERT INTO `movies` VALUES ('124', '神偷奶爸', ' 皮艾尔·柯芬 Pierre Coffin / 克里斯·雷纳德 Chris Renaud', ' ...', '2010', '美国 法国', '喜剧 动画 冒险', '8.5', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p792776858.jpg');
INSERT INTO `movies` VALUES ('125', '借东西的小人阿莉埃蒂', ' 米林宏昌 Hiromasa Yonebayashi', ' 志田未来 Mirai Shida / 神木...', '2010', '日本', '动画 奇幻 冒险', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p617533616.jpg');
INSERT INTO `movies` VALUES ('126', '7号房的礼物', ' 李焕庆 Hwan-kyeong Lee', ' 柳承龙 Seung-yong Ryoo / 朴信惠 Shi...', '2013', '韩国', '剧情 喜剧 家庭', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1816276065.jpg');
INSERT INTO `movies` VALUES ('127', '萤火之森', ' 大森贵弘 Takahiro Omori', ' 佐仓绫音 Ayane Sakura / 内山昂辉 K...', '2011', '日本', '剧情 爱情 动画 奇幻', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1272904657.jpg');
INSERT INTO `movies` VALUES ('128', '唐伯虎点秋香', ' 李力持 Lik-Chi Lee', ' 周星驰 Stephen Chow / 巩俐 Li Gong / 陈...', '1993', '香港', '喜剧 爱情 古装', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1946455272.jpg');
INSERT INTO `movies` VALUES ('129', '怪兽电力公司', ' 彼特·道格特 Pete Docter / 大卫·斯沃曼 David Silverman', ' 约...', '2001', '美国', '儿童 喜剧 动画 奇幻 冒险', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2513247938.jpg');
INSERT INTO `movies` VALUES ('130', '超能陆战队', ' 唐·霍尔 Don Hall / 克里斯·威廉姆斯 Chris Williams', ' 斯科特...', '2014', '美国', '喜剧 动作 科幻 动画 冒险', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2224568669.jpg');
INSERT INTO `movies` VALUES ('131', '蝙蝠侠：黑暗骑士崛起', ' 克里斯托弗·诺兰 Christopher Nolan', ' 克里斯蒂安·贝尔 Christ...', '2012', '美国 英国', '剧情 动作 科幻 犯罪 惊悚', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1706428744.jpg');
INSERT INTO `movies` VALUES ('132', '岁月神偷', ' 罗启锐 Alex Law', ' 吴君如 Sandra Ng / 任达华 Simon Yam / 钟绍...', '2010', '香港 中国大陆', '剧情 家庭', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p456666151.jpg');
INSERT INTO `movies` VALUES ('133', '七武士', ' 黑泽明 Akira Kurosawa', ' 三船敏郎 Toshirô Mifune / 志村乔 ...', '1954', '日本', '动作 冒险 剧情', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p647099823.jpg');
INSERT INTO `movies` VALUES ('134', '电锯惊魂', ' 詹姆斯·温 James Wan', ' 雷·沃纳尔 Leigh Whannell / 加利·艾...', '2004', '美国', '悬疑 惊悚 恐怖', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2163771304.jpg');
INSERT INTO `movies` VALUES ('135', '真爱至上', ' 理查德·柯蒂斯 Richard Curtis', ' 休·格兰特 Hugh Grant / 柯林...', '2003', '英国 美国 法国', '喜剧 剧情 爱情', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p475600770.jpg');
INSERT INTO `movies` VALUES ('136', '谍影重重3', ' 保罗·格林格拉斯 Paul Greengrass', ' 马特·达蒙 Matt Damon / ...', '2007', '美国 德国', '动作 悬疑 惊悚', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p792223507.jpg');
INSERT INTO `movies` VALUES ('137', '疯狂原始人', ' 科克·德·米科 Kirk De Micco / 克里斯·桑德斯 Chris Sanders', '..', '2013', '美国', '喜剧 动画 冒险', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1867084027.jpg');
INSERT INTO `movies` VALUES ('138', '喜宴', ' 李安 Ang Lee', ' 赵文瑄 Winston Chao / 郎雄 Sihung Lung / 归亚...', '1993', '台湾 美国', '剧情 喜剧 爱情 同性 家庭', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2173713676.jpg');
INSERT INTO `movies` VALUES ('139', '萤火虫之墓', ' 高畑勋 Isao Takahata', ' 辰己努 / 白石绫乃 / 志乃原良子', '1988', '日本', '动画 剧情 战争', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2237136718.jpg');
INSERT INTO `movies` VALUES ('140', '无人知晓', ' 是枝裕和 Hirokazu Koreeda', ' 柳乐优弥 Yûya Yagira / 北浦爱...', '2004', '日本', '剧情', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p661160053.jpg');
INSERT INTO `movies` VALUES ('141', '东邪西毒', ' 王家卫 Kar Wai Wong', ' 张国荣 Leslie Cheung / 林青霞 Brigitte...', '1994', '香港 台湾', '剧情 动作 爱情 武侠 古装', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1982176012.jpg');
INSERT INTO `movies` VALUES ('142', '贫民窟的百万富翁', ' 丹尼·鲍尔 Danny Boyle / 洛芙琳·坦丹 Loveleen Tandan', ' 戴夫...', '2008', '英国 美国', '剧情 爱情', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2434249040.jpg');
INSERT INTO `movies` VALUES ('143', '英雄本色', ' 吴宇森 John Woo', ' 周润发 Yun-Fat Chow / 狄龙 Lung Ti / 张国...', '1986', '香港', '动作 犯罪', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2504997087.jpg');
INSERT INTO `movies` VALUES ('144', '黑天鹅', ' 达伦·阿罗诺夫斯基 Darren Aronofsky', ' 娜塔莉·波特曼 Natalie...', '2010', '美国', '剧情 惊悚', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p719282906.jpg');
INSERT INTO `movies` VALUES ('145', '记忆碎片', ' 克里斯托弗·诺兰 Christopher Nolan', ' 盖·皮尔斯 Guy Pearce /...', '2000', '美国', '犯罪 剧情 悬疑 惊悚', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p641688453.jpg');
INSERT INTO `movies` VALUES ('146', '血战钢锯岭', ' 梅尔·吉布森 Mel Gibson', ' 安德鲁·加菲尔德 Andrew Garfield /...', '2016', '美国 澳大利亚', '剧情 传记 历史 战争', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2398141939.jpg');
INSERT INTO `movies` VALUES ('147', '心迷宫', ' 忻钰坤 Yukun Xin', ' 霍卫民 Weimin Huo / 王笑天 Xiaotian Wang ...', '2014', '中国大陆', '剧情 犯罪 悬疑', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2275298525.jpg');
INSERT INTO `movies` VALUES ('148', '傲慢与偏见', ' 乔·怀特 Joe Wright', ' 凯拉·奈特莉 Keira Knightley / 马修·...', '2005', '法国 英国 美国', '剧情 爱情', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p452005185.jpg');
INSERT INTO `movies` VALUES ('149', '时空恋旅人', ' 理查德·柯蒂斯 Richard Curtis', ' 多姆纳尔·格里森 Domhnall Gl...', '2013', '英国', '喜剧 爱情 奇幻', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2070153774.jpg');
INSERT INTO `movies` VALUES ('150', '雨人', ' 巴瑞·莱文森 Barry Levinson', ' 达斯汀·霍夫曼 Dustin Hoffman ...', '1988', '美国', '剧情', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p942376281.jpg');
INSERT INTO `movies` VALUES ('151', '荒蛮故事', ' 达米安·斯兹弗隆 Damián Szifron', ' 达里奥·葛兰帝内提 Darío...', '2014', '阿根廷 西班牙', '剧情 喜剧 犯罪', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2192834364.jpg');
INSERT INTO `movies` VALUES ('152', '纵横四海', ' 吴宇森 John Woo', ' 周润发 Yun-Fat Chow / 张国荣 Leslie Cheung...', '1991', '香港', '剧情 喜剧 动作 犯罪', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2272146906.jpg');
INSERT INTO `movies` VALUES ('153', '教父3', ' 弗朗西斯·福特·科波拉 Francis Ford Coppola', ' 阿尔·帕西诺 A...', '1990', '美国', '剧情 犯罪', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2169664351.jpg');
INSERT INTO `movies` VALUES ('154', '达拉斯买家俱乐部', ' 让-马克·瓦雷 Jean-Marc Vallée', ' 马修·麦康纳 Matthew McCon...', '2013', '美国', '剧情 传记 同性', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2166160837.jpg');
INSERT INTO `movies` VALUES ('155', '玩具总动员3', ' 李·昂克里奇 Lee Unkrich', ' 汤姆·汉克斯 Tom Hanks / 蒂姆·艾...', '2010', '美国', '喜剧 动画 奇幻 冒险', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1283675359.jpg');
INSERT INTO `movies` VALUES ('156', '卢旺达饭店', ' 特瑞·乔治 Terry George', ' 唐·钱德尔 Don Cheadle / 苏菲·奥...', '2004', '英国 南非 意大利 美国', '剧情 历史 战争', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2159368352.jpg');
INSERT INTO `movies` VALUES ('157', '完美的世界', ' 克林特·伊斯特伍德 Clint Eastwood', ' 凯文·科斯特纳 Kevin Cos...', '1993', '美国', '剧情 犯罪', '9.1', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2190556408.jpg');
INSERT INTO `movies` VALUES ('158', '花样年华', ' 王家卫 Kar Wai Wong', ' 梁朝伟 Tony Leung Chiu Wai / 张曼玉 Ma...', '2000', '香港', '剧情 爱情', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910828286.jpg');
INSERT INTO `movies` VALUES ('159', '海边的曼彻斯特', ' 肯尼斯·罗纳根 Kenneth Lonergan', ' 卡西·阿弗莱克 Casey Affle...', '2016', '美国', '剧情 家庭', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2496940327.jpg');
INSERT INTO `movies` VALUES ('160', '海洋', ' 雅克·贝汉 Jacques Perrin / 雅克·克鲁奥德 Jacques Cluzaud', '...', '2009', '法国 瑞士 西班牙 美国 阿联酋', '纪录片', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p497010372.jpg');
INSERT INTO `movies` VALUES ('161', '虎口脱险', ' 杰拉尔·乌里 Gérard Oury', ' 路易·德·菲耐斯 Louis de Funès...', '1966', '法国 英国', '喜剧 战争', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2399597512.jpg');
INSERT INTO `movies` VALUES ('162', '恋恋笔记本', ' 尼克·卡索维茨 Nick Cassavetes', ' 瑞恩·高斯林 Ryan Gosling /...', '2004', '美国', '剧情 爱情', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p483604864.jpg');
INSERT INTO `movies` VALUES ('163', '你看起来好像很好吃', ' 藤森雅也 Masaya Fujimori', ' 山口胜平 Kappei Yamaguchi / 爱河...', '2010', '日本', '剧情 动画 儿童', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p709670262.jpg');
INSERT INTO `movies` VALUES ('164', '二十二', ' 郭柯 Ke Guo', ' ', '2015', '中国大陆', '纪录片', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2457609817.jpg');
INSERT INTO `movies` VALUES ('165', '被解救的姜戈', ' 昆汀·塔伦蒂诺 Quentin Tarantino', ' 杰米·福克斯 Jamie Foxx /...', '2012', '美国', '剧情 动作 西部 冒险', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1959232369.jpg');
INSERT INTO `movies` VALUES ('168', '无敌破坏王', ' 瑞奇·莫尔 Rich Moore', ' 约翰·C·赖利 John C. Reilly / 萨拉...', '2012', '美国', '喜剧 动画 奇幻 冒险', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1735642656.jpg');
INSERT INTO `movies` VALUES ('169', '冰川时代', ' 卡洛斯·沙尔丹哈 Carlos Saldanha / 克里斯·韦奇 Chris Wedge', '..', '2002', '美国', '喜剧 动画 冒险', '8.5', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1910895719.jpg');
INSERT INTO `movies` VALUES ('170', '你的名字。', ' 新海诚 Makoto Shinkai', ' 神木隆之介 Ryûnosuke Kamiki / 上...', '2016', '日本', '剧情 爱情 动画', '8.4', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2395733377.jpg');
INSERT INTO `movies` VALUES ('171', '我是山姆', ' 杰茜·尼尔森 Jessie Nelson', ' Sean Penn / Dakota Fanning / Mi...', '2001', '美国', '剧情 家庭', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p652417775.jpg');
INSERT INTO `movies` VALUES ('172', '雨中曲', ' 斯坦利·多南 Stanley Donen / 吉恩·凯利 Gene Kelly', ' 吉恩·...', '1952', '美国', '喜剧 歌舞 爱情', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1612355875.jpg');
INSERT INTO `movies` VALUES ('173', '爆裂鼓手', ' 达米恩·查泽雷 Damien Chazelle', ' 迈尔斯·特勒 Miles Teller /...', '2014', '美国', '剧情 音乐', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2220776342.jpg');
INSERT INTO `movies` VALUES ('174', '人工智能', ' 史蒂文·斯皮尔伯格 Steven Spielberg', ' 海利·乔·奥斯蒙 Haley...', '2001', '美国', '冒险 剧情 科幻', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p792257137.jpg');
INSERT INTO `movies` VALUES ('175', '三块广告牌', ' 马丁·麦克唐纳 Martin McDonagh', ' 弗兰西斯·麦克多蒙德 France...', '2017', '美国 英国', '剧情 犯罪', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2510081688.jpg');
INSERT INTO `movies` VALUES ('176', '穿越时空的少女', ' 细田守 Mamoru Hosoda', ' 仲里依纱 Riisa Naka / 石田卓也 Takuya...', '2006', '日本', '剧情 爱情 科幻 动画', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2079334286.jpg');
INSERT INTO `movies` VALUES ('177', '魂断蓝桥', ' 茂文·勒鲁瓦 Mervyn LeRoy', ' 费雯·丽 Vivien Leigh / 罗伯特·...', '1940', '美国', '剧情 爱情 战争', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2351134499.jpg');
INSERT INTO `movies` VALUES ('178', '未麻的部屋', ' 今敏 Satoshi Kon', ' 岩男润子 Junko Iwao / 松本梨香 Rica Matsu...', '1997', '日本', '动画 奇幻 惊悚', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1351050722.jpg');
INSERT INTO `movies` VALUES ('179', '猜火车', ' 丹尼·博伊尔 Danny Boyle', ' 伊万·麦克格雷格 Ewan McGregor / ...', '1996', '英国', '剧情 犯罪', '8.5', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p513567548.jpg');
INSERT INTO `movies` VALUES ('180', '模仿游戏', ' 莫滕·泰杜姆 Morten Tyldum', ' 本尼迪克特·康伯巴奇 Benedict C...', '2014', '英国 美国', '剧情 传记 战争 同性', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2255040492.jpg');
INSERT INTO `movies` VALUES ('181', '一个叫欧维的男人决定去死', ' 汉内斯·赫尔姆 Hannes Holm', ' 罗夫·拉斯加德 Rolf Lassgård...', '2015', '瑞典', '剧情', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2406624993.jpg');
INSERT INTO `movies` VALUES ('182', '房间', ' 伦尼·阿伯拉罕森 Lenny Abrahamson', ' 布丽·拉尔森 Brie Larson...', '2015', '爱尔兰 加拿大 英国 美国', '剧情 家庭', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2259715855.jpg');
INSERT INTO `movies` VALUES ('183', '忠犬八公物语', ' Seijirô Kôyama', ' 山本圭 Kei Yamamoto / 井川比佐志 Hisa...', '1987', '日本', '剧情', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1576418852.jpg');
INSERT INTO `movies` VALUES ('184', '完美陌生人', ' 保罗·格诺维瑟 Paolo Genovese', ' 马可·贾利尼 Marco Giallini ...', '2016', '意大利', '剧情 喜剧', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2522331945.jpg');
INSERT INTO `movies` VALUES ('185', '罗生门', ' 黑泽明 Akira Kurosawa', ' 三船敏郎 Toshirô Mifune / 千秋实 ...', '1950', '日本', '犯罪 剧情 悬疑', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1864872647.jpg');
INSERT INTO `movies` VALUES ('186', '恐怖游轮', ' 克里斯托弗·史密斯 Christopher Smith', ' 梅利莎·乔治 Melissa ...', '2009', '英国 澳大利亚', '剧情 悬疑 惊悚', '8.4', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p462470694.jpg');
INSERT INTO `movies` VALUES ('187', '魔女宅急便', ' 宫崎骏 Hayao Miyazaki', ' 高山南 Minami Takayama / 佐久间玲 Re...', '1989', '日本', '动画 奇幻 冒险', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p456676352.jpg');
INSERT INTO `movies` VALUES ('188', '阿飞正传', ' 王家卫 Kar Wai Wong', ' 张国荣 Leslie Cheung / 张曼玉 Maggie C...', '1990', '香港', '犯罪 剧情 爱情', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2525770523.jpg');
INSERT INTO `movies` VALUES ('189', '香水', ' 汤姆·提克威 Tom Tykwer', ' 本·卫肖 Ben Whishaw / 艾伦·瑞克...', '2006', '德国 法国 西班牙 美国', '剧情 犯罪 奇幻', '8.5', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p470006658.jpg');
INSERT INTO `movies` VALUES ('190', '浪潮', ' 丹尼斯·甘塞尔 Dennis Gansel', ' 尤尔根·沃格尔 Jürgen Vogel ...', '2008', '德国', '剧情 惊悚', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1344888983.jpg');
INSERT INTO `movies` VALUES ('191', '朗读者', ' 史蒂芬·戴德利 Stephen Daldry', ' 凯特·温丝莱特 Kate Winslet ...', '2008', '美国 德国', '剧情 爱情', '8.5', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1140984198.jpg');
INSERT INTO `movies` VALUES ('192', '哪吒闹海', ' 严定宪 Dingxian Yan / 王树忱 Shuchen Wang', ' 梁正晖 Zhenghui ...', '1979', '中国大陆', '冒险 动画 奇幻', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2516566783.jpg');
INSERT INTO `movies` VALUES ('193', '可可西里', ' 陆川 Chuan Lu', ' 多布杰 Duobujie / 张磊 Lei Zhang / 亓亮 Qi L...', '2004', '中国大陆 香港', '剧情 犯罪', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2363208684.jpg');
INSERT INTO `movies` VALUES ('194', '黑客帝国3：矩阵革命', ' Andy Wachowski / Larry Wachowski', ' 基努·里维斯 Keanu Reeves...', '2003', '美国 澳大利亚', '动作 科幻', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p443461818.jpg');
INSERT INTO `movies` VALUES ('195', '海街日记', ' 是枝裕和 Hirokazu Koreeda', ' 绫濑遥 Haruka Ayase / 长泽雅美 M...', '2015', '日本', '剧情 家庭', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2232247487.jpg');
INSERT INTO `movies` VALUES ('196', '谍影重重', ' 道格·里曼 Doug Liman', ' 马特·达蒙 Matt Damon / 弗兰卡·波坦...', '2002', '美国 德国 捷克', '动作 悬疑 惊悚', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1597183981.jpg');
INSERT INTO `movies` VALUES ('197', '谍影重重2', ' 保罗·格林格拉斯 Paul Greengrass', ' 马特·达蒙 Matt Damon / ...', '2004', '美国 德国', '动作 悬疑 惊悚', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p667644866.jpg');
INSERT INTO `movies` VALUES ('198', '战争之王', ' 安德鲁·尼科尔 Andrew Niccol', ' 尼古拉斯·凯奇 Nicolas Cage /...', '2005', '美国 法国', '剧情 犯罪', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p453719066.jpg');
INSERT INTO `movies` VALUES ('199', '牯岭街少年杀人事件', ' 杨德昌 Edward Yang', ' 张震 Chen Chang / 杨静怡 Lisa Yang / 张...', '1991', '台湾', '剧情 犯罪', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p848381236.jpg');
INSERT INTO `movies` VALUES ('200', '地球上的星星', ' 阿米尔·汗 Aamir Khan', ' 达席尔·萨法瑞 Darsheel Safary / 阿...', '2007', '印度', '剧情 儿童 家庭', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1973489335.jpg');
INSERT INTO `movies` VALUES ('201', '一次别离', ' 阿斯哈·法哈蒂  Asghar Farhadi', ' 佩曼·莫阿迪 Peyman Moadi /...', '2011', '伊朗 法国', '剧情 家庭', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2189835254.jpg');
INSERT INTO `movies` VALUES ('202', '青蛇', ' 徐克 Hark Tsui', ' 张曼玉 Maggie Cheung / 王祖贤 Joey Wang / ...', '1993', '香港', '剧情 爱情 奇幻 古装', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p584021784.jpg');
INSERT INTO `movies` VALUES ('203', '惊魂记', ' Alfred Hitchcock', ' Janet Leigh / Anthony Perkins / Vera Miles', '1960', '美国', '悬疑 惊悚 恐怖', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1021883305.jpg');
INSERT INTO `movies` VALUES ('204', '追随', ' 克里斯托弗·诺兰 Christopher Nolan', ' 杰里米·西奥伯德 Jeremy...', '1998', '英国', '犯罪 悬疑 惊悚', '8.9', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1150103377.jpg');
INSERT INTO `movies` VALUES ('205', '疯狂的石头', ' 宁浩 Hao Ning', ' 郭涛 Tao Guo / 刘桦 Hua Liu / 连晋 Teddy Lin', '2006', '中国大陆 香港', '喜剧 犯罪', '8.4', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p712241453.jpg');
INSERT INTO `movies` VALUES ('206', '终结者2：审判日', ' 詹姆斯·卡梅隆 James Cameron', ' 阿诺·施瓦辛格 Arnold Schwarz...', '1991', '美国 法国', '动作 科幻', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910909085.jpg');
INSERT INTO `movies` VALUES ('207', '小萝莉的猴神大叔', ' 卡比尔·汗 Kabir Khan', ' 萨尔曼·汗 Salman Khan / 哈莎莉·马...', '2015', '印度', '剧情 喜剧 动作', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2510956726.jpg');
INSERT INTO `movies` VALUES ('208', '源代码', ' 邓肯·琼斯 Duncan Jones', ' 杰克·吉伦哈尔 Jake Gyllenhaal / ...', '2011', '美国 加拿大', '科幻 悬疑 惊悚', '8.4', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p988260245.jpg');
INSERT INTO `movies` VALUES ('209', '撞车', ' 保罗·哈吉斯 Paul Haggis', ' 桑德拉·布洛克 Sandra Bullock / ...', '2004', '美国 德国', '犯罪 剧情', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p659411589.jpg');
INSERT INTO `movies` VALUES ('210', '步履不停', ' 是枝裕和 Hirokazu Koreeda', ' 阿部宽 Hiroshi Abe / 夏川结衣 Yu...', '2008', '日本', '剧情 家庭', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p672446737.jpg');
INSERT INTO `movies` VALUES ('211', '再次出发之纽约遇见你', ' 约翰·卡尼 John Carney', ' 凯拉·奈特莉 Keira Knightley / 马克...', '2013', '美国', '喜剧 爱情 音乐', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2250287733.jpg');
INSERT INTO `movies` VALUES ('214', '梦之安魂曲', ' 达伦·阿伦诺夫斯基 Darren Aronofsky', ' 艾伦·伯斯汀 Ellen Bur...', '2000', '美国', '剧情', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p884936202.jpg');
INSERT INTO `movies` VALUES ('215', '天书奇谭', ' 王树忱 Shuchen Wang / 钱运达 Yunda Qian', ' 丁建华 Jianhua Din...', '1983(中国大陆) / 2019(中国大陆重映)', '中国大陆', '动画 奇幻', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p842504080.jpg');
INSERT INTO `movies` VALUES ('216', '爱在午夜降临前', ' 理查德·林克莱特 Richard Linklater', ' 伊桑·霍克 Ethan Hawke ...', '2013', '美国 希腊', '剧情 爱情', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2074715729.jpg');
INSERT INTO `movies` VALUES ('217', '东京物语', ' 小津安二郎 Yasujirô Ozu', ' 笠智众 Chishû Ryû / 原节...', '1953', '日本', '剧情 家庭', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910832390.jpg');
INSERT INTO `movies` VALUES ('218', '无耻混蛋', ' Quentin Tarantino', ' 布拉德·皮特 Brad Pitt / 梅拉尼·罗兰 M...', '2009', '美国 德国', '剧情 犯罪', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p770734475.jpg');
INSERT INTO `movies` VALUES ('219', '城市之光', ' Charles Chaplin', ' 查理·卓别林 Charles Chaplin / 弗吉尼亚·...', '1931', '美国', '喜剧 剧情 爱情', '9.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2170238803.jpg');
INSERT INTO `movies` VALUES ('220', '海蒂和爷爷', ' 阿兰·葛斯彭纳 Alain Gsponer', ' 阿努克·斯特芬 Anuk Steffen /...', '2015', '德国 瑞士 南非', '剧情 冒险 家庭', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2332944143.jpg');
INSERT INTO `movies` VALUES ('221', '绿里奇迹', ' Frank Darabont', ' 汤姆·汉克斯 Tom Hanks / 大卫·摩斯 David M...', '1999', '美国', '犯罪 剧情 奇幻 悬疑', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p767586451.jpg');
INSERT INTO `movies` VALUES ('222', '彗星来的那一夜', ' 詹姆斯·沃德·布柯特 James Ward Byrkit', ' 艾米丽·芭尔多尼 Em...', '2013', '美国 英国', '科幻 悬疑 惊悚', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2187896711.jpg');
INSERT INTO `movies` VALUES ('223', '这个男人来自地球', ' 理查德·沙因克曼 Richard Schenkman', ' 大卫·李·史密斯 David ...', '2007', '美国', '剧情 科幻', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p513303986.jpg');
INSERT INTO `movies` VALUES ('224', '血钻', ' 爱德华·兹威克 Edward Zwick', ' 莱昂纳多·迪卡普里奥 Leonardo ...', '2006', '美国 德国', '剧情 惊悚 冒险', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1244017073.jpg');
INSERT INTO `movies` VALUES ('225', 'E.T. 外星人', ' Steven Spielberg', ' Henry Thomas / Dee Wallace / Robert MacNa...', '1982', '美国', '剧情 科幻', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p984732992.jpg');
INSERT INTO `movies` VALUES ('226', '末路狂花', ' 雷德利·斯科特 Ridley Scott', ' 吉娜·戴维斯 Geena Davis / 苏...', '1991', '美国 法国', '犯罪 剧情 惊悚', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p794583044.jpg');
INSERT INTO `movies` VALUES ('227', '2001太空漫游', ' 斯坦利·库布里克 Stanley Kubrick', ' 凯尔·杜拉 Keir Dullea / ...', '1968', '英国 美国', '科幻 惊悚 冒险', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p792189453.jpg');
INSERT INTO `movies` VALUES ('228', '聚焦', ' 托马斯·麦卡锡 Thomas McCarthy', ' 马克·鲁弗洛 Mark Ruffalo /...', '2015', '美国', '剧情 传记', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2263822658.jpg');
INSERT INTO `movies` VALUES ('229', '勇闯夺命岛', ' 迈克尔·贝 Michael Bay', ' 肖恩·康纳利 Sean Connery / 尼古拉...', '1996', '美国', '动作 冒险', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p636048104.jpg');
INSERT INTO `movies` VALUES ('230', '变脸', ' 吴宇森 John Woo', ' 约翰·特拉沃尔塔 John Travolta / 尼古拉斯...', '1997', '美国', '动作 科幻 犯罪 惊悚', '8.4', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2173855883.jpg');
INSERT INTO `movies` VALUES ('231', '发条橙', ' Stanley Kubrick', ' Malcolm McDowell / Patrick Magee / Michael...', '1971', '英国 美国', '犯罪 剧情 科幻', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p529908155.jpg');
INSERT INTO `movies` VALUES ('232', '秒速5厘米', ' 新海诚 Makoto Shinkai', ' 水桥研二 Kenji Mizuhashi / 近藤好美 ...', '2007', '日本', '动画 剧情 爱情', '8.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p982896012.jpg');
INSERT INTO `movies` VALUES ('233', '黄金三镖客', ' Sergio Leone', ' Clint Eastwood / Eli Wallach / Lee Van Cleef', '1966', '意大利 西班牙 西德', '冒险 西部', '9.1', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2101693489.jpg');
INSERT INTO `movies` VALUES ('234', '黑鹰坠落', ' 雷德利·斯科特 Ridley Scott', ' 乔什·哈奈特 Josh Hartnett / ...', '2001', '美国', '动作 历史 战争', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910900710.jpg');
INSERT INTO `movies` VALUES ('235', '非常嫌疑犯', ' 布莱恩·辛格 Bryan Singer', ' 史蒂芬·鲍德温 Stephen Baldwin /...', '1995', '德国 美国', '剧情 犯罪 悬疑 惊悚', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2537319495.jpg');
INSERT INTO `movies` VALUES ('236', '卡萨布兰卡', ' 迈克尔·柯蒂兹 Michael Curtiz', ' 亨弗莱·鲍嘉 Humphrey Bogart...', '1942', '美国', '剧情 爱情 战争', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1244791866.jpg');
INSERT INTO `movies` VALUES ('237', '我爱你', ' 秋昌民 Chang-min Choo', ' 宋在河 Jae-ho Song / 李顺载 Soon-jae...', '2011', '韩国', '剧情 爱情', '9.0', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1075591188.jpg');
INSERT INTO `movies` VALUES ('238', '国王的演讲', ' 汤姆·霍珀 Tom Hooper', ' 柯林·菲尔斯 Colin Firth / 杰弗里·...', '2010', '英国 澳大利亚 美国', '剧情 传记 历史', '8.3', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p768879237.jpg');
INSERT INTO `movies` VALUES ('239', '千钧一发', ' 安德鲁·尼科尔 Andrew Niccol', ' 伊桑·霍克 Ethan Hawke / 乌玛...', '1997', '美国', '剧情 科幻 惊悚', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2195672555.jpg');
INSERT INTO `movies` VALUES ('240', '美国丽人', ' 萨姆·门德斯 Sam Mendes', ' 凯文·史派西 Kevin Spacey / 安妮特...', '1999', '美国', '剧情 爱情 家庭', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p571671715.jpg');
INSERT INTO `movies` VALUES ('241', '功夫', ' 周星驰 Stephen Chow', ' 周星驰 Stephen Chow / 元秋 Qiu Yuen / ...', '2004', '中国大陆 香港', '动作 喜剧 犯罪 奇幻', '8.3', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2219011938.jpg');
INSERT INTO `movies` VALUES ('242', '遗愿清单', ' 罗伯·莱纳 Rob Reiner', ' 杰克·尼科尔森 Jack Nicholson / 摩根...', '2007', '美国', '冒险 喜剧 剧情', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p708613284.jpg');
INSERT INTO `movies` VALUES ('243', '疯狂的麦克斯4：狂暴之路', ' 乔治·米勒 George Miller', ' 汤姆·哈迪 Tom Hardy / 查理兹·塞...', '2015', '澳大利亚 美国', '动作 科幻 冒险', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2236181653.jpg');
INSERT INTO `movies` VALUES ('244', '碧海蓝天', ' Luc Besson', ' 让-马克·巴尔 Jean-Marc Barr / 让·雷诺 Jean Re...', '1988', '法国 美国 意大利', '剧情 爱情', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p455724599.jpg');
INSERT INTO `movies` VALUES ('245', '荒岛余生', ' 罗伯特·泽米吉斯 Robert Zemeckis', ' 汤姆·汉克斯 Tom Hanks / ...', '2000', '美国', '冒险 剧情', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2207673534.jpg');
INSERT INTO `movies` VALUES ('246', '英国病人', ' 安东尼·明格拉 Anthony Minghella', ' 拉尔夫·费因斯 Ralph Fien...', '1996', '美国 英国', '爱情 剧情 战争', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2408623752.jpg');
INSERT INTO `movies` VALUES ('247', '荒野生存', ' 西恩·潘 Sean Penn', ' 埃米尔·赫斯基 Emile Hirsch / 马西娅·...', '2007', '美国', '冒险 传记 剧情', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p465687407.jpg');
INSERT INTO `movies` VALUES ('248', '驴得水', ' 周申 Shen Zhou / 刘露 Lu Liu', ' 任素汐 Suxi Ren / 大力 Da Li ...', '2016', '中国大陆', '剧情 喜剧', '8.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2393044761.jpg');
INSERT INTO `movies` VALUES ('249', '奇迹男孩', ' 斯蒂芬·卓博斯基 Stephen Chbosky', ' 雅各布·特伦布莱 Jacob Tr...', '2017', '美国 香港', '剧情 儿童 家庭', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2507709428.jpg');
INSERT INTO `movies` VALUES ('250', '枪火', ' 杜琪峰 Johnnie To', ' 吴镇宇 Francis Ng / 任达华 Simon Yam / ...', '1999', '香港', '剧情 动作 犯罪', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1538646661.jpg');

-- ----------------------------
-- Table structure for movies_moives
-- ----------------------------
DROP TABLE IF EXISTS `movies_moives`;
CREATE TABLE `movies_moives` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  `actor` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `typee` varchar(255) NOT NULL,
  `score` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movies_moives
-- ----------------------------
INSERT INTO `movies_moives` VALUES ('1', '肖申克的救赎', ' 弗兰克·德拉邦特 Frank Darabont', ' 蒂姆·罗宾斯 Tim Robbins /...', '1994', '美国', '犯罪 剧情', '9.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p480747492.jpg');
INSERT INTO `movies_moives` VALUES ('2', '霸王别姬', ' 陈凯歌 Kaige Chen', ' 张国荣 Leslie Cheung / 张丰毅 Fengyi Zha...', '1993', '中国大陆 香港', '剧情 爱情 同性', '9.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910813120.jpg');
INSERT INTO `movies_moives` VALUES ('3', '这个杀手不太冷', ' 吕克·贝松 Luc Besson', ' 让·雷诺 Jean Reno / 娜塔莉·波特曼 ...', '1994', '法国', '剧情 动作 犯罪', '9.4', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p511118051.jpg');
INSERT INTO `movies_moives` VALUES ('4', '阿甘正传', ' 罗伯特·泽米吉斯 Robert Zemeckis', ' 汤姆·汉克斯 Tom Hanks / ...', '1994', '美国', '剧情 爱情', '9.4', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p510876377.jpg');
INSERT INTO `movies_moives` VALUES ('5', '美丽人生', ' 罗伯托·贝尼尼 Roberto Benigni', ' 罗伯托·贝尼尼 Roberto Beni...', '1997', '意大利', '剧情 喜剧 爱情 战争', '9.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p510861873.jpg');
INSERT INTO `movies_moives` VALUES ('6', '泰坦尼克号', ' 詹姆斯·卡梅隆 James Cameron', ' 莱昂纳多·迪卡普里奥 Leonardo...', '1997', '美国', '剧情 爱情 灾难', '9.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p457760035.jpg');
INSERT INTO `movies_moives` VALUES ('7', '千与千寻', ' 宫崎骏 Hayao Miyazaki', ' 柊瑠美 Rumi Hîragi / 入野自由 Miy...', '2001', '日本', '剧情 动画 奇幻', '9.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1606727862.jpg');
INSERT INTO `movies_moives` VALUES ('8', '辛德勒的名单', ' 史蒂文·斯皮尔伯格 Steven Spielberg', ' 连姆·尼森 Liam Neeson...', '1993', '美国', '剧情 历史 战争', '9.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p492406163.jpg');
INSERT INTO `movies_moives` VALUES ('9', '盗梦空间', ' 克里斯托弗·诺兰 Christopher Nolan', ' 莱昂纳多·迪卡普里奥 Le...', '2010', '美国 英国', '剧情 科幻 悬疑 冒险', '9.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p513344864.jpg');
INSERT INTO `movies_moives` VALUES ('10', '忠犬八公的故事', ' 莱塞·霍尔斯道姆 Lasse Hallström', ' 理查·基尔 Richard Ger...', '2009', '美国 英国', '剧情', '9.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p524964016.jpg');
INSERT INTO `movies_moives` VALUES ('11', '机器人总动员', ' 安德鲁·斯坦顿 Andrew Stanton', ' 本·贝尔特 Ben Burtt / 艾丽...', '2008', '美国', '爱情 科幻 动画 冒险', '9.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1461851991.jpg');
INSERT INTO `movies_moives` VALUES ('12', '三傻大闹宝莱坞', ' 拉库马·希拉尼 Rajkumar Hirani', ' 阿米尔·汗 Aamir Khan / 卡...', '2009', '印度', '剧情 喜剧 爱情 歌舞', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p579729551.jpg');
INSERT INTO `movies_moives` VALUES ('13', '海上钢琴师', ' 朱塞佩·托纳多雷 Giuseppe Tornatore', ' 蒂姆·罗斯 Tim Roth / ...', '1998', '意大利', '剧情 音乐', '9.2', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p511146807.jpg');
INSERT INTO `movies_moives` VALUES ('14', '放牛班的春天', ' 克里斯托夫·巴拉蒂 Christophe Barratier', ' 热拉尔·朱尼奥 Gé...', '2004', '法国 瑞士 德国', '剧情 音乐', '9.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910824951.jpg');
INSERT INTO `movies_moives` VALUES ('15', '楚门的世界', ' 彼得·威尔 Peter Weir', ' 金·凯瑞 Jim Carrey / 劳拉·琳妮 Lau...', '1998', '美国', '剧情 科幻', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p479682972.jpg');
INSERT INTO `movies_moives` VALUES ('16', '大话西游之大圣娶亲', ' 刘镇伟 Jeffrey Lau', ' 周星驰 Stephen Chow / 吴孟达 Man Tat Ng...', '1995', '香港 中国大陆', '喜剧 爱情 奇幻 古装', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2455050536.jpg');
INSERT INTO `movies_moives` VALUES ('17', '星际穿越', ' 克里斯托弗·诺兰 Christopher Nolan', ' 马修·麦康纳 Matthew Mc...', '2014', '美国 英国 加拿大 冰岛', '剧情 科幻 冒险', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2206088801.jpg');
INSERT INTO `movies_moives` VALUES ('18', '龙猫', ' 宫崎骏 Hayao Miyazaki', ' 日高法子 Noriko Hidaka / 坂本千夏 Ch...', '1988', '日本', '动画 奇幻 冒险', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2540924496.jpg');
INSERT INTO `movies_moives` VALUES ('19', '教父', ' 弗朗西斯·福特·科波拉 Francis Ford Coppola', ' 马龙·白兰度 M...', '1972', '美国', '剧情 犯罪', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p616779645.jpg');
INSERT INTO `movies_moives` VALUES ('20', '熔炉', ' 黄东赫 Dong-hyuk Hwang', ' 孔侑 Yoo Gong / 郑有美 Yu-mi Jeong ...', '2011', '韩国', '剧情', '9.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1363250216.jpg');
INSERT INTO `movies_moives` VALUES ('21', '无间道', ' 刘伟强 / 麦兆辉', ' 刘德华 / 梁朝伟 / 黄秋生', '2002', '香港', '剧情 犯罪 悬疑', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2233971046.jpg');
INSERT INTO `movies_moives` VALUES ('22', '疯狂动物城', ' 拜伦·霍华德 Byron Howard / 瑞奇·摩尔 Rich Moore', ' 金妮弗·...', '2016', '美国', '喜剧 动画 冒险', '9.2', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2315672647.jpg');
INSERT INTO `movies_moives` VALUES ('23', '当幸福来敲门', ' 加布里尔·穆奇诺 Gabriele Muccino', ' 威尔·史密斯 Will Smith ...', '2006', '美国', '剧情 传记 家庭', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2220721286.jpg');
INSERT INTO `movies_moives` VALUES ('24', '怦然心动', ' 罗伯·莱纳 Rob Reiner', ' 玛德琳·卡罗尔 Madeline Carroll / 卡...', '2010', '美国', '剧情 喜剧 爱情', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p663036666.jpg');
INSERT INTO `movies_moives` VALUES ('25', '触不可及', ' 奥利维·那卡什 Olivier Nakache / 艾力克·托兰达 Eric Toledano', '.', '2011', '法国', '剧情 喜剧', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1454261925.jpg');
INSERT INTO `movies_moives` VALUES ('26', '蝙蝠侠：黑暗骑士', ' 克里斯托弗·诺兰 Christopher Nolan', ' 克里斯蒂安·贝尔 Christ...', '2008', '美国 英国', '剧情 动作 科幻 犯罪 惊悚', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p462657443.jpg');
INSERT INTO `movies_moives` VALUES ('27', '乱世佳人', ' 维克多·弗莱明 Victor Fleming / 乔治·库克 George Cukor', ' 费...', '1939', '美国', '剧情 历史 爱情 战争', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1963126880.jpg');
INSERT INTO `movies_moives` VALUES ('28', '活着', ' 张艺谋 Yimou Zhang', ' 葛优 You Ge / 巩俐 Li Gong / 姜武 Wu Jiang', '1994', '中国大陆 香港', '剧情 历史 家庭', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2513253791.jpg');
INSERT INTO `movies_moives` VALUES ('29', '少年派的奇幻漂流', ' 李安 Ang Lee', ' 苏拉·沙玛 Suraj Sharma / 伊尔凡·可汗 Irrfan...', '2012', '美国 台湾 英国 加拿大', '剧情 奇幻 冒险', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1784592701.jpg');
INSERT INTO `movies_moives` VALUES ('30', '控方证人', ' 比利·怀尔德 Billy Wilder', ' 泰隆·鲍华 Tyrone Power / 玛琳·...', '1957', '美国', '剧情 犯罪 悬疑', '9.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2271261024.jpg');
INSERT INTO `movies_moives` VALUES ('31', '天堂电影院', ' 朱塞佩·托纳多雷 Giuseppe Tornatore', ' 安东内拉·阿蒂利 Anton...', '1988', '意大利 法国', '剧情 爱情', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910901025.jpg');
INSERT INTO `movies_moives` VALUES ('32', '鬼子来了', ' 姜文 Wen Jiang', ' 姜文 Wen Jiang / 香川照之 Teruyuki Kagawa /...', '2000', '中国大陆', '剧情 历史 战争', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p776573640.jpg');
INSERT INTO `movies_moives` VALUES ('33', '指环王3：王者无敌', ' 彼得·杰克逊 Peter Jackson', ' 维果·莫腾森 Viggo Mortensen / ...', '2003', '美国 新西兰', '剧情 动作 奇幻 冒险', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910825503.jpg');
INSERT INTO `movies_moives` VALUES ('34', '十二怒汉', ' Sidney Lumet', ' 亨利·方达 Henry Fonda / 马丁·鲍尔萨姆 Marti...', '1957', '美国', '剧情', '9.4', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2173577632.jpg');
INSERT INTO `movies_moives` VALUES ('35', '天空之城', ' 宫崎骏 Hayao Miyazaki', ' 田中真弓 Mayumi Tanaka / 横泽启子 Ke...', '1986', '日本', '动画 奇幻 冒险', '9.1', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1446261379.jpg');
INSERT INTO `movies_moives` VALUES ('36', '摔跤吧！爸爸', ' 涅提·蒂瓦里 Nitesh Tiwari', ' 阿米尔·汗 Aamir Khan / 法缇玛...', '2016', '印度', '剧情 传记 运动 家庭', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2457983084.jpg');
INSERT INTO `movies_moives` VALUES ('37', '飞屋环游记', ' 彼特·道格特 Pete Docter / 鲍勃·彼德森 Bob Peterson', ' 爱德...', '2009', '美国', '剧情 喜剧 动画 冒险', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p485887754.jpg');
INSERT INTO `movies_moives` VALUES ('38', '大话西游之月光宝盒', ' 刘镇伟 Jeffrey Lau', ' 周星驰 Stephen Chow / 吴孟达 Man Tat Ng...', '1995', '香港 中国大陆', '喜剧 爱情 奇幻 古装', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1280323646.jpg');
INSERT INTO `movies_moives` VALUES ('39', '搏击俱乐部', ' 大卫·芬奇 David Fincher', ' 爱德华·诺顿 Edward Norton / 布拉...', '1999', '美国 德国', '剧情 动作 悬疑 惊悚', '9.0', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1910926158.jpg');
INSERT INTO `movies_moives` VALUES ('40', '罗马假日', ' 威廉·惠勒 William Wyler', ' 奥黛丽·赫本 Audrey Hepburn / 格...', '1953', '美国', '喜剧 剧情 爱情', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2189265085.jpg');
INSERT INTO `movies_moives` VALUES ('41', '哈尔的移动城堡', ' 宫崎骏 Hayao Miyazaki', ' 倍赏千惠子 Chieko Baishô / 木村拓...', '2004', '日本', '动画 奇幻 冒险', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2174346180.jpg');
INSERT INTO `movies_moives` VALUES ('42', '闻香识女人', ' 马丁·布莱斯 Martin Brest', ' 阿尔·帕西诺 Al Pacino / 克里斯...', '1992', '美国', '剧情', '9.0', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2550757929.jpg');
INSERT INTO `movies_moives` VALUES ('43', '辩护人', ' 杨宇硕 Woo-seok Yang', ' 宋康昊 Kang-ho Song / 吴达洙 Dal-su O...', '2013', '韩国', '剧情', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2158166535.jpg');
INSERT INTO `movies_moives` VALUES ('44', '末代皇帝', ' 贝纳尔多·贝托鲁奇 Bernardo Bertolucci', ' 尊龙 John Lone / 陈...', '1987', '英国 意大利 中国大陆 法国 美国', '剧情 传记 历史', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p452089833.jpg');
INSERT INTO `movies_moives` VALUES ('45', '飞越疯人院', ' 米洛斯·福尔曼 Miloš Forman', ' 杰克·尼科尔森 Jack Nichols...', '1975', '美国', '剧情', '9.1', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p792238287.jpg');
INSERT INTO `movies_moives` VALUES ('46', '死亡诗社', ' 彼得·威尔 Peter Weir', ' 罗宾·威廉姆斯 Robin Williams / 罗伯...', '1989', '美国', '剧情', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910824340.jpg');
INSERT INTO `movies_moives` VALUES ('47', '素媛', ' 李濬益 Jun-ik Lee', ' 薛景求 Kyung-gu Sol / 严志媛 Ji-won Uhm ...', '2013', '韩国', '剧情', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2118532944.jpg');
INSERT INTO `movies_moives` VALUES ('48', '指环王2：双塔奇兵', ' 彼得·杰克逊 Peter Jackson', ' 伊利亚·伍德 Elijah Wood / 西恩...', '2002', '美国 新西兰', '剧情 动作 奇幻 冒险', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p909265336.jpg');
INSERT INTO `movies_moives` VALUES ('49', '寻梦环游记', ' 李·昂克里奇 Lee Unkrich / 阿德里安·莫利纳 Adrian Molina', ' ...', '2017', '美国', '喜剧 动画 奇幻 音乐', '9.0', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2503997609.jpg');
INSERT INTO `movies_moives` VALUES ('50', 'V字仇杀队', ' 詹姆斯·麦克特格 James McTeigue', ' 娜塔莉·波特曼 Natalie Por...', '2005', '美国 英国 德国', '剧情 动作 科幻 惊悚', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1465235231.jpg');
INSERT INTO `movies_moives` VALUES ('51', '教父2', ' 弗朗西斯·福特·科波拉 Francis Ford Coppola', ' 阿尔·帕西诺 A...', '1974', '美国', '剧情 犯罪', '9.2', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2194138787.jpg');
INSERT INTO `movies_moives` VALUES ('52', '指环王1：魔戒再现', ' 彼得·杰克逊 Peter Jackson', ' 伊利亚·伍德 Elijah Wood / 西恩...', '2001', '新西兰 美国', '剧情 动作 奇幻 冒险', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1354436051.jpg');
INSERT INTO `movies_moives` VALUES ('53', '海豚湾', ' 路易·西霍尤斯 Louie Psihoyos', ' Richard O\'Barry / 路易·西霍...', '2009', '美国', '纪录片', '9.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p455222172.jpg');
INSERT INTO `movies_moives` VALUES ('54', '饮食男女', ' 李安 Ang Lee', ' 郎雄 Sihung Lung / 杨贵媚 Kuei-Mei Yang / 吴...', '1994', '台湾 美国', '剧情 家庭', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910899751.jpg');
INSERT INTO `movies_moives` VALUES ('55', '狮子王', ' Roger Allers / 罗伯·明可夫 Rob Minkoff', ' 乔纳森·泰勒·托马...', '1994', '美国', '剧情 动画 冒险 歌舞 家庭', '9.0', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p726659067.jpg');
INSERT INTO `movies_moives` VALUES ('56', '美丽心灵', ' 朗·霍华德 Ron Howard', ' 罗素·克劳 Russell Crowe / 艾德·哈...', '2001', '美国', '传记 剧情', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1665997400.jpg');
INSERT INTO `movies_moives` VALUES ('57', '情书', ' 岩井俊二 Shunji Iwai', ' 中山美穗 Miho Nakayama / 丰川悦司 Ets...', '1995', '日本', '剧情 爱情', '8.9', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p449897379.jpg');
INSERT INTO `movies_moives` VALUES ('58', '钢琴家', ' 罗曼·波兰斯基 Roman Polanski', ' 艾德里安·布洛迪 Adrien Brod...', '2002', '法国 德国 英国 波兰', '剧情 传记 历史 战争 音乐', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p792484461.jpg');
INSERT INTO `movies_moives` VALUES ('59', '本杰明·巴顿奇事', ' 大卫·芬奇 David Fincher', ' 凯特·布兰切特 Cate Blanchett / ...', '2008', '美国', '剧情 爱情 奇幻', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2192535722.jpg');
INSERT INTO `movies_moives` VALUES ('60', '美国往事', ' 赛尔乔·莱翁内 Sergio Leone', ' 罗伯特·德尼罗 Robert De Niro ...', '1984', '意大利 美国', '犯罪 剧情', '9.1', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p477229647.jpg');
INSERT INTO `movies_moives` VALUES ('61', '看不见的客人', ' 奥里奥尔·保罗 Oriol Paulo', ' 马里奥·卡萨斯 Mario Casas / 阿...', '2016', '西班牙', '剧情 犯罪 悬疑 惊悚', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2498971355.jpg');
INSERT INTO `movies_moives` VALUES ('62', '黑客帝国', ' 安迪·沃卓斯基 Andy Wachowski / 拉娜·沃卓斯基 Lana Wachowski', '.', '1999', '美国 澳大利亚', '动作 科幻', '8.9', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p451926968.jpg');
INSERT INTO `movies_moives` VALUES ('63', '小鞋子', ' 马基德·马基迪 Majid Majidi', ' 法拉赫阿米尔·哈什米安 Amir Fa...', '1997', '伊朗', '剧情 儿童 家庭', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2165511465.jpg');
INSERT INTO `movies_moives` VALUES ('64', '西西里的美丽传说', ' 朱塞佩·托纳多雷 Giuseppe Tornatore', ' 莫妮卡·贝鲁奇 Monica ...', '2000', '意大利 美国', '剧情 战争 情色', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p792400696.jpg');
INSERT INTO `movies_moives` VALUES ('65', '大闹天宫', ' 万籁鸣 Laiming Wan / 唐澄 Cheng  Tang', ' 邱岳峰 Yuefeng Qiu /...', '1961(中国大陆) / 1964(中国大陆) / 1978(中国大陆) / 2004(中国大陆)', '中国大陆', '动画 奇幻', '9.3', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2184505167.jpg');
INSERT INTO `movies_moives` VALUES ('66', '哈利·波特与魔法石', ' Chris Columbus', ' Daniel Radcliffe / Emma Watson / Rupert Grint', '2001', '美国 英国', '奇幻 冒险', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p804947166.jpg');
INSERT INTO `movies_moives` VALUES ('67', '让子弹飞', ' 姜文 Wen Jiang', ' 姜文 Wen Jiang / 葛优 You Ge / 周润发 Yun-F...', '2010', '中国大陆 香港', '剧情 喜剧 动作 西部', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1512562287.jpg');
INSERT INTO `movies_moives` VALUES ('68', '拯救大兵瑞恩', ' 史蒂文·斯皮尔伯格 Steven Spielberg', ' 汤姆·汉克斯 Tom Hanks...', '1998', '美国', '剧情 历史 战争', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1014542496.jpg');
INSERT INTO `movies_moives` VALUES ('69', '致命魔术', ' 克里斯托弗·诺兰 Christopher Nolan', ' 休·杰克曼 Hugh Jackman...', '2006', '美国 英国', '剧情 悬疑 惊悚', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p480383375.jpg');
INSERT INTO `movies_moives` VALUES ('70', '七宗罪', ' 大卫·芬奇 David Fincher', ' 摩根·弗里曼 Morgan Freeman / 布...', '1995', '美国', '剧情 犯罪 悬疑 惊悚', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p457631605.jpg');
INSERT INTO `movies_moives` VALUES ('71', '被嫌弃的松子的一生', ' 中岛哲也 Tetsuya Nakashima', ' 中谷美纪 Miki Nakatani / 瑛太 E...', '2006', '日本', '剧情 歌舞', '8.9', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p453723669.jpg');
INSERT INTO `movies_moives` VALUES ('72', '音乐之声', ' 罗伯特·怀斯 Robert Wise', ' 朱莉·安德鲁斯 Julie Andrews / 克...', '1965', '美国', '剧情 传记 爱情 歌舞', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2189265302.jpg');
INSERT INTO `movies_moives` VALUES ('73', '低俗小说', ' 昆汀·塔伦蒂诺 Quentin Tarantino', ' 约翰·特拉沃尔塔 John Tra...', '1994', '美国', '剧情 喜剧 犯罪', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910902213.jpg');
INSERT INTO `movies_moives` VALUES ('74', '天使爱美丽', ' 让-皮埃尔·热内 Jean-Pierre Jeunet', ' 奥黛丽·塔图 Audrey Tau...', '2001', '法国 德国', '喜剧 爱情', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p803896904.jpg');
INSERT INTO `movies_moives` VALUES ('75', '沉默的羔羊', ' 乔纳森·戴米 Jonathan Demme', ' 朱迪·福斯特 Jodie Foster / 安...', '1991', '美国', '剧情 犯罪 惊悚', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1593414327.jpg');
INSERT INTO `movies_moives` VALUES ('76', '勇敢的心', ' 梅尔·吉布森 Mel Gibson', ' 梅尔·吉布森 Mel Gibson / 苏菲·玛...', '1995', '美国', '动作 传记 剧情 历史 战争', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1374546770.jpg');
INSERT INTO `movies_moives` VALUES ('77', '猫鼠游戏', ' 史蒂文·斯皮尔伯格 Steven Spielberg', ' 莱昂纳多·迪卡普里奥 L...', '2002', '美国 加拿大', '传记 犯罪 剧情', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p453924541.jpg');
INSERT INTO `movies_moives` VALUES ('78', '蝴蝶效应', ' 埃里克·布雷斯 Eric Bress / J·麦基·格鲁伯 J. Mackye Gruber', '.', '2004', '美国 加拿大', '剧情 悬疑 科幻 惊悚', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2209066019.jpg');
INSERT INTO `movies_moives` VALUES ('79', '剪刀手爱德华', ' 蒂姆·波顿 Tim Burton', ' 约翰尼·德普 Johnny Depp / 薇诺娜·...', '1990', '美国', '剧情 奇幻 爱情', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p480956937.jpg');
INSERT INTO `movies_moives` VALUES ('80', '春光乍泄', ' 王家卫 Kar Wai Wong', ' 张国荣 Leslie Cheung / 梁朝伟 Tony Leu...', '1997', '香港 日本 韩国', '剧情 爱情 同性', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p465939041.jpg');
INSERT INTO `movies_moives` VALUES ('81', '心灵捕手', ' 格斯·范·桑特 Gus Van Sant', ' 马特·达蒙 Matt Damon / 罗宾·...', '1997', '美国', '剧情', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p480965695.jpg');
INSERT INTO `movies_moives` VALUES ('82', '禁闭岛', ' Martin Scorsese', ' 莱昂纳多·迪卡普里奥 Leonardo DiCaprio / ...', '2010', '美国', '剧情 悬疑 惊悚', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1832875827.jpg');
INSERT INTO `movies_moives` VALUES ('83', '布达佩斯大饭店', ' 韦斯·安德森 Wes Anderson', ' 拉尔夫·费因斯 Ralph Fiennes / ...', '2014', '美国 德国 英国', '剧情 喜剧 冒险', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2178872593.jpg');
INSERT INTO `movies_moives` VALUES ('84', '穿条纹睡衣的男孩', ' 马克·赫尔曼 Mark Herman', ' 阿萨·巴特菲尔德 Asa Butterfield ...', '2008', '英国 美国', '剧情 战争', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1473670352.jpg');
INSERT INTO `movies_moives` VALUES ('85', '入殓师', ' 泷田洋二郎 Yôjirô Takita', ' 本木雅弘 Masahiro Motoki / ...', '2008', '日本', '剧情', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p594972928.jpg');
INSERT INTO `movies_moives` VALUES ('86', '阿凡达', ' 詹姆斯·卡梅隆 James Cameron', ' 萨姆·沃辛顿 Sam Worthington ...', '2009', '美国 英国', '动作 战争 科幻 冒险', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2180085848.jpg');
INSERT INTO `movies_moives` VALUES ('87', '幽灵公主', ' 宫崎骏 Hayao Miyazaki', ' 松田洋治 Yôji Matsuda / 石田百合...', '1997', '日本', '动画 奇幻 冒险', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1613191025.jpg');
INSERT INTO `movies_moives` VALUES ('88', '阳光灿烂的日子', ' 姜文 Wen Jiang', ' 夏雨 Yu Xia / 宁静 Jing Ning / 陶虹 Hong Tao', '1994', '中国大陆 香港', '剧情 爱情', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p967457079.jpg');
INSERT INTO `movies_moives` VALUES ('89', '致命ID', ' James Mangold', ' John Cusack / Ray Liotta / Amanda Peet', '2003', '美国', '剧情 悬疑 惊悚', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p453720880.jpg');
INSERT INTO `movies_moives` VALUES ('90', '第六感', ' M·奈特·沙马兰 M. Night Shyamalan', ' 布鲁斯·威利斯 Bruce Wi...', '1999', '美国', '剧情 悬疑 惊悚', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2220184425.jpg');
INSERT INTO `movies_moives` VALUES ('91', '加勒比海盗', ' 戈尔·维宾斯基 Gore Verbinski', ' 约翰尼·德普 Johnny Depp / ...', '2003', '美国', '动作 冒险 奇幻', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1596085504.jpg');
INSERT INTO `movies_moives` VALUES ('92', '狩猎', ' 托马斯·温特伯格 Thomas Vinterberg', ' 麦斯·米科尔森 Mads Mik...', '2012', '丹麦 瑞典', '剧情', '9.1', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1546987967.jpg');
INSERT INTO `movies_moives` VALUES ('93', '玛丽和马克思', ' 亚当·艾略特 Adam Elliot', ' 托妮·科莱特 Toni Collette / 菲利...', '2009', '澳大利亚', '剧情 喜剧 动画', '8.9', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1820615077.jpg');
INSERT INTO `movies_moives` VALUES ('94', '断背山', ' 李安 Ang Lee', ' 希斯·莱杰 Heath Ledger / 杰克·吉伦哈尔 Jake...', '2005', '美国 加拿大', '剧情 爱情 同性 家庭', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p513535588.jpg');
INSERT INTO `movies_moives` VALUES ('95', '重庆森林', ' 王家卫 Kar Wai Wong', ' 林青霞 Brigitte Lin / 金城武 Takeshi K...', '1994', '香港', '剧情 爱情', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p792381411.jpg');
INSERT INTO `movies_moives` VALUES ('96', '摩登时代', ' 查理·卓别林 Charles Chaplin', ' 查理·卓别林 Charles Chaplin ...', '1936', '美国', '剧情 喜剧 爱情', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2173707976.jpg');
INSERT INTO `movies_moives` VALUES ('97', '喜剧之王', ' 周星驰 Stephen Chow / 李力持 Lik-Chi Lee', ' 周星驰 Stephen Ch...', '1999', '香港', '喜剧 剧情 爱情', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1043597424.jpg');
INSERT INTO `movies_moives` VALUES ('98', '告白', ' 中岛哲也 Tetsuya Nakashima', ' 松隆子 Takako Matsu / 冈田将生 ...', '2010', '日本', '剧情 惊悚', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p689520756.jpg');
INSERT INTO `movies_moives` VALUES ('99', '大鱼', ' 蒂姆·波顿 Tim Burton', ' 伊万·麦克格雷格 Ewan McGregor / 阿...', '2003', '美国', '剧情 家庭 奇幻 冒险', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p692813374.jpg');
INSERT INTO `movies_moives` VALUES ('100', '消失的爱人', ' 大卫·芬奇 David Fincher', ' 本·阿弗莱克 Ben Affleck / 罗莎蒙...', '2014', '美国', '剧情 犯罪 悬疑 惊悚', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2221768894.jpg');
INSERT INTO `movies_moives` VALUES ('101', '一一', ' 杨德昌 Edward Yang', ' 吴念真 / 李凯莉 Kelly Lee / 金燕玲 Elai...', '2000', '台湾 日本', '剧情 爱情 家庭', '9.0', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2119675128.jpg');
INSERT INTO `movies_moives` VALUES ('102', '射雕英雄传之东成西就', ' 刘镇伟 Jeffrey Lau', ' 梁朝伟 Tony Leung Chiu Wai / 林青霞 Bri...', '1993', '香港', '喜剧 奇幻 武侠 古装', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2535922598.jpg');
INSERT INTO `movies_moives` VALUES ('103', '阳光姐妹淘', ' 姜炯哲 Hyeong-Cheol Kang', ' 沈恩京 Eun-kyung Shim / 闵孝琳 Hy...', '2011', '韩国', '剧情 喜剧', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1374786017.jpg');
INSERT INTO `movies_moives` VALUES ('104', '甜蜜蜜', ' 陈可辛 Peter Chan', ' 黎明 Leon Lai / 张曼玉 Maggie Cheung / ...', '1996', '香港', '剧情 爱情', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1962839732.jpg');
INSERT INTO `movies_moives` VALUES ('105', '爱在黎明破晓前', ' 理查德·林克莱特 Richard Linklater', ' 伊桑·霍克 Ethan Hawke ...', '1995', '美国 奥地利 瑞士', '剧情 爱情', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p452582315.jpg');
INSERT INTO `movies_moives` VALUES ('106', '小森林 夏秋篇', ' 森淳一 Junichi Mori', ' 桥本爱 Ai Hashimoto / 三浦贵大 Takahir...', '2014', '日本', '剧情', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2221319641.jpg');
INSERT INTO `movies_moives` VALUES ('107', '驯龙高手', ' 迪恩·德布洛斯 Dean DeBlois / 克里斯·桑德斯 Chris Sanders', '...', '2010', '美国', '动画 奇幻 冒险', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2210954024.jpg');
INSERT INTO `movies_moives` VALUES ('108', '侧耳倾听', ' 近藤喜文 Yoshifumi Kondo', ' 本名阳子 Youko Honna / 小林桂树 K...', '1995', '日本', '剧情 爱情 动画', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p456692072.jpg');
INSERT INTO `movies_moives` VALUES ('109', '红辣椒', ' 今敏 Satoshi Kon', ' 林原惠美 Megumi Hayashibara / 江守彻 Toru...', '2006', '日本', '动画 悬疑 科幻 惊悚', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p672363704.jpg');
INSERT INTO `movies_moives` VALUES ('110', '请以你的名字呼唤我', ' 卢卡·瓜达尼诺 Luca Guadagnino', ' 艾米·汉莫 Armie Hammer / ...', '2017', '意大利 法国 巴西 美国 荷兰 德国', '剧情 爱情 同性', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2505525050.jpg');
INSERT INTO `movies_moives` VALUES ('111', '倩女幽魂', ' 程小东 Siu-Tung Ching', ' 张国荣 Leslie Cheung / 王祖贤 Joey W...', '1987', '香港', '爱情 奇幻 武侠 古装', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2414157745.jpg');
INSERT INTO `movies_moives` VALUES ('112', '恐怖直播', ' 金秉祐 Byeong-woo Kim', ' 河正宇 Jung-woo Ha / 李璟荣 Kyeong-y...', '2013', '韩国', '剧情 犯罪 悬疑', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2016930906.jpg');
INSERT INTO `movies_moives` VALUES ('113', '风之谷', ' 宫崎骏 Hayao Miyazaki', ' 岛本须美 Sumi Shimamoto / 松田洋治 Y...', '1984', '日本', '动画 奇幻 冒险', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1917567652.jpg');
INSERT INTO `movies_moives` VALUES ('114', '上帝之城', ' Kátia Lund / Fernando Meirelles', ' Alexandre Rodrigues / Lea...', '2002', '巴西 法国', '犯罪 剧情', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p455677490.jpg');
INSERT INTO `movies_moives` VALUES ('115', '超脱', ' 托尼·凯耶 Tony Kaye', ' 艾德里安·布洛迪 Adrien Brody / 马西...', '2011', '美国', '剧情', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1305562621.jpg');
INSERT INTO `movies_moives` VALUES ('116', '爱在日落黄昏时', ' 理查德·林克莱特 Richard Linklater', ' 伊桑·霍克 Ethan Hawke ...', '2004', '美国', '剧情 爱情', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910924055.jpg');
INSERT INTO `movies_moives` VALUES ('117', '菊次郎的夏天', ' 北野武 Takeshi Kitano', ' 北野武 Takeshi Kitano / 关口雄介 Yus...', '1999', '日本', '剧情 喜剧', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p751835224.jpg');
INSERT INTO `movies_moives` VALUES ('118', '幸福终点站', ' 史蒂文·斯皮尔伯格 Steven Spielberg', ' 汤姆·汉克斯 Tom Hanks...', '2004', '美国', '喜剧 剧情 爱情', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p792263736.jpg');
INSERT INTO `movies_moives` VALUES ('119', '哈利·波特与死亡圣器(下)', ' 大卫·叶茨 David Yates', ' 丹尼尔·雷德克里夫 Daniel Radcliffe...', '2011', '美国 英国', '剧情 悬疑 奇幻 冒险', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p917846733.jpg');
INSERT INTO `movies_moives` VALUES ('120', '小森林 冬春篇', ' 森淳一 Junichi Mori', ' 桥本爱 Ai Hashimoto / 三浦贵大 Takahir...', '2015', '日本', '剧情', '9.0', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2215147728.jpg');
INSERT INTO `movies_moives` VALUES ('121', '杀人回忆', ' 奉俊昊 Joon-ho Bong', ' 宋康昊 Kang-ho Song / 金相庆 Sang-kyun...', '2003', '韩国', '犯罪 剧情 悬疑 惊悚', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p480225538.jpg');
INSERT INTO `movies_moives` VALUES ('122', '7号房的礼物', ' 李焕庆 Hwan-kyeong Lee', ' 柳承龙 Seung-yong Ryoo / 朴信惠 Shi...', '2013', '韩国', '剧情 喜剧 家庭', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1816276065.jpg');
INSERT INTO `movies_moives` VALUES ('123', '神偷奶爸', ' 皮艾尔·柯芬 Pierre Coffin / 克里斯·雷纳德 Chris Renaud', ' ...', '2010', '美国 法国', '喜剧 动画 冒险', '8.5', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p792776858.jpg');
INSERT INTO `movies_moives` VALUES ('124', '借东西的小人阿莉埃蒂', ' 米林宏昌 Hiromasa Yonebayashi', ' 志田未来 Mirai Shida / 神木...', '2010', '日本', '动画 奇幻 冒险', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p617533616.jpg');
INSERT INTO `movies_moives` VALUES ('125', '萤火之森', ' 大森贵弘 Takahiro Omori', ' 佐仓绫音 Ayane Sakura / 内山昂辉 K...', '2011', '日本', '剧情 爱情 动画 奇幻', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1272904657.jpg');
INSERT INTO `movies_moives` VALUES ('126', '唐伯虎点秋香', ' 李力持 Lik-Chi Lee', ' 周星驰 Stephen Chow / 巩俐 Li Gong / 陈...', '1993', '香港', '喜剧 爱情 古装', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1946455272.jpg');
INSERT INTO `movies_moives` VALUES ('127', '蝙蝠侠：黑暗骑士崛起', ' 克里斯托弗·诺兰 Christopher Nolan', ' 克里斯蒂安·贝尔 Christ...', '2012', '美国 英国', '剧情 动作 科幻 犯罪 惊悚', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1706428744.jpg');
INSERT INTO `movies_moives` VALUES ('128', '超能陆战队', ' 唐·霍尔 Don Hall / 克里斯·威廉姆斯 Chris Williams', ' 斯科特...', '2014', '美国', '喜剧 动作 科幻 动画 冒险', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2224568669.jpg');
INSERT INTO `movies_moives` VALUES ('129', '怪兽电力公司', ' 彼特·道格特 Pete Docter / 大卫·斯沃曼 David Silverman', ' 约...', '2001', '美国', '儿童 喜剧 动画 奇幻 冒险', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2513247938.jpg');
INSERT INTO `movies_moives` VALUES ('130', '岁月神偷', ' 罗启锐 Alex Law', ' 吴君如 Sandra Ng / 任达华 Simon Yam / 钟绍...', '2010', '香港 中国大陆', '剧情 家庭', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p456666151.jpg');
INSERT INTO `movies_moives` VALUES ('131', '电锯惊魂', ' 詹姆斯·温 James Wan', ' 雷·沃纳尔 Leigh Whannell / 加利·艾...', '2004', '美国', '悬疑 惊悚 恐怖', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2163771304.jpg');
INSERT INTO `movies_moives` VALUES ('132', '七武士', ' 黑泽明 Akira Kurosawa', ' 三船敏郎 Toshirô Mifune / 志村乔 ...', '1954', '日本', '动作 冒险 剧情', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p647099823.jpg');
INSERT INTO `movies_moives` VALUES ('133', '谍影重重3', ' 保罗·格林格拉斯 Paul Greengrass', ' 马特·达蒙 Matt Damon / ...', '2007', '美国 德国', '动作 悬疑 惊悚', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p792223507.jpg');
INSERT INTO `movies_moives` VALUES ('134', '真爱至上', ' 理查德·柯蒂斯 Richard Curtis', ' 休·格兰特 Hugh Grant / 柯林...', '2003', '英国 美国 法国', '喜剧 剧情 爱情', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p475600770.jpg');
INSERT INTO `movies_moives` VALUES ('135', '疯狂原始人', ' 科克·德·米科 Kirk De Micco / 克里斯·桑德斯 Chris Sanders', '..', '2013', '美国', '喜剧 动画 冒险', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1867084027.jpg');
INSERT INTO `movies_moives` VALUES ('136', '无人知晓', ' 是枝裕和 Hirokazu Koreeda', ' 柳乐优弥 Yûya Yagira / 北浦爱...', '2004', '日本', '剧情', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p661160053.jpg');
INSERT INTO `movies_moives` VALUES ('137', '喜宴', ' 李安 Ang Lee', ' 赵文瑄 Winston Chao / 郎雄 Sihung Lung / 归亚...', '1993', '台湾 美国', '剧情 喜剧 爱情 同性 家庭', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2173713676.jpg');
INSERT INTO `movies_moives` VALUES ('138', '萤火虫之墓', ' 高畑勋 Isao Takahata', ' 辰己努 / 白石绫乃 / 志乃原良子', '1988', '日本', '动画 剧情 战争', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2237136718.jpg');
INSERT INTO `movies_moives` VALUES ('139', '东邪西毒', ' 王家卫 Kar Wai Wong', ' 张国荣 Leslie Cheung / 林青霞 Brigitte...', '1994', '香港 台湾', '剧情 动作 爱情 武侠 古装', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1982176012.jpg');
INSERT INTO `movies_moives` VALUES ('140', '英雄本色', ' 吴宇森 John Woo', ' 周润发 Yun-Fat Chow / 狄龙 Lung Ti / 张国...', '1986', '香港', '动作 犯罪', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2504997087.jpg');
INSERT INTO `movies_moives` VALUES ('141', '贫民窟的百万富翁', ' 丹尼·鲍尔 Danny Boyle / 洛芙琳·坦丹 Loveleen Tandan', ' 戴夫...', '2008', '英国 美国', '剧情 爱情', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2434249040.jpg');
INSERT INTO `movies_moives` VALUES ('142', '黑天鹅', ' 达伦·阿罗诺夫斯基 Darren Aronofsky', ' 娜塔莉·波特曼 Natalie...', '2010', '美国', '剧情 惊悚', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p719282906.jpg');
INSERT INTO `movies_moives` VALUES ('143', '记忆碎片', ' 克里斯托弗·诺兰 Christopher Nolan', ' 盖·皮尔斯 Guy Pearce /...', '2000', '美国', '犯罪 剧情 悬疑 惊悚', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p641688453.jpg');
INSERT INTO `movies_moives` VALUES ('144', '血战钢锯岭', ' 梅尔·吉布森 Mel Gibson', ' 安德鲁·加菲尔德 Andrew Garfield /...', '2016', '美国 澳大利亚', '剧情 传记 历史 战争', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2398141939.jpg');
INSERT INTO `movies_moives` VALUES ('145', '心迷宫', ' 忻钰坤 Yukun Xin', ' 霍卫民 Weimin Huo / 王笑天 Xiaotian Wang ...', '2014', '中国大陆', '剧情 犯罪 悬疑', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2275298525.jpg');
INSERT INTO `movies_moives` VALUES ('146', '傲慢与偏见', ' 乔·怀特 Joe Wright', ' 凯拉·奈特莉 Keira Knightley / 马修·...', '2005', '法国 英国 美国', '剧情 爱情', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p452005185.jpg');
INSERT INTO `movies_moives` VALUES ('147', '时空恋旅人', ' 理查德·柯蒂斯 Richard Curtis', ' 多姆纳尔·格里森 Domhnall Gl...', '2013', '英国', '喜剧 爱情 奇幻', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2070153774.jpg');
INSERT INTO `movies_moives` VALUES ('148', '荒蛮故事', ' 达米安·斯兹弗隆 Damián Szifron', ' 达里奥·葛兰帝内提 Darío...', '2014', '阿根廷 西班牙', '剧情 喜剧 犯罪', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2192834364.jpg');
INSERT INTO `movies_moives` VALUES ('149', '雨人', ' 巴瑞·莱文森 Barry Levinson', ' 达斯汀·霍夫曼 Dustin Hoffman ...', '1988', '美国', '剧情', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p942376281.jpg');
INSERT INTO `movies_moives` VALUES ('150', '纵横四海', ' 吴宇森 John Woo', ' 周润发 Yun-Fat Chow / 张国荣 Leslie Cheung...', '1991', '香港', '剧情 喜剧 动作 犯罪', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2272146906.jpg');
INSERT INTO `movies_moives` VALUES ('151', '教父3', ' 弗朗西斯·福特·科波拉 Francis Ford Coppola', ' 阿尔·帕西诺 A...', '1990', '美国', '剧情 犯罪', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2169664351.jpg');
INSERT INTO `movies_moives` VALUES ('152', '达拉斯买家俱乐部', ' 让-马克·瓦雷 Jean-Marc Vallée', ' 马修·麦康纳 Matthew McCon...', '2013', '美国', '剧情 传记 同性', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2166160837.jpg');
INSERT INTO `movies_moives` VALUES ('153', '玩具总动员3', ' 李·昂克里奇 Lee Unkrich', ' 汤姆·汉克斯 Tom Hanks / 蒂姆·艾...', '2010', '美国', '喜剧 动画 奇幻 冒险', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1283675359.jpg');
INSERT INTO `movies_moives` VALUES ('154', '完美的世界', ' 克林特·伊斯特伍德 Clint Eastwood', ' 凯文·科斯特纳 Kevin Cos...', '1993', '美国', '剧情 犯罪', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p792403691.jpg');
INSERT INTO `movies_moives` VALUES ('155', '卢旺达饭店', ' 特瑞·乔治 Terry George', ' 唐·钱德尔 Don Cheadle / 苏菲·奥...', '2004', '英国 南非 意大利 美国', '剧情 历史 战争', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2159368352.jpg');
INSERT INTO `movies_moives` VALUES ('156', '花样年华', ' 王家卫 Kar Wai Wong', ' 梁朝伟 Tony Leung Chiu Wai / 张曼玉 Ma...', '2000', '香港', '剧情 爱情', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910828286.jpg');
INSERT INTO `movies_moives` VALUES ('157', '海边的曼彻斯特', ' 肯尼斯·罗纳根 Kenneth Lonergan', ' 卡西·阿弗莱克 Casey Affle...', '2016', '美国', '剧情 家庭', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2496940327.jpg');
INSERT INTO `movies_moives` VALUES ('158', '海洋', ' 雅克·贝汉 Jacques Perrin / 雅克·克鲁奥德 Jacques Cluzaud', '...', '2009', '法国 瑞士 西班牙 美国 阿联酋', '纪录片', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p497010372.jpg');
INSERT INTO `movies_moives` VALUES ('159', '恋恋笔记本', ' 尼克·卡索维茨 Nick Cassavetes', ' 瑞恩·高斯林 Ryan Gosling /...', '2004', '美国', '剧情 爱情', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p483604864.jpg');
INSERT INTO `movies_moives` VALUES ('160', '虎口脱险', ' 杰拉尔·乌里 Gérard Oury', ' 路易·德·菲耐斯 Louis de Funès...', '1966', '法国 英国', '喜剧 战争', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2399597512.jpg');
INSERT INTO `movies_moives` VALUES ('161', '你看起来好像很好吃', ' 藤森雅也 Masaya Fujimori', ' 山口胜平 Kappei Yamaguchi / 爱河...', '2010', '日本', '剧情 动画 儿童', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p709670262.jpg');
INSERT INTO `movies_moives` VALUES ('162', '被解救的姜戈', ' 昆汀·塔伦蒂诺 Quentin Tarantino', ' 杰米·福克斯 Jamie Foxx /...', '2012', '美国', '剧情 动作 西部 冒险', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1959232369.jpg');
INSERT INTO `movies_moives` VALUES ('163', '二十二', ' 郭柯 Ke Guo', ' ', '2015', '中国大陆', '纪录片', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2457609817.jpg');
INSERT INTO `movies_moives` VALUES ('164', '冰川时代', ' 卡洛斯·沙尔丹哈 Carlos Saldanha / 克里斯·韦奇 Chris Wedge', '..', '2002', '美国', '喜剧 动画 冒险', '8.5', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1910895719.jpg');
INSERT INTO `movies_moives` VALUES ('165', '你的名字。', ' 新海诚 Makoto Shinkai', ' 神木隆之介 Ryûnosuke Kamiki / 上...', '2016', '日本', '剧情 爱情 动画', '8.4', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2395733377.jpg');
INSERT INTO `movies_moives` VALUES ('166', '三块广告牌', ' 马丁·麦克唐纳 Martin McDonagh', ' 弗兰西斯·麦克多蒙德 France...', '2017', '美国 英国', '剧情 犯罪', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2510081688.jpg');
INSERT INTO `movies_moives` VALUES ('167', '燃情岁月', ' 爱德华·兹威克 Edward Zwick', ' 布拉德·皮特 Brad Pitt / 安东...', '1994', '美国', '剧情 爱情 战争 西部', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1023654037.jpg');
INSERT INTO `movies_moives` VALUES ('168', '雨中曲', ' 斯坦利·多南 Stanley Donen / 吉恩·凯利 Gene Kelly', ' 吉恩·...', '1952', '美国', '喜剧 歌舞 爱情', '9.0', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1612355875.jpg');
INSERT INTO `movies_moives` VALUES ('169', '我是山姆', ' 杰茜·尼尔森 Jessie Nelson', ' Sean Penn / Dakota Fanning / Mi...', '2001', '美国', '剧情 家庭', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p652417775.jpg');
INSERT INTO `movies_moives` VALUES ('170', '爆裂鼓手', ' 达米恩·查泽雷 Damien Chazelle', ' 迈尔斯·特勒 Miles Teller /...', '2014', '美国', '剧情 音乐', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2220776342.jpg');
INSERT INTO `movies_moives` VALUES ('171', '人工智能', ' 史蒂文·斯皮尔伯格 Steven Spielberg', ' 海利·乔·奥斯蒙 Haley...', '2001', '美国', '冒险 剧情 科幻', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p792257137.jpg');
INSERT INTO `movies_moives` VALUES ('172', '未麻的部屋', ' 今敏 Satoshi Kon', ' 岩男润子 Junko Iwao / 松本梨香 Rica Matsu...', '1997', '日本', '动画 奇幻 惊悚', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1351050722.jpg');
INSERT INTO `movies_moives` VALUES ('173', '穿越时空的少女', ' 细田守 Mamoru Hosoda', ' 仲里依纱 Riisa Naka / 石田卓也 Takuya...', '2006', '日本', '剧情 爱情 科幻 动画', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2079334286.jpg');
INSERT INTO `movies_moives` VALUES ('174', '魂断蓝桥', ' 茂文·勒鲁瓦 Mervyn LeRoy', ' 费雯·丽 Vivien Leigh / 罗伯特·...', '1940', '美国', '剧情 爱情 战争', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2351134499.jpg');
INSERT INTO `movies_moives` VALUES ('175', '猜火车', ' 丹尼·博伊尔 Danny Boyle', ' 伊万·麦克格雷格 Ewan McGregor / ...', '1996', '英国', '剧情 犯罪', '8.5', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p513567548.jpg');
INSERT INTO `movies_moives` VALUES ('176', '模仿游戏', ' 莫滕·泰杜姆 Morten Tyldum', ' 本尼迪克特·康伯巴奇 Benedict C...', '2014', '英国 美国', '剧情 传记 战争 同性', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2255040492.jpg');
INSERT INTO `movies_moives` VALUES ('177', '一个叫欧维的男人决定去死', ' 汉内斯·赫尔姆 Hannes Holm', ' 罗夫·拉斯加德 Rolf Lassgård...', '2015', '瑞典', '剧情', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2406624993.jpg');
INSERT INTO `movies_moives` VALUES ('178', '房间', ' 伦尼·阿伯拉罕森 Lenny Abrahamson', ' 布丽·拉尔森 Brie Larson...', '2015', '爱尔兰 加拿大 英国 美国', '剧情 家庭', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2259715855.jpg');
INSERT INTO `movies_moives` VALUES ('179', '忠犬八公物语', ' Seijirô Kôyama', ' 山本圭 Kei Yamamoto / 井川比佐志 Hisa...', '1987', '日本', '剧情', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1576418852.jpg');
INSERT INTO `movies_moives` VALUES ('180', '完美陌生人', ' 保罗·格诺维瑟 Paolo Genovese', ' 马可·贾利尼 Marco Giallini ...', '2016', '意大利', '剧情 喜剧', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2522331945.jpg');
INSERT INTO `movies_moives` VALUES ('181', '恐怖游轮', ' 克里斯托弗·史密斯 Christopher Smith', ' 梅利莎·乔治 Melissa ...', '2009', '英国 澳大利亚', '剧情 悬疑 惊悚', '8.4', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p462470694.jpg');
INSERT INTO `movies_moives` VALUES ('182', '罗生门', ' 黑泽明 Akira Kurosawa', ' 三船敏郎 Toshirô Mifune / 千秋实 ...', '1950', '日本', '犯罪 剧情 悬疑', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1864872647.jpg');
INSERT INTO `movies_moives` VALUES ('183', '魔女宅急便', ' 宫崎骏 Hayao Miyazaki', ' 高山南 Minami Takayama / 佐久间玲 Re...', '1989', '日本', '动画 奇幻 冒险', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p456676352.jpg');
INSERT INTO `movies_moives` VALUES ('184', '阿飞正传', ' 王家卫 Kar Wai Wong', ' 张国荣 Leslie Cheung / 张曼玉 Maggie C...', '1990', '香港', '犯罪 剧情 爱情', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2525770523.jpg');
INSERT INTO `movies_moives` VALUES ('185', '香水', ' 汤姆·提克威 Tom Tykwer', ' 本·卫肖 Ben Whishaw / 艾伦·瑞克...', '2006', '德国 法国 西班牙 美国', '剧情 犯罪 奇幻', '8.5', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p470006658.jpg');
INSERT INTO `movies_moives` VALUES ('186', '哪吒闹海', ' 严定宪 Dingxian Yan / 王树忱 Shuchen Wang', ' 梁正晖 Zhenghui ...', '1979', '中国大陆', '冒险 动画 奇幻', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2516566783.jpg');
INSERT INTO `movies_moives` VALUES ('187', '浪潮', ' 丹尼斯·甘塞尔 Dennis Gansel', ' 尤尔根·沃格尔 Jürgen Vogel ...', '2008', '德国', '剧情 惊悚', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1344888983.jpg');
INSERT INTO `movies_moives` VALUES ('188', '朗读者', ' 史蒂芬·戴德利 Stephen Daldry', ' 凯特·温丝莱特 Kate Winslet ...', '2008', '美国 德国', '剧情 爱情', '8.5', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1140984198.jpg');
INSERT INTO `movies_moives` VALUES ('189', '黑客帝国3：矩阵革命', ' Andy Wachowski / Larry Wachowski', ' 基努·里维斯 Keanu Reeves...', '2003', '美国 澳大利亚', '动作 科幻', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p443461818.jpg');
INSERT INTO `movies_moives` VALUES ('190', '海街日记', ' 是枝裕和 Hirokazu Koreeda', ' 绫濑遥 Haruka Ayase / 长泽雅美 M...', '2015', '日本', '剧情 家庭', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2232247487.jpg');
INSERT INTO `movies_moives` VALUES ('191', '可可西里', ' 陆川 Chuan Lu', ' 多布杰 Duobujie / 张磊 Lei Zhang / 亓亮 Qi L...', '2004', '中国大陆 香港', '剧情 犯罪', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2414771522.jpg');
INSERT INTO `movies_moives` VALUES ('192', '谍影重重2', ' 保罗·格林格拉斯 Paul Greengrass', ' 马特·达蒙 Matt Damon / ...', '2004', '美国 德国', '动作 悬疑 惊悚', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p667644866.jpg');
INSERT INTO `movies_moives` VALUES ('193', '谍影重重', ' 道格·里曼 Doug Liman', ' 马特·达蒙 Matt Damon / 弗兰卡·波坦...', '2002', '美国 德国 捷克', '动作 悬疑 惊悚', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1597183981.jpg');
INSERT INTO `movies_moives` VALUES ('194', '战争之王', ' 安德鲁·尼科尔 Andrew Niccol', ' 尼古拉斯·凯奇 Nicolas Cage /...', '2005', '美国 法国', '剧情 犯罪', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p453719066.jpg');
INSERT INTO `movies_moives` VALUES ('195', '牯岭街少年杀人事件', ' 杨德昌 Edward Yang', ' 张震 Chen Chang / 杨静怡 Lisa Yang / 张...', '1991', '台湾', '剧情 犯罪', '8.8', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p848381236.jpg');
INSERT INTO `movies_moives` VALUES ('196', '地球上的星星', ' 阿米尔·汗 Aamir Khan', ' 达席尔·萨法瑞 Darsheel Safary / 阿...', '2007', '印度', '剧情 儿童 家庭', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1973489335.jpg');
INSERT INTO `movies_moives` VALUES ('197', '青蛇', ' 徐克 Hark Tsui', ' 张曼玉 Maggie Cheung / 王祖贤 Joey Wang / ...', '1993', '香港', '剧情 爱情 奇幻 古装', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p584021784.jpg');
INSERT INTO `movies_moives` VALUES ('198', '惊魂记', ' Alfred Hitchcock', ' Janet Leigh / Anthony Perkins / Vera Miles', '1960', '美国', '悬疑 惊悚 恐怖', '8.9', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1021883305.jpg');
INSERT INTO `movies_moives` VALUES ('199', '疯狂的石头', ' 宁浩 Hao Ning', ' 郭涛 Tao Guo / 刘桦 Hua Liu / 连晋 Teddy Lin', '2006', '中国大陆 香港', '喜剧 犯罪', '8.4', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p712241453.jpg');
INSERT INTO `movies_moives` VALUES ('200', '一次别离', ' 阿斯哈·法哈蒂  Asghar Farhadi', ' 佩曼·莫阿迪 Peyman Moadi /...', '2011', '伊朗 法国', '剧情 家庭', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2189835254.jpg');
INSERT INTO `movies_moives` VALUES ('201', '追随', ' 克里斯托弗·诺兰 Christopher Nolan', ' 杰里米·西奥伯德 Jeremy...', '1998', '英国', '犯罪 悬疑 惊悚', '8.9', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1150103377.jpg');
INSERT INTO `movies_moives` VALUES ('202', '终结者2：审判日', ' 詹姆斯·卡梅隆 James Cameron', ' 阿诺·施瓦辛格 Arnold Schwarz...', '1991', '美国 法国', '动作 科幻', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910909085.jpg');
INSERT INTO `movies_moives` VALUES ('203', '源代码', ' 邓肯·琼斯 Duncan Jones', ' 杰克·吉伦哈尔 Jake Gyllenhaal / ...', '2011', '美国 加拿大', '科幻 悬疑 惊悚', '8.4', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p988260245.jpg');
INSERT INTO `movies_moives` VALUES ('204', '步履不停', ' 是枝裕和 Hirokazu Koreeda', ' 阿部宽 Hiroshi Abe / 夏川结衣 Yu...', '2008', '日本', '剧情 家庭', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p672446737.jpg');
INSERT INTO `movies_moives` VALUES ('205', '天书奇谭', ' 王树忱 Shuchen Wang / 钱运达 Yunda Qian', ' 丁建华 Jianhua Din...', '1983(中国大陆) / 2019(中国大陆重映)', '中国大陆', '动画 奇幻', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p842504080.jpg');
INSERT INTO `movies_moives` VALUES ('206', '新龙门客栈', ' 李惠民 Raymond Lee', ' 张曼玉 Maggie Cheung / 林青霞 Brigitte ...', '1992', '香港 中国大陆', '动作 爱情 武侠 古装', '8.5', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1421018669.jpg');
INSERT INTO `movies_moives` VALUES ('207', '再次出发之纽约遇见你', ' 约翰·卡尼 John Carney', ' 凯拉·奈特莉 Keira Knightley / 马克...', '2013', '美国', '喜剧 爱情 音乐', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2250287733.jpg');
INSERT INTO `movies_moives` VALUES ('208', '撞车', ' 保罗·哈吉斯 Paul Haggis', ' 桑德拉·布洛克 Sandra Bullock / ...', '2004', '美国 德国', '犯罪 剧情', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p659411589.jpg');
INSERT INTO `movies_moives` VALUES ('209', '梦之安魂曲', ' 达伦·阿伦诺夫斯基 Darren Aronofsky', ' 艾伦·伯斯汀 Ellen Bur...', '2000', '美国', '剧情', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p884936202.jpg');
INSERT INTO `movies_moives` VALUES ('210', '爱在午夜降临前', ' 理查德·林克莱特 Richard Linklater', ' 伊桑·霍克 Ethan Hawke ...', '2013', '美国 希腊', '剧情 爱情', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2074715729.jpg');
INSERT INTO `movies_moives` VALUES ('211', '海蒂和爷爷', ' 阿兰·葛斯彭纳 Alain Gsponer', ' 阿努克·斯特芬 Anuk Steffen /...', '2015', '德国 瑞士 南非', '剧情 冒险 家庭', '9.1', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2332944143.jpg');
INSERT INTO `movies_moives` VALUES ('212', '无耻混蛋', ' Quentin Tarantino', ' 布拉德·皮特 Brad Pitt / 梅拉尼·罗兰 M...', '2009', '美国 德国', '剧情 犯罪', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p770734475.jpg');
INSERT INTO `movies_moives` VALUES ('213', '东京物语', ' 小津安二郎 Yasujirô Ozu', ' 笠智众 Chishû Ryû / 原节...', '1953', '日本', '剧情 家庭', '9.2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910832390.jpg');
INSERT INTO `movies_moives` VALUES ('214', '城市之光', ' Charles Chaplin', ' 查理·卓别林 Charles Chaplin / 弗吉尼亚·...', '1931', '美国', '喜剧 剧情 爱情', '9.3', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2170238828.jpg');
INSERT INTO `movies_moives` VALUES ('215', '绿里奇迹', ' Frank Darabont', ' 汤姆·汉克斯 Tom Hanks / 大卫·摩斯 David M...', '1999', '美国', '犯罪 剧情 奇幻 悬疑', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p767586451.jpg');
INSERT INTO `movies_moives` VALUES ('216', '彗星来的那一夜', ' 詹姆斯·沃德·布柯特 James Ward Byrkit', ' 艾米丽·芭尔多尼 Em...', '2013', '美国 英国', '科幻 悬疑 惊悚', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2187896711.jpg');
INSERT INTO `movies_moives` VALUES ('217', '血钻', ' 爱德华·兹威克 Edward Zwick', ' 莱昂纳多·迪卡普里奥 Leonardo ...', '2006', '美国 德国', '剧情 惊悚 冒险', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1244017073.jpg');
INSERT INTO `movies_moives` VALUES ('218', '这个男人来自地球', ' 理查德·沙因克曼 Richard Schenkman', ' 大卫·李·史密斯 David ...', '2007', '美国', '剧情 科幻', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p513303986.jpg');
INSERT INTO `movies_moives` VALUES ('219', 'E.T. 外星人', ' Steven Spielberg', ' Henry Thomas / Dee Wallace / Robert MacNa...', '1982', '美国', '剧情 科幻', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p984732992.jpg');
INSERT INTO `movies_moives` VALUES ('220', '2001太空漫游', ' 斯坦利·库布里克 Stanley Kubrick', ' 凯尔·杜拉 Keir Dullea / ...', '1968', '英国 美国', '科幻 惊悚 冒险', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p792189453.jpg');
INSERT INTO `movies_moives` VALUES ('221', '末路狂花', ' 雷德利·斯科特 Ridley Scott', ' 吉娜·戴维斯 Geena Davis / 苏...', '1991', '美国 法国', '犯罪 剧情 惊悚', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p794583044.jpg');
INSERT INTO `movies_moives` VALUES ('222', '聚焦', ' 托马斯·麦卡锡 Thomas McCarthy', ' 马克·鲁弗洛 Mark Ruffalo /...', '2015', '美国', '剧情 传记', '8.8', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2263822658.jpg');
INSERT INTO `movies_moives` VALUES ('223', '勇闯夺命岛', ' 迈克尔·贝 Michael Bay', ' 肖恩·康纳利 Sean Connery / 尼古拉...', '1996', '美国', '动作 冒险', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p636048104.jpg');
INSERT INTO `movies_moives` VALUES ('224', '变脸', ' 吴宇森 John Woo', ' 约翰·特拉沃尔塔 John Travolta / 尼古拉斯...', '1997', '美国', '动作 科幻 犯罪 惊悚', '8.4', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2173855883.jpg');
INSERT INTO `movies_moives` VALUES ('225', '发条橙', ' Stanley Kubrick', ' Malcolm McDowell / Patrick Magee / Michael...', '1971', '英国 美国', '犯罪 剧情 科幻', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p529908155.jpg');
INSERT INTO `movies_moives` VALUES ('226', '功夫', ' 周星驰 Stephen Chow', ' 周星驰 Stephen Chow / 元秋 Qiu Yuen / ...', '2004', '中国大陆 香港', '动作 喜剧 犯罪 奇幻', '8.3', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2219011938.jpg');
INSERT INTO `movies_moives` VALUES ('227', '秒速5厘米', ' 新海诚 Makoto Shinkai', ' 水桥研二 Kenji Mizuhashi / 近藤好美 ...', '2007', '日本', '动画 剧情 爱情', '8.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p982896012.jpg');
INSERT INTO `movies_moives` VALUES ('228', '黄金三镖客', ' Sergio Leone', ' Clint Eastwood / Eli Wallach / Lee Van Cleef', '1966', '意大利 西班牙 西德', '冒险 西部', '9.1', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2101693489.jpg');
INSERT INTO `movies_moives` VALUES ('229', '黑鹰坠落', ' 雷德利·斯科特 Ridley Scott', ' 乔什·哈奈特 Josh Hartnett / ...', '2001', '美国', '动作 历史 战争', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910900710.jpg');
INSERT INTO `movies_moives` VALUES ('230', '非常嫌疑犯', ' 布莱恩·辛格 Bryan Singer', ' 史蒂芬·鲍德温 Stephen Baldwin /...', '1995', '德国 美国', '剧情 犯罪 悬疑 惊悚', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2537319495.jpg');
INSERT INTO `movies_moives` VALUES ('231', '卡萨布兰卡', ' 迈克尔·柯蒂兹 Michael Curtiz', ' 亨弗莱·鲍嘉 Humphrey Bogart...', '1942', '美国', '剧情 爱情 战争', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2189265379.jpg');
INSERT INTO `movies_moives` VALUES ('232', '我爱你', ' 秋昌民 Chang-min Choo', ' 宋在河 Jae-ho Song / 李顺载 Soon-jae...', '2011', '韩国', '剧情 爱情', '9.0', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1075591188.jpg');
INSERT INTO `movies_moives` VALUES ('233', '国王的演讲', ' 汤姆·霍珀 Tom Hooper', ' 柯林·菲尔斯 Colin Firth / 杰弗里·...', '2010', '英国 澳大利亚 美国', '剧情 传记 历史', '8.4', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p768879237.jpg');
INSERT INTO `movies_moives` VALUES ('234', '千钧一发', ' 安德鲁·尼科尔 Andrew Niccol', ' 伊桑·霍克 Ethan Hawke / 乌玛...', '1997', '美国', '剧情 科幻 惊悚', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2195672555.jpg');
INSERT INTO `movies_moives` VALUES ('235', '疯狂的麦克斯4：狂暴之路', ' 乔治·米勒 George Miller', ' 汤姆·哈迪 Tom Hardy / 查理兹·塞...', '2015', '澳大利亚 美国', '动作 科幻 冒险', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2236181653.jpg');
INSERT INTO `movies_moives` VALUES ('236', '美国丽人', ' 萨姆·门德斯 Sam Mendes', ' 凯文·史派西 Kevin Spacey / 安妮特...', '1999', '美国', '剧情 爱情 家庭', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p571671715.jpg');
INSERT INTO `movies_moives` VALUES ('237', '遗愿清单', ' 罗伯·莱纳 Rob Reiner', ' 杰克·尼科尔森 Jack Nicholson / 摩根...', '2007', '美国', '冒险 喜剧 剧情', '8.6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p708613284.jpg');
INSERT INTO `movies_moives` VALUES ('238', '奇迹男孩', ' 斯蒂芬·卓博斯基 Stephen Chbosky', ' 雅各布·特伦布莱 Jacob Tr...', '2017', '美国 香港', '剧情 儿童 家庭', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2507709428.jpg');
INSERT INTO `movies_moives` VALUES ('239', '碧海蓝天', ' Luc Besson', ' 让-马克·巴尔 Jean-Marc Barr / 让·雷诺 Jean Re...', '1988', '法国 美国 意大利', '剧情 爱情', '8.7', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p455724599.jpg');
INSERT INTO `movies_moives` VALUES ('240', '驴得水', ' 周申 Shen Zhou / 刘露 Lu Liu', ' 任素汐 Suxi Ren / 大力 Da Li ...', '2016', '中国大陆', '剧情 喜剧', '8.3', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2393044761.jpg');
INSERT INTO `movies_moives` VALUES ('241', '荒岛余生', ' 罗伯特·泽米吉斯 Robert Zemeckis', ' 汤姆·汉克斯 Tom Hanks / ...', '2000', '美国', '冒险 剧情', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2207673534.jpg');
INSERT INTO `movies_moives` VALUES ('242', '枪火', ' 杜琪峰 Johnnie To', ' 吴镇宇 Francis Ng / 任达华 Simon Yam / ...', '1999', '香港', '剧情 动作 犯罪', '8.7', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1538646661.jpg');
INSERT INTO `movies_moives` VALUES ('243', '英国病人', ' 安东尼·明格拉 Anthony Minghella', ' 拉尔夫·费因斯 Ralph Fien...', '1996', '美国 英国', '爱情 剧情 战争', '8.5', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2408623752.jpg');
INSERT INTO `movies_moives` VALUES ('244', '荒野生存', ' 西恩·潘 Sean Penn', ' 埃米尔·赫斯基 Emile Hirsch / 马西娅·...', '2007', '美国', '冒险 传记 剧情', '8.6', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p465687407.jpg');

-- ----------------------------
-- Table structure for polls_choice
-- ----------------------------
DROP TABLE IF EXISTS `polls_choice`;
CREATE TABLE `polls_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choice_text` varchar(200) NOT NULL,
  `votes` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_choice_question_id_c5b4b260_fk_polls_question_id` (`question_id`),
  CONSTRAINT `polls_choice_question_id_c5b4b260_fk_polls_question_id` FOREIGN KEY (`question_id`) REFERENCES `polls_question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of polls_choice
-- ----------------------------

-- ----------------------------
-- Table structure for polls_question
-- ----------------------------
DROP TABLE IF EXISTS `polls_question`;
CREATE TABLE `polls_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` varchar(200) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of polls_question
-- ----------------------------
