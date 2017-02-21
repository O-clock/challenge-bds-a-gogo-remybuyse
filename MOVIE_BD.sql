-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 21 Février 2017 à 21:39
-- Version du serveur :  5.7.11-0ubuntu6
-- Version de PHP :  7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `MOVIE BD`
--

-- --------------------------------------------------------

--
-- Structure de la table `Actors`
--

CREATE TABLE `Actors` (
  `id_actor` int(11) NOT NULL,
  `first_name` varchar(63) NOT NULL,
  `last_name` varchar(63) NOT NULL,
  `filmography_id` int(11) NOT NULL,
  `short_biography` text NOT NULL,
  `long_biography` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Distributor`
--

CREATE TABLE `Distributor` (
  `id_distributor` int(11) NOT NULL,
  `name` varchar(63) NOT NULL,
  `filmography_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Film`
--

CREATE TABLE `Film` (
  `id_film` int(11) NOT NULL,
  `title` varchar(63) NOT NULL,
  `date` date NOT NULL,
  `picture` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `duration` time NOT NULL,
  `Style_id` int(11) NOT NULL,
  `Realisator_id` int(11) NOT NULL,
  `Actors_id` int(11) NOT NULL,
  `Quote` int(11) NOT NULL,
  `Synopsis` text NOT NULL,
  `Nationality` varchar(31) NOT NULL,
  `Pegi` int(11) NOT NULL,
  `Distributor_id` varchar(31) NOT NULL,
  `Year_of_production` date NOT NULL,
  `keywords_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Filmography`
--

CREATE TABLE `Filmography` (
  `id_actor_realisator` int(11) NOT NULL,
  `film_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Keywords`
--

CREATE TABLE `Keywords` (
  `movie_id` int(11) NOT NULL,
  `name` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Realisator`
--

CREATE TABLE `Realisator` (
  `id_realisator` int(11) NOT NULL,
  `first_name` varchar(63) NOT NULL,
  `last_name` varchar(63) NOT NULL,
  `filmography_id` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Style`
--

CREATE TABLE `Style` (
  `id_style` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Actors`
--
ALTER TABLE `Actors`
  ADD PRIMARY KEY (`id_actor`);

--
-- Index pour la table `Distributor`
--
ALTER TABLE `Distributor`
  ADD PRIMARY KEY (`id_distributor`);

--
-- Index pour la table `Film`
--
ALTER TABLE `Film`
  ADD PRIMARY KEY (`id_film`);

--
-- Index pour la table `Filmography`
--
ALTER TABLE `Filmography`
  ADD PRIMARY KEY (`id_actor_realisator`),
  ADD UNIQUE KEY `film_id` (`film_id`);

--
-- Index pour la table `Keywords`
--
ALTER TABLE `Keywords`
  ADD PRIMARY KEY (`movie_id`);

--
-- Index pour la table `Realisator`
--
ALTER TABLE `Realisator`
  ADD PRIMARY KEY (`id_realisator`);

--
-- Index pour la table `Style`
--
ALTER TABLE `Style`
  ADD PRIMARY KEY (`id_style`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Actors`
--
ALTER TABLE `Actors`
  MODIFY `id_actor` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Distributor`
--
ALTER TABLE `Distributor`
  MODIFY `id_distributor` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Film`
--
ALTER TABLE `Film`
  MODIFY `id_film` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Realisator`
--
ALTER TABLE `Realisator`
  MODIFY `id_realisator` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Style`
--
ALTER TABLE `Style`
  MODIFY `id_style` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
