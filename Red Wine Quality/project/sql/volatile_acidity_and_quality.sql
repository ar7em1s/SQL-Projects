-- Wines with volatile_acidity > 0.6 and quality more or equal to 7.

SELECT * FROM red_wine_quality
	WHERE volatile_acidity > 0.6 AND quality >= 7