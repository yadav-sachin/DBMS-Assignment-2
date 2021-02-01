SELECT (pdt_id, elctronic_id, p.name, price, brand, model, description, date_of_manufacture)
FROM electronics e JOIN products p USING(pdt_id)
WHERE price BETWEEN 10000 AND 20000;