-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 20 jan. 2021 à 20:03
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestionformation`
--

-- --------------------------------------------------------

--
-- Structure de la table `employé`
--

CREATE TABLE `employé` (
  `id_employee` int(200) NOT NULL,
  `matricule` varchar(200) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `prénom` varchar(200) NOT NULL,
  `login` varchar(200) NOT NULL,
  `mot_de_passe` varchar(200) NOT NULL,
  `ville` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `Request` varchar(200) NOT NULL,
  `code_formation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `employé`
--

INSERT INTO `employé` (`id_employee`, `matricule`, `nom`, `prénom`, `login`, `mot_de_passe`, `ville`, `type`, `Request`, `code_formation`) VALUES
(9, '2939Jk', 'Bouchra', 'Bouchra', 'Bouchra', 'Bouchra', 'Safi', 'Employee', 'Complate', 'KDLç7');

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `id_formation` int(200) NOT NULL,
  `code` varchar(200) NOT NULL,
  `libellé` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id_formation`, `code`, `libellé`, `description`) VALUES
(11, 'Hdmdj8', 'Développeur d\'application - Android', 'Devenez développeur et réalisez vos applications pour Android.');

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id_session` int(200) NOT NULL,
  `id_employee` int(200) NOT NULL,
  `code` varchar(200) NOT NULL,
  `libellé` varchar(200) NOT NULL,
  `formation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id_session`, `id_employee`, `code`, `libellé`, `formation`) VALUES
(10, 10, 'AA121', 'AA121', 'technicien informatique'),
(35, 35, '1323', '1231', 'Data Analyst'),
(9, 9, 'AZA', 'AZA', 'Développeur Web'),
(36, 36, 'ada11', 'ada11', 'Développeur Web');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `employé`
--
ALTER TABLE `employé`
  ADD PRIMARY KEY (`id_employee`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`id_formation`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `employé`
--
ALTER TABLE `employé`
  MODIFY `id_employee` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `formation`
--
ALTER TABLE `formation`
  MODIFY `id_formation` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
