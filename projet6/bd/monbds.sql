-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Sam 24 Mars 2018 à 20:32
-- Version du serveur: 5.5.8
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `monbds`
--

-- --------------------------------------------------------

--
-- Structure de la table `academie`
--

CREATE TABLE IF NOT EXISTS `academie` (
  `id_academie` varchar(3) NOT NULL DEFAULT '',
  `academie` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id_academie`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `academie`
--

INSERT INTO `academie` (`id_academie`, `academie`) VALUES
('A24', 'CrÃ©teil'),
('A25', 'Versailles'),
('A32', 'Guadeloupe'),
('A28', 'La RÃ©union'),
('A23', 'Nice'),
('A02', 'Aix-Marseille'),
('A05', 'Caen'),
('A13', 'Poitiers'),
('A07', 'Dijon'),
('A03', 'BesanÃ§on'),
('A14', 'Rennes'),
('A11', 'Montpellier'),
('A16', 'Toulouse'),
('A04', 'Bordeaux'),
('A18', 'OrlÃ©ans-Tours'),
('A08', 'Grenoble'),
('A10', 'Lyon'),
('A17', 'Nantes'),
('A19', 'Reims'),
('A12', 'Nancy-Metz'),
('A09', 'Lille'),
('A15', 'Strasbourg'),
('A01', 'Paris'),
('A21', 'Rouen'),
('A20', 'Amiens'),
('A06', 'Clermont-Ferrand'),
('A22', 'Limoges'),
('A27', 'Corse');

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mot_passe` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `nom`, `prenom`, `email`, `mot_passe`) VALUES
(1, 'sow', 'Mamadou', 'sow@gmail.com', '123'),
(2, 'Bah', 'Ibrahima', 'bah@gmai.com', '1234');

-- --------------------------------------------------------

--
-- Structure de la table `appartient`
--

CREATE TABLE IF NOT EXISTS `appartient` (
  `id_domaine` varchar(100) NOT NULL,
  `id_discipline` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `appartient`
--

INSERT INTO `appartient` (`id_domaine`, `id_discipline`) VALUES
('STS', 'disc17'),
('DEG', 'disc01'),
('DEG', 'disc02'),
('DEG', 'disc05'),
('STS', 'disc15'),
('STS', 'disc12'),
('SHS', 'disc08'),
('DEG', 'disc03'),
('LLA', 'disc06'),
('SHS', 'disc07'),
('SHS', 'disc10'),
('SHS', 'disc11'),
('MEEF', 'disc19'),
('SHS', 'disc09'),
('STS', 'disc16'),
('MEEF', 'disc18'),
('DEG', 'disc04'),
('STS', 'disc14'),
('STS', 'disc13'),
('MEEF', 'disc20');

-- --------------------------------------------------------

--
-- Structure de la table `discipline`
--

CREATE TABLE IF NOT EXISTS `discipline` (
  `id_discipline` varchar(6) NOT NULL DEFAULT '',
  `discipline` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_discipline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `discipline`
--

INSERT INTO `discipline` (`id_discipline`, `discipline`) VALUES
('disc17', 'Autres sciences, technologies et santÃ©'),
('disc01', 'Ensemble formations juridiques, Ã©conomiques et de gestion'),
('disc02', 'Droit'),
('disc05', 'Autres formations juridiques, Ã©conomiques et de gestion'),
('disc15', 'Sciences de l''ingÃ©nieur'),
('disc12', 'Ensemble sciences, technologies et santÃ©'),
('disc08', 'Histoire-gÃ©ographie'),
('disc03', 'Ã‰conomie'),
('disc06', 'Lettres, langues, arts'),
('disc07', 'Ensemble sciences humaines et sociales'),
('disc10', 'Information communication'),
('disc11', 'Autres sciences humaines et sociales'),
('disc19', 'Masters enseignement : premier degrÃ©'),
('disc09', 'Psychologie'),
('disc16', 'Informatique'),
('disc18', 'Masters enseignement'),
('disc04', 'Gestion'),
('disc14', 'Sciences fondamentales'),
('disc13', 'Sciences de la vie et de la terre'),
('disc20', 'Masters enseignement : second degrÃ©, CPE...');

-- --------------------------------------------------------

--
-- Structure de la table `domaine`
--

CREATE TABLE IF NOT EXISTS `domaine` (
  `id_domaine` varchar(4) NOT NULL DEFAULT '',
  `domaine` varchar(34) DEFAULT NULL,
  PRIMARY KEY (`id_domaine`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `domaine`
--

INSERT INTO `domaine` (`id_domaine`, `domaine`) VALUES
('STS', 'Sciences, technologies et santÃ©'),
('DEG', 'Droit, Ã©conomie et gestion'),
('SHS', 'Sciences humaines et sociales'),
('LLA', 'Lettres, langues, arts'),
('MEEF', 'Masters enseignement');

-- --------------------------------------------------------

--
-- Structure de la table `enseignement`
--

CREATE TABLE IF NOT EXISTS `enseignement` (
  `id_etablissement` varchar(100) NOT NULL,
  `id_domaine` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `enseignement`
--

INSERT INTO `enseignement` (`id_etablissement`, `id_domaine`) VALUES
('0931238R', 'STS'),
('0931827F', 'DEG'),
('0951793H', 'DEG'),
('0951793H', 'STS'),
('9710585J', 'DEG'),
('9710585J', 'STS'),
('9740478B', 'SHS'),
('UNIV', 'DEG'),
('UNIV', 'LLA'),
('UNIV', 'SHS'),
('UNIV', 'STS'),
('0060931E', 'MEEF'),
('0060931E', 'DEG'),
('0060931E', 'SHS'),
('0134009M', 'LLA'),
('0134009M', 'SHS'),
('0134009M', 'STS'),
('0141408E', 'MEEF'),
('0141408E', 'DEG'),
('0141408E', 'SHS'),
('0141408E', 'STS'),
('0171463Y', 'MEEF'),
('0171463Y', 'DEG'),
('0134009M', 'DEG'),
('0171463Y', 'STS'),
('0211237F', 'SHS'),
('0251215K', 'DEG'),
('0251215K', 'SHS'),
('0251215K', 'STS'),
('0290346U', 'DEG'),
('0290346U', 'SHS'),
('0290346U', 'STS'),
('0301687W', 'DEG'),
('0301687W', 'SHS'),
('0301687W', 'STS'),
('0311382J', 'DEG'),
('0311383K', 'DEG'),
('0311383K', 'SHS'),
('0311384L', 'STS'),
('0332929E', 'DEG'),
('0341088Y', 'STS'),
('0341089Z', 'LLA'),
('0341089Z', 'SHS'),
('0350936C', 'DEG'),
('0350937D', 'LLA'),
('0350937D', 'SHS'),
('0350937D', 'STS'),
('0370800U', 'SHS'),
('0381838S', 'STS'),
('0381839T', 'DEG'),
('0381839T', 'SHS'),
('0421095M', 'DEG'),
('0421095M', 'STS'),
('0440984F', 'DEG'),
('0440984F', 'STS'),
('0450855K', 'DEG'),
('0450855K', 'SHS'),
('0490970N', 'LLA'),
('0490970N', 'SHS'),
('0490970N', 'STS'),
('0511296G', 'DEG'),
('0511296G', 'SHS'),
('0511296G', 'STS'),
('0542493S', 'DEG'),
('0561718N', 'DEG'),
('0593279U', 'SHS'),
('0593279U', 'STS'),
('0660437S', 'STS'),
('0673021V', 'MEEF'),
('0673021V', 'DEG'),
('0673021V', 'LLA'),
('0673021V', 'SHS'),
('0673021V', 'STS'),
('0681166Y', 'DEG'),
('0681166Y', 'LLA'),
('0681166Y', 'STS'),
('0691774D', 'DEG'),
('0691774D', 'SHS'),
('0691774D', 'STS'),
('0691775E', 'DEG'),
('0691775E', 'LLA'),
('0691775E', 'SHS'),
('0691775E', 'STS'),
('0692437Z', 'MEEF'),
('0692437Z', 'DEG'),
('0720916E', 'MEEF'),
('0720916E', 'DEG'),
('0720916E', 'SHS'),
('0720916E', 'STS'),
('0730858L', 'MEEF'),
('0730858L', 'DEG'),
('0730858L', 'SHS'),
('0730858L', 'STS'),
('0750736T', 'DEG'),
('0750736T', 'STS'),
('0751717J', 'DEG'),
('0751717J', 'SHS'),
('0751717J', 'STS'),
('0751718K', 'DEG'),
('0751718K', 'SHS'),
('0751719L', 'SHS'),
('0751720M', 'SHS'),
('0751721N', 'DEG'),
('0751721N', 'SHS'),
('0751721N', 'STS'),
('0751722P', 'DEG'),
('0751722P', 'STS'),
('0751723R', 'SHS'),
('0761904G', 'SHS'),
('0761904G', 'STS'),
('0762762P', 'LLA'),
('0762762P', 'STS'),
('0772502B', 'DEG'),
('0772502B', 'SHS'),
('0772502B', 'STS'),
('0781944P', 'MEEF'),
('0781944P', 'DEG'),
('0781944P', 'STS'),
('0801344B', 'DEG'),
('0311384L', 'DEG'),
('0311384L', 'SHS'),
('0331766R', 'LLA'),
('0333298F', 'MEEF'),
('0333298F', 'DEG'),
('0333298F', 'SHS'),
('0333298F', 'STS'),
('0341089Z', 'DEG'),
('0342321N', 'DEG'),
('0342321N', 'STS'),
('0350936C', 'SHS'),
('0350936C', 'STS'),
('0350937D', 'MEEF'),
('0370800U', 'DEG'),
('0370800U', 'LLA'),
('0370800U', 'STS'),
('0383493R', 'DEG'),
('0383493R', 'LLA'),
('0383493R', 'SHS'),
('0383493R', 'STS'),
('0421095M', 'LLA'),
('0421095M', 'SHS'),
('0440984F', 'SHS'),
('0450855K', 'STS'),
('0490970N', 'MEEF'),
('0490970N', 'DEG'),
('0542493S', 'SHS'),
('0542493S', 'STS'),
('0561718N', 'MEEF'),
('0561718N', 'STS'),
('0593279U', 'DEG'),
('0593279U', 'LLA'),
('0593559Y', 'MEEF'),
('0593559Y', 'DEG'),
('0593559Y', 'SHS'),
('0593559Y', 'STS'),
('0593560Z', 'DEG'),
('0593561A', 'MEEF'),
('0593561A', 'DEG'),
('0593561A', 'LLA'),
('0060931E', 'LLA'),
('0060931E', 'STS'),
('0101060Y', 'STS'),
('0134009M', 'MEEF'),
('0171463Y', 'LLA'),
('0171463Y', 'SHS'),
('0211237F', 'DEG'),
('0211237F', 'LLA'),
('0211237F', 'STS'),
('0251215K', 'LLA'),
('0301687W', 'LLA'),
('0311382J', 'STS'),
('0311383K', 'LLA'),
('0311383K', 'STS'),
('0311384L', 'MEEF'),
('0331766R', 'SHS'),
('0331766R', 'STS'),
('0341089Z', 'MEEF'),
('0342321N', 'MEEF'),
('0342321N', 'SHS'),
('0350937D', 'DEG'),
('0370800U', 'MEEF'),
('UNIV', 'MEEF'),
('0141408E', 'LLA'),
('0350936C', 'MEEF'),
('0593561A', 'SHS'),
('0595964M', 'DEG'),
('0595964M', 'STS'),
('0623957P', 'STS'),
('0631525R', 'SHS'),
('0640251A', 'DEG'),
('0640251A', 'LLA'),
('0640251A', 'SHS'),
('0640251A', 'STS'),
('0660437S', 'DEG'),
('0681166Y', 'SHS'),
('0751723R', 'STS'),
('0762762P', 'DEG'),
('0781944P', 'SHS'),
('0801344B', 'STS'),
('0811293R', 'SHS'),
('0860856N', 'LLA'),
('0860856N', 'STS'),
('0870669E', 'STS'),
('0911101C', 'DEG'),
('0911975C', 'DEG'),
('0911975C', 'STS'),
('0921204J', 'DEG'),
('0921204J', 'STS'),
('0931238R', 'DEG'),
('0931238R', 'SHS'),
('0801344B', 'SHS'),
('0811293R', 'STS'),
('0830766G', 'DEG'),
('0830766G', 'LLA'),
('0830766G', 'SHS'),
('0840685N', 'MEEF'),
('0840685N', 'DEG'),
('0840685N', 'LLA'),
('0860856N', 'DEG'),
('0860856N', 'SHS'),
('0870669E', 'MEEF'),
('0870669E', 'DEG'),
('0870669E', 'SHS'),
('0911101C', 'STS'),
('0911975C', 'SHS'),
('0921204J', 'MEEF'),
('0921204J', 'LLA'),
('0921204J', 'SHS'),
('0931827F', 'STS'),
('0941111X', 'DEG'),
('0941111X', 'SHS'),
('0941111X', 'STS'),
('0951793H', 'MEEF'),
('0951793H', 'LLA'),
('0951793H', 'SHS'),
('7200664J', 'MEEF'),
('7200664J', 'DEG'),
('7200664J', 'SHS'),
('7200664J', 'STS'),
('9710585J', 'SHS'),
('9740478B', 'DEG'),
('9740478B', 'LLA'),
('9740478B', 'STS'),
('0593561A', 'STS'),
('0595964M', 'MEEF'),
('0595964M', 'LLA'),
('0595964M', 'SHS'),
('0623957P', 'MEEF'),
('0623957P', 'DEG'),
('0623957P', 'LLA'),
('0623957P', 'SHS'),
('0631262E', 'DEG'),
('0631262E', 'STS'),
('0631525R', 'DEG'),
('0631525R', 'STS'),
('0660437S', 'SHS'),
('0681166Y', 'MEEF'),
('0691774D', 'MEEF'),
('0691775E', 'MEEF'),
('0692437Z', 'LLA'),
('0692437Z', 'SHS'),
('0421095M', 'MEEF'),
('0450855K', 'LLA'),
('0542493S', 'LLA'),
('0561718N', 'SHS'),
('0593279U', 'MEEF'),
('0593560Z', 'MEEF'),
('0593560Z', 'STS'),
('0331764N', 'DEG'),
('0331764N', 'SHS'),
('0331765P', 'SHS'),
('0341087X', 'DEG'),
('0341087X', 'STS'),
('0341088Y', 'SHS'),
('0381840U', 'SHS'),
('0660437S', 'LLA'),
('0290346U', 'LLA'),
('0311382J', 'MEEF'),
('0383493R', 'MEEF'),
('0440984F', 'MEEF'),
('0450855K', 'MEEF'),
('0511296G', 'MEEF'),
('0211237F', 'MEEF'),
('0251215K', 'MEEF'),
('0311382J', 'SHS'),
('0440984F', 'LLA'),
('0561718N', 'LLA'),
('0751720M', 'MEEF'),
('0751720M', 'LLA'),
('0751721N', 'MEEF'),
('0751722P', 'MEEF'),
('0751723R', 'MEEF'),
('0761904G', 'DEG'),
('0761904G', 'LLA'),
('0762762P', 'SHS'),
('0772502B', 'MEEF'),
('0772502B', 'LLA'),
('0801344B', 'MEEF'),
('0801344B', 'LLA'),
('0830766G', 'MEEF'),
('0840685N', 'SHS'),
('0840685N', 'STS'),
('0911101C', 'SHS'),
('0631262E', 'SHS'),
('0870669E', 'LLA'),
('0900424X', 'STS'),
('0911975C', 'LLA'),
('0931238R', 'LLA'),
('0931827F', 'SHS'),
('0941111X', 'LLA'),
('7200664J', 'LLA'),
('0751717J', 'LLA'),
('0830766G', 'STS'),
('0381838S', 'DEG'),
('0511296G', 'LLA'),
('0542493S', 'MEEF'),
('0631525R', 'MEEF'),
('0631525R', 'LLA'),
('0640251A', 'MEEF'),
('9710585J', 'LLA'),
('0931238R', 'MEEF'),
('0911101C', 'MEEF'),
('0720916E', 'LLA'),
('0730858L', 'LLA'),
('0751719L', 'LLA'),
('0660437S', 'MEEF'),
('0911975C', 'MEEF'),
('9710585J', 'MEEF'),
('0101060Y', 'SHS'),
('0632035V', 'DEG'),
('0632035V', 'SHS'),
('0632035V', 'STS'),
('9740478B', 'MEEF'),
('0632035V', 'LLA'),
('0751721N', 'LLA'),
('0751723R', 'LLA'),
('0311383K', 'MEEF'),
('0290346U', 'MEEF'),
('0331764N', 'STS'),
('0331765P', 'STS'),
('0341088Y', 'DEG'),
('0381838S', 'SHS'),
('0931827F', 'LLA'),
('0941111X', 'MEEF'),
('0381840U', 'LLA'),
('0761904G', 'MEEF'),
('0781944P', 'LLA'),
('0341088Y', 'MEEF'),
('0381838S', 'MEEF'),
('0381839T', 'MEEF'),
('0341087X', 'MEEF'),
('0751717J', 'MEEF'),
('0762762P', 'MEEF'),
('0860856N', 'MEEF'),
('0381839T', 'STS'),
('0811293R', 'DEG'),
('0381840U', 'MEEF'),
('0750736T', 'SHS');

-- --------------------------------------------------------

--
-- Structure de la table `etablissement`
--

CREATE TABLE IF NOT EXISTS `etablissement` (
  `id_etablissement` varchar(8) NOT NULL DEFAULT '',
  `etablissement` varchar(60) DEFAULT NULL,
  `adresse` varchar(172) DEFAULT NULL,
  `telephone` varchar(17) DEFAULT NULL,
  `id_academie` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_etablissement`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `etablissement`
--

INSERT INTO `etablissement` (`id_etablissement`, `etablissement`, `adresse`, `telephone`, `id_academie`) VALUES
('0931238R', 'Paris 13 - Paris Nord', '99 Avenue Jean Baptiste Clement, 93430 Villetaneuse', ' 01 49 40 30 00', 'A01'),
('0931827F', 'Paris 8 - Vincennes Saint-Denis', '2 Rue de la Liberte, 93526 Saint-Denis', '01 49 40 67 89', 'A01'),
('0951793H', 'Cergy-Pontoise', '33 Boulevard du Port, 95000 Cergy-Pontoise', '01 34 25 60 00', 'A25'),
('9710585J', 'Antilles et Guyane', 'Pointe-a-Pitre, Guadeloupe', ' 0590 590 48-3030', 'A32'),
('9740478B', 'La RÃ©union', 'Pole Entrepreuneuriat Etudiant de la Reunion, Universite de La Reunion Site du CS 92003 97744 Cedex9, 97715,, 15 Avenue Renï¿½ Cassin, Sainte-Clotilde 97715, La Rï¿½union', '0262 262 93 80 80', 'A28'),
('UNIV', 'Toutes universitÃ©s et Ã©tablissements assimilÃ©s', NULL, NULL, NULL),
('0060931E', 'Nice - Sophia-Antipolis', ' 28 Avenue Valrose, 06100 Nice', '04 92 07 69 96', 'A23'),
('0134009M', 'Aix-Marseille', 'Jardin du Pharo, 58 Boulevard Charles Livon, 13007 Marseille', '04 91 39 65 00', 'A02'),
('0141408E', 'Caen - Basse-Normandie', 'Espl. de la Paix, 14032 Caen', '02 31 56 55 00', 'A05'),
('0171463Y', 'La Rochelle', '23 Avenue Albert Einstein, 17000 La Rochelle', '05 46 45 91 14', 'A13'),
('0211237F', 'Dijon - Bourgogne', 'Maison de l''université, Esplanade Erasme, 21078 Dijon', '03 80 39 50 00', 'A07'),
('0251215K', 'BesanÃ§on - Franche-ComtÃ©', '1 Rue Claude Goudimel, 25030 Besançon', '03 81 66 66 66', 'A03'),
('0290346U', 'Brest - Bretagne occidentale', '3 Rue des Archives, 29238 Brest', '02 98 01 60 00', 'A14'),
('0301687W', 'Nimes', '5 Rue du Dr Georges Salan, 30000 Nîmes', '04 66 36 46 46', 'A11'),
('0311382J', 'Toulouse 1 - Capitole', '2 Rue du Doyen-Gabriel-Marty, 31042 Toulouse', ' 05 61 63 35 00', 'A16'),
('0311383K', 'Toulouse - Jean Jaures', '31058, 5 Allée Antonio Machado, 31100 Toulouse', '05 61 50 42 50', 'A16'),
('0311384L', 'Toulouse 3 - Paul Sabatier', '118 Route de Narbonne, 31062 Toulouse', '05 61 55 66 11', 'A16'),
('0332929E', 'Bordeaux 4 - Montesquieu', '6 Avenue Léon Duguit, 33600 Pessac', '05 56 84 85 86', 'A04'),
('0341088Y', 'Montpellier 2 - Sciences techniques du Languedoc', 'Faculté des Sciences de Montpellier, Place E. Bataillon, 34095 Montpellier', '04 67 14 36 76', 'A11'),
('0341089Z', 'Montpellier 3 - Paul-ValÃ©ry', 'Route de Mende, 34090 Montpellier', '04 67 14 20 00', 'A11'),
('0350936C', 'Rennes 1', 'Rue du Thabor, 35000 Rennes', '02 23 23 36 36', 'A14'),
('0350937D', 'Rennes 2 - Haute Bretagne', 'Place Recteur Henri le Moal, 35000 Rennes', '02 99 14 10 00', 'A14'),
('0370800U', 'Tours - FranÃ§ois Rabelais', '60 Rue du Plat d''Étain, 37000 Tours', '02 47 36 66 00', 'A18'),
('0381838S', 'Grenoble 1 - Joseph Fourier', ' 621 Avenue Centrale, 38400 Saint-Martin-d''Heres', '04 57 42 21 42', 'A08'),
('0381839T', 'Grenoble 2 - Pierre MendÃ¨s France', '621 Avenue Centrale, 38400 Saint-Martin-d''Hères', '04 57 42 21 42', 'A08'),
('0421095M', 'Saint-Etienne - Jean Monnet', '10 Rue Tréfilerie, 42100 Saint-Étienne', '04 77 42 17 00', 'A10'),
('0440984F', 'Nantes', '1 Quai de Tourville, 44035 Nantes', '02 40 99 83 83', 'A17'),
('0450855K', 'OrlÃ©ans', ' 6 Avenue du Parc Floral, 45100 Orléans', '02 38 41 71 71', 'A18'),
('0490970N', 'Angers', '40 Rue de Rennes, 49035 Angers', ' 02 41 96 23 23', 'A17'),
('0511296G', 'Reims - Champagne Ardenne', '9 Boulevard de la Paix, 51100 Reims', '03 26 91 30 00', 'A19'),
('0542493S', 'Lorraine', '34 cours Léopold CS 25233 54052 Nancy cedex ', '03 72 74 00 00', 'A12'),
('0561718N', 'Bretagne-Sud', 'Rue André Lwoff, 56000 Vannes', '02 97 01 26 00', 'A14'),
('0593279U', 'Valenciennes - Hainaut-CambrÃ©sis', 'Voirie Communale Université Val Mont Houy, 59300 Famars', '03 27 51 12 34', 'A09'),
('0660437S', 'Perpignan', '52 Av. Paul Alduy, 66100 Perpignan', '04 68 66 20 00', 'A11'),
('0673021V', 'Strasbourg', '4 Rue Blaise Pascal, 67081 Strasbourg', '03 68 85 00 00', 'A15'),
('0681166Y', 'Mulhouse - Haute Alsace', '2 Rue des Frères Lumière, 68100 Mulhouse', '03 89 33 60 00', 'A15'),
('0691774D', 'Lyon 1 - Claude Bernard', '43 Boulevard du 11 Novembre 1918, 69100 Villeurbanne', '04 72 44 80 00', 'A10'),
('0691775E', 'Lyon 2 - LumiÃ¨re', ' 86 Rue Pasteur, 69007 Lyon', ' 04 78 69 70 00', 'A10'),
('0692437Z', 'Lyon 3 - Jean Moulin', '6 Cours Albert Thomas, 69008 Lyon', ' 04 78 78 78 78', 'A10'),
('0720916E', 'Le Mans UniversitÃ©', 'Avenue Olivier Messiaen, 72085 Le Mans', '02 43 83 30 00', 'A17'),
('0730858L', 'ChambÃ©ry - Savoie', '27 Rue Marcoz, 73000 Chambéry', ' 04 79 75 85 85', 'A08'),
('0750736T', 'Paris - Dauphine', 'Place du Maréchal de Lattre de Tassigny, 75016 Paris', ' 01 44 05 44 05', 'A01'),
('0751717J', 'Paris 1 - PanthÃ©on Sorbonne', '75005 Paris', ' 01 44 07 80 00', 'A01'),
('0751718K', 'Paris 2 - PanthÃ©on Assas', ' 75006 Paris', ' 01 44 41 57 00', 'A01'),
('0751719L', 'Paris 3 - Sorbonne Nouvelle', '75005 Paris', ' 01 45 87 40 00', 'A01'),
('0751720M', 'Paris 4 - Sorbonne', '75005 Paris', '01 40 46 22 11', 'A01'),
('0751721N', 'Paris RenÃ© Descartes', '12 Rue de l''École de Médecine, 75006 Paris', ' 01 76 53 16 16', 'A01'),
('0751722P', 'Paris Pierre et Marie Curie', '4 Place Jussieu, 75005 Paris', ' 01 44 27 44 27', 'A01'),
('0751723R', 'Paris 7 - Denis Diderot', '5 Rue Thomas Mann, 75013 Paris', ' 01 57 27 57 27', 'A01'),
('0761904G', 'Rouen', 'Place Emile Blondel, 76130 Mont-Saint-Aignan', '02 35 14 60 00', 'A21'),
('0762762P', 'Le Havre', '25 Rue Philippe Lebon, 76600 Le Havre', ' 02 32 74 40 00', 'A21'),
('0772502B', 'Paris-Est Marne-la-VallÃ©e', '5 Boulevard Descartes, 77420 Champs-sur-Marne', '01 60 95 75 00', 'A24'),
('0781944P', 'Versailles Saint-Quentin-en-Yvelines', '55 Avenue de Paris, 78000 Versailles', ' 01 39 25 78 00', 'A25'),
('0801344B', 'Amiens - Picardie Jules-Verne', 'CS 52501 80025 Cedex, Chemin du Thil, 80025 Amiens', '03 22 82 72 72', 'A20'),
('0331766R', 'Bordeaux - Montaigne', 'Domaine Universitaire, 19 esplanade des Antilles, 33607 Pessac', '05 57 12 44 44', 'A04'),
('0333298F', 'Bordeaux', '146 Rue Léo Saignat, 33000 Bordeaux', '05 57 81 76 07', 'A04'),
('0342321N', 'Montpellier', '641 Av. du Doyen Gaston Giraud, 34000 Montpellier', ' 04 67 79 78 55', 'A11'),
('0383493R', 'Grenoble Alpes', '621 Avenue Centrale, 38400 Saint-Martin-d''Hères', '04 57 42 21 42', 'A08'),
('0593559Y', 'Lille 1 - Sciences technologies', 'Cité Scientifique, 59650 Villeneuve-d''Ascq', '03 20 43 43 43', 'A09'),
('0593560Z', 'Lille 2 - Droit et santÃ©', '42 Rue Paul Duez, 59000 Lille', ' 03 20 96 43 43', 'A09'),
('0593561A', 'Lille 3 - Charles-de-Gaulle', 'Domaine Universitaire du Pont de Bois, 59650 Villeneuve-d''Ascq', ' 03 20 41 60 00', 'A09'),
('0101060Y', 'UniversitÃ© de technologie de Troyes', '12 Rue Marie Curie, 10300 Troyes', ' 03 25 71 76 00', 'A19'),
('0595964M', 'Littoral - CÃ´te d''Opale', 'Avenue René Descartes, 62219 Longuenesse', '03 21 38 87 00', 'A09'),
('0623957P', 'Artois', '9 Rue du Temple, 62000 Arras', ' 03 21 60 37 00', 'A09'),
('0631525R', 'Clermont-Ferrand 2 - Blaise Pascal', '25 Rue Etienne Dolet, 63000 Clermont-Ferrand', '04 73 34 97 20', 'A06'),
('0640251A', 'Pau - Pays de l''Adour', 'Avenue de l''Université, 64012 Pau', '05 59 40 70 00', 'A04'),
('0811293R', 'Institut national universitaire Jean-FranÃ§ois Champollion', 'Place de Verdun, 81000 Albi', ' 05 63 48 17 17', 'A16'),
('0860856N', 'Poitiers', '15 Rue de l''Hôtel Dieu, 86000 Poitiers', ' 05 49 45 30 00', 'A13'),
('0870669E', 'Limoges', 'Campus Vanteaux 39E rue Camille-guérin, 87036 Limoges', '05 55 43 56 00', 'A22'),
('0911101C', 'Paris 11 - Paris Sud', '15 Rue Georges Clemenceau, 91400 Orsay', ' 01 69 15 67 50', 'A25'),
('0911975C', 'Evry Val-d''Essonne', ' 23 Boulevard François Mitterrand, 91000 Évry', '01 69 47 70 00', 'A25'),
('0921204J', 'Paris Ouest Nanterre La DÃ©fense', '200 Avenue de la République, 92000 Nanterre', '01 40 97 72 00', 'A25'),
('0830766G', 'Toulon - Sud Toulon Var', 'Avenue de l''Université, 83957 La Garde', ' 04 94 14 20 00', 'A23'),
('0840685N', 'Avignon', '74 Rue Louis Pasteur, 84029 Avignon', ' 04 90 16 25 00', 'A02'),
('0941111X', 'Paris-Est CrÃ©teil', '61 Avenue du Général de Gaulle, 94000 Créteil', '01 45 17 10 00', 'A24'),
('7200664J', 'Corse - Pasquale Paoli', '7 Avenue Jean Nicoli, 20250 Corte', ' 04 95 45 00 00', 'A27'),
('0631262E', 'Clermont-Ferrand 1 - Auvergne', '49 Boulevard François Mitterrand, 63000 Clermont-Ferrand', ' 04 73 17 79 79', 'A06'),
('0331764N', 'Bordeaux 1 - Sciences technologies', '351 Cours de la Libération, 33400 Talence', ' 05 40 00 60 00', 'A04'),
('0331765P', 'Bordeaux 2 - Victor Segalen', '146 Rue Léo Saignat, 33000 Bordeaux', '05 57 81 76 07', 'A04'),
('0341087X', 'Montpellier 1', '2 Rue de l''École de Médecine, 34090 Montpellier', '04 34 43 35 00', 'A11'),
('0381840U', 'Grenoble 3 - Stendhal', '621 Avenue Centrale, 38400 Saint-Martin-d''Hères', ' 04 57 42 21 42', 'A08'),
('0900424X', 'UniversitÃ© de technologie de Belfort-MontbÃ©liard', '19 Avenue du Maréchal Juin, 90016 Belfort', '03 84 58 77 00', 'A03'),
('0632035V', 'Clermont Auvergne', '49 Boulevard François Mitterrand, 63000 Clermont-Ferrand', ' 04 73 17 79 79', 'A06');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE IF NOT EXISTS `etudiant` (
  `id_etudiant` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `phone` int(50) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mot_passe` varchar(100) NOT NULL,
  PRIMARY KEY (`id_etudiant`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`id_etudiant`, `nom`, `prenom`, `phone`, `adresse`, `email`, `mot_passe`) VALUES
(1, 'barry', 'mous', 12364589, 'hguh', 'oury@gmail.com', '123'),
(2, 'barry', 'abdoulaye', 604530213, 'sup-agro', 'barry@gmail.com', '123');

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE IF NOT EXISTS `inscription` (
  `id_ins` int(11) NOT NULL AUTO_INCREMENT,
  `id_etablissement` varchar(100) NOT NULL,
  `id_etudiant` int(11) NOT NULL,
  `id_domaine` varchar(100) NOT NULL,
  PRIMARY KEY (`id_ins`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `inscription`
--

INSERT INTO `inscription` (`id_ins`, `id_etablissement`, `id_etudiant`, `id_domaine`) VALUES
(2, '0060931E', 1, 'DEG'),
(7, '0134009M', 2, 'STS');
