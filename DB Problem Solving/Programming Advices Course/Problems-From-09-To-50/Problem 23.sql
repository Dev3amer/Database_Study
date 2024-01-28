--Problem 23: Get MakeID , Make, SubModelName for all vehicles that have SubModelName 'Elite'



--Solution:
	SELECT DISTINCT VehicleDetails.MakeID, Makes.Make, SubModels.SubModelName
	FROM VehicleDetails
	JOIN Makes
	on VehicleDetails.MakeID = Makes.MakeID
	JOIN SubModels
	on VehicleDetails.SubModelID = SubModels.ModelID
	WHERE SubModels.SubModelName = 'Elite';