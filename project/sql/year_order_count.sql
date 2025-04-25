-- Orders Over Time - Group orders by month/year.

SELECT EXTRACT(YEAR FROM order_Date) AS yearly_orders, 
    COUNT(*) AS year_order_count
FROM orders
	GROUP BY yearly_orders
    ORDER BY year_order_count DESC