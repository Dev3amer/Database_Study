--Problem 17: Get total Makes that Mantufactures DriveTypeName=FWD



--Solution:
	SELECT count(DISTINCT Makes.Make)
	FROM VehicleDetails
	JOIN Makes
	ON VehicleDetails.MakeID = Makes.MakeID
	JOIN DriveTypes
	ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
	WHERE DriveTypes.DriveTypeName='FWD';


--Instructor Solution:
	select count(*) MakeWithFWD from (
		SELECT distinct Makes.Make, DriveTypes.DriveTypeName
		FROM DriveTypes
		INNER JOIN VehicleDetails
		ON DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID 
		INNER JOIN Makes
		ON VehicleDetails.MakeID = Makes.MakeID
		Where DriveTypes.DriveTypeName ='FWD'
	) R1