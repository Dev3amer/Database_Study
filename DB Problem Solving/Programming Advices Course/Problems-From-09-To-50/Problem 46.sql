--Problem 46: Get the highest 3 manufacturers that make the highest number of models


--Solution:
	SELECT DISTINCT TOP 3 Makes.Make, COUNT(MakeModels.ModelID) AS "NumberOfModels" 
	FROM Makes
	JOIN MakeModels
	ON Makes.MakeID = MakeModels.MakeID
	GROUP BY Makes.Make
	ORDER BY COUNT(MakeModels.ModelID) DESC;