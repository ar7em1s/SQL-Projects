-- Top 10 wines with the highest alcohol content

SELECT * FROM red_wine_quality
	ORDER BY alcohol DESC
    LIMIT 10