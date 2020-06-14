DELIMITER $$
CREATE PROCEDURE `get_superheros`( 
    IN start_point INT,
    IN size INT
)
BEGIN

	SELECT 		
		superhero.id, 
		superhero.email,
		superhero.name,
		superhero.superhero_name,
		superhero.main_profile_pic_url,
		superhero.gender,
		superhero.looking_for_gender,
		superhero.age,
		superhero.looking_for_age_min,
		superhero.looking_for_age_max,
		superhero.looking_for_distance_max,
		superhero.distance_unit,
		superhero.lat, 
		superhero.lon,
		superhero.birthday,
		superhero.country,
		superhero.city,
		superhero.superpower,
		superhero.account_type,
        superhero.created_at
	FROM superhero 
    WHERE blocked_at IS NULL AND deleted_at IS NULL 
	LIMIT start_point, size;

END$$
DELIMITER ;