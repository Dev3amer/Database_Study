--Problem 28: Get all vehicles that their body is 'Coupe' or 'Hatchback' or 'Sedan' and manufactured in year 2008 or 2020 or 2021


--Solution:
	SELECT * FROM VehicleDetails
	JOIN Bodies
	ON VehicleDetails.BodyID = Bodies.BodyID
	WHERE (Bodies.BodyName IN('Coupe', 'Hatchback', 'Sedan')) AND Year IN(2008, 2020, 2021); 