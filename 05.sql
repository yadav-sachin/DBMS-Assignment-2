SELECT DISTINCT phone, email 
FROM users
where city = 'Madrid' AND user_id IN (
    SELECT user_id 
    FROM orders
    GROUP BY user_id
    HAVING SUM(price) >= 10000
);