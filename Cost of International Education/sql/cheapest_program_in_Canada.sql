-- Which university offers the cheapest program (tuition-wise) in Canada?

SELECT country, city, university, tuition_USD FROM edu_cost
	WHERE country = 'Canada' 
		ORDER BY tuition_USD 
			LIMIT 1