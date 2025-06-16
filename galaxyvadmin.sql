-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : galaxyvadmin.mysql.db
-- Généré le : lun. 16 juin 2025 à 10:49
-- Version du serveur : 8.0.41-32
-- Version de PHP : 8.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `galaxyvadmin`
--

-- --------------------------------------------------------

--
-- Structure de la table `echantillon`
--

CREATE TABLE `echantillon` (
  `Id_Echantillon` int NOT NULL,
  `DateDistributionEchantillon` date DEFAULT NULL,
  `NomEchantillon` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Libele` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `QuantiteEchantillon` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `echantillon`
--

INSERT INTO `echantillon` (`Id_Echantillon`, `DateDistributionEchantillon`, `NomEchantillon`, `Libele`, `QuantiteEchantillon`) VALUES
(5, '2025-05-02', 'Ibuprofène 400mg', 'Anti-inflammatoire', '120'),
(4, '2025-05-01', 'Paracétamol 500mg', 'Antidouleur', '100'),
(6, '2025-05-03', 'Amoxicilline 500mg', 'Antibiotique', '80'),
(7, '2025-05-04', 'Cétirizine 10mg', 'Antihistaminique', '90'),
(8, '2025-05-05', 'Vitamine D3 1000UI', 'Complément', '110'),
(9, '2025-05-06', 'Oméprazole 20mg', 'Protecteur gastrique', '95'),
(10, '2025-05-07', 'Salbutamol inhalateur', 'Bronchodilatateur', '60'),
(11, '2025-05-08', 'Doliprane 1000mg', 'Antidouleur', '130'),
(12, '2025-05-09', 'Metformine 850mg', 'Antidiabétique', '70'),
(13, '2025-05-10', 'Simvastatine 20mg', 'Hypocholestérolémiant', '85'),
(14, '2025-05-11', 'Zyrtec 10mg', 'Antiallergique', '100'),
(15, '2025-05-12', 'Aspirine 100mg', 'Antiagrégant', '75'),
(16, '2025-05-13', 'Loratadine 10mg', 'Antihistaminique', '60'),
(17, '2025-05-14', 'Prednisone 5mg', 'Corticoïde', '50'),
(18, '2025-05-15', 'Clarithromycine 500mg', 'Antibiotique', '90'),
(19, '2025-05-16', 'Domperidone 10mg', 'Anti-nauséeux', '100'),
(20, '2025-05-17', 'Spasfon 80mg', 'Antispasmodique', '110'),
(21, '2025-05-18', 'Magnesium B6', 'Complément minéral', '120'),
(22, '2025-05-19', 'Lansoprazole 30mg', 'IPP', '95'),
(23, '2025-05-20', 'Efferalgan 500mg', 'Antalgique', '100'),
(24, '2025-05-21', 'Ventoline', 'Bronchodilatateur', '70'),
(25, '2025-05-22', 'Aerius 5mg', 'Antiallergique', '65'),
(26, '2025-05-23', 'Levothyrox 50µg', 'Hormone thyroïdienne', '85'),
(27, '2025-05-24', 'Xyzall 5mg', 'Antihistaminique', '100'),
(28, '2025-05-25', 'Nurofen 400mg', 'Antidouleur', '130'),
(29, '2025-05-26', 'Fervex adulte', 'Traitement grippe', '95'),
(30, '2025-05-27', 'Actifed jour/nuit', 'Rhume et allergies', '90'),
(31, '2025-05-28', 'Toplexil', 'Antitussif', '75'),
(32, '2025-05-29', 'Smecta', 'Antidiarrhéique', '60'),
(33, '2025-05-30', 'Rhinadvil', 'Décongestionnant', '80'),
(34, '2025-05-31', 'Hexaspray', 'Antiseptique gorge', '50'),
(35, '2025-06-01', 'Strepsils', 'Pastilles gorge', '65'),
(36, '2025-06-02', 'Dolirhume', 'Anti-rhume', '90'),
(37, '2025-06-03', 'Tiorfan 100mg', 'Anti-diarrhéique', '70'),
(38, '2025-06-04', 'Gaviscon', 'Reflux acide', '100'),
(39, '2025-06-05', 'Carbocistéine 750mg', 'Fluidifiant bronchique', '85'),
(40, '2025-06-06', 'Biafine', 'Brûlure/coup de soleil', '95'),
(41, '2025-06-07', 'Kétoprofène 100mg', 'Anti-inflammatoire', '80'),
(42, '2025-06-08', 'Voltarène 50mg', 'Anti-inflammatoire', '60'),
(43, '2025-06-09', 'Imodium', 'Antidiarrhéique', '55'),
(44, '2025-06-10', 'Maalox', 'Anti-acide', '75'),
(45, '2025-06-11', 'Dafalgan codéiné', 'Antalgique fort', '90'),
(46, '2025-06-12', 'Codoliprane', 'Antidouleur', '85'),
(47, '2025-06-13', 'Euphytose', 'Stress et sommeil', '70'),
(48, '2025-06-14', 'MagnéB6', 'Fatigue et stress', '100'),
(49, '2025-06-15', 'Antadys', 'Douleurs menstruelles', '65'),
(50, '2025-06-16', 'Cycladol', 'Douleurs menstruelles', '60'),
(51, '2025-06-17', 'Rennie', 'Brûlures d’estomac', '90'),
(52, '2025-06-18', 'Spifen 400mg', 'Anti-inflammatoire', '110'),
(53, '2025-06-19', 'Humex rhume', 'Décongestionnant', '80');

-- --------------------------------------------------------

--
-- Structure de la table `practicien`
--

CREATE TABLE `practicien` (
  `Id_Practicien` int NOT NULL,
  `EmailPracticien` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `SpecialiteMedecin` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DescriptionMedecin` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Cabinet` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `AdressePracticien` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CodePostalPracticien` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `VillePracticien` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IdRegion` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `practicien`
--

INSERT INTO `practicien` (`Id_Practicien`, `EmailPracticien`, `SpecialiteMedecin`, `DescriptionMedecin`, `Cabinet`, `AdressePracticien`, `CodePostalPracticien`, `VillePracticien`, `IdRegion`) VALUES
(6, 'h.durand@medmail.fr', 'Gynécologue', 'Spécialiste en gynécologue', 'Cabinet Gynécologue', '66 Rue de la Santé', '23113', 'Auvergne', 3),
(5, 'l.moreau@medmail.fr', 'Psychiatre', 'Spécialiste en psychiatre', 'Cabinet Psychiatre', '91 Rue de la Santé', '34149', 'Auvergne', 3),
(7, 'm.khan@medmail.fr', 'Pédiatre', 'Spécialiste en pédiatre', 'Cabinet Pédiatre', '89 Rue de la Santé', '77682', 'Auvergne', 3),
(8, 'j.dupont@medmail.fr', 'Gynécologue', 'Spécialiste en gynécologue', 'Cabinet Gynécologue', '86 Rue de la Santé', '98934', 'Auvergne', 3),
(9, 'a.leroy@medmail.fr', 'Endocrinologue', 'Spécialiste en endocrinologue', 'Cabinet Endocrinologue', '90 Rue de la Santé', '36254', 'Auvergne', 3),
(10, 'c.benoit@medmail.fr', 'Généraliste', 'Spécialiste en généraliste', 'Cabinet Généraliste', '46 Rue de la Santé', '15970', 'Bourgogne', 4),
(11, 'j.garcia@medmail.fr', 'Ophtalmologue', 'Spécialiste en ophtalmologue', 'Cabinet Ophtalmologue', '75 Rue de la Santé', '51588', 'Bourgogne', 4),
(12, 'l.martin@medmail.fr', 'Chirurgien', 'Spécialiste en chirurgien', 'Cabinet Chirurgien', '63 Rue de la Santé', '16452', 'Bourgogne', 4),
(13, 'p.benoit@medmail.fr', 'Généraliste', 'Spécialiste en généraliste', 'Cabinet Généraliste', '41 Rue de la Santé', '59630', 'Bourgogne', 4),
(14, 'p.schmidt@medmail.fr', 'Pédiatre', 'Spécialiste en pédiatre', 'Cabinet Pédiatre', '90 Rue de la Santé', '52384', 'Bourgogne', 4),
(15, 'p.moreau@medmail.fr', 'Endocrinologue', 'Spécialiste en endocrinologue', 'Cabinet Endocrinologue', '62 Rue de la Santé', '90567', 'Bretagne', 5),
(16, 'j.leroy@medmail.fr', 'Généraliste', 'Spécialiste en généraliste', 'Cabinet Généraliste', '13 Rue de la Santé', '50629', 'Bretagne', 5),
(17, 'm.dupont@medmail.fr', 'Pédiatre', 'Spécialiste en pédiatre', 'Cabinet Pédiatre', '8 Rue de la Santé', '40984', 'Bretagne', 5),
(18, 'f.dupont@medmail.fr', 'Dermatologue', 'Spécialiste en dermatologue', 'Cabinet Dermatologue', '66 Rue de la Santé', '46361', 'Bretagne', 5),
(19, 'c.schmidt@medmail.fr', 'Psychiatre', 'Spécialiste en psychiatre', 'Cabinet Psychiatre', '16 Rue de la Santé', '33072', 'Bretagne', 5),
(20, 'j.dupont@medmail.fr', 'Gynécologue', 'Spécialiste en gynécologue', 'Cabinet Gynécologue', '50 Rue de la Santé', '75792', 'Centre', 6),
(21, 'p.durand@medmail.fr', 'Endocrinologue', 'Spécialiste en endocrinologue', 'Cabinet Endocrinologue', '24 Rue de la Santé', '19648', 'Centre', 6),
(22, 'h.garcia@medmail.fr', 'Ophtalmologue', 'Spécialiste en ophtalmologue', 'Cabinet Ophtalmologue', '65 Rue de la Santé', '12635', 'Centre', 6),
(23, 'a.garcia@medmail.fr', 'Dermatologue', 'Spécialiste en dermatologue', 'Cabinet Dermatologue', '88 Rue de la Santé', '70032', 'Centre', 6),
(24, 'c.martin@medmail.fr', 'Dentiste', 'Spécialiste en dentiste', 'Cabinet Dentiste', '100 Rue de la Santé', '81042', 'Centre', 6),
(25, 'c.dupont@medmail.fr', 'Psychiatre', 'Spécialiste en psychiatre', 'Cabinet Psychiatre', '94 Rue de la Santé', '68839', 'Corse', 7),
(26, 'h.rossi@medmail.fr', 'Endocrinologue', 'Spécialiste en endocrinologue', 'Cabinet Endocrinologue', '15 Rue de la Santé', '64225', 'Corse', 7),
(27, 'a.moreau@medmail.fr', 'Chirurgien', 'Spécialiste en chirurgien', 'Cabinet Chirurgien', '64 Rue de la Santé', '66581', 'Corse', 7),
(28, 'c.leroy@medmail.fr', 'Cardiologue', 'Spécialiste en cardiologue', 'Cabinet Cardiologue', '51 Rue de la Santé', '99916', 'Corse', 7),
(29, 'h.khan@medmail.fr', 'Dentiste', 'Spécialiste en dentiste', 'Cabinet Dentiste', '73 Rue de la Santé', '79523', 'Corse', 7),
(30, 'j.durand@medmail.fr', 'Cardiologue', 'Spécialiste en cardiologue', 'Cabinet Cardiologue', '7 Rue de la Santé', '15651', 'Grand Est', 8),
(31, 'b.martin@medmail.fr', 'Dermatologue', 'Spécialiste en dermatologue', 'Cabinet Dermatologue', '16 Rue de la Santé', '75207', 'Grand Est', 8),
(32, 'a.rossi@medmail.fr', 'Pédiatre', 'Spécialiste en pédiatre', 'Cabinet Pédiatre', '3 Rue de la Santé', '11806', 'Grand Est', 8),
(33, 'h.durand@medmail.fr', 'Chirurgien', 'Spécialiste en chirurgien', 'Cabinet Chirurgien', '19 Rue de la Santé', '78163', 'Grand Est', 8),
(34, 'j.rossi@medmail.fr', 'Endocrinologue', 'Spécialiste en endocrinologue', 'Cabinet Endocrinologue', '65 Rue de la Santé', '31308', 'Grand Est', 8),
(35, 'a.khan@medmail.fr', 'Pédiatre', 'Spécialiste en pédiatre', 'Cabinet Pédiatre', '24 Rue de la Santé', '31274', 'Hauts', 9),
(36, 'l.khan@medmail.fr', 'Dermatologue', 'Spécialiste en dermatologue', 'Cabinet Dermatologue', '53 Rue de la Santé', '33771', 'Hauts', 9),
(37, 's.durand@medmail.fr', 'Dermatologue', 'Spécialiste en dermatologue', 'Cabinet Dermatologue', '48 Rue de la Santé', '80110', 'Hauts', 9),
(38, 'l.martin@medmail.fr', 'Généraliste', 'Spécialiste en généraliste', 'Cabinet Généraliste', '9 Rue de la Santé', '50420', 'Hauts', 9),
(39, 'a.schmidt@medmail.fr', 'Cardiologue', 'Spécialiste en cardiologue', 'Cabinet Cardiologue', '95 Rue de la Santé', '51087', 'Hauts', 9),
(40, 'a.leroy@medmail.fr', 'Dermatologue', 'Spécialiste en dermatologue', 'Cabinet Dermatologue', '99 Rue de la Santé', '40229', 'Île', 10),
(41, 's.schmidt@medmail.fr', 'Chirurgien', 'Spécialiste en chirurgien', 'Cabinet Chirurgien', '12 Rue de la Santé', '37086', 'Île', 10),
(42, 'b.garcia@medmail.fr', 'Endocrinologue', 'Spécialiste en endocrinologue', 'Cabinet Endocrinologue', '28 Rue de la Santé', '24932', 'Île', 10),
(43, 'c.khan@medmail.fr', 'Pédiatre', 'Spécialiste en pédiatre', 'Cabinet Pédiatre', '80 Rue de la Santé', '26165', 'Île', 10),
(44, 'a.khan@medmail.fr', 'Dermatologue', 'Spécialiste en dermatologue', 'Cabinet Dermatologue', '53 Rue de la Santé', '96002', 'Île', 10),
(45, 'j.dupont@medmail.fr', 'Chirurgien', 'Spécialiste en chirurgien', 'Cabinet Chirurgien', '47 Rue de la Santé', '43204', 'Normandie', 11),
(46, 'h.leroy@medmail.fr', 'Psychiatre', 'Spécialiste en psychiatre', 'Cabinet Psychiatre', '48 Rue de la Santé', '24870', 'Normandie', 11),
(47, 'h.benoit@medmail.fr', 'Chirurgien', 'Spécialiste en chirurgien', 'Cabinet Chirurgien', '97 Rue de la Santé', '56769', 'Normandie', 11),
(48, 'c.rossi@medmail.fr', 'Dermatologue', 'Spécialiste en dermatologue', 'Cabinet Dermatologue', '10 Rue de la Santé', '19831', 'Normandie', 11),
(49, 'f.benoit@medmail.fr', 'Chirurgien', 'Spécialiste en chirurgien', 'Cabinet Chirurgien', '74 Rue de la Santé', '26883', 'Normandie', 11),
(50, 'a.garcia@medmail.fr', 'Psychiatre', 'Spécialiste en psychiatre', 'Cabinet Psychiatre', '11 Rue de la Santé', '78486', 'Nouvelle', 12),
(51, 's.dupont@medmail.fr', 'Ophtalmologue', 'Spécialiste en ophtalmologue', 'Cabinet Ophtalmologue', '77 Rue de la Santé', '78073', 'Nouvelle', 12),
(52, 's.garcia@medmail.fr', 'Endocrinologue', 'Spécialiste en endocrinologue', 'Cabinet Endocrinologue', '78 Rue de la Santé', '16699', 'Nouvelle', 12),
(53, 'a.rossi@medmail.fr', 'Ophtalmologue', 'Spécialiste en ophtalmologue', 'Cabinet Ophtalmologue', '69 Rue de la Santé', '22409', 'Nouvelle', 12),
(54, 'h.khan@medmail.fr', 'Endocrinologue', 'Spécialiste en endocrinologue', 'Cabinet Endocrinologue', '24 Rue de la Santé', '46684', 'Nouvelle', 12),
(55, 'm.rossi@medmail.fr', 'Psychiatre', 'Spécialiste en psychiatre', 'Cabinet Psychiatre', '30 Rue de la Santé', '62082', 'Occitanie', 13),
(56, 'p.leroy@medmail.fr', 'Endocrinologue', 'Spécialiste en endocrinologue', 'Cabinet Endocrinologue', '18 Rue de la Santé', '32757', 'Occitanie', 13),
(57, 'l.martin@medmail.fr', 'Dermatologue', 'Spécialiste en dermatologue', 'Cabinet Dermatologue', '29 Rue de la Santé', '67982', 'Occitanie', 13),
(58, 'l.moreau@medmail.fr', 'Endocrinologue', 'Spécialiste en endocrinologue', 'Cabinet Endocrinologue', '34 Rue de la Santé', '47429', 'Occitanie', 13),
(59, 'c.durand@medmail.fr', 'Dermatologue', 'Spécialiste en dermatologue', 'Cabinet Dermatologue', '67 Rue de la Santé', '83383', 'Occitanie', 13),
(60, 's.schmidt@medmail.fr', 'Dermatologue', 'Spécialiste en dermatologue', 'Cabinet Dermatologue', '82 Rue de la Santé', '86349', 'Pays de la Loire', 14),
(61, 'l.benoit@medmail.fr', 'Gynécologue', 'Spécialiste en gynécologue', 'Cabinet Gynécologue', '59 Rue de la Santé', '41841', 'Pays de la Loire', 14),
(62, 'l.garcia@medmail.fr', 'Psychiatre', 'Spécialiste en psychiatre', 'Cabinet Psychiatre', '54 Rue de la Santé', '77364', 'Pays de la Loire', 14),
(63, 'p.moreau@medmail.fr', 'Généraliste', 'Spécialiste en généraliste', 'Cabinet Généraliste', '44 Rue de la Santé', '37525', 'Pays de la Loire', 14),
(64, 'l.dupont@medmail.fr', 'Endocrinologue', 'Spécialiste en endocrinologue', 'Cabinet Endocrinologue', '23 Rue de la Santé', '56004', 'Pays de la Loire', 14),
(65, 'p.khan@medmail.fr', 'Gynécologue', 'Spécialiste en gynécologue', 'Cabinet Gynécologue', '21 Rue de la Santé', '45849', 'Provence', 15),
(66, 'c.benoit@medmail.fr', 'Généraliste', 'Spécialiste en généraliste', 'Cabinet Généraliste', '57 Rue de la Santé', '34603', 'Provence', 15),
(67, 'a.khan@medmail.fr', 'Endocrinologue', 'Spécialiste en endocrinologue', 'Cabinet Endocrinologue', '4 Rue de la Santé', '59202', 'Provence', 15),
(68, 'm.martin@medmail.fr', 'Psychiatre', 'Spécialiste en psychiatre', 'Cabinet Psychiatre', '74 Rue de la Santé', '65337', 'Provence', 15),
(69, 'a.martin@medmail.fr', 'Psychiatre', 'Spécialiste en psychiatre', 'Cabinet Psychiatre', '57 Rue de la Santé', '24480', 'Provence', 15),
(70, 's.moreau@medmail.fr', 'Généraliste', 'Spécialiste en généraliste', 'Cabinet Généraliste', '57 Rue de la Santé', '78808', 'Guadeloupe', 16),
(71, 'm.benoit@medmail.fr', 'Psychiatre', 'Spécialiste en psychiatre', 'Cabinet Psychiatre', '14 Rue de la Santé', '54306', 'Guadeloupe', 16),
(72, 'b.dupont@medmail.fr', 'Cardiologue', 'Spécialiste en cardiologue', 'Cabinet Cardiologue', '59 Rue de la Santé', '12417', 'Guadeloupe', 16),
(73, 'h.moreau@medmail.fr', 'Pédiatre', 'Spécialiste en pédiatre', 'Cabinet Pédiatre', '9 Rue de la Santé', '50657', 'Guadeloupe', 16),
(74, 'c.garcia@medmail.fr', 'Chirurgien', 'Spécialiste en chirurgien', 'Cabinet Chirurgien', '100 Rue de la Santé', '71586', 'Guadeloupe', 16),
(75, 'b.benoit@medmail.fr', 'Pédiatre', 'Spécialiste en pédiatre', 'Cabinet Pédiatre', '97 Rue de la Santé', '56571', 'Martinique', 17),
(76, 'p.leroy@medmail.fr', 'Dentiste', 'Spécialiste en dentiste', 'Cabinet Dentiste', '92 Rue de la Santé', '49980', 'Martinique', 17),
(77, 'l.schmidt@medmail.fr', 'Dermatologue', 'Spécialiste en dermatologue', 'Cabinet Dermatologue', '33 Rue de la Santé', '58031', 'Martinique', 17),
(78, 'l.martin@medmail.fr', 'Cardiologue', 'Spécialiste en cardiologue', 'Cabinet Cardiologue', '96 Rue de la Santé', '73092', 'Martinique', 17),
(79, 'f.moreau@medmail.fr', 'Dermatologue', 'Spécialiste en dermatologue', 'Cabinet Dermatologue', '64 Rue de la Santé', '13094', 'Martinique', 17),
(80, 's.benoit@medmail.fr', 'Dentiste', 'Spécialiste en dentiste', 'Cabinet Dentiste', '65 Rue de la Santé', '66794', 'Guyane', 18),
(81, 'm.khan@medmail.fr', 'Psychiatre', 'Spécialiste en psychiatre', 'Cabinet Psychiatre', '10 Rue de la Santé', '71236', 'Guyane', 18),
(82, 'a.khan@medmail.fr', 'Généraliste', 'Spécialiste en généraliste', 'Cabinet Généraliste', '47 Rue de la Santé', '49911', 'Guyane', 18),
(83, 'f.khan@medmail.fr', 'Dermatologue', 'Spécialiste en dermatologue', 'Cabinet Dermatologue', '43 Rue de la Santé', '21397', 'Guyane', 18),
(84, 'p.durand@medmail.fr', 'Dentiste', 'Spécialiste en dentiste', 'Cabinet Dentiste', '90 Rue de la Santé', '89786', 'Guyane', 18),
(85, 's.benoit@medmail.fr', 'Dentiste', 'Spécialiste en dentiste', 'Cabinet Dentiste', '15 Rue de la Santé', '55911', 'La Réunion', 19),
(86, 'j.durand@medmail.fr', 'Chirurgien', 'Spécialiste en chirurgien', 'Cabinet Chirurgien', '58 Rue de la Santé', '63124', 'La Réunion', 19),
(87, 'f.dupont@medmail.fr', 'Psychiatre', 'Spécialiste en psychiatre', 'Cabinet Psychiatre', '86 Rue de la Santé', '98416', 'La Réunion', 19),
(88, 's.durand@medmail.fr', 'Généraliste', 'Spécialiste en généraliste', 'Cabinet Généraliste', '65 Rue de la Santé', '91855', 'La Réunion', 19),
(89, 'p.garcia@medmail.fr', 'Pédiatre', 'Spécialiste en pédiatre', 'Cabinet Pédiatre', '39 Rue de la Santé', '86566', 'La Réunion', 19),
(90, 'a.benoit@medmail.fr', 'Ophtalmologue', 'Spécialiste en ophtalmologue', 'Cabinet Ophtalmologue', '79 Rue de la Santé', '69365', 'Mayotte', 20),
(91, 'a.schmidt@medmail.fr', 'Généraliste', 'Spécialiste en généraliste', 'Cabinet Généraliste', '74 Rue de la Santé', '67794', 'Mayotte', 20),
(92, 'f.khan@medmail.fr', 'Pédiatre', 'Spécialiste en pédiatre', 'Cabinet Pédiatre', '82 Rue de la Santé', '70601', 'Mayotte', 20),
(93, 'f.garcia@medmail.fr', 'Cardiologue', 'Spécialiste en cardiologue', 'Cabinet Cardiologue', '4 Rue de la Santé', '34299', 'Mayotte', 20),
(94, 'c.martin@medmail.fr', 'Psychiatre', 'Spécialiste en psychiatre', 'Cabinet Psychiatre', '75 Rue de la Santé', '76486', 'Mayotte', 20);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `Id_Produit` int NOT NULL,
  `NomProduit` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DateAjoutProduit` date DEFAULT NULL,
  `Libele` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `QuantiteProduit` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`Id_Produit`, `NomProduit`, `DateAjoutProduit`, `Libele`, `QuantiteProduit`) VALUES
(4, 'Shampooing Antipelliculaire', '2025-05-01', 'Hygiène capillaire', '120'),
(5, 'Gel Douche Hydratant', '2025-05-02', 'Hygiène corporelle', '200'),
(6, 'Crème Solaire SPF50', '2025-05-03', 'Protection solaire', '150'),
(7, 'Dentifrice Blancheur', '2025-05-04', 'Hygiène bucco-dentaire', '180'),
(8, 'Brosse à dents souple', '2025-05-05', 'Accessoire dentaire', '140'),
(9, 'Crème Hydratante Visage', '2025-05-06', 'Soin visage', '160'),
(10, 'Lait Corporel Apaisant', '2025-05-07', 'Soin du corps', '130'),
(11, 'Gel antibactérien', '2025-05-08', 'Désinfectant mains', '170'),
(12, 'Déodorant bille', '2025-05-09', 'Hygiène quotidienne', '190'),
(13, 'Savon dermatologique', '2025-05-10', 'Hygiène cutanée', '100'),
(14, 'Eau Micellaire', '2025-05-11', 'Nettoyant visage', '150'),
(15, 'Lingettes bébé', '2025-05-12', 'Hygiène bébé', '120'),
(16, 'Lotion tonique', '2025-05-13', 'Soin visage', '90'),
(17, 'Crème anti-âge', '2025-05-14', 'Soin visage', '80'),
(18, 'Gélules de fer', '2025-05-15', 'Complément alimentaire', '70'),
(19, 'Sirop toux sèche', '2025-05-16', 'Traitement ORL', '60'),
(20, 'Baume à lèvres', '2025-05-17', 'Soin des lèvres', '110'),
(21, 'Huile essentielle lavande', '2025-05-18', 'Aromathérapie', '100'),
(22, 'Infusion sommeil', '2025-05-19', 'Plantes médicinales', '130'),
(23, 'Tisane digestion', '2025-05-20', 'Plantes médicinales', '140'),
(24, 'Patch chauffant', '2025-05-21', 'Douleurs musculaires', '90'),
(25, 'Spray nasal', '2025-05-22', 'Hygiène nasale', '95'),
(26, 'Thermomètre digital', '2025-05-23', 'Matériel médical', '85'),
(27, 'Bande de contention', '2025-05-24', 'Premiers soins', '75'),
(28, 'Pansements stériles', '2025-05-25', 'Premiers soins', '200'),
(29, 'Ciseaux médicaux', '2025-05-26', 'Matériel médical', '60'),
(30, 'Gants nitrile', '2025-05-27', 'Protection médicale', '300'),
(31, 'Masques chirurgicaux', '2025-05-28', 'Protection sanitaire', '500'),
(32, 'Solution saline', '2025-05-29', 'Hygiène nasale', '180'),
(33, 'Sérum physiologique', '2025-05-30', 'Hygiène bébé', '220'),
(34, 'Compresses stériles', '2025-06-01', 'Premiers soins', '190'),
(35, 'Thermogel', '2025-06-02', 'Traitement froid/chaud', '80'),
(36, 'Tensiomètre', '2025-06-03', 'Diagnostic', '40'),
(37, 'Glucomètre', '2025-06-04', 'Suivi glycémie', '35'),
(38, 'Lotion anti-poux', '2025-06-05', 'Traitement capillaire', '100'),
(39, 'Répulsif moustiques', '2025-06-06', 'Protection insectes', '150'),
(40, 'Bouillotte sèche', '2025-06-07', 'Confort thermique', '90'),
(41, 'Bain de bouche', '2025-06-08', 'Hygiène buccale', '130'),
(42, 'Mouche bébé', '2025-06-09', 'Hygiène bébé', '70'),
(43, 'Spray gorge', '2025-06-10', 'ORL', '85'),
(44, 'Miel médical', '2025-06-11', 'Traitement ORL', '110'),
(45, 'Bain apaisant pieds', '2025-06-12', 'Soins des pieds', '100'),
(46, 'Crème cicatrisante', '2025-06-13', 'Soin cutané', '120'),
(47, 'Solution hydroalcoolique', '2025-06-14', 'Désinfection', '200'),
(48, 'Lotion répulsive', '2025-06-15', 'Insectifuge', '130'),
(49, 'Bande adhésive', '2025-06-16', 'Soins de plaie', '95'),
(50, 'Crème réparatrice', '2025-06-17', 'Peaux abîmées', '140'),
(51, 'Kit premiers secours', '2025-06-18', 'Urgence', '60'),
(52, 'Crème hémorroïdaire', '2025-06-19', 'Traitement local', '70');

-- --------------------------------------------------------

--
-- Structure de la table `rapport`
--

CREATE TABLE `rapport` (
  `Id_Rappport` int NOT NULL,
  `AdresseRapport` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DateRapport` date DEFAULT NULL,
  `CodePostal` int DEFAULT NULL,
  `Id_Echantillon` int NOT NULL,
  `Id_Produit` int NOT NULL,
  `Id_Visiteur` int NOT NULL,
  `Id_Practicien` int NOT NULL,
  `IdRegion` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `IdRegion` int NOT NULL,
  `NomRegion` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`IdRegion`, `NomRegion`) VALUES
(3, 'Auvergne-Rhône-Alpes'),
(4, 'Bourgogne-Franche-Comté'),
(5, 'Bretagne'),
(6, 'Centre-Val de Loire'),
(7, 'Corse'),
(8, 'Grand Est'),
(9, 'Hauts-de-France'),
(10, 'Île-de-France'),
(11, 'Normandie'),
(12, 'Nouvelle-Aquitaine'),
(13, 'Occitanie'),
(14, 'Pays de la Loire'),
(15, 'Provence-Alpes-Côte d\'Azur'),
(16, 'Guadeloupe'),
(17, 'Martinique'),
(18, 'Guyane'),
(19, 'La Réunion'),
(20, 'Mayotte');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `Id_Utilisateur` int NOT NULL,
  `MotDePasse` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `NomUtilisateur` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Role` enum('visiteur','delegue','responsable') COLLATE utf8mb4_general_ci NOT NULL,
  `PrenomUtilisateur` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `NumeroTelephoneUtilisateur` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `MailUtilisateur` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IdRegion` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`Id_Utilisateur`, `MotDePasse`, `NomUtilisateur`, `Role`, `PrenomUtilisateur`, `NumeroTelephoneUtilisateur`, `MailUtilisateur`, `IdRegion`) VALUES
(16, '$2y$10$./LD2g9mz5DmKFAsrdhCROOBgNU7iYcHys2/gYvUX9EZwml42Roam', 'visiteur@visiteur', 'visiteur', 'visiteur', '01 02 03 04 05', 'visiteur@mail.com', 3),
(17, '$2y$10$TRrwJ3MbgLx4JxwQDr1JkuHOw8aqsjklWyAQeQwSRQzahRm7o3yp.', 'delegue@delegue', 'delegue', 'delegue', '01 02 03 04 05', 'delegue@mail.com', 3),
(18, '$2y$10$kx3yhF/1rA4lVDJf2y6stO5XmJqqyV8u2VdPuCRo79fE.87H72cqO', 'responsable@responsable', 'responsable', 'responsable', '01 02 03 04 05', 'responsable@mail.com', 3),
(12, '$2y$10$mO.HXffSC50LmlVgTafCk.Cn5yke8YAOUzH4aKrn24EDHZ26zZHgi', 'FLORES DA COSTA', 'responsable', 'Kevyn', '06 51 58 91 03', 'kevynflores@yahoo.com', 3),
(14, '$2y$10$Uageu7Hgh5EJSb7/25SDR.TOpQYjCykfQ236psY5Ccn6uyzigXbT.', 'flores', 'visiteur', 'kevyn', '01 02 03 04 05', 'test@test.com', 3),
(15, '$2y$10$lr0T/r3ETuG8BwtMR4quFOYLdRZuZlBwsJM2TcMFhIIvijzMjg2hW', 'Mazeron', 'responsable', 'Melvil', '01 02 03 04 05', 'mazeronmelvil@mail.com', 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `echantillon`
--
ALTER TABLE `echantillon`
  ADD PRIMARY KEY (`Id_Echantillon`);

--
-- Index pour la table `practicien`
--
ALTER TABLE `practicien`
  ADD PRIMARY KEY (`Id_Practicien`),
  ADD KEY `IdRegion` (`IdRegion`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`Id_Produit`);

--
-- Index pour la table `rapport`
--
ALTER TABLE `rapport`
  ADD PRIMARY KEY (`Id_Rappport`),
  ADD KEY `Id_Echantillon` (`Id_Echantillon`),
  ADD KEY `Id_Produit` (`Id_Produit`),
  ADD KEY `Id_Visiteur` (`Id_Visiteur`),
  ADD KEY `Id_Practicien` (`Id_Practicien`),
  ADD KEY `IdRegion` (`IdRegion`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`IdRegion`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`Id_Utilisateur`),
  ADD KEY `fk_utilisateur_region` (`IdRegion`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `echantillon`
--
ALTER TABLE `echantillon`
  MODIFY `Id_Echantillon` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `practicien`
--
ALTER TABLE `practicien`
  MODIFY `Id_Practicien` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `Id_Produit` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `rapport`
--
ALTER TABLE `rapport`
  MODIFY `Id_Rappport` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `region`
--
ALTER TABLE `region`
  MODIFY `IdRegion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `Id_Utilisateur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
