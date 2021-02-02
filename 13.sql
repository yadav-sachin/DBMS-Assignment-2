SELECT pdt_id, electronic_id, name, electronics.category, electronics.brand, electronics.model, price
FROM electronics JOIN products USING (pdt_id)
WHERE electronics.pdt_id = products.pdt_id AND electronics.category = "Laptop"
ORDER BY price ASC;