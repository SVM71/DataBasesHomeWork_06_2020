
-- Learning recource DATABASE
-- сгенерировали учебные материалы дополнительные таблицы данных - заполняем БД... 
USE lr;

DROP TABLE IF EXISTS answers;
DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS learn_materials;
DROP TABLE IF EXISTS predmets;

-- Таблица дисциплины 
CREATE TABLE predmets (
  predmet_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "идентификатор предмета", 
  predmet_name VARCHAR(100) NOT NULL COMMENT "название предмета",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Дисциплины, предметы";

INSERT INTO predmets(predmet_name, created_at) 
SELECT predmet_name, created_at  
FROM predmets_d;

SELECT * FROM predmets p; 

-- Таблица Учебные материалы по дисциплине, предмету
CREATE TABLE learn_materials (
  lm_id	 INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "ид материала",
  lm_name VARCHAR(100) NOT NULL COMMENT "название материала",
  lm_learn_time INT UNSIGNED NOT NULL DEFAULT 0 COMMENT "время на освоение материала",
  lm_data_file VARCHAR(100)  NOT NULL COMMENT "Ссылка на файл с материалами",
  lm_predmet_id INT UNSIGNED DEFAULT NULL COMMENT "ссылка на Таблицу дисциплины",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
  CONSTRAINT learn_materials_lm_predmet_id_fk FOREIGN KEY ( lm_predmet_id ) 
  REFERENCES predmets(predmet_id) ON DELETE SET NULL ON UPDATE CASCADE  
) COMMENT "Учебные материалы по дисциплине"; 


INSERT INTO learn_materials(lm_name, lm_learn_time, lm_data_file, lm_predmet_id) 
SELECT lm_name, lm_learn_time, lm_data_file, lm_predmet_id  
FROM learn_materials_d;

SELECT * FROM learn_materials LIMIT 10; 

-- Таблица Вопросы 
CREATE TABLE questions (
  quest_id	 INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "ид_вопроса",
  quest_text VARCHAR(255) NOT NULL COMMENT "текст вопроса",
  quest_file VARCHAR(100) DEFAULT NULL COMMENT "Ссылка на файл с картинкой вопросом",
  quest_lm_id INT UNSIGNED DEFAULT NULL COMMENT "ссылка на Учебный материал",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
  CONSTRAINT questions_quest_lm_id_fk FOREIGN KEY ( quest_lm_id ) 
  REFERENCES learn_materials(lm_id) ON DELETE CASCADE ON UPDATE CASCADE  
) COMMENT "вопросы по Учебному материалу"; 

INSERT INTO questions(quest_text, quest_file, quest_lm_id) 
SELECT quest_text, quest_file, quest_lm_id  
FROM questions_d;

SELECT * FROM questions; 

-- Таблица Ответы 
CREATE TABLE answers (
  answer_id	 INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "ид_ответа",
  answer_text VARCHAR(255) NOT NULL COMMENT "текст ответа",
  answer_file VARCHAR(100) DEFAULT NULL COMMENT "Ссылка на файл с ответом",
  answer_hash VARCHAR(64) AS (SHA2 ( CONCAT ( answer_text, answer_file ), 256 )) STORED NOT NULL COMMENT "хэш ответа",
  answer_is_true BOOL NOT NULL DEFAULT FALSE COMMENT "флаг верный ответ на вопрос",
  a_quest_id INT UNSIGNED NOT NULL COMMENT "ид вопроса к которому относится ответ",
  CONSTRAINT answers_a_quest_id_fk FOREIGN KEY ( a_quest_id ) REFERENCES questions ( quest_id ) ON DELETE CASCADE ON UPDATE CASCADE    
) COMMENT "Ответы на вопросы по Учебному материалу"; 


INSERT INTO answers(answer_text, answer_file, answer_is_true, a_quest_id) 
	SELECT
		fst.answer_text AS answer_text,
		fst.answer_file AS answer_file,
		fst.answer_is_true AS answer_is_true,
		fst.a_quest_id AS a_quest_id
	FROM 
		answers_d AS fst,
		answers_d AS scnd
	LIMIT 500;

SELECT * FROM answers WHERE answer_id BETWEEN 190 AND 310; 

