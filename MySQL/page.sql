-- 第1页
SELECT * FROM emp ORDER BY empno
	LIMIT 0,3
	
SELECT COUNT(DISTINCT mgr) FROM emp;


SELECT deptno, AVG(sal) AS avg_sal
	FROM emp
	GROUP BY deptno
	HAVING avg_sal > 1000 
	ORDER BY avg_sal DESC
	LIMIT 0,2
	
	
SELECT ename,sal,dname,emp.deptno
	FROM emp,dept 
	WHERE emp.deptno = dept.deptno AND emp.deptno = 10;

SELECT * FROM emp,dept

SELECT * FROM salgrade

SELECT ename,sal,grade 
	FROM emp,salgrade
	WHERE sal BETWEEN losal AND hisal;