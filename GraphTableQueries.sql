CREATE TABLE dbo.EmpNode(ID Int Identity(1,1),EMPNO NUMERIC(4) NOT NULL,ENAME VARCHAR(10),MGR NUMERIC(4),DNO INT) AS NODE

Select * from empNode

CREATE TABLE empReportsTo(Deptno int) AS EDGE 
INSERT INTO empReportsTo SELECT e.$node_id, m.$node_id ,e.dno FROM dbo.EmpNode e inner JOIN dbo.EmpNode m ON e.empno = m.mgr;

Select * from empReportsTo

Select Count(Distinct(EMPNO)) from (Select e1.EMPNO from EMP2 e1 join EMP2 e2 on e1.EMPNO=e2.MGR)e

Select m.EMPNO As mgrId,m.ENAME as mgrName,m.JOB as MJob ,e.EMPNO As employeeId,e.ENAME as EmployeeName,e.JOB as EJob
 From EMP2 e  join EMP2 m on e.MGR=m.EMPNO

Select * from EMP2	

Select m.EMPNO as EId,m.ENAME as EmployeeName,e.ENAME as manager,e.EMPNO as mId from Empnode e,
empNode m, empReportsTo r where match(e-(r)->m)

SELECT E.EMPNO,E.ENAME,E.MGR,E1.EMPNO,E1.ENAME,E1.MGR,E2.EMPNO,e2.ENAME,
E2.MGR FROM empnode e, empnode e1, empReportsTo m ,empReportsTo m1, empnode e2 WHERE MATCH (e-(m)->e1-(m1)->e2)


SELECT E.EMPNO,E.ENAME,E.MGR,E1.EMPNO,E1.ENAME,E1.MGR,E2.EMPNO,e2.ENAME,E2.MGR,E3.EMPNO,e3.ENAME,E3.MGR 
FROM empnode e, empnode e1, empReportsTo m ,empReportsTo m1, empnode e2,empReportsTo M2, empnode e3
 WHERE MATCH(e-(m)->e1-(m1)->e2-(m2)->e3)
 
 SELECT E.EMPNO,E.ENAME,E.MGR,E1.EMPNO,E1.ENAME,E1.MGR,E2.EMPNO,e2.ENAME,E2.MGR,E3.EMPNO,e3.ENAME,E3.MGR
FROM
empnode e, empnode e1, empReportsTo m ,empReportsTo m1, empnode e2, empReportsTo M2, empnode e3
WHERE
MATCH(e<-(m)-e1<-(m1)-e2<-(m2)-e3)

SELECT
E.EMPNO,E.ENAME,E.MGR,E1.EMPNO,E1.ENAME,E1.MGR,E2.EMPNO,e2.ENAME,E2.MGR,E3.EMPNO,e3.ENAME,E3.MGR
FROM
empnode e, empnode e1, empReportsTo m ,empReportsTo m1, empnode e2, empReportsTo M2, empnode e3
WHERE
MATCH(e<-(m)-e1<-(m1)-e2<-(m2)-e3)
and e.ename = 'ADAMS'



  











