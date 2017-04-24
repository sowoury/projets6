-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Lun 24 Avril 2017 à 07:07
-- Version du serveur: 5.5.8
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `gestionetab`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE IF NOT EXISTS `administrateur` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nom_adm` text,
  `email` text,
  `peseudo` text,
  `mot_passe` text,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `administrateur`
--

INSERT INTO `administrateur` (`id_admin`, `nom_adm`, `email`, `peseudo`, `mot_passe`) VALUES
(1, 'Sow Mamadou', 'sow@gmail.com', 'sow', '123456'),
(2, 'Diallo Alpha', 'diallo@gmail.com', 'diallo', '123456'),
(3, 'Bah Ibrahima', 'bah@gmail.com', 'bah', '123'),
(4, 'Camara Mory', 'camara@gmail.com', 'camara', '123'),
(5, 'Idrisse Roudmane', 'roudmane@gmail.com', 'idriss', '123456');

-- --------------------------------------------------------

--
-- Structure de la table `appartien`
--

CREATE TABLE IF NOT EXISTS `appartien` (
  `id_association` varchar(25) NOT NULL,
  `id_etab` varchar(25) NOT NULL,
  PRIMARY KEY (`id_association`,`id_etab`),
  KEY `FK_appartien_id_etab` (`id_etab`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `appartien`
--


-- --------------------------------------------------------

--
-- Structure de la table `association`
--

CREATE TABLE IF NOT EXISTS `association` (
  `id_association` varchar(25) NOT NULL,
  `nom` text,
  PRIMARY KEY (`id_association`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `association`
--

INSERT INTO `association` (`id_association`, `nom`) VALUES
('0101060Y', 'Universite de technologie de Troyes'),
('0141408E', 'Universite de Caen Basse-Normandie'),
('0333298F', 'Universite de Bordeaux'),
('0691774D', 'Universite Claude Bernard - Lyon 1'),
('0772710C', 'Universite Paris-Est'),
('1235633P', 'Universite Paris-1');

-- --------------------------------------------------------

--
-- Structure de la table `choisi`
--

CREATE TABLE IF NOT EXISTS `choisi` (
  `id_utilisateur` int(11) NOT NULL,
  `id_etab` varchar(25) NOT NULL,
  PRIMARY KEY (`id_utilisateur`,`id_etab`),
  KEY `FK_choisi_id_etab` (`id_etab`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `choisi`
--

INSERT INTO `choisi` (`id_utilisateur`, `id_etab`) VALUES
(1, '0'),
(1, '0130221V'),
(1, '0301687W');

-- --------------------------------------------------------

--
-- Structure de la table `commune`
--

CREATE TABLE IF NOT EXISTS `commune` (
  `id_com` varchar(25) NOT NULL,
  `nom_com` text,
  `id_depar` varchar(25) NOT NULL,
  PRIMARY KEY (`id_com`),
  KEY `FK_commune_id_depar` (`id_depar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commune`
--

INSERT INTO `commune` (`id_com`, `nom_com`, `id_depar`) VALUES
('0', 'Rome', 'D999'),
('10387', 'Troyes', 'D010'),
('13001', 'Aix-en-Provence', 'D013'),
('13207', 'Marseille 7e', 'D013'),
('13213', 'Marseille 13e', 'D013'),
('14118', 'Caen', 'D014'),
('14242', 'Epron', 'D014'),
('17300', 'La Rochelle', 'D017'),
('21231', 'Dijon', 'D021'),
('25056', 'Besançon', 'D025'),
('29019', 'Brest', 'D029'),
('2B096', 'Corte', 'D02B'),
('30189', 'Nimes', 'D030'),
('31555', 'Toulouse', 'D031'),
('32013', 'Auch', 'D032'),
('33063', 'Bordeaux', 'D033'),
('33318', 'Pessac', 'D033'),
('33522', 'Talence', 'D033'),
('34172', 'Montpellier', 'D034'),
('35047', 'Bruz', 'D035'),
('35238', 'Rennes', 'D035'),
('37261', 'Tours', 'D037'),
('38185', 'Grenoble', 'D038'),
('38421', 'Saint-Martin-d''Heres', 'D038'),
('41018', 'Blois', 'D041'),
('42218', 'Saint-etienne', 'D042'),
('44109', 'Nantes', 'D044'),
('45234', 'Orleans', 'D045'),
('49007', 'Angers', 'D049'),
('49267', 'Saint-Barthélemy-d''Anjou', 'D049'),
('51454', 'Reims', 'D051'),
('54395', 'Nancy', 'D054'),
('56121', 'Lorient', 'D056'),
('59009', 'Villeneuve-d''Ascq', 'D059'),
('59032', 'Aulnoy-lez-Valenciennes', 'D059'),
('59183', 'Dunkerque', 'D059'),
('59350', 'Lille', 'D059'),
('59512', 'Roubaix', 'D059'),
('60057', 'Beauvais', 'D060'),
('60159', 'Compiegne', 'D060'),
('6088', 'Nice', 'D006'),
('62041', 'Arras', 'D062'),
('63014', 'Aubiere', 'D063'),
('63113', 'Clermont-Ferrand', 'D063'),
('64102', 'Bayonne', 'D064'),
('64445', 'Pau', 'D064'),
('65440', 'Tarbes', 'D065'),
('66136', 'Perpignan', 'D066'),
('67482', 'Strasbourg', 'D067'),
('68224', 'Mulhouse', 'D068'),
('69081', 'Ecully', 'D069'),
('69127', 'Marcy-l''etoile', 'D069'),
('69256', 'Vaulx-en-Velin', 'D069'),
('69266', 'Villeurbanne', 'D069'),
('69382', 'Lyon 2e', 'D069'),
('69385', 'Lyon 5e', 'D069'),
('69387', 'Lyon 7e', 'D069'),
('72181', 'Le Mans', 'D072'),
('73065', 'Chambery', 'D073'),
('75102', 'Paris 2e', 'D075'),
('75103', 'Paris 3e', 'D075'),
('75104', 'Paris 4e', 'D075'),
('75105', 'Paris 5e', 'D075'),
('75106', 'Paris 6e', 'D075'),
('75107', 'Paris 7e', 'D075'),
('75112', 'Paris 12e', 'D075'),
('75113', 'Paris 13e', 'D075'),
('75114', 'Paris 14e', 'D075'),
('75116', 'Paris 16e', 'D075'),
('75117', 'Paris 17e', 'D075'),
('75119', 'Paris 19e', 'D075'),
('76351', 'Le Havre', 'D076'),
('76451', 'Mont-Saint-Aignan', 'D076'),
('76575', 'Saint-etienne-du-Rouvray', 'D076'),
('77083', 'Champs-sur-Marne', 'D077'),
('78423', 'Montigny-le-Bretonneux', 'D078'),
('78646', 'Versailles', 'D078'),
('80021', 'Amiens', 'D080'),
('81004', 'Albi', 'D081'),
('83062', 'La Garde', 'D083'),
('83137', 'Toulon', 'D083'),
('84007', 'Avignon', 'D084'),
('85191', 'La Roche-sur-Yon', 'D085'),
('86062', 'Chasseneuil-du-Poitou', 'D086'),
('86194', 'Poitiers', 'D086'),
('87085', 'Limoges', 'D087'),
('90094', 'Sevenans', 'D090'),
('91228', 'Evry', 'D091'),
('91272', 'Gif-sur-Yvette', 'D091'),
('91471', 'Orsay', 'D091'),
('91477', 'Palaiseau', 'D091'),
('91538', 'Saint-Aubin', 'D091'),
('92050', 'Nanterre', 'D092'),
('92071', 'Sceaux', 'D092'),
('92073', 'Suresnes', 'D092'),
('93051', 'Noisy-le-Grand', 'D093'),
('93066', 'Saint-Denis', 'D093'),
('93070', 'Saint-Ouen', 'D093'),
('93079', 'Villetaneuse', 'D093'),
('94016', 'Cachan', 'D094'),
('94028', 'Creteil', 'D094'),
('94046', 'Maisons-Alfort', 'D094'),
('94076', 'Villejuif', 'D094'),
('95127', 'Cergy', 'D095'),
('97120', 'Pointe-à -Pitre', 'D971'),
('97302', 'Cayenne', 'D973'),
('97411', 'Saint-Denis', 'D974'),
('97607', 'Dembeni', 'D976'),
('98738', 'Punaauia', 'D987'),
('98818', 'Nouméa', 'D988'),
('99134', 'Madrid', 'D999');

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE IF NOT EXISTS `departement` (
  `id_depar` varchar(25) NOT NULL,
  `nom_depar` text NOT NULL,
  `id_reg` varchar(25) NOT NULL,
  PRIMARY KEY (`id_depar`),
  KEY `FK_departement_id_reg` (`id_reg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `departement`
--

INSERT INTO `departement` (`id_depar`, `nom_depar`, `id_reg`) VALUES
('D006', 'Alpes-Maritimes', 'R93'),
('D010', 'Aube', 'R44'),
('D013', 'Bouches-du-Rhone', 'R93'),
('D014', 'Calvados', 'R28'),
('D017', 'Charente-Maritime', 'R75'),
('D021', 'Cote-d''Or', 'R27'),
('D025', 'Doubs', 'R27'),
('D029', 'Finistere', 'R53'),
('D02B', 'Haute-Corse', 'R94'),
('D030', 'Gard', 'R76'),
('D031', 'Haute-Garonne', 'R76'),
('D032', 'Gers', 'R34'),
('D033', 'Gironde', 'R75'),
('D034', 'Herault', 'R76'),
('D035', 'Ille-et-Vilaine', 'R53'),
('D037', 'Indre-et-Loire', 'R24'),
('D038', 'Isére', 'R84'),
('D041', 'Loir-et-Cher', 'R24'),
('D042', 'Loire', 'R84'),
('D044', 'Loire-Atlantique', 'R52'),
('D045', 'Loiret', 'R24'),
('D049', 'Maine-et-Loire', 'R52'),
('D051', 'Marne', 'R44'),
('D054', 'Meurthe-et-Moselle', 'R44'),
('D056', 'Morbihan', 'R53'),
('D059', 'Nord', 'R32'),
('D060', 'Oise', 'R32'),
('D062', 'Pas-de-Calais', 'R32'),
('D063', 'Puy-de-Dome', 'R84'),
('D064', 'Pyrénées-Atlantiques', 'R75'),
('D065', 'Hautes-Pyrenées', 'R76'),
('D066', 'Pyrénées-Orientales', 'R76'),
('D067', 'Bas-Rhin', 'R44'),
('D068', 'Haut-Rhin', 'R44'),
('D069', 'Rhone', 'R84'),
('D072', 'Sarthe', 'R52'),
('D073', 'Savoie', 'R84'),
('D075', 'Paris', 'R11'),
('D076', 'Seine-Maritime', 'R28'),
('D077', 'Seine-et-Marne', 'R11'),
('D078', 'Yvelines', 'R11'),
('D080', 'Somme', 'R32'),
('D081', 'Tarn', 'R76'),
('D083', 'Var', 'R93'),
('D084', 'Vaucluse', 'R93'),
('D085', 'Vendée', 'R52'),
('D086', 'Vienne', 'R75'),
('D087', 'Haute-Vienne', 'R75'),
('D090', 'Territoire de Belfort', 'R27'),
('D091', 'Essonne', 'R11'),
('D092', 'Hauts-de-Seine', 'R11'),
('D093', 'Seine-Saint-Denis', 'R11'),
('D094', 'Val-de-Marne', 'R11'),
('D095', 'Val-d''Oise', 'R11'),
('D971', 'Guadeloupe', 'R01'),
('D973', 'Guyane', 'R03'),
('D974', 'La Reunion', 'R04'),
('D976', 'Mayotte', 'R06'),
('D987', 'Polynesie Française', 'R00'),
('D988', 'Nouvelle-Caledonie', 'R00'),
('D999', 'Etranger', 'R99');

-- --------------------------------------------------------

--
-- Structure de la table `etablissement`
--

CREATE TABLE IF NOT EXISTS `etablissement` (
  `id_etab` varchar(25) NOT NULL,
  `nom_etab` text,
  `sigle` text,
  `type` text,
  `secteur` text,
  `localisation` text NOT NULL,
  `mention_distri` text,
  `adresse` text,
  `boite_postale` text,
  `code_postale` bigint(20) NOT NULL,
  `pays` text NOT NULL,
  `tel` bigint(20) DEFAULT NULL,
  `siret` text NOT NULL,
  `id_admin` int(11) NOT NULL,
  `id_com` varchar(25) NOT NULL,
  PRIMARY KEY (`id_etab`),
  KEY `FK_etablissement_id_admin` (`id_admin`),
  KEY `FK_etablissement_id_com` (`id_com`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etablissement`
--

INSERT INTO `etablissement` (`id_etab`, `nom_etab`, `sigle`, `type`, `secteur`, `localisation`, `mention_distri`, `adresse`, `boite_postale`, `code_postale`, `pays`, `tel`, `siret`, `id_admin`, `id_com`) VALUES
('0', 'Universite de Strasbourg', '0', 'Association d''etablissements', 'Public', 'Grand Est>Strasbourg>Bas-Rhin>Strasbourg', '0', '4 RUE BLAISE PASCAL', 'CS 90032', 67081, 'France', 368850000, '0', 2, '67482'),
('0060099A', 'Observatoire de la cote d''azur', 'OCA', 'Autre etablissement', 'Public', 'Provence-Alpes-Cote d''Azur>Nice>Alpes-Maritimes>Nice', '0', 'ROUTE GRANDE CORNICHE', '229', 6304, 'France', 492003011, '1,90616E+13', 3, '6088'),
('0060931E', 'Universite Nice - Sophia-Antipolis', '0', 'Universite', 'Public', 'Provence-Alpes-Cote d''Azur>Nice>Alpes-Maritimes>Nice', '0', '28 AVENUE VALROSE', '2135', 6103, 'France', 492076060, '1,90609E+13', 1, '6088'),
('0062126D', 'Universite Cote d''Azur', 'UCA', 'Communaute d''universites et etablissements', 'Public', 'Provence-Alpes-Cote d''Azur>Nice>Alpes-Maritimes>Nice', 'GRAND CHATEAU', '28 AVENUE VALROSE', '2135', 6103, 'France', 0, '1,30021E+13', 1, '6088'),
('0101060Y', 'Universite de technologie de Troyes', 'UTT', 'Instituts et ecoles exterieurs aux universites', 'Public', 'Grand Est>Reims>Aube>Troyes', '0', '12 RUE MARIE CURIE', '2060', 10010, 'France', 325717600, '1,91011E+13', 1, '10387'),
('0130221V', 'Institut d''etudes politiques d''Aix-en-Provence', 'IEP d''Aix-en-Provence', 'Institut d''etude politique', 'Public', 'Provence-Alpes-Cote d''Azur>Aix-Marseille>Bouches-du-Rhone>Aix-en-Provence', '0', '25 RUE GASTON DE SAPORTA', '0', 13625, 'France', 442170160, '1,91333E+13', 2, '13001'),
('0133774G', 'ecole centrale de Marseille', '0', 'Instituts et ecoles exterieurs aux universites', 'Public', 'Provence-Alpes-Cote d''Azur>Aix-Marseille>Bouches-du-Rhone>Marseille 13e', 'TECHNOPOLE DE CHATEAU GOMBERT', '38 RUE JOLIOT CURIE', '0', 13451, 'France', 491282898, '1,91333E+13', 4, '13213'),
('0134009M', 'Aix-Marseille universite', 'AMU', 'Universite', 'Public', 'Provence-Alpes-Cote d''Azur>Aix-Marseille>Bouches-du-Rhone>Marseille 7e', 'MARSEILLE 7', '58 BOULEVARD CHARLES LIVON', '0', 13284, 'France', 0, '1,30015E+13', 4, '13207'),
('0141408E', 'Universite de Caen Normandie', '0', 'Universite', 'Public', 'Normandie>Caen>Calvados>Caen', '0', 'ESPLANADE DE LA PAIX', '5186', 14032, 'France', 231565500, '1,91414E+13', 3, '14118'),
('0141720U', 'ecole nationale superieure d''ingenieurs de Caen', 'ENSI Caen', 'ecoles nationales superieures d''ingenieurs', 'Public', 'Normandie>Caen>Calvados>Caen', '0', '6 BOULEVARD MARECHAL JUIN', '0', 14050, 'France', 231452750, '1,91417E+13', 2, '14118'),
('0142182W', 'ecole superieure d''ingenieurs des travaux de la construction de Caen', 'ESITC', 'ecole d''ingenieurs', 'Prive', 'Normandie>Caen>Calvados>Epron', '0', '1 RUE PIERRE ET MARIE CURIE', '0', 14610, 'France', 231462300, '4,03163E+13', 1, '14242'),
('0142382N', 'Normandie Universite', '0', 'Communaute d''universites et etablissements', 'Public', 'Normandie>Caen>Calvados>Caen', '0', 'ESPLANADE DE LA PAIX', '5186', 14032, 'France', 0, '1,30021E+13', 3, '14118'),
('0171435T', 'ecole d''ingenieurs en genie des systemes industriels', 'EIGSI', 'ecole d''ingenieurs', 'Prive', 'Nouvelle-Aquitaine>Poitiers>Charente-Maritime>La Rochelle', '0', '26 RUE VAUX DE FOLETIER', '0', 17041, 'France', 546458000, '3,53409E+13', 3, '17300'),
('0171463Y', 'Universite de La Rochelle', '0', 'Universite', 'Public', 'Nouvelle-Aquitaine>Poitiers>Charente-Maritime>La Rochelle', '0', '23 AVENUE ALBERT EINSTEIN', '0', 17071, 'France', 546459114, '1,917E+13', 4, '17300'),
('0180974L', 'Institut national des sciences appliquees Centre Val de Loire', 'INSA CVL', 'Instituts et ecoles exterieurs aux universites', 'Public', 'Centre-Val de Loire>Loir-et-Cher>Blois', '0', '3 RUE DE LA CHOCOLATERIE', '3410', 41034, 'France', 254558477, '1,30018E+13', 3, '41018'),
('0212198A', 'Institut national superieur des sciences agronomiques, de l''alimentation et de l''environnement', 'Agrosup Dijon', 'Grand etablissement', 'Public', 'Bourgogne-Franche-Comte>Dijon>Cote-d''Or>Dijon', '0', '26 BOULEVARD DR PETITJEAN', '0', 21079, 'France', 0, '1,30006E+13', 2, '21231'),
('0250082D', 'ecole nationale superieure de mecanique et des microtechniques', 'ENSMM Besancon', 'ecoles nationales superieures d''ingenieurs', 'Public', 'Bourgogne-Franche-Comte>Besancon>Doubs>Besancon', '0', '26 CHEMIN DE L''EPITAPHE', '0', 25030, 'France', 381402700, '1,92501E+13', 3, '25056'),
('0251215K', 'Universite de Franche-Comte', 'UFC', 'Universite', 'Public', 'Bourgogne-Franche-Comte>Besancon>Doubs>Besancon', '0', '1 RUE GOUDIMEL', '0', 25030, 'France', 381666666, '1,92512E+13', 2, '25056'),
('0251985X', 'Universite Bourgogne – Franche-Comte', '0', 'Communaute d''universites et etablissements', 'Public', 'Bourgogne-Franche-Comte>Besancon>Doubs>Besancon', '0', '32 AVENUE DE L''OBSERVATOIRE', '0', 25000, 'France', 0, '1,30021E+13', 1, '25056'),
('0290346U', 'Universite de Bretagne Occidentale', 'UBO', 'Universite', 'Public', 'Bretagne>Finistere>Brest', '0', '3 RUE DES ARCHIVES', '93837', 29238, 'France', 298016000, '1,92903E+13', 4, '29019'),
('0292125C', 'Institut superieur de l''electronique et du numerique de Brest', 'Yncrea Ouest', 'ecole d''ingenieurs', 'Prive', 'Bretagne>Finistere>Brest', '0', '20 RUE CUIRASSE BRETAGNE', 'CS42807', 29228, 'France', 298038400, '3,97793E+13', 2, '29019'),
('0301687W', 'Universite de Nimes', 'UNIMES', 'Universite', 'Public', 'Occitanie>Montpellier>Gard>Nimes', 'SITE VAUBAN', 'RUE DU DOCTEUR GEORGES SALAN', '0', 30021, 'France', 0, '1,30004E+13', 2, '30189'),
('0310133B', 'Institut d''etudes politiques de Toulouse', 'IEP de Toulouse', 'Institut d''etude politique', 'Public', 'Occitanie>Toulouse>Haute-Garonne>Toulouse', '0', '2 TER RUE DES PUITS CREUSES', '0', 31042, 'France', 561110270, '1,93114E+13', 1, '31555'),
('0310152X', 'Institut national des sciences appliquees de Toulouse', 'INSA Toulouse', 'Instituts et ecoles exterieurs aux universites', 'Public', 'Occitanie>Toulouse>Haute-Garonne>Toulouse', '0', '135 AVENUE DE RANGUEIL', '0', 31077, 'France', 561559513, '1,93102E+13', 2, '31555'),
('0310153Y', 'ecole nationale veterinaire de Toulouse', 'ENVT', 'Etablissement relevant d''un autre departement ministeriel rattache a  un EPSCP', 'Public', 'Occitanie>Toulouse>Haute-Garonne>Toulouse', '0', '23 CHEMIN DES CAPELLES', '87614', 31076, 'France', 561193800, '1,93102E+13', 1, '31555'),
('0310155A', 'Institut catholique de Toulouse', 'ICT', 'etablissement prive d''enseignement universitaire', 'Prive', 'Occitanie>Toulouse>Haute-Garonne>Toulouse', '0', '31 RUE DE LA FONDERIE', '0', 31068, 'France', 561368100, '7,76944E+13', 3, '31555'),
('0311381H', 'Institut national polytechnique de Toulouse', 'INPT', 'Institut national polytechnique', 'Public', 'Occitanie>Toulouse>Haute-Garonne>Toulouse', '0', '6 ALLEE EMILE MONSO', '34038', 31029, 'France', 562242100, '1,93114E+13', 1, '31555'),
('0311382J', 'Universite Toulouse 1 - Capitole', '0', 'Universite', 'Public', 'Occitanie>Toulouse>Haute-Garonne>Toulouse', '0', '2 RUE DU DOYEN GABRIEL MARTY', '0', 31042, 'France', 561633500, '1,93114E+13', 2, '31555'),
('0311383K', 'Universite Toulouse - Jean Jaures', '0', 'Universite', 'Public', 'Occitanie>Toulouse>Haute-Garonne>Toulouse', '0', '5 ALLEES ANTONIO MACHADO', '0', 31058, 'France', 561504250, '1,93114E+13', 1, '31555'),
('0311384L', 'Universite de Toulouse 3 - Paul Sabatier', '0', 'Universite', 'Public', 'Occitanie>Toulouse>Haute-Garonne>Toulouse', '0', '118 ROUTE DE NARBONNE', '0', 31062, 'France', 561556611, '1,93114E+13', 1, '31555'),
('0312758E', 'Universite federale de Toulouse Midi-Pyrenees', '0', 'Communaute d''universites et etablissements', 'Public', 'Occitanie>Toulouse>Haute-Garonne>Toulouse', '0', '41 ALLEES JULES GUESDE', '0', 31013, 'France', 561559282, '1,30021E+13', 3, '31555'),
('0312760G', 'Institut superieur de l''aeronautique et de l''espace', 'ISAE', 'Grand etablissement relevant d''un autre departement ministeriel', 'Public', 'Occitanie>Toulouse>Haute-Garonne>Toulouse', '0', '10 AVENUE EDOUARD BELIN', '54032', 31055, 'France', 562178080, '1,30004E+13', 3, '31555'),
('0330192E', 'Institut d''etudes politiques de Bordeaux', 'IEP de Bordeaux', 'Institut d''etude politique', 'Public', 'Nouvelle-Aquitaine>Bordeaux>Gironde>Pessac', '0', '11 ALLEE AUSONE DOM UNIV', '0', 33607, 'France', 556041772, '1,93302E+13', 4, '33318'),
('0331766R', 'Universite Bordeaux-Montaigne', 'UBM', 'Universite', 'Public', 'Nouvelle-Aquitaine>Bordeaux>Gironde>Pessac', '0', 'DOMAINE UNIVERSITAIRE', '0', 33607, 'France', 557124444, '1,93318E+13', 2, '33318'),
('0333178A', 'Communaute d''universites et etablissements d''Aquitaine', '0', 'Communaute d''universites et etablissements', 'Public', 'Nouvelle-Aquitaine>Bordeaux>Gironde>Bordeaux', '0', '166 COURS DE L ARGONNE', '0', 33000, 'France', 556338080, '1,30021E+13', 2, '33063'),
('0333232J', 'Institut polytechnique de Bordeaux', 'IPB', 'Grand etablissement', 'Public', 'Nouvelle-Aquitaine>Bordeaux>Gironde>Talence', '0', '1 AVENUE DU DOCTEUR ALBERT SCHWE', '0', 33402, 'France', 540003726, '1,30006E+13', 3, '33522'),
('0333298F', 'Universite de Bordeaux', '0', 'Universite', 'Public', 'Nouvelle-Aquitaine>Bordeaux>Gironde>Bordeaux', '0', '35 PLACE PEY BERLAND', '0', 33000, 'France', 0, '1,30018E+13', 4, '33063'),
('0340112M', 'ecole nationale superieure de chimie de Montpellier', 'ENS Chimie Montpellier', 'ecoles nationales superieures d''ingenieurs', 'Public', 'Occitanie>Montpellier>Herault>Montpellier', '0', '8 RUE DE L''ECOLE NORMALE', '0', 34296, 'France', 467144300, '1,93401E+13', 3, '34172'),
('0341089Z', 'Universite Montpellier 3 – Paul-Valery', 'UPV', 'Universite', 'Public', 'Occitanie>Montpellier>Herault>Montpellier', '0', 'ROUTE DE MENDE', '0', 34199, 'France', 467142000, '1,93411E+13', 3, '34172'),
('0342222F', 'Centre international d''etudes superieures en sciences agronomiques', 'Montpellier Sup Agro', 'Grand etablissement relevant d''un autre dapartement ministeriel', 'Public', 'Occitanie>Montpellier>Herault>Montpellier', '0', '2 PLACE PIERRE VIALA', '0', 34060, 'France', 499612200, '1,30003E+13', 4, '34172'),
('0342255S', 'Languedoc-Roussillon Universites', '0', 'Communaute d''universites et etablissements', 'Public', 'Occitanie>Montpellier>Herault>Montpellier', 'INSTITUT DE BOTANIQUE', '163 RUE AUGUSTE BROUSSONNET', '0', 34197, 'France', 0, '1,30021E+13', 2, '34172'),
('0342321N', 'Universite de Montpellier', '0', 'Universite', 'Public', 'Occitanie>Montpellier>Herault>Montpellier', '0', '163 RUE AUGUSTE BROUSSONET', '0', 34090, 'France', 0, '1,30021E+13', 4, '34172'),
('0350077U', 'ecole nationale superieure de chimie de Rennes', 'ENS Chimie Rennes', 'ecoles nationales superieures d''ingenieurs', 'Public', 'Bretagne>Ille-et-Vilaine>Rennes', '0', '11 ALLÃ‰E DE BEAULIEU', '0', 35708, 'France', 223238000, '1,93501E+13', 3, '35238'),
('0350095N', 'ecole des hautes etudes en sante publique', 'EHESP', 'Grand etablissement', 'Public', 'Bretagne>Ille-et-Vilaine>Rennes', '0', 'AVENUE DU PROFESSEUR LEON BERNAR', '74312', 35043, 'France', 299022200, '1,30004E+13', 2, '35238'),
('0350097R', 'Institut national des sciences appliquees de Rennes', 'INSA Rennes', 'Instituts et ecoles exterieurs aux universites', 'Public', 'Bretagne>Ille-et-Vilaine>Rennes', '0', '20 AVENUE DES BUTTES DE COESMES', '0', 35708, 'France', 223238200, '1,93501E+13', 4, '35238'),
('0350936C', 'Universite de Rennes 1', '0', 'Universite', 'Public', 'Bretagne>Ille-et-Vilaine>Rennes', '0', '2 RUE DU THABOR', '0', 35065, 'France', 223233636, '1,93509E+13', 2, '35238'),
('0350937D', 'Universite Rennes 2', '0', 'Universite', 'Public', 'Bretagne>Ille-et-Vilaine>Rennes', 'CAMPUS DE VILLEJEAN', 'PLACE DU RECTEUR LE MOAL', '0', 35043, 'France', 299141000, '1,93509E+13', 1, '35238'),
('0352317D', 'Institut d''etudes politiques de Rennes', 'IEP de Rennes', 'Institut d''etude politique', 'Public', 'Bretagne>Ille-et-Vilaine>Rennes', '0', '104 BD DE LA DUCHESSE ANNE', '0', 35042, 'France', 299843939, '1,93523E+13', 2, '35238'),
('0352373P', 'ecole des metiers de l''environnement', 'EME', 'ecole d''ingenieurs', 'Prive', 'Bretagne>Ille-et-Vilaine>Bruz', 'CAMPUS DE KER LANN', 'AVENUE ROBERT SCHUMANN', '0', 35170, 'France', 299058800, '3,92925E+13', 2, '35047'),
('0352440M', 'ecole normale superieure de Rennes', 'ENS Rennes', 'ecole normale superieure', 'Public', 'Bretagne>Ille-et-Vilaine>Bruz', '0', 'AVENUE ROBERT SCHUMAN', '0', 35170, 'France', 299059300, '1,30018E+13', 4, '35047'),
('0352692L', 'Institut superieur des sciences agronomiques, agroalimentaires, horticoles et du paysage', 'Agro campus Ouest', 'Grand etablissement relevant d''un autre departement ministeriel', 'Public', 'Bretagne>Ille-et-Vilaine>Rennes', '0', '65 RUE DE ST BRIEUC', '0', 35042, 'France', 223485000, '1,30005E+13', 2, '35238'),
('0352756F', 'Universite Bretagne Loire', 'UBL', 'Communaute d''universites et etablissements', 'Public', 'Bretagne>Ille-et-Vilaine>Rennes', 'Cite Internationale', '1 PLACE PAUL-RICOEUR', 'CS 54417', 35044, 'France', 0, '1,30022E+13', 1, '35238'),
('0370800U', 'Universite Francois-Rabelais', '0', 'Universite', 'Public', 'Centre-Val de Loire>Indre-et-Loire>Tours', '0', '60 RUE RUE DU PLAT D''ETAIN', '12050', 37000, 'France', 247366600, '1,93708E+13', 1, '37261'),
('0380134P', 'Institut d''etudes politiques de Grenoble', 'IEP de Grenoble', 'Institut d''etude politique', 'Public', 'Auvergne-Rhone-Alpes>Grenoble>Isere>Saint-Martin-d''Heres', '0', '1030 AVENUE CENTRALE', '48', 38040, 'France', 476826000, '1,93801E+13', 2, '38421'),
('0381912X', 'Grenoble INP', '0', 'Grand etablissement', 'Public', 'Auvergne-Rhone-Alpes>Grenoble>Isere>Grenoble', '0', '46 AVENUE FELIX VIALLET', '0', 38031, 'France', 476574500, '1,93819E+13', 2, '38185'),
('0383412C', 'Universite Grenoble Alpes', '0', 'Communaute d''universites et etablissements', 'Public', 'Auvergne-Rhone-Alpes>Grenoble>Isere>Saint-Martin-d''Heres', 'Batiment les taillees', '271 RUE DE LA HOUILLE BLANCHE', '52', 38402, 'France', 0, '1,30021E+13', 3, '38421'),
('0383493R', 'Universite de Grenoble Alpes', 'UGA', 'Universite', 'Public', 'Auvergne-Rhone-Alpes>Grenoble>Isere>Saint-Martin-d''Heres', '0', '621 AVENUE CENTRALE', '53', 38041, 'France', 0, '1,30021E+13', 1, '38421'),
('0420093Y', 'ecole nationale d''ingenieurs de Saint-etienne', 'ENISE', 'Instituts et ecoles exterieurs aux universites', 'Public', 'Auvergne-Rhone-Alpes>Lyon>Loire>Saint-etienne', '0', '58 RUE JEAN PAROT', '0', 42023, 'France', 477438484, '1,94201E+13', 1, '42218'),
('0421095M', 'Universite Jean Monnet', '0', 'Universite', 'Public', 'Auvergne-Rhone-Alpes>Lyon>Loire>Saint-etienne', 'MAISON DE L''UNIVERSITE', '10 RUE TREFILERIE', '0', 42023, 'France', 477421700, '1,94211E+13', 1, '42218'),
('0440100V', 'Ecole centrale de Nantes', '0', 'Instituts et ecoles exterieurs aux universites', 'Public', 'Pays de la Loire>Loire-Atlantique>Nantes', '0', '1 RUE DE LA NOE', '92101', 44321, 'France', 240371600, '1,94401E+13', 1, '44109'),
('0440984F', 'Universite de Nantes', '0', 'Universite', 'Public', 'Pays de la Loire>Loire-Atlantique>Nantes', '0', '1 QUAI DE TOURVILLE', '13522', 44035, 'France', 240998383, '1,9441E+13', 2, '44109'),
('0441916U', 'ecole nationale veterinaire, agroalimentaire et de l''alimentation, Nantes-Atlantique', 'ONIRIS', 'Grand etablissement relevant d''un autre departement ministeriel', 'Public', 'Pays de la Loire>Loire-Atlantique>Nantes', 'ATLANPOLE LA CHANTRERIE', 'ROUTE DE GACHET', '40706', 44307, 'France', 240687777, '1,30009E+13', 3, '44109'),
('0450855K', 'Universite d''Orleans', '0', 'Universite', 'Public', 'Centre-Val de Loire>Loiret>Orleans', '0', 'CHATEAU DE LA SOURCE', '6749', 45067, 'France', 238417171, '1,94509E+13', 3, '45234'),
('0490075R', 'ecole superieure d''electronique de l''Ouest', 'ESEO', 'ecole d''ingenieurs', 'Prive', 'Pays de la Loire>Maine-et-Loire>Angers', '0', '10 BOULEVARD JEANNETEAU', '0', 49107, 'France', 241866767, '7,86117E+13', 3, '49007'),
('0490076S', 'ecole superieure des sciences commerciales d''Angers', 'ESSCA', 'Autre etablissement', 'Prive', 'Pays de la Loire>Maine-et-Loire>Angers', '0', '1 RUE LAKANAL', '40348', 49003, 'France', 241734747, '7,86117E+13', 3, '49007'),
('0490811R', 'Facultes libres de l''Ouest', 'FLO', 'etablissement prive d''enseignement universitaire', 'Prive', 'Pays de la Loire>Maine-et-Loire>Angers', '0', '3 PLACE ANDRE LEROY', 'BP10808', 49008, 'France', 241816559, '7,86117E+13', 2, '49007'),
('0490970N', 'Universite d''Angers', '0', 'Universite', 'Public', 'Pays de la Loire>Maine-et-Loire>Angers', '0', '40 RUE DE RENNES', '73532', 49035, 'France', 241962323, '1,9491E+13', 2, '49007'),
('0492246A', 'ecole superieure angevine en informatique et productique', 'ESAIP', 'ecole d''ingenieurs', 'Prive', 'Pays de la Loire>Maine-et-Loire>Saint-Barthelemy-d''Anjou', '0', '18 RUE DU 8 MAI 1945', '80022', 49180, 'France', 241966510, '3,79204E+13', 3, '49267'),
('0511296G', 'Universite de Reims Champagne-Ardenne', 'URCA', 'Universite', 'Public', 'Grand Est>Reims>Marne>Reims', 'VILLA DOUCE', '9 BD DE LA PAIX', '0', 51097, 'France', 326913000, '1,95113E+13', 1, '51454'),
('0512141A', 'Universite de Champagne', '0', 'Communaute d''universites et etablissements', 'Public', 'Grand Est>Reims>Marne>Reims', 'UNIVERSITE DE REIMS - VILLA DOUC', '2 ESPLANADE ROLAND GARROS', 'BP 191', 51686, 'France', 326913955, '1,30021E+13', 3, '51454'),
('0542455A', 'ICN Business School', 'ICN', 'ecole de commerce et de management', 'Prive', 'Grand Est>Nancy-Metz>Meurthe-et-Moselle>Nancy', '0', '13 RUE MICHEL NEY', 'BP75', 54037, 'France', 383396450, '3,81396E+13', 3, '54395'),
('0542493S', 'Universite de Lorraine', '0', 'Grand etablissement', 'Public', 'Grand Est>Nancy-Metz>Meurthe-et-Moselle>Nancy', '0', '34 COURS LEOPOLD', '0', 54052, 'France', 0, '1,30016E+13', 2, '54395'),
('0561718N', 'Universite de Bretagne-Sud', 'UBS', 'Universite', 'Public', 'Bretagne>Morbihan>Lorient', '0', '27 RUE ARMAND GUILLEMOT', '92116', 56321, 'France', 0, '1,95617E+13', 2, '56121'),
('0590311T', 'ecole nationale superieure de chimie de Lille', 'ENS Chimie Lille', 'ecoles nationales superieures d''ingenieurs', 'Public', 'Hauts-de-France>Lille>Nord>Villeneuve-d''Ascq', '0', 'CITE SCIENTIFIQUE', '90108', 59652, 'France', 320434897, '1,95903E+13', 4, '59009'),
('0590338X', 'ecole nationale superieure des arts et industries textiles', 'ENSAIT', 'Instituts et ecoles exterieurs aux universites', 'Public', 'Hauts-de-France>Lille>Nord>Roubaix', '0', '9 RUE DE L ERMITAGE', '30329', 59056, 'France', 320256458, '1,95903E+13', 2, '59512'),
('0590343C', 'Groupe Institut superieur d''agriculture de Lille', 'Isa', 'Autre etablissement', 'Prive', 'Hauts-de-France>Lille>Nord>Lille', '0', '48 BOULEVARD VAUBAN', '0', 59046, 'France', 328384848, '7,83707E+13', 4, '59350'),
('0590344D', 'Institut catholique de Lille', 'ICL', 'Autre etablissement', 'Prive', 'Hauts-de-France>Lille>Nord>Lille', '0', '60 BOULEVARD VAUBAN', '109', 59016, 'France', 320134000, '7,75624E+13', 2, '59350'),
('0590346F', 'Skema Business School', 'Skema', 'etablissements d''enseignement superieur prives rattaches a  un EPSCP', 'Prive', 'Hauts-de-France>Lille>Nord>Lille', '0', 'AVENUE WILLY BRANDT', '0', 59777, 'France', 320215962, '7,83706E+13', 4, '59350'),
('0590347G', 'Institut superieur de l''electronique et du numerique', 'Isen-Lille', 'ecole d''ingenieurs', 'Prive', 'Hauts-de-France>Lille>Nord>Lille', '0', '41 BOULEVARD VAUBAN', '0', 59046, 'France', 320304057, '7,83707E+13', 1, '59350'),
('0590348H', 'Hautes etudes d''ingenieur', 'HEI', 'ecole d''ingenieurs', 'Prive', 'Hauts-de-France>Lille>Nord>Lille', '0', '13 RUE DE TOUL', '0', 59046, 'France', 328384858, '7,83707E+13', 1, '59350'),
('0590349J', 'ecole centrale de Lille', 'EC Lille', 'Instituts et ecoles exterieurs aux universites', 'Public', 'Hauts-de-France>Lille>Nord>Villeneuve-d''Ascq', '0', 'CITE SCIENTIFIQUE', '48', 59651, 'France', 320335310, '1,95903E+13', 1, '59009'),
('0590350K', 'ecole des hautes etudes commerciales du nord', 'Edhec', 'Autre etablissement', 'Prive', 'Hauts-de-France>Lille>Nord>Roubaix', '0', '24 AVENUE GUSTAVE DELORY', '0', 59057, 'France', 320154500, '7,83707E+13', 2, '59512'),
('0593202K', 'Institut d''economie scientifique et de gestion', 'Ieseg', 'Autre etablissement', 'Prive', 'Hauts-de-France>Lille>Nord>Lille', '0', '3 RUE DE LA DIGUE', '0', 59800, 'France', 320545892, '7,83707E+13', 4, '59350'),
('0593207R', 'ecole superieure de journalisme de Lille', 'ESJ', 'Autre etablissement', 'Prive', 'Hauts-de-France>Lille>Nord>Lille', '0', '50 RUE GAUTHIER DE CHATILLON', '0', 59046, 'France', 320304410, '7,83707E+13', 1, '59350'),
('0593559Y', 'Universite Lille 1 - Sciences technologies', '0', 'Universite', 'Public', 'Hauts-de-France>Lille>Nord>Villeneuve-d''Ascq', '0', 'CITE SCIENTIFIQUE', '0', 59655, 'France', 320434343, '1,95936E+13', 1, '59009'),
('0593560Z', 'Universite Lille 2 - Droit et Sante', '0', 'Universite', 'Public', 'Hauts-de-France>Lille>Nord>Lille', '0', '42 RUE PAUL DUEZ', '0', 59800, 'France', 320964343, '1,95936E+13', 4, '59350'),
('0593561A', 'Universite Lille 3 - Charles-de-Gaulle', '0', 'Universite', 'Public', 'Hauts-de-France>Lille>Nord>Villeneuve-d''Ascq', '0', 'RUE DU BARREAU', '60149', 59653, 'France', 320416000, '1,95936E+13', 4, '59009'),
('0595876S', 'Institut d''etudes politiques de Lille', 'IEP de Lille', 'Institut d''etude politique', 'Public', 'Hauts-de-France>Lille>Nord>Lille', '0', '84 RUE DE TREVISE', '0', 59000, 'France', 320904840, '1,95959E+13', 2, '59350'),
('0595964M', 'Universite du Littoral Cete d''Opale', 'ULCO', 'Universite', 'Public', 'Hauts-de-France>Lille>Nord>Dunkerque', '0', '1 PLACE DE L''YSER', '1022', 59375, 'France', 328237373, '1,95944E+13', 1, '59183'),
('0596870X', 'Universite Lille Nord de France', '0', 'Communaute d''universites et etablissements', 'Public', 'Hauts-de-France>Lille>Nord>Villeneuve-d''Ascq', 'BATIMENT DEBEYRE', '365 BIS RUE JULES GUESDE', 'BP 50458', 59658, 'France', 0, '1,30021E+13', 2, '59009'),
('0600071B', 'Institut polytechnique LaSalle Beauvais', 'Esitpa', 'ecole d''ingenieurs', 'Prive', 'Hauts-de-France>Amiens>Oise>Beauvais', '0', '19 RUE PIERRE WAGUET', 'BP30313', 60026, 'France', 344062525, '7,80507E+13', 1, '60057'),
('0601223D', 'Universite de technologie de Compiegne', 'UTC', 'Instituts et ecoles exterieurs aux universites', 'Public', 'Hauts-de-France>Amiens>Oise>Compiegne', '0', 'RUE ROGER COUTTOLENC', '60649', 60206, 'France', 344234423, '1,96012E+13', 3, '60159'),
('0602099F', 'ecole superieure de chimie organique et minerale', 'ESCOM', 'ecole d''ingenieurs', 'Prive', 'Hauts-de-France>Amiens>Oise>Compiegne', '0', '1 ALLEE DU RESEAU JM BUCKMASTER', '0', 60200, 'France', 344238800, '7,84281E+13', 2, '60159'),
('0623957P', 'Universite d''Artois', '0', 'Universite', 'Public', 'Hauts-de-France>Lille>Pas-de-Calais>Arras', '0', '9 RUE DU TEMPLE', '665', 62030, 'France', 321603700, '1,96244E+13', 3, '62041'),
('0632033T', 'SIGMA Clermont', 'SIGMA', 'ecole d''ingenieurs', 'Public', 'Auvergne-Rhone-Alpes>Clermont-Ferrand>Puy-de-Dome>Aubiere', 'CAMPUS DES CEZEAUX', '27 RUE DE ROCHE GENES', '0', 63178, 'France', 473288000, '1,30022E+13', 4, '63014'),
('0632035V', 'Universite Clermont Auvergne', 'UCA', 'Universite', 'Public', 'Auvergne-Rhone-Alpes>Clermont-Ferrand>Puy-de-Dome>Clermont-Ferrand', '0', '49 BOULEVARD FRANCOIS MITTERRAND', '32', 63001, 'France', 473177979, '1,30023E+13', 3, '63113'),
('0640251A', 'Universite de Pau et des Pays de l''Adour', 'UPPA', 'Universite', 'Public', 'Nouvelle-Aquitaine>Bordeaux>Pyrenees-Atlantiques>Pau', '0', 'AVENUE DE L UNIVERSITE', '576', 64012, 'France', 559407000, '1,96403E+13', 4, '64445'),
('0641923T', 'ecole superieure des technologies industrielles avancees', 'ESTIA', 'ecole d''ingenieurs', 'Prive', 'Nouvelle-Aquitaine>Bordeaux>Pyrenees-Atlantiques>Bayonne', '0', '50 ALLÃ‰ES MARINES', 'BP215', 64102, 'France', 559438400, '1,864E+13', 2, '64102'),
('0650048Z', 'ecole nationale d''ingenieurs de Tarbes', 'ENI Tarbes', 'ecoles nationales superieures d''ingenieurs', 'Public', 'Occitanie>Toulouse>Hautes-Pyrenees>Tarbes', '0', '47 AVENUE D''AZEREIX', '1629', 65016, 'France', 562442700, '1,965E+13', 4, '65440'),
('0660437S', 'Universite de Perpignan - Via Domitia', '0', 'Universite', 'Public', 'Occitanie>Montpellier>Pyrenees-Orientales>Perpignan', '0', '52 AVENUE PAUL ALDUY', '0', 66860, 'France', 468662000, '1,96604E+13', 1, '66136'),
('0670189S', 'ecole nationale du genie de l''eau et de l''environnement de Strasbourg', 'ENGEES', 'Etablissement relevant d''un autre departement ministeriel rattache a  un EPSCP', 'Public', 'Grand Est>Strasbourg>Bas-Rhin>Strasbourg', '0', '1 QUAI KOCH', '61039', 67070, 'France', 388248282, '1,96702E+13', 3, '67482'),
('0670190T', 'Institut national des sciences appliquees de Strasbourg', 'INSA Strasbourg', 'Instituts et ecoles exterieurs aux universites', 'Public', 'Grand Est>Strasbourg>Bas-Rhin>Strasbourg', '0', '24 BOULEVARD DE LA VICTOIRE', '0', 67084, 'France', 388144700, '1,96728E+13', 2, '67482'),
('0673021V', 'Universite de Strasbourg', '0', 'Universite', 'Public', 'Grand Est>Strasbourg>Bas-Rhin>Strasbourg', '0', '4 RUE BLAISE PASCAL', 'CS 90032', 67081, 'France', 368850000, '1,30005E+13', 3, '67482'),
('0673048Z', 'Haute ecole des arts du Rhin', 'HEAR', 'Autre etablissement', 'Public', 'Grand Est>Strasbourg>Bas-Rhin>Strasbourg', '0', '1 RUE DE L''ACADEMIE', 'CS10032', 67082, 'France', 369063777, '2,00028E+13', 1, '67482'),
('0681166Y', 'Universite de Haute-Alsace', 'UHA', 'Universite', 'Public', 'Grand Est>Strasbourg>Haut-Rhin>Mulhouse', '0', '2 RUE DES FRERES LUMIERE', '0', 68093, 'France', 389336000, '1,96812E+13', 3, '68224'),
('0690173N', 'Institut d''etudes politiques de Lyon', 'IEP de Lyon', 'Institut d''etude politique', 'Public', 'Auvergne-Rhone-Alpes>Lyon>Rhone>Lyon 7e', '0', '14 AVENUE BERTHELOT', '0', 69007, 'France', 437283800, '1,96902E+13', 1, '69387'),
('0690187D', 'ecole centrale de Lyon', 'EC Lyon', 'Instituts et ecoles exterieurs aux universites', 'Public', 'Auvergne-Rhone-Alpes>Lyon>Rhone>ecully', '0', '36 AVENUE GUY DE COLLONGUE', '0', 69134, 'France', 472186000, '1,96902E+13', 1, '69081'),
('0690192J', 'Institut national des sciences appliquees de Lyon', 'INSA Lyon', 'Instituts et ecoles exterieurs aux universites', 'Public', 'Auvergne-Rhone-Alpes>Lyon>Rhone>Villeurbanne', '0', '20 AVENUE ALBERT EINSTEIN', '0', 69621, 'France', 472438383, '1,96902E+13', 3, '69266'),
('0690193K', 'Institut d''enseignement superieur et de recherche en alimentation, sante animale, sciences agronomiques et de l''environnement', 'Vet Agro Sup', 'Grand etablissement relevant d''un autre departement ministeriel', 'Public', 'Auvergne-Rhone-Alpes>Lyon>Rhone>Marcy-l''etoile', '0', '1 AVENUE BOURGELAT', '0', 69280, 'France', 478872525, '1,30009E+13', 3, '69127'),
('0690194L', 'ecole catholique des arts et metiers', 'ECAM', 'ecole d''ingenieurs', 'Prive', 'Auvergne-Rhone-Alpes>Lyon>Rhone>Lyon 5e', '0', '40 MONTEE SAINT BARTHELEMY', '0', 69321, 'France', 472770600, '7,79883E+13', 2, '69385'),
('0690195M', 'Universite catholique de Lyon', 'UCLy', 'etablissement prive d''enseignement universitaire', 'Prive', 'Auvergne-Rhone-Alpes>Lyon>Rhone>Lyon 2e', '0', '25 RUE DU PLAT', '0', 69288, 'France', 472325012, '3,2693E+13', 3, '69382'),
('0691774D', 'Universite Claude Bernard - Lyon 1', '0', 'Universite', 'Public', 'Auvergne-Rhone-Alpes>Lyon>Rhone>Villeurbanne', '0', '43 BOULEVARD DU 11 NOVEMBRE 1918', '761', 69622, 'France', 472448016, '1,96918E+13', 1, '69266'),
('0691775E', 'Universite Lumiere - Lyon 2', '0', 'Universite', 'Public', 'Auvergne-Rhone-Alpes>Lyon>Rhone>Lyon 7e', '0', '86 RUE PASTEUR', '0', 69365, 'France', 478697152, '1,96918E+13', 2, '69387'),
('0692437Z', 'Universite Jean Moulin - Lyon 3', '0', 'Universite', 'Public', 'Auvergne-Rhone-Alpes>Lyon>Rhone>Lyon 7e', '0', '1 RUE DE L''UNIVERSITE', '638', 69239, 'France', 478787878, '1,96924E+13', 1, '69387'),
('0692459Y', 'ecole nationale superieure des sciences de l''information et des bibliotheques', 'ENSSIB', 'Grand etablissement', 'Public', 'Auvergne-Rhone-Alpes>Lyon>Rhone>Villeurbanne', '0', '17 BOULEVARD DU 11 NOVEMBRE 1918', '0', 69623, 'France', 472444343, '1,96925E+13', 3, '69266'),
('0692566P', 'ecole nationale des travaux publics de l''etat', 'ENTPE', 'ecole exterieure relevant d''un autre departement ministeriel', 'Public', 'Auvergne-Rhone-Alpes>Lyon>Rhone>Vaulx-en-Velin', '0', '3 RUE MAURICE AUDIN', '0', 69518, 'France', 472047070, '1,30003E+13', 4, '69256'),
('0693364G', 'Institut textile et chimique', 'ITECH', 'ecole d''ingenieurs', 'Prive', 'Auvergne-Rhone-Alpes>Lyon>Rhone>ecully', '0', '87 CHEMIN DES MOUILLES', '0', 69134, 'France', 472180480, '3,20141E+13', 2, '69081'),
('0693623N', 'ecole superieure de chimie physique electronique de Lyon', 'CPE Lyon', 'ecole d''ingenieurs', 'Prive', 'Auvergne-Rhone-Alpes>Lyon>Rhone>Villeurbanne', '0', '43 BOULEVARD DU 11 NOVEMBRE 1918', '82077', 69616, 'France', 472431700, '3,91895E+13', 2, '69266'),
('0693735K', 'ecole nationale superieure des arts et techniques du theatre', 'ENSATT', 'Autre etablissement', 'Public', 'Auvergne-Rhone-Alpes>Lyon>Rhone>Lyon 5e', '0', '4 RUE SOEUR BOUVIER', '0', 69322, 'France', 478150505, '1,97508E+13', 4, '69385'),
('0694094A', 'Universite de Lyon', 'UDL', 'Communaute d''universites et etablissements', 'Public', 'Auvergne-Rhone-Alpes>Lyon>Rhone>Lyon 7e', '0', '92 RUE PASTEUR', 'CS 30122', 69361, 'France', 437372670, '1,30021E+13', 1, '69387'),
('0694123G', 'ecole normale superieure de Lyon', 'ENS de Lyon', 'ecole normale superieure', 'Public', 'Auvergne-Rhone-Alpes>Lyon>Rhone>Lyon 7e', '0', '15 PARVIS RENE DESCARTES', '7000', 69342, 'France', 0, '1,30008E+13', 3, '69387'),
('0720916E', 'Universite du Maine', '0', 'Universite', 'Public', 'Pays de la Loire>Sarthe>Le Mans', '0', 'AVENUE OLIVIER MESSIAEN', '535', 72017, 'France', 243833000, '1,97209E+13', 2, '72181'),
('0730858L', 'Universite de Savoie', '0', 'Universite', 'Public', 'Auvergne-Rhone-Alpes>Grenoble>Savoie>Chambery', '0', '27 RUE MARCOZ', '1104', 73011, 'France', 479758585, '1,97309E+13', 2, '73065'),
('0750043P', 'ecole d''ingenieur de la ville de Paris', 'EIVP', 'Etablissement relevant d''un autre departement ministeriel rattache a  un EPSCP', 'Public', 'Ile-de-France>Paris>Paris>Paris 19e', '0', '78 RUE REBEVAL', '0', 75019, 'France', 144411133, '2,00001E+13', 1, '75119'),
('0750252S', 'Institut superieur du commerce de Paris', 'ISC Paris Business School', 'ecole de commerce et de management', 'Prive', 'Ile-de-France>Paris>Paris>Paris 17e', '0', '22 BOULEVARD DU FORT DE VAUX', '0', 75848, 'France', 140539999, '7,84714E+13', 1, '75117'),
('0750736T', 'Universite Paris-Dauphine', 'Paris-Dauphine', 'Grand etablissement', 'Public', 'Ile-de-France>Paris>Paris>Paris 16e', '0', 'PLACE DU MARECHAL DE TASSIGNY', '0', 75775, 'France', 144054405, '1,97547E+13', 3, '75116'),
('0751717J', 'Universite Paris 1 – Pantheon Sorbonne', '0', 'Universite', 'Public', 'Ile-de-France>Paris>Paris>Paris 17e', '0', '12 PLACE DU PANTHEON', '0', 75231, 'France', 144078000, '1,97517E+13', 1, '75105'),
('0751718K', 'Universite Pantheon-Assas', '0', 'Universite', 'Public', 'Ile-de-France>Paris>Paris>Paris 5e', '0', '12 PLACE DU PANTHEON', '0', 75231, 'France', 144415700, '1,97517E+13', 1, '75105'),
('0751719L', 'Universite Sorbonne Nouvelle - Paris 3', '0', 'Universite', 'Public', 'Ile-de-France>Paris>Paris>Paris 5e', '0', '17 RUE DE LA SORBONNE', '0', 75230, 'France', 140462897, '1,97517E+13', 1, '75105'),
('0751720M', 'Universite Paris-Sorbonne', '0', 'Universite', 'Public', 'Ile-de-France>Paris>Paris>Paris 5e', '0', '1 RUE VICTOR COUSIN', '0', 75230, 'France', 140462211, '1,97517E+13', 2, '75105'),
('0751721N', 'Universite Paris Descartes', '0', 'Universite', 'Public', 'Ile-de-France>Paris>Paris>Paris 6e', '0', '12 RUE DE L''ECOLE DE MEDECINE', '0', 75270, 'France', 140461616, '1,97517E+13', 2, '75106'),
('0751722P', 'Universite Pierre et Marie Curie', 'UPMC', 'Universite', 'Public', 'Ile-de-France>Paris>Paris>Paris 5e', '0', '4 PLACE JUSSIEU', '0', 75252, 'France', 144274427, '1,97517E+13', 3, '75105'),
('0751723R', 'Universite Paris Diderot', '0', 'Universite', 'Public', 'Ile-de-France>Paris>Paris>Paris 13e', '0', '5 RUE THOMAS MANN', '0', 75205, 'France', 144274427, '1,97517E+13', 3, '75113'),
('0751794T', 'ecole francaise d''Extreme-Orient', 'EFEO', 'ecole francaise a  l''etranger', 'Public', 'Ile-de-France>Paris>Paris>Paris 16e', '0', '22 AVENUE DU PRESIDENT WILSON', '0', 75116, 'France', 153701820, '1,80044E+13', 1, '75116'),
('0751871B', 'ecole nationale superieure d''architecture de Paris-Malaquais', 'ENSAPB', 'etablissement superieur d''architecture', 'Public', 'Ile-de-France>Paris>Paris>Paris 6e', '0', '14 RUE BONAPARTE', '0', 75006, 'France', 147035000, '1,80092E+13', 4, '75106'),
('0751877H', 'ecole nationale superieure d''architecture de Paris-Belleville', 'ENSAPB', 'etablissement superieur d''architecture', 'Public', 'Ile-de-France>Paris>Paris>Paris 19e', '0', '60 BOULEVARD DE LA VILLETTE', '0', 75019, 'France', 153385000, '1,97519E+13', 4, '75119'),
('0752139T', 'Facultes Libres de Philosophie et de Psychologie', 'IPC', 'Autre etablissement', 'Prive', 'Ile-de-France>Paris>Paris>Paris 14e', '0', '70 AVENUE DENFERT ROCHEREAU', '0', 75014, 'France', 143353850, '7,75728E+13', 1, '75114'),
('0752559Z', 'Institut national du sport, de l''expertise et de la performance', 'INSEP', 'Grand etablissement relevant d''un autre departement ministeriel', 'Public', 'Ile-de-France>Paris>Paris>Paris 12e', '0', '11 AVENUE DU TREMBLAY', '0', 75012, 'France', 141744100, '1,30011E+13', 4, '75112'),
('0753237L', 'ecole nationale superieure d''arts et metiers', 'ENSAM', 'Grand etablissement', 'Public', 'Ile-de-France>Paris>Paris>Paris 13e', '0', '151 BOULEVARD DE L''HOPITAL', '0', 75013, 'France', 144246299, '1,97535E+13', 3, '75113'),
('0753364Z', 'Institut d''administration des entreprises de Paris', 'IAE de Paris', 'Autre etablissement', 'Public', 'Ile-de-France>Paris>Paris>Paris 5e', '0', '21 RUE BROCA', '0', 75005, 'France', 153552800, '1,975E+13', 1, '75105'),
('0753375L', 'ecole nationale superieure de chimie de Paris', 'ENS Chimie de Paris', 'ecoles nationales superieures d''ingenieurs', 'Public', 'Ile-de-France>Paris>Paris>Paris 5e', '0', '11 RUE PIERRE ET MARIE CURIE', '0', 75231, 'France', 144273821, '1,97534E+13', 2, '75105'),
('0753428U', 'Institut de physique du globe', 'IPG', 'Grand etablissement', 'Public', 'Ile-de-France>Paris>Paris>Paris 5e', '0', '4 PLACE JUSSIEU', '0', 75252, 'France', 144273612, '1,97534E+13', 2, '75105'),
('0753431X', 'Institut d''etudes politiques de Paris', 'IEP de Paris', 'Grand éblissement', 'Public', 'Ile-de-France>Paris>Paris>Paris 7e', '0', '27 RUE SAINT GUILLAUME', '0', 75337, 'France', 145495050, '1,97534E+13', 2, '75107'),
('0753455Y', 'ecole normale superieure de Paris', 'ENS ULM', 'ecole normale superieure', 'Public', 'Ile-de-France>Paris>Paris>Paris 5e', '0', '45 RUE D''ULM', '0', 75230, 'France', 144323111, '1,97535E+13', 3, '75105'),
('0753465J', 'Institut des sciences et industries du vivant et de l''environnement', 'Agro Paris Tech', 'Grand etablissement relevant d''un autre departement ministeriel', 'Public', 'Ile-de-France>Paris>Paris>Paris 5e', '0', '16 RUE CLAUDE BERNARD', '0', 75231, 'France', 144081661, '1,30003E+13', 1, '75105'),
('0753471R', 'Conservatoire national des arts et metiers', 'CNAM', 'Grand etablissement', 'Public', 'Ile-de-France>Paris>Paris>Paris 3e', '0', '292 RUE SAINT MARTIN', '0', 75141, 'France', 140272000, '1,97535E+13', 4, '75103'),
('0753478Y', 'ecole nationale des Chartes', 'ENC', 'Grand etablissement', 'Public', 'Ile-de-France>Paris>Paris>Paris 2e', '0', '65 RUE DE RICHELIEU', '0', 75002, 'France', 155427500, '1,97535E+13', 2, '75102'),
('0753480A', 'College de France', '0', 'Grand etablissement', 'Public', 'Ile-de-France>Paris>Paris>Paris 5e', '0', '11 PLACE MARCELIN BERTHELOT', '0', 75231, 'France', 144271211, '1,97535E+13', 1, '75105'),
('0753486G', 'ecole pratique des hautes etudes', 'EPHE', 'Grand etablissement', 'Public', 'Ile-de-France>Paris>Paris>Paris 14e', '0', '4 RUE FERRUS', '0', 75014, 'France', 153636120, '1,97535E+13', 4, '75114'),
('0753488J', 'Institut national des langues et civilisations orientales', 'INALCO', 'Grand établissement', 'Public', 'Ile-de-France>Paris>Paris>Paris 13e', '0', '65 RUE DES GRANDS MOULINS', '0', 75214, 'France', 181701000, '1,97535E+13', 2, '75113'),
('0753494R', 'Museum national d''histoire naturelle', 'MNHN', 'Grand etablissement', 'Public', 'Ile-de-France>Paris>Paris>Paris 5e', '0', '57 RUE CUVIER', '0', 75005, 'France', 140793000, '1,80044E+13', 4, '75105'),
('0753496T', 'Observatoire de Paris', '0', 'Grand etablissement', 'Public', 'Ile-de-France>Paris>Paris>Paris 14e', '0', '61 AVENUE DE L''OBSERVATOIRE', '0', 75014, 'France', 140512221, '1,97535E+13', 4, '75114'),
('0753541S', 'Institut catholique de Paris', 'ICP', 'etablissement prive d''enseignement universitaire', 'Prive', 'Ile-de-France>Paris>Paris>Paris 6e', '0', '21 RUE D''ASSAS', '0', 75270, 'France', 144395200, '7,84281E+13', 1, '75106'),
('0753559L', 'Institut superieur d''electronique de Paris', 'ISEP', 'ecole d''ingenieurs', 'Prive', 'Ile-de-France>Paris>Paris>Paris 6e', '0', '28 RUE NOTRE DAME DES CHAMPS', '0', 75006, 'France', 149545200, '7,84281E+13', 2, '75106'),
('0753560M', 'ecole d''ingenieurs du monde numerique', 'ESIEA', 'ecole d''ingenieurs', 'Prive', 'Ile-de-France>Paris>Paris>Paris 5e', '0', '9 RUE VESALE', '0', 75005, 'France', 155432323, '3,11349E+13', 3, '75105'),
('0753605L', 'Institut protestant de theologie', 'IPT', 'etablissement prive d''enseignement universitaire', 'Prive', 'Ile-de-France>Paris>Paris>Paris 14e', '0', '83 BOULEVARD ARAGO', '0', 75014, 'France', 143316164, '3,12381E+13', 4, '75114'),
('0753742K', 'ecole des hautes etudes en sciences sociales', 'EHESS', 'Grand etablissement', 'Public', 'Ile-de-France>Paris>Paris>Paris 13e', '0', '190 AVENUE AVENUE DE FRANCE', '0', 75013, 'France', 149542525, '1,97537E+13', 1, '75113'),
('0754493B', 'Institut de management et de communication interculturels', 'ISIT', 'Autre etablissement', 'Prive', 'Ile-de-France>Paris>Paris>Paris 6e', '0', '21 RUE D''ASSAS', '0', 75270, 'France', 142220230, '7,84281E+12', 1, '75106'),
('0755026F', 'Institut national d''histoire de l''art', 'INHA', 'Grand etablissement', 'Public', 'Ile-de-France>Paris>Paris>Paris 2e', '0', '2 RUE VIVIENNE', '0', 75002, 'France', 147038604, '1,97547E+13', 1, '75102'),
('0755574B', 'Sorbonne Universites', '0', 'Communaute d''universites et etablissements', 'Public', 'Ile-de-France>Paris>Paris>Paris 5e', '0', '26, RUE DES FOSSES SAINT-JACQUES', '0', 75005, 'France', 156810840, '0', 1, '75105'),
('0755581J', 'Hautes etudes-Sorbonne-Arts et Metiers', 'HESAM', 'Communaute d''universites et etablissements', 'Public', 'Ile-de-France>Paris>Paris>Paris 5e', '0', '15 RUE SOUFLOT', '0', 75005, 'France', 0, '1,30015E+13', 2, '75105'),
('0755598C', 'Universite Sorbonne Paris Cite', '0', 'Communauté d''universités et établissements', 'Public', 'Ile-de-France>Paris>Paris>Paris 13e', '0', '190 AVENUE DE FRANCE', '0', 75013, 'France', 149548342, '1,30021E+13', 4, '75113'),
('0755661W', 'Institut Mines-Telecom', 'IMT', 'Grand etablissement relevant d''un autre departement ministeriel', 'Public', 'Ile-de-France>Paris>Paris>Paris 13e', '0', '46 RUE BARRAULT', '0', 75634, 'France', 0, '1,80092E+13', 1, '75113'),
('0755698L', 'Universite Paris Lumieres', '0', 'Communaute d''universites et etablissements', 'Public', 'Ile-de-France>Paris>Paris>Paris 4e', '0', '57 RUE DES FRANCS-BOURGEOIS', '0', 75004, 'France', 0, '1,30018E+13', 4, '75104'),
('0755700N', 'Universite de recherche Paris sciences et lettres - PSL Research University', 'PSL', 'Communaute d''universites et etablissements', 'Public', 'Ile-de-France>Paris>Paris>Paris 5e', 'VILLA PASTEUR', '62 BIS RUE GAY LUSSAC', '0', 75005, 'France', 180485918, '1,30017E+13', 2, '75105'),
('0755754X', 'Groupe des ecoles nationales d''economie et statistique', 'GENES', 'Grand etablissement relevant d''un autre departement ministeriel', 'Public', 'Ile-de-France>Paris>Paris>Paris 14e', '0', '18, Boulevard Adolphe Pinard', '0', 75574, 'France', 1, '1,30014E+13', 3, '75114'),
('0755802Z', 'Institut agronomique, veterinaire et forestier de France', 'IAVFF', 'Autre etablissement', 'Public', 'Ile-de-France>Paris>Paris>Paris 16e', '0', '42, rue Scheffer', '0', 75116, 'France', 153702000, '1,30021E+13', 4, '75116'),
('0760165S', 'Institut national des sciences appliquees de Rouen', 'INSA Rouen', 'Instituts et ecoles exterieurs aux universites', 'Public', 'Normandie>Rouen>Seine-Maritime>Saint-etienne-du-Rouvray', '0', 'AVENUE DE L''UNIVERSITE', '0', 76801, 'France', 232959700, '1,97602E+13', 2, '76575'),
('0760166T', 'ecole nationale superieure maritime', 'ENSM', 'Grand etablissement relevant d''un autre departement ministeriel', 'Public', 'Normandie>Rouen>Seine-Maritime>Le Havre', '0', '10 QUAI FRISSARD', '0', 76600, 'France', 235547800, '1,30013E+13', 2, '76351'),
('0760168V', 'ecole de management de Normandie', 'EM Normandie', 'Autre etablissement', 'Prive', 'Normandie>Rouen>Seine-Maritime>Le Havre', '0', '30 RUE DE RICHELIEU', '0', 76087, 'France', 232925999, '7,88375E+13', 3, '76351'),
('0761904G', 'Universite de Rouen', '0', 'Universite', 'Public', 'Normandie>Rouen>Seine-Maritime>Mont-Saint-Aignan', '0', '1 RUE THOMAS BECKET', '138', 76821, 'France', 235146000, '1,97619E+13', 4, '76451'),
('0762762P', 'Universite du Havre', '0', 'Universite', 'Public', 'Normandie>Rouen>Seine-Maritime>Le Havre', '0', '25 RUE PHILIPPE LEBON', '1123', 76063, 'France', 235195500, '1,97628E+13', 1, '76351'),
('0772502B', 'Universite Paris-Est Marne-la-Vallee', 'UPEM', 'Universite', 'Public', 'Ile-de-France>Creteil>Seine-et-Marne>Champs-sur-Marne', '0', '5 BOULEVARD DESCARTES', '0', 77454, 'France', 160957500, '1,99321E+13', 2, '77083'),
('0772517T', 'ecole nationale des ponts et chaussees', 'ENPC', 'Grand etablissement relevant d''un autre departement ministeriel', 'Public', 'Ile-de-France>Creteil>Seine-et-Marne>Champs-sur-Marne', '0', '6 AVENUE B PASCAL CITE DESCARTE', '0', 77420, 'France', 164153000, '1,97535E+13', 1, '77083'),
('0772551E', 'ecole d''architecture de la ville et des territoires a  Marne-la-Vallee', 'ENSA VT', 'etablissement superieur d''architecture', 'Public', 'Ile-de-France>Creteil>Seine-et-Marne>Champs-sur-Marne', '0', '10 AVENUE BLAISE PASCAL', '0', 77420, 'France', 160958400, '1,99322E+13', 3, '77083'),
('0772710C', 'Universite Paris-Est', 'UPE', 'Communaute d''universites et etablissements', 'Public', 'Ile-de-France>Creteil>Seine-et-Marne>Champs-sur-Marne', '0', '6 AVENUE BLAISE PASCAL', '0', 77420, 'France', 160957251, '1,30021E+13', 4, '77083'),
('0781944P', 'Universite de Versailles Saint-Quentin-en-Yvelines', '0', 'Universite', 'Public', 'Ile-de-France>Versailles>Yvelines>Versailles', '0', '55 AVENUE DE PARIS', '0', 78035, 'France', 139257800, '1,97819E+13', 2, '78646'),
('0783664J', 'ecole superieure des techniques aeronautiques et de construction automobile', 'ESTACA', 'ecole d''ingenieurs', 'Prive', 'Ile-de-France>Versailles>Yvelines>Montigny-le-Bretonneux', '0', '12 AVENUE PAUL DELOUVRIER', '0', 78180, 'France', 175645041, '7,8426E+13', 3, '78423'),
('0801344B', 'Universite de Picardie Jules-Verne', 'UPJV', 'Universite', 'Public', 'Hauts-de-France>Amiens>Somme>Amiens', '0', 'CHEMIN DU THIL', '0', 80021, 'France', 322827272, '1,98013E+13', 4, '80021'),
('0811293R', 'Institut national universitaire Jean-FranÃ§ois Champollion', 'INU Albi', 'Autre etablissement', 'Public', 'Occitanie>Toulouse>Tarn>Albi', '0', 'PLACE DE VERDUN', '0', 81012, 'France', 563486400, '1,98112E+13', 2, '81004'),
('0830766G', 'Universite du Sud Toulon - Var', 'USTV', 'Universite', 'Public', 'Provence-Alpes-Cote d''Azur>Nice>Var>La Garde', '0', 'AVENUE DE L''UNIVERSITE', '20132', 83957, 'France', 494142000, '1,98308E+13', 1, '83062'),
('0831458J', 'Institut superieur de l''electronique et du numerique', 'Yncrea Mediterranee', 'ecole d''ingenieurs', 'Prive', 'Provence-Alpes-Cote d''Azur>Nice>Var>Toulon', '0', 'Place GEORGES POMPIDOU', '0', 83000, 'France', 494038950, '3,83387E+13', 2, '83137'),
('0840685N', 'Universite d''Avignon et des Pays de Vaucluse', '0', 'Universite', 'Public', 'Provence-Alpes-Cote d''Azur>Aix-Marseille>Vaucluse>Avignon', '0', '74 RUE LOUIS PASTEUR', '0', 84029, 'France', 490162500, '1,98407E+13', 1, '84007'),
('0851415B', 'Institut catholique d''etudes superieures', 'ICES', 'etablissement prive d''enseignement universitaire', 'Prive', 'Pays de la Loire>Vendee>La Roche-sur-Yon', '0', '17 BOULEVARD DES BELGES', '691', 85017, 'France', 251461213, '3,79204E+13', 3, '85191'),
('0860073M', 'ecole nationale superieure de mecanique et d''aerotechnique de Poitiers', 'ISAE-ENSMA', 'ecoles nationales superieures d''ingenieurs', 'Public', 'Nouvelle-Aquitaine>Poitiers>Vienne>Chasseneuil-du-Poitou', '0', '1 AVENUE CLEMENT ADER TELEPORT 2', '40109', 86961, 'France', 549498080, '1,98601E+13', 4, '86062'),
('0860856N', 'Universite de Poitiers', '0', 'Université', 'Public', 'Nouvelle-Aquitaine>Poitiers>Vienne>Poitiers', '0', '15 RUE DE L''HOTEL DIEU', '0', 86034, 'France', 549453000, '1,98609E+13', 1, '86194'),
('0861420B', 'Universite confederale Leonard de Vinci', '0', 'Communaute d''universites et etablissements', 'Public', 'Nouvelle-Aquitaine>Poitiers>Vienne>Poitiers', '0', '15 RUE DE L''HOTEL DIEU', '0', 86073, 'France', 0, '1,30021E+13', 2, '86194'),
('0870669E', 'Universite de Limoges', '0', 'Universite', 'Public', 'Nouvelle-Aquitaine>Limoges>Haute-Vienne>Limoges', '0', '33 RUE FRANCOIS MITTERAND', '23204', 87032, 'France', 555149154, '1,98707E+13', 1, '87085'),
('0900424X', 'Universite de technologie de Belfort-MontbÃ©liard', 'UTBM', 'Instituts et ecoles exterieurs aux universites', 'Public', 'Bourgogne-Franche-Comte>Besancon>Territoire de Belfort>Sevenans', '0', 'RUE DU CHATEAU', '0', 90400, 'France', 384583000, '1,99004E+13', 3, '90094'),
('0910725U', 'Institut d''Optique Graduate School', 'IOGS', 'Etablissements d''enseignement supérieur privés rattachés à  un EPSCP', 'Privé', 'Ile-de-France>Versailles>Essonne>Palaiseau', 'CAMPUS POLYTECHNIQUE RD 128', '2 AVENUE AUGUSTIN FRESNEL', '0', 91127, 'France', 169358888, '7,84617E+13', 1, '91477'),
('0911101C', 'Universite Paris-Sud', '0', 'Universite', 'Public', 'Ile-de-France>Versailles>Essonne>Orsay', '0', '15 RUE GEORGES CLEMENCEAU', '0', 91405, 'France', 169156750, '1,99111E+13', 1, '91471'),
('0911568K', 'ecole polytechnique', 'X', 'ecole d''ingenieurs', 'Public', 'Ile-de-France>Versailles>Essonne>Palaiseau', '0', 'ROUTE DE SACLAY', '0', 91128, 'France', 169333333, '1,99116E+13', 4, '91477'),
('0911975C', 'Universite d''evry-Val d''Essonne', '0', 'Universite', 'Public', 'Ile-de-France>Versailles>Essonne>Evry', '0', 'BOULEVARD FRANCOIS MITTERRAND', '0', 91025, 'France', 169477000, '1,9912E+13', 4, '91228'),
('0912266U', 'ecole nationale superieure d''informatique pour l''industrie et l''entreprise', 'ENSIIE', 'ecoles nationales superieures d''ingenieurs', 'Public', 'Ile-de-France>Versailles>Essonne>Evry', '0', '1 SQUARE DE LA RESISTANCE', '0', 91025, 'France', 169367320, '1,30002E+13', 3, '91228'),
('0912330N', 'Universite Paris-Saclay', '0', 'Communaute d''universites et etablissements', 'Public', 'Ile-de-France>Versailles>Essonne>Saint-Aubin', 'ESPACE TECHNOLOGIQUE - BÃ‚TIMENT DISCOVERY', 'ROUTE DE L''ORME AUX MERISIERS - RD 128', '0', 91190, 'France', 0, '1,30021E+13', 4, '91538'),
('0912341A', 'CentraleSupelec', 'ECP', 'Grand etablissement', 'Public', 'Ile-de-France>Versailles>Essonne>Gif-sur-Yvette', 'PLATEAU DU MOULON', '3 RUE JOLIOT CURIE', '0', 91192, 'France', 169851212, '1,30021E+13', 4, '91272'),
('0920674H', 'EPF - ecole d''ingenieur-e-s', 'EPF', 'Ecole d''ingénieurs', 'Privé', 'Ile-de-France>Versailles>Essonne>Palaiseau', '0', '3 BIS RUE LAKANAL', '0', 92330, 'France', 141130151, '3,91102E+13', 2, '92071'),
('0921204J', 'Universite Paris Nanterre', '0', 'Universite', 'Public', 'Ile-de-France>Versailles>Hauts-de-Seine>Nanterre', '0', '200 AVENUE DE LA REPUBLIQUE', '0', 92001, 'France', 140977200, '1,99212E+13', 1, '92050'),
('0922605G', 'Institut national superieur de formation et de recherche pour l''education des jeunes handicapes et les enseignements adaptes', 'INS HEA', 'Autre etablissement', 'Public', 'Ile-de-France>Versailles>Hauts-de-Seine>Suresnes', '0', '58 AVENUE DES LANDES', '0', 92150, 'France', 141443100, '1,3E+13', 1, '92073'),
('0930603A', 'Institut superieur de mecanique de Paris', 'Supmeca', 'Instituts et ecoles exterieurs aux universites', 'Public', 'Ile-de-France>Creteil>Seine-Saint-Denis>Saint-Ouen', '0', '3 RUE FERNAND HAINAUT', '0', 93407, 'France', 149452971, '1,99306E+13', 3, '93070'),
('0931238R', 'Universite Paris 13 - Paris Nord', '0', 'Universite', 'Public', 'Ile-de-France>Creteil>Seine-Saint-Denis>Villetaneuse', '0', 'AVENUE JEAN BAPTISTE CLEMENT', '0', 93430, 'France', 149403000, '1,99312E+13', 2, '93079'),
('0931827F', 'Universite Paris 8 - Vincennes - Saint-Denis', '0', 'Universite', 'Public', 'ile-de-France>Creteil>Seine-Saint-Denis>Saint-Denis', '0', '2 RUE DE LA LIBERTE', '0', 93526, 'France', 149406789, '1,99318E+13', 4, '93066'),
('0932066R', 'ecole nationale superieure Louis Lumiere', 'ENSLL', 'Autre etablissement', 'Public', 'Ile-de-France>Creteil>Seine-Saint-Denis>Noisy-le-Grand', '0', 'ALLEE DU PROMONTOIRE', '22', 93161, 'France', 148154010, '1,97507E+13', 1, '93051'),
('0932560C', 'Campus Condorcet', '0', 'Pole de recherche et d''enseignement superieur', 'Public', 'Ile-de-France>Creteil>Seine-Saint-Denis>Saint-Denis', 'c/o Maison Sciences lâ€™homme', '4, rue de la Croix-Faron', '0', 93210, 'France', 1, '1,30016E+13', 2, '93066'),
('0940607Z', 'ecole normale superieure de Cachan', 'ENS de Cachan', 'Ecole normale supérieure', 'Public', 'Ile-de-France>Versailles>Essonne>Palaiseau', '0', '61 AVENUE DU PRESIDENT WILSON', '0', 94230, 'France', 147402000, '1,99406E+13', 2, '94016');
INSERT INTO `etablissement` (`id_etab`, `nom_etab`, `sigle`, `type`, `secteur`, `localisation`, `mention_distri`, `adresse`, `boite_postale`, `code_postale`, `pays`, `tel`, `siret`, `id_admin`, `id_com`) VALUES
('0940608A', 'ecole nationale veterinaire d''Alfort', 'ENVA', 'Etablissement relevant d''un autre département ministériel rattaché à  un EPSCP', 'Public', 'Ile-de-France>Versailles>Essonne>Palaiseau', '0', '7 AVENUE DU GENERAL DE GAULLE', '0', 94704, 'France', 143967100, '1,99406E+13', 3, '94046'),
('0941111X', 'Universite Paris-Est Creteil Val-de-Marne', 'UPEC', 'Universite', 'Public', 'Ile-de-France>Creteil>Val-de-Marne>Creteil', '0', '61 AVENUE DU GENERAL DE GAULLE', '0', 94010, 'France', 145171000, '1,99411E+13', 2, '94028'),
('0941934S', 'ecole d''ingenieur generaliste en informatique et technologies du numerique', 'EFREI', 'ecole d''ingenieurs', 'Prive', 'Ile-de-France>Creteil>Val-de-Marne>Villejuif', '0', '30 AVENUE DE LA REPUBLIQUE', '0', 94800, 'France', 146776467, '3,98898E+13', 4, '94076'),
('0941954N', 'ecole superieure d''ingenieurs des travaux de la construction de Cachan', 'ESITC', 'ecole d''ingenieurs', 'Prive', 'Ile-de-France>Creteil>Val-de-Marne>Cachan', '0', '28 AVENUE DU PRESIDENT WILSON', '0', 94234, 'France', 149085650, '3,94332E+13', 3, '94016'),
('0942340H', 'ecole speciale des travaux publics, du batiment et de l''industrie', 'ESTP', 'Etablissements d''enseignement supérieur privés rattachés à  un EPSCP', 'Privé', 'Ile-de-France>Versailles>Essonne>Palaiseau', '0', '28 AVENUE PDT WILSON', '0', 94230, 'France', 149085650, '3,25002E+13', 3, '94016'),
('0951214D', 'ecole superieure des sciences economiques et commerciales', 'Essec', 'Autre etablissement', 'Prive', 'Ile-de-France>Versailles>Val-d''Oise>Cergy', '0', 'AVENUE BERNARD HIRSCH', '105', 95021, 'France', 134433000, '7,75664E+13', 2, '95127'),
('0951376E', 'ecole nationale superieure de l''electronique et de ses applications de Cergy', 'ENSEA', 'ecoles habilitees Ã  delivrer un diplome d''ingenieur', 'Public', 'Ile-de-France>Versailles>Val-d''Oise>Cergy', '0', '6 AVENUE DU PONCEAU', '0', 95014, 'France', 130736220, '1,99514E+13', 3, '95127'),
('0951623Y', 'ecole internationale des sciences du traitement de l''information', 'EISTI', 'etablissements d''enseignement superieur prives rattaches a  un EPSCP', 'Prive', 'Ile-de-France>Versailles>Val-d''Oise>Cergy', '0', '2 AVENUE DU PARC', '0', 95011, 'France', 134251010, '3,28582E+13', 2, '95127'),
('0951793H', 'Universite de Cergy-Pontoise', '0', 'Universite', 'Public', 'Ile-de-France>Versailles>Val-d''Oise>Cergy', '0', '33 BOULEVARD DU PORT', '220', 95011, 'France', 134256000, '1,99518E+13', 1, '95127'),
('0951808Z', 'ecole d''ingenieur d''agro-developpement international', 'ISTOM', 'ecole d''ingenieurs', 'Prive', 'Ile-de-France>Versailles>Val-d''Oise>Cergy', '0', '32 BOULEVARD DU PORT', '0', 95094, 'France', 130756260, '7,84281E+13', 3, '95127'),
('0951820M', 'ecole de biologie industrielle', 'EBI', 'ecole d''ingenieurs', 'Prive', 'Ile-de-France>Versailles>Val-d''Oise>Cergy', '0', '32 BOULEVARD DU PORT', '0', 95094, 'France', 130756250, '3,88592E+13', 2, '95127'),
('0952198Y', 'Institut polytechnique Grand Paris', 'IPGP', 'Communauté d''universités et établissements', 'Public', 'Ile-de-France>Versailles>Essonne>Palaiseau', '0', '6 AVENUE DU PONCEAU', '0', 95014, 'France', 0, '1,30022E+13', 2, '95127'),
('0952199Z', 'Universite Paris-Seine', '0', 'Communaute d''universites et etablissements', 'Public', 'Ile-de-France>Versailles>Val-d''Oise>Cergy', '0', '1 AVENUE BERNARD HIRSCH', '0', 95021, 'France', 139242047, '1,30016E+13', 1, '95127'),
('7200664J', 'Universite de Corse Pasquale Paoli', '0', 'Universite', 'Public', 'Corse>Haute-Corse>Corte', '0', '7 AVENUE J NICOLI', '52', 20250, 'France', 495450000, '1,92027E+13', 2, '2B096'),
('9760358K', 'Centre Universitaire de Mayotte', 'CU de Mayotte', 'Autre etablissement', 'Public', 'Mayotte>Dembeni', '0', 'ROUTE NATIONALE 3', '53', 97660, 'France', 0, '1,30016E+13', 1, '97607'),
('9830445S', 'Universite de la Nouvelle-Caledonie', '0', 'Universite', 'Public', 'Collectivites d''outre-mer>Nouvelle-Caledonie>Nouvelle-Caledonie>Noumea', '0', '145 AVENUE JAMES COOK', 'R4', 98851, 'France', 687265800, '1,30003E+13', 1, '98818');

-- --------------------------------------------------------

--
-- Structure de la table `habite`
--

CREATE TABLE IF NOT EXISTS `habite` (
  `id_utilisateur` int(11) NOT NULL,
  `id_com` varchar(25) NOT NULL,
  PRIMARY KEY (`id_utilisateur`,`id_com`),
  KEY `FK_habite_id_com` (`id_com`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `habite`
--


-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `id_reg` varchar(25) NOT NULL,
  `nom_reg` text NOT NULL,
  PRIMARY KEY (`id_reg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `region`
--

INSERT INTO `region` (`id_reg`, `nom_reg`) VALUES
('R00', 'Collectivites d''outre-mer'),
('R01', 'Guadeloupe'),
('R03', 'Guyane'),
('R04', 'La Reunion'),
('R06', 'Mayotte'),
('R11', 'Ile-de-France'),
('R24', 'Centre-Val de Loire'),
('R27', 'Bourgogne-Franche-Comte'),
('R28', 'Normandie'),
('R32', 'Hauts-de-France'),
('R34', 'Languedoc-Roussillon'),
('R44', 'Grand Est'),
('R52', 'Pays de la Loire'),
('R53', 'Bretagne'),
('R75', 'Nouvelle-Aquitaine'),
('R76', 'Occitanie'),
('R84', 'Auvergne-Rhone-Alpes'),
('R93', 'Provence-Alpes-Cote d''Azur'),
('R94', 'Corse'),
('R99', 'Etranger');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text,
  `prenom` text,
  `adresse` text,
  `tel` bigint(20) DEFAULT NULL,
  `age` text,
  `sexe` text,
  `email` varchar(100) NOT NULL,
  `mot_passe` varchar(100) NOT NULL,
  PRIMARY KEY (`id_utilisateur`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom`, `prenom`, `adresse`, `tel`, `age`, `sexe`, `email`, `mot_passe`) VALUES
(1, 'camara', 'Laye', 'comedie', 604530213, '22', 'Masculin', 'camaralaye@yahoo.fr', '123456'),
(2, 'camara', 'Laye', 'comedie', 604530213, '22', 'Masculin', 'camaralaye@yahoo.fr', '123456'),
(3, 'Barry', 'Abdoulaye', 'Toulouse', 104050810, '20', 'Masculin', 'barry@yahoo.fr', '12'),
(4, 'Bah', 'Alhassane', 'tonnelle', 102356324, '20', 'Masculin', 'bah@gmail.com', '123');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `appartien`
--
ALTER TABLE `appartien`
  ADD CONSTRAINT `FK_appartien_id_association` FOREIGN KEY (`id_association`) REFERENCES `association` (`id_association`),
  ADD CONSTRAINT `FK_appartien_id_etab` FOREIGN KEY (`id_etab`) REFERENCES `etablissement` (`id_etab`);

--
-- Contraintes pour la table `choisi`
--
ALTER TABLE `choisi`
  ADD CONSTRAINT `FK_choisi_id_etab` FOREIGN KEY (`id_etab`) REFERENCES `etablissement` (`id_etab`),
  ADD CONSTRAINT `FK_choisi_id_utilisateur` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `commune`
--
ALTER TABLE `commune`
  ADD CONSTRAINT `FK_commune_id_depar` FOREIGN KEY (`id_depar`) REFERENCES `departement` (`id_depar`);

--
-- Contraintes pour la table `departement`
--
ALTER TABLE `departement`
  ADD CONSTRAINT `FK_departement_id_reg` FOREIGN KEY (`id_reg`) REFERENCES `region` (`id_reg`);

--
-- Contraintes pour la table `etablissement`
--
ALTER TABLE `etablissement`
  ADD CONSTRAINT `FK_etablissement_id_admin` FOREIGN KEY (`id_admin`) REFERENCES `administrateur` (`id_admin`),
  ADD CONSTRAINT `FK_etablissement_id_com` FOREIGN KEY (`id_com`) REFERENCES `commune` (`id_com`);

--
-- Contraintes pour la table `habite`
--
ALTER TABLE `habite`
  ADD CONSTRAINT `FK_habite_id_com` FOREIGN KEY (`id_com`) REFERENCES `commune` (`id_com`),
  ADD CONSTRAINT `FK_habite_id_utilisateur` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);
