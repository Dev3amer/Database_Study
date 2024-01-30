--Problem 34: Get all vehicles that have the minimum Engine_CC


--Solution:
	SELECT * FROM VehicleDetails
	WHERE Engine_CC = (SELECT MIN(Engine_CC) FROM VehicleDetails);