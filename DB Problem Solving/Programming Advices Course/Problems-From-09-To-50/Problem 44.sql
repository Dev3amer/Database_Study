--Problem 44: Get Total Number Of Doors Manufactured by 'Ford'

--Solution
	SELECT Makes.Make, SUM(VehicleDetails.NumDoors) 
	FROM VehicleDetails
	JOIN Makes
	ON Makes.MakeID = VehicleDetails.MakeID
	GROUP BY Make
	HAVING Make = 'Ford';
