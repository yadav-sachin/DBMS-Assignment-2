SELECT DISTINCT user_id, username, email, phone
FROM users
WHERE user_id in (
    SELECT user_id
    FROM cart_items
    WHERE quantity < 5
);