USE `es_extended`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_ranger', 'Ranger', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_ranger', 'Ranger', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_ranger', 'Ranger', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('ranger', 'Park Ranger')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('ranger',0,'recruit','Recruit',20,'{}','{}'),
	('ranger',1,'officer','Officer',40,'{}','{}'),
	('ranger',2,'sergeant','Sergeant',60,'{}','{}'),
	('ranger',3,'lieutenant','Lieutenant',85,'{}','{}'),
	('ranger',4,'boss','Boss',100,'{}','{}')
;

CREATE TABLE IF NOT EXISTS `fine_types` (
	`id` int NOT NULL AUTO_INCREMENT,
	`label` varchar(255) DEFAULT NULL,
	`amount` int DEFAULT NULL,
	`category` int DEFAULT NULL,

	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `fine_types` (label, amount, category) VALUES
	('Killing an animal', 900, 4),
	('Causeless horn using in forest', 40, 4),
	('Pursuiting an innocent animal', 700, 4),
	('Causing a roadblock with a vehicle', 300, 4),
	('Killing an animal with wehicle', 1900, 4),
	('Speeding in forests', 100, 5),
	('Causing a collosion in forests', 400, 5),
	('Causing an accident in forest routes', 450, 5),
	('Hide a body in forests', 1000, 6),
	('Shooting in forests', 650, 6),
	('Trying to kill someone in forests', 950, 6),
	('Killing innocent people in forest', 1600, 7),
	('Trying to prevent a ranger officer', 450, 7),
	('Causing a mass accident with fatalities in forest routes', 850, 7),
	('Traffic in a restricted area', 900, 7);

;
