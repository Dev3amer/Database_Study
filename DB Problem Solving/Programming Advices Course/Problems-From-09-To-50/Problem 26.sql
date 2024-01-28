--Problem 26: Get all vehicles that their body is 'Sport Utility' and Year > 2020


--Solution: 
	SELECT * FROM VehicleDetails
	JOIN Bodies
	ON VehicleDetails.BodyID = Bodies.BodyID
	WHERE Bodies.BodyName = 'Sport Utility' AND Year > 2020; 