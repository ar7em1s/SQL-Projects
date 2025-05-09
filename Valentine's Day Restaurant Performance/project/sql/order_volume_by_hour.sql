-- Order volume by hour/day.

SELECT 
	HOUR(order_date) AS order_hour, 
    COUNT(*) AS orders_per_hour
FROM orders
	GROUP BY order_hour
	ORDER BY orders_per_hour DESC;



		
        
		