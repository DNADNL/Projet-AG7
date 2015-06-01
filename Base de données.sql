
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 01 Juin 2015 à 20:15
-- Version du serveur: 10.0.11-MariaDB
-- Version de PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `***`
--

-- --------------------------------------------------------

--
-- Structure de la table `Abonne`
--

CREATE TABLE IF NOT EXISTS `Abonne` (
  `ID_Abonne` int(11) NOT NULL AUTO_INCREMENT,
  `Login_Abonne` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Mot_de_passe_Abonne` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `Token_Abonne` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID_Abonne`),
  UNIQUE KEY `Login_Abonne` (`Login_Abonne`),
  UNIQUE KEY `Token_Abonne` (`Token_Abonne`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `Abonne`
--

INSERT INTO `Abonne` (`ID_Abonne`, `Login_Abonne`, `Mot_de_passe_Abonne`, `Token_Abonne`) VALUES
(1, '***', '***', NULL),
(2, '***', '***', NULL),
(3, '***', '***', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Avoir`
--

CREATE TABLE IF NOT EXISTS `Avoir` (
  `Reference_Produit` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `ID_Critere` int(11) NOT NULL,
  PRIMARY KEY (`Reference_Produit`,`ID_Critere`),
  KEY `FK_Avoir_ID_Critere` (`ID_Critere`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Contenu de la table `Avoir`
--

INSERT INTO `Avoir` (`Reference_Produit`, `ID_Critere`) VALUES
('AG7ALG10BCE27', 1),
('AG7ALG10BCE27', 3),
('AG7ALG10BCE27', 11),
('AG7ALG10BCE27', 13),
('AG7ALG10BCE27', 14),
('AG7ALG10BCE27', 16),
('AG7ALG10BCE27', 27),
('AG7ALG10BCE27', 28),
('AG7ALG10BFE27', 1),
('AG7ALG10BFE27', 3),
('AG7ALG10BFE27', 11),
('AG7ALG10BFE27', 14),
('AG7ALG10BFE27', 16),
('AG7ALG10BFE27', 22),
('AG7ALG10BFE27', 27),
('AG7ALG10BFE27', 28),
('AG7ALG15BCB22', 1),
('AG7ALG15BCB22', 13),
('AG7ALG15BCB22', 14),
('AG7ALG15BCB22', 16),
('AG7ALG15BCB22', 18),
('AG7ALG15BCB22', 19),
('AG7ALG15BCB22', 20),
('AG7ALG15BCB22', 21),
('AG7ALG15BCE27', 1),
('AG7ALG15BCE27', 11),
('AG7ALG15BCE27', 13),
('AG7ALG15BCE27', 14),
('AG7ALG15BCE27', 15),
('AG7ALG15BCE27', 16),
('AG7ALG15BCE27', 18),
('AG7ALG15BCE27', 20),
('AG7ALG15BFB22', 1),
('AG7ALG15BFB22', 14),
('AG7ALG15BFB22', 16),
('AG7ALG15BFB22', 18),
('AG7ALG15BFB22', 19),
('AG7ALG15BFB22', 20),
('AG7ALG15BFB22', 21),
('AG7ALG15BFB22', 22),
('AG7ALG15BFE27', 1),
('AG7ALG15BFE27', 11),
('AG7ALG15BFE27', 14),
('AG7ALG15BFE27', 16),
('AG7ALG15BFE27', 18),
('AG7ALG15BFE27', 19),
('AG7ALG15BFE27', 20),
('AG7ALG15BFE27', 22),
('AG7ALG18BB22', 1),
('AG7ALG18BB22', 14),
('AG7ALG18BB22', 16),
('AG7ALG18BB22', 21),
('AG7ALG18BB22', 26),
('AG7ALG18BB22', 34),
('AG7ALG18BB22', 35),
('AG7ALG18BB22', 36),
('AG7ALG18BCB22', 1),
('AG7ALG18BCB22', 13),
('AG7ALG18BCB22', 14),
('AG7ALG18BCB22', 16),
('AG7ALG18BCB22', 21),
('AG7ALG18BCB22', 34),
('AG7ALG18BCB22', 35),
('AG7ALG18BCB22', 36),
('AG7ALG18BCE27', 1),
('AG7ALG18BCE27', 11),
('AG7ALG18BCE27', 13),
('AG7ALG18BCE27', 14),
('AG7ALG18BCE27', 16),
('AG7ALG18BCE27', 34),
('AG7ALG18BCE27', 35),
('AG7ALG18BCE27', 36),
('AG7ALG18BE27', 1),
('AG7ALG18BE27', 11),
('AG7ALG18BE27', 14),
('AG7ALG18BE27', 16),
('AG7ALG18BE27', 26),
('AG7ALG18BE27', 34),
('AG7ALG18BE27', 35),
('AG7ALG18BE27', 36),
('AG7ALG3360BE27', 1),
('AG7ALG3360BE27', 11),
('AG7ALG3360BE27', 12),
('AG7ALG3360BE27', 14),
('AG7ALG3360BE27', 23),
('AG7ALG3360BE27', 24),
('AG7ALG3360BE27', 25),
('AG7ALG3360BE27', 26),
('AG7ALG3BCE27', 1),
('AG7ALG3BCE27', 11),
('AG7ALG3BCE27', 12),
('AG7ALG3BCE27', 13),
('AG7ALG3BCE27', 14),
('AG7ALG3BCE27', 15),
('AG7ALG3BCE27', 16),
('AG7ALG3BCE27', 17),
('AG7ALG5BCE27', 1),
('AG7ALG5BCE27', 11),
('AG7ALG5BCE27', 13),
('AG7ALG5BCE27', 14),
('AG7ALG5BCE27', 16),
('AG7ALG5BCE27', 31),
('AG7ALG5BCE27', 32),
('AG7ALG5BCE27', 33),
('AG7ALG5BFE27', 1),
('AG7ALG5BFE27', 11),
('AG7ALG5BFE27', 14),
('AG7ALG5BFE27', 16),
('AG7ALG5BFE27', 22),
('AG7ALG5BFE27', 31),
('AG7ALG5BFE27', 32),
('AG7ALG5BFE27', 33),
('AG7ALG7BCE27', 1),
('AG7ALG7BCE27', 11),
('AG7ALG7BCE27', 13),
('AG7ALG7BCE27', 14),
('AG7ALG7BCE27', 16),
('AG7ALG7BCE27', 28),
('AG7ALG7BCE27', 29),
('AG7ALG7BCE27', 30),
('AG7ALG7BFE27', 1),
('AG7ALG7BFE27', 11),
('AG7ALG7BFE27', 14),
('AG7ALG7BFE27', 16),
('AG7ALG7BFE27', 22),
('AG7ALG7BFE27', 28),
('AG7ALG7BFE27', 29),
('AG7ALG7BFE27', 30),
('AG7LFBC', 5),
('AG7LFBC', 9),
('AG7LFBC', 37),
('AG7LT2000L', 6),
('AG7LT2000L', 9),
('AG7LT2000L', 38),
('AG7LT2000L', 39),
('AG7MLT450L', 6),
('AG7MLT450L', 9),
('AG7MLT450L', 10),
('AG7MLT450L', 33),
('AG7PLE10BF', 3),
('AG7PLE10BF', 14),
('AG7PLE10BF', 16),
('AG7PLE10BF', 27),
('AG7PLE10BF', 40),
('AG7PLE10BF', 41),
('AG7PLE30BF', 14),
('AG7PLE30BF', 16),
('AG7PLE30BF', 40),
('AG7PLE30BF', 42),
('AG7PLE30BF', 43),
('AG7PLE30BF', 44),
('AG7PLE50BF', 4),
('AG7PLE50BF', 14),
('AG7PLE50BF', 16),
('AG7PLE50BF', 40),
('AG7PLE50BF', 45),
('AG7PLE50BF', 46);

--
-- Déclencheurs `Avoir`
--
DROP TRIGGER IF EXISTS `Verif_Produit_Existe_AVOIR_BEFORE_INSERT`;
DELIMITER //
CREATE TRIGGER `Verif_Produit_Existe_AVOIR_BEFORE_INSERT` BEFORE INSERT ON `Avoir`
 FOR EACH ROW BEGIN
	DECLARE Ref_Prod VARCHAR(100);
	
	DECLARE Fin_Parcours_Produits TINYINT DEFAULT 0;
	
	DECLARE refExiste TINYINT DEFAULT 0;
	
	DECLARE Cur_ListeRefProduit CURSOR
			FOR SELECT Reference_Produit
			FROM Produit;

	DECLARE CONTINUE HANDLER FOR NOT FOUND SET Fin_Parcours_Produits = 1;
	
	OPEN Cur_ListeRefProduit;
        
    Parcours_Produits: LOOP
		FETCH Cur_ListeRefProduit INTO Ref_Prod;
        
		IF (Fin_Parcours_Produits = 1) THEN
			LEAVE Parcours_Produits;
		END IF;
		
		IF (NEW.Reference_Produit = Ref_Prod) THEN
			SET refExiste = (refExiste + 1);
		END IF;
		
	END LOOP;
	
	CLOSE Cur_ListeRefProduit;
	
	IF (refExiste = 0) THEN 
		INSERT INTO Erreur (Message_Erreur) VALUES ('ERREUR - Ce produit n'existe pas dans la base de données.');
	END IF;
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `Verif_Produit_Existe_AVOIR_BEFORE_UPDATE`;
DELIMITER //
CREATE TRIGGER `Verif_Produit_Existe_AVOIR_BEFORE_UPDATE` BEFORE UPDATE ON `Avoir`
 FOR EACH ROW BEGIN
	DECLARE Ref_Prod VARCHAR(100);
	
	DECLARE Fin_Parcours_Produits TINYINT DEFAULT 0;
	
	DECLARE refExiste TINYINT DEFAULT 0;
	
	DECLARE Cur_ListeRefProduit CURSOR
			FOR SELECT Reference_Produit
			FROM Produit;

	DECLARE CONTINUE HANDLER FOR NOT FOUND SET Fin_Parcours_Produits = 1;
	
	OPEN Cur_ListeRefProduit;
        
    Parcours_Produits: LOOP
		FETCH Cur_ListeRefProduit INTO Ref_Prod;
        
		IF (Fin_Parcours_Produits = 1) THEN
			LEAVE Parcours_Produits;
		END IF;
		
		IF (NEW.Reference_Produit = Ref_Prod) THEN
			SET refExiste = (refExiste + 1);
		END IF;
		
	END LOOP;
	
	CLOSE Cur_ListeRefProduit;
	
	IF (refExiste = 0) THEN 
		INSERT INTO Erreur (Message_Erreur) VALUES ('ERREUR - Ce produit n'existe pas dans la base de données.');
	END IF;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `Critere`
--

CREATE TABLE IF NOT EXISTS `Critere` (
  `ID_Critere` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Critere` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `Valeur_Critere` varchar(30) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`ID_Critere`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=47 ;

--
-- Contenu de la table `Critere`
--

INSERT INTO `Critere` (`ID_Critere`, `Nom_Critere`, `Valeur_Critere`) VALUES
(1, 'Forme', 'Classique'),
(2, 'Forme', 'Spot'),
(3, 'Consommation', '10 W'),
(4, 'Consommation', '50 W'),
(5, 'Flux lumineux', '600 Lm'),
(6, 'Couleur', 'Noir'),
(7, 'Culot', 'GU10'),
(8, 'Culot', 'E14'),
(9, 'Chargeur', 'Inclus'),
(10, 'Durée de vie', '10 000 h'),
(11, 'Culot', 'E27'),
(12, 'Consommation', '3 W'),
(13, 'Couleur', 'Blanc Chaud'),
(14, 'Tension', '220 / 240 V'),
(15, 'Flux lumineux', '270 Lm'),
(16, 'Faisceau de diffusion', '120°'),
(17, 'Diamètre / Hauteur', '4 / 8 cm'),
(18, 'Consommation', '15 W'),
(19, 'Flux lumineux', '1350 Lm'),
(20, 'Diamètre / Hauteur', '6,8 / 12 cm'),
(21, 'Culot', 'B22'),
(22, 'Couleur', 'Blanc Froid'),
(23, 'Flux lumineux', '400 Lm'),
(24, 'Faisceau de diffusion', '360°'),
(25, 'Diamètre / Hauteur', '4,5 / 8,5 cm'),
(26, 'Couleur', 'Blanc'),
(27, 'Flux lumineux', '900 Lm'),
(28, 'Diamètre / Hauteur', '5,8 / 10 cm'),
(29, 'Consommation', '7 W'),
(30, 'Flux lumineux', '630 Lm'),
(31, 'Consommation', '5 W'),
(32, 'Diamètre / Hauteur', '4,8 / 8,8 cm'),
(33, 'Flux lumineux', '450 Lm'),
(34, 'Consommation', '18 W'),
(35, 'Flux lumineux', '1750 Lm'),
(36, 'Diamètre / Hauteur', '7,7 / 12,5 cm'),
(37, 'Batterie', '4200 mA'),
(38, 'Flux lumineux', '2000 Lm'),
(39, 'Durée de vie', '25 000 h'),
(40, 'Etanchéité', 'IP65'),
(41, 'Dimensions', '11 x 85 x 85 mm'),
(42, 'Flux lumineux', '2700 Lm'),
(43, 'Dimensions', '225 x 185 x 55 mm'),
(44, 'Consommation', '30 W'),
(45, 'Flux lumineux', '4000 Lm'),
(46, 'Dimensions', '290 x 240 x 145 mm');

-- --------------------------------------------------------

--
-- Structure de la table `Erreur`
--

CREATE TABLE IF NOT EXISTS `Erreur` (
  `ID_Erreur` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `Message_Erreur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_Erreur`),
  UNIQUE KEY `Texte_Erreur` (`Message_Erreur`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `Erreur`
--

INSERT INTO `Erreur` (`ID_Erreur`, `Message_Erreur`) VALUES
(1, 'ERREUR - Ce produit n''existe pas dans la base de données.'),
(2, 'ERREUR - Cette valeur est calculée automatiquement.');

-- --------------------------------------------------------

--
-- Structure de la table `Etre_stocke`
--

CREATE TABLE IF NOT EXISTS `Etre_stocke` (
  `Qte_stockee` int(11) NOT NULL,
  `Reference_Produit` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `ID_Pt_Stock` int(11) NOT NULL,
  PRIMARY KEY (`Reference_Produit`,`ID_Pt_Stock`),
  KEY `FK_Etre_stocke_ID_Pt_Stock` (`ID_Pt_Stock`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Contenu de la table `Etre_stocke`
--

INSERT INTO `Etre_stocke` (`Qte_stockee`, `Reference_Produit`, `ID_Pt_Stock`) VALUES
(37, 'AG7ALG3BCE27', 1),
(0, 'AG7ALG3BCE27', 2),
(0, 'AG7ALG3BCE27', 3),
(0, 'AG7ALG15BCE27', 1),
(27, 'AG7ALG15BCE27', 2),
(0, 'AG7ALG15BCE27', 3),
(11, 'AG7ALG15BCB22', 2),
(0, 'AG7ALG15BCB22', 1),
(117, 'AG7ALG15BFE27', 3),
(0, 'AG7ALG15BFE27', 2),
(0, 'AG7ALG15BFE27', 1),
(0, 'AG7ALG15BCB22', 3),
(0, 'AG7ALG15BFB22', 1),
(13, 'AG7ALG15BFB22', 2),
(56, 'AG7ALG15BFB22', 3),
(0, 'AG7ALG3360BE27', 1),
(53, 'AG7ALG3360BE27', 2),
(81, 'AG7ALG3360BE27', 3),
(0, 'AG7ALG10BCE27', 1),
(12, 'AG7ALG10BCE27', 2),
(0, 'AG7ALG10BCE27', 3),
(0, 'AG7ALG10BFE27', 1),
(0, 'AG7ALG10BFE27', 2),
(112, 'AG7ALG10BFE27', 3),
(0, 'AG7ALG7BCE27', 1),
(0, 'AG7ALG7BCE27', 2),
(0, 'AG7ALG7BCE27', 3),
(53, 'AG7ALG7BFE27', 1),
(0, 'AG7ALG7BFE27', 2),
(0, 'AG7ALG7BFE27', 3),
(0, 'AG7ALG5BCE27', 1),
(42, 'AG7ALG5BCE27', 2),
(0, 'AG7ALG5BCE27', 3),
(0, 'AG7ALG5BFE27', 1),
(0, 'AG7ALG5BFE27', 2),
(0, 'AG7ALG5BFE27', 3),
(22, 'AG7ALG18BCE27', 1),
(0, 'AG7ALG18BCE27', 2),
(63, 'AG7ALG18BCE27', 3),
(37, 'AG7ALG18BE27', 1),
(0, 'AG7ALG18BE27', 2),
(0, 'AG7ALG18BE27', 3),
(0, 'AG7ALG18BCB22', 1),
(0, 'AG7ALG18BCB22', 2),
(52, 'AG7ALG18BCB22', 3),
(27, 'AG7ALG18BB22', 1),
(0, 'AG7ALG18BB22', 2),
(56, 'AG7ALG18BB22', 3),
(0, 'AG7MLT450L', 1),
(0, 'AG7MLT450L', 2),
(62, 'AG7MLT450L', 3),
(42, 'AG7LFBC', 1),
(0, 'AG7LFBC', 2),
(0, 'AG7LFBC', 3),
(43, 'AG7PLE10BF', 1),
(8, 'AG7PLE10BF', 2),
(0, 'AG7PLE10BF', 3),
(10, 'AG7PLE30BF', 1),
(52, 'AG7PLE30BF', 2),
(59, 'AG7PLE30BF', 3),
(0, 'AG7PLE50BF', 1),
(47, 'AG7PLE50BF', 2),
(0, 'AG7PLE50BF', 3),
(0, 'AG7ALS4BFGU10', 1),
(137, 'AG7ALS4BFGU10', 2),
(69, 'AG7ALS4BFGU10', 3),
(0, 'AG7LT2000L', 1),
(122, 'AG7LT2000L', 2),
(52, 'AG7LT2000L', 3);

--
-- Déclencheurs `Etre_stocke`
--
DROP TRIGGER IF EXISTS `Verif_Qte_En_Stock_ETRE_STOCKE_AFTER_DELETE`;
DELIMITER //
CREATE TRIGGER `Verif_Qte_En_Stock_ETRE_STOCKE_AFTER_DELETE` AFTER DELETE ON `Etre_stocke`
 FOR EACH ROW BEGIN
	DECLARE Qte_reelle_dispo INT DEFAULT 0;

	DECLARE Ref_Prod VARCHAR(100);
	
	DECLARE Fin_Parcours_Produits TINYINT DEFAULT 0;
	
	DECLARE Cur_ListeRefProduit CURSOR
			FOR SELECT Reference_Produit
			FROM Produit;
	
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET Fin_Parcours_Produits = 1;
	
	IF NOT(OLD.Qte_stockee = 0) THEN
		OPEN Cur_ListeRefProduit;

		Parcours_Produits: LOOP
			FETCH Cur_ListeRefProduit INTO Ref_Prod;	
			
			IF (Fin_Parcours_Produits = 1) THEN
				LEAVE Parcours_Produits;
			END IF;
			
			IF (OLD.Reference_Produit = Ref_Prod) THEN
				SELECT SUM(Qte_stockee)
				INTO Qte_reelle_dispo
				FROM Etre_stocke
				WHERE Reference_Produit = Ref_Prod;
			END IF;		
			
		END LOOP;
		
		CLOSE Cur_ListeRefProduit;
			
		UPDATE Produit
		SET Qte_totale_en_stock = Qte_reelle_dispo
		WHERE Reference_Produit = OLD.Reference_Produit;
	END IF;
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `Verif_Qte_En_Stock_ETRE_STOCKE_AFTER_INSERT`;
DELIMITER //
CREATE TRIGGER `Verif_Qte_En_Stock_ETRE_STOCKE_AFTER_INSERT` AFTER INSERT ON `Etre_stocke`
 FOR EACH ROW BEGIN
	DECLARE Qte_reelle_dispo INT DEFAULT 0;

	DECLARE Ref_Prod VARCHAR(100);
	
	DECLARE Fin_Parcours_Produits TINYINT DEFAULT 0;
	
	DECLARE Cur_ListeRefProduit CURSOR
			FOR SELECT Reference_Produit
			FROM Produit;
	
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET Fin_Parcours_Produits = 1;
	
	IF NOT(NEW.Qte_stockee = 0) THEN
		OPEN Cur_ListeRefProduit;

		Parcours_Produits: LOOP
			FETCH Cur_ListeRefProduit INTO Ref_Prod;	
			
			IF (Fin_Parcours_Produits = 1) THEN
				LEAVE Parcours_Produits;
			END IF;
			
			IF (NEW.Reference_Produit = Ref_Prod) THEN
				SELECT SUM(Qte_stockee)
				INTO Qte_reelle_dispo
				FROM Etre_stocke
				WHERE Reference_Produit = Ref_Prod;
			END IF;		
			
		END LOOP;

		CLOSE Cur_ListeRefProduit;
			
		UPDATE Produit
		SET Qte_totale_en_stock = Qte_reelle_dispo
		WHERE Reference_Produit = NEW.Reference_Produit;
	END IF;
	
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `Verif_Qte_En_Stock_ETRE_STOCKE_AFTER_UPDATE`;
DELIMITER //
CREATE TRIGGER `Verif_Qte_En_Stock_ETRE_STOCKE_AFTER_UPDATE` AFTER UPDATE ON `Etre_stocke`
 FOR EACH ROW BEGIN
	DECLARE Qte_reelle_dispo INT DEFAULT 0;

	DECLARE Ref_Prod VARCHAR(100);
	
	DECLARE Fin_Parcours_Produits TINYINT DEFAULT 0;
	
	DECLARE Cur_ListeRefProduit CURSOR
			FOR SELECT Reference_Produit
			FROM Produit;
	
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET Fin_Parcours_Produits = 1;
	
		OPEN Cur_ListeRefProduit;

		Parcours_Produits: LOOP
			FETCH Cur_ListeRefProduit INTO Ref_Prod;	
			
			IF (Fin_Parcours_Produits = 1) THEN
				LEAVE Parcours_Produits;
			END IF;
			
			IF (NEW.Reference_Produit = Ref_Prod) THEN
				SELECT SUM(Qte_stockee)
				INTO Qte_reelle_dispo
				FROM Etre_stocke
				WHERE Reference_Produit = Ref_Prod;
			END IF;		
			
		END LOOP;
		
		CLOSE Cur_ListeRefProduit;
			
		UPDATE Produit
		SET Qte_totale_en_stock = Qte_reelle_dispo
		WHERE Reference_Produit = NEW.Reference_Produit;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `Point_de_stockage`
--

CREATE TABLE IF NOT EXISTS `Point_de_stockage` (
  `ID_Pt_Stock` int(11) NOT NULL AUTO_INCREMENT,
  `Num_Voie_Pt_Stock` int(11) NOT NULL,
  `Rue_Pt_Stock` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `CP_Pt_Stock` int(11) NOT NULL,
  `Ville_Pt_Stock` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`ID_Pt_Stock`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `Point_de_stockage`
--

INSERT INTO `Point_de_stockage` (`ID_Pt_Stock`, `Num_Voie_Pt_Stock`, `Rue_Pt_Stock`, `CP_Pt_Stock`, `Ville_Pt_Stock`) VALUES
(1, 12, 'Rue de la Paix', 34190, 'GANGES'),
(2, 37, 'Avenue du Paradis', 30260, 'QUISSAC'),
(3, 42, 'Rue Albert Einstein', 30250, 'SOMMIERES');

-- --------------------------------------------------------

--
-- Structure de la table `Produit`
--

CREATE TABLE IF NOT EXISTS `Produit` (
  `Reference_Produit` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `Libelle_Produit` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Prix_Vente_Produit_HT` float DEFAULT NULL,
  `Prix_Vente_Produit_TTC` float DEFAULT NULL,
  `Temps_de_livraison_moyen` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Qte_totale_en_stock` int(11) NOT NULL DEFAULT '0',
  `ID_Type_Produit` int(11) NOT NULL,
  PRIMARY KEY (`Reference_Produit`),
  KEY `FK_Produit_ID_Type_Produit` (`ID_Type_Produit`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Contenu de la table `Produit`
--

INSERT INTO `Produit` (`Reference_Produit`, `Libelle_Produit`, `Prix_Vente_Produit_HT`, `Prix_Vente_Produit_TTC`, `Temps_de_livraison_moyen`, `Qte_totale_en_stock`, `ID_Type_Produit`) VALUES
('AG7ALS4BFGU10', 'Spot à Led 4W blanc froid GU10', NULL, 5, NULL, 206, 1),
('AG7LT2000L', 'Lampe torche puissante 2000 lumens', NULL, 19.5, NULL, 174, 2),
('AG7ALG3BCE27', 'Globe à Led 3W blanc chaud E27', NULL, 4, NULL, 37, 1),
('AG7ALG15BCE27', 'Globe à Led 15W vis blanc chaud', NULL, 5, NULL, 27, 1),
('AG7ALG15BFE27', 'Globe à Led 15W vis blanc froid', NULL, 5, NULL, 117, 1),
('AG7ALG15BCB22', 'Globe à Led 15W Baïonnette blanc chaud', NULL, 5, NULL, 11, 1),
('AG7ALG15BFB22', 'Globe à Led 15W Baïonnette blanc froid', NULL, 5, NULL, 69, 1),
('AG7ALG3360BE27', 'Globe à Led 3W 360 blanc E27', NULL, 5, NULL, 134, 1),
('AG7ALG10BCE27', 'Globe à Led 10W blanc chaud E27', NULL, 5, NULL, 12, 1),
('AG7ALG10BFE27', 'Globe à Led 10W blanc froid E27', NULL, 5, NULL, 112, 1),
('AG7ALG7BCE27', 'Globe à Led 7W blanc chaud E27', NULL, 5, NULL, 0, 1),
('AG7ALG7BFE27', 'Globe à Led 7W blanc froid E27', NULL, 5, NULL, 53, 1),
('AG7ALG5BCE27', 'Globe à Led 5W blanc chaud E27', NULL, 5, NULL, 42, 1),
('AG7ALG5BFE27', 'Globe à Led 5W blanc froid E27', NULL, 5, NULL, 0, 1),
('AG7ALG18BCE27', 'Globe à Led 18W vis blanc chaud', NULL, 8, NULL, 85, 1),
('AG7ALG18BE27', 'Globe à Led 18W vis blanc', NULL, 8, NULL, 37, 1),
('AG7ALG18BCB22', 'Globe à Led 18W Baïonnette blanc chaud', NULL, 8, NULL, 52, 1),
('AG7ALG18BB22', 'Globe à Led 18W Baïonnette blanc', NULL, 8, NULL, 83, 1),
('AG7MLT450L', 'Mini lampe torche 450 lumens', NULL, 12.5, NULL, 62, 2),
('AG7LFBC', 'Lampe frontale', NULL, 19.5, NULL, 42, 2),
('AG7PLE10BF', 'Projecteur extérieur LED 10W', NULL, 21, NULL, 51, 3),
('AG7PLE30BF', 'Projecteur extérieur LED 30W', NULL, 39, NULL, 121, 3),
('AG7PLE50BF', 'Projecteur extérieur LED 50W', NULL, 59, NULL, 47, 3);

--
-- Déclencheurs `Produit`
--
DROP TRIGGER IF EXISTS `Creation_Nuplets_Dans_Etre_Stocke_PRODUIT_BEFORE_INSERT`;
DELIMITER //
CREATE TRIGGER `Creation_Nuplets_Dans_Etre_Stocke_PRODUIT_BEFORE_INSERT` BEFORE INSERT ON `Produit`
 FOR EACH ROW BEGIN
	INSERT INTO Etre_stocke VALUES (0, NEW.Reference_Produit, 1), (0, NEW.Reference_Produit, 2), (0, NEW.Reference_Produit, 3);
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `Type_Produit`
--

CREATE TABLE IF NOT EXISTS `Type_Produit` (
  `ID_Type_Produit` int(11) NOT NULL AUTO_INCREMENT,
  `Libelle_Type_Produit` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`ID_Type_Produit`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `Type_Produit`
--

INSERT INTO `Type_Produit` (`ID_Type_Produit`, `Libelle_Type_Produit`) VALUES
(1, 'Ampoule'),
(2, 'Torche'),
(3, 'Projecteur');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
