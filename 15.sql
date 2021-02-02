SELECT name, novels.*, price
FROM novels JOIN products using (pdt_id)
WHERE author = "Dan Brown";