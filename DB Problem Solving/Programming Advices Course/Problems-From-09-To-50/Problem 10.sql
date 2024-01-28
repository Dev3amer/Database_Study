--Problem 10: Get all Makes that runs with GAS


--Solution:
	SELECT DISTINCT Makes.Make , FuelTypes.FuelTypeName
	FROM VehicleDetails
	JOIN Makes
	ON Makes.MakeID = VehicleDetails.MakeID
	JOIN FuelTypes
	ON VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
	WHERE FuelTypes.FuelTypeName='GAS';