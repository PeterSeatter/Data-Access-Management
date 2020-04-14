-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema schoolsystemproject
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema schoolsystemproject
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `schoolsystemproject` DEFAULT CHARACTER SET utf8 ;
USE `schoolsystemproject` ;

-- -----------------------------------------------------
-- Table `schoolsystemproject`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `schoolsystemproject`.`category` (
  `categoryID` INT NOT NULL,
  `categoryName` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`categoryID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `schoolsystemproject`.`type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `schoolsystemproject`.`type` (
  `typeID` INT NOT NULL,
  `typeName` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`typeID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `schoolsystemproject`.`article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `schoolsystemproject`.`article` (
  `articleID` INT NOT NULL,
  `Location_locationID` INT NULL DEFAULT NULL,
  `Category_categoryID` INT NOT NULL,
  `Nationality_nationalityID` INT NULL DEFAULT NULL,
  `Type_typeID` INT NOT NULL,
  `Designed_designID` INT NULL DEFAULT NULL,
  `Developer_developerID` INT NULL DEFAULT NULL,
  `KnownFor_knownID` INT NULL DEFAULT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `born` VARCHAR(45) NULL DEFAULT NULL,
  `died` VARCHAR(45) NULL DEFAULT NULL,
  `notableWork` LONGTEXT NULL DEFAULT NULL,
  `about` LONGTEXT NULL DEFAULT NULL,
  `year` VARCHAR(45) NULL DEFAULT NULL,
  `medium` VARCHAR(45) NULL DEFAULT NULL,
  `dimensions` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`articleID`, `Category_categoryID`, `Type_typeID`),
  INDEX `fk_Article_Category1_idx` (`Category_categoryID` ASC) VISIBLE,
  INDEX `fk_Article_Type1_idx` (`Type_typeID` ASC) VISIBLE,
  CONSTRAINT `fk_Article_Category1`
    FOREIGN KEY (`Category_categoryID`)
    REFERENCES `schoolsystemproject`.`category` (`categoryID`),
  CONSTRAINT `fk_Article_Type1`
    FOREIGN KEY (`Type_typeID`)
    REFERENCES `schoolsystemproject`.`type` (`typeID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `schoolsystemproject`.`designed`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `schoolsystemproject`.`designed` (
  `designID` INT NOT NULL,
  `designName` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`designID`),
  UNIQUE INDEX `designID_UNIQUE` (`designID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `schoolsystemproject`.`developer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `schoolsystemproject`.`developer` (
  `developerID` INT NOT NULL,
  `developerName` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`developerID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `schoolsystemproject`.`knownfor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `schoolsystemproject`.`knownfor` (
  `knownID` INT NOT NULL,
  `knownName` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`knownID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `schoolsystemproject`.`location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `schoolsystemproject`.`location` (
  `locationID` INT NOT NULL,
  `locationName` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`locationID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `schoolsystemproject`.`nationality`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `schoolsystemproject`.`nationality` (
  `nationalityID` INT NOT NULL,
  `nationalityName` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`nationalityID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
