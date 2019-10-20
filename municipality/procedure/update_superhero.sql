DELIMITER //
-- Create Stored Procedure
CREATE PROCEDURE update_superhero(
    IN id VARCHAR(255),
    IN main_profile_pic_url VARCHAR(255),
    IN looking_for_gender TINYINT,
    IN age INT,
    IN looking_for_age_min INT,
    IN looking_for_age_max INT,
    IN looking_for_distance_max INT,
    IN distance_unit VARCHAR(10),
    IN lat DECIMAL(10, 8),
    IN lon DECIMAL(11, 8),
    IN country VARCHAR(255),
    IN city VARCHAR(255),
    IN superpower VARCHAR(255),
    IN account_type VARCHAR(255),
    IN is_deleted TINYINT,
    IN deleted_at VARCHAR(255),
    IN is_blocked TINYINT,
    IN blocked_at VARCHAR(255),
    IN updated_at VARCHAR(255)
)
BEGIN

    UPDATE superhero
    SET
        superhero.main_profile_pic_url = main_profile_pic_url,
        superhero.looking_for_gender = looking_for_gender,
        superhero.age = age,
        superhero.looking_for_age_min = looking_for_age_min,
        superhero.looking_for_age_max = looking_for_age_max,
        superhero.looking_for_distance_max = looking_for_distance_max,
        superhero.distance_unit = distance_unit,
        superhero.lat = lat,
        superhero.lon = lon,
        superhero.country = country,
        superhero.city = city,
        superhero.superpower = superpower,
        superhero.account_type = account_type,
        superhero.is_deleted = is_deleted,
        superhero.deleted_at = deleted_at,
        superhero.is_blocked = is_blocked,
        superhero.blocked_at = blocked_at,
        superhero.updated_at = updated_at
    WHERE superhero.id = id COLLATE utf8mb4_0900_ai_ci;

END//
-- Change Delimiter again
DELIMITER ;

drop procedure update_superhero;

call update_superhero(
        '64c92b6675b740789bc888a4a4fe3721',
        'main_profile_pic_url',
        1,
        34,
        21,
        55,
        20,
        'mi',
        52.0957197,
        5.1263992,
        'Netherlands',
        'Haarlem',
        'superpower',
        'DEV',
        0,
        NULL,
        0,
        NULL,
        '2019-10-20T15:22:00'
    );


select * from superhero;