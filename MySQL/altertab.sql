# 修改表的操作
-- 员工表emp上增加一个image列，varchar类型，要求在resume后面
ALTER TABLE emp
	ADD image VARCHAR(32) NOT NULL DEFAULT ''
	AFTER RESUME
DESC emp; -- 显示表结构，查看表的所有列
-- 修改job列，让其长度变为60
ALTER TABLE emp
	MODIFY job VARCHAR(60) NOT NULL DEFAULT ''
	
-- 删除sex列
ALTER TABLE emp
	DROP sex
	
-- 修改表名为employee
RENAME TABLE emp TO employee
DESC employee;

-- 修改表的字符集为utf8
ALTER TABLE employee CHARACTER SET utf8

-- 将列名name修改成user_name
ALTER TABLE employee 
	CHANGE `name` `user_name` VARCHAR(64) NOT NULL DEFAULT ''
DESC employee