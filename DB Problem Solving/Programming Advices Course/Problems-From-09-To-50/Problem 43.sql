--Problem 43: Get Make and Total Number Of Doors Manufactured Per Make

--Solution
	SELECT Makes.Make, SUM(VehicleDetails.NumDoors) 
	FROM VehicleDetails
	JOIN Makes
	ON Makes.MakeID = VehicleDetails.MakeID
	GROUP BY Make
	ORDER BY SUM(VehicleDetails.NumDoors) DESC;