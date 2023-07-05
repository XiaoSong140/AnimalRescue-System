/*
Navicat MySQL Data Transfer

Source Server         : song
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : animal_rescue

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2023-06-05 00:04:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity_apply
-- ----------------------------
DROP TABLE IF EXISTS `activity_apply`;
CREATE TABLE `activity_apply` (
  `id` varchar(32) NOT NULL,
  `volunteer_id` varchar(32) NOT NULL,
  `activity_id` varchar(32) NOT NULL,
  `volunteer_name` varchar(255) DEFAULT NULL,
  `activity_name` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `apply_time` varchar(255) DEFAULT NULL,
  `handle_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity_apply
-- ----------------------------
INSERT INTO `activity_apply` VALUES ('1c09b00c1a1f47bbbb50bb7c0325baed', 'cab52d3e51a34e1db0fdd7be31644cbf', 'ed111c32c1c6416da9deac08d661f411', '张三', '活动测试02', '1', '活动申请理由测试03', '通过', '2023-04-14 11:35:11', '2023-04-21 11:33:05');
INSERT INTO `activity_apply` VALUES ('45b237c6a0f842aea09810b7642f5e10', '5426cff5e2d1489e8f2ffcf8e33b5228', 'ed111c32c1c6416da9deac08d661f411', '小李', '活动测试02', '1', '活动申请理由测试02', '通过', '2023-04-14 11:34:43', '2023-04-21 11:32:54');
INSERT INTO `activity_apply` VALUES ('5b12a4177e3946f1b68f5d5e0903f875', '06fc7b6513ae48a793ef23ea6f8f72c2', 'ed111c32c1c6416da9deac08d661f411', '张鹏嵩', '活动测试02', '1', '申请理由测试01', '活动通过理由测试', '2023-04-14 00:54:09', '2023-04-14 13:02:34');
INSERT INTO `activity_apply` VALUES ('66da091a3a304cb6a5f616f0c224cada', '06fc7b6513ae48a793ef23ea6f8f72c2', '7e1fd47c88484c4b86372f7b9140fd64', '张鹏嵩', '志愿给小动物们喂食', '0', '喜欢小动物', '请求未处理', '2023-05-27 15:57:45', null);

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` varchar(32) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1111', 'zps', '1', '男');

-- ----------------------------
-- Table structure for adopt_apply
-- ----------------------------
DROP TABLE IF EXISTS `adopt_apply`;
CREATE TABLE `adopt_apply` (
  `id` varchar(32) NOT NULL,
  `adopt_user_name` varchar(255) DEFAULT NULL,
  `adopt_pet_name` varchar(255) DEFAULT NULL,
  `adopt_user_id` varchar(32) NOT NULL,
  `adopt_pet_id` varchar(32) NOT NULL,
  `adopt_introduction` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `apply_time` varchar(255) DEFAULT NULL,
  `handle_time` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adopt_apply
-- ----------------------------
INSERT INTO `adopt_apply` VALUES ('614bbb5540234f289842135df3efd047', '张三', '小乖', '13c86d65e69141be9ce0663ad8df7442', '99ddb6bd80dc4edd99718e4a3bce2630', 'lingyang', '给予通过', '2023-04-12 11:43:27', '2023-05-05 23:19:33', '1');
INSERT INTO `adopt_apply` VALUES ('6a634885b2514f469a7a8a15679be51e', '张大', '小小狗', 'd9635fe3936e43168a426ee58f4250ca', '4de3f8d04bba40e585c244e072ab27ef', '喜欢', '给你通过', '2023-04-10 18:50:34', '2023-04-11 18:37:11', '1');
INSERT INTO `adopt_apply` VALUES ('a543419e69a84223b01e1454a3bfb24c', '张三', '小Q', '13c86d65e69141be9ce0663ad8df7442', '9745d29caada498596f2c6bbf926ad74', 'ikun', '领养条件不符合', '2023-04-10 17:34:40', '2023-05-05 21:48:51', '-1');
INSERT INTO `adopt_apply` VALUES ('eeb2502332db4e16960eee43a330aeba', '张鹏嵩', '猪猪', '1', '2fc9692c93524da4b7248c16b2760418', '我感觉它跟我有缘', '拒绝', '2023-04-22 19:47:13', '2023-05-27 18:59:33', '-1');
INSERT INTO `adopt_apply` VALUES ('f431b6668e59493487b387150a7a1461', '张六六', '富贵', '9fb73509df7b48b9b9c2eb109c6605a9', 'fd9b058b9b054d129e771d76ff324a62', '有缘', '给予通过。', '2023-05-27 15:59:49', '2023-05-27 18:59:17', '1');

-- ----------------------------
-- Table structure for pet
-- ----------------------------
DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `kind` varchar(255) DEFAULT NULL,
  `age` char(4) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `nature` varchar(255) DEFAULT NULL,
  `flag` char(4) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `rescue_time` varchar(255) DEFAULT NULL,
  `adopt_time` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `adopter` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet
-- ----------------------------
INSERT INTO `pet` VALUES ('060999d8716a47c49a4b9dc8f87d3048', '长毛兔', '其他', '2', '雄性', '不怕狗狗，不怕人', '0', '小安工救助所', '2023-05-01', '', '已打疫苗，已绝育。\r\n村附近出现一只流浪的兔子，估计是被遗弃的，有人说要抓去吃掉，好心的村民不忍心就给我们联系，我们救助之后就给兔兔做了绝育。', 'uploadImages/d3556a870c40400a8fc03def9a624d27.png', '2023-05-06 13:47:09', null);
INSERT INTO `pet` VALUES ('1909eacd583b41fa93cfd42b7f4b94ff', '二黄', '狗狗', '1', '雄性', '调皮', '0', '小安工救助所', '2023-03-30', '', '1111', 'uploadImages/09b27bd71a154dac96b786b859f440b0.jpg', '2023-04-08 12:13:43', null);
INSERT INTO `pet` VALUES ('2fc9692c93524da4b7248c16b2760418', '猪猪', '猫咪', '1', '雄性', '温顺', '0', '小安工救助所', '2023-03-28', '', '已接种疫苗，特点就是很能吃', 'uploadImages/fc1dbd8c62e04e3a87405280e3f4b451.jpg', '2023-04-03 21:46:34', '');
INSERT INTO `pet` VALUES ('30d6becc92f24a2a92f81c4a759ffe9f', '笨笨', '狗狗', '1', '雄性', '安静', '0', '小安工救助所', '2023-04-12', '', '已打疫苗，已绝育。被发现在马路边乱跑，总是在旁边工地吃剩饭剩菜，因为工地即将完工，有工人打电话希望我们救助这个小狗，到基地之后取名：笨笨', 'uploadImages/a8b24719e9e64a8183243445a04b44aa.png', '2023-05-06 13:43:19', null);
INSERT INTO `pet` VALUES ('442f73e92cad4132a5a7bc49837287ec', '过来', '狗狗', '4', '雄性', '非常亲人', '0', '小安工救助所', '2023-04-30', '', '已打疫苗，已绝育。刚来的时候，大家都对它喊过来，它就以为这是它的名字，每次一喊过来就屁颠屁颠的过去，所以名字干脆就叫\"过来\"了.', 'uploadImages/bddb78c27f99426bbd04f61081952fe0.png', '2023-05-06 13:51:27', null);
INSERT INTO `pet` VALUES ('4de3f8d04bba40e585c244e072ab27ef', '小小狗', '猫咪', '3', '雄性', '温顺', '1', '小安工救助所', '2023-03-29', '2023-04-11 18:37:11', '222222222', 'uploadImages/abfb52c8900940cd89dbca93e172e180.jpg', '2023-04-08 12:23:13', 'd9635fe3936e43168a426ee58f4250ca');
INSERT INTO `pet` VALUES ('56e1b59b221c492c8d1a2f26c119847d', '橘座', '猫咪', '1', '雄性', '温顺', '1', '小安工救助所', '2023-03-28', '2023-04-19', '非常能吃', 'uploadImages/1e9ba77adeaa47f3bba5ac2d57f04d6e.png', '2023-04-03 22:12:14', '1');
INSERT INTO `pet` VALUES ('6dfa7ed05f76466ea89bcc9111d4ce26', '小虎', '狗狗', '4', '雄性', '温顺', '0', '小安工救助所', '2023-05-02', '', '小虎是以前一个老大爷在养的，后来老大爷生病后，没有办法再继续照顾狗狗，就委托我们，送到我们救助所安家生活。', 'uploadImages/ac88f8fd987449fca320fc26c0eaddc1.png', '2023-05-26 14:43:29', null);
INSERT INTO `pet` VALUES ('7322403314a347c2bbf0576e5fa106d9', '招财', '狗狗', '1', '雌性', '非常亲人', '0', '小安工救助所', '2023-04-06', '', '已打疫苗，已绝育。\r\n在村里面被救助，当时还是个小奶狗，起名“黑黑”，到基地以后饲养员改名“招财”。', 'uploadImages/6d057e74e6c448d3bb654142e91168da.png', '2023-05-06 13:36:37', null);
INSERT INTO `pet` VALUES ('9745d29caada498596f2c6bbf926ad74', '小O', '狗狗', '1', '雌性', '温顺', '0', '111', '2023-04-05', '', '已接种疫苗，被主人抛弃，流浪期间眼睛受伤，视力不好，性格很温顺', 'uploadImages/3cea31fec4574f7f89470f83d2991692.png', '2023-04-08 12:22:21', null);
INSERT INTO `pet` VALUES ('99ddb6bd80dc4edd99718e4a3bce2630', '小乖', '猫咪', '1', '雌性', '温顺', '1', '小安工救助所', '2023-03-28', '2023-05-05 23:19:33', '超级可爱', 'uploadImages/9db4b82da6524774b45b2076ca4ed1bc.png', '2023-04-03 21:30:32', '13c86d65e69141be9ce0663ad8df7442');
INSERT INTO `pet` VALUES ('9c43b76a468843c49efdff74849853e7', '大花', '猫咪', '3', '雄性', '活泼', '0', '小安工救助所', '2023-05-03', '', '已打疫苗。太过调皮导致家里孩子休息不好，被主人送到我们救助所，想找一位适合的领养人，猫咪名字叫大花，没有任何缺陷，就是调皮。', 'uploadImages/0976f6b6fa3545b8a115f99f1c8c6fbc.png', '2023-05-06 16:33:25', null);
INSERT INTO `pet` VALUES ('ad539d6d178145e69125cde88f5eece4', '大黄', '狗狗', '3', '雄性', '温顺', '1', '小安工救助所', '2023-03-27', '2023-04-14', '描述测试01', 'uploadImages/daf76c11fcb6436cb767a886635fd71f.png', null, '13c86d65e69141be9ce0663ad8df7442');
INSERT INTO `pet` VALUES ('db89dd0fe203465aa955cfece0835e98', '毛豆', '狗狗', '1', '雄性', '安静', '0', '小安工救助所', '2023-04-06', '', '已打疫苗，已经绝育，救助的时候右前腿受了伤，经过治疗已经痊愈，由于被抛弃的经历，有些怕人', 'uploadImages/233e6e4a312c458faea3aa8e55a073a4.jpg', '2023-04-12 16:54:16', null);
INSERT INTO `pet` VALUES ('e11815be749745718a9391d91ffeccb0', '花妹', '狗狗', '4', '雌性', '调皮', '0', '小安工救助所', '2023-02-16', '', '已打疫苗，已绝育。这是一只阿拉斯加花妹，当时是被救助人在万达外面的广场发现的，因为救助人不是本地人，所以联系到我们进行救助，我们救助后第一时间进行绝育，当时还很瘦，现在已经胖了一圈啦。', 'uploadImages/06e356c1811847f38dc19dfe298a6829.png', '2023-05-06 13:59:57', null);
INSERT INTO `pet` VALUES ('fd9b058b9b054d129e771d76ff324a62', '富贵', '猫咪', '6', '雄性', '非常亲人', '1', '小安工救助所', '2023-05-03', '2023-05-27 18:59:17', '已打疫苗。前主人的小孩对猫毛过敏没有办法下，联系我们，希望我们能帮忙找到领养人，猫咪名字叫富贵，美短，非常粘人，不闹。', 'uploadImages/60990ebff8a942f39613852276435270.png', '2023-05-06 14:08:17', '9fb73509df7b48b9b9c2eb109c6605a9');

-- ----------------------------
-- Table structure for rescue_case
-- ----------------------------
DROP TABLE IF EXISTS `rescue_case`;
CREATE TABLE `rescue_case` (
  `id` varchar(32) NOT NULL,
  `cover_img_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `content` text,
  `create_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rescue_case
-- ----------------------------
INSERT INTO `rescue_case` VALUES ('0e1d3015d41f4e349994069a072fa0ef', 'uploadImages/c4327d2fa36c4c6091a59dab9bf9a33b.png', '大黄', '大黄的救助之旅', '大黄是今年我们在大街上遇到的，那天下着大雨。我在路边看见大黄时它躲在一个角落里瑟瑟发抖，于是我们试着将大黄抱回了流浪之家。大黄好想知道我们想要帮它一样非常的听话，大黄刚回来时非常的胆小，经过半年多的相处大黄现在活泼的多，也没有刚来时那么的怕人了。', '2023-04-12 17:09:51');
INSERT INTO `rescue_case` VALUES ('2f1bf744b6664619b5bd90f5b19db413', 'uploadImages/4f3119e1f0ba4497b0b265b2bc25c256.jpg', '小基和小丫', '小基和小丫的救助之旅', '<div><h4>1.猫咪发生呕吐的时候怎么办？</h4></div><div><p>&nbsp;&nbsp;&nbsp;&nbsp; 首先要看猫咪是因为什么症状而发生这种情况的，吐毛球？肠胃不适？吃错东西？\r\n要看猫咪吐出的是什么，如果是毛球那就不需要大惊小怪，给猫咪买一些化毛膏之类的混在猫粮吃就可以，或者有化毛成分的猫粮，如果猫咪是吃错东西或者肠胃不适引起的可以禁食（包括水）不要心疼！24小时看看猫咪还会不会发生呕吐，然后再喂一些流质的食物（比如猫粮混点水泡软了）如果猫咪持续发生呕吐这个时候就可以带去医院了。 </p></div><div><h4>2.猫咪拉肚子怎么办？ </h4></div><div><p>&nbsp;&nbsp;&nbsp; 首先看猫咪拉的是血水、拉稀还是拉虫\r\n血水很可能是尿毒症、这个是非常重要的事情！楼主其中一只猫咪就因为这个问题没处理好所以。。。。去天堂了。。\r\n尿毒症的原因很有可能是因为猫咪摄入的水不够、还有就是猫粮不好！所以猫主买猫粮的时候一定要注意自己要试吃！要试试猫粮到底味道如何，如果是咸味的、或者是异味、油份太多的都不要选择，这个十分影响到猫咪的排泄系统！千万不要因为省那几块钱而让猫咪受苦受累。\r\n拉稀这一项请参考禁食24小时、还有可能是猫粮不适应\r\n拉虫不要紧张！因为这是猫主们没注意好3个月驱虫一次的好习惯，所以不要偷懒！不要觉得在家就木有虫了！！猫咪是很喜欢玩虫虫的= =我想起恐怖的经历了。。。买洗澡液也要买去虫的香波~~不要买那些什么免洗的、那些简直就是坑钱的、而且对猫咪皮肤不好的！！ <br></p><h4>3.关于猫粮、罐头、水</h4><p>&nbsp;&nbsp;&nbsp;&nbsp; 大家都觉得不晓得该怎么选择猫粮，也有人说天然粮非常好，当然非常好这个定义不是每一只猫都适合的。买猫粮首先要试吃（请参照2里的血水- -楼主懒。。）如果选择天然粮需要注意的是喂食天然粮千万不要直接一股脑只喂那个，天然粮很容易造成猫咪拉稀哦~~刚开始会吃不惯的~这个时候要混粮！混不是天然粮的猫粮一起吃。\r\n罐头！其实罐头！是一个很不好的垃圾食品！不要天天喂！什么时候喂呢？奖励的时候~过年过节的时候！少吃为妙！没有益处的亲，不要觉得猫粮吃不饱！一天2顿就ok了！过量是害了猫咪\r\n水的摄入量一定要多、要逼猫咪多喝水！！！喝水喝水！！<b>\r\nps：</b><i>猫咪很聪明它吃东西从来都是选择自己缺乏的那一项营养，所以猫主可以注意观察哟~~~当然零食那些要小心别被发现啦~~猫咪都是吃货= =吃货！！</i> <br></p><h4>4.猫咪剪指甲咋整 <br></h4><p>&nbsp;&nbsp;&nbsp; 年纪幼小的猫咪就ok，从小训练起剪指甲的好习惯！我非常反对拔猫咪的指甲，其实猫咪只要过了小时候调皮的时段，你要是教得好根本不会乱抓东西的！！首先摸摸猫咪反正就先把大爷弄开心了，然后偷偷剪一个指甲，如果不排斥恭喜你可以继续下去了，定时给它剪指甲他就不会抗拒了，如果年龄大的，比如一岁以后还没剪过的，楼主劝你真心放弃吧。 <br></p><p>&nbsp;&nbsp;&nbsp; <b>好了猫咪的暂时说到这，因为楼主有点想不起了~~如果大家以后有啥问题~~我帮的上的都会告诉你，当然楼主养的不是什么名贵的猫咪，如果是贵妇型的我就不晓得能不能帮的上忙了~~~</b></p></div><p><br></p>', '2023-04-12 17:13:03');
INSERT INTO `rescue_case` VALUES ('cf4227beb2ab4833b936a46169b83979', 'uploadImages/3ecd53d6e66a4967a9f0b9a3713fd286.png', '爱心市民张黎霞的故事', '在锡太公路的南侧，有一条不起眼的小石子路。这条小路通往一片用栅栏围住的小树林，再往里走，阡陌交通，猫犬相闻。  这里是流浪动物救助中心苏州常熟莫城基地。对于爱心市民张黎霞来说，这是理想之国，而对于里面收养的流浪动物来说，这是世外桃源。', '<p>\r\n\r\n</p><p><strong>家的样子</strong></p><p>张黎霞打开了救助中心的大门，一只高大的黑黄色土狗颠儿颠儿地跑过来。“黑背乖。”张黎霞戴上手套，抚摸它的背部，黑背顺从地看着她，眼神温柔。不远处的林子里，响起了一片犬吠——这里总共收留了100来只狗。</p><p>它们曾经流离失所，如今欢聚一堂“其乐融融”。铁丝围栏一半露天，一半在“室内”，狗狗们白天在铁丝网围起的林间跳跃玩闹，晚上就到大棚里的狗窝睡觉，那里遮风避雨，“床”上铺着好心人送来的棉被。南面的“蒙古包”是病房，生病的猫猫狗狗就被送到这里隔离，打针吃药。西边是育儿所——一整窝一整窝被捡回来的小奶狗在这里长大，张黎霞要负责四处给它们找“奶妈”，最多的时候，一只狗妈妈要喂9只小狗。</p><p>看到来人，狗狗们摇着尾巴隔着围栏看热闹，它们毛色不一大小不同，大多都是“中华田园犬”，黑的白的黄的，表情憨厚。也有一些是曾经价格不菲有“血统”的家伙：一人高的哈士奇扒着围栏直接站起来，露出一副呆呆的表情，它在这里叫“奇奇”；一只古代牧羊犬叫“凡凡”，曾因为打架导致胃反转重伤，被救助时医药费先后花了1万多元；在角落里还趴着一只“宠物狐狸”，它依然有着漂亮的皮毛，但因为受伤而永远瘫痪了。</p><p>“它们有的是没有用牵引绳，发情的时候走丢的，还有很多都是有过主人，却被遗弃的。”张黎霞说，有的是生病后被遗弃，有的是小时候长得可爱，长大不好看了就被丢弃了，还有没做绝育，生了小狗小猫后直接被扔掉的也很多。张黎霞和朋友们从各处将它们捡回这里，给它们治病，喂它们吃饭，现在它们大多活蹦乱跳的。</p><p><br></p><p><strong>爱的故事</strong></p><p>张黎霞也说不清楚自己是什么时候开始救助流浪动物的。她从小就喜欢养猫猫狗狗，因此对这些小生命有着特别的感情。“那时虞山脚下有好多被人遗弃的流浪猫狗，有两个阿姨三百六十多天风雨无阻去喂养流浪猫狗，我也经常跟她们一起。”因为她喂养流浪动物，她家门口一度成了流浪猫狗聚集的地方。</p><p>2016年的时候，她认识了在苏州市流浪动物救助中心的李峥，于是和一些常熟的爱心人士组建了一个动物援助微信群。那以后，有人发现常熟各处的流浪动物，就会通知她——有时候是风雨交加天寒地冻，有时候是半夜三更地址模糊，而她心疼那些动物，总会赶去，遇到需要救治的，还会发起众筹。一个群只有百来个人，人力财力都十分微薄，但大家依然咬牙坚持着。</p><p>有一次，有志愿者告诉她，一只狗被撞了，遗弃在一个洞中。等她下班后已是七八点，带着孩子赶到那里一看，是一只草狗，因为猛烈撞击，这只狗狗的两只眼睛全部爆出了眼眶，样子十分可怕。她用风衣包裹住这条瑟瑟发抖的生命，一脚油门开去了苏州宠物医院，狗狗虽然失去了眼睛，可是保住了性命。后来它被苏州一个好心的女孩收养，女孩贴心地给它买了一顶棒球帽，刚好遮住它空洞的眼窝。</p><p>还有一只狗，被她戏称为“狗坚强”，那是一个好心女孩一直喂养的流浪狗。一天女孩突然找不到它了，于是让张黎霞陪她一起寻找，谁知找到的时候它已经血肉模糊。狗狗一共进行了6次手术，失去了一只前爪，最后被一个好心人出资送到国外做了康复犬——它的工作是给人提供安慰和爱，帮助病人康复。“它有了个洋气的名字叫Celia，看到它在纽约的草坪上用三只脚奔走的时候，我很有成就感。”张黎霞说。</p><p><br></p><p><strong>梦的归宿</strong></p><p>对于张黎霞来说，在常熟市大地农业科技服务有限公司的蒋先生无偿将这片10亩多的林地借给她打造救助中心前，一切都是那么遥远。有了这片林子，才有了犬舍和救助站，后续接洽合作医院、建立救助团队才成为可能。他们还接洽了大方园等爱心餐馆，老板让员工将平时餐馆剩余的米饭和肉类分别打包，供应给流浪动物，以减少救助中心的开支。</p><p>尽管如此，这片林子并不是流浪动物最终的归宿，张黎霞希望帮流浪的狗狗们找到新的家。在流浪动物救助站的筹备过程中，张黎霞和群友还试过举办领养活动。今年春天在美城举办的一次活动中，她得到了一个免费展位，当时有10多只动物被收养，而回访记录表明，很多主人都对狗子们宠爱有加。不过，像这样免费参展的机会并不多。</p><p>“最理想的状况是，我们可以与一些宠物商店联办领养窗口，让爱心人士可以从窗口领养被救助的动物，而救助中心则承担定期回访的责任。这样，猫狗有了归宿，救助动物的成本也可以降下来。更理想的状况则是，人人都对自己的宠物尽到责任：包括遛狗牵绳、给宠物做好绝育、当它们生病时选择带它们去医院治疗而不是抛弃……”张黎霞说，虽然这很难，但这是她和群友努力在做的。</p>', '2023-04-18 13:30:35');
INSERT INTO `rescue_case` VALUES ('e69e0b0bfbbe42ae8c7c6e8fac0b9d48', 'uploadImages/b0cb80785b034e2ba0f3f4be6fe0cc14.jpg', '新救助一只狗狗，绝不放弃每一个生命', '新救助一只狗狗，绝不放弃每一个生命', '<p>\r\n\r\n</p><section>&nbsp;&nbsp;&nbsp;&nbsp; 今天呢，新救助了一只怀孕狗狗，听第一救助说，它从一个经常吃狗肉的家里跑出来，在底下车库生了一窝狗仔。这是一只非常聪明的狗狗，不仅保护了它自己，还安全地生下了七只小狗崽，现在它们已经安全地躺在了我们的小院里啦。看到这个结果真是幸福又满足。</section><section>&nbsp;&nbsp; &nbsp; &nbsp;其实很多人不太理解为什么去救助流浪动物们，觉得又脏又累，可是，如果有选择的话，谁又愿意流浪呢？有时候见到很多流浪动物在垃圾桶里找吃的，一些人看见就赶紧走开，好像看见了什么病毒似的，但其实它们只是想要活下去罢了。活着，看起来简单平常的两个字，它们却拼尽了全力。据报道，中国不完全统计的宠物狗数量为一亿多，而流浪狗的数量在四千多万左右，很可怕的数字吧。真的想大声呼吁，如果大家选择养一只宠物的话，就尽可能地不要抛弃它们，实在没有办法照顾它们了，可以选择转赠他人或是联系宠物机构，但一定一定不要随意抛弃它们。还是那句话，我们陪伴它们一生，但它们给予我们一生的忠诚。</section><section>&nbsp;&nbsp;&nbsp;&nbsp; 曾经看过一个关于韩红的采访，韩红姐姐，大家都知道，哪方需要支援，哪里就有她，不辞辛苦，风雨无阻。她曾表示：她本人也是养宠之人，她知道现在的市场有很多潜在问题，危害着宠物们的生命。她说:“猫猫狗狗比我们活的时间短很多，于宠物而言，我们是它们的一辈子，所以我们必须要用心去爱它们，保护它们，而且不需要回报。”</section><section>&nbsp; &nbsp;&nbsp;&nbsp; 我也希望这世上的每一个宠物都能感受到爱与温暖。它们每一个都觉得“原来食物是可以好吃足够的，雨天是可以有屋子的，而我们是可以不流浪的。”</section><section>&nbsp; &nbsp;&nbsp;&nbsp; 我们都是芸芸众生的一员，没有谁比谁更加高贵。而善良也不需要用金钱来衡量，一块钱也好，一万块钱也罢，本质都是那颗善良温暖金子般的心啊！善心一致，众志成城，感谢那些一路奔波一起奋斗的小伙伴，愿我们携手共同努力，为流浪动物们撑起一个家。如果你也有想法的话，请联系我们吧。</section>', '2023-04-18 15:06:45');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(32) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `work_place` varchar(255) DEFAULT NULL,
  `total_adopt` int(10) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `registration_time` char(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'song', '123', '张鹏嵩', '男', '25', '15639401400', '1402834164@qq.com', '河南郑州', '安阳工学院', '5', null, '2023-03-05 17:03:55');
INSERT INTO `user` VALUES ('13c86d65e69141be9ce0663ad8df7442', 'zs', '123', '张三', '男', '24', '15639401400', '15639401400@163.com', '河南安阳', '安阳工学院', '3', null, '2023-04-08 02:34:06');
INSERT INTO `user` VALUES ('89a7efa37b004ada85d803be053e6b22', 'liuda', '123', '刘大', '男', null, '13698754431', '13698754431@163.com', '安徽合肥', '安阳师范学院', null, null, '2023-04-17 22:08:09');
INSERT INTO `user` VALUES ('9550440e772a4d4593a2d75f29a4cd09', 'wanger', '123456', '王二', '女', '30', '15635481804', '15635481804@163.com', '河南周口', '安阳工学院', '0', null, '2023-04-08 02:42:58');
INSERT INTO `user` VALUES ('9fb73509df7b48b9b9c2eb109c6605a9', 'zll', '111', '张六七', '男', '20', '15539401400', '15539401400@163.com', '河南安阳', '安阳工学院', '2', null, '2023-05-27 15:58:56');
INSERT INTO `user` VALUES ('c8e9ac13d5f641259d5d58fc3f4d79f0', 'zhang', '123', '张六', '男', '23', '15639401550', '', '河南郑州', '安阳工学院', '0', null, '2023-03-19 17:03:55');
INSERT INTO `user` VALUES ('d9635fe3936e43168a426ee58f4250ca', 'zd', '111', '张大', '男', '21', '15611111111', '15611111111@163.com', '河南安阳', '安阳工学院', '0', null, '2023-04-10 18:49:08');
INSERT INTO `user` VALUES ('fdc7c85f17704ad7993011f10b24a351', 'lisi', '123456', '李四', '男', '24', '15536981400', '15536981400@qq.com', '河南郑州', '安阳工学院', '0', null, '2023-04-08 02:37:59');

-- ----------------------------
-- Table structure for volunteer
-- ----------------------------
DROP TABLE IF EXISTS `volunteer`;
CREATE TABLE `volunteer` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `introduction` varchar(255) DEFAULT NULL,
  `apply_time` varchar(19) DEFAULT NULL,
  `handle_time` varchar(19) DEFAULT NULL,
  `activity_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of volunteer
-- ----------------------------
INSERT INTO `volunteer` VALUES ('06fc7b6513ae48a793ef23ea6f8f72c2', '张鹏嵩', '男', '15639401400', '1402834164@qq.com', '河南安阳', '1', '通过理由测试01', '申请理由测试', '2023-03-19 16:34:13', '2023-03-19 16:34:13', null);
INSERT INTO `volunteer` VALUES ('3cc5474312b4446f99a66e1bd491eff8', '张六六', '男', '15539401400', '15539401400@163.com', '河南安阳', '0', null, '喜欢小动物', '2023-05-27 15:56:57', null, null);
INSERT INTO `volunteer` VALUES ('5426cff5e2d1489e8f2ffcf8e33b5228', '小李', '女', '15634892518', '15634892518@163.com', '安徽合肥', '1', '管理员手动添加', '申请理由测试', '2023-04-07 17:56:32', '2023-04-07 17:56:32', null);
INSERT INTO `volunteer` VALUES ('78e4e8f4171c48bda2cc6ea7bd1eac13', '李四', '男', '16635874632', '16635874632@163.com', '河南周口', '-1', '拒绝理由测试01', '申请理由测试02', '2023-04-05 15:17:03', '2023-04-05 15:17:03', null);
INSERT INTO `volunteer` VALUES ('cab52d3e51a34e1db0fdd7be31644cbf', '张三', '男', '18965483549', '18965483549@163.com', '河南商丘', '1', '通过理由测试001', '申请理由测试01', '2023-04-05 15:12:25', '2023-04-05 15:12:25', 'ed111c32c1c6416da9deac08d661f411');

-- ----------------------------
-- Table structure for volunteer_activity
-- ----------------------------
DROP TABLE IF EXISTS `volunteer_activity`;
CREATE TABLE `volunteer_activity` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `need_people` int(11) DEFAULT NULL,
  `regist_people` int(11) DEFAULT NULL,
  `is_full` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `cover_img_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of volunteer_activity
-- ----------------------------
INSERT INTO `volunteer_activity` VALUES ('1f799bc6f6cd470f9e7a732c7fa1b0e5', '安工流浪动物喂养计划', '2023-04-17', '2023-04-18', '10', '0', '0', '安阳工学院', '喂养学校内的流浪动物，参与者需要穿戴严实，防止被抓伤。', '小安工救助所', '2023-04-17 16:30:10', 'uploadImages/3f71fa3af5534bd09c23dd21df397262.png');
INSERT INTO `volunteer_activity` VALUES ('5d59f7fff85e4f3698e4be96ac744c7c', '给小可爱们换新窝', '2023-04-14', '2023-04-15', '10', '0', '0', '小安工救助所', '给小安工救助所的小动物们换新窝，有洁癖的小伙伴慎入哦', '小安工救助所', '2023-04-22 17:25:31', 'uploadImages/e6484bb6ed834b5b85e75f79811b9d82.jpg');
INSERT INTO `volunteer_activity` VALUES ('7e1fd47c88484c4b86372f7b9140fd64', '志愿给小动物们喂食', '2023-04-17', '2023-04-18', '10', '0', '0', '小安师救助所', '给小安师救助所的小动物们喂食，切身感受喂养小动物的快乐，还可以跟小动物们一起玩耍，但要注意防止被抓伤哦。', '小安师救助所', '2023-04-22 17:27:39', 'uploadImages/a2e32393c66f47d797c756e99c3485ad.jpg');
INSERT INTO `volunteer_activity` VALUES ('ed111c32c1c6416da9deac08d661f411', '安工流浪动物喂养计划', '2023-03-29', '2023-03-30', '6', '3', '0', '安阳工学院', '主要喂养学校的小动物，注意防护，防止抓伤哦', '小安工救助所', '2023-04-13 16:06:01', 'uploadImages/9e39ab1d566649daa4e31750b21e74c7.png');
