--Problem 29: Return found=1 if there is any vehicle made in year 1950


--Solution:
	SELECT Found = 1
	WHERE EXISTS
	( 
		SELECT * FROM VehicleDetails
		WHERE Year=1950
	);