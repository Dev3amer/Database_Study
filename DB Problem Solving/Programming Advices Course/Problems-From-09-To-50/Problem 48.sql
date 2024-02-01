-- Problem 48: Get the highest Manufacturers manufactured the highest number of models


--Solution:
	SELECT TOP 1 Makes.Make, COUNT(MakeModels.ModelName) AS 'NumberOfModels'
	FROM Makes
	JOIN MakeModels
	ON MakeModels.MakeID = Makes.MakeID
	GROUP BY Makes.Make
	ORDER BY COUNT(MakeModels.ModelName) DESC;