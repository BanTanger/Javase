CREATE TABLE `employee` (
	id INT,
	`user_name` VARCHAR(32),
	# sex char(1),
	brithday DATE,
	entry_date DATETIME,
	job VARCHAR(60),
	salary DOUBLE,
	`resume` TEXT,image VARCHAR(32)) CHARSET utf8 COLLATE utf8_bin ENGINE INNODB;
	
-- 添加内容
INSERT INTO `employee` VALUES(100,'徐复回','2000-11-12','2022-10-21 11:11:11','砍价',3000,'你好我是流动贵');

INSERT INTO `employee` VALUES(12,'界王','2000-4-13','2000-10-13 10:10:10','牛逼',1540,'装逼');

SELECT * FROM `employee`;