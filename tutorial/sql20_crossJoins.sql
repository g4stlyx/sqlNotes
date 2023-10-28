USE sql_store;

-- e.g. there are colors and sizes for clothes, it is ez to combine them with cross joins

-- in this ex. we can see all shippers' all products

SELECT 
	sh.name AS shipper,
    p.name AS product
FROM shippers sh, products p
ORDER BY sh.name;

SELECT 
	sh.name AS shipper,
    p.name AS product
FROM shippers sh
CROSS JOIN products p
ORDER BY sh.name;

