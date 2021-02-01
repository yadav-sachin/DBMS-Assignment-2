SELECT books.*, price
FROM books, products
WHERE books.pdt_id = products.pdt_id AND author = "Dan Brown";