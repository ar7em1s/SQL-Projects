-- Minimum, maximum, and average pH for the dataset.

SELECT MIN(pH) AS min_ph, 
		MAX(pH) AS max_ph, 
		ROUND(AVG(pH), 2) AS avg_pH 
FROM red_wine_quality