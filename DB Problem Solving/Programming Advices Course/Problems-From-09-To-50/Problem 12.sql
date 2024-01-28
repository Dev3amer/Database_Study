--Problem : Count Vehicles by make and order them by NumberOfVehicles from high to low.


--Solution: 
	SELECT Makes.Make , COUNT(VehicleDetails.ID)
	FROM VehicleDetails
	JOIN Makes
	ON Makes.MakeID = VehicleDetails.MakeID
	GROUP BY Makes.Make
	ORDER BY Count(VehicleDetails.ID) DESC;