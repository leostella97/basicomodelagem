CREATE TABLE `User` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(15) NOT NULL,
	`fullname` VARCHAR(30) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Address` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`email_address` INT(50) NOT NULL UNIQUE,
	`id_user` INT(50) NOT NULL UNIQUE,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Address` ADD CONSTRAINT `Address_fk0` FOREIGN KEY (`id_user`) REFERENCES `User`(`id`);



