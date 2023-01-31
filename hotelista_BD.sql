-- MySQL Script generated by MySQL Workbench
-- ter 31 jan 2023 17:16:50
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Hotelista_DB
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Hotelista_DB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Hotelista_DB` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `Hotelista_DB` ;

-- -----------------------------------------------------
-- Table `Hotelista_DB`.`Reservas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hotelista_DB`.`Reservas` (
  `idReservas` INT NOT NULL AUTO_INCREMENT,
  `idAcomodacoes` VARCHAR(45) NOT NULL,
  `idUsuario` VARCHAR(45) NOT NULL,
  `data_checkin` DATETIME NOT NULL DEFAULT 1900-01-01 00:00:00,
  `data_checkout` DATETIME NOT NULL DEFAULT 1900-01-01 00:00:00,
  `qtd_pessoas` INT(4) UNSIGNED NOT NULL,
  `idServicos` VARCHAR(100) NULL,
  `valor_total_reserva` DECIMAL(10,2) UNSIGNED NOT NULL,
  PRIMARY KEY (`idReservas`),
  UNIQUE INDEX `idReservas_UNIQUE` (`idReservas` ASC) VISIBLE,
  UNIQUE INDEX `idAcomodacoes_UNIQUE` (`idAcomodacoes` ASC) VISIBLE,
  UNIQUE INDEX `idUsuario_UNIQUE` (`idUsuario` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Hotelista_DB`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hotelista_DB`.`Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(80) NOT NULL,
  `email` VARCHAR(80) NOT NULL,
  `telefone` VARCHAR(20) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  `nacionalidade` VARCHAR(50) NOT NULL,
  `genero` VARCHAR(45) NOT NULL,
  `endereco` VARCHAR(255) NOT NULL,
  `Reservas_idReservas` INT NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `telefone_UNIQUE` (`telefone` ASC) VISIBLE,
  INDEX `fk_Usuario_Reservas1_idx` (`Reservas_idReservas` ASC) VISIBLE,
  CONSTRAINT `fk_Usuario_Reservas1`
    FOREIGN KEY (`Reservas_idReservas`)
    REFERENCES `Hotelista_DB`.`Reservas` (`idReservas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Hotelista_DB`.`Acomodacoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hotelista_DB`.`Acomodacoes` (
  `idAcomodacoes` INT NOT NULL,
  `quarto_simples` VARCHAR(45) NULL,
  `quarto_luxo` VARCHAR(45) NULL,
  `quarto_medio` VARCHAR(45) NULL,
  `preco` DECIMAL(10,2) UNSIGNED NULL,
  `Reservas_idReservas` INT NOT NULL,
  PRIMARY KEY (`idAcomodacoes`),
  INDEX `fk_Acomodacoes_Reservas1_idx` (`Reservas_idReservas` ASC) VISIBLE,
  CONSTRAINT `fk_Acomodacoes_Reservas1`
    FOREIGN KEY (`Reservas_idReservas`)
    REFERENCES `Hotelista_DB`.`Reservas` (`idReservas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Hotelista_DB`.`Consumo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hotelista_DB`.`Consumo` (
  `idConsumo` INT NOT NULL,
  `idUsuario` VARCHAR(45) NOT NULL,
  `idReserva` VARCHAR(45) NOT NULL,
  `cerveja` INT NULL,
  `agua` INT NULL,
  `refrigerante` INT NULL,
  `barra de chocolate` INT NULL,
  `batata chips` INT NULL,
  `amendoim` INT NULL,
  `café` INT NULL,
  `pão de queijo` INT NULL,
  `lanche` TINYTEXT NULL,
  `almoço` TINYTEXT NULL,
  `jantar` TINYTEXT NULL,
  `preco` DECIMAL(10,2) NULL,
  `Usuario_idUsuario` INT NOT NULL,
  PRIMARY KEY (`idConsumo`),
  UNIQUE INDEX `idUsuario_UNIQUE` (`idUsuario` ASC) VISIBLE,
  UNIQUE INDEX `idConsumo_UNIQUE` (`idConsumo` ASC) VISIBLE,
  UNIQUE INDEX `idReserva_UNIQUE` (`idReserva` ASC) VISIBLE,
  INDEX `fk_Consumo_Usuario1_idx` (`Usuario_idUsuario` ASC) VISIBLE,
  CONSTRAINT `fk_Consumo_Usuario1`
    FOREIGN KEY (`Usuario_idUsuario`)
    REFERENCES `Hotelista_DB`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Hotelista_DB`.`Servicos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hotelista_DB`.`Servicos` (
  `idServicos` INT NOT NULL AUTO_INCREMENT,
  `lavanderia` TINYINT NULL,
  `limpeza_diaria` TINYINT NULL,
  `cofre` TINYINT NULL,
  `pct_streaming` TINYINT NULL,
  `hotel_pet` TINYINT NULL,
  `preco` DECIMAL(10,2) UNSIGNED NULL,
  `Reservas_idReservas` INT NOT NULL,
  PRIMARY KEY (`idServicos`),
  UNIQUE INDEX `idServicos_UNIQUE` (`idServicos` ASC) VISIBLE,
  INDEX `fk_Servicos_Reservas1_idx` (`Reservas_idReservas` ASC) VISIBLE,
  CONSTRAINT `fk_Servicos_Reservas1`
    FOREIGN KEY (`Reservas_idReservas`)
    REFERENCES `Hotelista_DB`.`Reservas` (`idReservas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;