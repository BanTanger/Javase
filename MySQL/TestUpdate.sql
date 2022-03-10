-- 演示update语句
-- 将所有员工的薪水修改为5000元
UPDATE employee SET salary = 5000;
-- 将姓名为徐复回的员工薪水修改为3000元
UPDATE employee 
	SET salary = 3000
	WHERE user_name = '徐复回'
	
-- 将王柳的薪资增加1000元
INSERT INTO employee VALUES(200,'王柳','2000-12-12','2000-1-1 10:10:10','买菜',5000,'在超市买菜','d:\\a.jpg');

UPDATE employee 
	SET salary = salary + 1000
	WHERE user_name = '王柳'

 