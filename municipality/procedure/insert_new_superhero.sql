DELIMITER //
-- Create Stored Procedure
CREATE PROCEDURE insert_new_superhero(
    IN id VARCHAR(255),
    IN email VARCHAR(255),
    IN name VARCHAR(255),
    IN superhero_name VARCHAR(255),
    IN main_profile_pic_url VARCHAR(255),
    IN gender TINYINT,
    IN looking_for_gender TINYINT,
    IN age INT,
    IN looking_for_age_min INT,
    IN looking_for_age_max INT,
    IN looking_for_distance_max INT,
    IN distance_unit VARCHAR(10),
    IN lat DECIMAL(10, 8),
    IN lon DECIMAL(11, 8),
    IN birthday VARCHAR(50),
    IN country VARCHAR(255),
    IN city VARCHAR(255),
    IN superpower VARCHAR(255),
    IN account_type VARCHAR(255),
    IN is_deleted TINYINT,
    IN deleted_at VARCHAR(255),
    IN is_blocked TINYINT,
    IN blocked_at VARCHAR(255),
    IN updated_at VARCHAR(255),
    IN created_at VARCHAR(255)
)
BEGIN

    INSERT INTO superhero (
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
        superhero.is_deleted,
        superhero.deleted_at,
        superhero.is_blocked,
        superhero.blocked_at,
        superhero.updated_at,
        superhero.created_at
    )
    VALUES (
               id,
               email,
               name,
               superhero_name,
               main_profile_pic_url,
               gender,
               looking_for_gender,
               age,
               looking_for_age_min,
               looking_for_age_max,
               looking_for_distance_max,
               distance_unit,
               lat,
               lon,
               birthday,
               country,
               city,
               superpower,
               account_type,
               is_deleted,
               deleted_at,
               is_blocked,
               blocked_at,
               updated_at,
               created_at
           );

END//
-- Change Delimiter again
DELIMITER ;