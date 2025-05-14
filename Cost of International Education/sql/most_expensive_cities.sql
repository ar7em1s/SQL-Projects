-- Top 5 most expensive cities based on average Rent_USD.

SELECT city, ROUND(AVG(rent_USD), 2) AS avg_rent FROM edu_cost
	GROUP BY city
    ORDER BY avg_rent DESC
		LIMIT 5