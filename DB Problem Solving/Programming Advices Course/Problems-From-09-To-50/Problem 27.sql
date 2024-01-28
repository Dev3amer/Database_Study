--Problem 27: Get all vehicles that their Body is 'Coupe' or 'Hatchback' or 'Sedan'


--Solution: 
	SELECT * FROM VehicleDetails
	JOIN Bodies
	ON VehicleDetails.BodyID = Bodies.BodyID
	WHERE Bodies.BodyName IN('Coupe', 'Hatchback', 'Sedan'); 