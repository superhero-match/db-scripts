DELIMITER $$
CREATE PROCEDURE `block_superhero`( 
	IN id VARCHAR(255),
    IN blocked_at VARCHAR(255)
)
BEGIN

UPDATE superhero 
SET 
	sueprhero.blocked_at = blocked_at,
	superhero.is_blocked = 1
WHERE superhero.id = id;

END$$
DELIMITER ;