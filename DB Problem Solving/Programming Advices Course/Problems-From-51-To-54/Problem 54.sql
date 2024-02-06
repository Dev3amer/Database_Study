--Problem 54: Get All Employees managed by 'Mohammed'

--Solution
	SELECT Employees.* , M.Name AS 'Manager Name' FROM Employees
	LEFT JOIN Employees M
	ON M.EmployeeID = Employees.ManagerID
	WHERE M.Name = 'Mohammed';