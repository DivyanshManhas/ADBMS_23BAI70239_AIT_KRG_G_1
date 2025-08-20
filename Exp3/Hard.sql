-- HARD

/*
	MERge two tables and get the lowest salary for comman people
*/

USE Exp3;

CREATE TABLE A(
	empID int PRIMARY KEY,
	Ename varchar(30),
	Salary int
)

CREATE TABLE B(
	empID int PRIMARY KEY,
	Ename varchar(30),
	Salary int
)

INSERT INTO A(empID, Ename, Salary) VALUES
(1, 'AA', 1000),
(2, 'BB', 300);


INSERT INTO B(empID, Ename, Salary) VALUES
(2, 'BB', 400),
(3, 'CC', 100);



SELECT U.empID, U.Ename, MIN(U.Salary) AS Salary
FROM 
	(
		SELECT A.empID,A.Ename, A.Salary FROM A
		UNION ALL
		SELECT B.empID,  B.Ename, B.Salary FROM B
	) as U
GROUP BY U.empID,U.Ename;