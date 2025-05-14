-- Group by Country and calculate the average tuition and average rent per country.

SELECT country, ROUND(AVG(tuition_USD), 2) AS avg_tuition_per_country, ROUND(AVG(rent_USD), 2) AS avg_rent_per_country FROM edu_cost
	GROUP BY country 
    ORDER BY country