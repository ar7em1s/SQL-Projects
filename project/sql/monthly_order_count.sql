-- Orders Over Time - Group orders by month/year.

SELECT EXTRACT(MONTH FROM order_Date) AS months, 
    EXTRACT(YEAR FROM order_Date) AS year, 
    COUNT(*) AS monthly_order_count
FROM orders
	GROUP BY months, year
    ORDER BY year, months