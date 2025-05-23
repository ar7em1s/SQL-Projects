-- Аverage sulphates for high-quality wines (quality > 6) vs. low-quality (quality <= 6).

SELECT ROUND(AVG(sulphates), 2) AS avg_sulphates, 
	quality,
	CASE WHEN quality > 6 THEN 'high-quality' ELSE 'low-quality' 
		END AS quality_group
FROM red_wine_quality
	GROUP BY quality
    ORDER BY quality DESC