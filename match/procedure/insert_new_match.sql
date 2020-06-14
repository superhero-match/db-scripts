DELIMITER $$
CREATE PROCEDURE `insert_new_match`( 
	IN id VARCHAR(255),
    IN superhero_id VARCHAR(255),
    IN matched_superhero_id VARCHAR(255),
    IN created_at VARCHAR(255)
)
BEGIN

INSERT INTO `match` (
		`id`,
		`superhero_id`,
		`matched_superhero_id`,
		`created_at`,
        `updated_at`,
		`deleted_at`
	)
	VALUES (
		id,
		superhero_id,
		matched_superhero_id,
		created_at,
		created_at,
        NULL
    ) ON DUPLICATE KEY UPDATE
    `id` = id,
    `superhero_id` = superhero_id,
    `matched_superhero_id` = matched_superhero_id,
	`updated_at` = created_at;

END$$
DELIMITER ;