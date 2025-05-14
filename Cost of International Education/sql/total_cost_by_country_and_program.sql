-- Calculate the total estimated cost (Tuition + Rent + Insurance + Visa_Fee) for each country and university program.

SELECT country, program, (Tuition_USD + Rent_USD + Visa_Fee_USD + Insurance_USD) AS total_cost_USD FROM edu_cost
	ORDER BY country