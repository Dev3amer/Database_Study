--Problem 16: Get all Makes that manufactures DriveTypeName = FWD


--Solution:
	SELECT DISTINCT Makes.Make, DriveTypes.DriveTypeName
	FROM VehicleDetails
	JOIN Makes
	ON VehicleDetails.MakeID = Makes.MakeID
	JOIN DriveTypes
	ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
	WHERE DriveTypes.DriveTypeName='FWD';