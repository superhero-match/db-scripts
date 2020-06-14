DELIMITER $$
CREATE PROCEDURE `get_profile_pictures`( 
    IN ids TEXT
)
BEGIN

	SELECT 
		profile_picture.id, 
        profile_picture.superhero_id, 
		profile_picture.profile_pic_url, 
		profile_picture.position 
    FROM profile_picture
    WHERE FIND_IN_SET(profile_picture.superhero_id COLLATE utf8mb4_0900_ai_ci, ids) 
    AND profile_picture.deleted_at IS NULL;

END$$
DELIMITER ;