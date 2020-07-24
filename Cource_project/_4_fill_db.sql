-- Learning recource DATABASE
-- Таблицы для генерации данных на сайте http://filldb.info/
-- Таблица дисциплины 
CREATE TABLE predmets_d (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "идентификатор предмета", 
  predmet_name VARCHAR(100) NOT NULL COMMENT "название предмета",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Дисциплины, предметы"; 

-- Таблица Учебные материалы по дисциплине, предмету
CREATE TABLE learn_materials_d (
  id	 INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "ид материала",
  lm_name VARCHAR(100) NOT NULL COMMENT "название материала",
  lm_learn_time INT UNSIGNED NOT NULL DEFAULT 0 COMMENT "время на освоение материала",
  lm_data_file VARCHAR(100)  NOT NULL COMMENT "Ссылка на файл с материалами",
  lm_predmet_id INT UNSIGNED DEFAULT NULL COMMENT "ссылка на Таблицу дисциплины"
) COMMENT "Учебные материалы по дисциплине"; 

-- Таблица Вопросы 
CREATE TABLE questions_d (
  id	 INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "ид_вопроса",
  quest_text VARCHAR(255) NOT NULL COMMENT "текст вопроса",
  quest_file VARCHAR(100) DEFAULT NULL COMMENT "Ссылка на файл с картинкой вопросом",
  quest_lm_id INT UNSIGNED DEFAULT NULL COMMENT "ссылка на Учебный материал",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "вопросы по Учебному материалу"; 

-- Таблица Ответы 
CREATE TABLE answers_d (
  id	 INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "ид_ответа",
  answer_text VARCHAR(255) NOT NULL COMMENT "текст ответа",
  answer_file VARCHAR(100) DEFAULT NULL COMMENT "Ссылка на файл с ответом",
  answer_hash VARCHAR(64) COMMENT "хэш ответа",
  answer_is_true BOOL NOT NULL DEFAULT FALSE COMMENT "флаг верный ответ на вопрос",
  a_quest_id INT UNSIGNED DEFAULT NULL COMMENT "ид вопроса к которому относится ответ"
) COMMENT "Ответы на вопросы по Учебному материалу"; 


