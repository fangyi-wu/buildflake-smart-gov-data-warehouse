-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema buildings_info
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema buildings_info
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `buildings_info` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `buildings_info` ;

-- -----------------------------------------------------
-- Table `buildings_info`.`backup_building_fact_table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`backup_building_fact_table` (
  `address` VARCHAR(100) NULL DEFAULT NULL,
  `bldg_id` INT NULL DEFAULT NULL,
  `last_update` TEXT NULL DEFAULT NULL,
  `no_of_unit` BIGINT NULL DEFAULT NULL,
  `stories` BIGINT NULL DEFAULT NULL,
  `year_built` BIGINT NULL DEFAULT NULL,
  `ordinance_key` TEXT NULL DEFAULT NULL,
  `violation_key` TEXT NULL DEFAULT NULL,
  `permit_key` TEXT NULL DEFAULT NULL,
  `311_key` VARCHAR(3000) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`backup_footprints`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`backup_footprints` (
  `bldg_fp_id` INT NULL DEFAULT NULL,
  `bldg_statu` TEXT NULL DEFAULT NULL,
  `shape_area` DOUBLE NULL DEFAULT NULL,
  `shape_len` DOUBLE NULL DEFAULT NULL,
  `x_coord` DOUBLE NULL DEFAULT NULL,
  `y_coord` DOUBLE NULL DEFAULT NULL,
  `z_coord` BIGINT NULL DEFAULT NULL,
  `footprint_` TEXT NULL DEFAULT NULL,
  `year_built` BIGINT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`backup_gov_pub_rec`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`backup_gov_pub_rec` (
  `bldg_gpr_id` BIGINT NULL DEFAULT NULL,
  `bldg_status` TEXT NULL DEFAULT NULL,
  `bldg_sq_footage` DOUBLE NULL DEFAULT NULL,
  `x_coord` DOUBLE NULL DEFAULT NULL,
  `y_coord` DOUBLE NULL DEFAULT NULL,
  `z_coord` DOUBLE NULL DEFAULT NULL,
  `footprint_source` TEXT NULL DEFAULT NULL,
  `year_built` DOUBLE NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`backup_ordinance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`backup_ordinance` (
  `id` TEXT NULL DEFAULT NULL,
  `issuing_department` TEXT NULL DEFAULT NULL,
  `hearing_date` TEXT NULL DEFAULT NULL,
  `case_disposition` TEXT NULL DEFAULT NULL,
  `imposed_fine` TEXT NULL DEFAULT NULL,
  `admin_costs` TEXT NULL DEFAULT NULL,
  `violation_date` TEXT NULL DEFAULT NULL,
  `docket_number` TEXT NULL DEFAULT NULL,
  `respondents` TEXT NULL DEFAULT NULL,
  `violation_code` VARCHAR(255) NULL DEFAULT NULL,
  `address` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`backup_permits`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`backup_permits` (
  `id` TEXT NULL DEFAULT NULL,
  `permit_number` VARCHAR(255) NULL DEFAULT NULL,
  `permit_type` TEXT NULL DEFAULT NULL,
  `review_type` TEXT NULL DEFAULT NULL,
  `application_start_date` TEXT NULL DEFAULT NULL,
  `issue_date` TEXT NULL DEFAULT NULL,
  `processing_time` TEXT NULL DEFAULT NULL,
  `permit_status` TEXT NULL DEFAULT NULL,
  `permit_milestone` TEXT NULL DEFAULT NULL,
  `work_type` TEXT NULL DEFAULT NULL,
  `work_description` TEXT NULL DEFAULT NULL,
  `address` VARCHAR(100) NULL DEFAULT NULL,
  `geo_id` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`backup_service_request`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`backup_service_request` (
  `sr_number` TEXT NULL DEFAULT NULL,
  `sr_type` TEXT NULL DEFAULT NULL,
  `sr_short_code` TEXT NULL DEFAULT NULL,
  `created_department` TEXT NULL DEFAULT NULL,
  `owner_department` TEXT NULL DEFAULT NULL,
  `status` TEXT NULL DEFAULT NULL,
  `origin` TEXT NULL DEFAULT NULL,
  `created_date` TEXT NULL DEFAULT NULL,
  `last_modified_date` TEXT NULL DEFAULT NULL,
  `closed_date` TEXT NULL DEFAULT NULL,
  `duplicate` TINYINT(1) NULL DEFAULT NULL,
  `legacy_record` TINYINT(1) NULL DEFAULT NULL,
  `legacy_sr_number` TEXT NULL DEFAULT NULL,
  `parent_sr_number` TEXT NULL DEFAULT NULL,
  `address` TEXT NULL DEFAULT NULL,
  `city` TEXT NULL DEFAULT NULL,
  `state` TEXT NULL DEFAULT NULL,
  `geography_id` DOUBLE NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`backup_service_request_final`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`backup_service_request_final` (
  `sr_number` TEXT NULL DEFAULT NULL,
  `sr_type` TEXT NULL DEFAULT NULL,
  `sr_short_code` TEXT NULL DEFAULT NULL,
  `created_department` TEXT NULL DEFAULT NULL,
  `owner_department` TEXT NULL DEFAULT NULL,
  `status` TEXT NULL DEFAULT NULL,
  `origin` TEXT NULL DEFAULT NULL,
  `created_date` TEXT NULL DEFAULT NULL,
  `last_modified_date` TEXT NULL DEFAULT NULL,
  `closed_date` TEXT NULL DEFAULT NULL,
  `duplicate` TINYINT(1) NULL DEFAULT NULL,
  `legacy_record` TINYINT(1) NULL DEFAULT NULL,
  `legacy_sr_number` TEXT NULL DEFAULT NULL,
  `parent_sr_number` TEXT NULL DEFAULT NULL,
  `address` TEXT NULL DEFAULT NULL,
  `city` TEXT NULL DEFAULT NULL,
  `state` TEXT NULL DEFAULT NULL,
  `latitude` DOUBLE NULL DEFAULT NULL,
  `longitude` DOUBLE NULL DEFAULT NULL,
  `geography_id` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`backup_violations`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`backup_violations` (
  `id` INT NULL DEFAULT NULL,
  `violation_last_modified_date` TEXT NULL DEFAULT NULL,
  `violation_date` TEXT NULL DEFAULT NULL,
  `violation_code` TEXT NULL DEFAULT NULL,
  `violation_description` TEXT NULL DEFAULT NULL,
  `inspection_id` INT NULL DEFAULT NULL,
  `address` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`building_fact`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`building_fact` (
  `address` VARCHAR(100) NULL DEFAULT NULL,
  `bldg_id` INT NULL DEFAULT NULL,
  `last_update` DATETIME NULL DEFAULT NULL,
  `no_of_unit` BIGINT NULL DEFAULT NULL,
  `stories` BIGINT NULL DEFAULT NULL,
  `year_built` BIGINT NULL DEFAULT NULL,
  `ordinance_key` TEXT NULL DEFAULT NULL,
  `violation_key` TEXT NULL DEFAULT NULL,
  `permit_key` TEXT NULL DEFAULT NULL,
  `311_key` VARCHAR(3000) NULL DEFAULT NULL,
  UNIQUE INDEX `unique_address` (`address` ASC) VISIBLE,
  INDEX `idx_building_fact_bldg_id` (`bldg_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`building_footprints`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`building_footprints` (
  `bldg_fp_id` INT NULL DEFAULT NULL,
  `bldg_statu` TEXT NULL DEFAULT NULL,
  `shape_area` DOUBLE NULL DEFAULT NULL,
  `shape_len` DOUBLE NULL DEFAULT NULL,
  `x_coord` DOUBLE NULL DEFAULT NULL,
  `y_coord` DOUBLE NULL DEFAULT NULL,
  `z_coord` BIGINT NULL DEFAULT NULL,
  `footprint_` TEXT NULL DEFAULT NULL,
  `year_built` BIGINT NULL DEFAULT NULL,
  INDEX `idx_building_footprints_bldg_fp_id` (`bldg_fp_id` ASC) VISIBLE,
  CONSTRAINT `fk_footprint_bldg_id`
    FOREIGN KEY (`bldg_fp_id`)
    REFERENCES `buildings_info`.`building_fact` (`bldg_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`building_permits`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`building_permits` (
  `id` TEXT NULL DEFAULT NULL,
  `permit_number` VARCHAR(255) NULL DEFAULT NULL,
  `permit_type` TEXT NULL DEFAULT NULL,
  `review_type` TEXT NULL DEFAULT NULL,
  `application_start_date` TEXT NULL DEFAULT NULL,
  `issue_date` TEXT NULL DEFAULT NULL,
  `processing_time` INT NULL DEFAULT NULL,
  `permit_status` TEXT NULL DEFAULT NULL,
  `permit_milestone` TEXT NULL DEFAULT NULL,
  `work_type` TEXT NULL DEFAULT NULL,
  `work_description` TEXT NULL DEFAULT NULL,
  `address` VARCHAR(100) NULL DEFAULT NULL,
  `geo_id` INT NULL DEFAULT NULL,
  INDEX `idx_building_permits_geo_id` (`geo_id` ASC) VISIBLE,
  INDEX `idx_building_permits_permit_number` (`permit_number` ASC) VISIBLE,
  INDEX `fk_permit_address` (`address` ASC) VISIBLE,
  CONSTRAINT `fk_permit_address`
    FOREIGN KEY (`address`)
    REFERENCES `buildings_info`.`building_fact` (`address`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`building_violations`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`building_violations` (
  `id` INT NULL DEFAULT NULL,
  `violation_last_modified_date` TEXT NULL DEFAULT NULL,
  `violation_date` TEXT NULL DEFAULT NULL,
  `violation_code` TEXT NULL DEFAULT NULL,
  `violation_description` TEXT NULL DEFAULT NULL,
  `inspection_id` INT NULL DEFAULT NULL,
  `address` VARCHAR(100) NULL DEFAULT NULL,
  INDEX `idx_building_violations_inspection_id` (`inspection_id` ASC) VISIBLE,
  INDEX `fk_violation_address` (`address` ASC) VISIBLE,
  CONSTRAINT `fk_violation_address`
    FOREIGN KEY (`address`)
    REFERENCES `buildings_info`.`building_fact` (`address`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`government_public_records`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`government_public_records` (
  `bldg_gpr_id` INT NULL DEFAULT NULL,
  `bldg_status` TEXT NULL DEFAULT NULL,
  `bldg_sq_footage` DOUBLE NULL DEFAULT NULL,
  `x_coord` DOUBLE NULL DEFAULT NULL,
  `y_coord` DOUBLE NULL DEFAULT NULL,
  `z_coord` DOUBLE NULL DEFAULT NULL,
  `footprint_source` TEXT NULL DEFAULT NULL,
  `year_built` DOUBLE NULL DEFAULT NULL,
  INDEX `fk_gov_pub_bldg_id` (`bldg_gpr_id` ASC) VISIBLE,
  CONSTRAINT `fk_gov_pub_bldg_id`
    FOREIGN KEY (`bldg_gpr_id`)
    REFERENCES `buildings_info`.`building_fact` (`bldg_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`ordinance_violations`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`ordinance_violations` (
  `id` TEXT NULL DEFAULT NULL,
  `issuing_department` TEXT NULL DEFAULT NULL,
  `hearing_date` DATETIME NULL DEFAULT NULL,
  `case_disposition` TEXT NULL DEFAULT NULL,
  `imposed_fine` INT NULL DEFAULT NULL,
  `admin_costs` INT NULL DEFAULT NULL,
  `violation_date` DATETIME NULL DEFAULT NULL,
  `docket_number` TEXT NULL DEFAULT NULL,
  `respondents` TEXT NULL DEFAULT NULL,
  `violation_code` VARCHAR(255) NULL DEFAULT NULL,
  `address` VARCHAR(100) NULL DEFAULT NULL,
  INDEX `idx_ordinance_violations_inspection_id` (`violation_code` ASC) VISIBLE,
  INDEX `fk_ordinance_address` (`address` ASC) VISIBLE,
  CONSTRAINT `fk_ordinance_address`
    FOREIGN KEY (`address`)
    REFERENCES `buildings_info`.`building_fact` (`address`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`ordinance_violations_description`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`ordinance_violations_description` (
  `violation_code` VARCHAR(255) NULL DEFAULT NULL,
  `violation_description` TEXT NULL DEFAULT NULL,
  INDEX `idx_ordinance_violations_description_inspection_id` (`violation_code` ASC) VISIBLE,
  CONSTRAINT `fk_ordinance_violations_description_ordinance_violations`
    FOREIGN KEY (`violation_code`)
    REFERENCES `buildings_info`.`ordinance_violations` (`violation_code`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`permit_fees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`permit_fees` (
  `permit_number` VARCHAR(255) NULL DEFAULT NULL,
  `building_fee_paid` INT NULL DEFAULT NULL,
  `zoning_fee_paid` INT NULL DEFAULT NULL,
  `other_fee_paid` INT NULL DEFAULT NULL,
  `subtotal_paid` INT NULL DEFAULT NULL,
  `building_fee_unpaid` INT NULL DEFAULT NULL,
  `zoning_fee_unpaid` INT NULL DEFAULT NULL,
  `other_fee_unpaid` INT NULL DEFAULT NULL,
  `subtotal_unpaid` INT NULL DEFAULT NULL,
  `building_fee_waived` INT NULL DEFAULT NULL,
  `total_fee` INT NULL DEFAULT NULL,
  INDEX `idx_permit_fees_permit_number` (`permit_number` ASC) VISIBLE,
  CONSTRAINT `fk_permit_fees_building_permits`
    FOREIGN KEY (`permit_number`)
    REFERENCES `buildings_info`.`building_permits` (`permit_number`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`permit_geography`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`permit_geography` (
  `community_area` INT NULL DEFAULT NULL,
  `census_tract` INT NULL DEFAULT NULL,
  `ward` INT NULL DEFAULT NULL,
  `geo_id` INT NULL DEFAULT NULL,
  INDEX `idx_permit_geography_geo_id` (`geo_id` ASC) VISIBLE,
  CONSTRAINT `fk_permit_geography_building_permits`
    FOREIGN KEY (`geo_id`)
    REFERENCES `buildings_info`.`building_permits` (`geo_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`service_request_geography`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`service_request_geography` (
  `community_area` DOUBLE NULL DEFAULT NULL,
  `ward` DOUBLE NULL DEFAULT NULL,
  `electrical_district` DOUBLE NULL DEFAULT NULL,
  `electricity_grid` TEXT NULL DEFAULT NULL,
  `police_sector` DOUBLE NULL DEFAULT NULL,
  `police_district` DOUBLE NULL DEFAULT NULL,
  `police_beat` DOUBLE NULL DEFAULT NULL,
  `precinct` DOUBLE NULL DEFAULT NULL,
  `sanitation_division_days` TEXT NULL DEFAULT NULL,
  `geography_id` INT NULL DEFAULT NULL,
  INDEX `service_request_geography_ind_geo` (`geography_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`service_request`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`service_request` (
  `sr_number` TEXT NULL DEFAULT NULL,
  `sr_type` TEXT NULL DEFAULT NULL,
  `sr_short_code` TEXT NULL DEFAULT NULL,
  `created_department` TEXT NULL DEFAULT NULL,
  `owner_department` TEXT NULL DEFAULT NULL,
  `status` TEXT NULL DEFAULT NULL,
  `origin` TEXT NULL DEFAULT NULL,
  `created_date` TEXT NULL DEFAULT NULL,
  `last_modified_date` TEXT NULL DEFAULT NULL,
  `closed_date` TEXT NULL DEFAULT NULL,
  `duplicate` TINYINT(1) NULL DEFAULT NULL,
  `legacy_record` TINYINT(1) NULL DEFAULT NULL,
  `legacy_sr_number` TEXT NULL DEFAULT NULL,
  `parent_sr_number` TEXT NULL DEFAULT NULL,
  `address` VARCHAR(100) NULL DEFAULT NULL,
  `city` TEXT NULL DEFAULT NULL,
  `state` TEXT NULL DEFAULT NULL,
  `latitude` DOUBLE NULL DEFAULT NULL,
  `longitude` DOUBLE NULL DEFAULT NULL,
  `geography_id` INT NULL DEFAULT NULL,
  INDEX `fk_service_request_geo_id` (`geography_id` ASC) VISIBLE,
  INDEX `fk_service_request_address` (`address` ASC) VISIBLE,
  CONSTRAINT `fk_service_request_address`
    FOREIGN KEY (`address`)
    REFERENCES `buildings_info`.`building_fact` (`address`),
  CONSTRAINT `fk_service_request_geo_id`
    FOREIGN KEY (`geography_id`)
    REFERENCES `buildings_info`.`service_request_geography` (`geography_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`service_request_backup2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`service_request_backup2` (
  `sr_number` TEXT NULL DEFAULT NULL,
  `sr_type` TEXT NULL DEFAULT NULL,
  `sr_short_code` TEXT NULL DEFAULT NULL,
  `created_department` TEXT NULL DEFAULT NULL,
  `owner_department` TEXT NULL DEFAULT NULL,
  `status` TEXT NULL DEFAULT NULL,
  `origin` TEXT NULL DEFAULT NULL,
  `created_date` TEXT NULL DEFAULT NULL,
  `last_modified_date` TEXT NULL DEFAULT NULL,
  `closed_date` TEXT NULL DEFAULT NULL,
  `duplicate` TINYINT(1) NULL DEFAULT NULL,
  `legacy_record` TINYINT(1) NULL DEFAULT NULL,
  `legacy_sr_number` TEXT NULL DEFAULT NULL,
  `parent_sr_number` TEXT NULL DEFAULT NULL,
  `address` VARCHAR(100) NULL DEFAULT NULL,
  `city` TEXT NULL DEFAULT NULL,
  `state` TEXT NULL DEFAULT NULL,
  `geography_id` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`test_add`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`test_add` (
  `blgd_id` INT NULL DEFAULT NULL,
  `address` VARCHAR(100) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `buildings_info`.`violation_inspections`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `buildings_info`.`violation_inspections` (
  `inspector_id` VARCHAR(100) NULL DEFAULT NULL,
  `inspection_status` TEXT NULL DEFAULT NULL,
  `inspection_waived` TEXT NULL DEFAULT NULL,
  `inspection_category` TEXT NULL DEFAULT NULL,
  `department_bureau` TEXT NULL DEFAULT NULL,
  `inspector_comments` TEXT NULL DEFAULT NULL,
  `violation_date` DATETIME NULL DEFAULT NULL,
  `inspection_id` INT NULL DEFAULT NULL,
  INDEX `fk_service_inspection_id` (`inspection_id` ASC) VISIBLE,
  CONSTRAINT `fk_service_inspection_id`
    FOREIGN KEY (`inspection_id`)
    REFERENCES `buildings_info`.`building_violations` (`inspection_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
