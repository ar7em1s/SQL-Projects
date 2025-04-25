-- Most Ordered Products - Products with the most total orders.

SELECT products.product_id, products.name, 
    SUM(order_items.quantity) AS qty_sold, 
    ROUND(SUM(price_at_order), 2) AS revenue 
FROM products
    JOIN order_items
    ON products.product_id = order_items.product_id
        GROUP BY products.product_id
        ORDER BY qty_sold DESC
        LIMIT 10