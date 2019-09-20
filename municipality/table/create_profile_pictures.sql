CREATE TABLE profile_pictures
(
    id BIGINT NOT NULL AUTO_INCREMENT,
    superhero_id VARCHAR(255) NOT NULL,
    profile_pic_url VARCHAR(255) NOT NULL,
    position INT NOT NULL,
    created_at VARCHAR(255) NOT NULL,
    updated_at VARCHAR(255),
    deleted_at VARCHAR(255),
    PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;