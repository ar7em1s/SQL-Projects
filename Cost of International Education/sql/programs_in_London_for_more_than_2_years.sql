-- Show all programs in London that last more than 2 years.

SELECT city, program, level, duration_years FROM edu_cost
	WHERE city = 'London' and duration_years >= 2
		ORDER BY duration_years