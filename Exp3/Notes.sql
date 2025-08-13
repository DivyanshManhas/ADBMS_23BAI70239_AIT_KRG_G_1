/*

---------------- Exp :03 SUB-Queries ------------------

	1. NESTED Queries / Queries INSIDE a Queries
		
		Q1 (Q2 (Q3))

	2. Excution order : Q3 > Q2 > Q1

	3. The operators(CONNECTORS) used with SQL:
		
			1) =, <, >, != <>, : Sub resturn ONE output
			
			2) IN : SQL is returning more than one output
				WHERE city IN ('A', 'B', 'C')
			
			3) NOT in
			
			4) ANY (or)
			
			5) ALL (and)

	4. Types:-
			
			1) Scaler Sub-query: Returns only ONE output.

			2) Multi-Row Sub-query: Which return multipul rows.

			3) Self-Contained Sub-query: Independened on Outer Query.
					EG: Q1 (Q2 -> Q1)

			4) Co-Related Sub-query: Which has dependency on outer query
					1. We have to use ALIAS.
					2. It has more overhead.
					3. it is Avoided.

	5. Placement of sub-queries:
			
			1) SQ with WHERE
			2) SQ in SELECT
			3) SQ in JOIN



-- Find the second highest salary

SELECT MAX(Salary) FROM MyEmployees
WHERE Salary NOT IN (SELECT MAX(Salary) FROM MyEmployees);


-- Scaler Sub Query
SELECT * FROM MyEmployees
WHERE DEPT_ID IN  (SELECT ID FROM DEPT WHERE DEPT_NAME = 'Accounts');


-- Multi-Row Sub query
SELECT * FROM MyEmployees WHERE EmpName IN
(SELECT EmpName FROM MyEmployees);


-- Self contained SQ
SELECT * FROM MyEmployees
WHERE DEPT_ID IN  (SELECT ID FROM DEPT WHERE DEPT_NAME = 'Accounts'); --  That runs on it own :)


-- Co-Related SQ
SELECT * FROM MyEmployee AS E
WHERE E.Dept_Id IN
(SELECT D.ID FROM Dept AS D WHERE E.gender = 'Male');



-- ANY AND ALL

-- ANY
	
	SELECT * FROM Emp
	WHERE  Salary < ANY
	(SELECT Salary FROM Emp WHERE Emp = 'Amit' or Emp = 'Anil')

-- ALL
	
	SELECT * FROM Emp
	WHERE  Salary < ALL
	(SELECT Salary FROM Emp WHERE Emp = 'Amit' or Emp = 'Anil')

*/







