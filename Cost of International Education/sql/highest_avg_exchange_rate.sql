-- Which country has the highest average exchange rate (i.e., most expensive currency compared to USD)?

SELECT country, ROUND(AVG(exchange_rate), 2) AS avg_exchange_rate FROM edu_cost
	GROUP BY country
    ORDER BY avg_exchange_rate DESC
		LIMIT 10