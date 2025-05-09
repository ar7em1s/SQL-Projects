-- Valentine's Day revenue.

SELECT ROUND(
			SUM(total_amount), 
        2) 
	AS total_valentine_revenue 
	FROM orders
		WHERE DAY(order_date) = 14

		
        
		