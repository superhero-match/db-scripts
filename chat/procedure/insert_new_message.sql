DELIMITER $$
CREATE PROCEDURE `insert_new_message`( 
	IN id VARCHAR(255), 
    IN sender_id VARCHAR(255),
    IN receiver_id VARCHAR(255),
    IN message VARCHAR(255),
    IN created_at VARCHAR(255)
)
BEGIN

INSERT INTO message (
		message.id, 
		message.sender_id,
		message.receiver_id,
		message.message,
		message.created_at
	)
	VALUES (
		id, 
		sender_id,
		receiver_id,
		message,
		created_at
    );

END$$
DELIMITER ;