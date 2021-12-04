-- 1. Crie uma view chamada film_with_categories utilizando as tabelas category , film_category e film do banco de dados sakila.
-- Essa view deve exibir o título do filme, o id da categoria e o nome da categoria, conforme a imagem abaixo.
-- Os resultados devem ser ordenados pelo título do filme.

CREATE VIEW film_with_categories AS
	SELECT f.title, fc.category_id, c.name
    FROM sakila.film AS f
    JOIN sakila.film_category AS fc
		ON 	f.film_id = fc.film_id
	JOIN sakila.category AS c
		ON  fc.category_id = c.category_id
	ORDER BY f.title;
    
SELECT * FROM film_with_categories;

-- 2.

CREATE VIEW film_info AS
	SELECT
		a.actor_id,
        CONCAT(a.first_name, ' ', a.last_name) AS actor,
        f.title
	FROM sakila.actor AS a
    JOIN sakila.film_actor AS fa
		ON a.actor_id = fa.actor_id
	JOIN sakila.film AS f
		ON fa.film_id = f.film_id
	ORDER BY actor;

SELECT * FROM film_info;
DROP VIEW film_info;
			
-- Desafios sobre INDEX

-- 1.
CREATE FULLTEXT INDEX category_name_index ON sakila.category(name);

-- Após ter criado o índice, mensure o custo com a seguinte query:
SELECT *
FROM sakila.category
WHERE MATCH(name) AGAINST('action');

DROP INDEX category_name_index ON sakila.category;

-- Após ter excluído o índice, mensure o custo com a seguinte query:
SELECT *
FROM sakila.category
WHERE name LIKE '%action%';


-- 2.
CREATE INDEX postal_code_index ON sakila.address(postal_code);

-- Mensure o custo com a seguinte query:
SELECT *
FROM sakila.address
WHERE postal_code = '36693';

DROP INDEX postal_code_index ON sakila.address;

-- Desafios sobre ALTER TABLE

-- 1. Escreva uma query SQL para alterar na tabela localtions o nome da coluna street_address para address,
-- mantendo o mesmo tipo e tamanho de dados.
ALTER TABLE locations CHANGE street_address address VARCHAR(40);

DESCRIBE hr.locations;


