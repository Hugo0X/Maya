-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 12 jui. 2020 à 21:56
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `maya`
--

-- --------------------------------------------------------

--
-- Structure de la table `animal`
--

DROP TABLE IF EXISTS `animal`;
CREATE TABLE IF NOT EXISTS `animal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `date_naissance` date NOT NULL,
  `race_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `animal`
--

INSERT INTO `animal` (`id`, `nom`, `date_naissance`, `race_id`) VALUES
(1, 'Lapin Nain', '2020-01-08', 1),
(2, 'Mouillé', '2020-04-14', 2);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `libelle`) VALUES
(1, 'Fruits'),
(2, 'Aromatiques'),
(3, 'Légumes'),
(4, 'Confitures'),
(5, 'Miels'),
(6, 'Légumineuse');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(120) NOT NULL AUTO_INCREMENT,
  `nom` varchar(35) CHARACTER SET utf8 NOT NULL,
  `prenom` varchar(35) CHARACTER SET utf8 NOT NULL,
  `rue` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ville` varchar(35) CHARACTER SET utf8 NOT NULL,
  `code_postal` varchar(5) CHARACTER SET utf8 NOT NULL,
  `mail` varchar(60) CHARACTER SET utf8 NOT NULL,
  `telephone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `date_Premier_Contact` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `rue`, `ville`, `code_postal`, `mail`, `telephone`, `date_Premier_Contact`) VALUES
(3, 'Bourgeois', 'Corrine', '31, rue des Lacs', 'METZ', '57000', 'SearlaitBeauchesne@teleworm.fr', '0674231002', '2018-06-01'),
(4, 'Byron', 'Mousseau', '2 rue des six frères', 'METZ', '57000', 'ByronMousseau@rhyta.com', '0491801970', '2020-01-01');

-- --------------------------------------------------------

--
-- Structure de la table `clientrecherche`
--

DROP TABLE IF EXISTS `clientrecherche`;
CREATE TABLE IF NOT EXISTS `clientrecherche` (
  `nom` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `prenom` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `dateMini` date DEFAULT NULL,
  `dateMaxi` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE IF NOT EXISTS `employe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(35) CHARACTER SET utf8 NOT NULL,
  `Prenom` varchar(35) CHARACTER SET utf8 NOT NULL,
  `Rue` varchar(35) CHARACTER SET utf8 NOT NULL,
  `CodePostal` int(5) NOT NULL,
  `Ville` varchar(35) CHARACTER SET utf8 NOT NULL,
  `DateEmbauche` date NOT NULL,
  `Salaire` decimal(7,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

DROP TABLE IF EXISTS `evenement`;
CREATE TABLE IF NOT EXISTS `evenement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(200) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `heure_debut` time NOT NULL,
  `heure_fin` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `evenement`
--

INSERT INTO `evenement` (`id`, `titre`, `description`, `date`, `heure_debut`, `heure_fin`) VALUES
(1, 'Grand Marché', 'Le plus grand marché de l\'année organisé à Metz.', '2020-09-20', '04:00:00', '23:00:00'),
(2, 'Vente rapide', 'Vente rapide au profit de l\'association AGORA', '2020-06-22', '09:00:00', '15:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

DROP TABLE IF EXISTS `fonction`;
CREATE TABLE IF NOT EXISTS `fonction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Lib_Fonction` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
CREATE TABLE IF NOT EXISTS `fournisseur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) CHARACTER SET utf8 NOT NULL,
  `adresse` varchar(255) CHARACTER SET utf8 NOT NULL,
  `mail` varchar(255) CHARACTER SET utf8 NOT NULL,
  `telephone` varchar(10) CHARACTER SET utf8 NOT NULL,
  `nom_contact` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date_relation` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id`, `nom`, `adresse`, `mail`, `telephone`, `nom_contact`, `date_relation`) VALUES
(1, 'LeBIO', '66 rue du chêne', 'contact@lebio.eu', '+336987456', 'Pomme Lisa', '2020-04-07'),
(2, 'Cora', 'A1 rue de la vente METZ', 'metz@cora.fr', '0387125498', 'Lie', '2017-09-06');

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur_recherche`
--

DROP TABLE IF EXISTS `fournisseur_recherche`;
CREATE TABLE IF NOT EXISTS `fournisseur_recherche` (
  `nom` varchar(255) DEFAULT NULL,
  `date_mini` date DEFAULT NULL,
  `date_maxi` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200504121152', '2020-05-04 12:12:27'),
('20200504122638', '2020-05-04 12:28:19'),
('20200504123232', '2020-05-04 12:34:05'),
('20200512125057', '2020-05-12 12:54:13'),
('20200513061457', '2020-05-13 06:18:17');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` decimal(7,2) NOT NULL,
  `date_creation` datetime NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cru` tinyint(1) NOT NULL,
  `cuit` tinyint(1) NOT NULL,
  `debut_disponibilite` date DEFAULT NULL,
  `fin_disponibilite` date DEFAULT NULL,
  `bio` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_29A5EC27BCF5E72D` (`categorie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `libelle`, `prix`, `date_creation`, `categorie_id`, `description`, `cru`, `cuit`, `debut_disponibilite`, `fin_disponibilite`, `bio`) VALUES
(1, 'mirabelle', '2.50', '2020-05-04 12:41:47', 1, NULL, 0, 0, NULL, NULL, 0),
(2, 'pomme', '2.30', '2020-05-04 12:41:47', 1, NULL, 0, 0, NULL, NULL, 0),
(3, 'poire', '2.70', '2020-05-04 12:41:47', 1, NULL, 0, 0, NULL, NULL, 0),
(4, 'cerise', '3.30', '2020-05-04 12:41:47', 1, NULL, 0, 0, NULL, NULL, 0),
(5, 'basilic', '1.00', '2020-05-04 12:41:47', 2, NULL, 0, 0, NULL, NULL, 0),
(6, 'romarin', '1.00', '2020-05-04 12:41:47', 2, NULL, 0, 0, NULL, NULL, 0),
(7, 'persil', '1.00', '2020-05-04 12:41:47', 2, NULL, 0, 0, NULL, NULL, 0),
(8, 'menthe', '1.00', '2020-05-04 12:41:47', 2, NULL, 0, 0, NULL, NULL, 0),
(9, 'coriandre', '1.00', '2020-05-04 12:41:47', 2, NULL, 0, 0, NULL, NULL, 0),
(10, 'courgette', '2.50', '2020-05-04 12:41:47', 3, NULL, 0, 0, NULL, NULL, 0),
(11, 'aubergine', '2.30', '2020-05-04 12:41:47', 3, NULL, 0, 0, NULL, NULL, 0),
(12, 'laitue', '1.10', '2020-05-04 12:41:47', 3, NULL, 0, 0, NULL, NULL, 0),
(13, 'carotte', '1.30', '2020-05-04 12:41:47', 3, NULL, 0, 0, NULL, NULL, 0),
(14, 'brocoli', '2.30', '2020-05-04 12:41:47', 3, NULL, 0, 0, NULL, NULL, 0),
(15, 'pomme de terre', '2.70', '2020-05-04 12:41:47', 3, NULL, 0, 0, NULL, NULL, 0),
(16, 'chou rouge', '1.30', '2020-05-04 12:41:47', 3, NULL, 0, 0, NULL, NULL, 0),
(17, 'mirabelle', '2.50', '2020-05-04 12:41:47', 4, NULL, 0, 0, NULL, NULL, 0),
(18, 'fraise', '2.30', '2020-05-04 12:41:47', 4, NULL, 0, 0, NULL, NULL, 0),
(19, 'framboise', '2.70', '2020-05-04 12:41:47', 4, NULL, 0, 0, NULL, NULL, 0),
(20, 'cerise', '3.30', '2020-05-04 12:41:47', 4, NULL, 0, 0, NULL, NULL, 0),
(21, 'acacia', '2.50', '2020-05-04 12:41:47', 5, NULL, 0, 0, NULL, NULL, 0),
(22, 'sapin', '2.30', '2020-05-04 12:41:47', 5, NULL, 0, 0, NULL, NULL, 0),
(23, 'montagne', '2.70', '2020-05-04 12:41:47', 5, NULL, 0, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `produit_recherche`
--

DROP TABLE IF EXISTS `produit_recherche`;
CREATE TABLE IF NOT EXISTS `produit_recherche` (
  `libelle` varchar(255) DEFAULT NULL,
  `prix_mini` float DEFAULT NULL,
  `prix_maxi` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `race`
--

DROP TABLE IF EXISTS `race`;
CREATE TABLE IF NOT EXISTS `race` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` varchar(25) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `race`
--

INSERT INTO `race` (`id`, `intitule`) VALUES
(1, 'Lapin'),
(2, 'Poule');

-- --------------------------------------------------------

--
-- Structure de la table `recette`
--

DROP TABLE IF EXISTS `recette`;
CREATE TABLE IF NOT EXISTS `recette` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `recette`
--

INSERT INTO `recette` (`id`, `nom`) VALUES
(1, 'Tarte aux fruits'),
(2, 'Soupe d\'hiver');

-- --------------------------------------------------------

--
-- Structure de la table `recette_produit`
--

DROP TABLE IF EXISTS `recette_produit`;
CREATE TABLE IF NOT EXISTS `recette_produit` (
  `recette_id` int(11) NOT NULL,
  `produit_id` int(11) NOT NULL,
  PRIMARY KEY (`recette_id`,`produit_id`),
  KEY `IDX_EDDD365D89312FE9` (`recette_id`),
  KEY `IDX_EDDD365DF347EFB` (`produit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `recette_produit`
--

INSERT INTO `recette_produit` (`recette_id`, `produit_id`) VALUES
(1, 2),
(1, 17),
(1, 20),
(2, 7),
(2, 15),
(2, 16),
(2, 21);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) CHARACTER SET utf8 NOT NULL,
  `password` varchar(1024) CHARACTER SET utf8 NOT NULL,
  `nom` varchar(30) CHARACTER SET utf8 NOT NULL,
  `prenom` varchar(30) CHARACTER SET utf8 NOT NULL,
  `telephone` varchar(10) CHARACTER SET utf8 NOT NULL,
  `roles` varchar(1024) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `nom`, `prenom`, `telephone`, `roles`) VALUES
(1, 'jean.dupond@maya.fr', '$argon2id$v=19$m=65536,t=4,p=1$cEJlS1JTNTJ4OEZFeHRrUQ$kt0cSsbl9G0fw/e3p6gjExz4lsmo59bDomoVHrApQGE', 'Dupond', 'Jean', '0684723945', '[\"ROLE_USER\",\"ROLE_ADMIN\"]'),
(2, 'visiteur@user.fr', '$argon2id$v=19$m=65536,t=4,p=1$dXV6UUlNTEZ0NzZxTHFlZA$/TMiH2CU+QtppjOVVtnK+KyTEPrQ83pYFzsrtid4QVo', 'Paul', 'Pierre', '+339846587', '[]');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `FK_29A5EC27BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);

--
-- Contraintes pour la table `recette_produit`
--
ALTER TABLE `recette_produit`
  ADD CONSTRAINT `FK_EDDD365D89312FE9` FOREIGN KEY (`recette_id`) REFERENCES `recette` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_EDDD365DF347EFB` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
