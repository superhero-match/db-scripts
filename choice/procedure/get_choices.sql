DELIMITER $$
CREATE PROCEDURE `get_choices`( 
    IN start_point INT,
    IN size INT
)
BEGIN

	SELECT 		
		choice.id, 
		choice.choice,
		choice.superhero_id,
		choice.chosen_superhero_id,
		choice.created_at
	FROM choice 
    WHERE choice.choice = 1 AND choice.deleted_at IS NULL 
	LIMIT start_point, size;

END$$
DELIMITER ;