-- How many wines fall under each quality level.

SELECT COUNT(*) AS wine_count, quality AS wine_quality FROM red_wine_quality
	GROUP BY quality
    ORDER BY quality DESC