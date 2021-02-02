SELECT name, pdt_id, user_id
FROM (
    SELECT name, pdt_id
    FROM products 
    WHERE name LIKE '%mi%'
)P LEFT OUTER JOIN (
    SELECT DISTINCT user_id, pdt_id
    FROM order_items
)O USING (pdt_id);