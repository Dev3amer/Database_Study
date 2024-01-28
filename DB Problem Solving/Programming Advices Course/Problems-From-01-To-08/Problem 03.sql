--Problem 3 : Get number vehicles made between 1950 and 2000


--Solution: 
	SELECT COUNT(*) AS 'NumberOFVehicle' FROM VehicleDetails
	Where Year BETWEEN 1950 AND 2000