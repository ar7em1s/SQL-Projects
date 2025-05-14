-- Programs with tuition below $10,000 and living cost index under 60.

SELECT country, city, university, program, tuition_USD, living_cost_index FROM edu_cost
	WHERE tuition_USD < 10000 AND living_cost_index < 60
		ORDER BY tuition_USD DESC