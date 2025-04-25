-- Revenue by Category - Sum of all products sold grouped by product category.

SELECT categories.category_name, 
    SUM(order_items.quantity) AS ordered_quantity 
FROM orders
    JOIN order_items
    ON orders.order_id = order_items.order_id
        JOIN products
        ON products.product_id = order_items.product_id
            JOIN categories 
            ON categories.category_id = products.category_id
                GROUP BY categories.category_name
                ORDER BY ordered_quantity DESC