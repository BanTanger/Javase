CREATE TABLE `emp` (
	id INT,
	`name` VARCHAR(32),
	sex CHAR(1),
	brithday DATE,
	entry_date DATETIME,
	job VARCHAR(32),
	salary DOUBLE,
	`resume` TEXT) CHARSET utf8 COLLATE utf8_bin ENGINE INNODB;
	
-- 添加内容
INSERT INTO `emp` VALUES(100,'徐复回','男','2000-11-12','2022-10-21 11:11:11','砍价',3000,'你好我是流动贵');

SELECT * FROM `emp`;