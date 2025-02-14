--Problem 18: Get total vehicles per DriveTypeName Per Make and order them per make asc then per total Desc


--Solution:
	SELECT distinct Makes.Make, DriveTypes.DriveTypeName, Count(VehicleDetails.ID) AS 'TotalVehicles'
	FROM VehicleDetails
	JOIN Makes
	ON VehicleDetails.MakeID = Makes.MakeID
	JOIN DriveTypes
	ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
	GROUP BY Makes.Make, DriveTypes.DriveTypeName
	ORDER BY Makes.Make ASC, Count(VehicleDetails.ID) DESC;