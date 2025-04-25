-- Most Ordered Categories - Categories with the most total orders.

SELECT categories.category_name, 
    ROUND(SUM(order_items.price_at_order), 2) AS revenue_by_category 
FROM orders
    JOIN order_items
    ON orders.order_id = order_items.order_id
        JOIN products
        ON products.product_id = order_items.product_id
            JOIN categories 
            ON categories.category_id = products.category_id
                GROUP BY categories.category_name
                ORDER BY revenue_by_category DESC