DELIMITER $$

CREATE TRIGGER trg_after_insert_fetchlog
AFTER INSERT ON Fetch_Log
FOR EACH ROW
BEGIN
    DECLARE total INT;

    SELECT SUM(total_records_fetched)
    INTO total
    FROM Fetch_Log
    WHERE faculty_id = NEW.faculty_id;

    SELECT CONCAT(
        'Faculty ID: ', NEW.faculty_id,
        ' | Total Records Fetched: ', total
    ) AS info;
END $$

DELIMITER ;
