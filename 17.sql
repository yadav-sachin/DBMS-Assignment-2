SELECT *
FROM orders 
WHERE order_id = (
    SELECT order_id
    FROM order_items
    GROUP BY order_id
    ORDER BY SUM(quantity)
    LIMIT 1);