SELECT * FROM city;
SELECT first_name, last_name FROM customer;
SELECT * FROM rental;
SHOW tables;
DESCRIBE film;
SELECT title, description, release_year FROM film;
SELECT * from actor;
DESCRIBE address;
DESCRIBE film_list;
SELECT * from film_list;

SELECT * FROM sakila.actor;
SELECT CONCAT (first_name, last_name) FROM actor;
SELECT CONCAT (first_name, ' ', last_name) FROM sakila.actor;
SELECT CONCAT (first_name, ' ', last_name) AS 'Nome Completo' FROM sakila.actor;

SELECT CONCAT (title, ' - ', release_year) AS 'Lançamento do Filme' FROM sakila.film;
SELECT CONCAT (title, ' - ', rating) AS 'Classificação' FROM sakila.film;

SELECT CONCAT (address, ', ', district) AS 'Endereço' FROM sakila.address; 

CREATE DATABASE `Escola`;
CREATE TABLE IF NOT EXISTS Escola.Alunos (
    `Nome` VARCHAR(7) CHARACTER SET utf8,
    `Idade` INT
);

INSERT INTO Escola.Alunos VALUES
    ('Rafael', 25),
    ('Amanda', 30),
    ('Roberto', 45),
    ('Carol', 19),
    ('Amanda', 25);
    
SELECT DISTINCT nome, idade FROM Escola.Alunos;
SELECT DISTINCT nome FROM Escola.Alunos;
SELECT DISTINCT idade FROM Escola.Alunos;

SELECT COUNT(password) FROM sakila.staff;
SELECT COUNT(staff_id) FROM sakila.staff;
SELECT COUNT(email) FROM sakila.staff;

SELECT COUNT(*) FROM sakila.rental;
SELECT * FROM sakila.rental;
SELECT * FROM sakila.rental LIMIT 10;
SELECT * FROM sakila.actor LIMIT 10 OFFSET 4;

SELECT * FROM sakila.film;
SELECT title, release_year, rating FROM sakila.film;
SELECT COUNT(*) FROM sakila.film;

SELECT DISTINCT last_name FROM sakila.actor;
SELECT COUNT(DISTINCT last_name) FROM sakila.actor;
SELECT * FROM sakila.actor ORDER BY last_name, first_name DESC;
SELECT * FROM sakila.language LIMIT 10 OFFSET 1;

SELECT * FROM sakila.film;

SELECT title, release_year, length, rating, replacement_cost FROM sakila.film
ORDER BY length DESC, replacement_cost
LIMIT 20;

SELECT * FROM sakila.address
ORDER BY address;