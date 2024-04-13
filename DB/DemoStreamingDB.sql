-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema streamersdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `streamersdb` ;

-- -----------------------------------------------------
-- Schema streamersdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `streamersdb` DEFAULT CHARACTER SET utf8 ;
USE `streamersdb` ;

-- -----------------------------------------------------
-- Table `streaming_service`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `streaming_service` ;

CREATE TABLE IF NOT EXISTS `streaming_service` (
  `id` INT(10) NOT NULL,
  `name` VARCHAR(75) NOT NULL,
  `start_date` DATETIME NULL,
  `cost` DECIMAL(5,2) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS tvSnobber;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'tvSnobber' IDENTIFIED BY 'tvSnobber';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'tvSnobber';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `streaming_service`
-- -----------------------------------------------------
START TRANSACTION;
USE `streamersdb`;
INSERT INTO `streaming_service` (`id`, `name`, `start_date`, `cost`) VALUES (1, 'Hulu', '2023-11-21', 1.99);
INSERT INTO `streaming_service` (`id`, `name`, `start_date`, `cost`) VALUES (2, 'Amazon', '2023-11-20', 98);
INSERT INTO `streaming_service` (`id`, `name`, `start_date`, `cost`) VALUES (3, 'Apple', '2023-11-20', 4.99);

COMMIT;

