-- A SQL script that creates a stored procedure
-- that adds new correction for a student

DELIMITER $$
CREATE PROCEDURE AddBonus (
  IN user_id INT,
  IN project_name VARCHAR(255),
  IN score FLOAT
)
BEGIN
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    SELECT 'An error occured.' AS message;
  END;

  START TRANSACTION;
  IF NOT EXISTS (SELECT id FROM projects WHERE name = project_name) THEN
    INSERT INTO projects (name) VALUES (project_name);
  END IF;

  INSERT INTO corrections (user_id, project_id, score)
  VALUES (
    user_id,
    (SELECT id FROM projects WHERE projects.name = project_name),
    score
  );
  COMMIT;
  SELECT 'correction added successfully' AS message;

END; $$

DELIMITER ;

