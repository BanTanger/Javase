SELECT worker.ename AS '职员名',boss.ename AS '上级名'
	FROM emp worker , emp boss
	WHERE worker.mgr = boss.empno;