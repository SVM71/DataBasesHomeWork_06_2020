USE vk_v1;

DESC profiles;
DESC likes;
SELECT * FROM likes LIMIT 10;

-- 3 Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT (  
	SELECT gender FROM profiles p2 WHERE user_id = likes.user_id) AS gender
FROM likes LIMIT 10; 

SELECT (  
	SELECT gender FROM profiles p2 WHERE user_id = likes.user_id) AS gender,
	COUNT(user_id) AS total
FROM likes
	GROUP BY gender 
	ORDER BY total DESC LIMIT 1;

-- 4. Подсчитать общее количество лайков десяти самым молодым пользователям 
-- (сколько лайков получили 10 самых молодых пользователей).

DESC likes;
DESC profiles; 
-- Выбираем самых 10 молодых пользователей
SELECT 
	( SELECT birthday FROM profiles p2 WHERE user_id = target_id ) AS user_birth
FROM likes l
	ORDER BY user_birth DESC LIMIT 10;

-- Выбираем число лайков по условию
SELECT 
	( SELECT COUNT(*) FROM likes WHERE target_id = p3.user_id AND target_type_id = 2 ) AS user_likes
FROM profiles p3 
	ORDER BY birthday DESC LIMIT 10;

-- Summ
SELECT 
	SUM(user_likes) 
FROM 
	(SELECT 
		( SELECT COUNT(*) FROM likes WHERE target_id = p3.user_id AND target_type_id = 2 ) AS user_likes 
	FROM profiles p3 
		ORDER BY birthday DESC LIMIT 10) AS likes_count;

-- вариант 2
SELECT COUNT(*) FROM likes WHERE target_type_id = 2 
	AND  target_id IN (
		SELECT * FROM (SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10) AS young_users
	);

DESC likes;
SELECT * FROM target_types;
DESC profiles; 

-- вариант 3 с подсчетом лайков за все медиа посты сообщения
SELECT 
	birthday, 
	user_id, 
	(
		SELECT COUNT(*) FROM likes l2 WHERE
			( target_id IN (SELECT id FROM messages WHERE messages.from_user_id  = p.user_id AND l2.target_type_id = 1) ) OR
			( target_id = p.user_id AND l2.target_type_id = 2 )  OR
			( target_id IN (SELECT id FROM media WHERE media.user_id = p.user_id AND l2.target_type_id = 3 ) ) OR
			( target_id IN (SELECT id FROM posts WHERE posts.user_id = p.user_id AND l2.target_type_id = 4 ) ) 
	) AS likes 
FROM profiles p ORDER BY birthday DESC LIMIT 10; 

-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети
-- (критерии активности необходимо определить самостоятельно).

SELECT 
	CONCAT( first_name, ' ', last_name) AS user_name,
	(SELECT COUNT(*) FROM posts WHERE posts.user_id = u.id) + 
	(SELECT COUNT(*) FROM media WHERE media.user_id = u.id) + 
	(SELECT COUNT(*) FROM messages WHERE messages.from_user_id = u.id) AS user_activity
FROM users u 
ORDER BY user_activity LIMIT 10; 

-- 7.1 ПОДГОТОВКА Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
CREATE DATABASE test_db;
USE test_db;
SHOW TABLES;

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');

 -- Создаём таблицу пользователей
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME,
  updated_at DATETIME
) COMMENT = 'Покупатели';

INSERT INTO
  users (name, birthday_at, created_at, updated_at)
VALUES
  ('Геннадий', '1990-10-05', '2016-01-07 12:05:33.0', '2016-01-07 12:05:45.0'),
  ('Наталья', '1984-11-12', '2016-05-20 16:32:45.0', '2016-05-20 16:32:33.0'),
  ('Александр', '1985-05-20', '2016-08-14 20:10:20.0', '2016-08-14 20:10:13.0'),
  ('Сергей', '1988-02-14', '2016-10-21 9:14:00.0', '2016-10-21 9:14:39.0'),
  ('Иван', '1998-01-12', '2016-12-15 12:45:09.0', '2016-12-15 12:45:15.0'),
  ('Мария', '2006-08-29', '2017-01-12 8:56:22.0', '2017-01-12 8:56:47.0');

SELECT * FROM users;

DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  desription TEXT COMMENT 'Описание',
  price DECIMAL (11,2) COMMENT 'Цена',
  catalog_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id (catalog_id)
) COMMENT = 'Товарные позиции';

INSERT INTO products
  (name, desription, price, catalog_id)
VALUES
  ('Intel Core i3-8100', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 7890.00, 1),
  ('Intel Core i5-7400', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 12700.00, 1),
  ('AMD FX-8320E', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 4780.00, 1),
  ('AMD FX-8320', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 7120.00, 1),
  ('ASUS ROG MAXIMUS X HERO', 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX', 19310.00, 2),
  ('Gigabyte H310M S2H', 'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
  ('MSI B250M GAMING PRO', 'Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', 5060.00, 2);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id)
) COMMENT = 'Заказы';

DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
  id SERIAL PRIMARY KEY,
  order_id INT UNSIGNED,
  product_id INT UNSIGNED,
  total INT UNSIGNED DEFAULT 1 COMMENT 'Количество заказанных товарных позиций',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Состав заказа';

DROP TABLE IF EXISTS discounts;
CREATE TABLE discounts (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  product_id INT UNSIGNED,
  discount FLOAT UNSIGNED COMMENT 'Величина скидки от 0.0 до 1.0',
  started_at DATETIME,
  finished_at DATETIME,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id),
  KEY index_of_product_id(product_id)
) COMMENT = 'Скидки';

-- заказы
INSERT INTO orders (user_id)
SELECT id FROM users WHERE name = 'Геннадий';

INSERT INTO orders_products( order_id, product_id, total)
SELECT LAST_INSERT_ID(), id, 2 FROM products
WHERE name = 'Intel Core i5-7400';

INSERT INTO orders (user_id)
SELECT id FROM users WHERE name = 'Наталья';

INSERT INTO orders_products( order_id, product_id, total)
SELECT LAST_INSERT_ID(), id, 1 FROM products
WHERE name IN ( 'Intel Core i5-7400', 'Gigabyte H310M 52H' );

INSERT INTO orders (user_id)
SELECT id FROM users WHERE name = 'Иван';

INSERT INTO orders_products( order_id, product_id, total)
SELECT LAST_INSERT_ID(), id, 1 FROM products
WHERE name IN ( 'AMD FX-8320', 'ASUS R0G MAXIMUS X HERO' );

DESC users;
SELECT id, name, birthday_at FROM users;

-- 7.1 Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
SELECT u.id, u.name, u.birthday_at 
	FROM users AS u 
		JOIN orders AS o
			ON u.id = o.user_id;
		
-- 7.2 Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT p.id, c.name AS catalog, p.name, p.price
	FROM products AS p 
		JOIN catalogs AS c
			ON p.catalog_id = c.id
				ORDER BY p.price DESC;

		
-- 7.3 (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, поле name — русское. 
-- Выведите список рейсов flights с русскими названиями городов.

DROP TABLE IF EXISTS flights;
CREATE TABLE flights(
	id SERIAL PRIMARY KEY,
	ffrom VARCHAR(255) COMMENT 'город отправления англ',
	fto VARCHAR(255) COMMENT 'город прибытия англ.'
) COMMENT = 'таблица рейсов';

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
	id SERIAL PRIMARY KEY,
	label VARCHAR(255), 
	name VARCHAR(255) COMMENT 'город перевод русское.'
) COMMENT = 'таблица городов';
	
INSERT INTO flights(ffrom, fto) VALUES
('Moscow', 'Kazan'),
('Kazan', 'Moscow'),		
('Omsk', 'Moscow'),
('Irkutsk', 'Moscow'),
('Novgorod', 'Moscow');

INSERT INTO cities(label, name) VALUES
('Moscow', 'Москва'),
('Kazan', 'Казань'),		
('Omsk', 'Омск'),
('Irkutsk', 'Иркутск'),
('Novgorod', 'Новгород');


SELECT 
	f.id, 
	cities_from.name AS 'from',
	cities_to.name AS 'to'
FROM flights AS f
	JOIN cities as cities_from
		ON f.ffrom = cities_from.label
	JOIN cities as cities_to
		ON f.fto = cities_to.label
		
		
-- 8 Переписать сложные запросы с применением JOIN
-- 3 Определить кто больше поставил лайков (всего) - мужчины или женщины?
USE vk_v1;

SELECT  
	p.gender AS gender
FROM likes AS l
	JOIN profiles AS p 
		ON p.user_id = l.user_id 
LIMIT 10; 

SELECT 
	p.gender AS gender,
	COUNT(l.user_id ) AS total
FROM likes AS l
	JOIN profiles AS p
		ON p.user_id = l.user_id 
	GROUP BY p.gender
	ORDER BY total DESC LIMIT 1;
		
-- 4. Подсчитать общее количество лайков десяти самым молодым пользователям 
-- (сколько лайков получили 10 самых молодых пользователей).
-- Выбираем самых 10 молодых пользователей
-- SELECT 
-- 	( SELECT birthday FROM profiles p2 WHERE user_id = target_id ) AS user_birth
-- FROM likes l
-- 	ORDER BY user_birth DESC LIMIT 10;

SELECT 
	p.birthday AS user_birth
FROM likes AS l
	JOIN profiles AS p 
		ON p.user_id = l.target_id 
	ORDER BY user_birth DESC LIMIT 10;

-- Выбираем число лайков по условию
-- SELECT 
-- 	p3.birthday ,
-- 	( SELECT COUNT(*) FROM likes WHERE target_id = p3.user_id AND target_type_id = 2 ) AS user_likes
-- FROM profiles p3 
-- 	ORDER BY birthday DESC LIMIT 10;

DESC profiles;
DESC likes;
SELECT
	p.birthday,
	(SELECT COUNT(likes.target_id) FROM likes WHERE target_id = p.user_id AND target_type_id = 2 ) AS user_likes
FROM profiles AS p
	LEFT JOIN likes AS l 
		ON l.target_id = p.user_id AND l.target_type_id = 2
	ORDER BY p.birthday DESC LIMIT 10;



-- Summ
-- SELECT 
-- 	SUM(user_likes) 
-- FROM 
-- 	(SELECT 
-- 		( SELECT COUNT(*) FROM likes WHERE target_id = p3.user_id AND target_type_id = 2 ) AS user_likes 
-- 	FROM profiles p3 
-- 		ORDER BY birthday DESC LIMIT 10) AS likes_count;
	
SELECT 
	SUM(user_likes) 
FROM 	
(SELECT
	(SELECT COUNT(likes.id) FROM likes WHERE target_id = p.user_id AND target_type_id = 2 ) AS user_likes
FROM profiles AS p
	LEFT JOIN likes AS l 
		ON l.target_id = p.user_id AND l.target_type_id = 2
	ORDER BY p.birthday DESC LIMIT 10) AS likes_count;
	

-- вариант 2
-- SELECT COUNT(*) FROM likes WHERE target_type_id = 2 
-- 	AND  target_id IN (
-- 		SELECT * FROM (SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10) AS young_users
-- 	);

SELECT 
	COUNT(given_likes)
FROM
	(SELECT
		l.target_id AS given_likes   
		FROM likes AS l 
			RIGHT JOIN profiles AS p 
				ON l.target_id = p.user_id AND l.target_type_id = 2
		ORDER BY p.birthday DESC LIMIT 10) AS xxxx;


-- вариант 3 с подсчетом лайков за все медиа посты сообщения
-- SELECT 
-- 	birthday, 
-- 	user_id, 
-- 	(
-- 		SELECT COUNT(*) FROM likes l2 WHERE
-- 			( target_id IN (SELECT id FROM messages WHERE messages.from_user_id  = p.user_id AND l2.target_type_id = 1) ) OR
-- 			( target_id = p.user_id AND l2.target_type_id = 2 )  OR
-- 			( target_id IN (SELECT id FROM media WHERE media.user_id = p.user_id AND l2.target_type_id = 3 ) ) OR
-- 			( target_id IN (SELECT id FROM posts WHERE posts.user_id = p.user_id AND l2.target_type_id = 4 ) ) 
-- 	) AS likes 
-- FROM profiles p ORDER BY birthday DESC LIMIT 10; 



-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети
-- (критерии активности необходимо определить самостоятельно).
-- SELECT 
-- 	u.id AS us_id,	
-- 	CONCAT( first_name, ' ', last_name) AS user_name,
-- 	(SELECT COUNT(*) FROM posts WHERE posts.user_id = u.id) + 
-- 	(SELECT COUNT(*) FROM media WHERE media.user_id = u.id) + 
-- 	(SELECT COUNT(*) FROM messages WHERE messages.from_user_id = u.id) AS user_activity
-- FROM users u 
-- ORDER BY user_activity LIMIT 10; 



