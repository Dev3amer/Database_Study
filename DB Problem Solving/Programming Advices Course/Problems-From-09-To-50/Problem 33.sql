--Problem 33: Get Minimum Engine CC , Maximum Engine CC , and Average Engine CC of all Vehicles


--Solution:
	SELECT MIN(Engine_CC) AS 'Minimum Engine CC', MAX(Engine_CC) AS 'Maximum Engine CC', AVG(Engine_CC) AS 'Average Engine CC'
	FROM VehicleDetails