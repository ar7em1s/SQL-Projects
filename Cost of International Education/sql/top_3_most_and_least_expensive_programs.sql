-- Create a column Total_Cost_USD and find the top 3 most and least expensive programs.

SELECT * FROM (
  SELECT 
    country, city, program,
    ROUND(SUM(COALESCE(tuition_USD, 0) + 
              COALESCE(rent_USD, 0) + 
              COALESCE(visa_Fee_USD, 0) + 
              COALESCE(insurance_USD, 0)), 2) AS total_cost_USD,
    'Most Expensive' AS category
  FROM 
    edu_cost
  GROUP BY 
    country, city, program
  ORDER BY 
    total_cost_USD DESC
  LIMIT 3
) AS top_3

UNION ALL

SELECT * FROM (
  SELECT 
    country, city, program,
    ROUND(SUM(COALESCE(tuition_USD, 0) + 
              COALESCE(rent_USD, 0) + 
              COALESCE(visa_Fee_USD, 0) + 
              COALESCE(insurance_USD, 0)), 2) AS total_cost_USD,
    'Least Expensive' AS category
  FROM 
    edu_cost
  GROUP BY 
    country, city, program
  ORDER BY 
    total_cost_USD ASC
  LIMIT 3
) AS bottom_3;