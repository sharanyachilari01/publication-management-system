DELIMITER $$

CREATE PROCEDURE DeleteFacultyCascade(IN fac_id VARCHAR(50))
BEGIN
    DELETE FROM Faculty WHERE faculty_id = fac_id;
END $$

DELIMITER ;
