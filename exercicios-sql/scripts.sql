SELECT * FROM payment;

SELECT * FROM payment
WHERE value > 1000;

SELECT billing_type, SUM(value) AS valores_cobrancas 
FROM payment
WHERE YEAR(date_created) > 2020
GROUP BY billing_type;

SELECT c.name 
FROM payment p
INNER JOIN customer_account c
ON p.customer_account_id = c.id
WHERE p.value > 1000 AND p.status = 'RECEIVED'
LIMIT 20;

SELECT SUBSTRING(name, 1, LOCATE(' ', name) -1) AS name, crs.general_approval, crs.last_updated 
FROM customer c
JOIN customer_register_status crs
ON c.id = crs.id
WHERE general_approval = 'APPROVED'
ORDER BY crs.last_updated;

