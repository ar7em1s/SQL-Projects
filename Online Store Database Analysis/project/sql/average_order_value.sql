-- Average Order Value (AOV) - Calculate average total per order.

SELECT ROUND(AVG(price_at_order), 2) AS AOV 
FROM order_items