DELIMITER $$
CREATE PROCEDURE `insert_new_choice`( 
	IN id VARCHAR(255),
	IN choice TINYINT, 
    IN superhero_id VARCHAR(255),
    IN chosen_superhero_id VARCHAR(255),
    IN created_at VARCHAR(255)
)
BEGIN

INSERT INTO choice (
		choice.id,
		choice.choice, 
		choice.superhero_id,
		choice.chosen_superhero_id,
		choice.created_at,
		choice.deleted_at
	)
	VALUES (
		id,
		choice, 
		superhero_id,
		chosen_superhero_id,
		created_at,
        NULL
    ) ON DUPLICATE KEY UPDATE
		choice.choice = choice, 
		choice.superhero_id = superhero_id,
		choice.chosen_superhero_id = chosen_superhero_id,
		choice.created_at = created_at;

END$$
DELIMITER ;