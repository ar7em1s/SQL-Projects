-- Top 10 selling items.

SELECT order_items.item_id, 
	menu_items.item_name,
	COUNT(order_items.item_id) AS order_count
FROM orders
	JOIN order_items
	ON orders.order_id = order_items.order_id
		JOIN menu_items
		ON menu_items.item_id = order_items.item_id
			GROUP BY order_items.item_id
            ORDER BY order_count DESC
				LIMIT 10

		
        
		