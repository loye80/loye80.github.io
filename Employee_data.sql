---WK1 SQL Queries 

CREATE TABLE Employees_Details (
		EmpId INT,
		Fullname VARCHAR(60),
		ManagerId INT,
		Date_of_Joining DATE,
		City VARCHAR(60)
		)

INSERT INTO Employees_Details (EmpId, Fullname, ManagerId, Date_of_Joining, City)
			VALUES (121, 'John Snow', 321, '01/31/2019', 'Toronto')

INSERT INTO Employees_Details (EmpId, Fullname, ManagerId, Date_of_Joining, City)
			VALUES (321, 'Walter White', 986, '01/30/2020', 'California')

INSERT INTO Employees_Details (EmpId, Fullname, ManagerId, Date_of_Joining, City)
			VALUES (655, 'Alex Brown', 955, '02/28/2020', 'London')

INSERT INTO Employees_Details (EmpId, Fullname, ManagerId, Date_of_Joining, City)
			VALUES (577, 'Chris George', 487, '02/04/2021', 'Manchester')

INSERT INTO Employees_Details (EmpId, Fullname, ManagerId, Date_of_Joining, City)
			VALUES (421, 'Kuldeep Rana', 876, '11/27/2021', 'New Delhi')

CREATE TABLE Employees_Salary (
		EmpId INT,
		Project VARCHAR(60),
		Salary INT,
		Variable INT
		)
INSERT INTO Employees_Salary (EmpId, Project, Salary, Variable)
			VALUES (121, 'P1', 8000, 500)

INSERT INTO Employees_Salary (EmpId, Project, Salary, Variable)
			VALUES (321, 'P2', 10000, 1000)

INSERT INTO Employees_Salary (EmpId, Project, Salary, Variable)
			VALUES (421, 'P1', 12000, 0)

INSERT INTO Employees_Salary (EmpId, Project, Salary, Variable)
			VALUES (655, 'P1', 14000, 500)

INSERT INTO Employees_Salary (EmpId, Project, Salary, Variable)
			VALUES (577, 'P2', 16000, 1000)


SELECT EmpId, Fullname
	FROM Employees_Details
	WHERE ManagerId = 986

SELECT Project 
	FROM Employees_Salary

SELECT COUNT(EmpId)
		FROM Employees_Salary
		WHERE Project = 'P1'

SELECT MIN(Salary) AS Min_Salary, MAX(Salary) AS Max_Salary, AVG(Salary) AS Avg_Salary
		FROM Employees_Salary

SELECT *
	FROM Employees_Salary
	WHERE Salary >= 9000 AND Salary <= 15000

SELECT *
	FROM Employees_Details
	WHERE City = 'Toronto' AND ManagerId = 321

SELECT *
	FROM Employees_Details
	WHERE City = 'California' OR ManagerId = 321

SELECT *
	FROM Employees_Salary
	WHERE Project != 'P1'

SELECT EmpId, Salary + Variable AS Total_Salary
	FROM Employees_Salary

SELECT *
	FROM Employees_Details
	WHERE Fullname LIKE '__hn%'

SELECT *
	FROM Employees_Details
	FULL OUTER JOIN Employees_Salary
	ON Employees_Details.EmpId = Employees_Salary.EmpId
