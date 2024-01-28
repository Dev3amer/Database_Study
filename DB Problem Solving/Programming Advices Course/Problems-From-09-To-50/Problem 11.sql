--Problem 11: Get Total Makes that runs with GAS


--Solution:
	SELECT COUNT(DISTINCT Makes.Make) AS 'TotalGASMakes'
	FROM VehicleDetails
	JOIN Makes
	ON Makes.MakeID = VehicleDetails.MakeID
	JOIN FuelTypes
	ON VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
	WHERE FuelTypes.FuelTypeName='GAS';