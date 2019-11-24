/*
Navicat MySQL Data Transfer

Source Server         : scott
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : webx

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2019-11-24 12:14:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(40) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `categoty` varchar(40) DEFAULT NULL,
  `pnum` int(11) DEFAULT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('26ddd0c6-d7f2-4a83-b01b-286bb8c38420', '.net设计规范', '50', '计算机', '16', '/productImg/9/201911232248150343017.jpg', '');
INSERT INTO `products` VALUES ('3a0196b2-71c1-4d4d-a4e8-d1f875096f00', '网管员必备宝典', '20', '计算机', '15', '/productImg/4/3/0270eba2-2b48-48df-956b-0341204384d9.jpg', '计算机类');
INSERT INTO `products` VALUES ('3cdd01d2-95d4-4077-b512-ff4c3b340d6b', '学会宽容', '25', '文学', '5', '/productImg/9/201911241129592994076.jpg', '该书阐述了宽容是一种智慧和力量，是对生命的洞悉，是成长的绿荫，更是家庭幸福的秘诀。常用宽容的眼光看世界，事业、家庭和友谊才能稳固和长久。');
INSERT INTO `products` VALUES ('4dbac6bb-ac2a-4ea0-a62f-ea5a2fc2b3c2', '杜拉拉升职记', '54', '原版', '198', '/productImg/9/0QQ图片20191117221530.jpg', '职场生活');
INSERT INTO `products` VALUES ('67a44950-935a-4dac-953d-515fd92d8174', '时空穿行', '42', '科技', '200', '/productImg/12/12/6cc3c25b-2475-496e-9ad7-5e9491e7aaf8.jpg', '《时空穿行(中国乡村人类学世纪回访)》对20世纪80年代以来中国云南大理西镇、广东潮州凤凰村、华南茶山等八个代表性乡村田野进行调查，探讨了中国乡村文化的多样性、宗族制度、农民社会等课题。');
INSERT INTO `products` VALUES ('72c52302-cd1e-4a22-8ac8-dc300a915be5', '培育男孩', '59', '社科', '94', '/productImg/3/1/81967f4f-0a39-4b03-8ecc-053365a35605.jpg', '如何教育孩子');
INSERT INTO `products` VALUES ('79bbe618-d2f8-4081-b35a-62ebbe938b64', 'Java基础入门', '44.5', '计算机', '7', '/productImg/9/0/697a23d6-225a-41a3-8c20-7ab624265ecc.png', '《Java基础入门》从初学者的角度详细讲解了Java开发中重点用到的多种技术。全书共11章，包括Java开发环境的搭建及其运行机制、基本语法、面向对象的思想，采用典型翔实的例子、通俗易懂的语言阐述面向对象中的抽象概念。在多线程、常用API、集合、IO、GUI、网络编程章节中，通过剖析案例、分析代码结构含义、解决常见问题等方式，帮助初学者培养良好的编程习惯。最后，讲解了Eclipse开发工具，帮助初学者熟悉开发工具的使用。');
INSERT INTO `products` VALUES ('84c842da-16b6-4e87-953e-859a1ca62bab', '赢在影响力', '89', '励志', '47', '/productImg/2/8/acc9d557-f8c9-426b-9aec-50a5a7cf3960.jpg', '《赢在影响力：人际交往的学问》创造了全球出版史上空前的发行记录。它深深地触动着读者的神经，满足了他们在人性方面的需要，因此成为经济萧条后期超越流行的读物。它居高不下的销售记录一直持续至20世纪80年代，经历了几乎半个世纪。');
INSERT INTO `products` VALUES ('8740bee0-bfb8-4ba1-8f6e-b69310617db9', '大勇和小花的欧洲日记', '26', '生活百科', '100', '/productImg/3/0/3253aeee-5462-47d0-991c-afb568ab3b03.jpg', '《大勇和小花的欧洲日记》串起了欧洲文明的溯源之旅。从屹立在近现代艺术之巅的巴黎拾级而下，依次是蓬皮杜博物馆（现代艺术）、奥塞博物馆（印象派艺术）、卢浮宫博物馆（古典主义）。在这里，蒙娜丽莎向文艺复兴的故乡微笔，那是意大利的佛罗伦萨。达芬奇、米开朗琪罗、拉菲尔等巨匠们开创了文艺复兴运动，他们心中的圣地是希腊，似乎已到了起源。然而，这并未到头，与这源头对接的还有遥远的希腊神话，其中有大西洲的传说。在希腊小岛圣托里尼，你看见Atlantica酒店吗？那是人们为大西洲刻下的念想。');
INSERT INTO `products` VALUES ('880fdb00-6798-4302-962b-f337f3393802', 'Java Web程序开发入门', '44.5', '计算机', '100', '/productImg/9/3/eac105d4-4ab5-4af9-9061-e255016b79d9.png', '本书为Java Web开发入门教材，让初学者达到能够灵活使用Java语言开发Web应用程序的程度。为了让初学者易于学习，本书力求内容通俗易懂，讲解寓教于乐，同时针对书中的每个知识点，都精心设计了经典案例，让初学者真正理解这些知识点在实际工作中如何去运用。');
INSERT INTO `products` VALUES ('8c19d2e2-1020-425d-aeeb-56d3c1bc0a81', '谁动了我的奶酪', '26', '少儿', '200', '/productImg/14/11/ebcee924-7d42-43f8-b974-fbdb900bdb58.jpg', '儿童作品');
INSERT INTO `products` VALUES ('968df3a0-be4d-473e-85a8-d3466b4ca7c2', '别做正常的傻瓜', '18', '励志', '2', '/productImg/14/1/792116e7-6d83-4be4-b3e5-4dd11b0b4565.jpg', '本书结合了作者十余年的教学经验，融合了诺贝尔奖得主及其他学者数十年的研究成果，用深入浅出的方法帮助你发现自己决策中的误区，从而使你比大多数人少几分正常，多几分理性，本书所涉及的决策范围广，包括购买什么商品，和什么人结婚，雇用哪些员工，投资什么股票等等。除非你从不做决策，否则本书对你一定有所借鉴。');
INSERT INTO `products` VALUES ('9a7af97e-deea-417e-ad66-23ea755d2a51', '培育男孩', '25', '生活', '8', '/productImg/2/7/7ede11f8-3ff9-4c12-ad58-b1d5e0e72032.jpg', '本书是美国著名家庭问题和儿童教育问题专家、畅销书作家詹姆士·杜布森的新作。全书围绕值得令人类关注的培育男孩问题，讨论了家庭教育、学校教育、父母关爱，以及整个社会文化对男孩成长的影响。针对美国社会普遍存在的男孩教育问题，如父亲缺席、母亲上班、暴力泛滥、单亲家庭、同性恋、学校对男孩特点的忽视等等，提出了自己的看法和解决思路，具有很强的指导性和可操作性，是父母、教师和青年工作者的必读参考书。');
INSERT INTO `products` VALUES ('adc06981-0dc9-4006-b763-e6413ee93ac1', 'travelbook', '20', '外语', '20', '/productImg/15/1/5394df32-ed6e-4203-b9c0-fc175cfc187e.jpg', '');
INSERT INTO `products` VALUES ('bdb32537-8f2c-4ba2-a752-94fdc0e9a250', '经济案例解析', '35', '经营', '98', '/productImg/9/201911241131537122883.jpg', '');
INSERT INTO `products` VALUES ('bf66a00c-4a78-458b-93c8-08896ee14976', '美国纽约摄影学院摄影教材', '45', '艺术', '99', '/productImg/13/2/20788b05-d298-4a7c-91d9-370fb056f6a5.jpg', '艺术教材');
INSERT INTO `products` VALUES ('c85d68d3-5758-494e-8dcf-f4f84d852949', '系统分析师教程', '54', '考试', '300', '/productImg/5/11/e4d290ce-3355-466f-a51e-13c62552d2cb.jpg', '系统分析师');
INSERT INTO `products` VALUES ('cb22386f-0b77-454c-976f-d6417ad72613', '中国国家地理', '20', '学术', '20', '/productImg/2/0/2105fbe5-400f-4193-a7db-d7ebac389550.jpg', '《中国国家地理》，原名《地理知识》，是关于地理的月刊，该刊的文章和图片经常被中央及地方媒体转载。具有很强的可读性和收藏价值，国内外很多家图书馆已经把该刊作为重点收藏期刊。内容以中国地理为主，兼具世界各地不同区域的自然、人文景观和事件，并揭示其背景和奥秘，另亦涉及天文、生物、历史和考古等领域。是中国大陆著名的有关地理的杂志。因该社隶属中国科学院，有一大批自然地理和人文地理的专家学者作为该社顾问，同时还有许多战斗在科考第一线的工作者与杂志社保持着密切联系，因此具有很强的独家性和权威性。');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `userpwd` varchar(20) NOT NULL,
  `age` int(2) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('aaaa', 'aaaaaaaa', '11', '男', null, null);
INSERT INTO `user` VALUES ('lilili', '525252', '50', '男', null, null);
INSERT INTO `user` VALUES ('ls', '456123', '11', '女', '0', '222@163.com');
INSERT INTO `user` VALUES ('ss', '123456', '15', '男', '1', '1');
INSERT INTO `user` VALUES ('www', '123456', '15', '男', '19922', '15438549168@qq.com');
INSERT INTO `user` VALUES ('wwww', '123456', '15', '男', '11111', '1111');
INSERT INTO `user` VALUES ('zs', '123456', '14', '男', '22222', '111@qq.com');
