-- Peak Ordering Days → Grouping orders by days (from DATETIME), counting them.

SELECT DATE(order_date) AS order_day, COUNT(*) AS orders_per_day
FROM orders
	GROUP BY DATE(order_date)
	ORDER BY orders_per_day DESC;

		
        
		