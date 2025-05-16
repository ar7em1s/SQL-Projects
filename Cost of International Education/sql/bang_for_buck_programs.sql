-- Which univercity offers the best “bang for buck” programs? Define as:
-- Lowest (Tuition + Rent + Insurance) per year of study.
-- Convert all tuition fees to local currency using the Exchange_Rate column. (Assume Exchange_Rate is local_currency / USD.)

SELECT 
  country, 
  university, program,
  ROUND(SUM(tuition_USD * exchange_rate) + 
        SUM(rent_USD) + 
        SUM(insurance_USD), 2) AS total_cost_local_currency,
        
  ROUND((SUM(tuition_USD * exchange_rate) + 
         SUM(rent_USD) + 
         SUM(insurance_USD)) / duration_years, 2) AS cost_per_year_local_currency
FROM 
  edu_cost
	GROUP BY country, university, program, duration_years
	ORDER BY cost_per_year_local_currency ASC
		LIMIT 5;
        
        
