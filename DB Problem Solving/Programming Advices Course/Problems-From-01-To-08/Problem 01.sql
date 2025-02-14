--Problem 1: Create Master View


--Solution: 
	CREATE VIEW VehicleMasterDetails as
	SELECT V.ID, V.MakeID, Makes.Make, V.ModelID , MakeModels.ModelName, V.SubModelID, 
	SubModels.SubModelName, V.BodyID, Bodies.BodyName,
	V.Vehicle_Display_Name, V.Year, V.DriveTypeID, DriveTypes.DriveTypeName, V.Engine, V.Engine_CC, 	V.Engine_Cylinders,V.Engine_Liter_Display,
	V.FuelTypeID, FuelTypes.FuelTypeName, V.NumDoors
	FROM VehicleDetails V
	LEFT JOIN Makes
	ON V.MakeID = Makes.MakeID
	LEFT JOIN MakeModels
	ON V.ModelID = MakeModels.ModelID
	LEFT JOIN SubModels
	ON V.SubModelID = SubModels.SubModelID
	LEFT JOIN Bodies
	ON V.BodyID = Bodies.BodyID
	LEFT JOIN DriveTypes
	ON V.DriveTypeID = DriveTypes.DriveTypeID
	LEFT JOIN FuelTypes
	ON V.FuelTypeID = FuelTypes.FuelTypeID;