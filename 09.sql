SELECT (pdt_id, name, category, retailer_id, price)
FROM products 
WHERE pdt_id in (
    SELECT pdt_id
    FROM cart_items
    WHERE user_id in (
        SELECT user_id
        FROM users
        ORDER BY created_at ASC,
        LIMIT 2
    )
);