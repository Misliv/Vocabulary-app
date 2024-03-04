-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema woordenschatapp
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema woordenschatapp
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `woordenschatapp` DEFAULT CHARACTER SET utf8 ;
USE `woordenschatapp` ;

-- -----------------------------------------------------
-- Table `woordenschatapp`.`woordenlijst`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `woordenschatapp`.`woordenlijst` (
                                                                `idWoordenlijst` INT NOT NULL,
                                                                `Woord` VARCHAR(45) NOT NULL,
                                                                `Soort` VARCHAR(45) NOT NULL,
                                                                PRIMARY KEY (`idWoordenlijst`),
                                                                UNIQUE INDEX `idWoordenlijst_UNIQUE` (`idWoordenlijst` ASC))
    ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;



/* TODO     vul hier de inserts in voor de 200 woorden van sietske
 */
 /*INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
 VALUES ('1', 'aan', 'voorzetsel' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('2', 'aan', 'bijwoord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('3', 'aanbieden', 'werkwoord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('4', 'aandacht', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('5', 'aandeel', 'zelfstandig naamwoord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('6', 'aandoen', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('7', 'aangezien', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('8', 'aankijken', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('9', 'aankleden', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('10', 'aankomen', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('11', 'aankomst', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('12', 'aankondigen', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('13', 'aankondiging', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('14', 'aanleg', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('15', 'aanleiding', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('16', 'aannemen', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('17', 'aanpassen', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('18', 'aansluiten', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('19', 'aantal', 'zelfstandig naamwoord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('20', 'aantrekken', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('21', 'aanvaarden', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('22', 'aanvragen', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('23', 'aanwezig', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('24', 'aanwijzen', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('25', 'aanzien', 'zelfstandig naamwoord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('26', 'aanzien', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('27', 'aanzienlijk', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('28', 'aard', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('29', 'aardappel', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('30', 'aarde', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('31', 'aardig', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('32', 'aarzelen', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('33', 'absoluut', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('34', 'achten', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('35', 'achter', 'voorzetsel' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('36', 'achter', 'bijwoord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('37', 'achterblijven', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('38', 'achtergrond', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('39', 'achteruit', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('40', 'actie', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('41', 'activiteit', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('42', 'adres', 'zelfstandig naamwoord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('43', 'advies', 'zelfstandig naamwoord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('44', 'af', ' voorzetsel' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('45', 'af', 'bijwoord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('46', 'afdeling', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('47', 'afhankelijk', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('48', 'afkomen', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('49', 'aflopen', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('50', 'afnemen', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('51', 'afpakken', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('52', 'afscheid', 'zelfstandig naamwoord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('53', 'afsluiten', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('54', 'afspraak', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('55', 'afstand', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('56', 'afvegen', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('57', 'afvragen', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('58', 'afwachten', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('59', 'afwezig', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('60', 'agent', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('61', 'akkoord', ' zelfstandig naamwoord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('62', 'akkoord', '  bijwoord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('63', 'al', ' bijwoord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('64', 'al', ' voorzetsel' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('65', 'al / alle', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('66', 'aldoor', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('67', 'aldus', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('68', 'alle', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('69', 'allebei', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('70', 'alleen', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('71', 'allemaal', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('72', 'allerlei', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('73', 'alles', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('74', 'alsjeblieft', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('75', 'alof', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('76', 'alstublieft', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('77', 'althans', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('78', 'altijd', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('79', 'alweer', 'normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('80', 'ambassade', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('81', 'ambtenaar', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('82', 'ander', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('83', 'anderhalf', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('84', 'anders', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('85', 'anderzijds', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('86', 'angst', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('87', 'angstig', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('88', 'antwoord', ' zelfstandig naamwoord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('89', 'antwoorden', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('90', 'apart', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('91', 'appel', ' zelfstandig naamwoord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('92', 'apotheek', ' zelfstandig naamwoord' );
*/

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('93', 'april', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('94', 'arbeid', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('95', 'arbeider', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('96', 'arm', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('97', 'artikel', ' zelfstandig naamwoord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('98', 'arts', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('99', 'augustus', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('100', 'auto', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('101', 'avond', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('102', 'baan', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('103', 'baard', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('104', 'baas', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('105', 'baby', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('106', 'bad', ' zelfstandig naamwoord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('107', 'bagage', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('108', 'bakker', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('109', 'bal', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('110', 'band', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('111', 'bang', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('112', 'bank', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('113', 'basis', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('114', 'antwoorden', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('115', 'antwoorden', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('116', 'antwoorden', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('117', 'antwoorden', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('118', 'antwoorden', ' normaal woord' );

INSERT INTO woordenlijst (idwoordenlijst, woord, soort)
VALUES ('119', 'antwoorden', ' normaal woord' );





































