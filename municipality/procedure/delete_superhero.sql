DELIMITER //
-- Create Stored Procedure
CREATE PROCEDURE delete_superhero(
    IN id VARCHAR(255)
)
BEGIN

    DELETE FROM superhero WHERE superhero.id = id;

END//
-- Change Delimiter again
DELIMITER ;

drop procedure delete_superhero;

call delete_superhero('64c92b6675b740789bc888a4a4fe3721');