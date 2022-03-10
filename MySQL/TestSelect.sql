# 演示delete 语句
-- 删除表中名称为 王柳 的记录
DELETE FROM employee
	WHERE user_name = '王柳';

-- 删除表中 所有 的记录
DELETE FROM employee;

SELECT * FROM employee

-- 删除表
DROP TABLE employee