SELECT F.user_id, name, pdt_id, category, price
FROM products INNER JOIN (
    SELECT cart_items.user_id, pdt_id
    FROM cart_items INNER JOIN (
        SELECT user_id
        FROM users
        ORDER BY created_at ASC
        LIMIT 2
    ) U USING(user_id)
)F USING (pdt_id);
    