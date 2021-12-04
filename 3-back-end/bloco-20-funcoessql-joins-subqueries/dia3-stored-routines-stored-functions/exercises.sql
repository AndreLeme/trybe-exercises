CREATE DATABASE IF NOT EXISTS BeeMovies;

USE BeeMovies;

CREATE TABLE movies(
    movie_id INT PRIMARY KEY auto_increment,
    ticket_price DECIMAL(12, 2) NOT NULL DEFAULT 0,
    ticket_price_estimation VARCHAR(15),
    release_year YEAR
) engine = InnoDB;

CREATE TABLE movies_logs(
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT NOT NULL,
    executed_action VARCHAR(15) NOT NULL,
    log_date DATE NOT NULL
) engine = InnoDB;

-- 1.
USE BeeMovies;

DELIMITER $$

CREATE TRIGGER trigger_set_release_year
	BEFORE INSERT ON movies
    FOR EACH ROW
BEGIN
	SET NEW.release_year = YEAR(NOW());
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER trigger_insert_movie_log
	AFTER INSERT ON movies
    FOR EACH ROW
BEGIN
	INSERT INTO movies_logs(movie_id, executed_action, log_date)
	VALUES(NEW.movie_id, 'INSERT', NOW());
END $$

DELIMITER ;

DROP TRIGGER trigger_insert_movie_log;
DROP TRIGGER trigger_set_release_year;

INSERT INTO movies(ticket_price, ticket_price_estimation, release_year)
VALUES (7, 'teste 5', 2014);

SHOW TRIGGERS;
-- 2.
USE BeeMovies;
DELIMITER $$

CREATE TRIGGER trigger_compare_ticket_price
	BEFORE UPDATE ON movies
    FOR EACH ROW
BEGIN
	SET ticket_price_estimation = IF(NEW.ticket_price > OLD.ticket_price, 'Increasing', 'Decreasing');
    INSERT INTO movies_logs(movie_id, executed_action, log_date)
	VALUES(NEW.movie_id, 'INSERT', NOW());
END $$

DELIMITER ;

-- 3.
USE BeeMovies;
DELIMITER $$

CREATE TRIGGER trigger

DELIMITER ;