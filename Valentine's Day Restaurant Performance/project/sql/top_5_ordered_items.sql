-- Top 5 Most Ordered Menu Items → Show item name, total quantity ordered.

SELECT menu_items.item_id, menu_items.item_name, SUM(order_items.quantity) AS total_qty_ordered FROM menu_items
	JOIN order_items
    ON order_items.item_id = menu_items.item_id
		GROUP BY menu_items.item_id, menu_items.item_name
        ORDER BY total_qty_ordered DESC
        LIMIT 5
		