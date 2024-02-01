--Problem 45: Get Number of Models Per Make

--Solution
	SELECT DISTINCT Makes.Make, COUNT(MakeModels.ModelID)  
	FROM Makes
	JOIN MakeModels
	ON Makes.MakeID = MakeModels.MakeID
	GROUP BY Makes.Make
	ORDER BY COUNT(MakeModels.ModelID) DESC;