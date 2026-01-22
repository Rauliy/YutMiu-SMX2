-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Buscador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Buscador` (
  `ID_Buscador` INT NOT NULL,
  `Título` VARCHAR(15) NULL,
  `Genero` VARCHAR(15) NULL,
  `Artista` VARCHAR(30) NULL,
  `Valoración` VARCHAR(45) NULL,
  PRIMARY KEY (`ID_Buscador`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Listas de musicas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Listas de musicas` (
  `ID_Listas de músicas` INT NOT NULL,
  `ID_Músicas` VARCHAR(45) NULL,
  `Nombre` VARCHAR(45) NULL,
  `Descripcion` VARCHAR(50) NULL,
  `Listas de musicascol` VARCHAR(45) NULL,
  PRIMARY KEY (`ID_Listas de músicas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Usuarios` (
  `ID_Usuarios` INT NOT NULL,
  `Nombre` VARCHAR(15) NULL,
  `Subnombre` VARCHAR(45) NULL,
  `Email` VARCHAR(20) NULL,
  `Contraseña` VARCHAR(15) NULL,
  `-Foto de perfil` VARCHAR(45) NULL,
  `Descripcion` VARCHAR(50) NULL,
  `Listas de musicas propias` VARCHAR(10) NULL,
  `Buscador_ID_Buscador` INT NOT NULL,
  `ID_Listas de músicas` INT NOT NULL,
  PRIMARY KEY (`ID_Usuarios`, `Buscador_ID_Buscador`, `ID_Listas de músicas`),
  INDEX `fk_Usuarios_Buscador1_idx` (`Buscador_ID_Buscador` ASC) VISIBLE,
  INDEX `fk_Usuarios_Listas de musicas1_idx` (`ID_Listas de músicas` ASC) VISIBLE,
  CONSTRAINT `fk_Usuarios_Buscador1`
    FOREIGN KEY (`Buscador_ID_Buscador`)
    REFERENCES `mydb`.`Buscador` (`ID_Buscador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuarios_Listas de musicas1`
    FOREIGN KEY (`ID_Listas de músicas`)
    REFERENCES `mydb`.`Listas de musicas` (`ID_Listas de músicas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Artista`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Artista` (
  `ID_Artista` INT NOT NULL,
  `Nombre` VARCHAR(30) NULL,
  `Imagen` VARCHAR(45) NULL,
  PRIMARY KEY (`ID_Artista`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Valoraciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Valoraciones` (
  `ID_usuarios` INT NOT NULL,
  `ID_valoraciones` VARCHAR(45) NULL,
  `ID_Musica` VARCHAR(45) NULL,
  `Puntacion` VARCHAR(45) NULL,
  `Comentario` VARCHAR(45) NULL,
  `Fecha` VARCHAR(8) NULL,
  PRIMARY KEY (`ID_usuarios`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Musicas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Musicas` (
  `ID_Músicas` INT NOT NULL,
  `Título` VARCHAR(15) NULL,
  `Genero` VARCHAR(10) NULL,
  `ID_Artista` VARCHAR(30) NULL,
  `Duracion` VARCHAR(45) NULL,
  `Valoraciónes` VARCHAR(50) NULL,
  `Artista_ID_Artista` INT NOT NULL,
  `Valoraciones_ID_usuarios` INT NOT NULL,
  `Usuarios_ID_Usuarios` INT NOT NULL,
  `Usuarios_Buscador_ID_Buscador` INT NOT NULL,
  `Usuarios_ID_Listas de músicas` INT NOT NULL,
  `Listas de musicas_ID_Listas de músicas` INT NOT NULL,
  PRIMARY KEY (`ID_Músicas`, `Artista_ID_Artista`, `Valoraciones_ID_usuarios`, `Usuarios_ID_Usuarios`, `Usuarios_Buscador_ID_Buscador`, `Usuarios_ID_Listas de músicas`, `Listas de musicas_ID_Listas de músicas`),
  INDEX `fk_Musicas_Artista1_idx` (`Artista_ID_Artista` ASC) VISIBLE,
  INDEX `fk_Musicas_Valoraciones1_idx` (`Valoraciones_ID_usuarios` ASC) VISIBLE,
  INDEX `fk_Musicas_Usuarios1_idx` (`Usuarios_ID_Usuarios` ASC, `Usuarios_Buscador_ID_Buscador` ASC, `Usuarios_ID_Listas de músicas` ASC) VISIBLE,
  INDEX `fk_Musicas_Listas de musicas1_idx` (`Listas de musicas_ID_Listas de músicas` ASC) VISIBLE,
  CONSTRAINT `fk_Musicas_Artista1`
    FOREIGN KEY (`Artista_ID_Artista`)
    REFERENCES `mydb`.`Artista` (`ID_Artista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Musicas_Valoraciones1`
    FOREIGN KEY (`Valoraciones_ID_usuarios`)
    REFERENCES `mydb`.`Valoraciones` (`ID_usuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Musicas_Usuarios1`
    FOREIGN KEY (`Usuarios_ID_Usuarios` , `Usuarios_Buscador_ID_Buscador` , `Usuarios_ID_Listas de músicas`)
    REFERENCES `mydb`.`Usuarios` (`ID_Usuarios` , `Buscador_ID_Buscador` , `ID_Listas de músicas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Musicas_Listas de musicas1`
    FOREIGN KEY (`Listas de musicas_ID_Listas de músicas`)
    REFERENCES `mydb`.`Listas de musicas` (`ID_Listas de músicas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
