--Problem 31: Get all Vehicle_Display_Name, year and add extra column to calculate the age of the car then sort the results by age desc.



--Solution:
	SELECT Vehicle_Display_Name, Year, Age = YEAR(GETDATE()) - Year
	FROM VehicleDetails
	ORDER BY Age DESC;