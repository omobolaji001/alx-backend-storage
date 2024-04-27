-- A SQL script that creates a function that returns 
-- the division of two integers

DELIMITER $$

CREATE FUNCTION SafeDiv (a INT, b INT)
RETURNS FLOAT

DETERMINISTIC
BEGIN

  IF b == 0 THEN
    RETURN 0;
  END IF;

  RETURN a / b;

END $$

DELIMITER ;
