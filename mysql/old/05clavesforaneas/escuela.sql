-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema escuela
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema escuela
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `escuela` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
USE `escuela` ;

-- -----------------------------------------------------
-- Table `escuela`.`alumno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escuela`.`alumno` (
  `idalumno` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `edad` INT UNSIGNED NOT NULL,
  `celular` BIGINT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idalumno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `escuela`.`direccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escuela`.`direccion` (
  `iddireccion` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `calle` VARCHAR(45) NOT NULL,
  `colonia` VARCHAR(45) NOT NULL,
  `ciudad` VARCHAR(45) NOT NULL,
  `alumno_idalumno` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`iddireccion`, `alumno_idalumno`),
  INDEX `fk_direccion_alumno_idx` (`alumno_idalumno` ASC),
  CONSTRAINT `fk_direccion_alumno`
    FOREIGN KEY (`alumno_idalumno`)
    REFERENCES `escuela`.`alumno` (`idalumno`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
