DELIMITER $$
CREATE PROCEDURE `insert_new_profile_picture`( 
	IN superhero_id VARCHAR(255), 
    IN profile_pic_url VARCHAR(255),
    IN position INT,
    IN created_at VARCHAR(255)
)
BEGIN

INSERT INTO profile_picture (
	profile_picture.superhero_id,
    profile_picture.profile_pic_url,
    profile_picture.position,
    profile_picture.created_at,
    profile_picture.updated_at,
    profile_picture.deleted_at
	)
	VALUES (
	superhero_id,
	profile_pic_url,
    position,
    created_at,
    created_at,
    NULL
    ) ON DUPLICATE KEY UPDATE 
	profile_picture.superhero_id = superhero_id,
    profile_picture.profile_pic_url = profile_pic_url,
    profile_picture.position = position,
    profile_picture.updated_at = created_at;

END$$
DELIMITER ;