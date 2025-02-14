--Problem 22: Get percentage of vehicles that has no doors specified


--Solution:
	SELECT( 
	((SELECT COUNT(*) FROM VehicleDetails
	WHERE NumDoors IS NULL) * 1.0)
	/
	(SELECT COUNT(*) AS 'NumberOfUnkownDoors' FROM VehicleDetails)
	) AS PercentageOfNoDoors ;