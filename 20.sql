CREATE TABLE holi_Deals
SELECT pdt_id, name, category, retailer_id, price * 0.85 as price, created_at
FROM products
WHERE created_at >= DATEADD(DAY, -100, GETDATE());