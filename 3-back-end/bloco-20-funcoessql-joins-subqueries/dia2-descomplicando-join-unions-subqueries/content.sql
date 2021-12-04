SELECT a.actor_id, a.first_name, f.actor_id
FROM sakila.actor AS a
INNER JOIN sakila.film_actor AS f
ON a.actor_id =  f.actor_id;

SELECT s.first_name, s.last_name, address
FROM sakila.staff AS s
INNER JOIN sakila.address AS a
ON a.address_id = s.address_id;

SELECT c.customer_id, c.first_name, c.email, c.address_id, a.address
FROM sakila.customer AS c
INNER JOIN sakila.address AS a
ON c.address_id = a.address_id
ORDER BY c.first_name DESC
LIMIT 100;

SELECT c.first_name, c.email, c.address_id, a.address, a.district
FROM sakila.customer AS c
INNER JOIN sakila.address AS a
ON c.address_id = a.address_id
WHERE a.district = 'California' AND c.first_name LIKE '%rene%';

SELECT c.first_name, COUNT(a.address)
FROM sakila.customer AS c
	INNER JOIN sakila.address AS a
		ON c.address_id = a.address_id
WHERE c.active = 1
GROUP BY c.first_name
ORDER BY first_name DESC;

SELECT s.first_name, s.last_name, AVG(p.amount)
FROM sakila.staff AS s
	INNER JOIN sakila.payment AS p
		ON s.staff_id = p.staff_id
WHERE YEAR(p.payment_date) = 2006
GROUP BY s.first_name, s.last_name;

SELECT 
    a.actor_id, a.first_name, fa.film_id, f.title
FROM
    sakila.actor AS a
        INNER JOIN
    sakila.film_actor AS fa ON a.actor_id = fa.actor_id
        INNER JOIN
    sakila.film AS f ON fa.film_id = f.film_id;
    
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    a.actor_id,
    a.first_name,
    a.last_name
FROM customer AS c
LEFT JOIN actor AS a
ON c.last_name = a.last_name
ORDER BY c.last_name;

SELECT t1.film_id, t1.replacement_cost, t2.film_id, t2.replacement_cost
FROM sakila.film AS t1, sakila.film AS t2
WHERE t1.replacement_cost = t2.replacement_cost;

SELECT t1.title, t1.rental_duration, t2.title, t2.rental_duration
FROM sakila.film AS t1, sakila.film AS t2
WHERE t1.length = t2.length AND t1.rental_duration BETWEEN 2 AND 4;

SELECT first_name, last_name FROM sakila.staff
UNION ALL 
SELECT first_name, last_name FROM sakila.actor;

SELECT 
    first_name
FROM
    sakila.customer
WHERE
    first_name LIKE '%tracy%' 
UNION SELECT 
    first_name
FROM
    sakila.actor
WHERE
    first_name LIKE '%je%';
    
(SELECT first_name FROM sakila.actor
ORDER BY actor_id DESC
LIMIT 5)
UNION (SELECT first_name FROM sakila.staff LIMIT 1)
UNION (SELECT first_name FROM sakila.customer LIMIT 5 OFFSET 15)
ORDER BY first_name;


-- Você quer exibir uma lista paginada com os nomes e sobrenomes de todos os clientes e atores do banco de dados, em ordem alfabética.
-- Considere que a paginação está sendo feita de 15 em 15 resultados e que você está na 4ª página. Monte uma query que simule esse cenário.
(SELECT first_name, last_name FROM sakila.customer LIMIT 60)
UNION ALL
(SELECT first_name, last_name FROM sakila.actor LIMIT 60)
ORDER BY first_name, last_name LIMIT 15 OFFSET 45;

SELECT f.title, f.rating
FROM (
    SELECT *
    FROM sakila.film
    WHERE rating = 'R'
) AS f;

SELECT
    address,
    district,
    (
        SELECT city
        FROM sakila.city
        WHERE city.city_id = sakila.address.city_id
    ) AS city
FROM sakila.address;

SELECT address, district
FROM sakila.address
WHERE city_id in (
    SELECT city_id
    FROM sakila.city
    WHERE city in ('Sasebo', 'San Bernardino', 'Athenai', 'Myingyan')
);

SELECT
    first_name,
    (
        SELECT address
        FROM sakila.address
        WHERE address.address_id = tabela_externa.address_id
    ) AS address
FROM sakila.customer AS tabela_externa;