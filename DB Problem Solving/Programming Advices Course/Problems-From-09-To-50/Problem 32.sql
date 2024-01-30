--Problem 32: Get all Vehicle_Display_Name, year, Age for vehicles that their age between 15 and 25 years old


--Solution:
	SELECT Vehicle_Display_Name, Year, Age = YEAR(GETDATE()) - Year
	FROM VehicleDetails
	WHERE (YEAR(GETDATE()) - Year) BETWEEN 15 AND 25;