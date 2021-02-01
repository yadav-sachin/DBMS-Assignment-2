SELECT retailer_id
FROM products 
WHERE pdt_id in (
    SELECT pdt_id 
    FROM order_items
    WHERE user_id = 1
);