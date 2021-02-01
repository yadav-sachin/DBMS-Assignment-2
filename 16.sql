SELECT user_id, username, email
FROM users
WHERE user_id in (
    SELECT user_id
    FROM cart_items
    WHERE quantity < 5
);