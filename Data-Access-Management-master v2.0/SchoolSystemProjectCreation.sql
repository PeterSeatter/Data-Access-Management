-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema SchoolSystemProject
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `SchoolSystemProject` ;

-- -----------------------------------------------------
-- Schema SchoolSystemProject
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SchoolSystemProject` DEFAULT CHARACTER SET utf8 ;
USE `SchoolSystemProject` ;

-- -----------------------------------------------------
-- Table `SchoolSystemProject`.`Category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SchoolSystemProject`.`Category` (
  `categoryID` INT NOT NULL,
  `categoryName` VARCHAR(45) NULL,
  PRIMARY KEY (`categoryID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SchoolSystemProject`.`Type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SchoolSystemProject`.`Type` (
  `typeID` INT NOT NULL,
  `typeName` VARCHAR(45) NULL,
  PRIMARY KEY (`typeID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SchoolSystemProject`.`Nationality`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SchoolSystemProject`.`Nationality` (
  `nationalityID` INT NOT NULL,
  `nationalityName` VARCHAR(45) NULL,
  PRIMARY KEY (`nationalityID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SchoolSystemProject`.`KnownFor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SchoolSystemProject`.`KnownFor` (
  `knownID` INT NOT NULL,
  `knownName` VARCHAR(45) NULL,
  PRIMARY KEY (`knownID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SchoolSystemProject`.`Location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SchoolSystemProject`.`Location` (
  `locationID` INT NOT NULL,
  `locationName` VARCHAR(45) NULL,
  PRIMARY KEY (`locationID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SchoolSystemProject`.`Designed`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SchoolSystemProject`.`Designed` (
  `designID` INT NOT NULL,
  `designName` VARCHAR(45) NULL,
  PRIMARY KEY (`designID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SchoolSystemProject`.`Developer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SchoolSystemProject`.`Developer` (
  `developerID` INT NOT NULL,
  `developerName` VARCHAR(45) NULL,
  PRIMARY KEY (`developerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SchoolSystemProject`.`Article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SchoolSystemProject`.`Article` (
  `articleID` INT NOT NULL,
  `Location_locationID` INT NOT NULL,
  `Category_categoryID` INT NOT NULL,
  `Nationality_nationalityID` INT NOT NULL,
  `Type_typeID` INT NOT NULL,
  `Designed_designID` INT NOT NULL,
  `Developer_developerID` INT NOT NULL,
  `KnownFor_knownID` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `born` INT NULL,
  `died` INT NULL,
  `notableWork` VARCHAR(500) NULL,
  `about` VARCHAR(500) NULL,
  `year` INT NULL,
  `medium` VARCHAR(45) NULL,
  `dimensions` VARCHAR(45) NULL,
  PRIMARY KEY (`articleID`, `Location_locationID`, `Category_categoryID`, `Nationality_nationalityID`, `Type_typeID`, `Designed_designID`, `Developer_developerID`, `KnownFor_knownID`),
  INDEX `fk_Article_Location_idx` (`Location_locationID` ASC) VISIBLE,
  INDEX `fk_Article_Category1_idx` (`Category_categoryID` ASC) VISIBLE,
  INDEX `fk_Article_Nationality1_idx` (`Nationality_nationalityID` ASC) VISIBLE,
  INDEX `fk_Article_Type1_idx` (`Type_typeID` ASC) VISIBLE,
  INDEX `fk_Article_Designed1_idx` (`Designed_designID` ASC) VISIBLE,
  INDEX `fk_Article_Developer1_idx` (`Developer_developerID` ASC) VISIBLE,
  INDEX `fk_Article_KnownFor1_idx` (`KnownFor_knownID` ASC) VISIBLE,
  CONSTRAINT `fk_Article_Location`
    FOREIGN KEY (`Location_locationID`)
    REFERENCES `SchoolSystemProject`.`Location` (`locationID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Article_Category1`
    FOREIGN KEY (`Category_categoryID`)
    REFERENCES `SchoolSystemProject`.`Category` (`categoryID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Article_Nationality1`
    FOREIGN KEY (`Nationality_nationalityID`)
    REFERENCES `SchoolSystemProject`.`Nationality` (`nationalityID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Article_Type1`
    FOREIGN KEY (`Type_typeID`)
    REFERENCES `SchoolSystemProject`.`Type` (`typeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Article_Designed1`
    FOREIGN KEY (`Designed_designID`)
    REFERENCES `SchoolSystemProject`.`Designed` (`designID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Article_Developer1`
    FOREIGN KEY (`Developer_developerID`)
    REFERENCES `SchoolSystemProject`.`Developer` (`developerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Article_KnownFor1`
    FOREIGN KEY (`KnownFor_knownID`)
    REFERENCES `SchoolSystemProject`.`KnownFor` (`knownID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
