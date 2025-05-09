-- Best-Selling Item in Each Category → One item per category, highest total quantity sold.

SELECT * FROM order_items
	JOIN orders
    ON order_items.order_id = orders.order_id
		JOIN menu_items
        ON menu_items.item_id = order_items.item_id

		
        
		