DROP DATABASE IF EXISTS lr;
-- Learning recource DATABASE
CREATE DATABASE lr; 
USE lr;

DROP TABLE IF EXISTS predmets;
-- Таблица дисциплины 
CREATE TABLE predmets (
  predmet_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "идентификатор предмета", 
  predmet_name VARCHAR(100) NOT NULL COMMENT "название предмета",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Дисциплины, предметы"; 

DROP TABLE IF EXISTS learn_materials;
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

DROP TABLE IF EXISTS questions;
-- Таблица Вопросы 
CREATE TABLE questions (
  quest_id	 INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "ид_вопроса",
  quest_text VARCHAR(255) NOT NULL COMMENT "текст вопроса",
  quest_file VARCHAR(100) DEFAULT NULL COMMENT "Ссылка на файл с картинкой вопросом",
  quest_lm_id INT UNSIGNED DEFAULT NULL COMMENT "ссылка на Учебный материал",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  -- тип выбора ответов только один ответ верный или несколько ответов верные
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
  CONSTRAINT questions_quest_lm_id_fk FOREIGN KEY ( quest_lm_id ) 
  REFERENCES learn_materials(lm_id) ON DELETE CASCADE ON UPDATE CASCADE  
) COMMENT "вопросы по Учебному материалу"; 

DROP TABLE IF EXISTS answers;
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

DROP TABLE IF EXISTS users;
-- Создаём таблицу пользователей
CREATE TABLE users (
  user_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  first_name VARCHAR(100) NOT NULL COMMENT "Имя пользователя",
  last_name VARCHAR(100) NOT NULL COMMENT "Фамилия пользователя",
  email VARCHAR(100) NOT NULL UNIQUE COMMENT "Почта",
  phone VARCHAR(100) NOT NULL UNIQUE COMMENT "Телефон",  
  user_status BOOL NOT NULL COMMENT "Статус пользователя - активен, удален",  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Пользователи";  

DROP TABLE IF EXISTS profiles;
-- Таблица профилей
CREATE TABLE profiles (
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя", 
  photo_id VARCHAR(100)  NOT NULL COMMENT "Ссылка на файл с фото пользователя",
  gender CHAR(1) NOT NULL COMMENT "Пол",
  birthday DATE COMMENT "Дата рождения",
  city VARCHAR(130) COMMENT "Город проживания",
  country VARCHAR(130) COMMENT "Страна проживания",
  is_prepod BOOL NOT NULL DEFAULT FALSE	COMMENT "Тип Социальный статус - студент либо преподаватель",
  user_social_id INT UNSIGNED NOT NULL COMMENT "индекс в таблице студентов преподавателей",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
  PRIMARY KEY ( user_id ),
  CONSTRAINT profiles_user_id_fk FOREIGN KEY ( user_id ) REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE CASCADE  
) COMMENT "Профили"; 

DROP TABLE IF EXISTS messages;
-- Таблица сообщений
CREATE TABLE messages (
  msg_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  from_user_id INT UNSIGNED COMMENT "Ссылка на отправителя сообщения",
  to_user_id INT UNSIGNED COMMENT "Ссылка на получателя сообщения",
  body TEXT NOT NULL COMMENT "Текст сообщения",
  is_important BOOLEAN COMMENT "Признак важности",
  is_delivered BOOLEAN COMMENT "Признак доставки",
  created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки",
  CONSTRAINT messages_from_user_id_fk FOREIGN KEY ( from_user_id ) REFERENCES users(user_id) ON DELETE SET NULL,  
  CONSTRAINT messages_to_user_id_fk FOREIGN KEY ( to_user_id ) REFERENCES users(user_id) ON DELETE SET NULL
) COMMENT "Сообщения";

DROP TABLE IF EXISTS students;
-- Таблица студенты
CREATE TABLE students (
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя", 
  group_name VARCHAR(100) NOT NULL COMMENT "Группа в которой обучается студент",
  institute_name VARCHAR(100) NOT NULL COMMENT "институт",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
  PRIMARY KEY (user_id),
  CONSTRAINT students_user_id_fk FOREIGN KEY ( user_id ) REFERENCES users(user_id) ON DELETE CASCADE
) COMMENT "Студенты";

DROP TABLE IF EXISTS prepods;
-- Таблица преподаватели
CREATE TABLE prepods (
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя", 
  institute_name VARCHAR(100) NOT NULL COMMENT "институт",
  cathedra_name VARCHAR(100) NOT NULL COMMENT "кафедра",
  prepod_position VARCHAR(100) NOT NULL COMMENT "занимаемая должность",
  academic_degree VARCHAR(100) NOT NULL COMMENT "ученая степень",
  satrt_work_at DATE COMMENT "дата приема на работу",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
  PRIMARY KEY (user_id),
  CONSTRAINT prepods_user_id_fk FOREIGN KEY ( user_id ) REFERENCES users(user_id) ON DELETE CASCADE
) COMMENT "Преподаватели"; 

DROP TABLE IF EXISTS prepods_students_predmets;
-- Таблица связь препод студент время предмет
CREATE TABLE prepods_students_predmets (
  psp_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "идентификатор программы обучения", 
  psp_predmet_id INT UNSIGNED COMMENT "ссылка на Таблицу дисциплины, предметы- или учебная деятельность", 
  satrted_at DATE NOT NULL COMMENT "начало старт обучения",
  hours INT UNSIGNED NOT NULL DEFAULT 0 COMMENT "длительность обучения часов",
  is_finished BOOL NOT NULL DEFAULT FALSE COMMENT "статус программы завершена или в процессе (может и не началась!) ",
  teacher_id INT UNSIGNED COMMENT "кто учит - ссылка на Таблицу преподаватели",
  student_id INT UNSIGNED COMMENT "кого учат - ссылка на Таблицу студенты",
  CONSTRAINT prepods_students_predmets_psp_predmet_id_fk FOREIGN KEY ( psp_predmet_id ) REFERENCES predmets ( predmet_id ) ON DELETE SET NULL,
  CONSTRAINT prepods_students_predmets_teacher_id_fk FOREIGN KEY ( teacher_id ) REFERENCES prepods ( user_id ) ON DELETE SET NULL,
  CONSTRAINT prepods_students_predmets_student_id_fk FOREIGN KEY ( student_id ) REFERENCES students ( user_id ) ON DELETE SET NULL
) COMMENT "программы обучения"; 


DROP TABLE IF EXISTS learn_process_logs;
-- Тпаблица логи по работе с учебным материалом
CREATE TABLE learn_process_logs (
  lp_log_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "идентификатор строки", 
  user_id INT UNSIGNED COMMENT "Ссылка на пользователя", 
  learn_mat_id INT UNSIGNED COMMENT "ссылка на ид_учебного материала",
  try_counter INT UNSIGNED NOT NULL DEFAULT 0 COMMENT "Счетчик попыток ответов на вопросы по теме",
  try_date_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "время изменения",
  CONSTRAINT learn_process_logs_user_id_fk FOREIGN KEY ( user_id ) REFERENCES users ( user_id ) ON DELETE SET NULL,
  CONSTRAINT learn_process_logs_learn_mat_id_fk FOREIGN KEY ( learn_mat_id ) REFERENCES learn_materials ( lm_id ) ON DELETE SET NULL
) COMMENT "логи по работе с учебным материалом"; 

DROP TABLE IF EXISTS answer_2_questions_logs;
-- Тпаблица статистика_по ответам на вопросы
CREATE TABLE answer_2_questions_logs (
  a2q_log_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "идентификатор строки", 
  lp_log_id INT UNSIGNED NOT NULL DEFAULT 0 COMMENT "ссылка на ид_логи по работе с учебным материалом",
  question_id INT UNSIGNED COMMENT "ссылка на таблицу  Вопрос", 
  is_right_answer BOOL NOT NULL DEFAULT TRUE COMMENT "верный ответ Да нет", 
  bad_answer_id	INT UNSIGNED COMMENT "ссылка на неверный ответ идентификатор", 
  a2q_date_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "время ответа",
  CONSTRAINT answer_2_questions_lp_log_id_fk FOREIGN KEY ( lp_log_id ) REFERENCES learn_process_logs ( lp_log_id ) ON DELETE CASCADE,
  CONSTRAINT answer_2_questions_logs_question_id_fk FOREIGN KEY ( question_id ) REFERENCES questions ( quest_id ) ON DELETE SET NULL,
  CONSTRAINT answer_2_questions_logs_bad_answer_id_fk FOREIGN KEY ( bad_answer_id ) REFERENCES answers ( answer_id ) ON DELETE  SET NULL
) COMMENT "логи по ответам на вопросы"; 

SHOW TABLES;




-- При добавлении ответа - поиск по ХЭШ наличия ответа
-- при удалении по idответа ищем его присуитствие в  других вопросах	

-- Таблица соответствие препод - Программа занятий
-- идея - проверка при добавлении данных в программу обучения - соответствие должности статус - активен

-- Таблица лог по действиям пользователя.
	-- событие (под событием понимаем запуск тестов ...) 
	-- время и день события 

-- view таблица - расчетный столбец - количество часов в программе
-- длительность обучения  часов расчетный столбец  

-- Запрос данных по преподу, по студенту

-- Запросы по программе обучения ...
	-- вывести инфо по группе студентов
	-- запросить почту препода
	-- запрсить 	
-- Зпросы по программе обучения - часы разделы тем, вопросы по выбранной теме

-- добавление вопроса и ответов
-- прверка наличия хотябы одного корресного ответа
-- проверка наличия темы ...

-- выборка вопроса и ответов
 -- проверка наличия хотябы одного верного ответа

-- выборка числа верных ответов
 -- проверка наличия хотябы одного верного ответа

-- добавление ответа
-- проверка наличия темы


