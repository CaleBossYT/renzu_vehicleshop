CREATE TABLE IF NOT EXISTS `owned_vehicles` (
	`owner` VARCHAR(64) NOT NULL COLLATE 'utf8mb4_bin',
	`plate` VARCHAR(12) NOT NULL COLLATE 'utf8mb4_bin',
	`vehicle` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_bin',
	`impound` INT(1) NOT NULL DEFAULT '0',
	`stored` tinyint(1) NOT NULL DEFAULT '0',
	`garage_type` VARCHAR(50) NULL DEFAULT 'car' COLLATE 'utf8mb4_bin',
	`garage_id` VARCHAR(50) NULL DEFAULT 'A' COLLATE 'utf8mb4_bin',
	PRIMARY KEY (`plate`) USING BTREE,
	INDEX `vehsowned` (`owner`) USING BTREE
)
COLLATE='utf8mb4_bin'
ENGINE=InnoDB
;

ALTER TABLE owned_vehicles
ADD IF NOT EXISTS `garage_id` varchar(32) NOT NULL DEFAULT 'A';


ALTER TABLE owned_vehicles
ADD IF NOT EXISTS `job` varchar(32) NOT NULL DEFAULT 'civ';

ALTER TABLE owned_vehicles
ADD IF NOT EXISTS `stored` tinyint(1) NOT NULL DEFAULT 1;

ALTER TABLE owned_vehicles
ADD IF NOT EXISTS `type` varchar(32) NOT NULL DEFAULT 'car';
