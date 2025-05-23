-- Compare the average density and alcohol content between wines with quality = 5 and quality = 8.

SELECT quality, ROUND(AVG(density), 4) AS avg_density FROM red_wine_quality
	WHERE quality BETWEEN 5 AND 8
    GROUP BY quality
