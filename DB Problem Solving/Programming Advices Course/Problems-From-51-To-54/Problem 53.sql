--Problem 53: Get all employees that have manager or does not have manager along with Manager's name, 
--incase no manager name the same employee name as manager to himself


--Solution
	SELECT Employees.* , 
	CASE 
		WHEN M.Name IS NULL THEN Employees.Name
		ELSE M.Name
	END AS 'Manager Name' FROM Employees
	LEFT JOIN Employees M
	ON M.EmployeeID = Employees.ManagerID;