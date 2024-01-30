--Problem 39: Get the maximum 3 Engine CC


--Solution:
	SELECT  DISTINCT TOP 3 Engine_CC FROM VehicleDetails
	ORDER BY Engine_CC DESC;