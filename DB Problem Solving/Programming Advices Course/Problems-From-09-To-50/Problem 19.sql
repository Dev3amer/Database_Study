--Problem 19: Get total vehicles per DriveTypeName Per Make then filter only results with total > 10,000


--Solution:
	SELECT distinct Makes.Make, DriveTypes.DriveTypeName, Count(VehicleDetails.ID) AS 'TotalVehicles'
	FROM VehicleDetails
	JOIN Makes
	ON VehicleDetails.MakeID = Makes.MakeID
	JOIN DriveTypes
	ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
	GROUP BY Makes.Make, DriveTypes.DriveTypeName
	HAVING  Count(VehicleDetails.ID) > 10000
	ORDER BY Makes.Make ASC, Count(VehicleDetails.ID) DESC;