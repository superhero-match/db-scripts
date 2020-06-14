DELIMITER $$
CREATE PROCEDURE `delete_superhero`( 
	IN id VARCHAR(255),
    IN deleted_at VARCHAR(255)
)
BEGIN

UPDATE superhero 
SET 
	sueprhero.deleted_at = deleted_at,
	superhero.is_deleted = 1
WHERE superhero.id = id;

END$$
DELIMITER ;