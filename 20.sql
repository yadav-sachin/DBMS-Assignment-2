CREATE TABLE holi_Deals
SELECT *
FROM products
WHERE created_at >= DATE_SUB(CURDATE(),INTERVAL 100 DAY);

UPDATE holi_Deals
SET price = price * 0.85;