DROP DATABASE IF EXISTS lr;
-- Learning recource DATABASE
CREATE DATABASE lr; 
USE lr;

DROP TABLE IF EXISTS predmets;
-- ������� ���������� 
CREATE TABLE predmets (
  predmet_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ��������", 
  predmet_name VARCHAR(100) NOT NULL COMMENT "�������� ��������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "����������, ��������"; 

DROP TABLE IF EXISTS learn_materials;
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

DROP TABLE IF EXISTS questions;
-- ������� ������� 
CREATE TABLE questions (
  quest_id	 INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "��_�������",
  quest_text VARCHAR(255) NOT NULL COMMENT "����� �������",
  quest_file VARCHAR(100) DEFAULT NULL COMMENT "������ �� ���� � ��������� ��������",
  quest_lm_id INT UNSIGNED DEFAULT NULL COMMENT "������ �� ������� ��������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",
  -- ��� ������ ������� ������ ���� ����� ������ ��� ��������� ������� ������
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������",
  CONSTRAINT questions_quest_lm_id_fk FOREIGN KEY ( quest_lm_id ) 
  REFERENCES learn_materials(lm_id) ON DELETE CASCADE ON UPDATE CASCADE  
) COMMENT "������� �� �������� ���������"; 

DROP TABLE IF EXISTS answers;
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

DROP TABLE IF EXISTS users;
-- ������ ������� �������������
CREATE TABLE users (
  user_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ������", 
  first_name VARCHAR(100) NOT NULL COMMENT "��� ������������",
  last_name VARCHAR(100) NOT NULL COMMENT "������� ������������",
  email VARCHAR(100) NOT NULL UNIQUE COMMENT "�����",
  phone VARCHAR(100) NOT NULL UNIQUE COMMENT "�������",  
  user_status BOOL NOT NULL COMMENT "������ ������������ - �������, ������",  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "������������";  

DROP TABLE IF EXISTS profiles;
-- ������� ��������
CREATE TABLE profiles (
  user_id INT UNSIGNED NOT NULL COMMENT "������ �� ������������", 
  photo_id VARCHAR(100)  NOT NULL COMMENT "������ �� ���� � ���� ������������",
  gender CHAR(1) NOT NULL COMMENT "���",
  birthday DATE COMMENT "���� ��������",
  city VARCHAR(130) COMMENT "����� ����������",
  country VARCHAR(130) COMMENT "������ ����������",
  is_prepod BOOL NOT NULL DEFAULT FALSE	COMMENT "��� ���������� ������ - ������� ���� �������������",
  user_social_id INT UNSIGNED NOT NULL COMMENT "������ � ������� ��������� ��������������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������",
  PRIMARY KEY ( user_id ),
  CONSTRAINT profiles_user_id_fk FOREIGN KEY ( user_id ) REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE CASCADE  
) COMMENT "�������"; 

DROP TABLE IF EXISTS messages;
-- ������� ���������
CREATE TABLE messages (
  msg_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ������", 
  from_user_id INT UNSIGNED COMMENT "������ �� ����������� ���������",
  to_user_id INT UNSIGNED COMMENT "������ �� ���������� ���������",
  body TEXT NOT NULL COMMENT "����� ���������",
  is_important BOOLEAN COMMENT "������� ��������",
  is_delivered BOOLEAN COMMENT "������� ��������",
  created_at DATETIME DEFAULT NOW() COMMENT "����� �������� ������",
  CONSTRAINT messages_from_user_id_fk FOREIGN KEY ( from_user_id ) REFERENCES users(user_id) ON DELETE SET NULL,  
  CONSTRAINT messages_to_user_id_fk FOREIGN KEY ( to_user_id ) REFERENCES users(user_id) ON DELETE SET NULL
) COMMENT "���������";

DROP TABLE IF EXISTS students;
-- ������� ��������
CREATE TABLE students (
  user_id INT UNSIGNED NOT NULL COMMENT "������ �� ������������", 
  group_name VARCHAR(100) NOT NULL COMMENT "������ � ������� ��������� �������",
  institute_name VARCHAR(100) NOT NULL COMMENT "��������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������",
  PRIMARY KEY (user_id),
  CONSTRAINT students_user_id_fk FOREIGN KEY ( user_id ) REFERENCES users(user_id) ON DELETE CASCADE
) COMMENT "��������";

DROP TABLE IF EXISTS prepods;
-- ������� �������������
CREATE TABLE prepods (
  user_id INT UNSIGNED NOT NULL COMMENT "������ �� ������������", 
  institute_name VARCHAR(100) NOT NULL COMMENT "��������",
  cathedra_name VARCHAR(100) NOT NULL COMMENT "�������",
  prepod_position VARCHAR(100) NOT NULL COMMENT "���������� ���������",
  academic_degree VARCHAR(100) NOT NULL COMMENT "������ �������",
  satrt_work_at DATE COMMENT "���� ������ �� ������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������",
  PRIMARY KEY (user_id),
  CONSTRAINT prepods_user_id_fk FOREIGN KEY ( user_id ) REFERENCES users(user_id) ON DELETE CASCADE
) COMMENT "�������������"; 

DROP TABLE IF EXISTS prepods_students_predmets;
-- ������� ����� ������ ������� ����� �������
CREATE TABLE prepods_students_predmets (
  psp_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ��������� ��������", 
  psp_predmet_id INT UNSIGNED COMMENT "������ �� ������� ����������, ��������- ��� ������� ������������", 
  satrted_at DATE NOT NULL COMMENT "������ ����� ��������",
  hours INT UNSIGNED NOT NULL DEFAULT 0 COMMENT "������������ �������� �����",
  is_finished BOOL NOT NULL DEFAULT FALSE COMMENT "������ ��������� ��������� ��� � �������� (����� � �� ��������!) ",
  teacher_id INT UNSIGNED COMMENT "��� ���� - ������ �� ������� �������������",
  student_id INT UNSIGNED COMMENT "���� ���� - ������ �� ������� ��������",
  CONSTRAINT prepods_students_predmets_psp_predmet_id_fk FOREIGN KEY ( psp_predmet_id ) REFERENCES predmets ( predmet_id ) ON DELETE SET NULL,
  CONSTRAINT prepods_students_predmets_teacher_id_fk FOREIGN KEY ( teacher_id ) REFERENCES prepods ( user_id ) ON DELETE SET NULL,
  CONSTRAINT prepods_students_predmets_student_id_fk FOREIGN KEY ( student_id ) REFERENCES students ( user_id ) ON DELETE SET NULL
) COMMENT "��������� ��������"; 


DROP TABLE IF EXISTS learn_process_logs;
-- �������� ���� �� ������ � ������� ����������
CREATE TABLE learn_process_logs (
  lp_log_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ������", 
  user_id INT UNSIGNED COMMENT "������ �� ������������", 
  learn_mat_id INT UNSIGNED COMMENT "������ �� ��_�������� ���������",
  try_counter INT UNSIGNED NOT NULL DEFAULT 0 COMMENT "������� ������� ������� �� ������� �� ����",
  try_date_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� ���������",
  CONSTRAINT learn_process_logs_user_id_fk FOREIGN KEY ( user_id ) REFERENCES users ( user_id ) ON DELETE SET NULL,
  CONSTRAINT learn_process_logs_learn_mat_id_fk FOREIGN KEY ( learn_mat_id ) REFERENCES learn_materials ( lm_id ) ON DELETE SET NULL
) COMMENT "���� �� ������ � ������� ����������"; 

DROP TABLE IF EXISTS answer_2_questions_logs;
-- �������� ����������_�� ������� �� �������
CREATE TABLE answer_2_questions_logs (
  a2q_log_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ������", 
  lp_log_id INT UNSIGNED NOT NULL DEFAULT 0 COMMENT "������ �� ��_���� �� ������ � ������� ����������",
  question_id INT UNSIGNED COMMENT "������ �� �������  ������", 
  is_right_answer BOOL NOT NULL DEFAULT TRUE COMMENT "������ ����� �� ���", 
  bad_answer_id	INT UNSIGNED COMMENT "������ �� �������� ����� �������������", 
  a2q_date_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� ������",
  CONSTRAINT answer_2_questions_lp_log_id_fk FOREIGN KEY ( lp_log_id ) REFERENCES learn_process_logs ( lp_log_id ) ON DELETE CASCADE,
  CONSTRAINT answer_2_questions_logs_question_id_fk FOREIGN KEY ( question_id ) REFERENCES questions ( quest_id ) ON DELETE SET NULL,
  CONSTRAINT answer_2_questions_logs_bad_answer_id_fk FOREIGN KEY ( bad_answer_id ) REFERENCES answers ( answer_id ) ON DELETE  SET NULL
) COMMENT "���� �� ������� �� �������"; 

SHOW TABLES;




-- ��� ���������� ������ - ����� �� ��� ������� ������
-- ��� �������� �� id������ ���� ��� ������������ �  ������ ��������	

-- ������� ������������ ������ - ��������� �������
-- ���� - �������� ��� ���������� ������ � ��������� �������� - ������������ ��������� ������ - �������

-- ������� ��� �� ��������� ������������.
	-- ������� (��� �������� �������� ������ ������ ...) 
	-- ����� � ���� ������� 

-- view ������� - ��������� ������� - ���������� ����� � ���������
-- ������������ ��������  ����� ��������� �������  

-- ������ ������ �� �������, �� ��������

-- ������� �� ��������� �������� ...
	-- ������� ���� �� ������ ���������
	-- ��������� ����� �������
	-- �������� 	
-- ������ �� ��������� �������� - ���� ������� ���, ������� �� ��������� ����

-- ���������� ������� � �������
-- ������� ������� ������ ������ ���������� ������
-- �������� ������� ���� ...

-- ������� ������� � �������
 -- �������� ������� ������ ������ ������� ������

-- ������� ����� ������ �������
 -- �������� ������� ������ ������ ������� ������

-- ���������� ������
-- �������� ������� ����


