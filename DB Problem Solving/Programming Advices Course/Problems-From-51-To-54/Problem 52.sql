--Problem 52: Get all employees that have manager or does not have manager along with Manager's name,
--incase no manager name show null


--Solution
	SELECT Employees.* , M.Name AS 'Manager Name' FROM Employees
	LEFT JOIN Employees M
	ON M.EmployeeID = Employees.ManagerID;