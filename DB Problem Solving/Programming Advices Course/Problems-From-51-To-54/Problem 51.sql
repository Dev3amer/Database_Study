--Problem 51: Get all employees that have manager along with Manager's name.


--Solution
	SELECT Employees.* , M.Name AS 'Manager Name' FROM Employees
	JOIN Employees M
	ON M.EmployeeID = Employees.ManagerID;