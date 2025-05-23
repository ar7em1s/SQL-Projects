-- View called wine_summary that shows alcohol, pH, quality, and a calculated field: alcohol_to_sugar_ratio.
-- Column called acidity_level (Low/Medium/High) based on fixed_acidity ranges:
-- 		Low: < 6.5
-- 		Medium: 6.5–8.5
-- 		High: > 8.5

CREATE VIEW wine_summary AS
	SELECT alcohol, pH, quality, ROUND(alcohol / residual_sugar, 2) AS alcohol_to_sugar_ratio,
		CASE
			WHEN fixed_acidity > 12.5 THEN 'High'
			WHEN fixed_acidity BETWEEN 8.5 AND 12 THEN 'Medium'
			WHEN fixed_acidity < 8.5 THEN 'Low'
		END AS acidity_level
	FROM red_wine_quality


