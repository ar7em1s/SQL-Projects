-- All Bachelor-level programs shorter than 4 years.

SELECT * FROM edu_cost
	WHERE level = 'Bachelor' AND duration_years < 4