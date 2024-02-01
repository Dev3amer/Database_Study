--Problem 41: Get all Makes that manufactures one of the Max 3 Engine CC

--Solution:
	SELECT Distinct Makes.Make
	FROM VehicleDetails 
	Join Makes 
	ON Makes.MakeID = VehicleDetails.MakeID
	WHERE Engine_CC IN (SELECT  DISTINCT TOP 3 Engine_CC FROM VehicleDetails
						ORDER BY Engine_CC DESC);