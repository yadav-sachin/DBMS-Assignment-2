SELECT products.prdt_id, electronic_id, products.name, electronics.category, electronics.brand, electronics.model
FROM electronics, products
WHERE electronics.pdt_id = products.pdt_id AND electronics.category = "Laptop"
ORDER BY price ASC;