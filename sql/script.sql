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
Épopée fabuleuse,  mythologie vibrante, fable majestueuse, cette Chronique d’un Royaume perdu est le chef d’œuvre d’Ananda Devi.', '2026-08-19', 454, '9782246846949', 24.00, 8, 6),
(9, 'De l\'autre côté du lac', '« Paola était comme ça. Elle était entière. Elle voulait toujours que tout soit vrai, les rapports humains, les discussions, les rencontres, les projets dans lesquels elle s\’engageait. Elle ne supportait pas les faux-semblants, les demi-mesures. Elle était d’un bloc. Elle disait les mots ont de la valeur. Les actes ont de la valeur. Elle voulait qu’il y ait de l\’enjeu. C\’est dans l\’inconfort qu’on se découvre, elle disait. C\’est dans l\’inconfort qu\’on grandit. »

Aux abords d\’un lac de haute montagne, à la lisière d\’une réserve interdite aux humains, un groupe de chercheurs s\’affaire. Parmi eux, une photographe aperçoit sur un des versants quelque chose qui échappe au regard de tous les autres. Les signes étranges s\’accumulent, un corps est retrouvé. La photographe décide de rester là-haut, seule. 
Quelques mois plus tard, c\’est elle qui, à son tour, disparaît. 

Avec ce roman tout en tension, Sylvain Prudhomme approfondit plusieurs thèmes qui lui sont chers : le désir d’intensité, l’appel du sauvage, le rêve d’une vie vraie. ', '2026-08-27', 279, '9782707358233', 22.00, 9, 7),
(10, 'Choses que je croyais perdues', '« Je voulais te dire : sans le faire exprès, j\'ai cassé le verre à moutarde Musclor que lu aimais bien. Le prince sous stéroïdes mal imprimé a perdu sa tête, mais il continue de flatter d\'une main distraite l\'encolure de son tigre vert de compagnie, Tu avais trouvé ce verre dans un vide-greniers où les gens vendaient pas cher de jolies choses. Après l\'avoir regardé longtemps, avec intensité, tu l\'avais négocié à deux euros. C\'était un souvenir d\'enfance et ta joie m\'avait attendrie. Ça allait encore entre nous à ce moment-là, enfin je crois. »

Seule dans son appartement, une jeune femme emballe ses affaires. Demain, des déménageurs emporteront ces traces fragiles de son existence. Elle pense à l\'homme dont elle vient de se séparer, et des histoires surgissent des objets qu\'elle manipule. Une assiette au filet d\'or, un ensemble H&M couleur poil de chameau, un rouleau de Sopalin : ces témoins d\'une vie ordinaire ont autant à raconter qu\'un trépidant roman d\'aventures...

Que reste-t-il de ce que nous avons vécu ? De quelles légendes sommes-nous faits ? Les grandes amours comme les petits riens, les désillusions et les désirs sont au coeur de ce roman plein de surprises, à la fantaisie incomparable.', '2026-08-20', 162, '9782073162854', 19.00, 10, 3),
(11, 'Minotaure', '« Être l\'indésiré, né hors du désir du père, voilà mon acte de naissance.
J\'y réponds par un désir extrême, une surenchère d\'histoires vécues... ou racontées.
Après tout, le Minotaure est un Forçat du sentiment. Forcé d\'aimer tous ceux qu\'il rencontre.
Avant de les dévorer. »', '2026-08-19', 242, '9782226511874', 20.90, 11, 8),
(12, 'Une forêt', '« Le capitaine Lenz finissait par se prendre au jeu. S\'il n\'avait aucun intérêt dans l\'affaire, c\'est qu\'il ne la comprenait pas. Mais sa curiosité était piquée. Et puis, défendre la cause de ces oiseaux allemands, démontrer qu\'ils n\'étaient pas de fervents nazis représentait somme toute une occupation préférable à l\'ennui. »', '2026-01-02', 106, '9782226499523', 16.90, 12, 8),
(13, 'Joseph dans la nuit', 'Voyageur épris d\'ailleurs, de stop et de liberté, Olivier est en route vers Lahore pour fêter la nouvelle année sur une plage indienne. En traversant l\'Iran, il est arrêté à Chiraz alors qu\'explose le mouvement Femme, Vie, Liberté. Accusé d\'espionnage, il reste deux ans et demi en prison.
Olivier est un poète, habitué à vivre de peu, sans confort ni téléphone portable. En cellule, il mobilise tout ce qui peut lui apporter de la lumière, la poésie persane comme les chansons de Britney Spears.
Derrière ses paupières, installé dans un cinéma dont il est le seul spectateur, il se projette des films. La nuit, il convoque dans ses rêves les êtres aimés.
Un récit lumineux et bouleversant qui nous dit que, même dans la nuit, quelque chose en nous refusera toujours de céder. La découverte d\'un écrivain.', '2026-08-20', 230, '9782378805975', 19.90, 13, 9),
(14, 'N\'efface pas mes cercles', '1980, une femme se suicide dans un appartement cossu. Dans les années cinquante, elle s\'était unie avec un jeune homme à qui tout l\'opposait.

Explorant son histoire familiale, la narratrice tente de démêler les raisons de ce drame et dresse ce faisant le portrait d\'une société aux prises avec ses démons : le patriarcat, la guerre, la colonisation, les injonctions à la réussite et au bonheur.

N\'efface pas mes cercles remonte le temps à la recherche des destins brisés et restitue avec force l\'atmosphère des époques traversées. Cette saga bouleversante confirme le grand art d\'Emma Marsantes.', '2026-08-20', 153, '9782378562953', 19.50, 14, 10),
(15, 'Bataille au procès', 'En 1956, Georges Bataille est appelé à témoigner au procès de Jean-Jacques Pauvert, poursuivi pour avoir publié les œuvres de Sade. L\’auteur d\'Histoire de l\'oeil comprend que la morale menace de mort la littérature. L\’audience devient le miroir de sa propre vie. Les souvenirs affluent : enfance marquée par la folie d’un père aveugle et paralytique, l\’indifférence d\’une mère réfugiée dans la religion. Des événements qui ont émaillé son parcours surgissent : expériences limites dans ses amours placées sous l\’égide de la transgression, visions de guerre et de sacrifice qui le hantent, traversée du mal, liens tourmentés avec le parti communiste, haine du fascisme… Réflexions et fulgurances se mêlent en un vertige où pensée et vie s\’entrelacent, entre érotisme et sacré, extase et mort. Mais derrière ces éclats affleure aussi une énigme plus obscure. Refusera-t-elle de se dévoiler ?À travers cet épisode de la vie littéraire, Patrice Trigano accompagne Bataille au plus près de son vertige intérieur. Il explore ce point où l\’écriture n\’obéit plus à l’auteur, où l\’œuvre surgit comme une puissance étrangère, excessive, qui le dépasse.Patrice Trigano a fait des études de droit et de philosophie avant de consacrer sa vie à l\’art en tant que galeriste, écrivain et dramaturge. Ses livres sont publiés aux éditions de la Différence, Léo Scheer, Mercure de France et Maurice Nadeau. Il a publié en 2024, La Promesse de l\’art, Mémoires d’un galeriste aux Éditions du Canoë.', '2026-08-21', 136, '9782862316857', 19.00, 15, 11),
(16, 'C\'était ça ou mourir', 'Le premier roman de Thélyson Orélien est déjà le phénomène littéraire de l\’année 2026. En cours de traduction dans plus d\’une vingtaine de langues, C\’était ça ou mourir a conquis le Québec et bientôt le monde entier, en racontant l\’Odyssée de Jonas Dorléon.
Après l\’embrasement de son quartier de Port-au-Prince, Jonas n\’emporte presque rien avec lui en quittant Haïti : un diplôme, un cahier de poèmes, la photo de sa mère. Toute une vie dans un sac plastique. Se réfugiant d\’abord en République dominicaine, puis au Brésil et au Mexique, ce professeur d\’histoire franchit les frontières tantôt à bord d\’un autobus surchauffé, tantôt en affrontant les profondeurs de la jungle. À chaque étape des visages surgissent, des corps tombent, des solidarités se nouent puis se brisent. Dans l\’espoir d\’atteindre le Canada et le peu de famille qu\’il lui reste, Jonas se retrouve aux portes des États-Unis, seul face aux agents de l\’ICE et d\’une administration prête à tout pour mener sa chasse aux migrants.
Avec la trajectoire de Jonas, c\’est une cartographie intime de la survie qui se dévoile. Aussi contemporain qu\’universel, ce roman raconte les migrations au présent — non comme un concept, mais comme une expérience physique : marcher, avoir faim, se blesser, rire devant l\’horreur pour ne pas abandonner. Thélyson Orélien y déploie une écriture foisonnante, traversée d\’humour et de poésie, une langue d\’exil qui s\’apprend « sans grammaire, sans dictionnaire, juste avec les os et la peau ».
Porté par un souffle narratif irrésistible, C\’était ça ou mourir est un premier roman bouleversant qui révèle un écrivain majeur de notre temps.', '2026-08-19', 266, '9782246847069', 21.50, 16, 6);



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
(6, 'Grasset'),
(7, 'Minuit'),
(8, 'Albin Michel'),
(9, 'l\'Iconoclaste'),
(10, 'Verdier'),
(11, 'M. Nadeau');


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

Elle est l\'épouse du réalisateur mauricien Harrikrisna Anenden[9] et vit à Ferney-Voltaire dans l\'Ain[10].'),
(9, 'Prudhomme', 'Sylvain', 'Sylvain Prudhomme a passé son enfance dans différents pays d\'Afrique (Cameroun, Burundi, Niger, île Maurice) avant de venir étudier les Lettres à Paris, puis de diriger de 2010 à 2012 l\'Alliance franco-sénégalaise de Ziguinchor, au Sénégal. Il est agrégé de lettres modernes.'),
(10, 'Mélois', 'Clémentine', 'Clémentine Mélois naît le 15 juin 1980 ; elle grandit à La Ferté-Milon[2]. Sa mère est professeure de français[3], son père est le sculpteur Bernard Mélois. Sa sœur Barbara Mélois est marionnettiste.

À l’âge de huit ans, elle remporte le premier prix d’un concours d’écriture organisé par les éditions Gallimard, et reçoit un lot de 365 livres, ce qui marque, dit-elle, « le début de sa vocation de bibliomane »[4].'),
(11, 'Bergmann', 'Boris', 'Son premier roman, Viens là que je te tue ma belle, aux éditions Scali, journal imaginaire d\'un jeune adolescent qui découvre la nuit et la transgression à travers le rock and roll, reçoit le prix de Flore du lycéen[2]. Ce roman est adapté en 2012 pour Arte par Jean-Stéphane Sauvaire sous le titre de Punk[3],[4], avec Béatrice Dalle, Paul Bartel, Marie-Ange Casta et Bernie Bonvoisin.

En janvier 2010, il publie son second roman, 1 000 Mensonges, aux éditions Denoël : les confidences d\'un menteur qui tombe amoureux.

En août 2016, il sort son troisième roman, Déserteur, aux éditions Calmann-Levy : le récit d\'un jeune hacker utilisé par l\'armée pour programmer les drones dans la guerre contre le califat. Envoyé en mission dans le désert, il sera forcé de prendre part à des actes terribles qui vont le pousser à s\'engager et à se faire face pour la première fois[5].

Il a également collaboré à de nombreuses revues littéraires (La Règle du Jeu[6], Edwarda[7], L\'écho d\Orphée, Les Poètes Bodybuildés, Possession Immédiate[8]) ainsi qu\'à divers magazines et journaux.

En septembre 2017, il est admis comme pensionnaire de la Villa Medicis, promotion 2017/2018. Son projet porte sur le fanatisme[9].

En janvier 2018, il sort son quatrième roman, Nage libre : l\'histoire d\'Issa, jeune d\'un Paris populaire, qui va se libérer par la nage, la quête de désirs et d\'amitié[10]. Nage Libre reçoit le prix littéraire de la vocation 2018[11] ainsi que le prix Révélation de la Société des Gens de Lettres[12].'),
(12, 'Jouannais', 'Jean-Yves', 'Adolescent, Jean-Yves Jouannais fonde la Revue perpendiculaire. La troupe monte à Paris où Jean-Yves Jouannais devient rédacteur en chef de la revue Art Press[3].

Jean-Yves Jouannais est l\'auteur de plusieurs essais, romans et ouvrages collectifs. Il a été le rédacteur en chef de la revue Exhibition (émission d\'art contemporain diffusée sur Arte. Production MK2 TV).

Depuis 2009, il anime le spectacle-conférence vidéo L\'encyclopédie des guerres visible au Centre national d\'art et de culture Georges-Pompidou[4] et au Palais du Tau à Reims entre autres. Son projet est de compiler une encyclopédie de toutes les guerres de l\'histoire de l\'humanité, et d\'en partager uniquement les citations recueillies[5],[6].'),
(13, 'Grondeau', 'Olivier', 'Passionné de poésie et d\’ailleurs, Olivier Grondeau est parti huit ans sur les routes, après des études littéraires et des emplois en librairie. Curieux, attentif, il a longtemps mené une vie discrète, guidée par le goût des rencontres et de la littérature. À l\’automne 2022, il se trouve à Chiraz, en Iran, au moment des manifestations du mouvement « Femme, Vie, Liberté ». Kidnappé par les services des renseignements iraniens, il va passer deux ans et demi en prison, notamment dans la terrible prison d\’Evin. Il finit par sortir de l’anonymat après plus de deux ans de détention, devenant malgré lui l\’un des visages de la « diplomatie des otages », ces Occidentaux retenus en prison par l\’État iranien pour faire pression sur leur pays d’origine. Libéré en février 2025, il a achevé ses études d\’anthropologie à Montpellier.

Joseph dans la nuit est son premier livre.'),
(14, 'Marsantes', 'Emma', 'Née en 1960, Emma Marsantes a grandi à Neuilly-sur-Seine. Elle suit des études de lettres modernes à la faculté de Nanterre, puis à la Sorbonne.

Dans les années quatre-vingt-dix, elle écrit de la poésie qu\’elle publie en revue. Professeure de français, elle a principalement enseigné dans des collèges de la banlieue parisienne. À partir de 2009, elle se consacre à la pratique de la photographie.'),
(15, 'Trigano', 'Patrice', 'Né à Paris le 4 octobre 1947, Patrice Trigano est le fils de l\’industriel et homme politique André Trigano et de Gaby Sabatier. Après une scolarité à l\’école Alsacienne où Alfred Simon l\’initie au théâtre, il poursuit des études de droit, d’histoire de l\’art à l\’école du Louvre et de philosophie à l\’école pratique des hautes études de la Sorbonne où il est l\’élève de Jean Cassou.

En 1967, alors qu\’il doit passer une année alité à la suite d\'une péricardite constrictive, il découvre les penseurs tragiques, le Surréalisme[3] et se passionne pour l\’art subversif et la pensée libertaire. Il décide alors de consacrer sa vie à l\’art. « Je suis un artropophage », écrira-t-il plus tard[4].

Il trouve son identité dans «l\’art qui engage»[5], adhère aux idées de Mai 68 et devient un lecteur assidu de Marcuse. Sa première manifestation artistique sera l\’organisation d\’un concert Ravel à la sortie des caisses d\’un supermarché avec l\'Orchestre national des Pays de la Loire sous la direction d\’Yves Prin.'),
(16, 'Thélyson', 'Orélien', 'Thélyson Orélien naît aux Gonaïves, en Haïti en 1988[3].

En 2010, à la suite du séisme qui frappe Haïti, Thélyson Orélien quitte son pays natal et s\’installe au Québec. Cette expérience marque durablement son parcours personnel et littéraire. Dans ses textes et prises de parole, il évoque souvent le lien qu\’il conserve avec Haïti, son pays d\’origine, tout en reconnaissant l\’importance du Québec comme terre d\’accueil. Cette double appartenance nourrit une partie de sa réflexion sur l\’exil, la mémoire, la transmission et l\’identité. Avant la publication de son premier roman, il écrit dans différentes revues, plateformes et espaces de réflexion. En 2007, il a été récompensé dans le cadre du Prix international des jeunes auteurs destiné aux 15-20 ans, en Suisse, pour un texte poétique intitulé Les Couleurs de ma terre,[4] remporté deux ans avant par Joël Dicker.

Il vit au Canada, où il poursuit son travail d\’écriture entre mémoire haïtienne, expérience québécoise et réflexion sur les migrations contemporaines.');

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

--
-- Déchargement des données de la table `pg_membre_jury`
--

INSERT INTO `pg_membre_jury` (`me_id_membre_jury`, `me_nom_membre_jury`, `me_prenom_membre_jury`, `me_role_membre_jury`) VALUES
(1, 'Decoin', 'Didier', 'Membre'),
(2, 'Chandernagor', 'Françoise', 'Membre'),
(3, 'Ben Jelloun', 'Tahar', 'Membre'),
(4, 'Constant', 'Paule', 'Membre'),
(5, 'Claudel', 'Philippe', 'Président'),
(6, 'Assouline', 'Pierre', 'Membre'),
(7, 'Schmitt', 'Eric-Emmanuel', 'Membre'),
(8, 'Laurens', 'Camille', 'Membre'),
(9, 'Bruckner', 'Pascal', 'Membre'),
(10, 'Angot', 'Christine', 'Membre');


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
  
  