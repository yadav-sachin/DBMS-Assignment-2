UPDATE products
SET price = price * 1.10
where price < 5000 AND pdt_id IN (
    SELECT pdt_id 
    FROM user_views
    WHERE created_at >= DATE_SUB(CURDATE(),INTERVAL 3 MONTH)
    GROUP BY pdt_id
    HAVING COUNT(DISTINCT user_id) > 10
);