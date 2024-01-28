--Problem 4 : Get number vehicles made between 1950 and 2000 per make and order them by Number Of Vehicles Descending


--Solution: 
	SELECT Makes.Make ,COUNT(*) AS 'NumberOFVehicle' 
	FROM VehicleDetails
	JOIN Makes
	ON Makes.MakeID = VehicleDetails.MakeID
	WHERE Year BETWEEN 1950 AND 2000
	GROUP BY Makes.Make
	ORDER BY COUNT(*) DESC;