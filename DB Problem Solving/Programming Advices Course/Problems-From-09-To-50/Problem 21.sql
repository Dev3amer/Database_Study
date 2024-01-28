--Problem 21: Get Total Vehicles that number of doors is not specified


--Solution:
	SELECT COUNT(*) AS 'NumberOfUnkownDoors' FROM VehicleDetails
	WHERE NumDoors IS NULL;