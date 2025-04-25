-- Customer Lifetime Value (CLV) - Total revenue per customer.

SELECT 
    customers.customer_id,
    CONCAT(customers.first_name, ' ', customers.last_name) AS customer_name,
    COUNT(DISTINCT orders.order_id) AS order_count,
    ROUND(SUM(order_items.price_at_order), 2) AS total_spent
FROM orders
	JOIN customers ON orders.customer_id = customers.customer_id
	JOIN order_items ON orders.order_id = order_items.order_id
		WHERE orders.status IN ('delivered', 'shipped')
		GROUP BY customers.customer_id
		ORDER BY total_spent DESC;
        