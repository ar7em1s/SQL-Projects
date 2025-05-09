-- Best-Selling Item in Each Category → One item per category, highest total quantity sold.

WITH item_totals AS (
    SELECT 
        menu_items.category,
        menu_items.item_id,
        menu_items.item_name,
        SUM(order_items.quantity) AS total_qty
    FROM order_items
    JOIN menu_items ON order_items.item_id = menu_items.item_id
    GROUP BY menu_items.category, menu_items.item_id, menu_items.item_name),
ranked_items AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY category ORDER BY total_qty DESC) AS rnk
    FROM item_totals)
SELECT category, item_id, item_name, total_qty
FROM ranked_items
WHERE rnk = 1;

		
        
		