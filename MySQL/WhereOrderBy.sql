# 创建表
CREATE TABLE student(
	id INT,
	NAME VARCHAR(3),
	chinese INT,
	english INT,
	math INT);

INSERT INTO student(id,NAME,chinese,english,math) VALUES(1,'王伟',98,64,48);	
INSERT INTO student(id,NAME,chinese,english,math) VALUES(2,'松江',78,78,48);	
INSERT INTO student(id,NAME,chinese,english,math) VALUES(3,'张飞',87,67,15);	
INSERT INTO student(id,NAME,chinese,english,math) VALUES(4,'杜甫',44,42,87);	
INSERT INTO student(id,NAME,chinese,english,math) VALUES(5,'李白',78,34,45);	
INSERT INTO student(id,NAME,chinese,english,math) VALUES(6,'赵云',87,78,67);	
INSERT INTO student(id,NAME,chinese,english,math) VALUES(7,'欧阳修',100,15,97);	
INSERT INTO student(id,NAME,chinese,english,math) VALUES(8,'黄蓉',72,46,45);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(9,'王明',78,96,78);	

SELECT NAME AS "名字",chinese China,english English FROM student

-- 查询表中所有学生的信息
SELECT * FROM student
-- 查询表中所有学生的姓名和对应的英语成绩
SELECT `name`,english FROM student;

-- 统计所有同学的总分
SELECT `name`, (chinese + english + math) FROM student;

SELECT `name`,(chinese + english + math + 10) AS '总分' FROM student;

-- 查询英语成绩大于60分的人
SELECT	* FROM student WHERE english > 60;

-- 查询总分大于200的人
SELECT * FROM student WHERE (chinese + english + math) > 200;

-- 查询math大于60 并且（AND）id大于4的人
SELECT * FROM student WHERE id > 4 AND math > 60;

-- 查询英语成绩大于语文成绩的同学
SELECT * FROM student WHERE english > chinese;

-- 查询总分大于200，并且数学成绩小于语文成绩的同学
SELECT * FROM student WHERE (chinese + english + math) > 200 AND math < chinese AND `name` LIKE '黄%';

-- 查询语文分数在70 - 80 分的人
SELECT * FROM student WHERE chinese BETWEEN 70 AND 80;

-- 查询总分在189，190，191的人
SELECT * FROM student WHERE (chinese + english + math) IN(189,190,191);

-- 查询所有姓李，或者姓宋的人
SELECT * FROM student WHERE NAME LIKE '李%' OR '宋%';

-- 查询数学比语文多三十分的人
SELECT * FROM student WHERE (math - chinese) > 30;

SELECT `name`,(chinese + english + math + 10) AS '总分' FROM student
	WHERE `name` LIKE '王%'
	ORDER BY '总分'
 
