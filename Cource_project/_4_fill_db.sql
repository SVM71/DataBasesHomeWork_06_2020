-- Learning recource DATABASE
-- ������� ��� ��������� ������ �� ����� http://filldb.info/
-- ������� ���������� 
CREATE TABLE predmets_d (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ��������", 
  predmet_name VARCHAR(100) NOT NULL COMMENT "�������� ��������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "����������, ��������"; 

-- ������� ������� ��������� �� ����������, ��������
CREATE TABLE learn_materials_d (
  id	 INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "�� ���������",
  lm_name VARCHAR(100) NOT NULL COMMENT "�������� ���������",
  lm_learn_time INT UNSIGNED NOT NULL DEFAULT 0 COMMENT "����� �� �������� ���������",
  lm_data_file VARCHAR(100)  NOT NULL COMMENT "������ �� ���� � �����������",
  lm_predmet_id INT UNSIGNED DEFAULT NULL COMMENT "������ �� ������� ����������"
) COMMENT "������� ��������� �� ����������"; 

-- ������� ������� 
CREATE TABLE questions_d (
  id	 INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "��_�������",
  quest_text VARCHAR(255) NOT NULL COMMENT "����� �������",
  quest_file VARCHAR(100) DEFAULT NULL COMMENT "������ �� ���� � ��������� ��������",
  quest_lm_id INT UNSIGNED DEFAULT NULL COMMENT "������ �� ������� ��������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "������� �� �������� ���������"; 

-- ������� ������ 
CREATE TABLE answers_d (
  id	 INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "��_������",
  answer_text VARCHAR(255) NOT NULL COMMENT "����� ������",
  answer_file VARCHAR(100) DEFAULT NULL COMMENT "������ �� ���� � �������",
  answer_hash VARCHAR(64) COMMENT "��� ������",
  answer_is_true BOOL NOT NULL DEFAULT FALSE COMMENT "���� ������ ����� �� ������",
  a_quest_id INT UNSIGNED DEFAULT NULL COMMENT "�� ������� � �������� ��������� �����"
) COMMENT "������ �� ������� �� �������� ���������"; 


