DELIMITER $$
CREATE PROCEDURE `delete_match`( 
	IN superhero_id_in VARCHAR(255),
	IN matched_superhero_id_in VARCHAR(255),
    IN deleted_at_in VARCHAR(255)
)
BEGIN

UPDATE `match` 
SET deleted_at = deleted_at_in, updated_at = deleted_at_in 
WHERE superhero_id = superhero_id_in 
AND matched_superhero_id = matched_superhero_id_in;

UPDATE `match` 
SET deleted_at = deleted_at_in, updated_at = deleted_at_in 
WHERE superhero_id = matched_superhero_id_in 
AND matched_superhero_id = superhero_id_in;

END$$
DELIMITER ;