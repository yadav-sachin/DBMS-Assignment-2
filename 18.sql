SELECT * 
FROM products 
WHERE created_at >= DATEADD(DAY, -10, GETDATE());