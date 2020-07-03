USE vk_v1;

-- Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
CREATE PROCEDURE hello ()
BEGIN
  DECLARE i INT DEFAULT 0;
  SET  i = TIME_FORMAT( CURRENT_TIME() + INTERVAL 4 HOUR, '%H' );
  IF ( i < 6 ) THEN
    SELECT "Доброй ночи";
  ELSE IF ( (i >= 6) AND (i < 12) ) THEN
    SELECT "Доброе утро";
  ELSE IF ( (i >= 12) AND (i < 18) ) THEN
    SELECT "Добрый день";
  ELSE IF (i >= 18) THEN
    SELECT "Доброй ночи";
  END IF;
END;

CALL hello();
-- 
-- (по желанию) Пусть имеется любая таблица с календарным полем created_at. Создайте запрос, который удаляет 
-- устаревшие записи из таблицы, оставляя только 5 самых свежих записей.
SELECT * FROM users u WHERE u.id IN ( SELECT * FROM ( SELECT id FROM users u2 ORDER BY created_at DESC LIMIT 5) AS last_5);  
-- DELETE * FROM users u WHERE u.id NOT IN ( SELECT * FROM ( SELECT id FROM users u2 ORDER BY created_at DESC LIMIT 5) AS last_5);  

