-- Wines with low sugar but high quality (quality > 7)

SELECT * FROM red_wine_quality
	WHERE residual_sugar < 2 AND quality > 7