SELECT * 
FROM orders 
WHERE user_id = (
    SELECT user_id
    FROM users
    ORDER BY created_at DESC,
    LIMIT 1)
ORDER BY created_at DESC
LIMIT 3;