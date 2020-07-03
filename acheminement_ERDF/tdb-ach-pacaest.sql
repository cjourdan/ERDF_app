-- phpMyAdmin SQL Dump
-- version 4.1.9
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 02 Octobre 2015 à 16:57
-- Version du serveur :  5.1.73
-- Version de PHP :  5.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `tdb-ach-pacaest`
--

-- --------------------------------------------------------

--
-- Structure de la table `accompagnement`
--

CREATE TABLE IF NOT EXISTS `accompagnement` (
  `id_accompagnement` tinyint(2) NOT NULL AUTO_INCREMENT,
  `Nom_Accompagnement` text NOT NULL,
  `Commentaires` text NOT NULL,
  `date` date NOT NULL,
  `date_de_realisation` date NOT NULL,
  `id_agent` tinyint(2) NOT NULL,
  `id_formation` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_accompagnement`),
  KEY `id_formation` (`id_formation`),
  KEY `id_agent` (`id_agent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Contenu de la table `accompagnement`
--

INSERT INTO `accompagnement` (`id_accompagnement`, `Nom_Accompagnement`, `Commentaires`, `date`, `date_de_realisation`, `id_agent`, `id_formation`) VALUES
(1, 'ACCOMPAGNEMENT Ligne1', '', '0000-00-00', '0000-00-00', 2, 1),
(3, 'ACCOMPAGNEMENT LINKY FRONT-OFFICE', ' ', '0000-00-00', '0000-00-00', 4, 3),
(4, 'ACCOMPAGNEMENT HOT LINE PNT', ' ', '0000-00-00', '0000-00-00', 4, 4),
(5, 'ACCOMPAGNEMENT DISTRERE PRE-102', ' ', '0000-00-00', '0000-00-00', 5, 5),
(6, 'ACCOMPAGNEMENT DISTRERE PRE-102', ' ', '0000-00-00', '0000-00-00', 6, 6),
(7, 'ACCOMPAGNEMENT DISTRERE PRE-102', ' ', '0000-00-00', '0000-00-00', 7, 7),
(8, 'ACCOMPAGNEMENT DISTRERE PRE-102', ' ', '0000-00-00', '0000-00-00', 8, 8),
(9, 'ACCOMPAGNEMENT DISTRERE 102', ' ', '0000-00-00', '0000-00-00', 9, 9),
(10, 'ACCOMPAGNEMENT MAIL QUALITE', ' ', '0000-00-00', '0000-00-00', 10, 10),
(11, 'ACCOMPAGNEMENT SGE', ' ', '0000-00-00', '0000-00-00', 11, 11),
(15, 'ACCOMPAGNEMENT RAF', ' ', '0000-00-00', '0000-00-00', 15, 15),
(18, 'ACCOMPAGNEMENT PAGODE', ' ', '0000-00-00', '0000-00-00', 18, 18),
(28, 'Baldini 102', 'mise à niveau', '2015-07-10', '2015-07-20', 2, 9),
(29, 'AD CONTI', '', '1970-01-01', '1970-01-01', 15, 2),
(30, 'ACCOMPAGNEMENT K1', 'nécessité faire montée en compétences', '2015-07-30', '1970-01-01', 2, 14),
(33, 'ACCOMPAGNEMENT SOLDE SGE', 'nécessité de renforcer notre potentiel sur SOLDE SGE', '1970-01-01', '1970-01-01', 2, 12),
(34, 'ACCOMPAGNEMENT SOLDE SGE', 'nécessité de renforcer le potentiel SOLDE SGE', '2015-07-30', '1970-01-01', 2, 12),
(35, 'ACCOMPAGNEMENT SOLDE SGE', 'nécessité de renforcer le potentiel SOLDE SGE', '2015-07-30', '1970-01-01', 2, 12),
(37, 'ACCOMPAGNEMENT RECLAMATION', 'besoin de renforcer notre potentiel salariés en mesure de traiter les réclamations', '2015-06-30', '1970-01-01', 2, 17),
(38, 'ACCOMPAGNEMENT BO RAF', '', '1970-01-01', '1999-01-01', 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

CREATE TABLE IF NOT EXISTS `activite` (
  `id_activite` tinyint(2) NOT NULL AUTO_INCREMENT,
  `Nom_Activite` text NOT NULL,
  PRIMARY KEY (`id_activite`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=84 ;

--
-- Contenu de la table `activite`
--

INSERT INTO `activite` (`id_activite`, `Nom_Activite`) VALUES
(1, '1° MES'),
(2, 'Accompagnement'),
(3, 'Analyse Rebonds'),
(4, 'B.O. RAF'),
(5, 'B.O. RECLA'),
(6, 'Cartes T'),
(7, 'Chantier Divers'),
(8, 'Conférence Téléphonique'),
(9, 'Courrier'),
(10, 'Distrère 102'),
(11, 'Distrère pré102'),
(12, 'Débordement LAD'),
(13, 'E-Learning'),
(14, 'EAAP (EAAP)'),
(15, 'Ecole'),
(16, 'Exp Métier Distrere'),
(17, 'Exp Métier K1'),
(18, 'Exp Métier Raf'),
(19, 'Exp Métier Récla'),
(20, 'Exp Métier SGE'),
(21, 'Formation Distrere'),
(22, 'Formation Ligne 1'),
(23, 'Formation Ligne 4'),
(24, 'Formation K1'),
(25, 'Formation LAD'),
(26, 'Formation Pre102'),
(27, 'Formation RAF'),
(28, 'Formation SGE'),
(29, 'Formation Div'),
(31, 'Guichet Valid'),
(32, 'Hho Elec'),
(33, 'IA'),
(34, 'Injection RAF'),
(35, 'Innovation'),
(38, 'K1'),
(39, 'Ligne 1 (L1)'),
(40, 'Ligne 4'),
(41, 'Ligne 6'),
(42, 'Ligne AD'),
(43, 'Ligne CAD'),
(44, 'LPNT (LPNT)'),
(45, 'LPNT SGE (LPNTS)'),
(46, 'LPNT Valid'),
(47, 'LPNT K1'),
(48, 'L9 AM'),
(49, 'L9 VAR'),
(50, 'Mail AD'),
(51, 'Mail Boîte ACH'),
(52, 'Mails Boîte qualité'),
(53, 'Pagode'),
(54, 'PANNE'),
(55, 'PPV'),
(56, 'Projet apprenti'),
(57, 'Point Etape'),
(58, 'RAF'),
(59, 'Relance ODIGO'),
(60, 'Réclas SGE'),
(61, 'Réunion'),
(62, 'Réunion Equipe'),
(63, 'Réunion extérieure'),
(64, 'Réquisitions'),
(65, 'Suivi M018'),
(66, 'S6'),
(67, 'SAF/REL'),
(68, 'SGE'),
(69, 'Solde SGE & M002 d''Annulation'),
(70, 'Valid RAF (V.RAF)'),
(71, 'Visite Médicale'),
(72, 'AA Liste de gestion'),
(73, 'L9'),
(74, 'Appels sortants'),
(75, 'BO AD'),
(76, 'Autres'),
(77, 'GC144'),
(78, 'Recla M009'),
(79, 'LINKY'),
(80, 'Support client LINKY'),
(81, 'Support client LINKY BO'),
(82, 'Expertise'),
(83, 'Formateur Ginko');

-- --------------------------------------------------------

--
-- Structure de la table `agent`
--

CREATE TABLE IF NOT EXISTS `agent` (
  `id_agent` tinyint(2) NOT NULL AUTO_INCREMENT,
  `id_equipe` tinyint(2) NOT NULL,
  `NNI` text NOT NULL,
  `Nom_Agent` text NOT NULL,
  `Surnom` text NOT NULL,
  `Email` text NOT NULL,
  `id_profil` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_agent`),
  KEY `id_equipe` (`id_equipe`),
  KEY `id_profil` (`id_profil`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=93 ;

--
-- Contenu de la table `agent`
--

INSERT INTO `agent` (`id_agent`, `id_equipe`, `NNI`, `Nom_Agent`, `Surnom`, `Email`, `id_profil`) VALUES
(1, 7, 'g79811', 'FEDERZONI Serge', 'FEDERZONI Serge', '', 1),
(2, 1, 'B78142', 'BALDINI Frédéric', 'BALDINI Frédéric', '', 3),
(4, 2, 'D27620', 'BELLEVILLE Muriel', 'BELLEVILLE Muriel', '', 3),
(6, 5, 'a04153', 'CALCAVECCHIA Amandine', 'CALCAVECCHIA Amandine', '', 3),
(7, 5, 'G79870', 'CALLINI Mathilde', 'CALLINI Mathilde', '', 3),
(8, 1, 'd97947', 'CAMPOY Béatrice', 'CAMPOY Béatrice', '', 3),
(9, 2, 'H64755', 'CANAVESIO Julie', 'CANAVESIO Julie', '', 3),
(10, 4, 'D94651', 'CASIMIR David', 'CASIMIR David', '', 3),
(11, 2, 'D54111', 'CAU ANTOINE', 'CAU Antoine', '', 3),
(12, 4, 'j69073', 'CHERECHES Laetitia', 'CHERECHES Laetitia', '', 3),
(13, 3, 'f23929', 'CHIANEA Mireille', 'CHIANEA Mireille', '', 3),
(14, 1, 'G54811', 'COLE-CIANFARANI Marie-Josée', 'COLE-CIANFARANI Marie-Josée', '', 3),
(15, 4, 'D52274', 'CONTI Estelle', 'CONTI Estelle', '', 3),
(16, 1, 'AC06293S', 'CORNIL Aléxia', 'CORNIL Aléxia', '', 3),
(17, 2, 'B52827', 'DARDALHON Valérie', 'DARDALHON Valérie', '', 3),
(18, 1, 'd85955', 'DAUMIN Dominique', 'DAUMIN Dominique', '', 3),
(22, 2, 'F77302', 'DI-GIANDOMENICO Nathalie', 'DI-GIANDOMENICO Nathalie', '', 3),
(23, 1, 'd95140', 'DI MICELI Martine', 'DI MICELI Martine', '', 2),
(24, 3, 'E86740', 'DUBOISSET Christine', 'DUBOISSET Christine', '', 3),
(25, 4, 'B62774', 'ETZI Julie', 'ETZI Julie', '', 3),
(26, 5, 'A43434', 'FECHINO Jean Bruno', 'FECHINO Jean Bruno', '', 3),
(27, 3, 'a79911', 'FERRER Marie-Line', 'FERRER Marie-Line', '', 3),
(28, 5, 'j59111', 'FRONTERO Marie-Laure', 'FRONTERO Marie-Laure', '', 3),
(29, 1, 'B47102', 'GERBENS Franck', 'GERBENS Franck', '', 3),
(30, 5, 'd47202', 'GERBENS Mylène', 'GERBENS Mylène', '', 3),
(31, 7, 'A79346', 'GIOVANNELLI Didier', 'GIOVANNELLI Didier', '', 1),
(33, 5, 'G93957', 'HERAIL Charlène', 'HERAIL Charlène', '', 3),
(35, 3, 'f82140', 'JIGUET Sandrine', 'JIGUET Sandrine', '', 3),
(37, 3, 'D20212', 'LA SPESA Martine', 'LA SPESA Martine', '', 3),
(38, 5, 'J62974', 'LANEYRIE Marion', 'LANEYRIE Marion', '', 3),
(39, 4, 'F96645', 'LEMPEREUR Patricia', 'LEMPEREUR Patricia', '', 3),
(40, 4, 'J65557', 'LOPEZ Flora', 'LOPEZ Flora', '', 3),
(42, 4, 'H60819', 'LUSTEAU Sylvie', 'LUSTEAU Sylvie', '', 3),
(43, 5, 'E45011', 'LUXI Michel', 'LUXI Michel', '', 3),
(44, 4, 'E84622', 'MAGNAN Agnes', 'MAGNAN Agnes', '', 3),
(46, 8, 'F78570', 'MARTIN Vanessa', 'MARTIN Vanessa', '', 2),
(47, 5, 'b15556', 'MASSON Valérie', 'MASSON VALERIE', '', 3),
(48, 2, 'c94311', 'MICHELOTTI Magali', 'MICHELOTTI Magali', '', 3),
(49, 2, 'mm0e53cn', 'MOHAMED Mrahati', 'MOHAMED Mrahati', '', 3),
(50, 3, 'E50642', 'MORLOT Sabine', 'MORLOT Sabine', '', 3),
(51, 4, 'F66038', 'MSIHID Manuel', 'MSIHID Manuel', '', 3),
(53, 1, 'D76347', 'OURGIAS Nathalie', 'OURGIAS Nathalie', '', 3),
(54, 2, 'a06211', 'ROBECCHI Rodolphe', 'ROBECCHI Rodolphe', '', 3),
(55, 3, 'H56111', 'SGRO  Patricia', 'SGRO  Patricia', '', 3),
(56, 4, 'G45172', 'SILVA Julia', 'SILVA Julia', '', 3),
(57, 1, 'h54332', 'SOGORB Frédéric', 'SOGORB Frédéric', '', 3),
(58, 3, 'F08646', 'TOBLET Jacques', 'TOBLET Jacques', '', 3),
(59, 4, 'c95675', 'TRAVERS Fabienne', 'TRAVERS Fabienne', '', 3),
(60, 5, 'G73374', 'VASSEUX Annette', 'VASSEUX Annette', '', 3),
(61, 4, 'f47271', 'VILAIN Benoit', 'VILAIN Benoit', '', 3),
(62, 1, 'J15229', 'VISSIO Jean Jacques', 'VISSIO Jean Jacques', '', 3),
(63, 5, 'D79355', 'WINSBACK Soria', 'WINSBACK Soria', '', 3),
(65, 8, 'j99511', 'MALFATTO Marc', 'MALFATTO Marc', '', 2),
(66, 2, 'F17732', 'CHEMIN Elisabeth', 'CHEMIN Elisabeth', '', 3),
(67, 2, 'KH166ean', 'HAMILA Karima', 'HAMILA Karima', '', 3),
(68, 2, 'LV1635FN', 'VENDOMMELE Laetitia', 'VENDOMMELE Laetitia', '', 3),
(69, 5, 'c37975', 'MELIN Valérie', 'MELIN Valérie', '', 3),
(70, 4, 'JC16FC2N', 'CHIERA Jocelyne', 'CHIERA Jocelyne', '', 3),
(71, 3, 'E37075', 'MOUZAOUI Fadela', 'MOUZAOUI Fadela', '', 3),
(72, 1, 'D91100', 'RINGOT Marie-Claire', 'RINGOT Marie-Claire', '', 3),
(73, 2, 'I08275', 'DUSSOL Stéphanie', 'DUSSOL-BAKOWSKI Stéphanie', '', 3),
(74, 2, 'F17732', 'CHEMIN Paloma', 'CHEMIN Paloma', '', 3),
(75, 5, 'G25311', 'IRLES Corinne', 'IRLES Corinne', '', 3),
(76, 5, 'D79355', 'OUENDJELLI Soria', 'OUENDJELLI Soria', '', 3),
(77, 1, 'E76347', 'PETTAVINO Nathalie', 'PETTAVINO Nathalie', '', 3),
(78, 3, 'D83347', 'PLUMET Murielle', 'PLUMET Murielle', '', 3),
(80, 2, 'MS27DE5N', 'SAVREUX AUGUSTIN Mélanie', 'SAVREUX AUGUSTIN Mélanie', '', 3),
(82, 1, 'H99511', 'GILETTI Véronique', 'GILETTI Véronique', '', 2),
(83, 2, 'G62946', 'PORAY Diane', 'PORAY Diane', '', 2),
(84, 3, 'E29321', 'DRAGON Véronique', 'DRAGON Véronique', '', 2),
(85, 4, 'G79411', 'DENANOT Jocelyne', 'DENANOT Jocelyne', '', 2),
(87, 8, 'H58637', 'ZACCHARELLI David', 'ZACCHARELLI David', '', 2),
(88, 7, 'D42947', 'MILCENT Eric', 'MILCENT Eric', '', 1),
(89, 7, 'I17529', 'TAULANNE Anne Marie', 'TAULANNE Anne Marie', '', 1),
(90, 8, 'C44911', 'CASAZZA Françoise', 'CASAZZA Françoise', '', 2),
(91, 2, 'WEB-PC', 'PC Serveur', 'Web pc', '', 1),
(92, 8, 'F10212', 'RAINA Marie Line', 'RAINA Marie Line', '', 2);

-- --------------------------------------------------------

--
-- Structure de la table `archive_accompagnement`
--

CREATE TABLE IF NOT EXISTS `archive_accompagnement` (
  `id_archive_accompagnement` int(30) NOT NULL AUTO_INCREMENT,
  `id_accompagnement` tinyint(2) NOT NULL,
  `Nom_Accompagnement` text NOT NULL,
  `Commentaires` text NOT NULL,
  `date` date NOT NULL,
  `date_de_realisation` date NOT NULL,
  `id_agent` tinyint(2) NOT NULL,
  `id_formation` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_archive_accompagnement`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `archive_accompagnement`
--

INSERT INTO `archive_accompagnement` (`id_archive_accompagnement`, `id_accompagnement`, `Nom_Accompagnement`, `Commentaires`, `date`, `date_de_realisation`, `id_agent`, `id_formation`) VALUES
(1, 25, 'Marc', 'a faire par le chef', '2016-07-28', '1970-01-01', 2, 13),
(2, 50, 'ACCOMPAGNEMENT BO RAF', 'TEST', '1970-01-01', '1970-01-01', 2, 31),
(3, 50, 'ACCOMPAGNEMENT BO RAF', 'TEST', '1970-01-01', '1970-01-01', 2, 9),
(4, 51, 'ACCOMPAGNEMENT BO RAF', 'TEST', '1970-01-01', '1970-01-01', 17, 14),
(5, 39, 'ACCOMPAGNEMENT BO RAF', 'TEST', '1970-01-01', '1970-01-01', 10, 4),
(6, 40, 'ACCOMPAGNEMENT BO RAF', 'TEST', '1970-01-01', '1970-01-01', 15, 4),
(7, 39, 'ACCOMPAGNEMENT BO RAF', 'TEST', '1970-01-01', '1970-01-01', 16, 5),
(8, 39, 'ACCOMPAGNEMENT BO RAF', 'TEST', '1970-01-01', '1970-01-01', 74, 31);

-- --------------------------------------------------------

--
-- Structure de la table `archive_activite`
--

CREATE TABLE IF NOT EXISTS `archive_activite` (
  `id_archive_activite` int(30) NOT NULL AUTO_INCREMENT,
  `id_activite` tinyint(2) NOT NULL,
  `Nom_Activite` text NOT NULL,
  PRIMARY KEY (`id_archive_activite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `archive_agent`
--

CREATE TABLE IF NOT EXISTS `archive_agent` (
  `id_archive_agent` int(30) NOT NULL AUTO_INCREMENT,
  `id_agent` tinyint(2) NOT NULL,
  `id_equipe` tinyint(2) NOT NULL,
  `NNI` text NOT NULL,
  `Nom_Agent` text NOT NULL,
  `Surnom` text NOT NULL,
  `Email` text NOT NULL,
  `Profil` text NOT NULL,
  PRIMARY KEY (`id_archive_agent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `archive_agent`
--

INSERT INTO `archive_agent` (`id_archive_agent`, `id_agent`, `id_equipe`, `NNI`, `Nom_Agent`, `Surnom`, `Email`, `Profil`) VALUES
(1, 19, 2, 'i67500', 'DEMORY Hubert', 'DEMORY Hubert', '', ''),
(2, 45, 5, 'i99611', 'MARE Dolores', 'MARE Dolores', '', ''),
(3, 20, 5, 'h91054', 'DESROSES Nathalie', 'DESROSES Nathalie', '', ''),
(4, 81, 5, 'I00012', 'MIGLIORE Alain', 'MIGLIORE Alain', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `archive_equipe`
--

CREATE TABLE IF NOT EXISTS `archive_equipe` (
  `id_archive_equipe` int(30) NOT NULL AUTO_INCREMENT,
  `id_equipe` tinyint(2) NOT NULL,
  `Nom_Equipe` text NOT NULL,
  PRIMARY KEY (`id_archive_equipe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `archive_formation`
--

CREATE TABLE IF NOT EXISTS `archive_formation` (
  `id_archive_formation` int(30) NOT NULL AUTO_INCREMENT,
  `id_formation` tinyint(2) NOT NULL,
  `Nom_Formation` text NOT NULL,
  `date_de_prevue` date NOT NULL,
  `date_de_realisation` date NOT NULL,
  `Commentaires` text NOT NULL,
  `id_agent` tinyint(2) NOT NULL,
  `id_module` tinyint(2) NOT NULL,
  `id_sous_activite` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_archive_formation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `archive_formation`
--

INSERT INTO `archive_formation` (`id_archive_formation`, `id_formation`, `Nom_Formation`, `date_de_prevue`, `date_de_realisation`, `Commentaires`, `id_agent`, `id_module`, `id_sous_activite`) VALUES
(1, 59, 'FORMATION AD BACK-OFFICE', '2015-10-10', '2015-10-30', '', 14, 10, 19),
(2, 60, 'FORMATION AD BACK-OFFICE', '2015-10-10', '2015-10-30', '', 14, 10, 19),
(3, 44, 'FORMATION AD BACK-OFFICE', '2015-10-10', '2015-10-30', '', 17, 18, 23),
(4, 36, 'FORMATION HOT LINE PNT', '2015-10-10', '1970-01-01', '', 63, 4, 16),
(5, 45, 'FORMATION AD BACK-OFFICE', '2015-10-10', '2015-10-30', '', 17, 18, 23),
(6, 46, 'FORMATION AD BACK-OFFICE', '2015-10-10', '2015-10-30', '', 17, 18, 23),
(7, 47, 'FORMATION AD BACK-OFFICE', '2015-10-10', '2015-10-30', '', 17, 18, 23),
(8, 16, 'FORMATION BO RAF', '0000-00-00', '0000-00-00', '', 16, 16, 15),
(9, 37, 'FORMATION AD BACK-OFFICE', '2015-10-10', '2015-10-20', '', 15, 16, 29),
(10, 38, 'FORMATION AD BACK-OFFICE', '2015-10-10', '2015-10-20', '', 15, 16, 29),
(11, 39, 'FORMATION AD BACK-OFFICE', '2015-10-10', '2015-10-20', '', 15, 16, 29),
(12, 90, 'FORMATION AD BACK-OFFICE', '2015-10-10', '2015-10-25', '', 15, 10, 10),
(13, 13, 'FORMATION AD BACK-OFFICE', '0000-00-00', '0000-00-00', '', 13, 13, 2);

-- --------------------------------------------------------

--
-- Structure de la table `archive_module`
--

CREATE TABLE IF NOT EXISTS `archive_module` (
  `id_archive_module` int(30) NOT NULL AUTO_INCREMENT,
  `id_module` tinyint(2) NOT NULL,
  `Nom_Module` text NOT NULL,
  PRIMARY KEY (`id_archive_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `archive_sous_activite`
--

CREATE TABLE IF NOT EXISTS `archive_sous_activite` (
  `id_archive_sous_activite` int(30) NOT NULL AUTO_INCREMENT,
  `id_sous_activite` tinyint(2) NOT NULL,
  `Nom_Sous_Activite` text NOT NULL,
  `id_activite` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_archive_sous_activite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `archive_sous_module`
--

CREATE TABLE IF NOT EXISTS `archive_sous_module` (
  `id_archive_sous_module` int(30) NOT NULL AUTO_INCREMENT,
  `id_sous_module` tinyint(2) NOT NULL,
  `Nom_Sous_Module` text NOT NULL,
  `id_sous_activite` text NOT NULL,
  `id_module` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_archive_sous_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `competence`
--

CREATE TABLE IF NOT EXISTS `competence` (
  `id_competence` int(30) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `id_agent` tinyint(2) NOT NULL,
  `id_sous_activite` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_competence`),
  KEY `id_agent` (`id_agent`),
  KEY `id_sous_activite` (`id_sous_activite`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4373 ;

--
-- Contenu de la table `competence`
--

INSERT INTO `competence` (`id_competence`, `date`, `id_agent`, `id_sous_activite`) VALUES
(14, '0000-00-00', 4, 16),
(15, '0000-00-00', 4, 18),
(16, '0000-00-00', 4, 31),
(18, '0000-00-00', 6, 22),
(19, '0000-00-00', 6, 5),
(20, '0000-00-00', 6, 7),
(21, '0000-00-00', 6, 12),
(24, '0000-00-00', 6, 18),
(25, '0000-00-00', 6, 31),
(26, '0000-00-00', 6, 48),
(46, '0000-00-00', 9, 2),
(47, '0000-00-00', 9, 7),
(48, '0000-00-00', 9, 8),
(49, '0000-00-00', 9, 29),
(50, '0000-00-00', 9, 18),
(51, '0000-00-00', 9, 19),
(52, '0000-00-00', 9, 51),
(54, '0000-00-00', 9, 23),
(55, '0000-00-00', 9, 30),
(56, '0000-00-00', 9, 54),
(57, '0000-00-00', 9, 48),
(58, '0000-00-00', 10, 16),
(60, '0000-00-00', 10, 31),
(61, '0000-00-00', 10, 54),
(62, '0000-00-00', 10, 45),
(63, '0000-00-00', 11, 16),
(64, '0000-00-00', 11, 18),
(65, '0000-00-00', 11, 31),
(66, '0000-00-00', 11, 22),
(67, '0000-00-00', 74, 12),
(68, '0000-00-00', 74, 31),
(69, '0000-00-00', 12, 51),
(71, '0000-00-00', 12, 23),
(72, '0000-00-00', 12, 22),
(81, '0000-00-00', 14, 18),
(82, '0000-00-00', 14, 19),
(83, '0000-00-00', 14, 51),
(85, '0000-00-00', 14, 23),
(86, '0000-00-00', 14, 53),
(87, '0000-00-00', 14, 29),
(88, '0000-00-00', 14, 31),
(89, '0000-00-00', 15, 31),
(90, '0000-00-00', 15, 51),
(93, '0000-00-00', 16, 2),
(94, '0000-00-00', 16, 16),
(95, '0000-00-00', 16, 31),
(96, '0000-00-00', 16, 54),
(97, '0000-00-00', 16, 44),
(98, '0000-00-00', 16, 22),
(99, '0000-00-00', 16, 48),
(100, '0000-00-00', 17, 18),
(101, '0000-00-00', 17, 19),
(102, '0000-00-00', 17, 51),
(104, '0000-00-00', 17, 23),
(105, '0000-00-00', 17, 29),
(106, '0000-00-00', 17, 31),
(107, '0000-00-00', 17, 54),
(108, '0000-00-00', 18, 16),
(109, '0000-00-00', 18, 17),
(110, '0000-00-00', 18, 31),
(111, '0000-00-00', 18, 45),
(113, '0000-00-00', 22, 18),
(114, '0000-00-00', 22, 31),
(115, '0000-00-00', 22, 54),
(116, '0000-00-00', 22, 44),
(117, '0000-00-00', 22, 45),
(118, '0000-00-00', 22, 48),
(131, '0000-00-00', 24, 2),
(132, '0000-00-00', 24, 7),
(133, '0000-00-00', 24, 8),
(134, '0000-00-00', 24, 22),
(135, '0000-00-00', 24, 12),
(137, '0000-00-00', 24, 18),
(138, '0000-00-00', 24, 31),
(139, '0000-00-00', 24, 54),
(140, '0000-00-00', 24, 48),
(141, '0000-00-00', 73, 18),
(142, '0000-00-00', 25, 2),
(143, '0000-00-00', 25, 18),
(144, '0000-00-00', 25, 51),
(146, '0000-00-00', 26, 55),
(147, '0000-00-00', 26, 2),
(148, '0000-00-00', 26, 22),
(149, '0000-00-00', 26, 5),
(151, '0000-00-00', 26, 16),
(152, '0000-00-00', 26, 18),
(153, '0000-00-00', 26, 31),
(154, '0000-00-00', 26, 45),
(155, '0000-00-00', 26, 48),
(156, '0000-00-00', 27, 11),
(157, '0000-00-00', 27, 12),
(158, '0000-00-00', 27, 13),
(159, '0000-00-00', 27, 2),
(160, '0000-00-00', 27, 22),
(161, '0000-00-00', 27, 18),
(162, '0000-00-00', 27, 31),
(163, '0000-00-00', 27, 48),
(172, '0000-00-00', 29, 18),
(173, '0000-00-00', 29, 19),
(174, '0000-00-00', 29, 51),
(176, '0000-00-00', 29, 23),
(177, '0000-00-00', 29, 29),
(178, '0000-00-00', 29, 31),
(179, '0000-00-00', 29, 54),
(180, '0000-00-00', 29, 44),
(181, '0000-00-00', 29, 45),
(182, '0000-00-00', 30, 19),
(183, '0000-00-00', 31, 55),
(184, '0000-00-00', 31, 2),
(185, '0000-00-00', 31, 22),
(186, '0000-00-00', 31, 5),
(188, '0000-00-00', 31, 16),
(189, '0000-00-00', 31, 18),
(190, '0000-00-00', 31, 31),
(191, '0000-00-00', 31, 45),
(192, '0000-00-00', 31, 48),
(200, '0000-00-00', 33, 2),
(201, '0000-00-00', 33, 22),
(202, '0000-00-00', 33, 5),
(203, '0000-00-00', 33, 18),
(204, '0000-00-00', 33, 19),
(205, '0000-00-00', 33, 51),
(207, '0000-00-00', 33, 23),
(208, '0000-00-00', 33, 31),
(209, '0000-00-00', 33, 54),
(210, '0000-00-00', 33, 45),
(211, '0000-00-00', 33, 48),
(218, '0000-00-00', 35, 9),
(227, '0000-00-00', 37, 7),
(228, '0000-00-00', 37, 9),
(229, '0000-00-00', 37, 22),
(230, '0000-00-00', 37, 12),
(231, '0000-00-00', 37, 13),
(232, '0000-00-00', 37, 2),
(233, '0000-00-00', 37, 18),
(234, '0000-00-00', 37, 31),
(235, '0000-00-00', 37, 48),
(236, '0000-00-00', 38, 18),
(237, '0000-00-00', 38, 19),
(238, '0000-00-00', 38, 29),
(239, '0000-00-00', 39, 2),
(240, '0000-00-00', 39, 7),
(241, '0000-00-00', 39, 12),
(242, '0000-00-00', 39, 22),
(243, '0000-00-00', 39, 18),
(244, '0000-00-00', 39, 31),
(245, '0000-00-00', 39, 48),
(246, '0000-00-00', 40, 2),
(247, '0000-00-00', 40, 12),
(248, '0000-00-00', 40, 22),
(249, '0000-00-00', 40, 16),
(250, '0000-00-00', 40, 18),
(251, '0000-00-00', 40, 31),
(252, '0000-00-00', 40, 45),
(253, '0000-00-00', 40, 47),
(254, '0000-00-00', 40, 48),
(260, '0000-00-00', 42, 18),
(261, '0000-00-00', 42, 19),
(262, '0000-00-00', 42, 51),
(264, '0000-00-00', 42, 23),
(265, '0000-00-00', 42, 29),
(266, '0000-00-00', 42, 31),
(267, '0000-00-00', 42, 45),
(268, '0000-00-00', 42, 47),
(269, '0000-00-00', 43, 2),
(270, '0000-00-00', 43, 18),
(271, '0000-00-00', 43, 31),
(272, '0000-00-00', 43, 54),
(273, '0000-00-00', 43, 44),
(274, '0000-00-00', 43, 45),
(275, '0000-00-00', 44, 12),
(276, '0000-00-00', 44, 18),
(277, '0000-00-00', 44, 31),
(278, '0000-00-00', 44, 54),
(279, '0000-00-00', 44, 47),
(280, '0000-00-00', 44, 48),
(281, '0000-00-00', 46, 2),
(282, '0000-00-00', 46, 16),
(283, '0000-00-00', 46, 18),
(284, '0000-00-00', 46, 31),
(285, '0000-00-00', 46, 54),
(286, '0000-00-00', 46, 44),
(287, '0000-00-00', 46, 45),
(288, '0000-00-00', 46, 48),
(289, '0000-00-00', 47, 2),
(290, '0000-00-00', 47, 18),
(291, '0000-00-00', 47, 19),
(292, '0000-00-00', 47, 29),
(293, '0000-00-00', 47, 31),
(294, '0000-00-00', 47, 54),
(295, '0000-00-00', 47, 48),
(296, '0000-00-00', 48, 18),
(297, '0000-00-00', 48, 19),
(298, '0000-00-00', 48, 51),
(300, '0000-00-00', 48, 23),
(301, '0000-00-00', 48, 22),
(302, '0000-00-00', 48, 31),
(303, '0000-00-00', 48, 54),
(304, '0000-00-00', 48, 44),
(305, '0000-00-00', 48, 45),
(306, '0000-00-00', 48, 48),
(307, '0000-00-00', 50, 7),
(308, '0000-00-00', 50, 8),
(309, '0000-00-00', 50, 22),
(310, '0000-00-00', 50, 12),
(311, '0000-00-00', 50, 13),
(312, '0000-00-00', 50, 2),
(313, '0000-00-00', 50, 16),
(314, '0000-00-00', 50, 18),
(315, '0000-00-00', 50, 31),
(316, '0000-00-00', 50, 45),
(317, '0000-00-00', 50, 48),
(318, '0000-00-00', 51, 18),
(319, '0000-00-00', 51, 31),
(320, '0000-00-00', 51, 54),
(321, '0000-00-00', 51, 45),
(327, '0000-00-00', 76, 2),
(328, '0000-00-00', 76, 18),
(329, '0000-00-00', 76, 19),
(330, '0000-00-00', 76, 31),
(331, '0000-00-00', 76, 45),
(332, '0000-00-00', 76, 48),
(334, '0000-00-00', 53, 12),
(335, '0000-00-00', 53, 13),
(336, '0000-00-00', 53, 2),
(337, '0000-00-00', 53, 18),
(338, '0000-00-00', 53, 19),
(339, '0000-00-00', 53, 22),
(340, '0000-00-00', 53, 51),
(342, '0000-00-00', 53, 23),
(343, '0000-00-00', 53, 53),
(344, '0000-00-00', 53, 29),
(345, '0000-00-00', 53, 31),
(346, '0000-00-00', 53, 48),
(347, '0000-00-00', 72, 19),
(348, '0000-00-00', 54, 55),
(349, '0000-00-00', 54, 7),
(350, '0000-00-00', 54, 18),
(351, '0000-00-00', 54, 31),
(352, '0000-00-00', 54, 45),
(353, '0000-00-00', 56, 2),
(354, '0000-00-00', 56, 18),
(355, '0000-00-00', 56, 19),
(356, '0000-00-00', 56, 51),
(358, '0000-00-00', 56, 23),
(359, '0000-00-00', 56, 29),
(360, '0000-00-00', 56, 31),
(361, '0000-00-00', 56, 47),
(362, '0000-00-00', 56, 48),
(363, '0000-00-00', 55, 9),
(364, '0000-00-00', 57, 11),
(365, '0000-00-00', 57, 12),
(366, '0000-00-00', 57, 13),
(367, '0000-00-00', 57, 2),
(368, '0000-00-00', 57, 16),
(369, '0000-00-00', 57, 17),
(370, '0000-00-00', 57, 18),
(371, '0000-00-00', 57, 31),
(372, '0000-00-00', 57, 54),
(373, '0000-00-00', 57, 45),
(374, '0000-00-00', 57, 48),
(375, '0000-00-00', 58, 7),
(376, '0000-00-00', 58, 22),
(377, '0000-00-00', 58, 12),
(378, '0000-00-00', 58, 2),
(379, '0000-00-00', 58, 16),
(380, '0000-00-00', 58, 18),
(381, '0000-00-00', 58, 31),
(382, '0000-00-00', 58, 54),
(383, '0000-00-00', 58, 48),
(384, '0000-00-00', 59, 2),
(385, '0000-00-00', 59, 31),
(386, '0000-00-00', 59, 54),
(387, '0000-00-00', 59, 44),
(388, '0000-00-00', 59, 48),
(389, '0000-00-00', 60, 2),
(390, '0000-00-00', 60, 22),
(391, '0000-00-00', 60, 18),
(392, '0000-00-00', 60, 51),
(393, '0000-00-00', 60, 31),
(394, '0000-00-00', 60, 45),
(395, '0000-00-00', 60, 48),
(396, '0000-00-00', 61, 2),
(397, '0000-00-00', 61, 12),
(398, '0000-00-00', 61, 31),
(399, '0000-00-00', 61, 48),
(400, '0000-00-00', 62, 22),
(401, '0000-00-00', 6, 57),
(404, '0000-00-00', 9, 57),
(405, '0000-00-00', 74, 57),
(407, '0000-00-00', 24, 57),
(408, '0000-00-00', 27, 57),
(409, '0000-00-00', 37, 57),
(410, '0000-00-00', 39, 57),
(411, '0000-00-00', 40, 57),
(412, '0000-00-00', 44, 57),
(413, '0000-00-00', 50, 57),
(415, '0000-00-00', 53, 57),
(416, '0000-00-00', 57, 57),
(417, '0000-00-00', 58, 57),
(418, '0000-00-00', 61, 57),
(419, '0000-00-00', 6, 58),
(422, '0000-00-00', 9, 58),
(423, '0000-00-00', 74, 58),
(425, '0000-00-00', 24, 58),
(426, '0000-00-00', 27, 58),
(427, '0000-00-00', 37, 58),
(428, '0000-00-00', 39, 58),
(429, '0000-00-00', 40, 58),
(430, '0000-00-00', 44, 58),
(431, '0000-00-00', 50, 58),
(433, '0000-00-00', 53, 58),
(434, '0000-00-00', 57, 58),
(435, '0000-00-00', 58, 58),
(436, '0000-00-00', 61, 58),
(437, '0000-00-00', 6, 59),
(440, '0000-00-00', 9, 59),
(441, '0000-00-00', 74, 59),
(443, '0000-00-00', 24, 59),
(444, '0000-00-00', 27, 59),
(445, '0000-00-00', 37, 59),
(446, '0000-00-00', 39, 59),
(447, '0000-00-00', 40, 59),
(448, '0000-00-00', 44, 59),
(449, '0000-00-00', 50, 59),
(451, '0000-00-00', 53, 59),
(452, '0000-00-00', 57, 59),
(453, '0000-00-00', 58, 59),
(454, '0000-00-00', 61, 59),
(462, '0000-00-00', 9, 24),
(463, '0000-00-00', 12, 24),
(464, '0000-00-00', 12, 29),
(465, '0000-00-00', 70, 51),
(466, '0000-00-00', 70, 24),
(467, '0000-00-00', 14, 24),
(468, '0000-00-00', 14, 60),
(469, '0000-00-00', 15, 19),
(470, '0000-00-00', 15, 24),
(471, '0000-00-00', 15, 23),
(472, '0000-00-00', 17, 24),
(473, '0000-00-00', 17, 60),
(477, '0000-00-00', 73, 51),
(478, '0000-00-00', 73, 24),
(479, '0000-00-00', 73, 23),
(480, '0000-00-00', 73, 19),
(481, '0000-00-00', 25, 19),
(482, '0000-00-00', 25, 24),
(483, '0000-00-00', 25, 23),
(484, '0000-00-00', 25, 53),
(485, '0000-00-00', 25, 29),
(486, '0000-00-00', 25, 60),
(487, '0000-00-00', 29, 24),
(488, '0000-00-00', 29, 60),
(491, '0000-00-00', 67, 19),
(492, '0000-00-00', 67, 51),
(493, '0000-00-00', 67, 24),
(494, '0000-00-00', 33, 24),
(502, '0000-00-00', 38, 60),
(503, '0000-00-00', 42, 24),
(504, '0000-00-00', 42, 60),
(505, '0000-00-00', 47, 60),
(506, '0000-00-00', 69, 19),
(507, '0000-00-00', 48, 24),
(508, '0000-00-00', 71, 19),
(509, '0000-00-00', 53, 24),
(510, '0000-00-00', 53, 60),
(511, '0000-00-00', 53, 61),
(512, '0000-00-00', 72, 29),
(513, '0000-00-00', 72, 60),
(514, '0000-00-00', 80, 51),
(515, '0000-00-00', 80, 24),
(516, '0000-00-00', 56, 22),
(517, '0000-00-00', 56, 24),
(518, '0000-00-00', 56, 60),
(519, '0000-00-00', 60, 19),
(520, '0000-00-00', 60, 24),
(521, '0000-00-00', 60, 23),
(522, '0000-00-00', 60, 29),
(523, '0000-00-00', 60, 60),
(524, '0000-00-00', 68, 19),
(525, '0000-00-00', 68, 51),
(526, '0000-00-00', 68, 24),
(530, '2015-06-10', 4, 54),
(535, '1970-01-01', 2, 18),
(536, '1970-01-01', 2, 51),
(537, '1970-01-01', 2, 24),
(538, '1970-01-01', 2, 23),
(539, '1970-01-01', 2, 53),
(542, '1970-01-01', 11, 56),
(544, '1970-01-01', 12, 31),
(1060, '1970-01-01', 2, 5),
(1063, '1970-01-01', 2, 61),
(4174, '1970-01-01', 4, 46),
(4177, '1970-01-01', 2, 22),
(4186, '1970-01-01', 2, 29),
(4188, '1970-01-01', 2, 2),
(4189, '1970-01-01', 6, 2),
(4191, '1970-01-01', 8, 22),
(4192, '1970-01-01', 8, 17),
(4193, '1970-01-01', 8, 14),
(4194, '1970-01-01', 8, 64),
(4196, '1970-01-01', 28, 54),
(4197, '1970-01-01', 28, 31),
(4198, '1970-01-01', 28, 18),
(4199, '1970-01-01', 28, 2),
(4205, '1970-01-01', 28, 23),
(4206, '1970-01-01', 7, 2),
(4207, '1970-01-01', 7, 10),
(4208, '1970-01-01', 7, 7),
(4209, '1970-01-01', 7, 12),
(4210, '1970-01-01', 7, 15),
(4211, '1970-01-01', 7, 18),
(4212, '1970-01-01', 7, 31),
(4213, '1970-01-01', 7, 54),
(4214, '1970-01-01', 7, 44),
(4215, '1970-01-01', 7, 48),
(4216, '1970-01-01', 2, 30),
(4217, '1970-01-01', 6, 3),
(4218, '1970-01-01', 6, 14),
(4221, '1970-01-01', 6, 15),
(4222, '1970-01-01', 8, 58),
(4223, '1970-01-01', 8, 13),
(4224, '1970-01-01', 8, 15),
(4225, '1970-01-01', 8, 18),
(4226, '1970-01-01', 8, 31),
(4227, '1970-01-01', 8, 48),
(4228, '1970-01-01', 9, 31),
(4229, '1970-01-01', 11, 46),
(4230, '1970-01-01', 12, 30),
(4231, '1970-01-01', 13, 12),
(4232, '1970-01-01', 13, 13),
(4233, '1970-01-01', 13, 15),
(4234, '1970-01-01', 13, 16),
(4235, '1970-01-01', 13, 18),
(4236, '1970-01-01', 13, 48),
(4237, '1970-01-01', 16, 46),
(4238, '1970-01-01', 24, 10),
(4239, '1970-01-01', 26, 1),
(4240, '1970-01-01', 26, 3),
(4241, '1970-01-01', 27, 15),
(4242, '1970-01-01', 28, 51),
(4243, '1970-01-01', 28, 24),
(4244, '1970-01-01', 30, 2),
(4245, '1970-01-01', 30, 18),
(4246, '1970-01-01', 30, 51),
(4247, '1970-01-01', 30, 24),
(4248, '1970-01-01', 30, 29),
(4249, '1970-01-01', 30, 31),
(4250, '1970-01-01', 30, 54),
(4251, '1970-01-01', 30, 44),
(4252, '1970-01-01', 31, 1),
(4253, '1970-01-01', 31, 3),
(4255, '1970-01-01', 33, 3),
(4256, '1970-01-01', 37, 10),
(4257, '1970-01-01', 38, 15),
(4259, '1970-01-01', 40, 15),
(4260, '1970-01-01', 44, 44),
(4261, '1970-01-01', 48, 30),
(4262, '1970-01-01', 48, 46),
(4264, '1970-01-01', 50, 10),
(4266, '1970-01-01', 54, 1),
(4268, '1970-01-01', 58, 10),
(4269, '1970-01-01', 60, 3),
(4272, '1970-01-01', 62, 30),
(4274, '1970-01-01', 2, 20),
(4275, '1970-01-01', 2, 19),
(4277, '1970-01-01', 9, 20),
(4279, '1970-01-01', 14, 20),
(4281, '1970-01-01', 17, 20),
(4285, '1970-01-01', 28, 20),
(4286, '1970-01-01', 28, 19),
(4288, '1970-01-01', 29, 20),
(4290, '1970-01-01', 30, 20),
(4292, '1970-01-01', 33, 20),
(4296, '1970-01-01', 38, 20),
(4298, '1970-01-01', 42, 20),
(4300, '1970-01-01', 47, 20),
(4302, '1970-01-01', 48, 20),
(4304, '1970-01-01', 76, 20),
(4305, '1970-01-01', 76, 21),
(4306, '1970-01-01', 53, 20),
(4307, '1970-01-01', 53, 21),
(4308, '1970-01-01', 72, 20),
(4310, '1970-01-01', 56, 20),
(4311, '1970-01-01', 56, 21);

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE IF NOT EXISTS `equipe` (
  `id_equipe` tinyint(2) NOT NULL AUTO_INCREMENT,
  `Nom_Equipe` text NOT NULL,
  PRIMARY KEY (`id_equipe`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `equipe`
--

INSERT INTO `equipe` (`id_equipe`, `Nom_Equipe`) VALUES
(1, 'Bleue'),
(2, 'Jaune'),
(3, 'Lavande'),
(4, 'Rouge'),
(5, 'Verte'),
(6, 'Pourpre'),
(7, ' Hypervision'),
(8, ' Management');

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE IF NOT EXISTS `formation` (
  `id_formation` tinyint(2) NOT NULL AUTO_INCREMENT,
  `Nom_Formation` text NOT NULL,
  `date_de_prevue` date NOT NULL,
  `date_de_realisation` date NOT NULL,
  `Commentaires` text NOT NULL,
  `id_agent` tinyint(2) NOT NULL,
  `id_module` tinyint(2) NOT NULL,
  `id_sous_activite` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_formation`),
  KEY `id_agent` (`id_agent`),
  KEY `id_module` (`id_module`),
  KEY `id_sous_activite` (`id_sous_activite`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Contenu de la table `formation`
--

INSERT INTO `formation` (`id_formation`, `Nom_Formation`, `date_de_prevue`, `date_de_realisation`, `Commentaires`, `id_agent`, `id_module`, `id_sous_activite`) VALUES
(1, 'FORMATION LIGNE 1', '2015-10-02', '2015-10-14', '', 2, 1, 31),
(2, 'FORMATION LIGNE AD', '0000-00-00', '0000-00-00', '', 2, 2, 2),
(3, 'FORMATION LINKY FRONT-OFFICE', '0000-00-00', '0000-00-00', '', 4, 3, 56),
(4, 'FORMATION HOT LINE PNT', '0000-00-00', '0000-00-00', '', 4, 4, 16),
(5, 'FORMATION DISTRERE PRE-102', '0000-00-00', '0000-00-00', '', 89, 5, 51),
(6, 'FORMATION DISTRERE PRE-102', '0000-00-00', '0000-00-00', '', 6, 6, 24),
(7, 'FORMATION DISTRERE PRE-102', '0000-00-00', '0000-00-00', '', 7, 7, 23),
(8, 'FORMATION DISTRERE PRE-102', '0000-00-00', '0000-00-00', '', 8, 8, 53),
(9, 'FORMATION DISTRERE 102', '2015-06-10', '2015-06-17', 'aie', 9, 9, 19),
(10, 'FORMATION MAIL QUALITE', '0000-00-00', '0000-00-00', '', 10, 10, 29),
(11, 'FORMATION SGE', '0000-00-00', '0000-00-00', '', 11, 11, 54),
(12, 'FORMATION SOLDE SGE', '0000-00-00', '0000-00-00', '', 12, 12, 44),
(14, 'FORMATION K1', '0000-00-00', '0000-00-00', '', 14, 14, 45),
(15, 'FORMATION RAF', '0000-00-00', '0000-00-00', '', 15, 15, 11),
(17, 'FORMATION RECLAMATION', '0000-00-00', '0000-00-00', '', 17, 17, 7),
(18, 'FORMATION PAGODE', '0000-00-00', '0000-00-00', '', 18, 18, 17),
(22, 'FORMATION DISTRERE 102', '2015-06-30', '2015-07-03', '', 78, 9, 20),
(29, 'FORMATION LIGNE AD', '2015-07-10', '2015-07-20', 'vbvbvbv', 6, 9, 51),
(30, 'FORMATION K1', '2015-08-03', '2015-05-12', 'RENFORCER LE POTENTIEL CCD POUR LE TRAITEMENT DES K11 SUR LES TROIS CENTRES', 61, 14, 45),
(31, 'FORMATION AD BACK-OFFICE', '2015-02-10', '1970-01-01', 'TEST', 9, 4, 51),
(32, 'FORMATION PAGODE', '2015-10-16', '1970-01-01', 'urgent', 16, 18, 17),
(33, 'FORMATION AD BACK-OFFICE', '1970-01-01', '1970-01-01', 'TEST', 16, 17, 28);

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `id_module` tinyint(2) NOT NULL AUTO_INCREMENT,
  `Nom_Module` text NOT NULL,
  PRIMARY KEY (`id_module`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `module`
--

INSERT INTO `module` (`id_module`, `Nom_Module`) VALUES
(1, 'Module Ligne 1'),
(2, 'Module Ligne AD FRONT-OFFICE'),
(3, 'Module LINKY FRONT-OFFICE'),
(4, 'MODULE HOT LINE PNT'),
(5, 'MODULE DISTRERE PRE-102 FORCAGE : CONSOMMATION NULLES'),
(6, 'MODULE DISTRERE PRE-102 FORCAGE D''INDEX'),
(7, 'MODULE DISTRERE PRE-102 ANOMALIE'),
(8, 'MODULE DISTRERE PRE-102'),
(9, 'MODULE DISTRERE 102'),
(10, 'MODULE MAIL QUALITE'),
(11, 'MODULE SGE'),
(12, 'MODULE solde SGE'),
(13, 'MODULE AD BACK-OFFICE'),
(14, 'MODULE K1'),
(15, 'MODULE RAF'),
(16, 'Module BO RAF'),
(17, 'MODULE RECLAMATION'),
(18, 'MODULE PAGODE'),
(19, 'MODULE 1°MES (Collectif)'),
(20, 'MODULE PPV'),
(21, 'MODULE LINKY BACK-OFFICE');

-- --------------------------------------------------------

--
-- Structure de la table `parametrage`
--

CREATE TABLE IF NOT EXISTS `parametrage` (
  `id_parametrage` tinyint(2) NOT NULL AUTO_INCREMENT,
  `email_accompagnement` text NOT NULL,
  `email_formation` text NOT NULL,
  `alerte_accompagnement` text NOT NULL,
  `alerte_formation` text NOT NULL,
  `alerte_delai` text NOT NULL,
  PRIMARY KEY (`id_parametrage`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `parametrage`
--

INSERT INTO `parametrage` (`id_parametrage`, `email_accompagnement`, `email_formation`, `alerte_accompagnement`, `alerte_formation`, `alerte_delai`) VALUES
(1, 'sss', '', 'ex: 01', 'ex: 01', '');

-- --------------------------------------------------------

--
-- Structure de la table `planning`
--

CREATE TABLE IF NOT EXISTS `planning` (
  `id_planning` tinyint(2) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `NNI Agent` text NOT NULL,
  `Nom Agent` text NOT NULL,
  `Prénom Agent` text NOT NULL,
  `1° MES` text NOT NULL,
  `ACCOMPAGNEMENT FORMATION PAR EXPERT` text NOT NULL,
  `Accompagnement managérial` text NOT NULL,
  `Accueil Nouvel arrivant` text NOT NULL,
  `Analyse Rebonds` text NOT NULL,
  `B.O. RAF` text NOT NULL,
  `B.O. RECLA` text NOT NULL,
  `BO AD ODIGO` text NOT NULL,
  `BO AD Relance` text NOT NULL,
  `BO AD Satis` text NOT NULL,
  `Cartes T` text NOT NULL,
  `Chantier Divers` text NOT NULL,
  `Conférence Téléphonique` text NOT NULL,
  `Contrôle Interne` text NOT NULL,
  `Courrier` text NOT NULL,
  `Débordement LAD` text NOT NULL,
  `Découverte` text NOT NULL,
  `Déménagement` text NOT NULL,
  `Distrère 102` text NOT NULL,
  `Distrère Pré 102` text NOT NULL,
  `E-Learning` text NOT NULL,
  `EAAP` text NOT NULL,
  `Ecole` text NOT NULL,
  `Exp Métier Distrere` text NOT NULL,
  `Exp Métier K1` text NOT NULL,
  `Exp Métier Raf` text NOT NULL,
  `Exp Métier Récla` text NOT NULL,
  `Exp Métier SGE` text NOT NULL,
  `Expertise AD` text NOT NULL,
  `EXPERTISE PPV` text NOT NULL,
  `Formation Distrere` text NOT NULL,
  `Formation Div` text NOT NULL,
  `Formation K1` text NOT NULL,
  `Formation LAD` text NOT NULL,
  `Formation Ligne 1` text NOT NULL,
  `Formation Ligne 4` text NOT NULL,
  `Formation Pre102` text NOT NULL,
  `Formation RAF` text NOT NULL,
  `Formation SGE` text NOT NULL,
  `GC144` text NOT NULL,
  `Guichet Valid` text NOT NULL,
  `Hho Elec` text NOT NULL,
  `IA` text NOT NULL,
  `Injection RAF` text NOT NULL,
  `Innovation` text NOT NULL,
  `K1 CANNES` text NOT NULL,
  `K1 NICE` text NOT NULL,
  `K1 VAR` text NOT NULL,
  `L9 AM` text NOT NULL,
  `L9 VAR` text NOT NULL,
  `Ligne 1` text NOT NULL,
  `Ligne 4` text NOT NULL,
  `Ligne 6` text NOT NULL,
  `Ligne AD` text NOT NULL,
  `Ligne CAD` text NOT NULL,
  `LPNT` text NOT NULL,
  `LPNT K1` text NOT NULL,
  `LPNT SGE` text NOT NULL,
  `LPNT Valid` text NOT NULL,
  `Mail AD` text NOT NULL,
  `Mail Boîte ACH` text NOT NULL,
  `Mails Boîte qualité` text NOT NULL,
  `Pagode` text NOT NULL,
  `PANNE` text NOT NULL,
  `Point Etape` text NOT NULL,
  `PPV` text NOT NULL,
  `Projet apprenti` text NOT NULL,
  `RAF` text NOT NULL,
  `Réclas SGE` text NOT NULL,
  `Réquisitions` text NOT NULL,
  `Réunion` text NOT NULL,
  `Réunion Equipe` text NOT NULL,
  `Réunion extérieure` text NOT NULL,
  `Réunion Métier` text NOT NULL,
  `S6` text NOT NULL,
  `SAF/REL` text NOT NULL,
  `SGE` text NOT NULL,
  `SITE` text NOT NULL,
  `Solde SGE & M002 d Annulation` text NOT NULL,
  `Suivi M018` text NOT NULL,
  `Valid RAF` text NOT NULL,
  `Visite Médicale` text NOT NULL,
  `10 - Repos compensateur` text NOT NULL,
  `14 - Disponibilité cadre` text NOT NULL,
  `15 - Repos pour cadre hors ATT` text NOT NULL,
  `16 - Abs mission électricien sans frontière` text NOT NULL,
  `19 - Congé avant retraite` text NOT NULL,
  `20 - Fête locale` text NOT NULL,
  `21 - Congé annuel` text NOT NULL,
  `22 - Enseignement occasionnel` text NOT NULL,
  `23 - Apprenti en centre de formation` text NOT NULL,
  `24 - CIF temps partiel - FPC` text NOT NULL,
  `25 - Plan formation non lib FPC` text NOT NULL,
  `28 - Réunion d'information du personnel` text NOT NULL,
  `33 - Congé spécial familial` text NOT NULL,
  `35 - Plan formation libératoire FPC` text NOT NULL,
  `36 - Formation pers enc CCAS` text NOT NULL,
  `3A - M à dispo auprès CCAS pour encadrement` text NOT NULL,
  `3E - FPMAE temps plein` text NOT NULL,
  `3H - Mission moyenne durée à l'international` text NOT NULL,
  `3I - Mission longue durée à l'international` text NOT NULL,
  `41 - Maladie ou accident non professionnel` text NOT NULL,
  `43 - Absence non rénumérée élu local` text NOT NULL,
  `46 - Réunion synd ou RP - convoc hiérarchie` text NOT NULL,
  `48 - CE - CCE - formation éco des membres` text NOT NULL,
  `50 - CHSCT - formation des membres` text NOT NULL,
  `51 - Congé formation ESS` text NOT NULL,
  `52 - Grève et autres mouvements revendicatifs` text NOT NULL,
  `55 - Absence injustifiée` text NOT NULL,
  `56 - Congé annuel CCS -21ans` text NOT NULL,
  `5A - Longue maladie < 3 ans` text NOT NULL,
  `5D - Accident travail - trajet` text NOT NULL,
  `5F - Rechute accident du travail - trajet` text NOT NULL,
  `5H - Accident ou maladie non professionnels` text NOT NULL,
  `5K - Incarcération` text NOT NULL,
  `5L - Mise à pied` text NOT NULL,
  `5N - Suspension contrat de travail` text NOT NULL,
  `5V - Maternité ou adoption` text NOT NULL,
  `5X - CSS exceptionnel 1 à 3 mois` text NOT NULL,
  `5Y - Congé épargne temps` text NOT NULL,
  `60 - Social régime mutualiste` text NOT NULL,
  `61 - Bilan de compétence plan de formation` text NOT NULL,
  `62 - Bilan de compétence CIF` text NOT NULL,
  `63 - Social organismes sociaux plan national` text NOT NULL,
  `68 - Congé non rémunéré à retenue différée` text NOT NULL,
  `6A - Congé de présence parentale` text NOT NULL,
  `6B - Congé solidarité familiale` text NOT NULL,
  `6C - Congé sabbatique non statutaire` text NOT NULL,
  `6D - Congé création d'entreprise non stat` text NOT NULL,
  `6E - Rechute AT - service` text NOT NULL,
  `6F - Rechute maladie professionnelle` text NOT NULL,
  `6H - Maladie professionnelle` text NOT NULL,
  `6I - AT service` text NOT NULL,
  `6L - CSS pour élever un enfant < 8 ans` text NOT NULL,
  `6M - CSS exception accueil enfant handicapé` text NOT NULL,
  `81 - Coordination synd niveau directions` text NOT NULL,
  `82 - Conseil de surveillance ERDF` text NOT NULL,
  `83 - Comité groupe France GDF SUEZ - CH` text NOT NULL,
  `84 - Comité groupe France GDF SUEZ - réunion` text NOT NULL,
  `85 - Conseil d'administration GrDF` text NOT NULL,
  `87 - CHSCT - rencontre annuelle secrétaires` text NOT NULL,
  `8A - Représentant syndical CE crédit d'heure` text NOT NULL,
  `8B - Représentant syndical CCE crédit d'heure` text NOT NULL,
  `8C - Délégué syndical central crédit d'heure` text NOT NULL,
  `8D - Délégué du personnel réunion` text NOT NULL,
  `8E - Délégué du personnel crédit d'heure mois` text NOT NULL,
  `8F - CSP - réunion` text NOT NULL,
  `8G - CSP - crédit d'heure` text NOT NULL,
  `8H - CHSCT - enquêtes ATMP` text NOT NULL,
  `8I - CHSCT - réunion` text NOT NULL,
  `8J - CHSCT - crédit d'heure mensuel` text NOT NULL,
  `8K - CE - réunion` text NOT NULL,
  `8L - CE - crédit d'heure mensuel` text NOT NULL,
  `8M - CE - commissions facultatives` text NOT NULL,
  `8N - CE - commission égalité professionnelle` text NOT NULL,
  `8O - CE - commission formation` text NOT NULL,
  `8P - CE - commission info et aide au logement` text NOT NULL,
  `8Q - CCE - réunion` text NOT NULL,
  `8R - CCE - crédit d'heure mensuel` text NOT NULL,
  `8S - CCE - commissions facultatives` text NOT NULL,
  `8T - CCE - commission égalité professionnelle` text NOT NULL,
  `8U - CCE - commission économique` text NOT NULL,
  `8V - CCE - commission formation` text NOT NULL,
  `8W - CCE - commission info et aide logement` text NOT NULL,
  `8X - Représentant sect syndicale crédit d'heure` text NOT NULL,
  `8Y - GNM santé au travail - réunion` text NOT NULL,
  `8Z - Comité de groupe France EDF` text NOT NULL,
  `91 - Conseil d'atelier ou de bureau` text NOT NULL,
  `96 - Absence rémunérée élu local` text NOT NULL,
  `AD - Parrain marraine accord DEFI` text NOT NULL,
  `AS - Activité sportive` text NOT NULL,
  `CD - Absence diverse rémunérée` text NOT NULL,
  `CE - Congé épargne temps - courte durée` text NOT NULL,
  `CF - CIF temps plein - FPC` text NOT NULL,
  `CN - Congé épargne temps - fin de carrière` text NOT NULL,
  `CP - Conseiller prud'homal` text NOT NULL,
  `CR - Congé annuel à résorber` text NOT NULL,
  `CS - Conseiller salarié` text NOT NULL,
  `CT - Congé d'ancienneté` text NOT NULL,
  `CV - Convocation poste vacant` text NOT NULL,
  `D1 - Délégué syndical crédit d'heure CFDT` text NOT NULL,
  `D2 - Délégué syndical crédit d'heure CFE-CGC` text NOT NULL,
  `D3 - Délégué syndical crédit d'heure CFTC` text NOT NULL,
  `D4 - Délégué syndical crédit d'heure CGT` text NOT NULL,
  `D5 - Délégué syndical crédit d'heure FO` text NOT NULL,
  `D6 - Délégué syndical crédit d'heure autre` text NOT NULL,
  `DE - Déménagement` text NOT NULL,
  `E1 - Représentant d'entreprise crédit d'heure CFDT` text NOT NULL,
  `E2 - Représentant d'entreprise crédit d'h CFE-CGC` text NOT NULL,
  `E4 - Représentant d'entreprise crédit d'heure CGT` text NOT NULL,
  `E5 - Représentant d'entreprise crédit d'heure FO` text NOT NULL,
  `EM - Absence enfant malade` text NOT NULL,
  `EX - Absence examen médical ou SS` text NOT NULL,
  `FA - Absence familiale rémunérée` text NOT NULL,
  `FD - Formation - HTTE Plan` text NOT NULL,
  `FE - Femme enceinte` text NOT NULL,
  `FI - Formation - HTTE DIF` text NOT NULL,
  `FR - Repos forfait jours ERDF` text NOT NULL,
  `FT - Formation - STTE DIF` text NOT NULL,
  `FV - Formation - DTT Plan` text NOT NULL,
  `GR - Grève salarié requis ERDF` text NOT NULL,
  `H9 - Absence compensation du samedi` text NOT NULL,
  `HF - Crédit d'heures formation` text NOT NULL,
  `HH - Absence mission habitat for humanity` text NOT NULL,
  `IF - Intervention FIRE week-end et jour férié` text NOT NULL,
  `IM - Instruction militaire` text NOT NULL,
  `IR - Observatoire métier IRIEEC` text NOT NULL,
  `J4 - Repos supplémentaire JRS` text NOT NULL,
  `JNT - Journée Non Travaillée` text NOT NULL,
  `JR - Congé épargne jour retraite fractionné` text NOT NULL,
  `L1 - Section syndicale crédit d'heure CFDT` text NOT NULL,
  `L2 - Section syndicale crédit d'heure CFE-CGC` text NOT NULL,
  `L3 - Section syndicale crédit d'heure CFTC` text NOT NULL,
  `L4 - Section syndicale crédit d'heure CGT` text NOT NULL,
  `L5 - Section syndicale crédit d'heure FO` text NOT NULL,
  `L6 - Section syndicale crédit d'heure autre` text NOT NULL,
  `MF - Congé mère de famille` text NOT NULL,
  `MI - Activité d'information` text NOT NULL,
  `N1 - Activité syndicale entreprise CFDT` text NOT NULL,
  `N2 - Actibité syndicale entreprise CFE-CGC` text NOT NULL,
  `N3 - Activité syndicale entreprise CFTC` text NOT NULL,
  `N4 - Activité syndicale entreprise CGT` text NOT NULL,
  `N5 - Activité syndicale entreprise FO` text NOT NULL,
  `N6 - Activité syndicale entreprise Autre` text NOT NULL,
  `PA - Congé de paternité` text NOT NULL,
  `PH - Absence démarche MDPH & CDAPH` text NOT NULL,
  `PV - Sapeur pompier volontaire` text NOT NULL,
  `R1 - Activité syndicale régionale CFDT` text NOT NULL,
  `R2 - Activité syndicale régionale CFE-CGC` text NOT NULL,
  `R3 - Activité syndicale régionale CFTC` text NOT NULL,
  `R4 - Activité syndicale régionale CGT` text NOT NULL,
  `R5 - Activité syndicale régionale FO` text NOT NULL,
  `R6 - Activité syndicale régionale autre` text NOT NULL,
  `RD - Réduction horaire dû annualisé` text NOT NULL,
  `RF - Récupération FIRE week-end et jour férié` text NOT NULL,
  `RH - Repos hebdomadaire de 35H` text NOT NULL,
  `RJ - Repos journalier de 11H` text NOT NULL,
  `RM - Réserve militaire` text NOT NULL,
  `RS - Rentrée scolaire` text NOT NULL,
  `S1 - Social correspondant SLV non mutualiste` text NOT NULL,
  `S2 - Social mercredi` text NOT NULL,
  `S3 - Social convoyage enfant` text NOT NULL,
  `S4 - Social commission` text NOT NULL,
  `S5 - Social correspondant SLV mutualiste` text NOT NULL,
  `S6 - Social Administrateur et CA CAS` text NOT NULL,
  `S9 - Social divers` text NOT NULL,
  `SH - Sportif de haut niveau` text NOT NULL,
  `TS - Trajet` text NOT NULL,
  `X1 - Représent sect synd CH CFDT - ERDF` text NOT NULL,
  `X2 - Représent sect synd CH CFE-CGC - ERDF` text NOT NULL,
  `X3 - Représent sect synd CH CFTC - ERDF` text NOT NULL,
  `X4 - Représent sect synd CH CGT - ERDF` text NOT NULL,
  `X5 - Représent sect synd CH FO - ERDF` text NOT NULL,
  `Z7 - CSNP et sous-commissions` text NOT NULL,
  `Z8 - Organismes nationaux du régime spécial` text NOT NULL,
  `ZP - Conseil de surveillance FCPE` text NOT NULL,
  PRIMARY KEY (`id_planning`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=90 ;

--
-- Contenu de la table `planning`
--

INSERT INTO `planning` (`id_planning`, `date`, `NNI Agent`, `Nom Agent`, `Prénom Agent`, `1° MES`, `ACCOMPAGNEMENT FORMATION PAR EXPERT`, `Accompagnement managérial`, `Accueil Nouvel arrivant`, `Analyse Rebonds`, `B.O. RAF`, `B.O. RECLA`, `BO AD ODIGO`, `BO AD Relance`, `BO AD Satis`, `Cartes T`, `Chantier Divers`, `Conférence Téléphonique`, `Contrôle Interne`, `Courrier`, `Débordement LAD`, `Découverte`, `Déménagement`, `Distrère 102`, `Distrère Pré 102`, `E-Learning`, `EAAP`, `Ecole`, `Exp Métier Distrere`, `Exp Métier K1`, `Exp Métier Raf`, `Exp Métier Récla`, `Exp Métier SGE`, `Expertise AD`, `EXPERTISE PPV`, `Formation Distrere`, `Formation Div`, `Formation K1`, `Formation LAD`, `Formation Ligne 1`, `Formation Ligne 4`, `Formation Pre102`, `Formation RAF`, `Formation SGE`, `GC144`, `Guichet Valid`, `Hho Elec`, `IA`, `Injection RAF`, `Innovation`, `K1 CANNES`, `K1 NICE`, `K1 VAR`, `L9 AM`, `L9 VAR`, `Ligne 1`, `Ligne 4`, `Ligne 6`, `Ligne AD`, `Ligne CAD`, `LPNT`, `LPNT K1`, `LPNT SGE`, `LPNT Valid`, `Mail AD`, `Mail Boîte ACH`, `Mails Boîte qualité`, `Pagode`, `PANNE`, `Point Etape`, `PPV`, `Projet apprenti`, `RAF`, `Réclas SGE`, `Réquisitions`, `Réunion`, `Réunion Equipe`, `Réunion extérieure`, `Réunion Métier`, `S6`, `SAF/REL`, `SGE`, `SITE`, `Solde SGE & M002 d Annulation`, `Suivi M018`, `Valid RAF`, `Visite Médicale`, `10 - Repos compensateur`, `14 - Disponibilité cadre`, `15 - Repos pour cadre hors ATT`, `16 - Abs mission électricien sans frontière`, `19 - Congé avant retraite`, `20 - Fête locale`, `21 - Congé annuel`, `22 - Enseignement occasionnel`, `23 - Apprenti en centre de formation`, `24 - CIF temps partiel - FPC`, `25 - Plan formation non lib FPC`, `28 - Réunion d'information du personnel`, `33 - Congé spécial familial`, `35 - Plan formation libératoire FPC`, `36 - Formation pers enc CCAS`, `3A - M à dispo auprès CCAS pour encadrement`, `3E - FPMAE temps plein`, `3H - Mission moyenne durée à l'international`, `3I - Mission longue durée à l'international`, `41 - Maladie ou accident non professionnel`, `43 - Absence non rénumérée élu local`, `46 - Réunion synd ou RP - convoc hiérarchie`, `48 - CE - CCE - formation éco des membres`, `50 - CHSCT - formation des membres`, `51 - Congé formation ESS`, `52 - Grève et autres mouvements revendicatifs`, `55 - Absence injustifiée`, `56 - Congé annuel CCS -21ans`, `5A - Longue maladie < 3 ans`, `5D - Accident travail - trajet`, `5F - Rechute accident du travail - trajet`, `5H - Accident ou maladie non professionnels`, `5K - Incarcération`, `5L - Mise à pied`, `5N - Suspension contrat de travail`, `5V - Maternité ou adoption`, `5X - CSS exceptionnel 1 à 3 mois`, `5Y - Congé épargne temps`, `60 - Social régime mutualiste`, `61 - Bilan de compétence plan de formation`, `62 - Bilan de compétence CIF`, `63 - Social organismes sociaux plan national`, `68 - Congé non rémunéré à retenue différée`, `6A - Congé de présence parentale`, `6B - Congé solidarité familiale`, `6C - Congé sabbatique non statutaire`, `6D - Congé création d'entreprise non stat`, `6E - Rechute AT - service`, `6F - Rechute maladie professionnelle`, `6H - Maladie professionnelle`, `6I - AT service`, `6L - CSS pour élever un enfant < 8 ans`, `6M - CSS exception accueil enfant handicapé`, `81 - Coordination synd niveau directions`, `82 - Conseil de surveillance ERDF`, `83 - Comité groupe France GDF SUEZ - CH`, `84 - Comité groupe France GDF SUEZ - réunion`, `85 - Conseil d'administration GrDF`, `87 - CHSCT - rencontre annuelle secrétaires`, `8A - Représentant syndical CE crédit d'heure`, `8B - Représentant syndical CCE crédit d'heure`, `8C - Délégué syndical central crédit d'heure`, `8D - Délégué du personnel réunion`, `8E - Délégué du personnel crédit d'heure mois`, `8F - CSP - réunion`, `8G - CSP - crédit d'heure`, `8H - CHSCT - enquêtes ATMP`, `8I - CHSCT - réunion`, `8J - CHSCT - crédit d'heure mensuel`, `8K - CE - réunion`, `8L - CE - crédit d'heure mensuel`, `8M - CE - commissions facultatives`, `8N - CE - commission égalité professionnelle`, `8O - CE - commission formation`, `8P - CE - commission info et aide au logement`, `8Q - CCE - réunion`, `8R - CCE - crédit d'heure mensuel`, `8S - CCE - commissions facultatives`, `8T - CCE - commission égalité professionnelle`, `8U - CCE - commission économique`, `8V - CCE - commission formation`, `8W - CCE - commission info et aide logement`, `8X - Représentant sect syndicale crédit d'heure`, `8Y - GNM santé au travail - réunion`, `8Z - Comité de groupe France EDF`, `91 - Conseil d'atelier ou de bureau`, `96 - Absence rémunérée élu local`, `AD - Parrain marraine accord DEFI`, `AS - Activité sportive`, `CD - Absence diverse rémunérée`, `CE - Congé épargne temps - courte durée`, `CF - CIF temps plein - FPC`, `CN - Congé épargne temps - fin de carrière`, `CP - Conseiller prud'homal`, `CR - Congé annuel à résorber`, `CS - Conseiller salarié`, `CT - Congé d'ancienneté`, `CV - Convocation poste vacant`, `D1 - Délégué syndical crédit d'heure CFDT`, `D2 - Délégué syndical crédit d'heure CFE-CGC`, `D3 - Délégué syndical crédit d'heure CFTC`, `D4 - Délégué syndical crédit d'heure CGT`, `D5 - Délégué syndical crédit d'heure FO`, `D6 - Délégué syndical crédit d'heure autre`, `DE - Déménagement`, `E1 - Représentant d'entreprise crédit d'heure CFDT`, `E2 - Représentant d'entreprise crédit d'h CFE-CGC`, `E4 - Représentant d'entreprise crédit d'heure CGT`, `E5 - Représentant d'entreprise crédit d'heure FO`, `EM - Absence enfant malade`, `EX - Absence examen médical ou SS`, `FA - Absence familiale rémunérée`, `FD - Formation - HTTE Plan`, `FE - Femme enceinte`, `FI - Formation - HTTE DIF`, `FR - Repos forfait jours ERDF`, `FT - Formation - STTE DIF`, `FV - Formation - DTT Plan`, `GR - Grève salarié requis ERDF`, `H9 - Absence compensation du samedi`, `HF - Crédit d'heures formation`, `HH - Absence mission habitat for humanity`, `IF - Intervention FIRE week-end et jour férié`, `IM - Instruction militaire`, `IR - Observatoire métier IRIEEC`, `J4 - Repos supplémentaire JRS`, `JNT - Journée Non Travaillée`, `JR - Congé épargne jour retraite fractionné`, `L1 - Section syndicale crédit d'heure CFDT`, `L2 - Section syndicale crédit d'heure CFE-CGC`, `L3 - Section syndicale crédit d'heure CFTC`, `L4 - Section syndicale crédit d'heure CGT`, `L5 - Section syndicale crédit d'heure FO`, `L6 - Section syndicale crédit d'heure autre`, `MF - Congé mère de famille`, `MI - Activité d'information`, `N1 - Activité syndicale entreprise CFDT`, `N2 - Actibité syndicale entreprise CFE-CGC`, `N3 - Activité syndicale entreprise CFTC`, `N4 - Activité syndicale entreprise CGT`, `N5 - Activité syndicale entreprise FO`, `N6 - Activité syndicale entreprise Autre`, `PA - Congé de paternité`, `PH - Absence démarche MDPH & CDAPH`, `PV - Sapeur pompier volontaire`, `R1 - Activité syndicale régionale CFDT`, `R2 - Activité syndicale régionale CFE-CGC`, `R3 - Activité syndicale régionale CFTC`, `R4 - Activité syndicale régionale CGT`, `R5 - Activité syndicale régionale FO`, `R6 - Activité syndicale régionale autre`, `RD - Réduction horaire dû annualisé`, `RF - Récupération FIRE week-end et jour férié`, `RH - Repos hebdomadaire de 35H`, `RJ - Repos journalier de 11H`, `RM - Réserve militaire`, `RS - Rentrée scolaire`, `S1 - Social correspondant SLV non mutualiste`, `S2 - Social mercredi`, `S3 - Social convoyage enfant`, `S4 - Social commission`, `S5 - Social correspondant SLV mutualiste`, `S6 - Social Administrateur et CA CAS`, `S9 - Social divers`, `SH - Sportif de haut niveau`, `TS - Trajet`, `X1 - Représent sect synd CH CFDT - ERDF`, `X2 - Représent sect synd CH CFE-CGC - ERDF`, `X3 - Représent sect synd CH CFTC - ERDF`, `X4 - Représent sect synd CH CGT - ERDF`, `X5 - Représent sect synd CH FO - ERDF`, `Z7 - CSNP et sous-commissions`, `Z8 - Organismes nationaux du régime spécial`, `ZP - Conseil de surveillance FCPE`) VALUES
(1, '0000-00-00', 'g59411', '1-AUVARO', 'DOMINIQUE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2, '0000-00-00', 'C44911', '1-CASAZZA', 'FRANCOISE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(3, '0000-00-00', 'G79411', '1-DENANOT', 'JOCELYNE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4, '0000-00-00', 'd95140', '1-DI MICELI', 'MARTINE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5, '0000-00-00', 'E29321', '1-DRAGON', 'VERONIQUE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(6, '0000-00-00', 'H99511', '1-GILETTI', 'VERONIQUE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(7, '0000-00-00', 'F78570', '1-MARTIN', 'VANESSA', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(8, '0000-00-00', 'I00012', '1-MIGLIORE', 'ALAIN', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(9, '0000-00-00', 'G62946', '1-PORAY', 'DIANE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10, '0000-00-00', 'F10212', '1-RAINA', 'MARIE LINE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(11, '0000-00-00', 'H30142', 'ANDREOLI', 'LAURENT', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12, '0000-00-00', 'B78142', 'BALDINI', 'FREDERIC', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '195', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '165', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(13, '0000-00-00', 'A59711', 'BECHTEL', 'MARTINE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(14, '0000-00-00', 'D27620', 'BELLEVILLE', 'MURIEL', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(15, '0000-00-00', 'H59811', 'BERRUTI', 'PHILIPPE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(16, '0000-00-00', 'a04153', 'CALCAVECCHIA', 'AMANDINE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(17, '0000-00-00', 'G79870', 'CALLINI', 'MATHILDE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60', '0', '0', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(18, '0000-00-00', 'd97947', 'CAMPOY', 'BEATRICE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(19, '0000-00-00', 'H64755', 'CANAVESIO', 'JULIE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '480', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(20, '0000-00-00', 'D94651', 'CASIMIR', 'DAVID', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(21, '0000-00-00', 'D54111', 'CAU', 'ANTOINE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '480', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(22, '0000-00-00', 'f17732', 'CHEMIN', 'ELISABETH', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(23, '0000-00-00', 'j69073', 'CHERECHES', 'LAETITIA', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(24, '0000-00-00', 'f23929', 'CHIANEA', 'MIREILLE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '480', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(25, '0000-00-00', 'JC16FC2N', 'CHIERA', 'JOCELYNE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(26, '0000-00-00', 'gc14a5bn', 'CHOUASNE-GUILLON', 'GWENDOLINE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(27, '0000-00-00', 'G54811', 'COLE', 'MARIE-JOSEE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(28, '0000-00-00', 'D52274', 'CONTI', 'ESTELLE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(29, '0000-00-00', 'g66475', 'CORNIL', 'ALEXIA', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '0', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(30, '0000-00-00', 'B52827', 'DARDALHON', 'VALERIE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '360', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(31, '0000-00-00', 'd85955', 'DAUMIN', 'DOMINIQUE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '480', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `planning` (`id_planning`, `date`, `NNI Agent`, `Nom Agent`, `Prénom Agent`, `1° MES`, `ACCOMPAGNEMENT FORMATION PAR EXPERT`, `Accompagnement managérial`, `Accueil Nouvel arrivant`, `Analyse Rebonds`, `B.O. RAF`, `B.O. RECLA`, `BO AD ODIGO`, `BO AD Relance`, `BO AD Satis`, `Cartes T`, `Chantier Divers`, `Conférence Téléphonique`, `Contrôle Interne`, `Courrier`, `Débordement LAD`, `Découverte`, `Déménagement`, `Distrère 102`, `Distrère Pré 102`, `E-Learning`, `EAAP`, `Ecole`, `Exp Métier Distrere`, `Exp Métier K1`, `Exp Métier Raf`, `Exp Métier Récla`, `Exp Métier SGE`, `Expertise AD`, `EXPERTISE PPV`, `Formation Distrere`, `Formation Div`, `Formation K1`, `Formation LAD`, `Formation Ligne 1`, `Formation Ligne 4`, `Formation Pre102`, `Formation RAF`, `Formation SGE`, `GC144`, `Guichet Valid`, `Hho Elec`, `IA`, `Injection RAF`, `Innovation`, `K1 CANNES`, `K1 NICE`, `K1 VAR`, `L9 AM`, `L9 VAR`, `Ligne 1`, `Ligne 4`, `Ligne 6`, `Ligne AD`, `Ligne CAD`, `LPNT`, `LPNT K1`, `LPNT SGE`, `LPNT Valid`, `Mail AD`, `Mail Boîte ACH`, `Mails Boîte qualité`, `Pagode`, `PANNE`, `Point Etape`, `PPV`, `Projet apprenti`, `RAF`, `Réclas SGE`, `Réquisitions`, `Réunion`, `Réunion Equipe`, `Réunion extérieure`, `Réunion Métier`, `S6`, `SAF/REL`, `SGE`, `SITE`, `Solde SGE & M002 d Annulation`, `Suivi M018`, `Valid RAF`, `Visite Médicale`, `10 - Repos compensateur`, `14 - Disponibilité cadre`, `15 - Repos pour cadre hors ATT`, `16 - Abs mission électricien sans frontière`, `19 - Congé avant retraite`, `20 - Fête locale`, `21 - Congé annuel`, `22 - Enseignement occasionnel`, `23 - Apprenti en centre de formation`, `24 - CIF temps partiel - FPC`, `25 - Plan formation non lib FPC`, `28 - Réunion d'information du personnel`, `33 - Congé spécial familial`, `35 - Plan formation libératoire FPC`, `36 - Formation pers enc CCAS`, `3A - M à dispo auprès CCAS pour encadrement`, `3E - FPMAE temps plein`, `3H - Mission moyenne durée à l'international`, `3I - Mission longue durée à l'international`, `41 - Maladie ou accident non professionnel`, `43 - Absence non rénumérée élu local`, `46 - Réunion synd ou RP - convoc hiérarchie`, `48 - CE - CCE - formation éco des membres`, `50 - CHSCT - formation des membres`, `51 - Congé formation ESS`, `52 - Grève et autres mouvements revendicatifs`, `55 - Absence injustifiée`, `56 - Congé annuel CCS -21ans`, `5A - Longue maladie < 3 ans`, `5D - Accident travail - trajet`, `5F - Rechute accident du travail - trajet`, `5H - Accident ou maladie non professionnels`, `5K - Incarcération`, `5L - Mise à pied`, `5N - Suspension contrat de travail`, `5V - Maternité ou adoption`, `5X - CSS exceptionnel 1 à 3 mois`, `5Y - Congé épargne temps`, `60 - Social régime mutualiste`, `61 - Bilan de compétence plan de formation`, `62 - Bilan de compétence CIF`, `63 - Social organismes sociaux plan national`, `68 - Congé non rémunéré à retenue différée`, `6A - Congé de présence parentale`, `6B - Congé solidarité familiale`, `6C - Congé sabbatique non statutaire`, `6D - Congé création d'entreprise non stat`, `6E - Rechute AT - service`, `6F - Rechute maladie professionnelle`, `6H - Maladie professionnelle`, `6I - AT service`, `6L - CSS pour élever un enfant < 8 ans`, `6M - CSS exception accueil enfant handicapé`, `81 - Coordination synd niveau directions`, `82 - Conseil de surveillance ERDF`, `83 - Comité groupe France GDF SUEZ - CH`, `84 - Comité groupe France GDF SUEZ - réunion`, `85 - Conseil d'administration GrDF`, `87 - CHSCT - rencontre annuelle secrétaires`, `8A - Représentant syndical CE crédit d'heure`, `8B - Représentant syndical CCE crédit d'heure`, `8C - Délégué syndical central crédit d'heure`, `8D - Délégué du personnel réunion`, `8E - Délégué du personnel crédit d'heure mois`, `8F - CSP - réunion`, `8G - CSP - crédit d'heure`, `8H - CHSCT - enquêtes ATMP`, `8I - CHSCT - réunion`, `8J - CHSCT - crédit d'heure mensuel`, `8K - CE - réunion`, `8L - CE - crédit d'heure mensuel`, `8M - CE - commissions facultatives`, `8N - CE - commission égalité professionnelle`, `8O - CE - commission formation`, `8P - CE - commission info et aide au logement`, `8Q - CCE - réunion`, `8R - CCE - crédit d'heure mensuel`, `8S - CCE - commissions facultatives`, `8T - CCE - commission égalité professionnelle`, `8U - CCE - commission économique`, `8V - CCE - commission formation`, `8W - CCE - commission info et aide logement`, `8X - Représentant sect syndicale crédit d'heure`, `8Y - GNM santé au travail - réunion`, `8Z - Comité de groupe France EDF`, `91 - Conseil d'atelier ou de bureau`, `96 - Absence rémunérée élu local`, `AD - Parrain marraine accord DEFI`, `AS - Activité sportive`, `CD - Absence diverse rémunérée`, `CE - Congé épargne temps - courte durée`, `CF - CIF temps plein - FPC`, `CN - Congé épargne temps - fin de carrière`, `CP - Conseiller prud'homal`, `CR - Congé annuel à résorber`, `CS - Conseiller salarié`, `CT - Congé d'ancienneté`, `CV - Convocation poste vacant`, `D1 - Délégué syndical crédit d'heure CFDT`, `D2 - Délégué syndical crédit d'heure CFE-CGC`, `D3 - Délégué syndical crédit d'heure CFTC`, `D4 - Délégué syndical crédit d'heure CGT`, `D5 - Délégué syndical crédit d'heure FO`, `D6 - Délégué syndical crédit d'heure autre`, `DE - Déménagement`, `E1 - Représentant d'entreprise crédit d'heure CFDT`, `E2 - Représentant d'entreprise crédit d'h CFE-CGC`, `E4 - Représentant d'entreprise crédit d'heure CGT`, `E5 - Représentant d'entreprise crédit d'heure FO`, `EM - Absence enfant malade`, `EX - Absence examen médical ou SS`, `FA - Absence familiale rémunérée`, `FD - Formation - HTTE Plan`, `FE - Femme enceinte`, `FI - Formation - HTTE DIF`, `FR - Repos forfait jours ERDF`, `FT - Formation - STTE DIF`, `FV - Formation - DTT Plan`, `GR - Grève salarié requis ERDF`, `H9 - Absence compensation du samedi`, `HF - Crédit d'heures formation`, `HH - Absence mission habitat for humanity`, `IF - Intervention FIRE week-end et jour férié`, `IM - Instruction militaire`, `IR - Observatoire métier IRIEEC`, `J4 - Repos supplémentaire JRS`, `JNT - Journée Non Travaillée`, `JR - Congé épargne jour retraite fractionné`, `L1 - Section syndicale crédit d'heure CFDT`, `L2 - Section syndicale crédit d'heure CFE-CGC`, `L3 - Section syndicale crédit d'heure CFTC`, `L4 - Section syndicale crédit d'heure CGT`, `L5 - Section syndicale crédit d'heure FO`, `L6 - Section syndicale crédit d'heure autre`, `MF - Congé mère de famille`, `MI - Activité d'information`, `N1 - Activité syndicale entreprise CFDT`, `N2 - Actibité syndicale entreprise CFE-CGC`, `N3 - Activité syndicale entreprise CFTC`, `N4 - Activité syndicale entreprise CGT`, `N5 - Activité syndicale entreprise FO`, `N6 - Activité syndicale entreprise Autre`, `PA - Congé de paternité`, `PH - Absence démarche MDPH & CDAPH`, `PV - Sapeur pompier volontaire`, `R1 - Activité syndicale régionale CFDT`, `R2 - Activité syndicale régionale CFE-CGC`, `R3 - Activité syndicale régionale CFTC`, `R4 - Activité syndicale régionale CGT`, `R5 - Activité syndicale régionale FO`, `R6 - Activité syndicale régionale autre`, `RD - Réduction horaire dû annualisé`, `RF - Récupération FIRE week-end et jour férié`, `RH - Repos hebdomadaire de 35H`, `RJ - Repos journalier de 11H`, `RM - Réserve militaire`, `RS - Rentrée scolaire`, `S1 - Social correspondant SLV non mutualiste`, `S2 - Social mercredi`, `S3 - Social convoyage enfant`, `S4 - Social commission`, `S5 - Social correspondant SLV mutualiste`, `S6 - Social Administrateur et CA CAS`, `S9 - Social divers`, `SH - Sportif de haut niveau`, `TS - Trajet`, `X1 - Représent sect synd CH CFDT - ERDF`, `X2 - Représent sect synd CH CFE-CGC - ERDF`, `X3 - Représent sect synd CH CFTC - ERDF`, `X4 - Représent sect synd CH CGT - ERDF`, `X5 - Représent sect synd CH FO - ERDF`, `Z7 - CSNP et sous-commissions`, `Z8 - Organismes nationaux du régime spécial`, `ZP - Conseil de surveillance FCPE`) VALUES
(32, '0000-00-00', 'i67500', 'DEMORY', 'HUBERT', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '480', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(33, '0000-00-00', 'h91054', 'DESROSES', 'NATHALIE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(34, '0000-00-00', 'F67801', 'DI BERARDINO', 'FABIENNE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '480', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(35, '0000-00-00', 'F77302', 'DI GIANDOMENICO', 'NATHALIE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(36, '0000-00-00', 'E86740', 'DUBOISSET', 'CHRISTINE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(37, '0000-00-00', 'I08275', 'DUSSOL', 'STEPHANIE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(38, '0000-00-00', 'B62774', 'ETZI', 'JULIE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(39, '0000-00-00', 'A43434', 'FECHINO', 'JEAN-BRUNO', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '270', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(40, '0000-00-00', 'a79911', 'FERRER', 'MARIE-LINE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '30', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '270', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(41, '0000-00-00', 'j59111', 'FRONTERO', 'MARIE-LAURE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(42, '0000-00-00', 'B47102', 'GERBENS', 'FRANCK', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(43, '0000-00-00', 'd47202', 'GERBENS', 'MYLENE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60', '0', '120', '60', '0', '0', '0', '0', '0', '0', '0', '240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(44, '0000-00-00', 'A79346', 'GIOVANNELLI', 'DIDIER', '0', '0', '0', '0', '0', '0', '0', '240', '0', '60', '0', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(45, '0000-00-00', 'c94475', 'GUEGAN', 'LAETITIA', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(46, '0000-00-00', 'KH166ean', 'HAMILA', 'KARIMA', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '420', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(47, '0000-00-00', 'G93957', 'HERAIL', 'CHARLENE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '300', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(48, '0000-00-00', 'lg05058c', 'INT . GUEGAN', 'LAETITIA', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(49, '0000-00-00', 'FT04A7BN', 'Int .TRAVERS', 'FABIENNE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(50, '0000-00-00', 'AC06293S', 'Int. CORNIL', 'ALEXIA', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(51, '0000-00-00', 'g25311', 'IRLES', 'CORINNE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(52, '0000-00-00', 'h33336', 'JANIL', 'CEDRIC', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(53, '0000-00-00', 'f82140', 'JIGUET', 'SANDRINE', '0', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '293', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '114', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(54, '0000-00-00', 'NJ07317S', 'JUDE', 'NICOLAS', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(55, '0000-00-00', 'D20212', 'LA SPESA', 'MARTINE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(56, '0000-00-00', 'cl1485en', 'LABERTI', 'CEDRIC', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(57, '0000-00-00', 'J62974', 'LANEYRIE', 'MARION', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '420', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(58, '0000-00-00', 'al1463fn', 'LELEU', 'ALEXANDRE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(59, '0000-00-00', 'F96645', 'LEMPEREUR', 'PATRICIA', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(60, '0000-00-00', 'J65557', 'LOPEZ', 'FLORA', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(61, '0000-00-00', 'H20709', 'LOTTE', 'PASCAL', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(62, '0000-00-00', 'H60819', 'LUSTEAU', 'SYLVIE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `planning` (`id_planning`, `date`, `NNI Agent`, `Nom Agent`, `Prénom Agent`, `1° MES`, `ACCOMPAGNEMENT FORMATION PAR EXPERT`, `Accompagnement managérial`, `Accueil Nouvel arrivant`, `Analyse Rebonds`, `B.O. RAF`, `B.O. RECLA`, `BO AD ODIGO`, `BO AD Relance`, `BO AD Satis`, `Cartes T`, `Chantier Divers`, `Conférence Téléphonique`, `Contrôle Interne`, `Courrier`, `Débordement LAD`, `Découverte`, `Déménagement`, `Distrère 102`, `Distrère Pré 102`, `E-Learning`, `EAAP`, `Ecole`, `Exp Métier Distrere`, `Exp Métier K1`, `Exp Métier Raf`, `Exp Métier Récla`, `Exp Métier SGE`, `Expertise AD`, `EXPERTISE PPV`, `Formation Distrere`, `Formation Div`, `Formation K1`, `Formation LAD`, `Formation Ligne 1`, `Formation Ligne 4`, `Formation Pre102`, `Formation RAF`, `Formation SGE`, `GC144`, `Guichet Valid`, `Hho Elec`, `IA`, `Injection RAF`, `Innovation`, `K1 CANNES`, `K1 NICE`, `K1 VAR`, `L9 AM`, `L9 VAR`, `Ligne 1`, `Ligne 4`, `Ligne 6`, `Ligne AD`, `Ligne CAD`, `LPNT`, `LPNT K1`, `LPNT SGE`, `LPNT Valid`, `Mail AD`, `Mail Boîte ACH`, `Mails Boîte qualité`, `Pagode`, `PANNE`, `Point Etape`, `PPV`, `Projet apprenti`, `RAF`, `Réclas SGE`, `Réquisitions`, `Réunion`, `Réunion Equipe`, `Réunion extérieure`, `Réunion Métier`, `S6`, `SAF/REL`, `SGE`, `SITE`, `Solde SGE & M002 d Annulation`, `Suivi M018`, `Valid RAF`, `Visite Médicale`, `10 - Repos compensateur`, `14 - Disponibilité cadre`, `15 - Repos pour cadre hors ATT`, `16 - Abs mission électricien sans frontière`, `19 - Congé avant retraite`, `20 - Fête locale`, `21 - Congé annuel`, `22 - Enseignement occasionnel`, `23 - Apprenti en centre de formation`, `24 - CIF temps partiel - FPC`, `25 - Plan formation non lib FPC`, `28 - Réunion d'information du personnel`, `33 - Congé spécial familial`, `35 - Plan formation libératoire FPC`, `36 - Formation pers enc CCAS`, `3A - M à dispo auprès CCAS pour encadrement`, `3E - FPMAE temps plein`, `3H - Mission moyenne durée à l'international`, `3I - Mission longue durée à l'international`, `41 - Maladie ou accident non professionnel`, `43 - Absence non rénumérée élu local`, `46 - Réunion synd ou RP - convoc hiérarchie`, `48 - CE - CCE - formation éco des membres`, `50 - CHSCT - formation des membres`, `51 - Congé formation ESS`, `52 - Grève et autres mouvements revendicatifs`, `55 - Absence injustifiée`, `56 - Congé annuel CCS -21ans`, `5A - Longue maladie < 3 ans`, `5D - Accident travail - trajet`, `5F - Rechute accident du travail - trajet`, `5H - Accident ou maladie non professionnels`, `5K - Incarcération`, `5L - Mise à pied`, `5N - Suspension contrat de travail`, `5V - Maternité ou adoption`, `5X - CSS exceptionnel 1 à 3 mois`, `5Y - Congé épargne temps`, `60 - Social régime mutualiste`, `61 - Bilan de compétence plan de formation`, `62 - Bilan de compétence CIF`, `63 - Social organismes sociaux plan national`, `68 - Congé non rémunéré à retenue différée`, `6A - Congé de présence parentale`, `6B - Congé solidarité familiale`, `6C - Congé sabbatique non statutaire`, `6D - Congé création d'entreprise non stat`, `6E - Rechute AT - service`, `6F - Rechute maladie professionnelle`, `6H - Maladie professionnelle`, `6I - AT service`, `6L - CSS pour élever un enfant < 8 ans`, `6M - CSS exception accueil enfant handicapé`, `81 - Coordination synd niveau directions`, `82 - Conseil de surveillance ERDF`, `83 - Comité groupe France GDF SUEZ - CH`, `84 - Comité groupe France GDF SUEZ - réunion`, `85 - Conseil d'administration GrDF`, `87 - CHSCT - rencontre annuelle secrétaires`, `8A - Représentant syndical CE crédit d'heure`, `8B - Représentant syndical CCE crédit d'heure`, `8C - Délégué syndical central crédit d'heure`, `8D - Délégué du personnel réunion`, `8E - Délégué du personnel crédit d'heure mois`, `8F - CSP - réunion`, `8G - CSP - crédit d'heure`, `8H - CHSCT - enquêtes ATMP`, `8I - CHSCT - réunion`, `8J - CHSCT - crédit d'heure mensuel`, `8K - CE - réunion`, `8L - CE - crédit d'heure mensuel`, `8M - CE - commissions facultatives`, `8N - CE - commission égalité professionnelle`, `8O - CE - commission formation`, `8P - CE - commission info et aide au logement`, `8Q - CCE - réunion`, `8R - CCE - crédit d'heure mensuel`, `8S - CCE - commissions facultatives`, `8T - CCE - commission égalité professionnelle`, `8U - CCE - commission économique`, `8V - CCE - commission formation`, `8W - CCE - commission info et aide logement`, `8X - Représentant sect syndicale crédit d'heure`, `8Y - GNM santé au travail - réunion`, `8Z - Comité de groupe France EDF`, `91 - Conseil d'atelier ou de bureau`, `96 - Absence rémunérée élu local`, `AD - Parrain marraine accord DEFI`, `AS - Activité sportive`, `CD - Absence diverse rémunérée`, `CE - Congé épargne temps - courte durée`, `CF - CIF temps plein - FPC`, `CN - Congé épargne temps - fin de carrière`, `CP - Conseiller prud'homal`, `CR - Congé annuel à résorber`, `CS - Conseiller salarié`, `CT - Congé d'ancienneté`, `CV - Convocation poste vacant`, `D1 - Délégué syndical crédit d'heure CFDT`, `D2 - Délégué syndical crédit d'heure CFE-CGC`, `D3 - Délégué syndical crédit d'heure CFTC`, `D4 - Délégué syndical crédit d'heure CGT`, `D5 - Délégué syndical crédit d'heure FO`, `D6 - Délégué syndical crédit d'heure autre`, `DE - Déménagement`, `E1 - Représentant d'entreprise crédit d'heure CFDT`, `E2 - Représentant d'entreprise crédit d'h CFE-CGC`, `E4 - Représentant d'entreprise crédit d'heure CGT`, `E5 - Représentant d'entreprise crédit d'heure FO`, `EM - Absence enfant malade`, `EX - Absence examen médical ou SS`, `FA - Absence familiale rémunérée`, `FD - Formation - HTTE Plan`, `FE - Femme enceinte`, `FI - Formation - HTTE DIF`, `FR - Repos forfait jours ERDF`, `FT - Formation - STTE DIF`, `FV - Formation - DTT Plan`, `GR - Grève salarié requis ERDF`, `H9 - Absence compensation du samedi`, `HF - Crédit d'heures formation`, `HH - Absence mission habitat for humanity`, `IF - Intervention FIRE week-end et jour férié`, `IM - Instruction militaire`, `IR - Observatoire métier IRIEEC`, `J4 - Repos supplémentaire JRS`, `JNT - Journée Non Travaillée`, `JR - Congé épargne jour retraite fractionné`, `L1 - Section syndicale crédit d'heure CFDT`, `L2 - Section syndicale crédit d'heure CFE-CGC`, `L3 - Section syndicale crédit d'heure CFTC`, `L4 - Section syndicale crédit d'heure CGT`, `L5 - Section syndicale crédit d'heure FO`, `L6 - Section syndicale crédit d'heure autre`, `MF - Congé mère de famille`, `MI - Activité d'information`, `N1 - Activité syndicale entreprise CFDT`, `N2 - Actibité syndicale entreprise CFE-CGC`, `N3 - Activité syndicale entreprise CFTC`, `N4 - Activité syndicale entreprise CGT`, `N5 - Activité syndicale entreprise FO`, `N6 - Activité syndicale entreprise Autre`, `PA - Congé de paternité`, `PH - Absence démarche MDPH & CDAPH`, `PV - Sapeur pompier volontaire`, `R1 - Activité syndicale régionale CFDT`, `R2 - Activité syndicale régionale CFE-CGC`, `R3 - Activité syndicale régionale CFTC`, `R4 - Activité syndicale régionale CGT`, `R5 - Activité syndicale régionale FO`, `R6 - Activité syndicale régionale autre`, `RD - Réduction horaire dû annualisé`, `RF - Récupération FIRE week-end et jour férié`, `RH - Repos hebdomadaire de 35H`, `RJ - Repos journalier de 11H`, `RM - Réserve militaire`, `RS - Rentrée scolaire`, `S1 - Social correspondant SLV non mutualiste`, `S2 - Social mercredi`, `S3 - Social convoyage enfant`, `S4 - Social commission`, `S5 - Social correspondant SLV mutualiste`, `S6 - Social Administrateur et CA CAS`, `S9 - Social divers`, `SH - Sportif de haut niveau`, `TS - Trajet`, `X1 - Représent sect synd CH CFDT - ERDF`, `X2 - Représent sect synd CH CFE-CGC - ERDF`, `X3 - Représent sect synd CH CFTC - ERDF`, `X4 - Représent sect synd CH CGT - ERDF`, `X5 - Représent sect synd CH FO - ERDF`, `Z7 - CSNP et sous-commissions`, `Z8 - Organismes nationaux du régime spécial`, `ZP - Conseil de surveillance FCPE`) VALUES
(63, '0000-00-00', 'E45011', 'LUXI', 'MICHEL', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(64, '0000-00-00', 'E84622', 'MAGNAN  FRISINA', 'AGNES', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '420', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(65, '0000-00-00', 'i99611', 'MARE', 'DOLORES', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(66, '0000-00-00', 'b15556', 'MASSON', 'VALERIE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(67, '0000-00-00', 'c37975', 'MELIN', 'VALERIE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '480', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(68, '0000-00-00', 'c94311', 'MICHELOTTI', 'MAGALI', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '480', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(69, '0000-00-00', 'mm0e53cn', 'MOHAMED', 'MRAHATI', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(70, '0000-00-00', 'E50642', 'MORLOT', 'SABINE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '360', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(71, '0000-00-00', 'E37075', 'MOUZAOUI', 'FADELA', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '420', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(72, '0000-00-00', 'F66038', 'MSIHID', 'MANUEL', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(73, '0000-00-00', 'i99808', 'NOURRY', 'JOEL', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(74, '0000-00-00', 'D76347', 'OURGIAS', 'NATHALIE', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(75, '0000-00-00', 'e76347', 'PETTAVINO', 'NATHALIE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '480', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(76, '0000-00-00', 'd83347', 'PLUMET', 'MURIELLE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '480', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(77, '0000-00-00', 'D91100', 'RINGOT', 'MARIE-CLAIRE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '480', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(78, '0000-00-00', 'a06211', 'ROBECCHI', 'RODOLPHE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '420', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(79, '0000-00-00', 'H56111', 'SGRO', 'PATRICIA', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(80, '0000-00-00', 'SILVA', 'JULIA', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
(81, '0000-00-00', 'h54332', 'SOGORB', 'FREDERIC', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '60', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(82, '0000-00-00', 'F08646', 'TOBLET', 'JACQUES', '0', '0', '0', '0', '0', '0', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(83, '0000-00-00', 'c52075', 'TRANCART', 'ELOISE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(84, '0000-00-00', 'c95675', 'TRAVERS', 'FABIENNE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(85, '0000-00-00', 'LV1635FN', 'VANDOMMELE', 'LAETITIA', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '360', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(86, '0000-00-00', 'G73374', 'VASSEUX', 'ANNETTE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '240', '0', '0', '0', '0', '0', '0', '240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(87, '0000-00-00', 'f47271', 'VILAIN', 'BENOIT', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(88, '0000-00-00', 'J15229', 'VISSIO', 'JEAN JACQUES', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '480', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(89, '0000-00-00', 'D79355', 'WINSBACK', 'SORIA', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '480', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

CREATE TABLE IF NOT EXISTS `profil` (
  `id_profil` tinyint(2) NOT NULL AUTO_INCREMENT,
  `Nom_Profil` text NOT NULL,
  PRIMARY KEY (`id_profil`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `profil`
--

INSERT INTO `profil` (`id_profil`, `Nom_Profil`) VALUES
(1, 'Administrateur'),
(2, 'Manager'),
(3, 'Agent');

-- --------------------------------------------------------

--
-- Structure de la table `sous_activite`
--

CREATE TABLE IF NOT EXISTS `sous_activite` (
  `id_sous_activite` tinyint(2) NOT NULL AUTO_INCREMENT,
  `Nom_Sous_Activite` text NOT NULL,
  `id_activite` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_sous_activite`),
  KEY `id_activite` (`id_activite`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- Contenu de la table `sous_activite`
--

INSERT INTO `sous_activite` (`id_sous_activite`, `Nom_Sous_Activite`, `id_activite`) VALUES
(1, 'Mails Ach', 51),
(2, 'Ligne AD', 42),
(3, 'BO AD SATISF', 75),
(4, 'BO AD RELANCES', 75),
(5, 'mail AD', 75),
(7, 'Recla M009', 78),
(8, 'Instance d''appels', 33),
(9, 'Guichet (validation des réclas)', 31),
(10, 'BO réclas', 5),
(11, 'injection RAF', 34),
(12, 'RAF Erreur d''index', 58),
(13, 'RAF Inversion', 58),
(14, 'RAF Autres', 58),
(15, 'BO RAF', 4),
(16, 'HOT LINE PNT', 44),
(17, 'PAGODE', 53),
(18, 'Ligne 4', 40),
(19, 'DISTRERE 102 Anomalies + Erreurs', 10),
(20, 'DISTRERE 102 4 absences', 10),
(21, 'DISTRERE 102 IR', 10),
(22, 'DISTRERE IR Consos/inactif coupé', 10),
(23, 'DISTRERE PRE102 Anomalies', 11),
(24, 'DISTRERE PRE102 Forçages index inférieurs ou conso trop forte', 11),
(25, 'DISTRERE PRE102 Forçages index inférieurs au dernier réel QE', 11),
(26, 'DISTRERE PRE102 Forçages conso nulles sur ce cadran', 11),
(27, 'DISTRERE PRE102 Forçages conso nulles sur CBE', 11),
(28, 'DISTRERE PRE102 Défaut tension Compteur', 11),
(29, 'Boite qualité', 52),
(30, 'Cartes T', 6),
(31, 'Ligne 1', 39),
(32, 'SGE F120B', 68),
(33, 'SGE F130B', 68),
(34, 'SGE F140', 68),
(35, 'SGE F180', 68),
(36, 'SGE F185', 68),
(37, 'SGE F200B', 68),
(38, 'SGE F360', 68),
(39, 'SGE F420C', 68),
(40, 'SGE F920', 68),
(41, 'SGE F940B', 68),
(42, 'SGE M002', 68),
(43, 'SGE F100B', 68),
(44, 'solde SGE', 69),
(45, 'K1', 38),
(46, '1ère MES', 1),
(47, 'PPV', 55),
(48, 'GC144', 77),
(49, 'Accompagnement', 2),
(51, 'DISTRERE PRE 102 Forçage conso nulle', 11),
(53, 'DISTRERE PRE 102 Défaut de tension', 11),
(54, 'SGE', 68),
(55, 'BO AD ODIGO', 75),
(56, 'LINKY', 79),
(57, 'RAF Compteur Bloqué', 58),
(58, 'RAF Compteur Bloqué tempo', 58),
(59, 'RAF Relais bloqué', 58),
(60, 'Boîte Qualité SMS', 52),
(61, 'Expertise', 82),
(62, 'L9', 1),
(63, 'Former aux campagnes de releve', 83),
(64, 'RAF Facture aberrante', 58);

-- --------------------------------------------------------

--
-- Structure de la table `sous_module`
--

CREATE TABLE IF NOT EXISTS `sous_module` (
  `id_sous_module` tinyint(2) NOT NULL AUTO_INCREMENT,
  `Nom_Sous_Module` text NOT NULL,
  `id_sous_activite` tinyint(2) NOT NULL,
  `id_module` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_sous_module`),
  KEY `id_sous_activite` (`id_sous_activite`),
  KEY `id_module` (`id_module`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- Contenu de la table `sous_module`
--

INSERT INTO `sous_module` (`id_sous_module`, `Nom_Sous_Module`, `id_sous_activite`, `id_module`) VALUES
(1, 'MODULE 1 : DECOUVERTE DE L''ACTIVITE', 31, 1),
(2, 'MODULE 2 : ACCOMPAGNER EN DOUBLON PAR EXPERT', 31, 1),
(3, 'MODULE 3 : EN DOUBLON AVEC AUTRES AGENTS', 31, 1),
(4, 'MODULE 1 : FORMATION GENERALE', 2, 2),
(5, 'MODULE 2 : RELATION CLIENT', 2, 2),
(6, 'MODULE 3 : FORMATIONS DIVERSES', 2, 2),
(7, 'MODULE 4 : ACCOMPAGNER EN DOUBLON', 2, 2),
(8, 'MODULE 5 : MISE EN SITUATION', 2, 2),
(9, 'MODULE 1 : FORMATION GENERALE', 56, 3),
(10, 'MODULE 2 : RELATION CLIENT', 56, 3),
(11, 'MODULE 3 : FORMATIONS DIVERSES', 56, 3),
(12, 'MODULE 4 : ACCOMPAGNER EN DOUBLON', 56, 3),
(13, 'MODULE 5 : MISE EN SITUATION', 56, 3),
(14, 'MODULE 1 : DECOUVERTE DE L''ACTIVITE', 16, 4),
(15, 'MODULE 2 : PRESENTATION DE L''ACTIVITE', 16, 4),
(16, 'MODULE 3 : FORMATION A L''ACTIVITE EN DOUBLON', 16, 4),
(17, 'MODULE 4 : CONCRETISATION DE L''ACTIVITE EN DOUBLON', 16, 4),
(18, 'MODULE 5 : MISE EN SITUATION', 16, 4),
(19, 'MODULE 6 : CONTROLE D''ACTIVITE PAR L''EXPERT', 16, 4),
(20, 'MODULE 7 : ACCOMPAGNEMENT ET BILAN PAR L''EXPERT', 16, 4),
(21, 'MODULE 1 : DECOUVERTE ET FORMATION', 51, 5),
(22, 'MODULE 2 : ACCOMPAGNEMENT EN DOUBLON', 51, 5),
(24, 'MODULE 3 : MISE AUTONOMIE DE L''AGENT SUR L''ACTIVITE', 51, 5),
(25, 'MODULE 4 : ACCOMPAGNEMENT ET BILAN PAR L''EXPERT', 51, 5),
(26, 'MODULE 1 : FORCAGE INDEX INFERIEUR', 24, 6),
(27, 'MODULE 2 : FORCAGE CONSOMMATION TROP FORTE', 24, 6),
(28, 'MODULE 3 : ACCOMPAGNEMENT ET BILAN PAR L''EXPERT', 24, 6),
(29, 'MODULE 1 : ANOMALIES "non accessibles"', 23, 7),
(30, 'MODULE 2 : MISE AUTONOMIE DE L''AGENT SUR L''ACTIVITE', 23, 7),
(31, 'MODULE 3 : ACCOMPAGNEMENT ET BILAN PAR L''EXPERT', 23, 7),
(32, 'MODULE 1 : DEFAUTS DE TENSION', 53, 8),
(33, 'MODULE 2 : MISE AUTONOMIE DE L''AGENT SUR L''ACTIVITE', 53, 8),
(34, 'MODULE 3 : ACCOMPAGNEMENT ET BILAN PAR L''EXPERT', 53, 8),
(35, 'MODULE 1 : DECOUVERTE ET FORMATION', 19, 9),
(36, 'MODULE 2 : ACCOMPAGNEMENT EN DOUBLON', 19, 9),
(37, 'MODULE 3 : MISE AUTONOMIE DE L''AGENT', 19, 9),
(38, 'MODULE 4 : ACCOMPAGNEMENT ET BILAN PAR L''EXPERT', 19, 9),
(39, 'MODULE 1 : DECOUVERTE DE L''ACTIVITE', 29, 10),
(40, 'MODULE 2 : MISE EN SITUATION', 29, 10),
(41, 'MODULE 3 : CONTROLE D''ACTIVITE PAR L''EXPERT', 29, 10),
(42, 'MODULE 4 : ACCOMPAGNEMENT ET BILAN PAR L''EXPERT', 29, 10),
(43, 'MODULE 1 : FICHE MISE EN SERVICE', 54, 11),
(44, 'MODULE 2 : APROFONDISSEMENT DE L''ACTIVITE (1)', 54, 11),
(45, 'MODULE 3 : APROFONDISSEMENT DE L''ACTIVITE (2)', 54, 11),
(46, 'MODULE 4 : POUR FINIR... : LES DEMANDES DIVERSES', 54, 11),
(47, 'MODULE 5 : BILAN GLOBALE PAR L''EXPERT', 54, 11),
(48, 'MODULE 1 : PRESENTATION', 44, 12),
(49, 'MODULE 2 : MISE AUTONOMIE DE L''AGENT SUR L''ACTIVITE', 44, 12),
(50, 'MODULE 3 : ACCOMPAGNEMENT ET BILAN PAR L''EXPERT', 44, 12),
(51, 'MODULE 1 : DECOUVERTE DE L''ACTIVITE', 2, 13),
(52, 'MODULE 2 : MISE EN SITUATION', 2, 13),
(53, 'MODULE 3 : CONTROLE D''ACTIVITE PAR L''EXPERT', 2, 13),
(54, 'MODULE 4 : ACCOMPAGNEMENT ET BILAN PAR L''EXPERT', 2, 13),
(55, 'MODULE 1 : PRESENTATION TRAITEMENT K1', 45, 14),
(56, ' MODULE 2 : ACCOMPAGNEMENT EN DOUBLON PAR L''EXPERT', 45, 14),
(57, 'MODULE 3 : MISE AUTONOMIE DE L''AGENT SUR L''ACTIVITE', 45, 14),
(58, 'MODULE 4 : ACCOMPAGNEMENT ET BILAN PAR L''EXPERT', 45, 14),
(59, 'MODULE 1 : DECOUVERTE (THEME : Erreur d''index)', 11, 15),
(60, 'MODULE 2 : APPROFONDISSEMENT DE L''ACTIVITE (THEME : Relais bloqué)', 11, 15),
(61, 'MODULE 3 : APPROFONDISSEMENT DE L''ACTIVITE (THEME : Compteur bloqué)', 11, 15),
(62, 'MODULE 4 : APPROFONDISSEMENT DE L''ACTIVITE (THEME : Compteur bloqué tempo)', 11, 15),
(63, 'MODULE 5 : APPROFONDISSEMENT DE L''ACTIVITE (THEME : Relais tempo)', 11, 15),
(64, 'MODULE 6 : APPROFONDISSEMENT DE L''ACTIVITE', 11, 15),
(65, 'MODULE 1 : APPROFONDISSEMENT DE L''ACTIVITE', 15, 16),
(66, 'MODULE 1 : PRESENTATION', 7, 17),
(67, 'MODULE 2 : FORMATION(S)', 7, 17),
(68, 'MODULE 3 : APPROFONDISSEMENT', 7, 17),
(69, 'MODULE 4 : MISE AUTONOMIE DE L''AGENT SUR L''ACTIVITE', 7, 17),
(70, 'MODULE 5 : ACCOMPAGNEMENT ET BILAN PAR L''EXPERT', 7, 17),
(71, 'MODULE 1 : DECOUVERTE DE L''ACTIVITE', 17, 18),
(72, 'MODULE 2 : ACCOMPAGNEMENT', 17, 18),
(73, 'MODULE 3 : MISE EN SITUATION', 17, 18),
(74, 'MODULE 4 : ACCOMPAGNEMENT PAR L''EXPERT', 17, 18),
(75, 'MODULE 1 : PRESENTATION DE L''ACTIVITE', 46, 19),
(76, 'MODULE 2 : MISE AUTONOMIE DE L''AGENT SUR L''ACTIVITE', 46, 19),
(77, 'MODULE 3 : ACCOMPAGNEMENT ET BILAN PAR L''EXPERT', 46, 19),
(78, 'MODULE 1 : DECOUVERTE DE L''ACTIVITE', 47, 20),
(79, 'MODULE 2 : ACCOMPAGNEMENT EN DOUBLON AVEC L''EXPERT', 47, 20),
(80, 'MODULE 3 : MISE AUTONOMIE DE L''AGENT SUR L''ACTIVITE', 47, 20),
(81, 'MODULE 4 : ACCOMPAGNEMENT ET BILAN PAR L''EXPERT', 47, 20),
(82, 'MODULE 1 : DECOUVERTE DE L''ACTIVITE', 56, 21),
(83, 'MODULE 2 : ACCOMPAGNEMENT', 56, 21),
(84, 'MODULE 3 : MISE EN SITUATION', 56, 21),
(85, 'MODULE 4 : ACCOMPAGNEMENT PAR L''EXPERT', 56, 21);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `accompagnement`
--
ALTER TABLE `accompagnement`
  ADD CONSTRAINT `accompagnement_ibfk_3` FOREIGN KEY (`id_formation`) REFERENCES `formation` (`id_formation`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `agent`
--
ALTER TABLE `agent`
  ADD CONSTRAINT `agent_ibfk_2` FOREIGN KEY (`id_equipe`) REFERENCES `equipe` (`id_equipe`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `agent_ibfk_3` FOREIGN KEY (`id_profil`) REFERENCES `profil` (`id_profil`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `competence`
--
ALTER TABLE `competence`
  ADD CONSTRAINT `competence_ibfk_2` FOREIGN KEY (`id_sous_activite`) REFERENCES `sous_activite` (`id_sous_activite`) ON UPDATE CASCADE,
  ADD CONSTRAINT `competence_ibfk_3` FOREIGN KEY (`id_agent`) REFERENCES `agent` (`id_agent`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `formation`
--
ALTER TABLE `formation`
  ADD CONSTRAINT `formation_ibfk_2` FOREIGN KEY (`id_module`) REFERENCES `module` (`id_module`) ON UPDATE CASCADE,
  ADD CONSTRAINT `formation_ibfk_3` FOREIGN KEY (`id_sous_activite`) REFERENCES `sous_activite` (`id_sous_activite`) ON UPDATE CASCADE,
  ADD CONSTRAINT `formation_ibfk_4` FOREIGN KEY (`id_agent`) REFERENCES `agent` (`id_agent`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `sous_activite`
--
ALTER TABLE `sous_activite`
  ADD CONSTRAINT `sous_activite_ibfk_1` FOREIGN KEY (`id_activite`) REFERENCES `activite` (`id_activite`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `sous_module`
--
ALTER TABLE `sous_module`
  ADD CONSTRAINT `sous_module_ibfk_1` FOREIGN KEY (`id_sous_activite`) REFERENCES `sous_activite` (`id_sous_activite`) ON UPDATE CASCADE,
  ADD CONSTRAINT `sous_module_ibfk_2` FOREIGN KEY (`id_module`) REFERENCES `module` (`id_module`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
