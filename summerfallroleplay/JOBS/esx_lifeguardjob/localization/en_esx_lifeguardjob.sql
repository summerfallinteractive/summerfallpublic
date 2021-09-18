USE `es_extended`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_lifeguard', 'Lifeguard', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_lifeguard', 'Lifeguard', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_lifeguard', 'Lifeguard', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('lifeguard', 'Lifeguard')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('lifeguard',0,'recruit','Recruit',20,'{}','{}'),
	('lifeguard',1,'officer','Officer',40,'{}','{}'),
	('lifeguard',2,'sergeant','Sergeant',60,'{}','{}'),
	('lifeguard',3,'lieutenant','Lieutenant',85,'{}','{}'),
	('lifeguard',4,'boss','Chief',100,'{}','{}')
;

CREATE TABLE IF NOT EXISTS `fine_types` (
	`id` int NOT NULL AUTO_INCREMENT,
	`label` varchar(255) DEFAULT NULL,
	`amount` int DEFAULT NULL,
	`category` int DEFAULT NULL,

	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `fine_types` (label, amount, category) VALUES
	('Pursuiting in the sand', 30, 0)
;
