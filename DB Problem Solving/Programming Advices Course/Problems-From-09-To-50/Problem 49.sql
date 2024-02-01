--Problem 49: Get the Lowest Manufacturers manufactured the lowest number of models


--Solution:
	SELECT Makes.Make , COUNT(*) AS 'NumberOfModels'
	FROM Makes 
	Join MakeModels
	ON MakeModels.MakeID = Makes.MakeID
	GROUP BY Makes.Make
	HAVING COUNT(*) IN 
		(
		SELECT MIN(NumberOfModels) 
		FROM(
			SELECT  Makes.Make, COUNT(MakeModels.ModelID) AS 'NumberOfModels'
			FROM Makes
			JOIN MakeModels
			ON MakeModels.MakeID = Makes.MakeID
			GROUP BY Makes.Make
			)R1
		);
