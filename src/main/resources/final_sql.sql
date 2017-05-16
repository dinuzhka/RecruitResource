SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `recruitresource` ;
CREATE SCHEMA IF NOT EXISTS `recruitresource` DEFAULT CHARACTER SET utf8 ;
USE `recruitresource` ;

-- -----------------------------------------------------
-- Table `recruitresource`.`education_levels`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `recruitresource`.`education_levels` ;

CREATE TABLE IF NOT EXISTS `recruitresource`.`education_levels` (
  `idEducationLevel` SMALLINT(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Sixth-form or equivalent secondary education\nHNC or equivalent\nHND/foundation degree or equivalent\nBA/BSc Degree\nBA/BSc Hons Degree\nBA/BSc Good Hons Degree (2/1 or better)\nMA/MSc or equivalent\nDoctorate',
  `educationLevel` VARCHAR(100) NOT NULL COMMENT 'O-Level\nA-Level\nHND\nDegree\nMSc\nPhD\n',
  PRIMARY KEY (`idEducationLevel`))
ENGINE = InnoDB
COMMENT = 'e.g. Six-Form; Undergraduate; MSc/MA; Doctorate';


-- -----------------------------------------------------
-- Table `recruitresource`.`login`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `recruitresource`.`login` ;

CREATE TABLE IF NOT EXISTS `recruitresource`.`login` (
  `idlogin` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(50) NOT NULL,
  `password` VARCHAR(2000) NOT NULL,
  PRIMARY KEY (`idlogin`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `email_UNIQUE` ON `recruitresource`.`login` (`email` ASC);


-- -----------------------------------------------------
-- Table `recruitresource`.`persons`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `recruitresource`.`persons` ;

CREATE TABLE IF NOT EXISTS `recruitresource`.`persons` (
  `idUser` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(10) NULL,
  `firstName` VARCHAR(45) NOT NULL,
  `middleName` VARCHAR(45) NULL,
  `lastName` VARCHAR(45) NOT NULL,
  `addressLine1` VARCHAR(45) NULL,
  `addressLine2` VARCHAR(45) NULL DEFAULT NULL,
  `town` VARCHAR(45) NULL DEFAULT NULL,
  `postcode` VARCHAR(10) NULL DEFAULT NULL,
  `alternativeEmail` VARCHAR(50) NULL DEFAULT NULL COMMENT 'alternative email to be used if any problem with the username (primary email)\n',
  `personalUrl` VARCHAR(64) NULL DEFAULT NULL COMMENT 'increasingly common',
  `photo` MEDIUMBLOB NULL DEFAULT NULL COMMENT 'to be uploaded by the user',
  `female` BIT(1) NULL COMMENT 'need to check whether there could be legal  issues collecting/using this info\n',
  `postcodeStart` VARCHAR(10) NULL DEFAULT NULL COMMENT 'first part of the the persons address postcode for distance calculation',
  `authorityToWorkStatement` VARCHAR(255) NULL DEFAULT NULL COMMENT 'List restrictions on work, e.g. max 20 hours per week (some non-EU residents)\nE.g. if not null it should be displayed',
  `contactPreference` ENUM('Mobile','Landline','Email1','Email2') NULL DEFAULT NULL COMMENT 'mobile\nlandline\nemail1 (email)\nemail2 (alternativeEmail)',
  `EducationLevels_idEducationLevel` SMALLINT(3) UNSIGNED NULL DEFAULT NULL COMMENT 'Highest education level achieved - from a drop-down',
  `noOfGcses` SMALLINT(3) UNSIGNED NULL DEFAULT '0',
  `gcseEnglishGrade` VARCHAR(2) NULL DEFAULT NULL,
  `gcseMathsGrade` VARCHAR(2) NULL DEFAULT NULL,
  `fiveOrMoreGcses` BIT(1) NULL DEFAULT NULL,
  `noOfAlevels` SMALLINT(4) NULL DEFAULT '0' COMMENT 'entered by the user - could be checked against the number in the Alevels table.\nAS level is 0.5.  What about International Baccalaureate, French Baccalaureate,European Baccalaureate,Scottish Highers etc...',
  `ucasPoints` SMALLINT(4) NULL DEFAULT '0' COMMENT 'needed?',
  `studentStatus` ENUM('Full-time','Part-time','Not a student') NULL DEFAULT NULL COMMENT 'if a student then the details of the course should be stored in the Educational_qualifications table',
  `mobile` VARCHAR(16) NULL DEFAULT NULL,
  `landline` VARCHAR(16) NULL DEFAULT NULL,
  `dob` DATE NULL DEFAULT NULL COMMENT 'date of birth - may be required by some employes but cannot be searched on',
  `penaltyPoints` SMALLINT(4) NULL DEFAULT NULL COMMENT 'on the UK driving license - see http://www.direct.gov.uk/en/Motoring/DriverLicensing/EndorsementsAndDisqualifications/DG_4022550',
  `login_idlogin` INT NOT NULL,
  `type` enum('user','company') NOT NULL DEFAULT 'user',
  PRIMARY KEY (`idUser`),
  CONSTRAINT `fk_Persons_EducationLevels`
    FOREIGN KEY (`EducationLevels_idEducationLevel`)
    REFERENCES `recruitresource`.`education_levels` (`idEducationLevel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_persons_login1`
    FOREIGN KEY (`login_idlogin`)
    REFERENCES `recruitresource`.`login` (`idlogin`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Persons_EducationLevels` ON `recruitresource`.`persons` (`EducationLevels_idEducationLevel` ASC);

CREATE INDEX `fk_persons_login1_idx` ON `recruitresource`.`persons` (`login_idlogin` ASC);


-- -----------------------------------------------------
-- Table `recruitresource`.`educational_qualifications`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `recruitresource`.`educational_qualifications` ;

CREATE TABLE IF NOT EXISTS `recruitresource`.`educational_qualifications` (
  `idEducationalQualifications` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Persons_idUser` INT(10) UNSIGNED NOT NULL,
  `qualificationType` VARCHAR(16) NOT NULL COMMENT 'e.g. BSc, A-level, BSc Hon, BTEC HND  - using auto-complete from edu_qualifications_lookup\n',
  `courseName` VARCHAR(100) NOT NULL COMMENT ' e.g. Biology with Computing, Business Studies - using auto-complete\n',
  `EducationLevels_idEducationLevel` SMALLINT(3) UNSIGNED NULL,
  `vocational` BIT(1) NULL DEFAULT NULL COMMENT '1 if vocational, 0 if academic\nnull if not sure?  Not sure this is needed.',
  `mainSubject` VARCHAR(45) NULL DEFAULT NULL COMMENT 'e.g. Computer Science, Mechanical Engineering - auto-compelete from subjects-lookup\n',
  `nameOfInstitutions` VARCHAR(100) NULL DEFAULT NULL COMMENT 'school, college, university',
  `country` VARCHAR(45) NULL DEFAULT NULL COMMENT 'where qualification gained - auto-lookup or drop-down may be useful',
  `yearObtained` DATE NULL DEFAULT NULL COMMENT 'year, may be months as well?',
  `result` VARCHAR(20) NULL DEFAULT NULL COMMENT 'e.g. A grade, PASS, 2nd Class Hons, Distinction - where appropriate',
  `thesesTitle` VARCHAR(200) NULL DEFAULT NULL COMMENT 'when approapriate, e.g.final year BSc project title',
  `verified` BIT(1) NULL DEFAULT NULL COMMENT 'if checked',
  `howVerified` VARCHAR(45) NULL DEFAULT NULL COMMENT 'who checked and how',
  PRIMARY KEY (`idEducationalQualifications`),
  CONSTRAINT `fk_EduQuals_EducationLevels`
    FOREIGN KEY (`EducationLevels_idEducationLevel`)
    REFERENCES `recruitresource`.`education_levels` (`idEducationLevel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_EduQuals_Persons`
    FOREIGN KEY (`Persons_idUser`)
    REFERENCES `recruitresource`.`persons` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'post 16 Academic and Vocational - not Professional';

CREATE INDEX `fk_EduQuals_Persons` ON `recruitresource`.`educational_qualifications` (`Persons_idUser` ASC);

CREATE INDEX `fk_EduQuals_EducationLevels` ON `recruitresource`.`educational_qualifications` (`EducationLevels_idEducationLevel` ASC);


-- -----------------------------------------------------
-- Table `recruitresource`.`employment_levels`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `recruitresource`.`employment_levels` ;

CREATE TABLE IF NOT EXISTS `recruitresource`.`employment_levels` (
  `idLevelsOfEmployment` SMALLINT(4) NOT NULL AUTO_INCREMENT,
  `employmentLevel` VARCHAR(45) NOT NULL COMMENT 'To ascertain the nature of work experience, e.g.\nentry level; experienced/non-manager; supervisor of staff; manager; executive/senior executive',
  PRIMARY KEY (`idLevelsOfEmployment`))
ENGINE = InnoDB
COMMENT = 'for drop-down for experience';


-- -----------------------------------------------------
-- Table `recruitresource`.`sectors`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `recruitresource`.`sectors` ;

CREATE TABLE IF NOT EXISTS `recruitresource`.`sectors` (
  `idSectors` SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sectorTitle` VARCHAR(45) NULL COMMENT 'e.g. from http://www.reed.co.uk/',
  PRIMARY KEY (`idSectors`))
ENGINE = InnoDB
COMMENT = 'industry and non-commercial job sectors';


-- -----------------------------------------------------
-- Table `recruitresource`.`job_titles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `recruitresource`.`job_titles` ;

CREATE TABLE IF NOT EXISTS `recruitresource`.`job_titles` (
  `idJobTitles` SMALLINT(6) NOT NULL AUTO_INCREMENT,
  `jobTitle` VARCHAR(45) NULL,
  `Sectors_idSectors` SMALLINT(5) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`idJobTitles`),
  CONSTRAINT `fk_JobTitles_Sectors`
    FOREIGN KEY (`Sectors_idSectors`)
    REFERENCES `recruitresource`.`sectors` (`idSectors`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'for drop-down selection from sector/job title';

CREATE INDEX `fk_JobTitles_Sectors` ON `recruitresource`.`job_titles` (`Sectors_idSectors` ASC);


-- -----------------------------------------------------
-- Table `recruitresource`.`experiences`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `recruitresource`.`experiences` ;

CREATE TABLE IF NOT EXISTS `recruitresource`.`experiences` (
  `idExperiences` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Persons_idUser` INT(10) UNSIGNED NOT NULL,
  `dateStarted` DATE NOT NULL COMMENT 'this must be unique for each person as it is part the composite PK',
  `dateFinished` DATE NULL,
  `JobTitles_idJobTitles` SMALLINT(6) NOT NULL,
  `otherJobTitle` VARCHAR(45) NULL COMMENT 'in case a suitable job-title is not found in the drop-down from the job_titles table',
  `keyDuties` VARCHAR(255) NULL DEFAULT NULL COMMENT 'this could be searchable by keywork search!?',
  `EmploymentLevels_idLevelsOfEmployment` SMALLINT(4) NULL DEFAULT NULL,
  `employerName` VARCHAR(45) NULL DEFAULT NULL,
  `verified` BIT(1) NULL DEFAULT NULL,
  `howVerified` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idExperiences`),
  CONSTRAINT `fk_Experiences_EmploymentLevels`
    FOREIGN KEY (`EmploymentLevels_idLevelsOfEmployment`)
    REFERENCES `recruitresource`.`employment_levels` (`idLevelsOfEmployment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Experiences_JobTitles`
    FOREIGN KEY (`JobTitles_idJobTitles`)
    REFERENCES `recruitresource`.`job_titles` (`idJobTitles`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Experiences_Persons`
    FOREIGN KEY (`Persons_idUser`)
    REFERENCES `recruitresource`.`persons` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'work experience';

CREATE INDEX `fk_Experiences_JobTitles` ON `recruitresource`.`experiences` (`JobTitles_idJobTitles` ASC);

CREATE INDEX `fk_Experiences_EmploymentLevels` ON `recruitresource`.`experiences` (`EmploymentLevels_idLevelsOfEmployment` ASC);

CREATE INDEX `fk_Experiences_Persons` ON `recruitresource`.`experiences` (`Persons_idUser` ASC);


-- -----------------------------------------------------
-- Table `recruitresource`.`job_preferences`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `recruitresource`.`job_preferences` ;

CREATE TABLE IF NOT EXISTS `recruitresource`.`job_preferences` (
  `JobTitles_idJobTitles` SMALLINT(6) NOT NULL,
  `person_idUser` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`JobTitles_idJobTitles`, `person_idUser`),
  CONSTRAINT `fk_JobPreferences_JobTitles`
    FOREIGN KEY (`JobTitles_idJobTitles`)
    REFERENCES `recruitresource`.`job_titles` (`idJobTitles`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_JobPreferences_person`
    FOREIGN KEY (`person_idUser`)
    REFERENCES `recruitresource`.`persons` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COMMENT = 'Persons select 6 job titles from 2 sectors \n';

CREATE INDEX `fk_JobPreferences_JobTitles` ON `recruitresource`.`job_preferences` (`JobTitles_idJobTitles` ASC);

CREATE INDEX `fk_JobPreferences_person` ON `recruitresource`.`job_preferences` (`person_idUser` ASC);


-- -----------------------------------------------------
-- Table `recruitresource`.`professional_qualifications`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `recruitresource`.`professional_qualifications` ;

CREATE TABLE IF NOT EXISTS `recruitresource`.`professional_qualifications` (
  `idProfessionalQualifications` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Persons_idUser` INT(10) UNSIGNED NOT NULL,
  `qualificationName` VARCHAR(100) NOT NULL,
  `Sectors_idSectors` SMALLINT(5) UNSIGNED NULL COMMENT 'job sector if relevant',
  `otherSector` VARCHAR(45) NULL DEFAULT NULL COMMENT 'alternative sector if one cannot be found in the drop-down based on the sectors table',
  `awardingBody` VARCHAR(45) NULL DEFAULT NULL COMMENT 'if appropriate - e.g. institute of chartered surveyors',
  `yearObtained` DATE NULL DEFAULT NULL,
  `result` VARCHAR(20) NULL DEFAULT NULL COMMENT 'if appropriate - some prof qualification may have classifications - e.g. the legal practice certificate: distinctinction, commendation, pass',
  `verified` BIT(1) NULL DEFAULT NULL,
  `howVerified` VARCHAR(45) NULL DEFAULT NULL COMMENT 'e.g. examining certificates or lists of members of professional bodies',
  PRIMARY KEY (`idProfessionalQualifications`),
  CONSTRAINT `fk_ProfessionalQualifications_Persons`
    FOREIGN KEY (`Persons_idUser`)
    REFERENCES `recruitresource`.`persons` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProfessionalQualifications_Sectors`
    FOREIGN KEY (`Sectors_idSectors`)
    REFERENCES `recruitresource`.`sectors` (`idSectors`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_ProfessionalQualifications_Sectors` ON `recruitresource`.`professional_qualifications` (`Sectors_idSectors` ASC);

CREATE INDEX `fk_ProfessionalQualifications_Persons` ON `recruitresource`.`professional_qualifications` (`Persons_idUser` ASC);


-- -----------------------------------------------------
-- Table `recruitresource`.`referees`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `recruitresource`.`referees` ;

CREATE TABLE IF NOT EXISTS `recruitresource`.`referees` (
  `idReferees` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Persons_idUser` INT(10) UNSIGNED NOT NULL,
  `title` VARCHAR(10) NULL,
  `forename` VARCHAR(45) NOT NULL,
  `surname` VARCHAR(45) NOT NULL,
  `email` VARCHAR(50) NULL,
  `contactPhone` VARCHAR(16) NULL DEFAULT NULL,
  `relationship` ENUM('employer','academic') NULL DEFAULT NULL,
  `permissionToContact` BIT(1) NULL DEFAULT NULL COMMENT 'the person should get an agreement and tick this box to overwrite the default 0',
  `permissionToStoreDetails` BIT(1) NULL DEFAULT NULL COMMENT 'person should try to get an agreement and check - otherwise the record will be deleted',
  `verified` BIT(1) NULL DEFAULT NULL,
  `howVerified` VARCHAR(45) NULL DEFAULT NULL COMMENT 'referee contacted by email/phone/letter',
  `referenceDoc` BLOB NULL DEFAULT NULL COMMENT 'uploaded scanned reference?',
  PRIMARY KEY (`idReferees`),
  CONSTRAINT `fk_Referees_Persons`
    FOREIGN KEY (`Persons_idUser`)
    REFERENCES `recruitresource`.`persons` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'need to check data protection for referee data';

CREATE INDEX `fk_Referees_Persons` ON `recruitresource`.`referees` (`Persons_idUser` ASC);


-- -----------------------------------------------------
-- Table `recruitresource`.`skills`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `recruitresource`.`skills` ;

CREATE TABLE IF NOT EXISTS `recruitresource`.`skills` (
  `idSkills` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Persons_idUser` INT(10) UNSIGNED NOT NULL,
  `skillName` VARCHAR(100) NOT NULL COMMENT 'from skills_lookup or chosen name - should be warned that may not be picked up by the business searches',
  `skillLevel` ENUM('Basic','Good','Excellent') NULL COMMENT 'subjective - but may be crossreferenced to to ER tests',
  `verified` BIT(1) NULL DEFAULT NULL,
  `howVerified` VARCHAR(45) NULL DEFAULT NULL COMMENT 'reference, ER test or other evidence of competence',
  PRIMARY KEY (`idSkills`),
  CONSTRAINT `fk_Skills_Persons`
    FOREIGN KEY (`Persons_idUser`)
    REFERENCES `recruitresource`.`persons` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `unique_skillPerson` ON `recruitresource`.`skills` (`Persons_idUser` ASC, `skillName` ASC);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
