--Problem 30: Get all Vehicle_Display_Name, NumDoors and add extra column to describe number of doors by words, and if door is null display 'Not Set'


--Solution :
	SELECT Vehicle_Display_Name, NumDoors,
	CASE
	WHEN NumDoors = 1 THEN 'One Door'
	WHEN NumDoors = 2 THEN 'Two Door'
	WHEN NumDoors = 3 THEN 'Three Door'
	WHEN NumDoors = 4 THEN 'Four Door'
	WHEN NumDoors = 5 THEN 'Five Door'
	WHEN NumDoors = 6 THEN 'Six Door'
	WHEN NumDoors = 8 THEN 'Eight Door'
	WHEN NumDoors IS NULL THEN 'Not Set'
	ELSE 'UNKOWN'
	END AS 'NumberOfDoors'
	FROM VehicleDetails;