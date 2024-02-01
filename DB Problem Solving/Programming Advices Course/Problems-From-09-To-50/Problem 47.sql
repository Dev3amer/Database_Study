-- Problem 47: Get the highest number of models manufactured


--Solution:
	SELECT TOP 1 COUNT(MakeModels.ModelName) AS 'MaxNumberOfModels'
	FROM Makes
	JOIN MakeModels
	ON MakeModels.MakeID = Makes.MakeID
	GROUP BY Makes.Make
	ORDER BY COUNT(MakeModels.ModelName) DESC;