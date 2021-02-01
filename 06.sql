SELECT *
FROM products
WHERE NAME LIKE '%mi%';

SELECT (user_id, email, username, phone, created_at)
FROM users
WHERE user_id in (
    SELECT DISTINCT user_id 
    FROM order_items
    where pdt_id in (
        SELECT pdt_id
        FROM products 
        WHERE name LIKE '%mi%'
    )
);


SELECT (pdt_id, name, user_id, email, username)
FROM (
    SELECT pdt_id
    FROM products 
    WHERE name LIKE '%mi%'
) P LEFT OUTER JOIN (
    SELECT user_id, email, username 
    FROM users
    WHERE 
)