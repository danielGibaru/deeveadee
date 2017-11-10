-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 12 Juin 2017 à 16:29
-- Version du serveur :  5.7.18-0ubuntu0.16.04.1
-- Version de PHP :  7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `deeveadee_bdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `Acteur`
--

CREATE TABLE `Acteur` (
  `numA` int(11) NOT NULL,
  `nomA` varchar(255) NOT NULL,
  `prénomA` varchar(255) NOT NULL,
  `âgeA` int(11) NOT NULL,
  `sexeA` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Acteur`
--

INSERT INTO `Acteur` (`numA`, `nomA`, `prénomA`, `âgeA`, `sexeA`) VALUES
(1, 'chabat', 'alain', 60, 'homme'),
(2, 'pelletier', 'sebastien', 26, 'pas sur');

-- --------------------------------------------------------

--
-- Structure de la table `Casting`
--

CREATE TABLE `Casting` (
  `dvdC` int(11) NOT NULL,
  `acteurC` int(11) NOT NULL,
  `rôleC` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Casting`
--

INSERT INTO `Casting` (`dvdC`, `acteurC`, `rôleC`) VALUES
(1, 1, 'principal'),
(1, 2, 'femme');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_Cl` int(11) NOT NULL,
  `nom_Cl` varchar(255) NOT NULL,
  `prenom_Cl` varchar(255) NOT NULL,
  `identifiants_Cl` varchar(255) NOT NULL,
  `mot_de_passe_Cl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id_Cl`, `nom_Cl`, `prenom_Cl`, `identifiants_Cl`, `mot_de_passe_Cl`) VALUES
(112, 'pereira', 'christophe', 'kirikou', 'portugal'),
(1337, 'dark', 'thanic', 'dark', 'dark');

-- --------------------------------------------------------

--
-- Structure de la table `Dvd`
--

CREATE TABLE `Dvd` (
  `numD` int(11) NOT NULL,
  `titreD` varchar(255) DEFAULT NULL,
  `auteurD` varchar(255) DEFAULT NULL,
  `annéeD` varchar(255) DEFAULT NULL,
  `catégorieD` varchar(255) DEFAULT NULL,
  `nombreD` int(11) DEFAULT NULL,
  `societeD` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Dvd`
--

INSERT INTO `Dvd` (`numD`, `titreD`, `auteurD`, `annéeD`, `catégorieD`, `nombreD`, `societeD`) VALUES
(1, 'poney a la rue', 'youtubedddd', '1994', 'ffffffddddgggg', 2, 1),
(2, 'poney a la neige', 'Mozart', '1994', '\\-^_^-/', 2, 1),
(55, 'poney a la plage', 'zadefr', '2010', 'erzfr', 0, 0),
(56, 'poney', 'daniel', '2017', '1', 1, 1),
(57, 'poney parle a un sdf', 'daniel', '2017', 'dada', 1, 1),
(58, 'poney parle a macron', 'daniel', '2017', 'd', 1, 1),
(59, 'poney et les putes', 'danieil', '2016', 'd', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `Emprunt`
--

CREATE TABLE `Emprunt` (
  `dvdE` int(11) NOT NULL,
  `dateE` date NOT NULL,
  `clientE` int(11) NOT NULL,
  `duréeE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Emprunt`
--

INSERT INTO `Emprunt` (`dvdE`, `dateE`, `clientE`, `duréeE`) VALUES
(1, '2017-06-21', 1337, 12),
(1, '2017-06-30', 112, 30);

-- --------------------------------------------------------

--
-- Structure de la table `Société`
--

CREATE TABLE `Société` (
  `numS` int(11) NOT NULL,
  `nomS` varchar(255) NOT NULL,
  `rueS` varchar(255) NOT NULL,
  `villeS` varchar(255) NOT NULL,
  `directeurS` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Société`
--

INSERT INTO `Société` (`numS`, `nomS`, `rueS`, `villeS`, `directeurS`) VALUES
(1, 'DVDStore', 'du four', 'paris', 'durans'),
(2, 'TARARATA', 'TOROTOTO', 'PARIS', 'MOI');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Acteur`
--
ALTER TABLE `Acteur`
  ADD PRIMARY KEY (`numA`);

--
-- Index pour la table `Casting`
--
ALTER TABLE `Casting`
  ADD UNIQUE KEY `acteurC` (`acteurC`),
  ADD KEY `dvdC` (`dvdC`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_Cl`);

--
-- Index pour la table `Dvd`
--
ALTER TABLE `Dvd`
  ADD PRIMARY KEY (`numD`),
  ADD KEY `societeD` (`societeD`);

--
-- Index pour la table `Emprunt`
--
ALTER TABLE `Emprunt`
  ADD KEY `dvdE` (`dvdE`),
  ADD KEY `clientE` (`clientE`);

--
-- Index pour la table `Société`
--
ALTER TABLE `Société`
  ADD PRIMARY KEY (`numS`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Acteur`
--
ALTER TABLE `Acteur`
  MODIFY `numA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_Cl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1338;
--
-- AUTO_INCREMENT pour la table `Dvd`
--
ALTER TABLE `Dvd`
  MODIFY `numD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT pour la table `Société`
--
ALTER TABLE `Société`
  MODIFY `numS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Casting`
--
ALTER TABLE `Casting`
  ADD CONSTRAINT `Casting_ibfk_2` FOREIGN KEY (`acteurC`) REFERENCES `Acteur` (`numA`),
  ADD CONSTRAINT `Casting_ibfk_3` FOREIGN KEY (`dvdC`) REFERENCES `Dvd` (`numD`);

--
-- Contraintes pour la table `Emprunt`
--
ALTER TABLE `Emprunt`
  ADD CONSTRAINT `Emprunt_ibfk_1` FOREIGN KEY (`dvdE`) REFERENCES `Dvd` (`numD`),
  ADD CONSTRAINT `Emprunt_ibfk_2` FOREIGN KEY (`clientE`) REFERENCES `client` (`id_Cl`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
