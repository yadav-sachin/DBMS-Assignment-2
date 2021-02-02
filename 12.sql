SELECT user_id, username, email
FROM    
    (SELECT user_id
    FROM order_items INNER JOIN products USING (pdt_id)
    WHERE category = "electronics"
    GROUP BY user_id
    HAVING SUM(quantity) > 3) A
INNER JOIN
    (SELECT user_id
    FROM order_items INNER JOIN products USING (pdt_id)
    WHERE category = "novels"
    GROUP BY user_id
    HAVING SUM(quantity) > 3) B
USING (user_id) JOIN users USING (user_id);
