SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `prix_goncourt`
--

-- --------------------------------------------------------

--
-- Structure de la table `pg_livre`
--

DROP TABLE IF EXISTS `pg_livre`;
CREATE TABLE IF NOT EXISTS `pg_livre` (
  `li_id_livre` int NOT NULL AUTO_INCREMENT,
  `li_titre` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `li_resume` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `li_date_parution` datetime NOT NULL,
  `li_nb_pages` int NOT NULL,
  `li_isbn` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `li_prix_editeur` decimal(10,2) NOT NULL,
  `fk_li_id_auteur` int NOT NULL,
  `fk_li_id_editeur` int NOT NULL,
  PRIMARY KEY (`li_id_livre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gd_client`
--

INSERT INTO `gd_client` (`cl_id_client`, `cl_nom_client`, `cl_adresse`) VALUES
(1, 'Alice Dupont', '10 rue de la République, 75001 Paris'),
(2, 'Lucas Martin', '25 avenue Victor Hugo, 69002 Lyon'),
(3, 'Emma Bernard', '4 boulevard des Alpes, 38000 Grenoble'),
(4, 'Thomas Petit', '8 allée des Fleurs, 33000 Bordeaux');




-- --------------------------------------------------------

--
-- Structure de la table `pg_editeur`
--

DROP TABLE IF EXISTS `pg_editeur`;
CREATE TABLE IF NOT EXISTS `pg_editeur` (
  `ed_id_editeur` int NOT NULL AUTO_INCREMENT,
  `ed_nom_editeur` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ed_id_editeur`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pg_auteur`
--

DROP TABLE IF EXISTS `pg_auteur`;
CREATE TABLE IF NOT EXISTS `pg_auteur` (
  `au_id_auteur` int NOT NULL AUTO_INCREMENT,
  `au_nom_auteur` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `au_prenom_auteur` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `au_biographie` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`au_id_auteur`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pg_personnage_principal`
--

DROP TABLE IF EXISTS `pg_personnage_principal`;
CREATE TABLE IF NOT EXISTS `pg_personnage_principal` (
  `pe_id_personnage_principal` int NOT NULL AUTO_INCREMENT,
  `pe_nom_personnage_principal` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pe_prenom_personnage_principal` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_pe_id_livre` int NOT NULL, 
  PRIMARY KEY (`pe_id_personnage_principal`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pg_membre_jury`
--

DROP TABLE IF EXISTS `pg_membre_jury`;
CREATE TABLE IF NOT EXISTS `pg_membre_jury` (
  `me_id_membre_jury` int NOT NULL AUTO_INCREMENT,
  `me_nom_membre_jury` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `me_prenom_membre_jury` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `me_role_membre_jury` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`me_id_membre_jury`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pg_livre_membre_jury`
--

DROP TABLE IF EXISTS `pg_livre_membre_jury`;
CREATE TABLE IF NOT EXISTS `pg_livre_membre_jury` (
  `lm_id_livre` int NOT NULL,
  `lm_id_membre_jury` int NOT NULL,
  `lm_tour` int NOT NULL,
  PRIMARY KEY (`lm_id_livre`, `lm_id_membre_jury`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Contraintes pour la table `pg_personnage_principal`
--
ALTER TABLE `pg_personnage_principal`
  ADD CONSTRAINT `pg_personnage_principal_ibfk_livre` FOREIGN KEY (`fk_pe_id_livre`) REFERENCES `pg_livre` (`li_id_livre`);
 
 --
-- Contraintes pour la table `pg_livre`
--
ALTER TABLE `pg_livre`
  ADD CONSTRAINT `pg_livre_ibfk_auteur` FOREIGN KEY (`fk_li_id_auteur`) REFERENCES `pg_auteur` (`au_id_auteur`),
  ADD CONSTRAINT `pg_livre_ibfk_editeur` FOREIGN KEY (`fk_li_id_editeur`) REFERENCES `pg_editeur` (`ed_id_editeur`);

--
-- Contraintes pour la table `pg_livre_membre_jury`
--
ALTER TABLE `pg_livre_membre_jury`
  ADD CONSTRAINT `pg_livre_membre_jury_ibfk_livre` FOREIGN KEY (`lm_id_livre`) REFERENCES `pg_livre` (`li_id_livre`),
  ADD CONSTRAINT `gd_livre_membre_jury_ibfk_membre_jury` FOREIGN KEY (`lm_id_membre_jury`) REFERENCES `pg_membre_jury` (`me_id_membre_jury`);
  
  