-- Customers With Most Orders → First/last name, total order count.

SELECT CONCAT(customers.first_name, ' ', customers.last_name) AS customer_name, 
	COUNT(orders.customer_id) AS order_count
FROM customers
	JOIN orders
	ON customers.customer_id = orders.customer_id
		GROUP BY customer_name
		HAVING COUNT(orders.customer_id) >= 4
			ORDER BY order_count DESC
				LIMIT 10
		
        
		