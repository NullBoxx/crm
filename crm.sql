/*
Navicat MySQL Data Transfer

Source Server         : 本机MySQL
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : bjpowernode_crm

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2022-03-16 19:46:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_activity
-- ----------------------------
DROP TABLE IF EXISTS `tbl_activity`;
CREATE TABLE `tbl_activity` (
  `id` char(32) NOT NULL,
  `owner` char(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `startDate` char(10) DEFAULT NULL,
  `endDate` char(10) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_activity
-- ----------------------------
INSERT INTO `tbl_activity` VALUES ('007589dc1f334593bcd4f24125e05d4c', '40f6cdea0bd34aceb77492a1656d9fb3', '发传单1', '2022-02-19', '2022-02-28', '1', '1', '2022-02-19 12:15:49', '张三', null, null);
INSERT INTO `tbl_activity` VALUES ('04ae1d5e6edc465cbd57f7bcaf36fd0c', '40f6cdea0bd34aceb77492a1656d9fb3', '百度推广a3', '2022-02-20', '2022-02-24', '123', '123', '2022-02-20 13:43:42', '张三', '2022-02-20 13:45:47', '张三');
INSERT INTO `tbl_activity` VALUES ('068049f15dbc43d6bfe502899954907c', '40f6cdea0bd34aceb77492a1656d9fb3', '发传单2', '2022-02-19', '2022-02-28', '1', '1', '2022-02-19 12:15:22', '张三', null, null);
INSERT INTO `tbl_activity` VALUES ('1c7a09b73e3c4ba19e07af74b6eddbd6', null, '宣传推广会', null, null, null, null, null, null, null, null);
INSERT INTO `tbl_activity` VALUES ('29e58ed3bcc74656bb891eba1e6fd285', '40f6cdea0bd34aceb77492a1656d9fb3', '发传单3', '2022-02-18', '2022-02-22', '1000', '描述123', '2022-02-18 14:54:07', '张三', null, null);
INSERT INTO `tbl_activity` VALUES ('3062427fb52149ccab89a811810f0fc8', '40f6cdea0bd34aceb77492a1656d9fb3', '发传单4', '2022-02-19', '2022-02-28', '1', '1', '2022-02-19 12:14:14', '张三', null, null);
INSERT INTO `tbl_activity` VALUES ('34df0388d54d48a3945ca0a2d59ac687', '40f6cdea0bd34aceb77492a1656d9fb3', '发传单5', '2022-02-19', '2022-02-28', '1', '1', '2022-02-19 12:13:50', '张三', '2022-02-20 13:45:55', '张三');
INSERT INTO `tbl_activity` VALUES ('622a5141397b446789fd549d95d4e483', '40f6cdea0bd34aceb77492a1656d9fb3', '发传单6', '2022-02-19', '2022-02-28', '1', '1', '2022-02-19 12:16:00', '张三', null, null);
INSERT INTO `tbl_activity` VALUES ('86ec59509102432083c2ea192b79fa5c', '40f6cdea0bd34aceb77492a1656d9fb3', '发传单7', '2022-02-19', '2022-02-28', '1', '1', '2022-02-19 12:18:00', '张三', null, null);
INSERT INTO `tbl_activity` VALUES ('92c96cb04af845eb912610ec0f78f841', '40f6cdea0bd34aceb77492a1656d9fb3', '发传单8', '2022-02-19', '2022-02-28', '2', '1', '2022-02-19 12:18:03', '张三', '2022-02-20 13:29:45', '张三');
INSERT INTO `tbl_activity` VALUES ('e96131c7e8c34c78b1b27b3520361642', '40f6cdea0bd34aceb77492a1656d9fb3', '发传单9', '2022-02-19', '2022-02-28', '1', '1', '2022-02-19 12:14:02', '张三', null, null);

-- ----------------------------
-- Table structure for tbl_activity_remark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_activity_remark`;
CREATE TABLE `tbl_activity_remark` (
  `id` char(32) NOT NULL,
  `noteContent` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editFlag` char(1) DEFAULT NULL COMMENT '0表示未修改，1表示已修改',
  `activityId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_activity_remark
-- ----------------------------
INSERT INTO `tbl_activity_remark` VALUES ('04ae1d5e6edc465cbd57f7bcaf36fd03', '备注3(属于百度推广a)', '2022-02-19 11:15:49', '张三', '2022-02-19 12:15:49', '张三', '1', '04ae1d5e6edc465cbd57f7bcaf36fd0c');
INSERT INTO `tbl_activity_remark` VALUES ('04ae1d5e6edc465cbd57f7bcaf36fd04', '备注4(属于发传单111)', '', '张三', null, null, '0', '007589dc1f334593bcd4f24125e05d4c');
INSERT INTO `tbl_activity_remark` VALUES ('d7ac60a3134345c2814407bd57c92e7d', '备注abc', '2022-02-22 10:05:37', '张三', '2022-02-22 11:28:14', '张三', '1', '04ae1d5e6edc465cbd57f7bcaf36fd0c');

-- ----------------------------
-- Table structure for tbl_clue
-- ----------------------------
DROP TABLE IF EXISTS `tbl_clue`;
CREATE TABLE `tbl_clue` (
  `id` char(32) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `appellation` varchar(255) DEFAULT NULL,
  `owner` char(32) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `mphone` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_clue
-- ----------------------------
INSERT INTO `tbl_clue` VALUES ('536b571a9b4c4616a0d4ef59a4dde88b', '王建林', '先生', '40f6cdea0bd34aceb77492a1656d9fb3', '万达集团', 'CEO', 'wjl@wjl.com', '+86123123123', 'www.wanda.com', '12312412', '试图联系', '交易会', '2022-02-24 14:51:59', '张三', null, null, '描述213asd', '纪要123aa', '2022-02-28', '地址123dd');

-- ----------------------------
-- Table structure for tbl_clue_activity_relation
-- ----------------------------
DROP TABLE IF EXISTS `tbl_clue_activity_relation`;
CREATE TABLE `tbl_clue_activity_relation` (
  `id` char(32) NOT NULL,
  `clueId` char(32) DEFAULT NULL,
  `activityId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_clue_activity_relation
-- ----------------------------
INSERT INTO `tbl_clue_activity_relation` VALUES ('66a9f50d952f473b91cc56b7a0e8021d', '536b571a9b4c4616a0d4ef59a4dde88b', '3062427fb52149ccab89a811810f0fc8');

-- ----------------------------
-- Table structure for tbl_clue_remark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_clue_remark`;
CREATE TABLE `tbl_clue_remark` (
  `id` char(32) NOT NULL,
  `noteContent` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editFlag` char(1) DEFAULT NULL,
  `clueId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_clue_remark
-- ----------------------------
INSERT INTO `tbl_clue_remark` VALUES ('06f5fc056eac41558a964f96daa7f27d', '备注4干扰项(属于王健林)', null, null, null, null, null, '536b571a9b4c4616a0d4ef59a4dde88b');

-- ----------------------------
-- Table structure for tbl_contacts
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contacts`;
CREATE TABLE `tbl_contacts` (
  `id` char(32) NOT NULL,
  `owner` char(32) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `customerId` char(32) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `appellation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mphone` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `birth` char(10) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_contacts
-- ----------------------------
INSERT INTO `tbl_contacts` VALUES ('d7cb781aca5a4b6daebeaa9fae776838', '40f6cdea0bd34aceb77492a1656d9fb3', '员工介绍', '491d87a5d805496ca73e44315947d281', '马云', '先生', 'my@alibaba.com', '12312412', 'CEO', null, null, null, null, null, '描述213', '纪要123', '2022-02-27', '地址123');

-- ----------------------------
-- Table structure for tbl_contacts_activity_relation
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contacts_activity_relation`;
CREATE TABLE `tbl_contacts_activity_relation` (
  `id` char(32) NOT NULL,
  `contactsId` char(32) DEFAULT NULL,
  `activityId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_contacts_activity_relation
-- ----------------------------
INSERT INTO `tbl_contacts_activity_relation` VALUES ('48113c72d3264ef8abe623263138b1f7', 'd7cb781aca5a4b6daebeaa9fae776838', '007589dc1f334593bcd4f24125e05d4c');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('e5b75553781d479c8b4b6f82c34e4b66', 'd7cb781aca5a4b6daebeaa9fae776838', '29e58ed3bcc74656bb891eba1e6fd285');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('e6036eb7f50a496f8d37aa868fabe7d9', 'd7cb781aca5a4b6daebeaa9fae776838', '068049f15dbc43d6bfe502899954907c');

-- ----------------------------
-- Table structure for tbl_contacts_remark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contacts_remark`;
CREATE TABLE `tbl_contacts_remark` (
  `id` char(32) NOT NULL,
  `noteContent` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editFlag` char(1) DEFAULT NULL,
  `contactsId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_contacts_remark
-- ----------------------------
INSERT INTO `tbl_contacts_remark` VALUES ('5a45a14b65e040cfb5487694a58fe9c8', '备注1(属于马云)', '张三', '2022-03-04 14:20:24', null, null, '0', 'd7cb781aca5a4b6daebeaa9fae776838');
INSERT INTO `tbl_contacts_remark` VALUES ('6ffc3c34290741a288e4a7a235b6ee1b', '备注2(属于马云)', '张三', '2022-03-04 14:20:24', null, null, '0', 'd7cb781aca5a4b6daebeaa9fae776838');
INSERT INTO `tbl_contacts_remark` VALUES ('dd396c1615a54f2ca26e2246f432462c', '备注3(属于马云)', '张三', '2022-03-04 14:20:24', null, null, '0', 'd7cb781aca5a4b6daebeaa9fae776838');

-- ----------------------------
-- Table structure for tbl_customer
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE `tbl_customer` (
  `id` char(32) NOT NULL,
  `owner` char(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(10) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_customer
-- ----------------------------
INSERT INTO `tbl_customer` VALUES ('491d87a5d805496ca73e44315947d287', '40f6cdea0bd34aceb77492a1656d9fb3', '阿里巴巴1', 'www.alibaba.com', '+86123123123', '张三', '2022-03-04 14:20:24', null, null, '纪要123', '2022-02-27', '描述213', '地址123');
INSERT INTO `tbl_customer` VALUES ('491d87a5d805496ca73e44315947d288', null, '阿里巴巴12', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_customer` VALUES ('491d87a5d805496ca73e44315947d289', null, '阿里巴巴123', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_customer` VALUES ('78c119c5ae2a446a813ca71ae5e97c7d', '40f6cdea0bd34aceb77492a1656d9fb3', '', null, null, '张三', '2022-03-07 10:57:01', null, null, '', '', null, null);
INSERT INTO `tbl_customer` VALUES ('e2e65237b61d40e1a4e6fb84ccd38285', '40f6cdea0bd34aceb77492a1656d9fb3', '百度集团', null, null, '张三', '2022-03-07 11:00:21', null, null, '123', '2022-03-08', null, null);

-- ----------------------------
-- Table structure for tbl_customer_remark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer_remark`;
CREATE TABLE `tbl_customer_remark` (
  `id` char(32) NOT NULL,
  `noteContent` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editFlag` char(1) DEFAULT NULL,
  `customerId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_customer_remark
-- ----------------------------
INSERT INTO `tbl_customer_remark` VALUES ('8c87878c75ea4e3a90bb2d2f1b39d8d3', '备注1(属于马云)', '张三', '2022-03-04 14:20:24', null, null, '0', '491d87a5d805496ca73e44315947d281');
INSERT INTO `tbl_customer_remark` VALUES ('af988460c84b4acd8b5b8e4db7aecc2a', '备注3(属于马云)', '张三', '2022-03-04 14:20:24', null, null, '0', '491d87a5d805496ca73e44315947d281');
INSERT INTO `tbl_customer_remark` VALUES ('dccafe73a9114a49abc85a2a1c4c7734', '备注2(属于马云)', '张三', '2022-03-04 14:20:24', null, null, '0', '491d87a5d805496ca73e44315947d281');

-- ----------------------------
-- Table structure for tbl_dic_type
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dic_type`;
CREATE TABLE `tbl_dic_type` (
  `code` varchar(255) NOT NULL COMMENT '编码是主键，不能为空，不能含有中文。',
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dic_type
-- ----------------------------
INSERT INTO `tbl_dic_type` VALUES ('appellation', '称呼', '');
INSERT INTO `tbl_dic_type` VALUES ('clueState', '线索状态', '');
INSERT INTO `tbl_dic_type` VALUES ('returnPriority', '回访优先级', '');
INSERT INTO `tbl_dic_type` VALUES ('returnState', '回访状态', '');
INSERT INTO `tbl_dic_type` VALUES ('source', '来源', '');
INSERT INTO `tbl_dic_type` VALUES ('stage', '阶段', '');
INSERT INTO `tbl_dic_type` VALUES ('transactionType', '交易类型', '');

-- ----------------------------
-- Table structure for tbl_dic_value
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dic_value`;
CREATE TABLE `tbl_dic_value` (
  `id` char(32) NOT NULL COMMENT '主键，采用UUID',
  `value` varchar(255) DEFAULT NULL COMMENT '不能为空，并且要求同一个字典类型下字典值不能重复，具有唯一性。',
  `text` varchar(255) DEFAULT NULL COMMENT '可以为空',
  `orderNo` varchar(255) DEFAULT NULL COMMENT '可以为空，但不为空的时候，要求必须是正整数',
  `typeCode` varchar(255) DEFAULT NULL COMMENT '外键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dic_value
-- ----------------------------
INSERT INTO `tbl_dic_value` VALUES ('06e3cbdf10a44eca8511dddfc6896c55', '虚假线索', '虚假线索', '4', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('0fe33840c6d84bf78df55d49b169a894', '销售邮件', '销售邮件', '8', 'source');
INSERT INTO `tbl_dic_value` VALUES ('12302fd42bd349c1bb768b19600e6b20', '交易会', '交易会', '11', 'source');
INSERT INTO `tbl_dic_value` VALUES ('1615f0bb3e604552a86cde9a2ad45bea', '最高', '最高', '2', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('176039d2a90e4b1a81c5ab8707268636', '教授', '教授123', '5', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('1e0bd307e6ee425599327447f8387285', '将来联系', '将来联系', '2', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('2173663b40b949ce928db92607b5fe57', '丢失线索', '丢失线索', '5', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('2876690b7e744333b7f1867102f91153', '未启动', '未启动', '1', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('29805c804dd94974b568cfc9017b2e4c', '07成交', '07成交', '7', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('310e6a49bd8a4962b3f95a1d92eb76f4', '试图联系', '试图联系', '1', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('31539e7ed8c848fc913e1c2c93d76fd1', '博士', '博士', '4', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('37ef211719134b009e10b7108194cf46', '01资质审查', '01资质审查', '1', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('391807b5324d4f16bd58c882750ee632', '08丢失的线索', '08丢失的线索', '8', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('3a39605d67da48f2a3ef52e19d243953', '聊天', '聊天', '14', 'source');
INSERT INTO `tbl_dic_value` VALUES ('474ab93e2e114816abf3ffc596b19131', '低', '低', '3', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('48512bfed26145d4a38d3616e2d2cf79', '广告', '广告', '1', 'source');
INSERT INTO `tbl_dic_value` VALUES ('4d03a42898684135809d380597ed3268', '合作伙伴研讨会', '合作伙伴研讨会', '9', 'source');
INSERT INTO `tbl_dic_value` VALUES ('59795c49896947e1ab61b7312bd0597c', '先生', '先生', '1', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('5c6e9e10ca414bd499c07b886f86202a', '高', '高', '1', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('67165c27076e4c8599f42de57850e39c', '夫人', '夫人', '2', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('68a1b1e814d5497a999b8f1298ace62b', '09因竞争丢失关闭', '09因竞争丢失关闭', '9', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('6b86f215e69f4dbd8a2daa22efccf0cf', 'web调研', 'web调研', '13', 'source');
INSERT INTO `tbl_dic_value` VALUES ('72f13af8f5d34134b5b3f42c5d477510', '合作伙伴', '合作伙伴', '6', 'source');
INSERT INTO `tbl_dic_value` VALUES ('7c07db3146794c60bf975749952176df', '未联系', '未联系', '6', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('86c56aca9eef49058145ec20d5466c17', '内部研讨会', '内部研讨会', '10', 'source');
INSERT INTO `tbl_dic_value` VALUES ('9095bda1f9c34f098d5b92fb870eba17', '进行中', '进行中', '3', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('954b410341e7433faa468d3c4f7cf0d2', '已有业务', '已有业务', '1', 'transactionType');
INSERT INTO `tbl_dic_value` VALUES ('966170ead6fa481284b7d21f90364984', '已联系', '已联系', '3', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('96b03f65dec748caa3f0b6284b19ef2f', '推迟', '推迟', '2', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('97d1128f70294f0aac49e996ced28c8a', '新业务', '新业务', '2', 'transactionType');
INSERT INTO `tbl_dic_value` VALUES ('9ca96290352c40688de6596596565c12', '完成', '完成', '4', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('9e6d6e15232549af853e22e703f3e015', '需要条件', '需要条件', '7', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('9ff57750fac04f15b10ce1bbb5bb8bab', '02需求分析', '02需求分析', '2', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('a70dc4b4523040c696f4421462be8b2f', '等待某人', '等待某人', '5', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('a83e75ced129421dbf11fab1f05cf8b4', '推销电话', '推销电话', '2', 'source');
INSERT INTO `tbl_dic_value` VALUES ('ab8472aab5de4ae9b388b2f1409441c1', '常规', '常规', '5', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('ab8c2a3dc05f4e3dbc7a0405f721b040', '05提案/报价', '05提案/报价', '5', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('b924d911426f4bc5ae3876038bc7e0ad', 'web下载', 'web下载', '12', 'source');
INSERT INTO `tbl_dic_value` VALUES ('c13ad8f9e2f74d5aa84697bb243be3bb', '03价值建议', '03价值建议', '3', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('c83c0be184bc40708fd7b361b6f36345', '最低', '最低', '4', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('db867ea866bc44678ac20c8a4a8bfefb', '员工介绍', '员工介绍', '3', 'source');
INSERT INTO `tbl_dic_value` VALUES ('e44be1d99158476e8e44778ed36f4355', '04确定决策者', '04确定决策者', '4', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('e5f383d2622b4fc0959f4fe131dafc80', '女士', '女士', '3', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('e81577d9458f4e4192a44650a3a3692b', '06谈判/复审', '06谈判/复审', '6', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('fb65d7fdb9c6483db02713e6bc05dd19', '在线商场', '在线商场', '5', 'source');
INSERT INTO `tbl_dic_value` VALUES ('fd677cc3b5d047d994e16f6ece4d3d45', '公开媒介', '公开媒介', '7', 'source');
INSERT INTO `tbl_dic_value` VALUES ('ff802a03ccea4ded8731427055681d48', '外部介绍', '外部介绍', '4', 'source');

-- ----------------------------
-- Table structure for tbl_tran
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tran`;
CREATE TABLE `tbl_tran` (
  `id` char(32) NOT NULL,
  `owner` char(32) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `expectedDate` char(10) DEFAULT NULL,
  `customerId` char(32) DEFAULT NULL,
  `stage` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `activityId` char(32) DEFAULT NULL,
  `contactsId` char(32) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_tran
-- ----------------------------
INSERT INTO `tbl_tran` VALUES ('0c37b20bac6f4fc98c0f692f2105e503', '40f6cdea0bd34aceb77492a1656d9fb3', '1000', '阿里巴巴1', '2022-03-07', '491d87a5d805496ca73e44315947d287', '02需求分析', '已有业务', 'web下载', '007589dc1f334593bcd4f24125e05d4c', 'd7cb781aca5a4b6daebeaa9fae776838', '张三', '2022-03-07 10:57:36', '张三', '2022-03-12 15:51:04', '描述123', '纪要123', '2022-03-15');
INSERT INTO `tbl_tran` VALUES ('0c37b20bac6f4fc98c0f692f2105e50a', null, null, null, null, null, '08丢失的线索', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_tran` VALUES ('0c37b20bac6f4fc98c0f692f2105e50b', null, null, null, null, null, '08丢失的线索', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_tran` VALUES ('0c37b20bac6f4fc98c0f692f2105e50c', null, null, null, null, null, '05提案/报价', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_tran` VALUES ('0c37b20bac6f4fc98c0f692f2105e50d', null, null, null, null, null, '06谈判/复审', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_tran` VALUES ('0c37b20bac6f4fc98c0f692f2105e50e', null, null, null, null, null, '06谈判/复审', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_tran` VALUES ('0c37b20bac6f4fc98c0f692f2105e50f', null, null, null, null, null, '06谈判/复审', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_tran` VALUES ('0c37b20bac6f4fc98c0f692f2105e50g', null, null, null, null, null, '06谈判/复审', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_tran` VALUES ('0c37b20bac6f4fc98c0f692f2105e50h', null, null, null, null, null, '02需求分析', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_tran` VALUES ('fe2b9c345fdb4c848d4d7d2c509f0aab', '40f6cdea0bd34aceb77492a1656d9fb3', '1000', '1000交易', '2022-03-07', 'e2e65237b61d40e1a4e6fb84ccd38285', '07成交', '新业务', '外部介绍', '007589dc1f334593bcd4f24125e05d4c', 'd7cb781aca5a4b6daebeaa9fae776838', '张三', '2022-03-07 11:00:21', null, null, null, '123', '2022-03-08');

-- ----------------------------
-- Table structure for tbl_tran_history
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tran_history`;
CREATE TABLE `tbl_tran_history` (
  `id` char(32) NOT NULL,
  `stage` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `expectedDate` char(10) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `tranId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_tran_history
-- ----------------------------
INSERT INTO `tbl_tran_history` VALUES ('013f8d8884a3402a8fe3b6fdbba61a02', '06谈判/复审', '1000', '2022-03-07', '2022-03-12 15:48:15', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('0316eaf14fca4ba88bd9d7bb616e3633', '04确定决策者', '1000', '2022-03-07', '2022-03-11 21:55:44', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('03d179fe98654218be5ce1ba7f7d8c6f', '05提案/报价', '1000', '2022-03-07', '2022-03-12 11:06:11', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('044c7b2cfa0c466c9ae79ae4d8444468', '06谈判/复审', '1000', '2022-03-07', '2022-03-12 13:48:44', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('09ef8e69906c4cb3ae60f5e9f1667c90', '09因竞争丢失关闭', '1000', '2022-03-07', '2022-03-12 15:49:51', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('0ea82938d66049fe8f20b12f2840e104', '04确定决策者', '1000', '2022-03-07', '2022-03-12 15:49:52', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('10ee0600af42486cb3db68fe0338ba60', '06谈判/复审', '1000', '2022-03-07', '2022-03-12 13:48:43', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('147919dfd9b54f5b897a07912f35ae16', '08丢失的线索', '1000', '2022-03-07', '2022-03-12 15:48:17', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('1703644b56c44e6a94e3b8510289cb91', '03价值建议', '1000', '2022-03-07', '2022-03-12 15:49:55', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('3f86db52f6fd44e3aeff1826ae9d5834', '06谈判/复审', '1000', '2022-03-07', '2022-03-11 21:58:53', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('48aab68037324dada1e79268776ba3e8', '06谈判/复审', '1000', '2022-03-07', '2022-03-12 11:00:55', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('4c5cbe15e9f3480b8baf49faaa45d694', '05提案/报价', '1000', '2022-03-07', '2022-03-07 11:00:21', '张三', 'fe2b9c345fdb4c848d4d7d2c509f0aab');
INSERT INTO `tbl_tran_history` VALUES ('4da2f41af81647e1982405cace499154', '04确定决策者', '1000', '2022-03-07', '2022-03-12 15:31:29', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('4df441104ead4a0b90a94fab9b700864', '08丢失的线索', '1000', '2022-03-07', '2022-03-12 15:51:03', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('531dbdc6e1ce4b59b3ab380dc06574ed', '07成交', '1000', '2022-03-07', '2022-03-11 21:55:25', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('5a6f024d3b2a4dde81eee014b41b8c0f', '04确定决策者', '1000', '2022-03-07', '2022-03-12 11:06:06', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('5d0a352b754b4728ac3feda7c0697d4c', '03价值建议', '1000', '2022-03-07', '2022-03-12 13:34:25', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('6b85a4d0fddf4adb989443af9f01e56f', '04确定决策者', '1000', '2022-03-07', '2022-03-12 15:48:18', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('6e45c762ac6345af81ae0474db853eab', '03价值建议', '1000', '2022-03-07', '2022-03-07 10:57:36', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('70d78a8fb28f499ab67ebc4c9ff567b0', '09因竞争丢失关闭', '1000', '2022-03-07', '2022-03-12 15:49:53', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('750ab13e138c48a4be3671638444c0e6', '09因竞争丢失关闭', '1000', '2022-03-07', '2022-03-12 15:48:23', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('7516958b57b546958d5b1d09be1dbe4b', '06谈判/复审', '1000', '2022-03-07', '2022-03-12 13:48:43', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('90d14c3c0e9f44e19b13ae9bdfe1fdfe', '05提案/报价', '1000', '2022-03-07', '2022-03-11 21:58:45', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('a0b49e172f6d403bacecbd0cade642be', '05提案/报价', '1000', '2022-03-07', '2022-03-12 15:48:13', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('a1aa243881034165ac14e7f6dc7c97c1', '04确定决策者', '1000', '2022-03-07', '2022-03-12 15:49:50', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('a7cc7bed5b0d4edbb2e80f60c46207f4', '03价值建议', '1000', '2022-03-07', '2022-03-11 21:55:08', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('ab3fb7e3156244af81162272884b15a4', '08丢失的线索', '1000', '2022-03-07', '2022-03-12 15:49:49', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('b2182eb0d0c84267bc17021f19bcd9dd', '03价值建议', '1000', '2022-03-07', '2022-03-12 11:06:03', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('bf929753a89f4652835c32b766c58ec5', '04确定决策者', '1000', '2022-03-07', '2022-03-12 15:51:04', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('c10a54a37f0549b5bf568c6d2061990d', '06谈判/复审', '1000', '2022-03-07', '2022-03-12 13:48:44', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('c23c5733d95240938db8b5f08f3a46a9', '03价值建议', '1000', '2022-03-07', '2022-03-12 13:34:29', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('c98f1a7e64b9482193740d161d7276fb', '05提案/报价', '1000', '2022-03-07', '2022-03-12 11:04:43', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('cbb81b5f728c48fa8aa1e2a45073657c', '04确定决策者', '1000', '2022-03-07', '2022-03-11 21:59:38', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('cdb6b21a8f404e1484ab6e121f5681c1', '05提案/报价', '1000', '2022-03-07', '2022-03-11 21:59:42', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('d4288611a0f44eca9773a4939a0bb80c', '02需求分析', '1000', '2022-03-07', '2022-03-11 21:58:55', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('d58f6605b4a847729875f3f0f41818b0', '04确定决策者', '1000', '2022-03-07', '2022-03-12 15:48:24', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('e4a9a5e503e94fdd9f86faabc910e7e0', '04确定决策者', '1000', '2022-03-07', '2022-03-12 13:34:30', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('e4ac8e69113f4fff9d195de02f068cb6', '04确定决策者', '1000', '2022-03-07', '2022-03-12 13:34:27', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('e7b72ba80ab14cc486c97906b877ec97', '09因竞争丢失关闭', '1000', '2022-03-07', '2022-03-12 15:49:54', '张三', '0c37b20bac6f4fc98c0f692f2105e503');
INSERT INTO `tbl_tran_history` VALUES ('fe4517ed7eb64382a40aaaad0a1411e1', '03价值建议', '1000', '2022-03-07', '2022-03-12 15:31:06', '张三', '0c37b20bac6f4fc98c0f692f2105e503');

-- ----------------------------
-- Table structure for tbl_tran_remark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tran_remark`;
CREATE TABLE `tbl_tran_remark` (
  `id` char(32) NOT NULL,
  `noteContent` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editFlag` char(1) DEFAULT NULL,
  `tranId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_tran_remark
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` char(32) NOT NULL COMMENT 'uuid\r\n            ',
  `loginAct` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `loginPwd` varchar(255) DEFAULT NULL COMMENT '密码不能采用明文存储，采用密文，MD5加密之后的数据',
  `email` varchar(255) DEFAULT NULL,
  `expireTime` char(19) DEFAULT NULL COMMENT '失效时间为空的时候表示永不失效，失效时间为2018-10-10 10:10:10，则表示在该时间之前该账户可用。',
  `lockState` char(1) DEFAULT NULL COMMENT '锁定状态为空时表示启用，为0时表示锁定，为1时表示启用。',
  `deptno` char(4) DEFAULT NULL,
  `allowIps` varchar(255) DEFAULT NULL COMMENT '允许访问的IP为空时表示IP地址永不受限，允许访问的IP可以是一个，也可以是多个，当多个IP地址的时候，采用半角逗号分隔。允许IP是192.168.100.2，表示该用户只能在IP地址为192.168.100.2的机器上使用。',
  `createTime` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('06f5fc056eac41558a964f96daa7f27c', 'ls', '李四', '202cb962ac59075b964b07152d234b70', 'ls@163.com', '2023-11-27 21:50:05', '1', 'A001', '192.168.1.1', '2018-11-22 12:11:40', '李四', null, null);
INSERT INTO `tbl_user` VALUES ('40f6cdea0bd34aceb77492a1656d9fb3', 'zs', '张三', '202cb962ac59075b964b07152d234b70', 'zs@qq.com', '2023-11-30 23:50:55', '1', 'A001', '192.168.1.1,192.168.1.2,127.0.0.1', '2018-11-22 11:37:34', '张三', null, null);
