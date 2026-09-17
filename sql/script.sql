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
  `li_resume` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `li_date_parution` date NOT NULL,
  `li_nb_pages` int NOT NULL,
  `li_isbn` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `li_prix_editeur` decimal(10,2) NOT NULL,
  `fk_li_id_auteur` int NOT NULL,
  `fk_li_id_editeur` int NOT NULL,
  PRIMARY KEY (`li_id_livre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pg_livre`
--

INSERT INTO `pg_livre` (`li_id_livre`, `li_titre`, `li_resume`, `li_date_parution`, `li_nb_pages`, `li_isbn`, `li_prix_editeur`, `fk_li_id_auteur`, `fk_li_id_editeur`) VALUES
(1, 'L\'inconnue du quai de Javel', 'Le 6 septembre 1949, une jeune femme est retrouvée morte quai de Javel, à Paris, sans sac ni chaussures, manifestement rhabillée à la hâte puis déposée là par son assassin. Elle est identifiée le lendemain : c\'est Louise Cansot, le modèle le plus demandé par les peintres de Montparnasse. Rapidement, quatre suspects se détachent, évidents, presque des archétypes. On dirait le début d\'un roman de Simenon, mais l\'inspecteur-chef Ferrière n\'a pas le talent de Maigret, et doit se résoudre à classer l\'affaire au bout de six mois, sans avoir arrêté personne.

Soixante-quinze ans plus tard, Philippe Jaenada reprend l\'enquête à partir du dossier retrouvé puis, comme à son habitude, sollicite ses contacts aux archives, exhume tous les documents, arpente tous les lieux - remonte le temps.

Pour ce livre, il a lu les soixante-quinze enquêtes de Maigret, s\'inspirant humblement et fidèlement des méthodes du commissaire fictif. Et il va résoudre ce meurtre bien réel, laissant le lecteur subjugué par la dextérité de son investigation et fasciné par cette jeune femme à laquelle il redonne un visage et une histoire.', '2026-08-12', 528, '9782080490896', 23.00, 1, 1 ),
(2, 'Nous aussi', 'On fait partie d\'une grande famille. On sait qu\'on est privilégiés. On vit ensemble, dans notre immeuble au centre de Paris, on se retrouve l\'été dans notre maison à la montagne. On trouve que c\'est normal. C\'est chez nous, c\'est à nous, c\'est pour nous. On se ressemble, on se compare, on se confronte, on ne se quitte pas, on se confond, on s\'appartient. On ne sait pas comment dire je, on n\'en a pas besoin, puisqu\'on est nous. Nous les enfants, les frères et soeurs, les cousins, les cousines, on partage tout, nos écoles, nos chambres, nos habits, nos repas, nos jeux, nos bains, nos lits. On est les membres indissociables du grand corps familial. On n\'a jamais vécu dehors. On ne sait pas ce que c\'est. On n\'en est pas capables. On n\'en a même pas envie. Et tout aurait dû continuer ainsi, dans un même immuable recommencement. Le jour où la façade s\'est fissurée, on n\'a pas compris. Ça n\'aurait pas dû se produire, pas dans notre famille. Ce n\'était pas possible que ça nous arrive, à nous aussi.', '2026-08-19', 237, '9782330225575', 20.00, 2, 2),
(3, 'La solitude des professeurs est infinie', 'Jean Deichel, jeune professeur de français, fait son stage dans un collège de la banlieue parisienne. La nuit, il loge dans un club de tennis à Deuil-la-Barre ; le jour, il découvre les difficultés du métier en même temps que ses joies profondes, la violence de l\'École en même temps que sa beauté.

Jean est aussi un poète ivre d\'aventure, attentif à trouver la lumière de la « vraie vie » au coeur du quotidien le plus gris : dans des jardins réels ou rêvés, au bord d\'un lac, lors d\'évasions à Pompéi et à Tarquinia, mais surtout dans la grâce fragile d\'un cours réussi.

Entre réalité politique et mystère existentiel, la vie des profs est un roman.', '2026-08-20', 313, '9782073161925', 21.50, 3, 3),
(4, 'Je', '« - Que savez-vous de la beauté, Antoinette ? Il se tourna vers moi, suspendu à ma réponse. - Pas grand-chose. Mais je sais la reconnaître quand elle est là. - Eh bien moi, chaque fois que je la vois, elle me blesse. Quand je vois votre visage, par exemple, quelque chose en moi se trouve comme ébranlé. »

île de la Jamaïque, 1831. Antoinette Cosway, créole de bonne famille, s\'éprend d\'Edward Rochester, un Anglais aussi impénétrable que fascinant. Mais à la séduction enflammée succèdent rapidement des scènes vénéneuses, où les baisers sont des blessures, où toute une société livre la jeune femme à son bourreau.

Des années plus tard, Antoinette tente de conquérir sa propre histoire.

JE se situe à mi-chemin entre roman victorien et thriller intimiste contemporain. Lilia Hassaine s\'est inspirée du personnage de la première femme de Rochester dans Jane Eyre, le roman culte de Charlotte Brontë. Elle a choisi de lui donner une voix, un corps, une destinée.', '2026-08-20', 248, '9782073099945', 21.00, 4, 3),
(5, 'Le fabuleux piano', 'Après le succès littéraire et commercial de son récit Les Exportés , Sonia Devillers part à la recherche d\'un admirable piano à queue, volé par les nazis en 1943. Ce qu\'elle nous raconte est bouleversant, instructif, et magistralement mené.
Le fabuleux piano est un instrument volé par les Allemands, en 1943, à des juifs qui le cherchent encore... Dans ce vide impossible à combler, Sonia Devillers entend une résonance intime, le souvenir d\'un instrument que sa propre grand-mère, forcée à l\'exil, a regretté toute sa vie. Elle part alors sur les traces des pianos fantômes pillés par milliers sous l\'Occupation et transportés jusqu\'aux confins du IIIe Reich.
Avec cet instrument de concert ressurgit l\'incroyable destin d\'une famille d\'éditeurs de musique, les Enoch. Un siècle de partitions, des menuets de Ravel aux ritournelles de Prévert. Les nazis se sont acharnés sur les Enoch, mais ils ont échoué à les réduire au silence. Des douleurs de la guerre va naître une chanson portée par Yves Montand, Les Feuilles mortes : un triomphe mondial.
Le piano disparu continue pourtant de hanter les survivants...', '2026-08-27', 280, '9782221286807', 21.00, 5, 4),
(6, 'Faire la peau', 'Je dis que l\'une des plus tenaces fictions tient tout entière dans ce mot, mère. Que la haine qui circule entre les mères et leurs filles est sauvage, et qu\'il faut la regarder droit dans les yeux.', '2026-08-20', 286, '9782818063583', 21.00, 6, 5),
(7, 'La guerre éternelle : souvenirs de Troie', '« Pour donner à ma longue rêverie la forme d\'un livre, j\'avais besoin de voir. De la terre, des pierres, des arbres, un rivage. J\'ai toujours besoin de voir. Je suis allé en Troade à la fin d\'un mois de juin, alors que les coquelicots jetaient de grandes flaques rouges au milieu des champs de blé et d\'oliviers où jadis s\'affrontaient les héros. »

Il y a quelque trente-trois siècles, des guerriers grecs ravagent une cité d\'Asie Mineure qu\'ils appellent Troïa ou Ilios. Les hommes sont massacrés, les femmes traînées en esclavage. C\'était dans la nuit des temps, mais grâce à l\'Iliade cela vit toujours dans notre mémoire. C\'était, aussi bien, hier, aujourd\'hui, demain : la tragédie de la destruction d\'une ville n\'a cessé d\'être réécrite en lettres de feu et de sang, depuis Carthage un siècle et demi avant notre ère jusqu\'à Dresde et Hiroshima, Marioupol et Gaza de nos jours. La guerre de Troie est éternelle, et Troie est la Mère de toutes les villes martyrisées.', '2026-08-20', 219, '9782073121349', 20.00, 7, 3),
(8, 'Chronique d\'un royaume perdu', 'Au Bouchon, petit village isolé de l\’île Maurice, quatre générations se succèdent depuis le temps de l\’esclavage. La violence se mêle à l\’amour, la tendresse à la haine, les plus nobles passions aux vices les plus vils, les sangs des unes aux sangs des autres…
Les cinq fondateurs viennent d\’une plantation lointaine  : trois sont nés dans la puissante et blanche famille Dumontais  ; deux d\’une esclave noire. Mais les trois blancs sont en vérité le fruit d\’une passion entre Madame et le Vieux Bouc, un esclave magnétique qui revendique aussi la paternité des deux derniers. Bannis pour s\’être liés d’amour et d\’amitié, les cinq enfants devenus grands trouvent refuge dans ce lieu perdu dont ils font leur royaume, autarcique et magique, qu\’ils défendent d’un seul corps, puisqu\’ici sont abolies les frontières entre passé, présent et avenir  ; vie et mort  ; réel et fantastique.
Tel homme entend sans le vouloir tous les péchés humains  ; telle femme meurt et renait en déesse protectrice  ; un enfant vit parmi les oiseaux quand son cousin viole et tue sans frein  ; le moulin est hanté par les voix des fantômes, la nature donne les plus beaux fruits mais décapite la chapelle  ; les guerres du monde contemporain rencontrent les combats intérieurs de chaque individu et l\’histoire de l’humanité se reproduit dans l\’infiniment petit de leurs existences débridées. Parmi eux, un enfant timide sera le chroniqueur de ce royaume hors-norme dont il livre les jours de paix, de luttes, et les nuits de folie pour empêcher l’oubli.
Épopée fabuleuse,  mythologie vibrante, fable majestueuse, cette Chronique d’un Royaume perdu est le chef d’œuvre d’Ananda Devi.', '2026-08-19', 454, '9782246846949', 24.00, 8, 6);
/*(4, 'Thomas Petit', '8 allée des Fleurs, 33000 Bordeaux');*/
/*(4, 'Thomas Petit', '8 allée des Fleurs, 33000 Bordeaux');*/
/*(4, 'Thomas Petit', '8 allée des Fleurs, 33000 Bordeaux');*/




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

--
-- Déchargement des données de la table `pg_editeur`
--

INSERT INTO `pg_editeur` (`ed_id_editeur`, `ed_nom_editeur`) VALUES
(1, 'Flammarion'),
(2, 'Actes Sud'),
(3, 'Gallimard'),
(4, 'R. Laffont'),
(5, 'POL'),
(6, 'Grasset');

-- --------------------------------------------------------

--
-- Structure de la table `pg_auteur`
--

DROP TABLE IF EXISTS `pg_auteur`;
CREATE TABLE IF NOT EXISTS `pg_auteur` (
  `au_id_auteur` int NOT NULL AUTO_INCREMENT,
  `au_nom_auteur` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `au_prenom_auteur` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `au_biographie` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`au_id_auteur`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pg_auteur`
--

INSERT INTO `pg_auteur` (`au_id_auteur`, `au_nom_auteur`, `au_prenom_auteur`, `au_biographie`) VALUES
(1, 'Jaenada', 'Philippe', 'Philippe Jaenada est né à Saint-Germain-en-Laye où ses grands-parents maternels possédaient le restaurant Le Grand Cerf. Issu d\’une famille de pieds-noirs récemment revenue d’Algérie, il grandit dans une banlieue pavillonnaire, à Morsang-sur-Orge en Essonne[1]. Après des études scientifiques, il s\’installe à Paris en 1986 où il enchaîne les petits boulots pendant plusieurs années[2]. Sa première nouvelle est publiée en 1990 dans L\'Autre Journal. Ses sept premiers romans sont d\'inspiration autobiographique. Outre ses livres, il a écrit des articles pour le magazine Voici[3] pendant plusieurs années, avant d’arrêter en 2022 pour se concentrer pleinement à ses romans. Avec sa compagne Anne-Catherine Fath, ils ont un fils, Ernest, né en août 2000. Habitant le 10e arrondissement, il a ses habitudes au Bistrot Lafayette[4].'),
(2, 'Godard', 'Anne', 'Anne Godard est la fille d\'un père libraire[2]. Après un CAPES et une agrégation de lettres modernes obtenue en 1995, Anne Godard soutient en 2000 sa thèse (sous la direction d\'Yves Hersant) sur le thème de « La Renaissance dialogique. Imitation et dialogisme dans les dialogues de la Renaissance ». En 2002, elle devient maitresse de conférence en « Langue et littérature françaises » à l\'université Sorbonne-Nouvelle où elle enseigne dans le département de français langue étrangère [3]. Ses travaux portent sur la lecture subjective, l\'écriture créative et le plurilinguisme littéraire[source secondaire nécessaire].

Son premier roman, L\'Inconsolable, est publié par Les Éditions de Minuit et obtient le grand prix RTL-Lire en 2006[2]. Ecrit à la deuxième personne, il aborde le thème du deuil et de la mise à distance des vivants[Interprétation personnelle ?].

Plus de dix ans après la sortie de son premier roman – Anne Godard explique passer par des phases de nécessité et d\'impossibilité d\'écriture[4],[5] – paraît son deuxième roman, Une chance folle, dont la « genèse très longue » a été liée à la difficulté de « trouver une voix, finalement simple, puisqu\'il s\'agit de laisser parler la jeune fille[4],[6] », Magda, personnage central de l\'œuvre, qui s\'émancipe progressivement d\'une histoire qu\'elle porte comme un stigmate[Interprétation personnelle ?].

Elle publie en 2026 Nous aussi chez Actes Sud. Un roman choral[Quoi ?] écrit au "on" indéfini, portrait du fonctionnement toxique d’une grande famille bourgeoise, dont les enfants sont comme les membres d\’un grand corps indifférencié.'),
(3, 'Haenel', 'Yannick', 'Yannick Haenel est le fils d\'un officier de l\'armée française. Il fait ses études au prytanée national militaire de La Flèche[1] et au lycée Chateaubriand de Rennes[2]. Il est agrégé de lettres modernes[3].'),
(4, 'Hassaine', 'Lilia', 'Après des études littéraires[2],[3], Lilia Hassaine participe, en 2012, au programme Monde Académie du Monde[4] puis intègre, en 2013, l\'Institut français de presse dont elle sort diplômée en 2015[5],[6].

Elle travaille pour Arte, Le Parisien et Le Monde, puis, en 2014, remporte le 5e prix Santé et Citoyenneté du meilleur web-documentaire avec De mèche contre le cancer[7].'),
(5, 'Devillers', 'Sonia', 'Son père est l\'architecte Christian Devillers, profession exercée également par sa mère[1] Marina.

En 1961, ses grands-parents maternels, les Sanielevici[2], et sa mère alors âgée de quatorze ans ont dû fuir brutalement la Roumanie communiste qui monnayait ses Juifs, ce qu\'elle raconte dans son ouvrage Les Exportés, paru chez Flammarion[3].'),
(6, 'Chennevière', 'Louise', 'Louise Chennevière naît en 1993. Elle grandit à Paris où elle suit un parcours de classes préparatoires littéraires et est diplômée d\’un master de philosophie[1].'),
(7, 'Rolin', 'Olivier', 'Olivier Rolin passe son enfance au Sénégal. Après des études au lycée Louis-le-Grand, à Paris, il est admis en 1967 à l\'École normale supérieure. Il est diplômé en philosophie et en lettres.'),
(8, 'Devi', 'Ananda', 'Elle naît en 1957 à Trois Boutiques sur l\'ile Maurice[1],[2]. Ses parents, mauriciens et propriétaires terriens, sont d\'origine indienne[3]. Elle est, de ce fait, familière de plusieurs langues (le français, le créole, l\'anglais et le télougou). Dès son enfance, elle se passionne pour l\'écriture en écrivant (poèmes, nouvelles, etc.)[2].

À 15 ans, elle remporte un concours d\'écriture organisé par l\'ORTF et l\'ACCT qui publie sa nouvelle intitulée La Cité Attlee[4].

Elle publie son premier recueil de nouvelles, intitulé Solstices, à 19 ans[4].

Elle obtient un doctorat d\'anthropologie sociale à l\'École des études orientales et africaines de l\'université de Londres[5]. Après ses études, elle revient à sa première passion, la littérature, et publie son premier roman dans une maison d\'édition africaine. Puis elle publie ses romans chez différents éditeurs, notamment l\'Harmattan, Gallimard et aujourd\'hui Grasset[6].

À travers ses différents romans et nouvelles, elle offre aux lecteurs une vision de l\'île Maurice aux antipodes de la vision officielle transmise aux touristes, mettant en exergue aussi les violences faites aux femmes[7]. Ce sont des tableaux percutants de la guerre des sexes et des classes[8]. Certains de ses ouvrages, notamment Les hommes qui me parlent et Deux malles et une marmite, sont également autobiographiques[7].

Elle est l\'épouse du réalisateur mauricien Harrikrisna Anenden[9] et vit à Ferney-Voltaire dans l\'Ain[10].');

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
  
  