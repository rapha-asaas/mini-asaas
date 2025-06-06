use asaasdevelopment;
-- SELECT * FROM payment;

-- 1. Select de cobranças (payment) com valor maior que R$ 1.000,00
SELECT * FROM payment
WHERE value > 1000;


-- 2. Soma dos valores de cobranças recebidas com a data de criação maior que 2020, agrupadas por tipo de cobrança (billing_type)
SELECT billing_type, SUM(value) AS billing_sum 
FROM payment
WHERE YEAR(date_created) > 2020
GROUP BY billing_type;

-- 3. Lista de 20 pagadores (customer_account) com valores recebidos maiores que R$ 1.000,00
SELECT ca.name 
FROM payment p
INNER JOIN customer_account ca
ON p.customer_account_id = c.id
WHERE p.value > 1000 AND p.status = 'RECEIVED'
LIMIT 20;

-- 4. Primeiro nome dos clientes (customer) com análise geral aprovada (customer_register_status), ordenado por data de aprovação
SELECT SUBSTRING(name, 1, LOCATE(' ', name) -1) AS name, crs.general_approval, crs.last_updated 
FROM customer c
JOIN customer_register_status crs
ON c.id = crs.id
WHERE general_approval = 'APPROVED'
ORDER BY crs.last_updated;

