SELECT * FROM sakila.customer
WHERE email = 'LEONARD.SCHOFIELD@sakilacustomer.org';

SELECT first_name FROM sakila.customer
WHERE active IS FALSE AND store_id = 2 AND first_name <> 'KENNETH'
ORDER BY first_name;

SELECT title, description, release_year, replacement_cost FROM sakila.film
WHERE rating <> 'NC-17' AND replacement_cost >= 18
ORDER BY replacement_cost DESC, title
LIMIT 100;

SELECT COUNT(*) AS 'Clientes ativos' FROM sakila.customer
WHERE active IS TRUE AND store_id = 1;

SELECT * FROM sakila.film
WHERE title LIKE '%ace%';

SELECT * FROM sakila.film
WHERE description LIKE '%china';

SELECT * FROM sakila.film
WHERE description LIKE '%girl%' AND title LIKE '%lord';

SELECT * FROM sakila.film
WHERE title LIKE '___gon%';

SELECT * FROM sakila.film
WHERE title LIKE '___gon%' AND description LIKE '%Documentary%';

SELECT * FROM sakila.payment
WHERE customer_id IN (269, 239, 126, 399, 142);

SELECT * FROM sakila.address
WHERE district IN ('QLD', 'Nagasaki', 'California', 'Attika', 'Mandalay', 'Nantou', 'Texas');

SELECT title, length FROM sakila.film
WHERE length BETWEEN 50 AND 120;

SELECT * FROM sakila.language
WHERE name BETWEEN 'Italian' AND 'Mandarin'
ORDER BY name;

SELECT rental_id, rental_date FROM sakila.rental
WHERE rental_date
BETWEEN '2005-05-27' AND '2005-07-17';

-- Encontra todos os pagamentos deste dia, ignorando horas, minutos e segundos
SELECT * FROM sakila.payment
WHERE DATE(payment_date) = '2005-07-31';

SELECT * FROM sakila.payment
WHERE payment_date LIKE '2005-07-31%';

SELECT COUNT(*) Pagamentos FROM sakila.payment
WHERE payment_date LIKE '2005-05-25%';

SELECT COUNT(*) Pagamentos FROM sakila.payment
WHERE payment_date BETWEEN '2005-07-01 00:00:00' AND '2005-08-22 23:59:59';

SELECT rental_date FROM sakila.rental
WHERE rental_id = 10330;

SELECT DATE(rental_date) Data,
YEAR(rental_date) Ano,
MONTH(rental_date) Mes,
DAY(rental_date) Dia,
HOUR(rental_date) Hora,
MINUTE(rental_date) Minuto,
SECOND(rental_date) Segundo
FROM sakila.rental
WHERE rental_id = 10330;