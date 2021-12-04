create table clone_category LIKE sakila.category;

-- Defina em qual banco a view será criada
USE nome_do_banco_de_dados;
-- Comando para criar a view
CREATE VIEW nome_da_view AS query;

CREATE VIEW top_10_customers AS
    SELECT c.customer_id, c.first_name, SUM(p.amount) AS total_amount_spent
    FROM sakila.payment p
    INNER JOIN sakila.customer c ON p.customer_id = c.customer_id
    GROUP BY customer_id
    ORDER BY total_amount_spent DESC
    LIMIT 10;
    
SELECT * FROM top_10_customers;

DROP VIEW nome_da_view;

USE sakila;
CREATE TABLE noticia(
    noticia_id INT PRIMARY KEY,
    titulo VARCHAR(100),
    historia VARCHAR(300)
) engine = InnoDB;

-- Adicionar uma nova coluna
ALTER TABLE noticia ADD COLUMN data_postagem date NOT NULL;

-- Modificar o tipo e propriedades de uma coluna
ALTER TABLE noticia MODIFY noticia_id BIGINT;

-- Adicionar incremento automático a uma coluna
-- (especifique o tipo da coluna + auto_increment)
ALTER TABLE noticia MODIFY noticia_id BIGINT auto_increment;

-- Alterar o tipo e nome de uma coluna
ALTER TABLE noticia CHANGE historia conteudo_postagem VARCHAR(1000) NOT NULL;

-- Dropar/Excluir uma coluna
ALTER TABLE noticia DROP COLUMN data_postagem;

-- Adicionar uma nova coluna após outra
ALTER TABLE noticia ADD COLUMN data_postagem DATETIME NOT NULL AFTER titulo;

SHOW COLUMNS FROM sakila.noticia;

DROP TABLE sakila.language;

CREATE INDEX index_first_name ON sakila.actor(first_name);

SELECT *
FROM sakila.actor
WHERE first_name = 'RITA';

DROP INDEX index_first_name ON sakila.actor;

CREATE FULLTEXT INDEX index_address ON sakila.address(address);

SELECT *
FROM sakila.address
WHERE MATCH(address) AGAINST('drive');

DROP INDEX index_address ON sakila.address;

SELECT *
FROM sakila.address
WHERE address LIKE '%drive%';

SHOW INDEX FROM sakila.actor;

CREATE UNIQUE INDEX unique_name_index ON sakila.language(name);

SELECT *
FROM sakila.language
WHERE name = 'Mandarin';

DROP INDEX unique_name_index ON sakila.language;