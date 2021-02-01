SELECT order_id 
FROM order_items
GROUP BY order_id
ORDER BY COUNT()