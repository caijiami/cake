SET NAMES UTF8;
DROP DATABASE IF EXISTS cake;
CREATE DATABASE cake CHARSET=UTF8;
USE cake;



--用户表 
CREATE TABLE cake_users(
    id INT,
    uname VARCHAR(100),
    phone VARCHAR(11),
    upwd VARCHAR(100),
    num INT
);
INSERT INTO cake_users VALUES
(1,'caijiami','13755855855','36964545qs',0),
(2,'mimimi','13755855855','caijiami',0);


--购物车表 
CREATE TABLE cake_shopp(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uid INT,
    lid INT,
    lname VARCHAR(100),
    price INT,
    count INT
);
INSERT INTO cake_shopp VALUES
(null,2,1,'黑森林拿破仑',398,4);

--footer图片  
CREATE TABLE cake_footer(
    id INT,
    src VARCHAR(100),
    lg VARCHAR(100)
);
INSERT INTO cake_footer VALUES
(1,'http://127.0.0.1:3000/img/weixin.png',''),
(2,'http://127.0.0.1:3000/img/weibo.png',''),
(3,'http://127.0.0.1:3000/img/gs.png',''),
(4,'http://127.0.0.1:3000/img/footer.png','');

-- 轮播数据库   carousel
CREATE TABLE cake_carousel(
    cid INT,
    title VARCHAR(48),
    src VARCHAR(100),
    number INT,
    data VARCHAR(30)
);
INSERT INTO cake_carousel VALUES
(1,'暂无','http://127.0.0.1:3000/img/index/lunbo1.jpg',1,'1'),
(2,'暂无','http://127.0.0.1:3000/img/index/lunbo2.jpg',1,'2'),
(3,'暂无','http://127.0.0.1:3000/img/index/lunbo3.jpg',1,'3'),
(4,'暂无','http://127.0.0.1:3000/img/index/lunbo4.jpg',1,'4'),
(5,'暂无','http://127.0.0.1:3000/img/index/lunbo5.jpg',1,'5');

--固定背景  fixation
CREATE TABLE cake_fixation(
    id INT,
    title VARCHAR(48),
    src VARCHAR(100),
    number INT
);
INSERT INTO cake_fixation VALUES
(1,'','http://127.0.0.1:3000/img/yun.png',1);


--主页分类导航  break
CREATE TABLE cake_break(
    id INT,
    title VARCHAR(48),
    src VARCHAR(100),
    number INT
);
INSERT INTO cake_break VALUES
(1,'','http://127.0.0.1:3000/img/index/nav1.jpg',1),
(2,'','http://127.0.0.1:3000/img/index/nav2.png',1),
(3,'','http://127.0.0.1:3000/img/index/nav3.png',1),
(4,'','http://127.0.0.1:3000/img/index/nav4.png',1),
(5,'','http://127.0.0.1:3000/img/index/nav5.png',1);

--主页楼层图片  floor
CREATE TABLE cake_floor(
    id INT,
    src VARCHAR(100),
    href VARCHAR(100)
);
INSERT INTO cake_floor VALUES
(1,'http://127.0.0.1:3000/img/index/1L1.jpg',''),
(2,'http://127.0.0.1:3000/img/index/2L1.jpg',''),
(3,'http://127.0.0.1:3000/img/index/3L1.jpg',''),
(4,'http://127.0.0.1:3000/img/index/4L1.jpg','');

--主页底部图片  floor
CREATE TABLE cake_event(
    id INT,
    src VARCHAR(100),
    href VARCHAR(100)
);
INSERT INTO cake_event VALUES
(1,'http://127.0.0.1:3000/img/index/activity1.jpg',''),
(2,'http://127.0.0.1:3000/img/index/activity2.png',''),
(3,'http://127.0.0.1:3000/img/index/activity3.jpg','');



--主页楼层内容蛋糕图片  content
CREATE TABLE cake_content(
    id INT,
    src VARCHAR(100),
    href VARCHAR(100),
    title VARCHAR(100),
    subhead VARCHAR(100),
    atype1 VARCHAR(100),
    atype2 VARCHAR(100),
    atype3 VARCHAR(100),
    price VARCHAR(100),
    number INT
);
INSERT INTO cake_content VALUES
(1,'http://127.0.0.1:3000/img/index/index1L1.png','http://127.0.0.1:3001/#/product?lid=1','黑森林拿破仑','樱桃酒味，从巧克力卷的缝隙飘出','情侣','热门','新品','¥398.00/2.0磅',1),
(2,'http://127.0.0.1:3000/img/index/index1L2.png','http://127.0.0.1:3001/#/product?lid=2','天使巧克力','一层新雪下，肉桂与松子香气弥散开来','情侣','热门','新品','¥328.00/2.0磅',1),
(3,'http://127.0.0.1:3000/img/index/index1L3.png','http://127.0.0.1:3001/#/product?lid=3','经典香草拿破仑','均一，轻褐的千层酥，三种“重组可能”','情侣','热门','新品','¥298.00/160g',1),
(4,'http://127.0.0.1:3000/img/index/index1L4.png','http://127.0.0.1:3001/#/product?lid=4','黛西的旅行','千阳号浮出水面','情侣','热门','新品','¥358.00/2.0磅',1),
(5,'http://127.0.0.1:3000/img/index/index2L1.png','http://127.0.0.1:3001/#/product?lid=5','拿破仑莓恋','新切的水果与刚折的玫瑰，甜美、渐浓','情侣','热门','新品','¥298.00/2.0磅',2),
(6,'http://127.0.0.1:3000/img/index/index2L2.png','http://127.0.0.1:3001/#/product?lid=6','百利派对','丰厚乳脂奶油，打入足量榴莲果肉','情侣','热门','新品','¥298.00/2.0磅',2),
(7,'http://127.0.0.1:3000/img/index/index2L3.png','http://127.0.0.1:3001/#/product?lid=7',' 尼诺','卡通定制撒粉，简单、柔软','情侣','热门','新品','¥298.00/2.0磅',2),
(8,'http://127.0.0.1:3000/img/index/index2L4.png','http://127.0.0.1:3001/#/product?lid=8','白色恋人','红枣奶油戚风，与姜撞奶慕斯','情侣','热门','新品','¥298.00/2.0磅',2),
(9,'http://127.0.0.1:3000/img/index/index3L1.png','http://127.0.0.1:3001/#/product?lid=7','尼诺','孩子的世界，简单到非黑即白。','情侣','热门','新品','¥298.00/2.0磅',3),
(10,'http://127.0.0.1:3000/img/index/index3L2.png','http://127.0.0.1:3001/#/product?lid=9','阳光心芒','密密配方芒果百香果慕斯夹心','情侣','热门','新品','¥198.00/2.0磅',3),
(11,'http://127.0.0.1:3000/img/index/index3L3.png','http://127.0.0.1:3001/#/product?lid=10','coco芭娜娜','冰淇淋口感，不同层次的酸与冰凉','情侣','热门','新品','¥298.00/2.0磅',3),
(12,'http://127.0.0.1:3000/img/index/index3L4.png','http://127.0.0.1:3001/#/product?lid=6','百利派对','椰子香气，蛋糕坯的颗粒感平衡奶油','情侣','热门','新品','¥298.00/2.0磅',3),
(13,'http://127.0.0.1:3000/img/index/index4L1.png','http://127.0.0.1:3001/#/product?lid=11','半熟芝士（原味）','多口味，精装小份','情侣','热门','新品','¥198.00/6个（6种口味）',4),
(14,'http://127.0.0.1:3000/img/index/index4L2.png','http://127.0.0.1:3001/#/product?lid=12','提拉米苏','白巧克力慕斯的甜，与黑巧克力酱的苦','情侣','热门','新品','¥298.00/2.0磅',4),
(15,'http://127.0.0.1:3000/img/index/index4L3.png','http://127.0.0.1:3001/#/product?lid=13','约瑟芬玫瑰','清香柠檬与乳酪夹心，微苦、微醺','情侣','热门','新品','¥298.00/2.0磅',4),
(16,'http://127.0.0.1:3000/img/index/index4L4.png','http://127.0.0.1:3001/#/product?lid=14','香溢新芝','马斯卡彭慕斯，叠加法国软芝士','情侣','热门','新品','¥298.00/2.0磅',4);


--拿破仑napoleon 
CREATE TABLE cake_napoleon(
    id INT,
    src VARCHAR(100),
    href VARCHAR(100),
    title VARCHAR(100),
    number INT
);
INSERT INTO cake_napoleon VALUES
(1,'http://127.0.0.1:3000/img/napoleon/1L1.png','','',1),
(2,'http://127.0.0.1:3000/img/napoleon/1L2.png','','',1),
(3,'http://127.0.0.1:3000/img/napoleon/1L3.png','','经典香草拿破仑',1),
(4,'http://127.0.0.1:3000/img/napoleon/1L4.png','','蓝莓轻乳拿破仑',1),
(5,'http://127.0.0.1:3000/img/napoleon/1L5.png','','拿破仑1893',1),
(6,'http://127.0.0.1:3000/img/napoleon/1L6.png','','',1),
(7,'http://127.0.0.1:3000/img/napoleon/1L7.png','','',1),
(8,'http://127.0.0.1:3000/img/napoleon/1L8.png','','',1),
(9,'http://127.0.0.1:3000/img/napoleon/2L1.png','','',2),
(10,'http://127.0.0.1:3000/img/napoleon/2L2.jpg','','',2),
(11,'http://127.0.0.1:3000/img/napoleon/2L3.png','','',2),
(12,'http://127.0.0.1:3000/img/napoleon/3L1.jpg','','',3),
(13,'http://127.0.0.1:3000/img/napoleon/3L2.png','','',3),
(14,'http://127.0.0.1:3000/img/napoleon/4L1.jpg','','',4),
(15,'http://127.0.0.1:3000/img/napoleon/4L2.png','','',4),
(16,'http://127.0.0.1:3000/img/napoleon/5L1.png','拿破仑4096的秘密','GMP制药标准的5°C恒温车间完美实现对制作温度的把握，独家创新的4096层酥皮极尽味觉诱惑',5),
(17,'http://127.0.0.1:3000/img/napoleon/5L2.jpg','','',5),
(18,'http://127.0.0.1:3000/img/napoleon/5L3.jpg','','',5),
(19,'http://127.0.0.1:3000/img/napoleon/5L4.jpg','','',5);


--活动中心activity
CREATE TABLE cake_activity(
    id INT,
    src VARCHAR(100),
    href VARCHAR(100),
    title VARCHAR(100),
    number INT
);
INSERT INTO cake_activity VALUES
(1,'http://127.0.0.1:3000/img/activity/banner.png','','',1),
(2,'http://127.0.0.1:3000/img/activity/1L1.png','','',2),
(3,'http://127.0.0.1:3000/img/activity/1L2.png','','',2),
(4,'http://127.0.0.1:3000/img/activity/1L3.png','','',2),
(5,'http://127.0.0.1:3000/img/activity/1L4.png','','',2),
(6,'http://127.0.0.1:3000/img/activity/1L5.png','','',2),
(7,'http://127.0.0.1:3000/img/activity/1L6.png','','',2),
(8,'http://127.0.0.1:3000/img/activity/1L7.png','','',2),
(9,'http://127.0.0.1:3000/img/activity/bg.jpg','','',2),
(10,'http://127.0.0.1:3000/img/activity/2L1.png','','',3),
(11,'http://127.0.0.1:3000/img/activity/2L2.png','','',3),
(12,'http://127.0.0.1:3000/img/activity/2L3.png','','',3),
(13,'http://127.0.0.1:3000/img/activity/2L4.png','','',3),
(14,'http://127.0.0.1:3000/img/activity/2L5.jpg','','',3),
(15,'http://127.0.0.1:3000/img/activity/2L6.png','','',3),
(16,'http://127.0.0.1:3000/img/activity/3L1.png','','',4),
(17,'http://127.0.0.1:3000/img/activity/3L2.png','','',4),
(18,'http://127.0.0.1:3000/img/activity/3L3.png','','',4),
(19,'http://127.0.0.1:3000/img/activity/3L4.png','','',4),
(20,'http://127.0.0.1:3000/img/activity/4L1.png','','',5),
(21,'http://127.0.0.1:3000/img/activity/4L2.png','','',5),
(22,'http://127.0.0.1:3000/img/activity/4L3.png','','',5),
(23,'http://127.0.0.1:3000/img/activity/foot-bg.jpg','','',6);


CREATE TABLE cake_reg(
    id INT,
    src VARCHAR(100),
    href VARCHAR(100),
    title VARCHAR(100),
    number INT
);
INSERT INTO cake_reg VALUES
(1,'http://127.0.0.1:3000/img/reg/user_bg.jpg','','',1),
(2,'http://127.0.0.1:3000/img/reg/icon_zfb.png','','',2),
(3,'http://127.0.0.1:3000/img/reg/icon_wb.png','','',2);

-- 商品表
CREATE TABLE cake_product(
    id INT,
    lid INT,
    bigSrc VARCHAR(100),
    href VARCHAR(100),
    title VARCHAR(100),
    subTitle VARCHAR(100),
    price VARCHAR(100)
);
INSERT INTO cake_product VALUES
(1,1,'http://127.0.0.1:3000/img/product/1_pc.jpg','La Forêt noir','','黑森林拿破仑','398.00'),
(2,2,'http://127.0.0.1:3000/img/product/2_pc.jpg','Gâteau des anges','','天使巧克力','328.00'),
(3,3,'http://127.0.0.1:3000/img/product/3_pc.jpg','Napoléon vanille','','经典香草拿破仑','298.00'),
(4,4,'http://127.0.0.1:3000/img/product/4_pc.jpg','Voyage de Daisy','','黛西的旅行','358.00'),
(5,5,'http://127.0.0.1:3000/img/product/5_pc.jpg','Napoléon aux fraises','','拿破仑莓恋','298.00'),
(6,6,'http://127.0.0.1:3000/img/product/6_pc.jpg','Soirée Bailay’s','','百利派对','298.00'),
(7,7,'http://127.0.0.1:3000/img/product/7_pc.jpg','Nino','','尼诺','298.00'),
(8,8,'http://127.0.0.1:3000/img/product/8_pc.jpg','Blanc Amant','','白色恋人','298.00'),
(9,9,'http://127.0.0.1:3000/img/product/9_pc.jpg','Le Soleil','','阳光心芒','198.00'),
(10,10,'http://127.0.0.1:3000/img/product/10_pc.jpg','Coco banana','','coco芭娜娜','298.00'),
(11,11,'http://127.0.0.1:3000/img/product/11_pc.jpg','fromage semi-fermenté original','','半熟芝士（原味）','198.00'),
(12,12,'http://127.0.0.1:3000/img/product/12_pc.jpg','Tiramisu','','提拉米苏','298.00'),
(13,13,'http://127.0.0.1:3000/img/product/13_pc.jpg','Joséphine','','约瑟芬玫瑰','298.00'),
(14,14,'http://127.0.0.1:3000/img/product/14_pc.jpg','Fromage Velouté','','香溢新芝','298.00'),
(15,15,'http://127.0.0.1:3000/img/product/15_pc.jpg','Napoléon aux myrtilles','','蓝莓轻乳拿破仑','298.00'),
(16,16,'http://127.0.0.1:3000/img/product/16_pc.jpg','Napoléon 1893','','拿破仑1893','298.00');













-- 商品图片表
CREATE TABLE cake_product_pic(
    id INT PRIMARY KEY,
    pid INT,
    sm VARCHAR(100),
    md VARCHAR(100),
    lg VARCHAR(100)
);
INSERT INTO cake_product_pic VALUES
(1,1,'http://127.0.0.1:3000/img/product/1_1_sm.jpg','http://127.0.0.1:3000/img/product/1_1_md.jpg','http://127.0.0.1:3000/img/product/1_1_lg.jpg'),
(2,1,'http://127.0.0.1:3000/img/product/1_2_sm.jpg','http://127.0.0.1:3000/img/product/1_2_md.jpg','http://127.0.0.1:3000/img/product/1_2_lg.jpg'),
(3,1,'http://127.0.0.1:3000/img/product/1_3_sm.jpg','http://127.0.0.1:3000/img/product/1_3_md.jpg','http://127.0.0.1:3000/img/product/1_3_lg.jpg'),
(4,2,'http://127.0.0.1:3000/img/product/2_1_sm.jpg','http://127.0.0.1:3000/img/product/2_1_md.jpg','http://127.0.0.1:3000/img/product/2_1_lg.jpg'),
(5,2,'http://127.0.0.1:3000/img/product/2_2_sm.jpg','http://127.0.0.1:3000/img/product/2_2_md.jpg','http://127.0.0.1:3000/img/product/2_2_lg.jpg'),
(6,2,'http://127.0.0.1:3000/img/product/2_3_sm.jpg','http://127.0.0.1:3000/img/product/2_3_md.jpg','http://127.0.0.1:3000/img/product/2_3_lg.jpg'),
(7,3,'http://127.0.0.1:3000/img/product/3_1_sm.jpg','http://127.0.0.1:3000/img/product/3_1_md.jpg','http://127.0.0.1:3000/img/product/3_1_lg.jpg'),
(8,3,'http://127.0.0.1:3000/img/product/3_2_sm.jpg','http://127.0.0.1:3000/img/product/3_2_md.jpg','http://127.0.0.1:3000/img/product/3_2_lg.jpg'),
(9,3,'http://127.0.0.1:3000/img/product/3_3_sm.jpg','http://127.0.0.1:3000/img/product/3_3_md.jpg','http://127.0.0.1:3000/img/product/3_3_lg.jpg'),
(10,4,'http://127.0.0.1:3000/img/product/4_1_sm.jpg','http://127.0.0.1:3000/img/product/4_1_md.jpg','http://127.0.0.1:3000/img/product/4_1_lg.jpg'),
(11,4,'http://127.0.0.1:3000/img/product/4_2_sm.jpg','http://127.0.0.1:3000/img/product/4_2_md.jpg','http://127.0.0.1:3000/img/product/4_2_lg.jpg'),
(12,4,'http://127.0.0.1:3000/img/product/4_3_sm.jpg','http://127.0.0.1:3000/img/product/4_3_md.jpg','http://127.0.0.1:3000/img/product/4_3_lg.jpg'),
(13,5,'http://127.0.0.1:3000/img/product/5_1_sm.jpg','http://127.0.0.1:3000/img/product/5_1_md.jpg','http://127.0.0.1:3000/img/product/5_1_lg.jpg'),
(14,5,'http://127.0.0.1:3000/img/product/5_2_sm.jpg','http://127.0.0.1:3000/img/product/5_2_md.jpg','http://127.0.0.1:3000/img/product/5_2_lg.jpg'),
(15,5,'http://127.0.0.1:3000/img/product/5_3_sm.jpg','http://127.0.0.1:3000/img/product/5_3_md.jpg','http://127.0.0.1:3000/img/product/5_3_lg.jpg'),
(16,6,'http://127.0.0.1:3000/img/product/6_1_sm.jpg','http://127.0.0.1:3000/img/product/6_1_md.jpg','http://127.0.0.1:3000/img/product/6_1_lg.jpg'),
(17,6,'http://127.0.0.1:3000/img/product/6_2_sm.jpg','http://127.0.0.1:3000/img/product/6_2_md.jpg','http://127.0.0.1:3000/img/product/6_2_lg.jpg'),
(18,6,'http://127.0.0.1:3000/img/product/6_3_sm.jpg','http://127.0.0.1:3000/img/product/6_3_md.jpg','http://127.0.0.1:3000/img/product/6_3_lg.jpg'),
(19,7,'http://127.0.0.1:3000/img/product/7_1_sm.jpg','http://127.0.0.1:3000/img/product/7_1_md.jpg','http://127.0.0.1:3000/img/product/7_1_lg.jpg'),
(20,7,'http://127.0.0.1:3000/img/product/7_2_sm.jpg','http://127.0.0.1:3000/img/product/7_2_md.jpg','http://127.0.0.1:3000/img/product/7_2_lg.jpg'),
(21,7,'http://127.0.0.1:3000/img/product/7_3_sm.jpg','http://127.0.0.1:3000/img/product/7_3_md.jpg','http://127.0.0.1:3000/img/product/7_3_lg.jpg'),
(22,8,'http://127.0.0.1:3000/img/product/8_1_sm.jpg','http://127.0.0.1:3000/img/product/8_1_md.jpg','http://127.0.0.1:3000/img/product/8_1_lg.jpg'),
(23,8,'http://127.0.0.1:3000/img/product/8_2_sm.jpg','http://127.0.0.1:3000/img/product/8_2_md.jpg','http://127.0.0.1:3000/img/product/8_2_lg.jpg'),
(24,8,'http://127.0.0.1:3000/img/product/8_3_sm.jpg','http://127.0.0.1:3000/img/product/8_3_md.jpg','http://127.0.0.1:3000/img/product/8_3_lg.jpg'),
(25,9,'http://127.0.0.1:3000/img/product/9_1_sm.jpg','http://127.0.0.1:3000/img/product/9_1_md.jpg','http://127.0.0.1:3000/img/product/9_1_lg.jpg'),
(26,9,'http://127.0.0.1:3000/img/product/9_2_sm.jpg','http://127.0.0.1:3000/img/product/9_2_md.jpg','http://127.0.0.1:3000/img/product/9_2_lg.jpg'),
(27,9,'http://127.0.0.1:3000/img/product/9_3_sm.jpg','http://127.0.0.1:3000/img/product/9_3_md.jpg','http://127.0.0.1:3000/img/product/9_3_lg.jpg'),
(28,10,'http://127.0.0.1:3000/img/product/10_1_sm.jpg','http://127.0.0.1:3000/img/product/10_1_md.jpg','http://127.0.0.1:3000/img/product/10_1_lg.jpg'),
(29,10,'http://127.0.0.1:3000/img/product/10_2_sm.jpg','http://127.0.0.1:3000/img/product/10_2_md.jpg','http://127.0.0.1:3000/img/product/10_2_lg.jpg'),
(30,10,'http://127.0.0.1:3000/img/product/10_3_sm.jpg','http://127.0.0.1:3000/img/product/10_3_md.jpg','http://127.0.0.1:3000/img/product/10_3_lg.jpg'),
(31,11,'http://127.0.0.1:3000/img/product/11_1_sm.jpg','http://127.0.0.1:3000/img/product/11_1_md.jpg','http://127.0.0.1:3000/img/product/11_1_lg.jpg'),
(32,11,'http://127.0.0.1:3000/img/product/11_2_sm.jpg','http://127.0.0.1:3000/img/product/11_2_md.jpg','http://127.0.0.1:3000/img/product/11_2_lg.jpg'),
(33,11,'http://127.0.0.1:3000/img/product/11_3_sm.jpg','http://127.0.0.1:3000/img/product/11_3_md.jpg','http://127.0.0.1:3000/img/product/11_3_lg.jpg'),
(34,12,'http://127.0.0.1:3000/img/product/12_1_sm.jpg','http://127.0.0.1:3000/img/product/12_1_md.jpg','http://127.0.0.1:3000/img/product/12_1_lg.jpg'),
(35,12,'http://127.0.0.1:3000/img/product/12_2_sm.jpg','http://127.0.0.1:3000/img/product/12_2_md.jpg','http://127.0.0.1:3000/img/product/12_2_lg.jpg'),
(36,12,'http://127.0.0.1:3000/img/product/12_3_sm.jpg','http://127.0.0.1:3000/img/product/12_3_md.jpg','http://127.0.0.1:3000/img/product/12_3_lg.jpg'),
(37,13,'http://127.0.0.1:3000/img/product/13_1_sm.jpg','http://127.0.0.1:3000/img/product/13_1_md.jpg','http://127.0.0.1:3000/img/product/13_1_lg.jpg'),
(38,13,'http://127.0.0.1:3000/img/product/13_2_sm.jpg','http://127.0.0.1:3000/img/product/13_2_md.jpg','http://127.0.0.1:3000/img/product/13_2_lg.jpg'),
(39,13,'http://127.0.0.1:3000/img/product/13_3_sm.jpg','http://127.0.0.1:3000/img/product/13_3_md.jpg','http://127.0.0.1:3000/img/product/13_3_lg.jpg'),
(40,14,'http://127.0.0.1:3000/img/product/14_1_sm.jpg','http://127.0.0.1:3000/img/product/14_1_md.jpg','http://127.0.0.1:3000/img/product/14_1_lg.jpg'),
(41,14,'http://127.0.0.1:3000/img/product/14_2_sm.jpg','http://127.0.0.1:3000/img/product/14_2_md.jpg','http://127.0.0.1:3000/img/product/14_2_lg.jpg'),
(42,14,'http://127.0.0.1:3000/img/product/14_3_sm.jpg','http://127.0.0.1:3000/img/product/14_3_md.jpg','http://127.0.0.1:3000/img/product/14_3_lg.jpg'),
(43,15,'http://127.0.0.1:3000/img/product/15_1_sm.jpg','http://127.0.0.1:3000/img/product/15_1_md.jpg','http://127.0.0.1:3000/img/product/15_1_lg.jpg'),
(44,15,'http://127.0.0.1:3000/img/product/15_2_sm.jpg','http://127.0.0.1:3000/img/product/15_2_md.jpg','http://127.0.0.1:3000/img/product/15_2_lg.jpg'),
(45,15,'http://127.0.0.1:3000/img/product/15_3_sm.jpg','http://127.0.0.1:3000/img/product/15_3_md.jpg','http://127.0.0.1:3000/img/product/15_3_lg.jpg'),
(46,16,'http://127.0.0.1:3000/img/product/16_1_sm.jpg','http://127.0.0.1:3000/img/product/16_1_md.jpg','http://127.0.0.1:3000/img/product/16_1_lg.jpg'),
(47,16,'http://127.0.0.1:3000/img/product/16_2_sm.jpg','http://127.0.0.1:3000/img/product/16_2_md.jpg','http://127.0.0.1:3000/img/product/16_2_lg.jpg'),
(48,16,'http://127.0.0.1:3000/img/product/16_3_sm.jpg','http://127.0.0.1:3000/img/product/16_3_md.jpg','http://127.0.0.1:3000/img/product/16_3_lg.jpg');












