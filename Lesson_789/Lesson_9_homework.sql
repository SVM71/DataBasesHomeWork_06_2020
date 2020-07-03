USE vk_v1;

-- �������� �������� ������� hello(), ������� ����� ���������� �����������, � ����������� �� �������� ������� �����. 
CREATE PROCEDURE hello ()
BEGIN
  DECLARE i INT DEFAULT 0;
  SET  i = TIME_FORMAT( CURRENT_TIME() + INTERVAL 4 HOUR, '%H' );
  IF ( i < 6 ) THEN
    SELECT "������ ����";
  ELSE IF ( (i >= 6) AND (i < 12) ) THEN
    SELECT "������ ����";
  ELSE IF ( (i >= 12) AND (i < 18) ) THEN
    SELECT "������ ����";
  ELSE IF (i >= 18) THEN
    SELECT "������ ����";
  END IF;
END;

CALL hello();
-- 
-- (�� �������) ����� ������� ����� ������� � ����������� ����� created_at. �������� ������, ������� ������� 
-- ���������� ������ �� �������, �������� ������ 5 ����� ������ �������.
SELECT * FROM users u WHERE u.id IN ( SELECT * FROM ( SELECT id FROM users u2 ORDER BY created_at DESC LIMIT 5) AS last_5);  
-- DELETE * FROM users u WHERE u.id NOT IN ( SELECT * FROM ( SELECT id FROM users u2 ORDER BY created_at DESC LIMIT 5) AS last_5);  

