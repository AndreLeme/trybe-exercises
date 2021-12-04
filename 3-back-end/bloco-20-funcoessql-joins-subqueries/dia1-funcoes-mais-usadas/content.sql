SELECT UCASE(title) FROM sakila.film LIMIT 10;
SELECT LCASE(title) FROM sakila.film LIMIT 10;
SELECT REPLACE(title, 'ACADEMY', 'FOO') FROM sakila.film WHERE film_id = 1;
SELECT LEFT(title, 7) FROM sakila.film WHERE film_id = 1;
SELECT RIGHT(title, 8) FROM sakila.film WHERE film_id = 1;
SELECT CHAR_LENGTH(title) FROM sakila.film WHERE film_id = 1;
SELECT SUBSTRING(title, 5, 2) FROM sakila.film WHERE film_id = 1;
SELECT SUBSTRING(title, 5) FROM sakila.film WHERE film_id = 1;

SELECT UCASE('trybe');

SELECT REPLACE('Você já ouviu falar do DuckDuckGo?', 'DuckDuckGo', 'Google');

SELECT CHAR_LENGTH('Uma frase qualquer');

SELECT SUBSTRING('A linguagem JavaScript está entre as mais usadas', 13, 10);

SELECT LCASE('RUA NORTE 1500, SÃO PAULO, BRASIL');

-- Sintaxe:
SELECT IF(condicao, valor_se_verdadeiro, valor_se_falso);

SELECT IF(idade >= 18, 'Maior de idade', 'Menor de Idade')
FROM pessoas;

SELECT IF(aberto, 'Entrada permitida', 'Entrada não permitida')
FROM estabelecimentos;

-- Exemplo utilizando o banco sakila:
SELECT first_name, IF(active, 'Cliente Ativo', 'Cliente Inativo') AS status
FROM sakila.customer
LIMIT 20;
-- Sintaxe:
SELECT CASE
  WHEN condicao THEN valor
  ELSE valor padrao
END;

SELECT
    nome,
    nivel_acesso,
    CASE
        WHEN nivel_acesso = 1 THEN 'Nível de acesso 1'
        WHEN nivel_acesso = 2 THEN 'Nível de acesso 2'
        WHEN nivel_acesso = 3 THEN 'Nível de acesso 3'
        ELSE 'Usuário sem acesso'
    END AS nivel_acesso
FROM permissoes_usuario;

-- Exemplo utilizando a tabela sakila.film:
SELECT
    first_name,
    email,
    CASE
        WHEN email = 'MARY.SMITH@sakilacustomer.org' THEN 'Cliente de baixo valor'
        WHEN email = 'PATRICIA.JOHNSON@sakilacustomer.org' THEN 'Cliente de médio valor'
        WHEN email = 'LINDA.WILLIAMS@sakilacustomer.org' THEN 'Cliente de alto valor'
        ELSE 'não classificado'
    END AS valor
FROM sakila.customer
LIMIT 10;

-- PARA FIXAR
SELECT 
	film_id,
    title,
    IF(title = 'ACE GOLDFINGER', 'Já assisti a esse filme', 'Não conheço o filme') AS 'conhecido?'
FROM sakila.film;

SELECT
	film_id,
    rating,
    CASE
		WHEN rating = 'G' THEN 'Livre para todos'
        WHEN rating = 'PG' THEN 'Não recomendado para menores de 10 anos'
        WHEN rating = 'PG-13' THEN 'Não recomendado para menores de 13 anos'
        WHEN rating = 'R' THEN 'Não recomendado para menores de 17 anos'
		ELSE 'Proibido para menores de idade'
	END AS 'publico-alvo'
FROM sakila.film;

-- O DIV retorna o resultado inteiro de uma divisão, ignorando as casas decimais de um número
SELECT 10 DIV 3; -- 3
SELECT 10 DIV 2; -- 5
SELECT 14 DIV 3; -- 4
SELECT 13 DIV 2; -- 6

-- MOD retorna o resto de uma divisão como resultado
SELECT 10 MOD 3; -- 1
SELECT 10 MOD 2; -- 0
SELECT 14 MOD 3; -- 2
SELECT 13 MOD 2; -- 1

SELECT IF(15 MOD 2 = 0, 'Par', 'Ímpar') AS 'Par ou Ímpar';

SELECT 220 DIV 12;

SELECT 220 MOD 12;

-- ROUND arredonda os números de acordo com sua parte decimal. Se for maior ou igual a 0.5, o resultado é um arredondamento para cima
-- Podemos omitir ou especificar quantas casas decimais queremos
SELECT ROUND(10.4925); -- 10
SELECT ROUND(10.5136); -- 11
SELECT ROUND(-10.5136); -- -11
SELECT ROUND(10.4925, 2); -- 10.49
SELECT ROUND(10.4925, 3); -- 10.493

-- arredondamento sempre para cima pode ser feito com o CEIL
SELECT CEIL(10.51); -- 11
SELECT CEIL(10.49); -- 11
SELECT CEIL(10.2); -- 11

-- arredondamento sempre para baixo pode ser feito com o FLOOR
SELECT FLOOR(10.51); -- 10
SELECT FLOOR(10.49); -- 10
SELECT FLOOR(10.2); -- 10

-- Elevando um número X à potência Y usando a função POW 
SELECT POW(2, 2); -- 4
SELECT POW(2, 4); -- 16

--  encontrando a raiz quadrada de um valor usando SQRT
SELECT SQRT(9); -- 3
SELECT SQRT(16); -- 4

-- situações em que se faz necessário gerar valores aleatórios, podemos usar a função RAND 
-- Para gerar um valor aleatório entre 0 e 1:
SELECT RAND();

-- Para gerar um valor entre 7 e 13:
SELECT ROUND(7 + (RAND() * 6));
-- O cálculo que é feito é o seguinte: (7 + (0.0 a 1.0 * 6))

-- PARA FIXAR
SELECT 15 + (RAND() * 5);

SELECT ROUND(15.7515971, 5);

SELECT FLOOR(39.494);

SELECT CEIL(85.234);

-- podemos calcular a diferença em dias entre duas datas usando o DATEDIFF e a diferença de tempo entre dois horários usando o TIMEDIFF. 
-- Em ambos os casos, o segundo valor é subtraído do primeiro para calcular o resultado
-- 30, ou seja, a primeira data é 30 dias depois da segunda
SELECT DATEDIFF('2020-01-31', '2020-01-01');

-- -30, ou seja, a primeira data é 30 dias antes da segunda
SELECT DATEDIFF('2020-01-01', '2020-01-31');

-- -01:00:00, ou seja, há 1 hora de diferença entre os horários
SELECT TIMEDIFF('08:30:10', '09:30:10');

-- -239:00:00, ou seja, há uma diferença de 239 horas entre as datas
SELECT TIMEDIFF('2021-08-11 08:30:10', '2021-08-01 09:30:10');

-- também podemos usar CURRENT_DATE() e NOW() em conjunto com os comandos acima para encontrar resultados dinâmicos
SELECT YEAR(CURRENT_DATE()); -- retorna o ano atual
SELECT HOUR(NOW()); -- retorna a hora atual

-- PARA FIXAR
SELECT DATEDIFF('2030-01-20', NOW());

SELECT TIMEDIFF('10:25:45', '11:00:00');

-- temos as seguintes funções que analisam todos os registros de uma determinada coluna
-- e retornam um valor depois de comparar e avaliar todos os registros
-- Usando a coluna replacement_cost (valor de substituição) vamos encontrar:
SELECT AVG(replacement_cost) FROM sakila.film; -- 19.984000 (Média entre todos registros)
SELECT MIN(replacement_cost) FROM sakila.film; -- 9.99 (Menor valor encontrado)
SELECT MAX(replacement_cost) FROM sakila.film; -- 29.99 (Maior valor encontrado)
SELECT SUM(replacement_cost) FROM sakila.film; -- 19984.00 (Soma de todos registros)
SELECT COUNT(replacement_cost) FROM sakila.film; -- 1000 registros encontrados (Quantidade)

-- PARA FIXAR
SELECT AVG(length) AS 'Média de Duração' FROM sakila.film;
SELECT MIN(length) AS 'Duração Mínima' FROM sakila.film;
SELECT MAX(length) AS 'Duração Máxima' FROM sakila.film;
SELECT SUM(length) AS 'Tempo de Exibição Total' FROM sakila.film;
SELECT COUNT(length) AS 'Tempo de Exibição Total' FROM sakila.film;

-- Os resultados de uma query podem ser agrupados por uma ou mais colunas usando o GROUP BY,
-- o que faz com que todos os registros que têm o mesmo valor para tais colunas sejam exibidos juntos
SELECT coluna(s) FROM tabela
GROUP BY coluna(s);

SELECT first_name FROM sakila.actor
GROUP BY first_name;

SELECT first_name, COUNT(*) FROM sakila.actor
GROUP BY first_name;

-- Média de duração de filmes agrupados por classificação indicativa
SELECT rating, AVG(length)
FROM sakila.film
GROUP BY rating;

-- Valor mínimo de substituição dos filmes agrupados por classificação indicativa
SELECT rating, MIN(replacement_cost)
FROM sakila.film
GROUP BY rating;

-- Valor máximo de substituição dos filmes agrupados por classificação indicativa
SELECT rating, MAX(replacement_cost)
FROM sakila.film
GROUP BY rating;

-- Custo total de substituição de filmes agrupados por classificação indicativa
SELECT rating, SUM(replacement_cost)
FROM sakila.film
GROUP by rating
ORDER BY DESC;

-- PRATICANDO
SELECT active, COUNT(*)
FROM sakila.customer
GROUP BY active;

SELECT store_id, active, COUNT(*)
FROM sakila.customer
GROUP BY store_id, active;

SELECT AVG(rental_duration) AS 'avg rental duration', rating
FROM sakila.film
GROUP BY rating
ORDER BY 'avg rental duration' DESC;

-- falta fazer um
 
-- Podemos usar o HAVING para filtrar resultados agrupados, assim como usamos o SELECT...WHERE para filtrar resultados individuais.
-- A query a seguir busca o nome e a quantidade de nomes cadastrados na tabela sakila.actor e os agrupa por quantidade.
-- Por fim, filtramos os resultados agrupados usando o HAVING, para que somente os nomes que estão cadastrados duas ou mais vezes sejam exibidos.

SELECT first_name, COUNT(*)
FROM sakila.actor
GROUP BY first_name
HAVING COUNT(*) > 2;

-- Ou, melhor ainda, usando o AS para dar nomes às colunas de agregação,
-- melhorando a leitura do resultado
SELECT first_name, COUNT(*) AS nomes_cadastrados
FROM sakila.actor
GROUP BY first_name
HAVING nomes_cadastrados > 2;

-- Observação: o alias não funciona com strings para o HAVING,
-- então use o underline ("_") para separar palavras
-- Ou seja, o exemplo abaixo não vai funcionar
SELECT first_name, COUNT(*) AS 'nomes cadastrados'
FROM sakila.actor
GROUP BY first_name
HAVING 'nomes cadastrados' > 2;



-- PARA FIXAR
SELECT rating, AVG(length) AS media_duracao
FROM sakila.film
GROUP BY rating
HAVING media_duracao BETWEEN 115 AND 121.5
ORDER BY media_duracao DESC;

SELECT rating, SUM(replacement_cost) AS custo_substituicao
FROM sakila.film
GROUP by rating
HAVING  custo_substituicao > 3950.5
ORDER BY custo_substituicao;
    