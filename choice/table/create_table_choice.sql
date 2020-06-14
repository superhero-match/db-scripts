CREATE TABLE `choice` (
  `id` varchar(255) NOT NULL,
  `choice` tinyint(4) NOT NULL,
  `superhero_id` varchar(255) NOT NULL,
  `chosen_superhero_id` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `deleted_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;