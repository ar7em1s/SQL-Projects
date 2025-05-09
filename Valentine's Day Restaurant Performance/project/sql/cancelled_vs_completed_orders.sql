-- Cancelled vs Completed Orders → Count and percentage.

SELECT order_status, 
	COUNT(order_status) AS status_count,  
	CONCAT(
		ROUND(
			COUNT(*) * 100 / (SELECT COUNT(*) FROM orders),
		2),
	"%") AS percentage
FROM orders
	GROUP BY order_status

		
        
		