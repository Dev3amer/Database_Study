--Problem 13: Get all Makes/Count Of Vehicles that manufactures more than 20K Vehicles



--Solution:
	SELECT	Makes.Make ,COUNT(VehicleDetails.MakeID) AS 'NumberOfVehicles'
	FROM VehicleDetails
	JOIN Makes
	ON Makes.MakeID = VehicleDetails.MakeID
	group by Makes.Make
	HAVING COUNT(VehicleDetails.MakeID) > 20000
	ORDER BY COUNT(VehicleDetails.MakeID) DESC;