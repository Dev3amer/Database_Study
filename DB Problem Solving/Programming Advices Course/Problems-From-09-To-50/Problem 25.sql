--Problem 25: Get make and vehicles that the engine contains 'OHV' and have Cylinders = 4


--Solution: 
	SELECT Makes.Make , * FROM VehicleDetails
	JOIN Makes
	ON VehicleDetails.MakeID = Makes.MakeID
	WHERE Engine LIKE '%OHV%' AND Engine_Cylinders = 4; 