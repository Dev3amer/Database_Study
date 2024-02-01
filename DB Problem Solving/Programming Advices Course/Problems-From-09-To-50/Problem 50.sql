-- Problem 50: Get all Fuel Types , each time the result should be showed in random order


--Solution:
	SELECT * FROM FuelTypes
	ORDER BY NEWID();
