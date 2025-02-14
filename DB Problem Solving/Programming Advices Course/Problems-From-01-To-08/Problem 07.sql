--Problem 7: Get number of vehicles made between 1950 and 2000 per make and add total vehicles column beside it, then calculate it's percentage


--Solution :
	SELECT *, Perc = (NumberOFVehicle * 1.0) / TotalVehicles FROM (
		SELECT Makes.Make ,COUNT(*) AS 'NumberOFVehicle' , (SELECT COUNT(*) FROM VehicleDetails) AS 'TotalVehicles'
		FROM VehicleDetails
		JOIN Makes
		ON Makes.MakeID = VehicleDetails.MakeID
		WHERE Year BETWEEN 1950 AND 2000
		GROUP BY Makes.Make
	) R1
	ORDER BY NumberOFVehicle DESC;

		
--Instructor Solution:
	SELECT *, CAST(NumberOFVehicle AS FLOAT) / CAST(TotalVehicles AS FLOAT) AS Perc FROM (
		SELECT Makes.Make ,COUNT(*) AS 'NumberOFVehicle' , (SELECT COUNT(*) FROM VehicleDetails) AS 'TotalVehicles'
		FROM VehicleDetails
		JOIN Makes
		ON Makes.MakeID = VehicleDetails.MakeID
		WHERE VehicleDetails.Year BETWEEN 1950 AND 2000
		GROUP BY Makes.Make
	) R1
	ORDER BY NumberOFVehicle DESC;