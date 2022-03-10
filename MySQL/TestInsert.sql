# 练习insert 语句
-- 创建一张商品表goods(id int, goods_name varchar(32),price double);
-- 添加两条记录
CREATE TABLE goods (
	id INT,
	goods_name VARCHAR(10),
	price DOUBLE);
-- 添加数据
INSERT INTO goods (id,goods_name,price)
	VALUES(10,'idea',100);
INSERT INTO goods (id,goods_name,price)
	VALUES(20,'微笑',200);
	
SELECT * FROM goods