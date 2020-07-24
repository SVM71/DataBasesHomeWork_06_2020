
-- Learning recource DATABASE
-- ������������� ������� ��������� �������������� ������� ������ - ��������� ��... 
USE lr;

DROP TABLE IF EXISTS answers;
DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS learn_materials;
DROP TABLE IF EXISTS predmets;

-- ������� ���������� 
CREATE TABLE predmets (
  predmet_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ��������", 
  predmet_name VARCHAR(100) NOT NULL COMMENT "�������� ��������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "����������, ��������";

INSERT INTO predmets(predmet_name, created_at) 
SELECT predmet_name, created_at  
FROM predmets_d;

SELECT * FROM predmets p; 

-- ������� ������� ��������� �� ����������, ��������
CREATE TABLE learn_materials (
  lm_id	 INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "�� ���������",
  lm_name VARCHAR(100) NOT NULL COMMENT "�������� ���������",
  lm_learn_time INT UNSIGNED NOT NULL DEFAULT 0 COMMENT "����� �� �������� ���������",
  lm_data_file VARCHAR(100)  NOT NULL COMMENT "������ �� ���� � �����������",
  lm_predmet_id INT UNSIGNED DEFAULT NULL COMMENT "������ �� ������� ����������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������",
  CONSTRAINT learn_materials_lm_predmet_id_fk FOREIGN KEY ( lm_predmet_id ) 
  REFERENCES predmets(predmet_id) ON DELETE SET NULL ON UPDATE CASCADE  
) COMMENT "������� ��������� �� ����������"; 


INSERT INTO learn_materials(lm_name, lm_learn_time, lm_data_file, lm_predmet_id) 
SELECT lm_name, lm_learn_time, lm_data_file, lm_predmet_id  
FROM learn_materials_d;

SELECT * FROM learn_materials LIMIT 10; 

-- ������� ������� 
CREATE TABLE questions (
  quest_id	 INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "��_�������",
  quest_text VARCHAR(255) NOT NULL COMMENT "����� �������",
  quest_file VARCHAR(100) DEFAULT NULL COMMENT "������ �� ���� � ��������� ��������",
  quest_lm_id INT UNSIGNED DEFAULT NULL COMMENT "������ �� ������� ��������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������",
  CONSTRAINT questions_quest_lm_id_fk FOREIGN KEY ( quest_lm_id ) 
  REFERENCES learn_materials(lm_id) ON DELETE CASCADE ON UPDATE CASCADE  
) COMMENT "������� �� �������� ���������"; 

INSERT INTO questions(quest_text, quest_file, quest_lm_id) 
SELECT quest_text, quest_file, quest_lm_id  
FROM questions_d;

SELECT * FROM questions; 

-- ������� ������ 
CREATE TABLE answers (
  answer_id	 INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "��_������",
  answer_text VARCHAR(255) NOT NULL COMMENT "����� ������",
  answer_file VARCHAR(100) DEFAULT NULL COMMENT "������ �� ���� � �������",
  answer_hash VARCHAR(64) AS (SHA2 ( CONCAT ( answer_text, answer_file ), 256 )) STORED NOT NULL COMMENT "��� ������",
  answer_is_true BOOL NOT NULL DEFAULT FALSE COMMENT "���� ������ ����� �� ������",
  a_quest_id INT UNSIGNED NOT NULL COMMENT "�� ������� � �������� ��������� �����",
  CONSTRAINT answers_a_quest_id_fk FOREIGN KEY ( a_quest_id ) REFERENCES questions ( quest_id ) ON DELETE CASCADE ON UPDATE CASCADE    
) COMMENT "������ �� ������� �� �������� ���������"; 


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

