USE vk;

DESC users;
SELECT * FROM users LIMIT 10;

CREATE TEMPORARY TABLE months(
	id INT UNSIGNED AUTO_INCREMENT NOT NULL, 
	name VARCHAR(20) NOT NULL UNIQUE,
	PRIMARY KEY (id)	
);

INSERT INTO months(name) VALUES 
('€нварь'),('февраль'),('март'),('апрель'),('май'),('июнь'),
('июль'),('август'),('сент€брь'),('окт€брь'),('но€брь'),('декабрь');



-- –јЅќ“ј≈“ --
SELECT id FROM months WHERE name RLIKE 'февраль|май' ORDER BY id;

-- –јЅќ“ј≈“ --
SELECT * FROM users WHERE created_at RLIKE CONCAT( '^[[:digit:]]{4}-[0, ', 
		(SELECT id FROM months WHERE name RLIKE 'февраль'),
		']{2}-[[:digit:]]{2}');

-- Ќ≈ –јЅќ“ј≈“ -- SQL Error [1242] [21000]: Subquery returns more than 1 row
SELECT * FROM users WHERE created_at RLIKE CONCAT( '^[[:digit:]]{4}-[0, ', 
		(SELECT id FROM months WHERE name RLIKE 'февраль|май'),
		']{2}-[[:digit:]]{2}');

	
SELECT AVG ( YEAR(NOW())-YEAR(created_at) ) FROM users;

SELECT * FROM users WHERE id IN (5, 1, 2) ORDER BY FIELD(id, 5, 1, 2);
	

DROP TEMPORARY TABLE IF EXISTS store_prices;

CREATE TEMPORARY TABLE store_prices(
	id INT UNSIGNED AUTO_INCREMENT NOT NULL, 
	value INT UNSIGNED NOT NULL,
	catalog_id BOOL AS (value = 0),
	PRIMARY KEY (id)	
);

INSERT INTO store_prices(value) VALUES 
(0),(2500),(0),(30),(500),(1);

SELECT value FROM store_prices ORDER BY catalog_id, value;

SELECT DISTINCT DAYOFWEEK(created_at) FROM users;


SELECT DATE_FORMAT(created_at,'2020-%m-%d') FROM users;

SELECT id FROM users WHERE id IN (1, 3);

SELECT COUNT(id) FROM store_prices WHERE value IN (2500, 500); 

-- (SELECT value FROM store_prices IN (2500, 500));
SET @res = 1;
SELECT @res*id  FROM store_prices WHERE @res = id ORDER BY id;


SELECT id  FROM store_prices WHERE id = (SELECT id FROM store_prices LIMIT 1 OFFSET 1);

SELECT COUNT( DAYOFWEEK( DATE_FORMAT(created_at,'2020-%m-%d') ) ) FROM users WHERE  DAYOFWEEK( DATE_FORMAT(created_at,'2020-%m-%d') ) = 7;



SELECT SUM( id ) FROM users;
SELECT AVG( id ) FROM users;
	
	
SELECT * FROM months ORDER BY id;
SELECT  CONCAT( 'февраль', 'март', 'апрель', 'май' );

SELECT  CONCAT( (SELECT * FROM months WHERE name IN ('февраль', 'март', 'апрель', 'май') ORDER BY id LIMIT 1) );


SELECT CONCAT( SELECT id FROM months WHERE name RLIKE 'февраль|май' ORDER BY id LIMIT 1) FROM months;

SELECT * FROM users WHERE created_at RLIKE CONCAT( '^[[:digit:]]{4}-[0, ', 
		(SELECT id FROM months WHERE name IN ('февраль', 'март', 'апрель', 'май') ORDER BY id LIMIT 1),
		']{2}-[[:digit:]]{2}');
	
	
-- SELECT * FROM users WHERE created_at RLIKE CONCAT( '^[[:digit:]]{4}-[0, ', (SELECT id FROM months WHERE name LIKE 'февраль'),']{2}-[[:digit:]]{2}');

-- (SELECT id FROM months WHERE name IN ('февраль', 'март', 'апрель', 'май') ORDER BY id LIMIT 1);
