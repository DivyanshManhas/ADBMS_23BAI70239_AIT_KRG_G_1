-- Medium
-- JOIN EMPLOY

USE Exp2;

-- SELF JOIN

CREATE TABLE Employee(
	EmpID INT PRIMARY KEY,
	EmpName VARCHAR(30) NOT NULL,
	Department VARCHAR(30) NOT NULL,
	ManagerID INT NULL
);

ALTER TABLE Employee
ADD CONSTRAINT FK_Employee FOREIGN KEY (ManagerID) REFERENCES EMPLOYEE(EmpID);

INSERT INTO Employee (EmpID, EmpName, Department, ManagerID)
VALUES
(1, 'Alice', 'HR', NULL),        
(2, 'Bob', 'Finance', 1),
(3, 'Charlie', 'IT', 1),
(4, 'David', 'Finance', 2),
(5, 'Eve', 'IT', 3),
(6, 'Frank', 'HR', 1);



SELECT 
	E1.EmpID as [Employee_ID], E1.EmpName as [Employee_Name], E1.Department as [Employee_Department], 
	E2.EmpID as [Manager_ID], E2.EmpName as [Manager_Name], E2.Department as [Manager_Department]
FROM 
	Employee as E1
LEFT OUTER JOIN 
	Employee as E2
ON 
	E1.ManagerID = E2.EmpID;



