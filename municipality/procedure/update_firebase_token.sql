DELIMITER $$
CREATE PROCEDURE `update_firebase_token`( 
	IN sueprhero_id VARCHAR(255), 
    IN firebase_token VARCHAR(255),
    IN updated_at VARCHAR(255)
)
BEGIN

UPDATE superhero 
SET 
	superhero.firebase_token = firebase_token,
    superhero.updated_at = updated_at
 WHERE superhero.id = sueprhero_id COLLATE utf8mb4_0900_ai_ci;

END$$
DELIMITER ;