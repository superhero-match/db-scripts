CREATE TABLE `profile_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `superhero_id` varchar(255) NOT NULL,
  `profile_pic_url` varchar(255) NOT NULL,
  `position` int(11) DEFAULT '0',
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;