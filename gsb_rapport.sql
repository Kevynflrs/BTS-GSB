-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 31 mars 2025 à 08:56
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gsb_rapport`
--

-- --------------------------------------------------------

--
-- Structure de la table `dirige`
--

DROP TABLE IF EXISTS `dirige`;
CREATE TABLE IF NOT EXISTS `dirige` (
  `Id_Délégué` int NOT NULL,
  `Id_Responsable` int NOT NULL,
  PRIMARY KEY (`Id_Délégué`,`Id_Responsable`),
  KEY `Id_Responsable` (`Id_Responsable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `délégué`
--

DROP TABLE IF EXISTS `délégué`;
CREATE TABLE IF NOT EXISTS `délégué` (
  `Id_Délégué` int NOT NULL AUTO_INCREMENT,
  `IdRegion` int NOT NULL,
  `Id_Utilisateur` int NOT NULL,
  PRIMARY KEY (`Id_Délégué`),
  KEY `IdRegion` (`IdRegion`),
  KEY `Id_Utilisateur` (`Id_Utilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `echantillon`
--

DROP TABLE IF EXISTS `echantillon`;
CREATE TABLE IF NOT EXISTS `echantillon` (
  `Id_Echantillon` int NOT NULL AUTO_INCREMENT,
  `DateDistributionEchantillon` date DEFAULT NULL,
  `NomEchantillon` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Libele` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `QuantitePrdouit` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id_Echantillon`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `practicien`
--

DROP TABLE IF EXISTS `practicien`;
CREATE TABLE IF NOT EXISTS `practicien` (
  `Id_Practicien` int NOT NULL AUTO_INCREMENT,
  `EmailPracticien` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `SpecialiteMedecin` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DescriptionMedecin` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Cabinet` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `AdressePracticien` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CodePostalPracticien` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `VillePracticien` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IdRegion` int NOT NULL,
  PRIMARY KEY (`Id_Practicien`),
  KEY `IdRegion` (`IdRegion`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `Id_Produit` int NOT NULL AUTO_INCREMENT,
  `NomProduit` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DateAjoutProduit` date DEFAULT NULL,
  `Libele` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `QuantiteProduit` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id_Produit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rapport`
--

DROP TABLE IF EXISTS `rapport`;
CREATE TABLE IF NOT EXISTS `rapport` (
  `Id_Rappport` int NOT NULL AUTO_INCREMENT,
  `AdresseRapport` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DateRapport` date DEFAULT NULL,
  `Id_Echantillon` int NOT NULL,
  `Id_Produit` int NOT NULL,
  `Id_Visiteur` int NOT NULL,
  `Id_Practicien` int NOT NULL,
  PRIMARY KEY (`Id_Rappport`),
  KEY `Id_Echantillon` (`Id_Echantillon`),
  KEY `Id_Produit` (`Id_Produit`),
  KEY `Id_Visiteur` (`Id_Visiteur`),
  KEY `Id_Practicien` (`Id_Practicien`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE IF NOT EXISTS `region` (
  `IdRegion` int NOT NULL AUTO_INCREMENT,
  `CodePostal` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `NomRegion` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`IdRegion`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `responsable`
--

DROP TABLE IF EXISTS `responsable`;
CREATE TABLE IF NOT EXISTS `responsable` (
  `Id_Responsable` int NOT NULL AUTO_INCREMENT,
  `Id_Utilisateur` int NOT NULL,
  PRIMARY KEY (`Id_Responsable`),
  KEY `Id_Utilisateur` (`Id_Utilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `Id_Utilisateur` int NOT NULL AUTO_INCREMENT,
  `MotDePasse` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `NomUtilisateur` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PrenomUtilisateur` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Login` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `NumeroTelephoneUtilisateur` decimal(10,2) DEFAULT NULL,
  `MailUtilisateur` decimal(10,2) DEFAULT NULL,
  `Rôle` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id_Utilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

DROP TABLE IF EXISTS `visiteur`;
CREATE TABLE IF NOT EXISTS `visiteur` (
  `Id_Visiteur` int NOT NULL AUTO_INCREMENT,
  `NumeroTelephoneVisiteur` decimal(10,2) DEFAULT NULL,
  `PrenomVisiteur` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `AdresseVisiteur` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `MailVisiteur` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IdRegion` int NOT NULL,
  `Id_Délégué` int NOT NULL,
  `Id_Utilisateur` int NOT NULL,
  PRIMARY KEY (`Id_Visiteur`),
  KEY `IdRegion` (`IdRegion`),
  KEY `Id_Délégué` (`Id_Délégué`),
  KEY `Id_Utilisateur` (`Id_Utilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

