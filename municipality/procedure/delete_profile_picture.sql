DELIMITER $$
CREATE PROCEDURE `delete_profile_picture`( 
	IN superhero_id VARCHAR(255),
    IN position INT,
    IN deleted_at VARCHAR(255)
)
BEGIN

UPDATE profile_picture 
SET profile_picture.deleted_at = deleted_at  
WHERE profile_picture.superhero_id = superhero_id COLLATE utf8mb4_0900_ai_ci 
AND profile_picture.position = position ;

END$$
DELIMITER ;