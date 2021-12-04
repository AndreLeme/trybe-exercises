INSERT INTO sakila.actor (first_name, last_name)
VALUES ('Marcelo', 'Santos');

SELECT * FROM sakila.actor;

INSERT INTO sakila.actor (first_name, last_name)
	SELECT first_name, last_name FROM sakila.staff;

INSERT INTO sakila.staff (first_name, last_name, address_id, store_id, active, username)
VALUES ('Andre', 'Leme', 5, 2, 0, 'Leme');

INSERT INTO sakila.actor (first_name, last_name)
	SELECT first_name, last_name FROM sakila.customer
    ORDER BY customer_id
    LIMIT 5;
    
INSERT INTO sakila.category (name)
VALUES ('teste'),
('segundo teste'),
('terceiro teste');

UPDATE sakila.staff
SET first_name = 'Rannveig'
WHERE first_name = 'Ravein';

SET SQL_SAFE_UPDATES = 0;

UPDATE sakila.staff
SET first_name = 'Rannveig', last_name = 'Jordan'

UPDATE sakila.actor
SET first_name = 'JOE'
WHERE actor_id IN (1,2,3);

UPDATE sakila.actor
SET first_name = (
CASE actor_id WHEN 1 THEN 'JOE' -- se actor_id = 1, alterar first_name para 'JOE'
              WHEN 2 THEN 'DAVIS' -- se actor_id = 2, alterar first_name para 'DAVIS'
              WHEN 3 THEN 'CAROLINE' -- se actor_id = 3, alterar first_name para 'CAROLINE'
          ELSE first_name -- em todos os outros casos, mantém-se o first_name
END);


-- Exemplo:
UPDATE sakila.staff
SET password = 'FavorResetarSuaSenha123'
WHERE active = 1
ORDER BY last_update
LIMIT 2;

UPDATE sakila.actor
SET first_name = 'JULES'
WHERE first_name = 'JULIA';

UPDATE sakila.category
SET name = 'Science Fiction'
WHERE name = 'Sci-Fi';

DELETE FROM sakila.film_text
WHERE title = 'ACADEMY DINOSAUR';

DELETE FROM sakila.actor
WHERE first_name = 'GRACE';
