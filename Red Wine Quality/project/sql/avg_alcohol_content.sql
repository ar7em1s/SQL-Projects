-- What is the average alcohol content for each quality level?

SELECT ROUND(AVG(alcohol), 1) AS avg_alcohol_content, quality AS wine_quality FROM red_wine_quality
	GROUP BY quality
    ORDER BY quality DESC