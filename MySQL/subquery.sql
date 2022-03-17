// 查询和smith同一部门的所有员工信息

SELECT deptno
	FROM emp
	WHERE ename = 'SMITH'
	
	
SELECT * 
	FROM emp 
	WHERE deptno = (
		SELECT deptno
		FROM emp
		WHERE ename = 'SMITH'
	)
	

// 查询10号部门有哪些工作

SELECT DISTINCT job
	FROM emp
	WHERE deptno = 10
	
// 查询所有工作部门里员工的信息，排除十号部门本身
SELECT * 
	FROM emp 
	WHERE job IN (
		SELECT DISTINCT job
		FROM emp
		WHERE deptno = 10
	) AND deptno != 10