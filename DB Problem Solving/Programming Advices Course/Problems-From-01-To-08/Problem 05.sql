--Problem 5 : Get All Makes that have manufactured more than 12000 Vehicles in years 1950 to 2000


--Solution (01) Best Solution:

	SELECT Makes.Make ,COUNT(*) AS 'NumberOFVehicle' 
	FROM VehicleDetails
	JOIN Makes
	ON Makes.MakeID = VehicleDetails.MakeID
	WHERE Year BETWEEN 1950 AND 2000
	GROUP BY Makes.Make
	HAVING COUNT(*) > 12000
	ORDER BY COUNT(*) DESC; 

--Solution (02) Another One Without HAVING:
	SELECT * FROM ( 
		SELECT Makes.Make ,COUNT(*) AS 'NumberOFVehicle' 
		FROM VehicleDetails
		JOIN Makes
		ON Makes.MakeID = VehicleDetails.MakeID
		WHERE Year BETWEEN 1950 AND 2000
		GROUP BY Makes.Make
	) R1
	WHERE NumberOFVehicle > 12000
	ORDER BY NumberOFVehicle DESC
	