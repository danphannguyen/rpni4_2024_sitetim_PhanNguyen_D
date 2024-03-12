-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 11 mars 2024 à 19:27
-- Version du serveur : 5.7.39
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rpni4_siteTim_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `axes`
--

CREATE TABLE `axes` (
  `id` int(11) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `axes`
--

INSERT INTO `axes` (`id`, `nom`) VALUES
(1, 'Conception'),
(2, 'Intégration'),
(3, 'Programmation'),
(4, 'Médias'),
(5, 'Autre');

-- --------------------------------------------------------

--
-- Structure de la table `axes_cours`
--

CREATE TABLE `axes_cours` (
  `id` int(11) UNSIGNED NOT NULL,
  `axe_id` int(11) UNSIGNED NOT NULL,
  `cours_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `axes_cours`
--

INSERT INTO `axes_cours` (`id`, `axe_id`, `cours_id`) VALUES
(2, 1, 2),
(7, 1, 7),
(11, 1, 11),
(13, 1, 13),
(18, 1, 15),
(20, 1, 17),
(25, 1, 19),
(29, 1, 20),
(32, 1, 23),
(4, 2, 4),
(9, 2, 9),
(14, 2, 13),
(21, 2, 17),
(26, 2, 19),
(33, 2, 23),
(1, 3, 1),
(6, 3, 6),
(10, 3, 10),
(15, 3, 13),
(17, 3, 14),
(22, 3, 17),
(24, 3, 18),
(27, 3, 19),
(30, 3, 21),
(34, 3, 23),
(8, 4, 8),
(12, 4, 12),
(16, 4, 13),
(19, 4, 16),
(23, 4, 17),
(28, 4, 19),
(35, 4, 23),
(3, 5, 3),
(5, 5, 5),
(31, 5, 22),
(36, 5, 24);

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id` int(11) UNSIGNED NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `session` tinyint(1) NOT NULL,
  `annee` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id`, `nom`, `session`, `annee`) VALUES
(1, 'Introduction à la programmation', 1, 1),
(2, 'Design d\'interface I', 1, 1),
(3, 'Culture numérique et communication', 1, 1),
(4, 'Intégration I', 1, 1),
(5, 'Profession intégrateur', 1, 1),
(6, 'Programmation Web et multimédia I', 2, 1),
(7, 'Design d\'interface II', 2, 1),
(8, 'Montage médiatique : animation', 2, 1),
(9, 'Intégration II', 2, 1),
(10, 'Programmation web et multimédia II', 3, 2),
(11, 'Conception interactive I', 3, 2),
(12, 'Montage médiatique : vidéo', 3, 2),
(13, 'Réalisation de produits numériques interactifs I', 3, 2),
(14, 'Programmation web et multimédia III', 4, 2),
(15, 'Conception interactive II', 4, 2),
(16, 'Montage médiatique : plurimédia', 4, 2),
(17, 'Réalisation de produits numériques interactifs II', 4, 2),
(18, 'Programmation web et multimédia IV', 5, 3),
(19, 'Réalisation de produits numériques interactifs III', 5, 3),
(20, 'Analyse et conception de projets', 5, 3),
(21, 'Programmation spécialisée', 5, 3),
(22, 'Projet de recherche', 6, 3),
(23, 'Réalisation de produits numériques interactifs IV', 6, 3),
(24, 'Stage et activités professionnelles', 6, 3);

-- --------------------------------------------------------

--
-- Structure de la table `diplomes`
--

CREATE TABLE `diplomes` (
  `id` int(11) UNSIGNED NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` text COLLATE utf8_unicode_ci,
  `interet_conception` enum('1','2','3','4','5','6','7','8','9','10') COLLATE utf8_unicode_ci NOT NULL DEFAULT '5' COMMENT 'De 1 (pas vraiment ma force) à 10 (vraiment expert)',
  `interet_medias` enum('1','2','3','4','5','6','7','8','9','10') COLLATE utf8_unicode_ci NOT NULL DEFAULT '5' COMMENT 'De 1 (pas vraiment ma force) à 10 (vraiment expert)',
  `interet_integration` enum('1','2','3','4','5','6','7','8','9','10') COLLATE utf8_unicode_ci NOT NULL DEFAULT '5' COMMENT 'De 1 (pas vraiment ma force) à 10 (vraiment expert)',
  `interet_programmation` enum('1','2','3','4','5','6','7','8','9','10') COLLATE utf8_unicode_ci NOT NULL DEFAULT '5' COMMENT 'De 1 (pas vraiment ma force) à 10 (vraiment expert)',
  `courriel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_web` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `diplomes`
--

INSERT INTO `diplomes` (`id`, `nom`, `prenom`, `presentation`, `interet_conception`, `interet_medias`, `interet_integration`, `interet_programmation`, `courriel`, `linkedin`, `site_web`) VALUES
(1, 'Anctil', 'Marianne', '<p>Passionnées depuis mon jeune âge par le monde de la technologie, j’ai eu la chance de découvrir la TIM qui a forgé mon amour pour le design, l’intégration et la programmation. J’ai pu développer de nombreuses compétences, me rendant polyvalente et prête à affronter le futur. Je suis rapidement devenu avide par la programmation et j’adore utiliser ma logique et mon raisonnement pour analyser les problèmes rencontrés durant le développement d’un projet. </p>', '8', '6', '8', '10', 'marianctil@gmail.com', 'https://www.linkedin.com/in/marianne-anctil-5b867b271/', ''),
(2, 'Archambault', 'Andréanne', '<p>Pendant des années, j’ai exploré diverses formations cherchant à découvrir ma passion professionnelle. Cependant, je ressentais constamment l’absence d’un aspect artistique dans les emplois que j’envisageais. Ce qui m’a captivé dans le programme de la <abbr title= \"\"Technique d’intégration multimédia\"\">TIM</abbr>, c’est la possibilité de concevoir et de programmer des sites web, fusionnant ainsi le design et la programmation.</p><p>La formation m’a permis de développer une polyvalence, alliant les compétences design et en programmation. Mon intérêt pour la programmation s’est également intensifié au fil du temps. Je suis constamment avide d’apprendre et de perfectionner mes compétences. J’envisage de continuer mon parcours comme développeur <span lang=\"\"en\"\">full stack</span>.</p>', '7', '6', '8', '10', 'a.archambault94@hotmail.com', 'https://www.linkedin.com/in/andr%C3%A9anne-archambault-44b5a2272/', ''),
(3, 'Bergeron St-Pierre', 'Chalarak', '<p>Je suis une ancienne étudiante en langues étrangères et en sciences du langage. Après avoir suivi un cours passionnant en informatique linguistique, j\'ai ressenti le besoin de m\'immerger davantage dans le monde numérique. Mon parcours m\'a naturellement conduit à explorer la fascinante sphère de l\'intégration numérique, une révélation que j\'ai eue grâce à la formation dispensée au cégep de Sainte-Foy. Au fil de mes expériences, j\'ai cultivé un vif intérêt pour l\'interface utilisateur (UI). Mon objectif est de contribuer au développement de solutions numériques qui allient la puissance du langage et la convivialité des interfaces utilisateur, créant ainsi des expériences en ligne mémorables et impactantes. </p>', '10', '4', '10', '9', 'chalarakbergeron@gmail.com', 'https://www.linkedin.com/in/chalarak-bergeron-st-pierre-25317a129/', ''),
(4, 'Byatt', 'Christopher', '<p>Après avoir essayé plusieurs programmes par le passé, j’ai finalement tenté ma chance avec la <abbr title= \"\"Technique d’intégration multimédia\"\">TIM</abbr>, j’ai toujours eu un intérêt pour la programmation et la possibilité de concevoir des sites web a piqué mon attention. La formation m’a permis de développer mes compétences en programmation, mais aussi de découvrir bien faire les designs d’un site. Toujours en train de vouloir apprendre, mon objectif est de pouvoir continuer dans le futur en tant que programmeur <span lang=\"\"en\"\">full stack</span>.</p>', '7', '7', '8', '9', 'christo.by@hotmail.com', '', ''),
(5, 'Carrier', 'Justin', '<p>Passionné par la programmation et ayant de l\'expérience dans le design visuel, je suis constamment en quête d\'apprentissage et de défis stimulants. Ma soif de connaissances me pousse à explorer de nouvelles technologies, et je trouve une grande satisfaction à sortir de ma zone de confort. Impliqué dans divers projets, j\'aime contribuer à leur succès en apportant mes compétences techniques et ma créativité. Mon engagement envers l\'entraide se manifeste dans ma volonté d\'aider les autres à atteindre leurs objectifs.</p>', '7', '7', '8', '9', 'juscar312@gmail.com ', 'https://www.linkedin.com/in/carrier-justin/', ''),
(6, 'Charette', 'Clodiane', '<p>J’ai commencé mon parcours dans un autre programme basé sur la physique, mais j’ai rapidement réalisé que ce n’était pas pour moi. Ce programme m’a permis d’apprendre que j’aime travailler à l’ordinateur et j’ai cherché pour savoir dans quelle branche je voulais me spécialiser. Je me suis retrouvée à hésiter entre faire du design ou de la programmation. Quand j’ai découvert la TIM, un programme qui permet de consolider mon intérêt vers le graphisme et la programmation, j’ai su que ce serait mon programme. </p>', '8', '7', '5', '9', 'clodianecharette@hotmail.com', 'https://www.linkedin.com/in/clodiane-charette-8609901b2/', ''),
(7, 'Garneau-Dionne', 'Daren', '<p>Bonjour, je m’appelle Daren Garneau-Dionne et je suis finissant en intégration multimédia. J’ai une passion pour les nouvelles technologies depuis mon plus jeune âge.</p><p>En 2019, j\'entreprends alors des études en informatique à Rivière-du-Loup et c\'est là que je découvre ma véritable passion, la conception web. Mes professeurs ont vite remarqué ma passion pour ce domaine. Ils m’ont parlé des techniques d’intégration multimédia à Sainte-Foy. J’avais quelques doutes : était-ce vraiment le bon programme? Je ne me considérais pas comme étant particulièrement créatif, mais je décide quand même de poursuivre mes études au cégep de Sainte-Foy en techniques d’intégration multimédia à Québec.</p><p>Durant mon parcours dans le programme, j\'ai vraiment développé une passion pour la conception visuelle, l\'intégration et depuis la dernière année je m\'intéresse plus particulière à l\'animation 3D.</p><p>À court terme, à la sortie de la TIM, je souhaite travailler en tant qu’intégrateur Web, mais à plus long terme, je songe à poursuivre mes études afin de devenir designer Web. On verra bien ce que réserve l\'avenir!</p>', '10', '7', '10', '8', 'darengdionne@outlook.com', 'https://www.linkedin.com/in/daren-garneau-dionne/', 'https://darengd.dev'),
(8, 'Graignon', 'Maxime', '<p>Bonjour, Je m\'appelle Maxime Graignon, et je suis ravi de vous présenter ma motivation pour avoir choisi le programme de Technique d\'Intégration Multimédia au Cégep. Mon intérêt pour les technologies a toujours été au cœur de mes aspirations. C\'est cette passion qui m\'a naturellement conduit vers ce programme. La possibilité de combiner programmation, design et montage vidéo, photo et audio dans un seul domaine m\'a immédiatement séduit. J\'ai toujours aimé relever des défis, et je vois dans ce programme une occasion parfaite de le faire au quotidien. Bien que j\'apprécie tous les aspects de ce programme, j\'ai un penchant particulier pour le design. La créativité et la recherche esthétique sont des éléments qui me motivent et me stimulent au quotidien. Avant de rejoindre ce programme, j\'ai suivi une formation en informatique. Cependant, l\'ambiance solitaire et l\'absence de collaboration m\'ont laissé insatisfait. Je recherchais un environnement où le travail d\'équipe et l\'entraide sont valorisés, et c\'est exactement ce que j\'ai trouvé dans la Technique d\'Intégration Multimédia. En résumé, j\'ai choisi ce programme pour la diversité des compétences qu\'il propose, pour la possibilité de travailler sur des projets stimulants et pour l\'ambiance collaborative qui règne au sein de cette communauté. Je suis convaincu que mon parcours et mes compétences seront un atout pour toute équipe dans le domaine du multimédia.</p>', '8', '8', '7', '7', 'graignonm@gmail.com', 'https://www.linkedin.com/in/maxime-graignon/', ''),
(9, 'Hessen', 'Giselle Paola', '<p>Ma passion pour la technologie a commencé au secondaire, lorsque j’étais inscrite dans le programme PROTIC, un programme qui non seulement invite les élèves à s’engager dans des projets collaboratifs, mais aussi les fait travailler avec les technologies quotidiennement. Mon parcours m\'a naturellement conduit à la programmation et au design. Ce parcours m\'a façonné, éveillant ma curiosité pour les langages informatiques et le design visuel. Aujourd\'hui, en tant que finissante, je suis prête à relever de nouveaux défis et à apporter ma contribution à ce vaste univers numérique en constante évolution. </p>', '10', '8', '7', '10', 'gisellehessen7@gmail.com', 'https://www.linkedin.com/in/giselle-hessen-8154b1211/', ''),
(10, 'Kingma-Lord', 'Michel', '<p>Professionnel multidisciplinaire passionné par les technologies. Diplômé d’une Techniques d\'intégration multimédia et d’une Maitrise en gestion internationale, il allie une solide base théorique à une expertise pratique. Dynamique et innovant, il excelle en développement web front-end, avec des compétences en <abbr title=\"\"Hypertext Markup Language\"\">HTML</abbr>, <abbr title=\"\"Cascading Style Sheets\"\">CSS</abbr>, <abbr title=\"\"JavaScript\"\">JS</abbr>, et des technologies connexes comme WordPress et Elementor. Son parcours professionnel diversifié inclut des stages au sein du Ministère du Conseil exécutif et d\'agences web privées. Ses compétences s\'étendent également à la gestion de projet et à l\'analyse stratégique.</p><p>En tant que consultant (technologie et stratégie d\'entreprise), il a joué un rôle clé dans l\'analyse, la planification et la mise en œuvre de solutions novatrices. Délégué du <a href=\"\" https://www.g20yea.com/\"\">G20 YEA</a>, il a représenté avec succès les intérêts commerciaux canadiens à des sommets économiques mondiaux. Michel incarne l\'esprit créatif, la compétence technique et le leadership essentiels pour exceller en affaires.</p>', '8', '9', '10', '8', 'michelkl@outlook.com', 'https://www.linkedin.com/in/michelkingmalord/', ''),
(11, 'Mannee-Batschy', 'Anaïs', '<p>Avant de commencer le programme, j’avais commencé à coder sur mon temps libre. Cet intérêt grandissant, j’ai décidé de m’inscrire en <abbr title= \"\"Techniques en intégration multimédia\"\">TIM</abbr> afin d’en apprendre davantage. Je cherchais un domaine professionnel dans lequel je puisse sans cesse découvrir de nouvelles choses. Mon parcours au sein de la <abbr title= \"\"Techniques en intégration multimédia\"\">TIM</abbr> n’a fait que confirmer que cette décision était la bonne. Grâce à la diversité des cours, j’ai pu découvrir plusieurs aspects du web afin de pouvoir préciser mon intérêt pour l’intégration et la programmation.</p>', '7', '6', '10', '10', 'anaismannee@gmail.com', '', ''),
(12, 'Matteau', 'Éloïse', '<p>Ayant toujours eu un grand intérêt pour le web, j’ai rejoint la technique en 2021 pour accomplir mes objectifs. Au cours de mon parcours, j’ai développé mon amour pour la programmation. J’entrerai sur le marché du travail en tant que développeur full-stack et j’ai pour ambition de faire un certificat en gestion de projet pour plus tard être chargé de projet. L’apprentissage constant est un aspect très motivant dans le domaine <abbr title=\"\"Technologies de l\'information\"\">TI</abbr>.</p>', '7', '8', '8', '9', 'matteaue14@gmail.com', 'https://www.linkedin.com/in/%C3%A9lo%C3%AFse-matteau-8a986321b/ ', ''),
(13, 'Perron', 'Alexis', '<p>Passionné par le montage vidéo et le design web, je jongle entre lignes de code et pixels pour créer des expériences visuelles captivantes. Le montage vidéo est ce qui me pasionne vraiment, j\'aimerais en faire mon métier de tout les jours. Créateur de sites web et architecte visuel, je fusionne technologie et esthétique pour façonner des univers numériques engageants.</p>', '8', '8', '7', '6', 'alexis.perron@icloud.com', 'https://www.linkedin.com/in/alexis-perron-585283221/', ''),
(14, 'Phan Nguyen', 'Cécile', '<p> Étudiante internationale venant de la France, j’ai choisi de participer à ce programme d’échange qu’offrait le Cégep de Saint-Foy afin de poursuivre mes études dans le domaine numérique sous un autre angle. C’est ma <strong> curiosité </strong> et mon envie de me <strong> challenger </strong> qui m’ont amené à vivre cette aventure. Dans ce programme, j’ai approfondi mes compétences en développement web ainsi qu’en design tout en adaptant une nouvelle méthodologie de travail. </p>', '6', '7', '7', '6', 'cecilephan@outlook.com', 'https://www.linkedin.com/in/c%C3%A9cile-phan-nguyen-017261251/', 'https://cecilepn.fr/'),
(15, 'Phan Nguyen', 'Dan', '<p>Passionné par la création de sites web. J\'aime me lancer des défis à travers mes différents projets, et <strong>Kaizen</strong> est l\'état d\'esprit que j’essaie de suivre et de l’appliquer au quotidien. Ce que je préfère dans le <strong>développement web</strong> est l’apprentissage constant, le domaine est si vaste qu’il y aura toujours de nouvelles choses à apprendre et à découvrir. </p>', '7', '6', '8', '8', 'danphannguyen.contact@gmail.com', 'https://www.linkedin.com/in/dan-phan-nguyen-7a55a3251', 'https://danpn.eu'),
(16, 'Roy', 'Louis-Philippe', '<p> Initialement, j\'ai choisi de suivre la Technique d\'Intégration multimédia pour son aspect créatif et multimédia. Cependant, au fil du temps, j\'ai développé une véritable passion pour la programmation et l\'intégration. Cette évolution m\'a permis d\'explorer de nouveaux horizons et d\'approfondir mes compétences dans ces domaines.</p>', '4', '5', '10', '10', 'r.louisphilippe@yahoo.ca', 'https://www.linkedin.com/in/louis-philippe-roy-392675271', ''),
(17, 'Roy', 'Rosalie', '<p>Âgée de 20 ans lors de l’obtention de mon diplôme dans la technique, je fais le programme en 3 ans et je suis arrivée fraichement sortie du secondaire (17 ans). Ce qui m’a incité à m’inscrire, c’est mon programme au secondaire : Intégra-TIC à l’école secondaire Roger Comtois, à Loretteville. Je souhaitais continuer dans une branche similaire. Sinon, une de mes passions est la musique, j’ai été dans un « band » à l’adolescence.</p>', '9', '8', '9', '7', 'rosalie.roy.rodrigue@gmail.com', 'https://www.linkedin.com/in/rosalie-roy-1a8b19207/', ' https://www.rosalieroy.ca'),
(18, 'Ruest', 'Jean-Sébastien', '<p>Adepte des technologies et des jeux vidéo depuis mon enfance, j\'ai choisi la technique en intégration multimédia afin d\'attiser mon désir d\'apprendre et d\'être en mesure de développer des sites Web reliés à mes projets personnels. En tant qu’intégrateur, j\'ai décelé une passion pour le JavaScript et projette me spécialiser en front-end afin de réaliser tous mes futurs projets.</p>', '8', '8', '8', '4', 'hiimdavoska@outlook.fr', 'https://www.linkedin.com/in/jean-sébastien-ruest-669a79110/', ''),
(19, 'Savard', 'Jérémi', '<p>Je m\'appelle Jeremi, et je suis un professionnel de l\'intégration multimédia âgé de 21 ans, spécialisé dans les domaines du <abbr title=\"\"Hypertext Markup Language\"\">HTML</abbr>, <abbr title=\"\"Cascading Style Sheets\"\">CSS</abbr>, <abbr title=\"\"Hypertext Preprocessor”>PHP</abbr>, JavaScript et de la suite Adobe Creative. Avec une expérience avérée dans le développement de sites web de diverses natures, j\'ai également conçu des jeux en JavaScript sans recourir à un moteur spécifique. Ma solide expertise en intégration multimédia me confère une maîtrise approfondie en conception et développement web. La manipulation aisée de la suite Adobe Creative me permet de concevoir des designs et des graphiques à la fois percutants et esthétiques. Je suis reconnu pour ma capacité à résoudre les problèmes de manière créative, tout en accordant une grande importance aux détails.</p>', '10', '10', '10', '8', 'savard_jeremi@outlook.com ', 'www.linkedin.com/in/jeremi-savard-28411b221', ''),
(20, 'Vromet', 'Louis-Émile', '<p>Passionné de technologies et toujours avide de défis, j\'ai choisi la technique d\'intégration multimédia au Cégep. Mon amour pour la programmation se mêle harmonieusement à ma capacité à naviguer dans le désordre créatif. Ce programme incarne parfaitement ma vision dynamique de l\'informatique.</p>', '8', '10', '8', '9', 'louisemilevromet@gmail.com', 'https://www.linkedin.com/in/louis-%C3%A9mile-vromet-5575a0267/', '');

-- --------------------------------------------------------

--
-- Structure de la table `etapes`
--

CREATE TABLE `etapes` (
  `id` int(11) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ordre` int(11) NOT NULL,
  `description` varchar(3000) COLLATE utf8_unicode_ci NOT NULL,
  `projet_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `etapes`
--

INSERT INTO `etapes` (`id`, `nom`, `ordre`, `description`, `projet_id`) VALUES
(1, 'Collecte de données', 1, '<p> Après avoir sélectionné un thème, j\'ai entrepris la collecte de données relatives à la fréquentation des salles de cinéma en France sur une période définie, ainsi que d\'informations complémentaires. En plus de cela, j\'ai extrait les données sur l\'âge du public français et les premières salles de cinéma dans le monde dans des fichiers Excel, que j\'ai plus tard convertis en fichiers JSON. Ce processus m\'a permis de disposer de données structurées et adaptées à l\'analyse, facilitant ainsi la manipulation et la présentation des informations recueillies. </p>', 79),
(2, 'Conceptualisation', 2, '<p>À partir d\'un moodboard que j\'ai créé, j\'ai élaboré une maquette en réfléchissant à la structure et à la présentation des données récupérées. Mon objectif était de créer une conception visuelle en accord avec l\'esthétique définie dans le moodboard tout en assurant une organisation logique des informations. Cette démarche a permis de garantir la cohérence visuelle du projet tout en mettant en avant de manière efficace les éléments clés extraits des données. </p>', 79),
(3, 'Intégration', 3, '<p> Ensuite, j\'ai procédé à l\'intégration complète de la maquette en utilisant les langages HTML, CSS et JavaScript. Pour la création du graphique, j\'ai employé la bibliothèque Chart.js. L\'utilisation de l\'API Webglearth a permis de concevoir une représentation en 3D de la planète, affichant les divers cinémas dans le monde. En outre, j\'ai utilisé JavaScript pour dynamiquement faire apparaître les sièges de cinéma en fonction de l\'âge du public, ajoutant ainsi une dimension interactive à la visualisation des données. Cette approche technique a contribué à rendre le projet à la fois esthétiquement attrayant et fonctionnel. </p>', 79),
(4, 'Idéation & Réflexion', 1, '<p>Lors de cette première phase, j’ai dû commencer par réfléchir à l’arborescence du site, l’organisation de mes pages, ainsi que leurs contenus. Ensuite, j’ai donc réfléchi à la base de données avec la création de modèles conceptuel, relationnel, physique des données. Ces démarches m’ont permis de poser une base solide pour la suite du projet et d’éviter toute confusion lors des autres phases.</p>', 85),
(5, 'Conception UI / UX', 2, '<p>Pour ce qui est de la deuxième phase, j’ai donc réalisé un moodboard permettant de donner un thème et une ambiance a mon site. Celui-ci est composé de plusieurs visuels de site web, d’affiche ou d’illustration. Puis j’ai commencé à designer les différentes maquettes nécessaires aux sites, tout en suivant un maximum le thème de mon moodboard. L’étape de maquettage peut être très chronophage de par les nombreuses itérations possibles avant l’obtention d’un résultat satisfaisant.</p>', 85),
(6, 'Développement', 3, '<p>Enfin pour la troisième et dernière phase de développement, celle-ci nécessite l’intégration des différents visuels, mais aussi l’implémentation des bonnes pratiques de code et d’accessibilité. Arrive l’étape d’hébergement sur le serveur puis malheureusement une longue phase de débogage pour ma part.</p>', 85),
(7, 'Récoltes de données ', 1, '<p>Dans la première phase du projet d\'équipe, il a fallu que nous connaissions les besoins de notre clientèle cible. Pour ce faire, nous avons mené des entrevues, puis nous avons une carte d’empathie et un diagramme de cas </p>', 13),
(8, 'Création d\'une aborescence', 2, '<p>Par la suite, nous nous sommes penchés sur la structure de l\'application en créant une arborescence.</p>', 13),
(9, 'Tuile de style et maquettes', 3, '<p>Avec ces deux étapes complétées, nous nous sommes lancé dans la création de la tuile de style et réalisation des maquettes.</p>', 13),
(10, 'Analyse', 1, '<p>Avant d’entrer dans la conception du projet, nous avons pris le temps de rencontrer nos utilisateurs pour faire un portrait global de leurs besoins et attentes pour le projet. Suite à notre rencontre, nous avons répertorié les buts et difficultés des deux types d’utilisateurs. On peut inclure dans cette étape : les entrevues utilisateurs, la carte d’empathie et l’arborescence.</p>', 69),
(11, 'Conception UX', 2, '<p>Après avoir analysé les besoins principaux et attentes des utilisateurs, on entre dans la phase de conception où l’on fait les esquisses fonctionnelles, le prototype, les tests utilisateurs et les ajustements sur le prototype.</p>', 69),
(12, 'Tuile de style', 3, '<p>En réalisant la tuile de style, on détermine la direction visuelle des éléments de l’interface comme les couleurs, les boutons, les liens, la typographie, les icônes, etc.</p>', 69),
(13, 'Maquettes visuelles', 4, '<p>Finalement, on rajoute une couche visuelle sur les esquisses qui ont été réalisées plutôt dans le processus. C’est le moment où l’on combine les éléments de la tuile de style et les esquisses fonctionnelles pour rendre le tout beau à l’œil. Dans la technique, on utilise Figma pour les maquettes.</p>', 69),
(14, 'Identification de l\'utilisateur', 1, '<p>La première étape du projet était d\'élaborer un persona représentatif des utilisateurs, capturant des informations essentielles. Cette étape pave la voie à une personnalisation ciblée de l\'expérience utilisateur dès le départ.</p>', 50),
(15, 'Diagramme de cas ', 2, '<p>Deuxièmement, nous faisons un diagramme de cas du projet.  Nous identifions les différentes interactions entre les utilisateurs et le système. En modélisant ces scénarios, nous clarifions les fonctionnalités clés.</p>', 50),
(16, 'Esquisses fonctionnelles et Prototype', 3, '<p>En troisième lieu, nous faisons des esquisses fonctionnelles et un prototype de notre projet. Cela permet de traduire les concepts en représentations visuelles interactives afin de faciliter l\'évaluation des fonctionnalités.</p>', 50),
(17, 'Tuile de style', 4, '<p>Par la suite, nous définissons l\'esthétique visuelle et l\'identité graphique. En créant des modèles de conception cohérents, nous assurons une expérience utilisateur attractive et harmonieuse.</p>', 50),
(18, 'Maquettes finales', 5, 'Pour finir, nous peaufinons les détails visuels et fonctionnels. Ces représentations servent de référence pour le développement, garantissant une cohérence esthétique et une expérience utilisateur optimale.</p>', 50),
(20, 'Recherche utilisateur', 1, '<p>Au début du projet, une recherche utilisateur a été menée. Elle s’est passée en deux étapes. D’abord, une observation des utilisateurs de la cafétéria a été réalisée. Puis, un persona a été créé.</p>', 64),
(21, 'Prototypage', 2, '<p>À la suite de la recherche utilisateur, un prototype a été conçu. Des tests d’utilisabilité ont été menés. Ces tests ont permis de mettre à l’épreuve le prototype afin de l’améliorer.</p>', 64),
(22, 'Maquettes', 3, '<p>Ensuite, les maquettes de l’application ont été réalisées. En plus du design visuel, une attention particulière a été portée au design interactif afin de facilité au mieux l’utilisation de l’application.</p>', 64),
(23, 'Hand-off', 4, '<p>Pour finir, le hand-off a été rédigé. Pour chaque élément interactif, une description rapide de l\'interactivité a été faite dans le but de faciliter l\'intégration du projet. </p>', 64),
(24, 'Analyse', 1, '<p>La première étape d\'un projet consiste à son analyse de celui-ci. Dans cette étape, on se penche sur les besoins de notre mandat ainsi que ceux de l\'utilisateur. Nous avons réalisé des entrevues d\'utilisateurs, créer une carte d\'expérience, un diagramme de cas, une arborescence, un <span lang=\"\"en\"\">Journey map</span>, un <span lang=\"\"en\"\">design thinking</span>, puis une cartographie. Dans cette étape, une grande collaboration a été faite entre les membres de l\'équipe pour arriver à une vision commune du projet.</p>', 7),
(25, 'Esquisses fonctionnelles', 2, '<p>Suite à la séparation du projet entre les membres de l’équipe, nous nous sommes lancés dans les esquisses fonctionnelles réalisées dans Axure, où toutes nos pages seront interreliées. De mon côté, j\'avais à concevoir les interactions d’une page contenant une banque d’exercices avec des filtres et des thèmes, ainsi que la page de consultation d’un exercice. Ayant deux types de clientèles, je devais concevoir deux versions différentes de chacune des pages. Plusieurs actions dans ces pages devaient être réfléchies pour assurer une bonne compréhension de l’application et un confort de navigation.</p>', 7),
(26, 'Tests utilisateur', 3, '<p>Pour s’assurer que nous avons bien interprété le mandat et les besoins, nous sommes retournés en classe de francisation pour faire tester nos prototypes (esquisses fonctionnelles). Une partie a été réalisée avec les étudiants et l’autre avec l’animatrice du groupe. Suite à leurs commentaires, nous avons amélioré nos esquisses fonctionnelles.</p>', 7),
(27, 'Maquettes visuelles', 4, '<p>La phase des maquettes visuelles nous permet d\'exprimer notre créativité en visualisant le design de l\'application selon notre vision. Nous créons une feuille de style où chaque choix artistique et interactif est expliqué. Nous proposons également une version finale d\'une page pour disposer tous les contenus. Il est également essentiel d\'expliquer l\'ensemble du parcours interactif de manière détaillée, de sorte que les développeurs puissent concrétiser le projet en se basant sur notre maquette.</p>', 7),
(28, 'Présentation du projet', 5, '<p>Pour ce projet, nous avons réalisé une présentation complète de sa réalisation et avons expliqué les raisons qui nous ont conduits à proposer notre maquette. De mon côté, j\'ai élaboré ma présentation de manière écrite et détaillée, comprenant toutes les étapes de mon projet. Une section est également dédiée à la présentation des technologies susceptibles de soutenir l\'application. De plus, une estimation des coûts ainsi qu\'une proposition ont été incluses dans cette partie du projet.</p>', 7),
(30, 'Synopsis et Moodboard', 1, '\"<p>Au cours de cette étape, nous avons travaillé sur la création du synopsis du projet ainsi que du <span lang=\"\"en\"\">moodboard</span>. Le synopsis a servi à définir de manière concise le concept et l\'histoire du jeu, tandis que le <span lang=\"\"en\"\">moodboard</span> a permis de rassembler des inspirations visuelles et stylistiques pour orienter la direction artistique du jeu.</p>\"', 91),
(31, 'Préparation des médias et animations', 2, '<p>Pour cette étape, nous nous sommes concentrés sur la création des divers médias nécessaires, notamment pour l\'avatar, l\'antagoniste et les obstacles.</p>', 91),
(32, 'Animations avatar et antagoniste', 3, '<p>Pour cette étape, nous avons travaillé sur la création d\'animations captivantes de courte durée pour l\'avatar et l\'antagoniste. Pour l\'avatar, nous avons conçu trois états animés distincts : le déplacement, le tir et le statut touché ou hors combat. Quant à l\'antagoniste, deux états animés ont été développés : le déplacement et le statut touché ou hors combat.</p>', 91),
(33, 'Programmation', 4, '\"<p>Cette étape du projet consistait à élaborer la programmation du jeu Jetpack Labo, un <span lang=\"\"en\"\">Shooter</span> vidéo. À partir de nos animations créées dans Adobe Animate et grâce à une programmation en TypeScript suivant le modèle orienté objet, nous avons mis en place divers éléments graphiques tels que l\'avatar, l\'antagoniste, les obstacles, le projectile, les éléments du décor, le système de pointage, les points de vie ainsi que les écrans de début de partie.</p>\"', 91),
(34, 'Création du synopsis, moodboard et Game Design', 1, '\"<p>Dans la première phase du projet, je me suis immergé dans une collecte méticuleuse de données pour jeter les bases solides de \"\"La Quête de la Flamme\"\". J\'ai soigneusement sélectionné un thème captivant, celui d\'une boule de feu intrépide explorant le système solaire tout en affrontant des adversaires glacés.</p><p>Cette étape a commencé par la création d\'un synopsis détaillé, décrivant de manière concise le concept et l\'histoire du jeu. Ce document a servi de boussole, guidant chaque décision à venir. Parallèlement, un moodboard fut élaboré, où chaque élément contribuait à définir l\'esthétique et l\'ambiance du jeu. Ce moodboard, fruit d\'une réflexion profonde, a rassemblé des inspirations visuelles et stylistiques qui ont jeté les bases de notre direction artistique.</p><p>Cette phase initiale a été cruciale, car elle a posé les fondations sur lesquelles nous avons construit l\'univers captivant de \"\"La Quête de la Flamme\"\". Chaque décision a été imprégnée d\'une compréhension profonde des éléments narratifs et visuels, établissant ainsi un socle solide pour les étapes suivantes du développement.</p>\"', 58),
(35, 'Préparation des divers médias  ', 2, '\"<p>Dans cette étape, j\'ai pris en charge la préparation des divers médias nécessaires pour donner vie à notre jeu \"\"La Quête de la Flamme\"\". J\'ai travaillé sur la création des éléments visuels essentiels tels que l\'avatar, l\'antagoniste et les obstacles. Chaque détail a été soigneusement conçu pour s\'aligner parfaitement avec l\'esthétique et l\'ambiance dynamique du jeu. En m\'immergeant dans cette phase créative, j\'ai contribué à façonner visuellement l\'univers épique que les joueurs allaient explorer. Chaque élément visuel a été pensé pour captiver l\'imagination des joueurs et renforcer l\'expérience immersive de \"\"La Quête de la Flamme\"\".</p>\"', 58),
(36, 'Structuration des diverses tables de données (UML)', 3, '\"<p>Dans cette étape, j\'ai pris en charge la structuration des diverses tables de données en utilisant le langage UML (Unified Modeling Language). J\'ai travaillé sur la conception et la modélisation des différentes entités et de leurs relations afin de créer une base de données solide et efficace pour notre jeu. En utilisant UML, j\'ai pu visualiser et organiser les différentes composantes du jeu, telles que les personnages, les niveaux, les objets et les interactions entre eux. Cette structuration soigneuse des données a posé les fondations nécessaires pour assurer la cohérence et la fluidité de l\'expérience de jeu pour les utilisateurs de \"\"La Quête de la Flamme\"\".</p>\"', 58),
(37, 'Intégration et programmation du jeu', 4, '\"<p>Dans cette phase passionnante du projet, j\'ai mis en œuvre l\'intégration et la programmation du jeu. En utilisant les langages de programmation et les outils appropriés, j\'ai transformé les concepts et les designs préalablement établis en un produit interactif et fonctionnel. J\'ai travaillé avec diligence pour intégrer les différents éléments du jeu, tels que les personnages, les décors, les mécaniques de jeu et les interactions, tout en veillant à ce que tout fonctionne de manière harmonieuse et fluide.</p></p><p>Chaque ligne de code que j\'ai écrite était une étape de plus vers la réalisation de mon vision pour \"\"La Quête de la Flamme\"\", et chaque bug résolu était une victoire dans mon parcours de développement. En fin de compte, cette étape m\'a permis de donner vie à mon projet et de le rendre prêt à être découvert et apprécié par les joueurs. </p>\"', 58),
(41, 'Modélisation 3d du logo', 1, '<p>Lors de cette étape, il faut modéliser en 3D le logo vectoriel sélectionné afin de le rendre vivant et d’être en mesure de le manipuler</p>', 104),
(42, 'Modélisation 3d de l\'environnement', 2, '<p>Seconde étape du projet, la modélisation de l’environnement. J’ai du créer un environnement afin de créer un fond et une thématique au vidéo.</p>', 104),
(43, 'Prise de vue', 3, '<p>L’étape la plus difficile de toutes, la prise de vue. Lors de cette étape j’ai utilisé plus de 3 simulations de caméra afin de faire ma prise de vue (effet de rapprochement, transition etc…)</p>', 104),
(44, 'Animation et son', 4, '<p>C’est ici que se concrétise tout ce qui concerne les effets spéciaux pour la finition ainsi que l’ajout de la trame sonore et des synchronisations</p>', 104),
(45, 'Faire la direction visuelle', 1, '<p>Nous débutons par l\'inspiration, sur Pinterest, nous nous créons un moodboard, une tuile de style et nous enchaînons sur nos maquettes finales, à l\'aide de Figma.</p>', 98),
(46, 'Schématiser', 2, '<p>À l\'aide de nos maquettes auparavant faites dans le cours de design, nous allons dans le logiciel de notre choix (Figma, Photoshop, Illustrator, etc.) et nous schématisons celles-ci. On démontre quels sont les éléments/balises nécessaires pour faire l\'intégration en HTML/CSS de notre projet.</p>', 98),
(47, 'Intégrer', 3, '\"<p>Après les deux étapes précédentes réalisées, on peut passer à l\'intégration HTML en utilisant le logiciel de notre choix (Visual Studio Code, PhpStorm, etc.) Nous utilisons GitHub pour \"\"pusher\"\" les étapes de notre projet et pour nos enseignants (et nous-mêmes!) voyons l\'évolution de notre projet. </p>\"', 98),
(48, 'Finaliser', 4, '<p>Toujours en utilisant GitHub, nous finalisons le projet en appliquant les styles (CSS), à l\'aide du même logiciel, pour que les maquettes soient visuellement identiques au projet intégré.</p>', 98),
(49, 'Esquisses fonctionnelles', 1, '<p>Pour commencer, nous avons commencé par les esquisses fonctionnelles, réalisées sur Axure, chacun individuellement pour ensuite combiner chaque esquisse pour créer un produit final</p>', 20),
(50, 'Direction visuelle', 2, '<p>Par la suite, sur Figma, nous avons, de la même façon que les esquisses, travaillés chacun de son côté pour ensuite faire une mise en commun et faire les modifications nécessaires et avoir un résultat satisfaisant, pour ensuite nous mettre en marche vers l’intégration</p>', 20),
(51, 'Intégration et programmation', 3, '\"<p>La partie design étant terminé, les tâches attitrés, il est temps de commencer l’intégration et programmation du projet, avec l’aide de PHPStorm, en utilisant les langages <abbr title=\"\"Hypertext Markup Language\"\">HTML5</abbr>, <abbr title=\"\"Cascading Style Sheets\"\">CSS</abbr>, Javascript et <abbr title=\"\"Hypertext Preprocessor\"\">PHP</abbr>, mais aussi avec l’utilisation de <abbr title=\"\"Modèle-Vue-Contrôleur\"\">MVC</abbr>.</p>\"', 20),
(52, 'Tests utilisateurs', 4, '<p>Juste avant de faire la publication finale, il est l’heure de faire les test utilisateurs, les testeurs étant une autre équipe, ceux-ci analysent et nous informent des problèmes que notre site pourrait avoir. Nous regardons par la suite pour corriger les problèmes observés pour avoir le meilleur site possible. </p>', 20),
(53, 'Publication', 5, '<p>Les problèmes corrigés, il est temps d’envoyer le travail terminé sur Timunix et ce dire : <Mission accomplis> </p>', 20),
(54, 'Premier brouillon', 1, '<p>La première étape était de choisir le thème du jeu, choisir quelle serait l’histoire, qui serait le héro de notre jeu, les ennemis. Nous devions donc faire un premier brouillon pour démêler nos idées. Un synopsis, un moodboard, des planches de concept ont aidé à ordonner nos idées. </p>', 32),
(55, 'Animation', 2, '<p>La deuxième étape était la plus longue. Il était maintenant le temps d’animer les personnages. Animer le héro de l’histoire lorsqu’il court, saute, se penche ou attaque. Pareillement pour les ennemis, puisqu’il existe plusieurs rats différents contre qui le héros doit se défendre, chacun d’entre eux devait être animé. Finalement, il a fallu animer les différents éléments du jeu, le nuage pour un personnage qui meurt, l’attaque du héros, le paysage du niveau. Il s’agissait d’une longue étape puisqu’il fallait illustrer chaque image de chaque mouvement. </p>', 32),
(56, 'Ambiance sonore', 3, '<p>Par la suite, il a fallu trouver les sons pour différentes actions du jeu et la musique d’ambiance de chaque niveau afin de donner vie à notre jeu. </p>', 32),
(57, 'Programmation du jeu', 4, '<p>Finalement est venu le temps de commencer à programmer le tout et bâtir le produit final. Il a fallu ajouter des écouteurs d’évènement sur le clavier pour contrôler le héros du jeu, le faire sauter, attaquer ou se pencher. Il fallait aussi faire apparaître les ennemis et faire défiler le décor derrière. Nous avons aussi dû programmer le contact entre les ennemis et le héros pour pouvoir modifier le nombre de vies restantes et le pointage du joueur. </p>', 32),
(64, 'Game design', 1, '<p>Le Game design est le processus créatif et analytique visant à définir les éléments essentiels et les mécanismes d\'un jeu vidéo. Le Game design met l\'accent sur la manière dont les joueurs interagissent avec le jeu, les règles du jeu, l\'histoire, les personnages, les niveaux, les défis et les récompenses.</p>', 26),
(65, 'Création des svg (personnage, fond d’écran…)', 2, '<p>Lors de la création des SVG, nous utilisons des logiciels de conception vectorielle tels qu’Adobe Illustrator. Ce programme permet de concevoir des images en utilisant des vecteurs, offrant ainsi une flexibilité considérable pour redimensionner les images sans perte de qualité.</p>', 26),
(66, 'Animation des svg avec animates', 3, '<p>Le processus d\'animation des SVG avec Animate.js implique l\'utilisation de la syntaxe de la bibliothèque pour définir des mouvements, des changements de couleur, des rotations, et d\'autres transformations.</p>', 26),
(67, 'Programmation du jeu en typescript', 4, '<p>La programmation d\'un jeu en TypeScript consiste à utiliser le langage de programmation TypeScript pour créer, développer et mettre en œuvre la logique, la mécanique et les fonctionnalités d\'un jeu vidéo. TypeScript est une extension typée de JavaScript qui ajoute des fonctionnalités de typage statique au code JavaScript standard.</p>', 26),
(68, 'Game design', 1, '<p>La conception de jeux vidéo implique la création et l\'analyse des composantes fondamentales et des mécanismes clés d\'un jeu. Elle se concentre sur l\'interaction des joueurs avec le jeu, les règles, l\'intrigue, les personnages, les niveaux, les obstacles et les gratifications. C\'est un processus à la fois créatif et stratégique visant à offrir une expérience immersive et engageante aux joueurs.</p>', 45),
(69, 'Tuile de style', 2, '<p>Une tuile de style est une petite composante visuelle utilisée dans la conception graphique pour créer des mosaïques ou des grilles. Elle est généralement de forme carrée ou rectangulaire et peut contenir des éléments tels que du texte, des icônes, des images ou des couleurs de fond. Les tuiles de style sont souvent utilisées dans les interfaces utilisateur d\'applications et de sites Web pour organiser et présenter des informations de manière claire et esthétique. Elles contribuent à une expérience utilisateur cohérente et attrayante en alignant les éléments visuels selon un modèle préétabli.</p>', 45),
(70, 'Intégration et programmation', 3, '<p>L\'intégration et la programmation d\'un projet impliquent la création et l\'assemblage de différents composants logiciels pour construire une application fonctionnelle. Cela comprend l\'écriture de code informatique dans différents langages de programmation pour mettre en œuvre les fonctionnalités requises. L\'intégration consiste à assembler ces composants de manière cohérente, à assurer leur compatibilité et à les faire fonctionner ensemble de manière harmonieuse. La programmation consiste à écrire les instructions détaillées qui définissent le comportement de chaque composant et leur interaction. Ces processus visent à créer une solution logicielle efficace et à répondre aux besoins spécifiques du projet.</p>', 45),
(71, 'Jeu final', 4, '<p>Mon projet de jeu 2D pour mes études est une aventure palpitante où les joueurs incarnent un courageux explorateur traversant des environnements variés et colorés. Avec des graphismes vibrants et des animations fluides, le jeu offre une expérience visuellement captivante. Les joueurs doivent surmonter des obstacles, résoudre des énigmes et affronter des ennemis tout en explorant des mondes enchanteurs remplis de secrets à découvrir. Grâce à des contrôles intuitifs et une bande-son immersive, ce jeu offre une expérience de jeu engageante et divertissante pour les joueurs de tous niveaux.</p>', 45),
(72, 'L\'analyse', 1, '<p>La première étape de ce projet consiste à comprendre les besoins de l\'entreprise La Pastèque, ainsi que les objectifs spécifiques du projet, tels que l\'amélioration de l\'expérience utilisateur et l\'augmentation des ventes en ligne.</p>', 75),
(73, 'L’organisation', 2, '<p>Définir les rôles et les responsabilités, ainsi que les délais et les livrables attendus. Établir un plan de travail basé sur la méthodologie agile Scrum, en utilisant des outils comme Planner dans Office 365.</p>', 75),
(74, 'La conception visuelle', 3, '<p>Développer un concept visuel respectant les principes d\'inclusivité et de communication de La Pastèque. Créer des esquisses fonctionnelles et des maquettes pour les différentes sections du site, en utilisant des outils comme Axure et Figma.</p>', 75),
(75, 'Programmation de l’interface', 4, '<p>Développer les interfaces utilisateur en utilisant HTML5, CSS (avec Sass) et JavaScript pour assurer l\'utilisabilité, l\'accessibilité et la portabilité.</p>', 75),
(76, 'Programmation coté serveur', 5, '<p>Utiliser PHP en suivant le modèle Modèle-Vues-Contrôleurs (MVC) pour séparer la logique métier de la présentation. Mettre en œuvre des fonctionnalités telles que l\'ajout au panier, l\'authentification des utilisateurs et la gestion des transactions.</p>', 75),
(77, 'La publication', 6, '<p>Documenter le code et les processus pour assurer la lisibilité et la maintenance à long terme. Déployer le projet sur le serveur privé de l’école une fois que tous les tests ont été réussis.</p>', 75),
(78, 'Esquisses fonctionnelles', 1, '<p>Nous avons débuté ce projet en réalisant des esquisses fonctionnelles pour décider de la disposition des éléments dans nos pages. Les esquisses fonctionnelles nous permettent de mettre en place nos pages visuellement en ajoutant certains éléments interactifs. Cela nous donne l’occasion de simuler l’interaction qui sera présente sur le site, et ça nous permet d’effectuer des tests utilisateurs avant de commencer l’intégration. </p>', 1),
(79, 'Direction visuelle et tuile de style', 2, '<p>Une fois les esquisses réalisées, nous devons décider d’une direction visuelle. Nous avons à réfléchir à une palette de couleur, la typographie qu’on va utiliser, le style des éléments interactifs, etc… Nous regroupons tous ces éléments sur une tuile de style pour avoir une vue d’ensemble du style visuel qu’aura notre site. </p>', 1),
(80, 'Maquettes', 3, '<p>Maintenant que les esquisses fonctionnelles et la tuile de style sont réalisées, nous devons combiner les deux pour réaliser nos maquettes. Nous reprenons l’organisation des éléments que nous avons pensés sur les esquisses et on lui ajoute le style graphique que nous avons présenté sur la tuile de style. Les maquettes sont le guide visuel qui nous utilisons lors de l’intégration, il est donc important de bien représenter ce que l’on veut voir sur le site.</p>', 1),
(81, 'Intégration et mise en ligne', 4, '<p>Ce projet est réaliser avec WordPress, ce qui veut donc dire que nous ajoutons nos contenus (textes et photos) directement dans WordPress en créant des « articles ». Une fois nos articles créés, nous retournons dans notre éditeur de code où nous avons organisé un environnement de travail nous permettant d’accéder au contenu que nous avons placé dans WordPress. Nous ajoutons des styles en <abbr title=”Cascading Style Sheets”>CSS</abbr> et <abbr title=”Syntactically Awesome Style Sheet”>SASS</abbr> pour pouvoir donner le visuel que nous avons créé dans nos maquettes. </p>', 1),
(82, 'Analyse', 1, '\"<p>La phase initiale d\'un projet de conception consiste à effectuer une analyse. Dans ce contexte, nous disposons de l\'arborescence du site de la Sépaq, ce qui nous permet de mieux appréhender sa structure. Cette compréhension nous aide à créer nos pages de manière optimisée, en veillant à ce que notre contenu soit pertinent en fonction de la hiérarchie des pages. Plusieurs analyses permettent de mieux comprendre les besoins des utilisateurs afin de définir nos objectifs en matière de conception graphique. Pour ce faire, on peut notamment faire une entrevue utilisateur, une <span lang=\"\"en\"\">Journey map</span>, une carte d\'expérience ou encore une arborescence.</p>\"', 40),
(83, 'Esquisses fonctionnelles', 2, '<p>À cette étape, nous entamons le processus d\'imagination de notre site web. Cette démarche peut prendre plusieurs formes, généralement nous utilisons Axure ou Figma, mais il est tout à fait possible de réaliser nos premières esquisses sur papier. L\'objectif de cette étape est de concevoir l\'emplacement du contenu texte, des images, des liens et des boutons, formant ainsi le squelette de notre futur site web.</p>', 40),
(84, 'Direction visuelle et tuile de style', 3, '<p>Ensuite, une fois les esquisses fonctionnelles achevées, nous pouvons maintenant commencer à élaborer notre design. Les éléments importants à penser durant la création de notre tuile de style sont les couleurs, la typographie, la taille des textes (Titre, sous-titre, paragraphe, etc.) et notre direction visuelle des éléments interactifs. Nous appliquons également certains standards en matière d\'accessibilité telle que le contraste des couleurs, choix de la typographie et la taille d\'écriture.</p>', 40),
(85, 'Maquettes', 4, '<p>Enfin, nous arrivons à l\'étape finale de la conception graphique. Cette phase consiste à préparer le design définitif du site web avant de débuter l\'intégration et la programmation. Elle offre également l\'opportunité de présenter notre concept et d\'apporter quelques ajustements selon les demandes du client avant de passer à la prochaine étape.</p>', 40);

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'Clé primaire',
  `prenom_nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `courriel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `consentement` tinyint(1) NOT NULL,
  `sujet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contenu` text COLLATE utf8_unicode_ci,
  `dateheure_creation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `responsable_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `prenom_nom`, `courriel`, `telephone`, `consentement`, `sujet`, `contenu`, `dateheure_creation`, `responsable_id`) VALUES
(1, 'Camille Langevin', 'camillelange2012@hotmail.com', '418-444-5555', 1, 'Stages', 'Bonjour, \r\nJ\'aimerais connaître la durée du stage de fin d\'étude en entreprise ? \r\n\r\nJ\'airerais savoir aussi le nombre total de stages ?\r\n\r\nMerci et bonne journée !\r\n\r\nCamille =)', '2023-01-16 21:31:51', 3),
(2, 'Robert Dion', 'robert_dion123456haha@gmail.com', '(418) 444-5555 poste 2345', 0, 'Les stages 2023', 'Salut,\r\n\r\nEst-ce que les stages sont payés ?\r\n\r\nMerci,\r\n\r\nRobert', '2023-01-16 21:34:13', 3),
(3, 'Léa Miron', 'leamiron123456hoho@hotmail.com', '4184445555', 0, 'Étudiant d\'un jour', 'Bonjour Monsieur Frigon,\r\n\r\nJ\'aimerais savoir quant je peux participer à l\'activité étudiant d\'un jour ?\r\n\r\nAu plaisir,\r\n\r\nLéa', '2023-01-16 21:37:54', 4);

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

CREATE TABLE `projets` (
  `id` int(11) UNSIGNED NOT NULL,
  `titre` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `technologies` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diplome_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `cours_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `projets`
--

INSERT INTO `projets` (`id`, `titre`, `technologies`, `description`, `url`, `diplome_id`, `cours_id`) VALUES
(1, 'Agence Cybercore', 'WordPress, <abbr title=”Cascading Style Sheets”>CSS</abbr>, <abbr title=”Syntactically Awesome Style Sheet”>SASS</abbr>, <abbr title=”Hypertext Preprocessor”>PHP</abbr>, JavaScript', '<p>Le mandat pour ce projet était de réaliser un site web pour notre agence web fictive en utilisant le système de gestion de contenu (<abbr titre=”système de gestion de contenu”>SGC</abbr>) de WordPress. Le projet était réalisé en équipe de trois ou quatre et visait à nous initier à la création de sites utilisant WordPress et à la gestion de projet en équipe. </p>', '', 1, 17),
(2, 'Roadtrip', 'Figma, Photoshop', '<p>Le projet « Destination Roadtrip » avait pour but la réalisation de maquettes visuelles pour un site web de planification d’itinéraire de voyage. Les maquettes devaient être présentées sous trois formats: table, tablette et mobile. Nous devions effectuer la recherche visuelle, les esquisses, le traitement des médias nécessaire et, finalement, les maquettes visuelles réalisées dans Figma. </p>', '', 1, 7),
(3, 'Sépaq', 'Figma, Photoshop, Illustrator', '<p>Le site web de la Société des établissements de plein air du Québec (<abbr titre=”Société des établissements de plein air du Québec”>Sépaq</abbr>) était en besoin d’amélioration au niveau de l’expérience utilisateur, la présentation de chaque parc national ainsi que de la mise en valeur des parcs nationaux du Nunavik. Nous devions donc travailler sur la refonte du site web en réalisant analysant le site web actuel et en identifiant les problématiques présentes. Nous avions à réaliser la maquette de la page d’entrée du parc national Tursujuk au format table et mobile, ainsi que le visuel de l’infolettre envoyé par la <abbr titre=”Société des établissements de plein air du Québec”>Sépaq</abbr>. </p>', '', 1, 15),
(4, 'TOFU', '<abbr title=”Cascading Style Sheets”>CSS</abbr>, <abbr title=”Syntactically Awesome Style Sheet”>SASS</abbr>, <abbr title=”Hypertext Preprocessor”>PHP</abbr>, JavaScript, <abbr title=”Structured Query Language”>SQL</abbr>, Axure', '<p>TOFU est une application web ayant pour but la création et la gestion de liste et qui a été réalisé en priorisant le web mobile. En équipe de deux, nous avions à réaliser le visuel en utilisant Axure pour les esquisses, pour par la suite intégrer l’application. Notre système de gestion de liste devait pouvoir afficher toutes les listes présentes dans la base de données et elle devait pouvoir laisser l’utilisateur créer, supprimer et modifier chaque liste et/ou item d’une liste. </p>', '', 1, 13),
(7, 'Application en francisation', 'Axure, Figma', '<p>Ce projet vise à concevoir une application web destinée à faciliter l\'apprentissage et la pratique du français pour les étudiants des classes de francisation du Cégep de Sainte-Foy. L\'application a été pensée pour être utilisée par les animatrices et/ou les professeurs ainsi que par les étudiants. Notre équipe était composée de six personnes travaillant sur ce projet. Ma responsabilité dans ce projet était de concevoir une page contenant une banque d\'exercices pouvant être filtrés selon différents thèmes, ainsi que la consultation individuelle de chaque exercice. Deux versions de ces pages ont été développées : une pour les étudiants et une pour les animateurs/enseignants.</p>', '', 2, 20),
(8, 'Le jeu – Princesse indépendante', '\"Animate, Illustrator, Audition, <abbr title=\"\"Hypertext Markup Language\"\">HTML5</ abbr >,<abbr title=\"\"Cascading Style Sheets\"\">CSS</ abbr >, TypeScript\"', '<p>Princesse Indépendante est le titre d\'un jeu vidéo de type <span lang=\"\"en\"\">Shooter</span>, réalisé à partir de nos animations dans Adobe Animate et de programmation en TypeScript, suivant le modèle orienté objet. Plusieurs éléments graphiques ont été illustrés puis animés, notamment l\'avatar (le dragon), l\'antagoniste (le chevalier), les obstacles (tornades), un projectile(feu), les éléments du décor, le système de pointage, les points de vie ainsi que les écrans de début de partie. De plus, des effets sonores ainsi qu\'une bande-son ont été intégrés au jeu.</p>', '', 2, 17),
(9, 'Festival OFF', '\"Figma, Photoshop,<abbr title=\"\"Hypertext Markup Language\"\">HTML5</ abbr >,<abbr title=\"\"Syntactically Awesome Stylesheets\"\">SASS</ abbr >, <abbr title=\"\"Hypertext Preprocessor\"\">PHP</ abbr >, <abbr title=\"\"Structured Query Language\"\">SQL</ abbr >, JavaScript\"', '<p>Notre mission consistait à concevoir et à réaliser un site web pour le Festival OFF. Ce projet nous a permis de consolider nos nouvelles compétences en programmation <span lang=\"\"en\"\">backend</span> et d\'utiliser une base de données. Le site comprend une page d\'accueil, la programmation du festival, ainsi qu\'une page dédiée à chaque artiste à l\'affiche.</p>', '', 2, 13),
(10, 'Brûlerie TIM', 'Figma, Photoshop, Illustrator', '<p>Ce projet vise à concevoir un site web pour une brûlerie afin de mettre en valeur les produits proposés ainsi que le service de barista. Sa réalisation a été rendue possible grâce à une évaluation des patrons de conception, incluant notamment les tris, les filtres, les tableaux, la pagination, etc.</p>', '', 2, 11),
(13, 'Digital Dynamos – Agence Web', '\"Figma, Wordpress, <abbr title=\"\"Hypertext Preprocessor\"\">PHP</abbr>, <abbr title=\"\"Hypertext Markup Language\"\">HTML</abbr>, <abbr title=\"\"Cascading Style Sheets\"\">CSS</abbr>.\"', '<p>Figma, Wordpress, <abbr title=\"\"Hypertext Preprocessor\"\">PHP</abbr>, <abbr title=\"\"Hypertext Markup Language\"\">HTML</abbr>, <abbr title=\"\"Cascading Style Sheets\"\">CSS</abbr>.</p>', '', 3, 13),
(14, 'TimZine', 'Figma, CSS, HTML5', '<p>Dans le cadre du cours d’intégration II, il fallait créer un article pour un magazine en ligne appelé TimZine. Ce projet a permis de développer ma créativité en créant un design à l’aide de Figma. Cela m’a aussi appris à décliner en 3 formats mes interfaces pour adapter le produit à tous les types d’appareils. Finalement, le produit final a démontré l’acquisition des compétences suivante : utilisation de grille css et les connaissances des flexbox et la nomenclature BEM)</p>', '', 3, 7),
(15, 'Application francisation', '\"<abbr title=\"\"Cascading Style Sheets\"\">CSS</abbr>, <abbr title=\"\"Hypertext Markup Language\"\">HTML5 </abbr>  Figma. \"', '<p>Dans le cadre ce mandat, nous devions apprendre à concevoir les étapes de la conception UX d’un produit numérique de notre choix. Le projet numérique par mon équipe a été la conception d’une application de francisation (un hybride entre Duolingo et un portail de cours)  </p>', '', 3, 20),
(19, 'Brûlerie TIM', 'Figma, Photoshop, Illustrator', '<p>Ce projet était de concevoir un site web pour une brûlerie pour montrer en valeur les différents produits proposés, mais aussi le service de barista, La réalisation a été rendu possible par une évaluation des patrons de conception, parmi ceux-ci : tris, tableaux, pagination, etc.</p>', '', 4, 11),
(20, 'La Pastèque par Les Juteux', '\"<abbr title=\"\"Hypertext Markup Language\"\">HTML5</ abbr >, <abbr title=\"\"Cascading Style Sheets\"\">CSS</ abbr >/<abbr title=\"\"Syntactically Awesome Stylesheets\"\">SASS</ abbr >, <abbr title=\"\"Structured Query Language\"\">SQL</abbr>, Javascript, <abbr title=\"\"Hypertext Preprocessor\"\">PHP</abbr>, Figma, Miro, Axure, GitHub, <abbr title=\"\"Modèle Vue Contrôleur\"\">MVC</abbr>, Blade\"', '<p>La Pastèque par Les Juteux a été un projet collective dont le mandat était de refaire le site actuel de la Pastèque, dans le cadre du cours de Réalisation de Projet Numérique Interactif III. Toutes les étapes a nécessité la maîtrise de <abbr title=\"\"Hypertext Markup Language\"\">HTML5</abbr>, <abbr title=\"\"Cascading Style Sheets\"\">CSS</abbr>/<abbr title=\"\"Syntactically Awesome Stylesheets\"\">SASS</abbr>, <abbr title=\"\"Structured Query Language\"\">SQL</abbr>, Javascript, <abbr title=\"\"Hypertext Preprocessor\"\">PHP</abbr>, Figma, Axure, GitHub, et <abbr title=\"\"Modèle Vue Contrôleur\"\">MVC</abbr>.</p>', '', 4, 19),
(25, 'MJ2', '\"Avec FIGMA, Photoshop, <abbr title=\"\"Hypertext Preprocessor\"\">HTML</abbr>, <abbr title=\"\"Hypertext Preprocessor\"\">CSS</abbr>, <abbr title=\"\"Hypertext Preprocessor\"\">PHP</abbr>, <abbr title=\"\"Hypertext Preprocessor\"\">SQL</abbr>, JavaScript\"', '<p>Le projet consiste à créer une application de commerce électronique pour les Éditions La Pastèque, une maison d\'édition spécialisée dans la bande dessinée et les albums jeunesse. L\'objectif principal est d\'approfondir et d\'actualiser les connaissances théoriques, graphiques et techniques acquises dans le domaine du support Web. Cette initiative vise également à développer des compétences liées à la réalisation d\'un site de plus grande envergure tout en garantissant l\'accessibilité, l\'utilisabilité et la portabilité de l\'application. En somme, le projet offre une opportunité d\'appliquer des connaissances pratiques dans le cadre d\'un projet concret de commerce électronique pour une maison d\'édition renommée.</p>', '', 5, 19),
(26, 'Jeu', '\"Animate, Illustrator, Audition, <abbr title=\"\"Hypertext Markup Language\"\">HTML5</ abbr >,<abbr title=\"\"Cascading Style Sheets\"\">CSS</ abbr >, TypeScript\"', '<p>Le projet consiste à créer des animations dynamiques et efficaces pour un jeu vidéo de type Shooter. Ces animations seront intégrées avec Animate au format Canvas HTML 5 et utilisées dans le cadre des cours de Programmation Web et Multimédia III ainsi que de Réalisation de Produits Numériques Interactifs II. À partir du Game Design et du Moodboard préparatoire, l\'objectif est d\'élaborer des animations pour les deux éléments graphiques principaux du jeu : l\'Avatar, qui est contrôlé par le joueur, et l\'Antagoniste, qui représente l\'adversaire. Le processus implique la création d\'animations bien ajustées pour ces deux entités afin d\'optimiser l\'expérience de jeu, en veillant à ce qu\'elles soient à la fois ludiques et captivantes. En plus des animations liées au gameplay, un bandeau titre personnalisé de type GIF sera conçu et intégré à un site portail, ajoutant une dimension visuelle attractive au projet global. L\'ensemble du processus vise à harmoniser les animations pour offrir une expérience de jeu immersive et divertissante. </p>', '', 5, 17),
(31, 'Brûlerie TIM', 'Figma, Photoshop, Illustrator', '<p>Pour ce projet, nous étions présenté avec le défi de créer un design pour un site web pour une brûlerie fictive. Nous devions créer le logo de la brûlerie, créer les designs des sacs de cafés, choisir les couleurs de la brûlerie, en bref nous avions carte blanche pour créer l’image de cette compagnie imaginaire. </p>', '', 6, 11),
(32, 'Le jeu - Rat Contre-attaque', '\"Animate, Illustrator, Audition, <abbr title=\"\"Hypertext Markup Language\"\">HTML5</ abbr >,<abbr title=\"\"Cascading Style Sheets\"\">CSS</ abbr >, TypeScript\"', '<p>Rat Contre-Attaque est un jeu où l’utilisateur joue le rôle d’un chat qui doit frayer son chemin à travers les différentes attaques de rats ennemis. Certains rats doivent être attaqués pour libérer le passage, d’autres doivent être évités. Les personnages de ce jeu ont tous été animé image par image ce qui a pris un temps fou. </p>', '', 6, 18),
(37, 'Brûlerie TIM', 'Figma, Axure, Photoshop, Illustrator', '<p>Notre premier projet consistait à concevoir plusieurs maquettes de pages web pour une brûlerie de café, en mettant l\'accent sur une expérience client à la fois élégante et accessible. L\'ajout d\'images visant à rendre l\'expérience plus intéressante, nous avons privilégié les icônes et les éléments interactifs. En travaillant sur la direction artistique, nous avons eu la liberté de créer un design unique, en choisissant des palettes de couleurs apaisantes et sobres, en accord avec l\'ambiance recherchée. Cette approche visait à offrir aux visiteurs une expérience en ligne captivante, reflétant l\'atmosphère chaleureuse et accueillante de la brûlerie.</p>', '', 7, 11),
(38, 'La pastèque - Cactus', '\"<abbr title=\"\"Hypertext Markup Language\"\">HTML</abbr>, <abbr title=\"\"Cascading Style Sheets\"\">CSS</abbr>, Javascript, <abbr title=\"\"Hypertext Preprocessor\"\">PHP</abbr>, <abbr title=\"\"Structured Query Language\"\">SQL</abbr> , Figma, Axure, Photoshop, Github\"', '<p>Notre équipe a conçu un site web pour Les Édition de la Pastèque, permettant la vente de livres avec une esthétique visuelle entièrement personnalisée. Nous avons développé les différentes pages pour consulter les livres et les artistes, ainsi qu\'un panier et les étapes de paiement. Le site intègre une base de données PHPMyAdmin pour la transmission et la réception d\'informations. Nous utilisons BladeOne, ainsi que des contrôleurs et des modèles PHP pour garantir un fonctionnement optimal et une expérience utilisateur fluide. Ce projet a été réalisé en équipe avec <a href=\"\"# \"\">Éloise Matteau</a> et <a href=\"\"# \"\">Jean-Sébastien Ruest</a></p>', '', 7, 19),
(39, 'Coopsco: Caféteria', 'Figma, Axure, Photoshop', '<p>La COOPSCO du Cégep de Saint-Foy souhaite proposer un service de restauration en ligne pour sa cafétéria, permettant ainsi à la clientèle du cégep de commander facilement depuis n\'importe où. Les fonctionnalités incluent la commande pour emporter ou la livraison à l\'intérieur du cégep, ainsi que la consultation du menu complet sur la page web et le paiement en ligne. L\'objectif est d\'améliorer la commodité pour les étudiants et le personnel, tout en offrant une expérience de commande efficace.</p>', '', 7, 11),
(40, 'Sépaq', 'Figma, Axure', '<p>Notre projet visait à améliorer l\'interface du site SEPAQ en révisant le design, en optimisant les contenus et en intégrant des fonctionnalités utiles comme des cartes interactives. Nous avons ajouté les pages manquantes des parcs pour offrir une expérience complète sans redirection vers des sites externes. L\'objectif était d\'optimiser l\'expérience utilisateur et de rendre la découverte des parcs SEPAQ plus agréable et efficace.</p>', '', 7, 15),
(41, 'Coopsco: Vêtements personnalisés', 'Axure, Figma, Photoshop, Excel', '<p>Nous avons été chargés de revoir la page du service de vêtement personnalisé sur le site de COOPSCO Sainte-Foy pour faciliter l\'achat et la personnalisation en ligne. Après des entrevues et analyses approfondies pour connaître les besoins des utilisateurs, nous avons développé de nouveaux visuels et maquettes pour la revue avec le client. Nous avons également évalué les coûts du projet et soumis une première proposition. Cette expérience nous a permis d\'approfondir notre compréhension des diverses étapes d\'un projet de site web.</p>', '', 7, 20),
(42, 'DEB Production - Agence web', '\"Wordpress, <abbr title=\"\"Hypertext Markup Language\"\">HTML</abbr>, <abbr title=\"\"Cascading Style Sheets\"\">CSS</abbr>, <abbr title=\"\"Hypertext Preprocessor\"\">PHP</abbr>, Figma, Axure\"', '<p>Notre mission pour ce projet était de collaborer à la conception d\'un site web pour notre agence, spécialisée dans la création de sites web. Ce site devait mettre en valeur nos services, nos projets, notre équipe et nos coordonnées de contact. En travaillant en équipe, nous avons élaboré une plateforme qui reflète notre expertise et notre créativité, tout en offrant une expérience utilisateur fluide et engageante.</> <p>Nous avons conçu une identité visuelle pour notre site, fais l\'intégration en javascripts et css et ajouté les médias à l\'aide de Wordpress.</p>', '', 7, 17),
(43, 'La pastèque', '\"<abbr title=\"\"Cascading Style Sheets\"\">CSS</abbr>, <abbr title=\"\"Hypertext Markup Language\"\">HTML</abbr>,  <abbr title=\"\"Hypertext Preprocessor\"\">PHP</abbr>, <abbr title=\"\"Structured Query Language\"\">SQL</abbr>, JavaScript, Figma et Axure.\"', '<p>Dans ma quête constante d\'exploration créative, j\'ai récemment plongé dans le monde fascinant de la <abbr title=\"\"Hypertext Markup Language\"\">programmation</abbr>, enrichissant ainsi mes compétences en tandem avec ma passion innée pour le design graphique.</p><p>Ce projet captivant a été la refonte complète du site web d\'une librairie, une expérience où j\'ai pu fusionner harmonieusement l\'esthétique visuelle avec la puissance fonctionnelle. En tant que<strong>concepteur passionné de design</strong>, j\'ai entrepris de repenser chaque aspect visuel, tout en m\'assurant que l\'expérience utilisateur reste intuitive et immersive.</p><p>Les langages de programmation qui ont donné vie à ce projet sont aussi variés que les étagères d\'une bibliothèque bien garnie :</p><ul><li><abbr title=\"\"Hypertext Markup Language\"\">HTML</abbr> et <abbr title=\"\"Cascading Style Sheets\"\">CSS</abbr> ont été les fondations solides, définissant la structure et le style visuel du site.</li><li><abbr title=\"\"Hypertext Preprocessor\"\">PHP</abbr> a apporté la dynamique nécessaire, manipulant les données et permettant une interaction utilisateur fluide.</li><li><abbr title=\"\"Structured Query Language\"\">SQL</abbr> a été le gardien des connaissances, stockant et gérant efficacement la base de données des livres.</li><li>JavaScript a ajouté une touche d\'interactivité, offrant des fonctionnalités avancées et une expérience utilisateur plus immersive.</li><li>Les outils de conception tels que Figma et Axure ont été des compagnons précieux, permettant de visualiser et de prototyper chaque idée avant sa concrétisation.</li></ul><p>Cette exploration multidimensionnelle m\'a permis de fusionner mes compétences en design et en programmation, créant ainsi un site web qui est à la fois esthétiquement captivant et technologiquement robuste.</p>', '', 8, 19),
(44, 'Projet OFF', '\"<abbr title =\"\" Structured Query Language\"\">MySQL</abbr>, <abbr title =\"\"Hypertext Preprocessor\"\">PHP</abbr>, <abbr title =\"\"Hypertext Markup Language\"\">HTML</abbr>, <abbr title =\"\"Cascading Style Sheet\"\">CSS</abbr>, jQuery\"', '<p>Dans mon incessante quête d\'exploration créative, j\'ai récemment plongé dans l\'univers enivrant de la <abbr title=\"\"Hypertext Markup Language\"\">programmation</abbr>, élevant mes compétences au-delà du design graphique. Ce périple passionnant a été incarné dans la refonte complète du site web d\'un festival de musique, où le mariage harmonieux du design visuel et de la programmation a pris toute son ampleur.</p><p>En tant que <strong>concepteur passionné de design</strong>, j\'ai entrepris de repenser chaque élément visuel, capturant l\'essence vibrante du festival tout en assurant une expérience utilisateur aussi immersive que la musique elle-même.</p<p>Les langages de programmation qui ont orchestré ce projet reflètent la diversité sonore du festival :</p><ul><li><abbr title=\"\"Hypertext Markup Language\"\">HTML</abbr> et <abbr title=\"\"Cascading Style Sheet\"\">CSS</abbr> ont orchestré la symphonie visuelle, définissant la structure et le style captivants du site.</li><li><abbr title=\"\"Hypertext Preprocessor\"\">PHP</abbr> a dirigé l\'aspect dynamique, orchestrant la logique côté serveur et assurant une performance harmonieuse.</li><li><abbr title=\"\"Structured Query Language\"\">MySQL</abbr> a été le gardien de la base de données, stockant les informations cruciales sur les artistes, les horaires et les visiteurs,</li><li>jQuery a ajouté une cadence interactive, offrant des fonctionnalités avancées et une expérience utilisateur rythmée.</li></ul><p>De plus, l\'utilisation judicieuse d\'outils de conception tels que Figma et Axure a permis de visualiser chaque note, chaque détail avant même que le premier code ne soit écrit, assurant ainsi une harmonie parfaite entre vision artistique et réalisation technique.</p><p>Cette expérience multidimensionnelle m\'a permis de fusionner ma passion pour le design avec une compréhension approfondie de la programmation, donnant naissance à un site web qui amplifie l\'énergie du festival et offre une expérience numérique aussi mémorable que la musique live.</p>', '', 8, 17),
(49, 'Refonte du site web Sépaq', 'Figma', '<p>Le projet consistait à participer à la refonte du site web de la Société des établissements de plein air du Québec (Sépaq) en vue d\'optimiser l\'expérience utilisateur. Nous avons dû résoudre diverses problématiques, telles que la révision de la présentation de chaque parc national et  l\'amélioration de la mise en valeur des parcs nationaux du Nunavik.</p>', '', 9, 15),
(50, 'Coopsco', 'Figma, Axure', '<p>La cafétéria est une application web conçue dans le but de fournir aux clients du cégep de Ste-Foy des informations sur les repas et menus disponibles à la cafétéria, tout en leur offrant la possibilité de passer des commandes en ligne. </p>', '', 9, 11),
(51, 'Alaïa', 'Figma, Photoshop, Illustrator', '<p>Le but de site est d\'éclairer les futurs passionnés de surf sur les multiples options qui s\'offrent à eux avant de s\'adonner à ce sport, telles que les différentes catégories de planches de surf, par exemple. </p>', '', 9, 7),
(52, 'Plan de communication - Promotion de la Technique d’Intégration Multimédia', 'Figma, Axure', '<p>Le projet consistait à créer une campagne de communication promouvant la technique d\'intégration multimédia, en mettant l\'accent sur le projet innovant d\'apprentissage en milieu de travail. En effet, nous avons fait la conception des pages informatives pour les nouveaux étudiants, les étudiants actuels et les mentors, réalisé le prototype des pages d\'inscription et de connexion au site <abbr title=\"\"Apprentissage en Milieu de Travail\"\">AMT</abbr>, simplifiant ainsi le processus. Nous avons également créé des maquettes pour donner une nouvelle identité visuelle au site afin de renforcer l\'attrait du programme.</p>', '', 9, 15),
(55, 'Alter Ego', 'Adobe Premiere Pro, After Effects, Audition', '<p>Le projet \"\"Alter Ego\"\" réalisé dans le cadre du cours de Montage Médiatique : Vidéo a été une exploration créative captivante. Utilisant des logiciels tels qu\'Adobe Premiere Pro, After Effects et Audition, j\'ai plongé dans l\'univers du montage vidéo pour donner vie à une vision unique. Ce projet m\'a permis d\'affiner mes compétences en montage, d\'explorer des effets spéciaux et de perfectionner l\'art de la narration visuelle.</p>', '', 10, 12),
(56, 'TimZine', '\"<abbr title=\"\"Hypertext Markup Language\"\">HTML5</ abbr >, <abbr title=\"\"Cascading Style Sheets\"\">CSS</ abbr >, Figma\"', '<p>Le projet TimZine du cours d\'Intégration II a été une étape clé de mon parcours d\'apprentissage. En façonnant un article pour ce magazine en ligne, j\'ai exploré la créativité et la conception sous l\'angle de l\'adaptabilité aux différents appareils. En utilisant <abbr title=\"\"\"\"Hypertext Markup Language\"\"\"\">HTML5</abbr>, <abbr title=\"\"\"\"Cascading Style Sheets\"\"\"\">CSS</abbr>, et Figma. C\'était une opportunité d\'apprendre et d\'affiner mes compétences, créant ainsi une base solide pour mon développement professionnel.</p>', '', 10, 7),
(57, 'La Pastèque par Loumilexis', 'tim', '<p>La Pastèque par Loumilexi a été une aventure collective dans le monde complexe de la création web, orchestrée au sein de l\'équipe du cours de Réalisation de produits numériques intéractifs III. Chaque étape, de la conception à la mise en œuvre, a nécessité la maîtrise de <abbr title=\"\"Hypertext Markup Language\"\">HTML5</abbr>, <abbr title=\"\"Cascading Style Sheets\"\">CSS</abbr>/<abbr title=\"\"Syntactically Awesome Stylesheets\"\">SASS</abbr>, <abbr title=\"\"Structured Query Language\"\">SQL</abbr>, Javascript, <abbr title=\"\"Hypertext Preprocessor\"\">PHP</abbr>, Figma, Axure, GitHub, et <abbr title=\"\"Modèle Vue Contrôleur\"\">MVC</abbr>. En travaillant de concert, nous avons transformé chaque décision de conception en une leçon collective, faisant de ce projet une véritable école d\'apprentissage collaboratif.</p>', 'https://timunix3.cegep-ste-foy.qc.ca/~loumilexis/public/index.php?controleur=site&action=accueil', 10, 19),
(58, 'Le Jeu – La Quête de la flamme ', '\"<abbr title=\"\"Hypertext Markup Language\"\">HTML5</ abbr >, JAVASCRIPT/TYPESCRIPT, ADOBE (Animate, Illustrator, Audition), <abbr title=\"\"Cascading Style Sheets\"\">CSS</ abbr >/<abbr title=\"\"Syntactically Awesome Stylesheets\"\">SASS</ abbr >\"', '<p>La création du jeu vidéo «La Quête de la flamme» dans le cadre du cours de Montage Médiatique : Plurimédia a été une aventure passionnante d\'apprentissage. Utilisant plusieurs technologiques variées, chaque ligne de code et élément graphique ont été des pièces essentielles de ma croissance professionnelle. Ce projet a été bien plus qu\'un simple jeu, il a été une leçon précieuse sur la création d\'expériences interactives engageantes.</p>', '', 10, 16),
(61, 'Destination Roadtrip', 'Figma', '<p>Destination Roadtrip consistait à concevoir une page dans un site faisant la promotion des voyages à l’intérieur du Canada. La page conçue avait pour clientèle cible les personnes souhaitant faire un voyage dans l’ouest canadien.</p>', '', 11, 7),
(62, 'Visionneuse Star Wars', '\"Javascript, <abbr title=\"\"Application Programming Interface\"\">API</abbr>, <abbr title=\"\"Asynchronous Javascript And XML\"\">AJAX</abbr>\"', '<p>La visionneuse Star Wars permet de visionner les différentes planètes qui apparaissent dans certains films de la célèbre saga. Cette visionneuse a été créée en utilisant l’insertion des données grâce à une API.</p>', '', 11, 21),
(63, 'Sepaq – Parc Tursujuq', 'Figma', '<p>Le parc national Tursujuq situé au Nunavik est un des parcs de la Sépaq. En plus de conception d’une infolettre, la page web du parc Tursujuq a été repensée pour correspondre à la chartre graphique de la Sépaq.</p>', '', 11, 15),
(64, 'Coopsco', 'Figma, Axure', '<p>En plus de la vente de matériel scolaire, la Coopsco de Sainte-Foy a également la charge de la vente de repas au cégep. De ce fait, nous nous sommes avons conçu une application web permettant aux utilisateurs de la cafétéria du cégep de Sainte-Foy de pouvoir faire leur commande en ligne.</p>', '', 11, 11),
(67, 'Projet OFF par Unknown', '\"Figma, Adobe Photoshop, Adobe Illustrator<abbr title=\"\"Hypertext Markup Language\"\">HTML5</abbr>, <abbr title=\"\"Cascading Style Sheets\"\">CSS</abbr>, <abbr title=\"\"Hypertext Preprocessor\"\">PHP</abbr>, <abbr title=\"\"Structured Query Language\"\">SQL</abbr>, JavaScript\"', '<p>Le projet OFF consistait à réaliser le site du Festival OFF de A à Z en équipe de trois. C’est d’ailleurs le premier projet mettant en place le langage de programmation <abbr title=\"\"Hypertext Preprocessor\"\">PHP</abbr>.</p>', '', 12, 13),
(68, 'La Pastèque par Cactus', '\"<abbr title=\"\"Hypertext Markup Language\"\">HTML5</abbr>, <abbr title=\"\"Cascading Style Sheets\"\">CSS</abbr>, <abbr title=\"\"Hypertext Preprocessor\"\">PHP</abbr>, <abbr title=\"\"Structured Query Language\"\">SQL</abbr>, <abbr title=\"\"Modèle Vue Contrôleur\"\">MVC</abbr>, Javascript, GitHub, Adobe Photoshop, Axure, Figma\"', '<p>Ce projet avait pour but de réaliser un site de commerce en ligne pour la maison d’édition La Pastèque. Ce dernier nous a permis de mettre en pratique toutes nos connaissances dans un seul projet. Celui-ci a été réalisé en équipe de trois, avec <a href=\"\"# \"\">Daren Garneau-Dionne</a> et <a href=\"\"# \"\">Jean-Sébastien Ruest</a></p>', '', 12, 19),
(69, 'Application de Francisation', 'Figma, Axure, Miro', '<p>Dans le cadre du projet de Francisation, nous avions pour but de concevoir une application mobile intuitive et interactive adaptée aux besoins des étudiants dans un contexte de francisation en offrant une expérience d\'apprentissage du français engageante et ludique. Cette application contient divers modules interactifs, des exercices de grammaire, de vocabulaire, des dialogues, des quiz et des fonctionnalités de suivi de progression. De plus, il est également possible pour l’enseignant(e) de faire ces propres exercices et de voir l’avancement de chaque étudiant. À noter que ce projet ne prenait pas en charge le côté développement et seulement l’analyse et la conception.</p>', '', 12, 20),
(73, 'La brûlerie TIM', 'Fima, photoshop, illustrator', '<p>Le projet de conception interactive \"\"Brûlerie<abbr title=\"\"Technique Intégration Multimédia\"\">TIM</abbr>\"\" vise à appliquer les critères d\'ergonomie dans la création d\'une interface web pour une brûlerie. Les objectifs incluent l\'utilisation de patrons de conception, l\'adaptation au Responsive Web Design, et la satisfaction de la clientèle cible. Les étapes comprennent une analyse concurrentielle, une tuile de style détaillant les caractéristiques graphiques, une maquette préliminaire explorant divers concepts visuels, et enfin, trois maquettes finales pour des résolutions d\'écrans différentes. Les interfaces ciblées incluent la page d\'accueil, la page des événements, et la page présentant les cafés. L\'évaluation porte sur la qualité visuelle, l\'interactivité, la cohérence de la navigation, le respect des critères d\'ergonomie, et la recherche de solutions efficaces.</p>', '', 13, 11),
(74, 'Destination Roadtrip', 'Figma', '<p>Le projet de conception interactive \"\"Destinations Roadtrip\"\" vise à créer une interface web pour planifier des itinéraires de voyage en voiture, avec un accent sur la région de l\'Ouest canadien. Les étudiants du département Techniques d\'intégration multimédia au Cégep de Sainte-Foy doivent respecter un brief créatif, explorer une direction visuelle via Pinterest, réaliser des esquisses papier, et concevoir une interface adaptable aux formats table, tablette, et mobile. Le calendrier du projet inclut des leçons sur l\'autolayout, la typographie, la hiérarchie, et des laboratoires pratiques. Ce projet final évalue la recherche visuelle, la direction visuelle, la conception de l\'interface, le traitement des textes et médias, la méthodologie de travail, l\'argumentaire écrit, et la présentation orale. Un projet visant à développer des compétences en conception web responsive, créativité visuelle, et communication interactive.</p>', '', 13, 7),
(75, 'La pastèque - Loumilexi', 'Figma, PHP, html, css, js', '<p>Le projet consiste à développer une application de commerce électronique pour les Éditions La Pastèque, spécialisées en bandes dessinées et albums jeunesse. Il vise à approfondir les compétences en conception interactive, gestion de projet agile et programmation Web, tout en assurant l\'accessibilité, l\'utilisabilité et la portabilité. Les équipes de trois personnes utiliseront des outils comme Adobe CC et PHPStorm pour concevoir des interfaces respectant les normes HTML5, WCAG 2.1 et ARIA. Un accent est mis sur l\'amélioration progressive, la performance web et l\'engagement de l\'utilisateur, avec des livrables réguliers et une planification rigoureuse jusqu\'à la remise finale.</p>', '', 13, 18),
(79, 'Cineviz', '\"<abbr title=\"\"Hypertext Markup Language\"\">HTML</abbr>, <abbr title=\"\"Cascading Style Sheets\"\">CSS</abbr>, Javascript, <abbr title=\"\"Hypertext Preprocessor\"\">PHP</abbr>, jQuery, Chart.js\"', '<p> Cineviz est un site web qui présente la fréquentation des salles de cinéma en France de 1943 à 2022 ainsi que l’âge du public et les premières salles de cinéma. Cette expérience m\'a permis d\'acquérir des compétences avancées en gestion des données et programmation, marquant une étape dont je suis fière dans mon parcours. </p>', 'https://cecilepn.github.io/cineviz/#1', 14, 14),
(80, 'Campagne Institutionnelle Paris Ve', 'Figma', '<p> J\'ai dirigé une campagne de communication institutionnelle pour promouvoir l\'attractivité économique et touristique d\'une municipalité en France via un événement culturel. Le projet inclut la création d\'une identité visuelle, des maquettes réactives pour le site officiel, des bannières web et une affiche abribus. J\'ai spécifiquement conçu deux des trois bannières web, mettant en avant le 5e arrondissement de Paris et le Jardin des Plantes.</p>', 'https://cecilepn.fr/img/parisV.pdf', 14, 23),
(85, 'Horizon', '\"<abbr title=\"\"Hypertext Markup Language\"\">HTML</abbr>, <abbr title=\"\"Cascading Style Sheets\"\">CSS</abbr>, Javascript, <abbr title=\"\"Hypertext Preprocessor\"\">PHP</abbr>, Jquery\"', '<p>Horizon est un site web qui permet de réserver des salles de jeux pour des événements spéciaux. Il vous suffit de réserver la salle qui vous convient le mieux et nous nous occupons du reste. Le jour J, vous n\'avez plus qu\'à vous asseoir et à jouer ! Un service de restauration nocturne est également disponible.</p>', 'https://www.resaweb.dphan-nguyen.butmmi.o2switch.site/index.html', 15, 20),
(86, 'Enerviz', '\"<abbr title=\"\"Hypertext Markup Language\"\">HTML</abbr>, <abbr title=\"\"Cascading Style Sheets\"\">CSS</abbr>, Javascript, <abbr title=\"\"Hypertext Preprocessor\"\">PHP</abbr>, Jquery\"', '<p>Enerviz est un site web qui présente la consommation et la production d\'énergie en France. Les données sont présentées à l\'aide d\'une carte interactive en 3D qui permet de filtrer les données en fonction du type d\'énergie et de la région souhaitée.</p>', 'https://danphannguyen.github.io/EnerViz/', 15, 20),
(91, 'Le Jeu – Jetpack Labo', '\"Animate, Illustrator, Audition, <abbr title=\"\"Hypertext Markup Language\"\">HTML5</abbr>, <abbr title=\"\"Cascading Style Sheets\"\">CSS</abbr>, TypeScript\"', '<p>Jetpack Labo est un jeu vidéo de type <span lang=\"\"en\"\">Shooter</span>, concocté à partir de nos animations dans Adobe Animate et de programmation en TypeScript, suivant le modèle orienté objet. Divers éléments graphiques ont été imaginés puis animés, incluant l\'avatar, l\'antagoniste, les obstacles, le projectile, les éléments du décor, le système de pointage, les points de vie ainsi que les écrans de début de partie. Par ailleurs, des effets sonores captivants ainsi qu\'une bande-son envoutante ont été soigneusement intégrés au jeu.</p>', '', 16, 17),
(92, 'La Pastèque - LAC', '\"<abbr title=\"\"Hypertext Markup Language\"\">HTML5</abbr>, <abbr title=\"\"Cascading Style Sheets\"\">CSS</abbr>, <abbr title=\"\"Hypertext Preprocessor\"\">PHP</abbr>, <abbr title=\"\"Structured Query Language\"\">SQL</abbr>, <abbr title=\"\"Modèle-Vue-Contrôleur\"\">MVC</abbr>, Javascript, GitHub, Adobe Photoshop, Axure, Figma\"', '<p>Ce projet visait à concrétiser un site web marchand pour la maison d’édition La Pastèque. Il mettait à l\'épreuve la majorité de nos connaissances acquises pendant notre technique. Nous étions trois à travailler sur ce projet, à savoir Andréanne Archambault, Chalarak Bergeron et moi-même.</p>', '', 16, 19),
(97, 'Grand débarras', 'Figma, photographie, Photoshop, Illustrator', '<p>Ce projet consistait à réaliser des photos à partir d’éléments que nous avions à la maison sur un fond (carton blanc) et de faire des interfaces sur Figma qui mettaient les produits sélectionnés en valeur/vendeurs à l’aide des couleurs, de la bannière (faite par l’élève), etc.</p>', '', 17, 2),
(98, 'Timzine', 'Visual Studio Code (HTML/CSS), Figma, Illustrator', '<p>Le projet consistait à prendre un article déjà existant sur le web (avec les références bien sûr) et de créer un style, à l’aide de Figma, pour celui-ci. Après avoir terminé les maquettes, on intégrait le projet dans notre cours d’intégration et on le rendait réellement fonctionnel.</p>', 'https://timunix2.cegep-ste-foy.qc.ca/~rroy/integration2/timzine/index.html ', 17, 9),
(103, 'Pagaie Quebec', '\"<abbr title=\"\"JavaScript>JS</abbr>, <abbr title=\"\"Hypertext markup language\"\">HTML</abbr>, <abbr title=\"\"Cascade style sheet\"\">CSS</abbr>,\"', '<p>Réalisation d’une page web pour le site de Pagaie Québec</p>', '', 18, 15),
(104, 'Mirage Esports - Animation Logo', 'Adobe After Effect, Audition', '<p>Ce projet visait à animer en un cours vidéo un logo quelconque. Lors de la confection de celui-ci, j\'ai décidé d\'aller plus loin que ce qui était demandé et ai appris par moi-même la modélisation 3d d\'un logo ainsi qu\'un environnement et aussi, la capture multi-vues avec des caméras simulées</p>', 'https://vimeo.com/527603395', 18, 16),
(109, 'Le Baroud D\'Honneur', 'Typescript, Adobe Animate, Adobe Illustrator, ', '<p>Dans un monde ravagé par l’apocalypse zombie, un héros solitaire se dresse contre les hordes de morts-vivants. Armé d’un pistolet, il affronte les créatures décharnées dans les rues désolées. Chaque coup de feu compte, chaque vague de zombies est un test d’endurance. Le destin de l’humanité repose sur ses épaules. Ce jeu est créé en TypeScript, avec les animations venant d\'Adobe Illustrator et Photoshop pour les visuels.</p>', 'https://timunix2.cegep-ste-foy.qc.ca/~jsavard/baroudHonneur/ ', 19, 17),
(110, 'Mon agence - Timoineau', 'HTML, CSS, JavaScrip, Figma', '<p>Ce projet consistait à réaliser la page d\'accueil, la page d\'équipe et la réalisation de différents projets d\'une agence web fictive. Moi et mon équipe avons décidés d\'y aller avec un désign moderne qui met en valeur la créativité et la fonctionnalité.</p>', 'https://timunix2.csfoy.ca/~timoineau', 19, 13),
(115, 'Le moustique', 'Typescript, adobe animate, adobe illustrator, ', '<p>\"\"Le Moustique\"\" est mon projet phare en Réalisation de produits numériques interactifs. Ce jeu 2D, conçu avec passion en TypeScript, bénéficie de l\'ingéniosité d\'Adobe Animate et d\'Adobe Illustrator. Cette aventure platformer reflète ma fusion entre programmation précise et créativité animée, incarnant ainsi ma passion pour l\'univers du développement interactif.</p>', 'https://timunix2.csfoy.ca/~levromet/Le_Moustique/animate.html', 20, 17),
(116, 'Mon agence', 'Wordpress, html 5, css', '<p>\"\"Mon Agence\"\" incarne mon talent en création web. Imaginée dans le cadre de mes études, cette agence fictive de sites web s\'anime grâce à WordPress, HTML et CSS. Chaque ligne de code traduit ma passion pour la conception digitale, fusionnant l\'esthétique avec la fonctionnalité.</p>', 'https://timunix2.csfoy.ca/~timoineau', 20, 13),
(117, 'Vidéo promo TIM', 'Adobe premiere pro', '<p>\"\"Vidéopromo T.I.M.\"\" représente ma créativité débridée au service de la promotion du programme de la technique d\'intégration multimédia. Réalisée avec l\'inspiration de mon imagination et la puissance de Premiere Pro, cette vidéo incarne la fusion de la technique et de la vision artistique, capturant l\'essence dynamique de notre programme.</p>', 'https://youtu.be/ce6Xlp5rQGY', 20, 12);

-- --------------------------------------------------------

--
-- Structure de la table `responsables`
--

CREATE TABLE `responsables` (
  `id` int(11) UNSIGNED NOT NULL,
  `responsabilite` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `courriel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Coordination, webmestre...';

--
-- Déchargement des données de la table `responsables`
--

INSERT INTO `responsables` (`id`, `responsabilite`, `courriel`, `prenom`, `nom`, `telephone`) VALUES
(1, 'Coordonnateur départemental', 'techmultimedia@csfoy.ca', 'Sylvain', 'Lamoureux', '(418) 659-6600 poste 6662'),
(2, 'Webmestre', 'eve.fevrier@csfoy.ca', 'Ève', 'Fevrier', '(418) 659-6600 poste 6655'),
(3, 'Responsable des stages', 'stages-tim@csfoy.ca', 'Pascal', 'Larose', '(418) 659-6600 poste 6653'),
(4, 'Responsable \"Étudiant d\'un jour\"', 'benoit.frigon@csfoy.ca', 'Benoît', 'Frigon', '(418) 659-6600 poste 6656');

-- --------------------------------------------------------

--
-- Structure de la table `temoignages`
--

CREATE TABLE `temoignages` (
  `id` int(11) UNSIGNED NOT NULL,
  `temoin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `titre_poste` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `entreprise` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `url_entreprise` text COLLATE utf8_unicode_ci NOT NULL,
  `temoignage` text COLLATE utf8_unicode_ci NOT NULL,
  `annee_diplomation` varchar(4) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Témoignages-Professions des diplômés du programme';

--
-- Déchargement des données de la table `temoignages`
--

INSERT INTO `temoignages` (`id`, `temoin`, `titre_poste`, `entreprise`, `url_entreprise`, `temoignage`, `annee_diplomation`) VALUES
(22, 'Francis Chartrand', 'Développeur Web', 'Wazo Inc', 'https://wazo.io/', 'Lorsque j\'étais au secondaire, j\'ai découvert un intérêt pour la conception de sites Web, la vidéo et Photoshop. La décision d’aller en TIM avait été facile, car la technique me permettait d\'en apprendre davantage sur ce qui me passionnait et plus encore. Ce que je préfère le plus de mon métier est de travailler sur différents aspects d\'un projet, entre autres: l\'analyse, le design et la programmation. C\'est un domaine stimulant et il y a toujours de nouvelles connaissances à acquérir.', '2012'),
(23, 'Léo Renaud-Allaire', 'Co-fondateur / Développeur Web', 'Hookt Studios et Didacte', 'www.hooktstudios.com', 'J’ai toujours eu une intérêt pour les technologies, plus particulièrement pour le Web et les interfaces. La TIM était une suite tout à fait logique à mes études secondaires au programme PROTIC. Je n\'ai jamais regretté mon choix! En tant que développeur Web, la vitesse d\'évolution des technologies dans le domaine nous pousse à nous renouveler constamment, ce qui est très motivant. Le Web étant un outil utile dans toutes sortes de contextes, la diversité des projets sur lesquels on peut intervenir est pratiquement infinie et les défis toujours différents.', '2009'),
(24, 'Martin Audesse', 'Programmeur Web', 'Pigiste', 'https://www.linkedin.com/in/martin-audesse-2938a61a/', 'Les Techniques d\'intégration multimédia couvre une large partie du monde numérique et puisque je n\'étais pas certain dans quel domaine je voulais me spécialiser, c\'était un choix gagnant! À titre de développeur, j’adore le fait de construire des projets en équipe. J’aime créer l’image complète d’une entreprise qui est ensuite visible partout et disponible sur toutes les plateformes.', '2012'),
(25, 'Rémi Prévost', 'Partenaire- Directeur Technologies', 'Mirego', 'www.mirego.com/fr', 'J’hésitais à me diriger vers une formation spécialisée en graphisme ou en informatique — Techniques d\'intégration multimédia était le mélange parfait entre les deux! Maintenant, j’adore avoir l’opportunité de bâtir des projets qui peuvent faire une différence, aussi mineure soit-elle, dans la vie des gens.', '2007'),
(26, 'Richard Vacchino-Marceau', 'Directeur services Web et TI', 'Triomphe marketing 360', 'www.triomphe.ca', 'L’informatique a toujours été pour moi une passion alors il était logique d\'aller vers un domaine qui me permettait d\'exploiter à fond toutes mes passions. Graphisme, programmation, gestion de serveur, soutien technique, analyse, évaluation, intégration, gestion de projets, etc. Voilà ce qui définit tout ce qui m\'a attiré vers ce domaine. J\'aime le fait d’être en mesure de toucher à tous les aspects d\'un projet. Je m\'occupe de l\'analyse des besoins des clients, j\'élabore une prévision budgétaire selon les requêtes, je gère la mise en production et les échéanciers puis finalement je m\'occupe de toutes les étapes de la livraison du produit final. Voilà ce que j\'appelle la liberté.', '2010'),
(27, 'Mélina Déry', 'Chargée de projet Web ', 'Léonard', 'https://leonardagenceweb.com/equipe/', 'Ayant le profil multimédia au secondaire, je désirais poursuivre dans cette branche au niveau collégial. Ce domaine m’intéressait alors je souhaitais le découvrir davantage et l’approfondir pour en faire ma profession. Maintenant, ce que je préfère le plus dans la pratique de mon métier est le fait de ne pas avoir de routine établie! Chaque journée est différente et m’apporte de nouveaux défis.', '2011'),
(28, 'Alexandre Beaulieu', 'Président - directeur général', 'HériTech', 'https://heritech.dev/', 'La Techniques d’intégration multimédia est vraiment complète et permet d\'ouvrir de nombreuses portes vers le marché du travail. Elle permet de toucher à beaucoup de choses, ce qui rend les étudiants beaucoup plus versatiles. En tant que programmeur Web, j\'adore découvrir de nouvelles technologies. D\'ailleurs, dans ce métier, comme tout change rapidement, ça me permet de garder mon cerveau éveillé et d\'être en constante évolution.', '2012'),
(29, 'Hugo Landry-Hamel', 'Directeur marketing de personnalisation (CMO)', 'Enrich³', 'https://enrich3.com', 'Je me suis dirigé vers la Techniques d\'intégration multimédia pour toucher au Web plutôt qu\'à la programmation \"logiciel\" enseignée en Technique de l’informatique et pour apprendre dans un environnement qui stimule la créativité. Le fait de pouvoir être polyvalent et ainsi pouvoir choisir dans quelle branche je souhaite approfondir mes connaissances et me perfectionner sont ce que je préfère le plus dans la pratique de mon métier.', '2014'),
(30, 'Marie-Claude Lizotte', 'Conseillère en communication numérique', 'Ville de Québec', 'www.ville.quebec.qc.ca', 'Étant déjà diplômée dans un domaine similaire, je désirais approfondir mes connaissances en développement Web. Puisque j’étais ambivalente entre l’informatique et le graphisme, la Techniques d’intégration multimédia (TIM) rejoignait les côtés cartésien et artistique de ma personnalité. Cette technique est devenue pour moi une voie incontournable et m’a fait découvrir toutes les facettes du domaine en me permettant d’être extrêmement polyvalente et bien outillée. La routine n’existe pas dans ma profession, chaque jour est différent et empreint de défis stimulants. En collaboration avec plusieurs partenaires multidisciplinaires, j’ai la chance de contribuer à l’orientation, à l’analyse et à la réalisation de projets de petite et de grande envergure. Je sais que mon travail peut être un agent facilitant dans le quotidien des gens, c’est ma source de motivation. Mon équipe de travail réalise approximativement 300 demandes par mois et j’ai la chance de pouvoir compter sur trois intégrateurs de la TIM. Ils font la différence!', '2007'),
(31, 'Maxime G. Potvin', 'Designer UX mobile', 'Groupe Desjardins  Assurance générale', 'https://www.desjardinsassurancesgenerales.com', 'Passionné de design et de programmation, la Techniques d’intégration multimédia était le programme parfait pour m’épanouir. Aujourd’hui, ce que je préfère le plus de mon métier est le dynamisme et l\'évolution rapide des technologies et des tendances!', '2014'),
(33, 'Karl Lacroix', 'Directeur technologies de l\'information', 'Centraide Québec et Chaudière-Appalaches', 'https://www.centraide-quebec.com/', 'J’ai choisi les TIM parce que le design Web m\'intéressait déjà depuis quelques années; je réalisais des sites Web (pas nécessairement les plus beaux!) avec les connaissances acquises au fur et à mesure. Je voulais donc connaître les meilleures techniques et façons de faire pour réaliser de meilleurs sites Web. Ce que j’aime maintenant le plus est le renouveau constant nécessaire parce que la technologie ne cesse d\'évoluer. Pour être à l\'avant, il faut donc se renouveler constamment! De plus, j’ai le plaisir de travail en équipe avec un nombre impressionnant de personnes ayant des spécialisations variées pour la réalisation d\'un même site Web (du designer au rédacteur, du développeur au designer UX, etc.).', '2010'),
(34, 'Dinh-Tam Trinh', 'Programmeur Web', 'Cégep de Sainte-Foy', 'www.cegep-ste-foy.qc.ca', 'Ce qui m\'a tout d\'abord intéressé dans le multimédia est le nombre varié de disciplines. La spécialisation est très bien, mais avoir une connaissance globale de tous les aspects d\'un métier est très utile! Ce que j\'aime le plus est le développement d’une nouvelle application Web « from scratch » : un parfait mélange entre le design utilitaire et de code.\r\n', '2013'),
(35, 'Marie-Ève Tremblay', 'Webmestre', 'Sécurité publique du Québec (MSP)', 'https://www.securitepublique.gouv.qc.ca', 'J’ai vue dans dans la TIM la possibilité de marier mes passions, mes intérêts et d’ouvrir mes horizons sur les nouvelles technologies. La technique est complète, variée et elle assure un avenir dans un domaine motivant et en constante innovation. J’aime participer à l’analyse de la production Web et produire des sites dont la structure est solide. J’aime intégrer des visuels modulaires et récupérables. J’aime résoudre des problématiques et continuer à apprendre.\r\n', '2013'),
(37, 'Marc-Antoine Charest', 'Développeur Web', 'Leonard', 'www.leonarddg.com', 'Les bonnes perspectives d\'emploi ainsi que la constante mise en pratique des apprentissages sont des éléments qui m\'ont convaincu de me diriger en Techniques d\'intégration multimédia. La diversité des tâches à effectuer et les constants défis qu\'apportent les différents projets sur lesquels je travaille sont des aspects qui me plaisent le plus dans mon travail.\r\n', '2014'),
(38, 'Eddie Brodeur Durand', 'Chargé d\'équipe Développement côté client (Team Lead Front-End)', 'Poka Inc', 'https://www.poka.io/', 'J’ai décidé de me diriger en Techniques d\'intégration multimédia car on y abordait tous les éléments me permettant de pratiquer un travail relié au Web. Ce que je préfère de mon emploi est le fait de travailler dans un domaine qui change constamment ce qui me permet de toujours être motivé par les nouveaux projets.\r\n', '2012'),
(39, 'Stephanie Roy', 'Ingénieur logiciel senior', 'Iterative', 'https://iterative.ai/', 'J’ai choisi les Techniques d\'intégration multimédia car je voulais apprendre à faire des sites Web pour des projets personnels. J\'ai rapidement réalisé que le Web était devenu une passion bien au-delà de mes projets personnels. En tant que Développeur front-end, j’aime la diversité des tâches, des fois un peu plus associées au design d’interface et d\'autres fois un peu plus en lien avec la programmation. J\'aime bien aussi l\'évolution constante, il y a toujours quelque chose de nouveau à apprendre.\r\n', '2012'),
(40, 'Stéphanie Parcel', 'Chargée de projets', 'Connexence', 'https://connexence.com/', 'Je savais que je voulais créer à l\'aide d\'un ordinateur, mais je ne savais pas quoi. Le design m\'intéressait autant que la programmation. Les TIM ont donc été un excellent moyen de toucher à plusieurs facettes du domaine et ainsi trouver ma passion. Aujourd’hui, que ce soit d\'un client, d\'un patron ou d\'un collègue, entendre la phrase: « tu viens de me simplifier la vie », ça vaut de l\'or!\r\n', '2014'),
(41, 'Alexia B. Proulx', 'Développeur Web', 'PetalMD', 'www.petalmd.com', 'Je me suis d\'abord dirigée dans une formation en informatique mais j\'ai rapidement réalisé que le web correspondait plus à mon profil que le développement logiciel. Techniques d\'intégration multimédia m\'offrait non seulement de perfectionner mes connaissances mais aussi d\'aller plus loin que la programmation et de toucher à toutes les facettes du domaine. Ce que je préfère dans mon métier c\'est la portée de notre travail. Internet est aujourd\'hui la plus importante vitrine et les développeurs en sont en quelques sortes les artisans. Voir les projets sur lesquels j\'ai travaillé rencontrer un franc succès sur le net est une véritable fierté. ', '2013'),
(43, 'Frédérique Fortier ', 'Développeuse Web Front-End ', 'Spektrum Média', 'https://spektrummedia.com/', 'Surfant sur le web depuis toujours, j’ai choisi TIM pour son mélange de design et de programmation qui permet d’allier le côté créatif au côté logique. Mon choix s’est confirmé lors de mon premier cours de programmation, où j’ai eu la piqûre dès que j’ai vu mon code se transformer sous mes yeux en élément interactif ! J’adore la diversité des projets et des nouveaux défis qui se présentent chaque jour. Grâce à eux, mes connaissances sont constamment enrichies.', '2021'),
(44, 'Cohan Carpentier ', 'Dévelopeur Frontend Sénior ', 'Ava Labs ', 'https://www.avax.network/', 'C’est grâce aux TIM que j’ai enfin découvert ma vraie passion: le développement web. Je me suis toujours intéressé au vidéo et à l’animation, mais c’est finalement en terminant mon cours d’introduction au HTML que je me suis vraiment mis à “tripper”. Grâce à mon stage de 3e année, j’ai pu rencontrer un mentor qui a su m’amener à me dépasser et à participer à des projets d’envergure. Aujourd’hui, je jouis d’un emploi stimulant et à la fine pointe de la techno dans le domaine du “blockchain”.', '2017'),
(45, 'Émilie Viel', 'Développeuse', 'Desjardins', 'https://www.desjardins.com/', 'En cherchant une formation qui répondrait à ma passion pour le code et le design graphique, j\'ai trouvé les TIM qui réunissaient ces deux intérêts et plus encore. En TIM, on apprend des bases solides dans plusieurs aspects du web, ce qui permet d\'être polyvalent et de s\'adapter facilement au marché du travail. J\'ai beaucoup évolué dans le domaine du web et je peux dire que chacune des connaissances que j\'ai acquises au cours de ma formation m\'ont servi à un moment ou à un autre dans ma carrière!', '2017'),
(46, 'Claudie Dorval', 'Développeuse web', 'MEDIAL Services-Conseils SST', 'https://www.medial.ca/ ', 'J\'ai opté pour les Techniques d\'Intégration Multimédia (TIM) pour la panoplie de métiers et de possibles aventures qui en découlent. C\'est dans un environnement stimulant et à travers une foule de projets diversifiés que j\'ai acquis des compétences-clés qui me permettent aujourd\'hui de me démarquer sur le marché du travail. La priorisation de mes tâches, la gestion rigoureuse de mon temps, ainsi qu\'une solide capacité à m\'adapter aux imprévus, notamment! Parmi les multiples tâches qu\'un développeur web peut effectuer, celles que je préfère resteront toujours celles qui m\'enrichissent en tant qu\'individu.', '2019'),
(47, 'Vincent Brizard', 'Directeur de la création et de la relation client', 'Sudo agence numérique', 'https://www.agencesudo.com/', 'J’ai gradué de la TIM en 2016. Depuis, j’ai occupé différentes fonctions, passant de designer d’interfaces UI, spécialiste UX, développeur front-end et back-end pour finalement obtenir un poste à titre de Directeur créatif. Les forces du programme se situent à mon avis au niveau de l’offre très diversifiée des notions proposées, de la flexibilité que l’étudiant·e a de se spécialiser dans différents aspects du métier et de la disponibilité des différents intervenant·e·s. Mes études ont été remplies de nouvelles amitiés et porteuses d\'opportunités pour l’avenir. J’en serai toujours reconnaissant. ', '2016');

-- --------------------------------------------------------

--
-- Structure de la table `textes`
--

CREATE TABLE `textes` (
  `id` int(11) UNSIGNED NOT NULL,
  `titre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `texte` text COLLATE utf8_unicode_ci,
  `epic` smallint(6) UNSIGNED NOT NULL COMMENT 'No epic associe au texte pour le développeur'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `textes`
--

INSERT INTO `textes` (`id`, `titre`, `texte`, `epic`) VALUES
(1, 'Logo du cégep Sainte-Foy', '<a href=\"http://www.csfoy.ca\"><img src=\"./liaisons/img/logo_cegep_blanc.webp\" alt=\"Site du Cegep de Sainte Foy\"></a>', 0),
(2, 'Page du programme TIM sur le site du cégep', '<a class=\"externalLink\" href=\"https://www.csfoy.ca/programmes/tous-les-programmes/programmes-techniques/techniques-dintegration-multimedia-web-et-apps/\">\r\nPage du programme TIM sur le site du cégep<img src=\"./liaisons/svg/arrow-up.svg\" alt=\"tous les programmes techniques dintegration multimedia web et apps \">\r\n</a>', 0),
(3, 'Facebook', '<a href=\"https://www.facebook.com/timcsf\"><img src=\"./liaisons/svg/Facebook.svg\" alt=\"Liens vers Facebook\"></a>', 0),
(4, 'Linkedin', '<a href=\"https://www.linkedin.com/groups/2211970\"><img src=\"./liaisons/svg/Linkedin.svg\" alt=\"Liens vers Linkedin\"></a>', 0),
(5, 'Instagram', '<a href=\"https://www.instagram.com/cegepsaintefoy/\"><img src=\"./liaisons/svg/Instagram.svg\" alt=\"Liens vers Instagram\"></a>', 0),
(6, '<h2>3/ demande d’admission</h2>', '\r\n    <p>Les demandes d\'admission au programme TIM sont reçues avant le 1er mars de chaque année (1er tour), le 1er mai (2e tour), le 1er juin (3e tour) et le 1er août (4e tour).</p>\r\n    <p>Tu es convaincu?</p>\r\n\r\n    <a href=\"https://www.csfoy.ca/index.php?id=6014\" class=\"mainButton\">Rejoins nous !</a>', 4),
(7, '<h2>2/ ÉTUDIANT.E.S INTERNATIONAL</h2>', '\r\n        <p>Si tu es une étudiante ou un étudiant étranger, la TIM est accessible. Pour d’avantages de détails ou pour t’inscrire, visite le site du bureau international du cégep</p>\r\n\r\n        <a href=\"https://www.csfoy.ca/programmes/admission/etudiantes-et-etudiants-de-linternational/\" class=\"mainButton\">Voir les modalités</a>', 4),
(8, '<h2>1/ ÉTUDIANT.E.S D’UN JOUR</h2>', '\r\n        <p>Tu veux en apprendre plus sur le programme? Tu veux assister à un ou plusieurs cours? </p>\r\n        <p>Viens passer une journée avec nous, en Techniques d\'intégration multimédia!</p>\r\n\r\n        <a href=\"index.php?controleur=site&action=contact&responsable=4\" class=\"mainButton\">Contacter Benoît Frigon</a>\r\n        <a href=\"https://www.csfoy.ca/etudiante-et-etudiant-dun-jour/etudiante-et-etudiant-dun-jour-formulaire/ \" class=\"secondButton\">Remplir le formulaire d’inscription</a>', 2),
(9, '<h2>Des questions?</h2>', '<p>Tu as des questions et tu aimerais en apprendre plus sur notre programme? N’hésite pas à nous contacter pour obtenir des réponses.</p>\r\n\r\n<a class=\"mainButton\" href=\"index.php?controleur=site&action=contact&responsable=1\" >Contacter Sylvain Lamoureux</a>', 2),
(10, '<h2>LES AIDES DISPONIBLES</h2>', '        <p>Obtiens des bourses de 1500$ par session, pour un total de 9000$.</p>\r\n        <a href=\"https://www.csfoy.ca/services-aux-etudiants/aide-financiere-et-bourses/\" class=\"externalLink\">En savoir plus<img src=\"./liaisons/svg/arrow-up.svg\"></a>', 4),
(11, 'Accroche', '<p>Tu t’intéresses à la conception et programmation de sites Web, d’applications mobiles et de produits interactifs ? Tu veux concevoir des interfaces visuelles, de la vidéo et des animations ? TIM, c’est ça !</p>', 4),
(12, '<h1 class=\"mainTitle\"> La Formation </h1>', '<p>Conception, médias, intégration et programmation. Un seul but, former des techniciennes et des techniciens polyvalents, aptes à réaliser des sites et des applications Web de A à Z.</p>', 5),
(13, '<h3>Conception 25% :</h3>', '\r\n\r\n        <p>Concevoir des interfaces efficientes et attrayantes selon les besoins des utilisateurs. Tester les fonctionnalités conçues. Réaliser un design inclusif (accessibilité).</p>\r\n        <div class=\"listeFormation\">\r\n            <div class=\"listeFormationColumn\">\r\n                <p>✦ Design d’interfaces Web</p>\r\n                <p>✦ Expérience utilisateur</p>\r\n                <p>✦ Utilisabilité</p>\r\n            </div>\r\n            <div class=\"listeFormationColumn\">\r\n                <p>✦ Ergonomie</p>\r\n                <p>✦ Accessibilité</p>\r\n            </div>\r\n            <div class=\"listeFormationColumn\">\r\n                <p>✦ Axure</p>\r\n                <p>✦ Figma</p>\r\n            </div>\r\n        </div>\r\n', 5),
(14, '<h3>Médias 15% :</h3>', '\r\n\r\n        <p>Créer et traiter des médias tels que des images, des photos, des animations, des vidéos et des sons</p>\r\n        <div class=\"listeFormation\">\r\n            <div class=\"listeFormationColumn\">\r\n                <p>✦ Suite Adobe CC</p>\r\n                <p>✦ Photomontages</p>\r\n            </div>\r\n            <div class=\"listeFormationColumn\">\r\n                <p>✦ Tournage et montage vidéo</p>\r\n                <p>✦ Effets spéciaux</p>\r\n            </div>\r\n            <div class=\"listeFormationColumn\">\r\n                <p>✦ Son</p>\r\n                <p>✦ Design cinétique</p>\r\n            </div>\r\n        </div>\r\n', 5),
(15, '<h3>Intégration 25% :</h3> ', '\r\n        \r\n        <p>Transposer les médias et le design en code sémantique et programmer l’interactivité du côté client (front-end). S’assurer de l’accessibilité de l’interface.</p>\r\n        <div class=\"listeFormation\">\r\n            <div class=\"listeFormationColumn\">\r\n                <p>✦ HTML5</p>\r\n                <p>✦ CSS</p>\r\n                <p>✦ SASS</p>\r\n                <p>✦ Flex et Grid</p>\r\n            </div>\r\n            <div class=\"listeFormationColumn\">\r\n                <p>✦ JSON</p>\r\n                <p>✦ JavaScript</p>\r\n                <p>✦ Ajax</p>\r\n            </div>\r\n            <div class=\"listeFormationColumn\">\r\n                <p>✦ TypeScript</p>\r\n                <p>✦ Mobile First</p>\r\n                <p>✦ Responsive web</p>\r\n            </div>\r\n        </div>\r\n', 5),
(16, '<h3>Programmation 25% :</h3>', '\r\n        \r\n        <p>Rendre fonctionnel un produit numérique interactif du côté serveur (back-end). Manipulation de bases de données pour l’affichage dynamique, le tout de façon sémantique dans un code documenté, portable et robuste.</p>\r\n        <div class=\"listeFormation\">\r\n            <div class=\"listeFormationColumn\">\r\n                <p>✦ PHP</p>\r\n                <p>✦ SQL / MySQL</p>\r\n            </div>\r\n            <div class=\"listeFormationColumn\">\r\n                <p>✦ Orienté objet</p>\r\n                <p>✦ MVC</p>\r\n            </div>\r\n            <div class=\"listeFormationColumn\">\r\n                <p>✦ PhpStorm</p>\r\n            </div>\r\n        </div>\r\n', 5),
(17, '<h3>Autres 10% :</h3>', '\r\n        \r\n        <p>Gérer des projets, réaliser des stages en milieu professionnel. Gestion Agile, outils de gestion de projet, réalisation de projets d’envergure.</p>\r\n        <div class=\"listeFormation\">\r\n            <div class=\"listeFormationColumn\">\r\n                <p>✦ Gestion Agile/Scrum</p>\r\n                <p>✦ Travail collaboratif: Git, Planner</p>\r\n            </div>\r\n            <div class=\"listeFormationColumn\">\r\n                <p>✦ Autonomie</p>\r\n                <p>✦ Veille technologique</p>\r\n            </div>\r\n            <div class=\"listeFormationColumn\">\r\n                <p>✦ Stages</p>\r\n            </div>\r\n        </div>\r\n', 5),
(18, '        <h2>Les Horaires</h2>', '        <p>Pour avoir de l’information plus spécifique sur les cours, visite le site du Cégep de Sainte-Foy. Pour télécharger la grille de cours du programme TIM </p>\r\n        <a href=\"./liaisons/docs/grille_cours_TIM.pdf\" class=\"mainButton\" download>Télécharger la grille de cours</a>\r\n        <a class=\"externalLink\" href=\"http://www.csfoy.ca\">\r\n            Cégep de Sainte-Foy<img src=\"./liaisons/svg/arrow-up.svg\" alt=\"Page du cégep de sainte foy\">\r\n        </a>', 5),
(19, '<h3>Intégrateur <br> Intégratrice</h3>', '<p>L’intégrateur/intégratrice est la personne en charge de traduire et de transposer les maquettes fournies par l’équipe graphique dans un langage informatique, ce qui permet d’avoir un rendu réel et manipulable du site dans un navigateur. Il ou elle s’occupe donc de la partie visible du site en créant une interface ergonomique et accessible. Postes en lien: Intégrateur/Intégratrice multimédia, Développeur/Développeuse web, Développeur/Développeuse front-end,Webmestre, Et plus...</p>', 5),
(20, '<h3>Programmeur <br> Programmeuse</h3>\r\n<span>WEB</span>', '<p>Le programmeur/programmeuse Web se charge de la mise en place, de la configuration, du développement et de la maintenance du serveur, de la base de données et de l’application Web en général. En bref, il ou elle participe au développement de tous les éléments d’un projet Web qui sont ”invisibles” lorsque l’on navigue sur un siteInternet. Postes en lien: Développeur/Développeuse Web, Développeur/Développeuse back-end (côté serveur), Et plus...</p>', 5),
(21, '<h3>Concepteur <br> Conceptrice</h3>', '<p>Le concepteur/conceptrice Web conçoitet réalise l’interface visuelle d’un site internet pour lequel il ou elle créetous les éléments graphiques (illustrations, bannières, images, animations…)selon les objectifs du client, en fonction des besoins des utilisateurs et descontraintes techniques. Il ou elle analyse et imagine des solutions et desinterfaces adaptées. Postes en lien : Designer Web,Designer UI, Designer UX, Et plus…</p>', 5),
(22, 'Programmes universitaires', '<p>Certains étudiantes et étudiants choisissent de poursuivre leur formation à l’Université après leur DEC en Techniques d’intégration multimédia. Design Baccalauréat en design graphique Baccalauréat en art et science de l’animation Baccalauréat en création numérique concentration cinéma, création 3D et création de jeux vidéo. Et plus… Programmation Baccalauréat en informatique Baccalauréat en génie informatique Baccalauréat en génie logiciel. Et plus…</p>', 5),
(23, 'Type d\'employeurs', '<div class=\"listeHome\">\r\n            <div class=\"listeHomeColumn\">\r\n                <span>✦ Agences Web et numériques</span>\r\n                <span>✦ Entreprises en multimédia</span>\r\n            </div>\r\n            <div class=\"listeHomeColumn\">\r\n                <span>✦ Entreprises privées</span>\r\n                <span>✦ Secteurs publics et parapublics</span>\r\n            </div>\r\n        </div>', 5),
(24, '\r\n    <h2>Dates de début</h2>', '\r\n\r\n        <div class=\"stageHeaderContainer\">\r\n            <div class=\"stageHeaderContainer2\">\r\n                <div>\r\n                    <h3>Alternance travail-études</h3>\r\n                    <img src=\"./liaisons/svg/arrow-up-broken.svg\" alt=\"\">\r\n                    <h3>26 MAI 2025</h3>\r\n                </div>\r\n                <p>Durée minimum de 8 semaines </p>\r\n            </div>\r\n            <div class=\"stageHeaderContainer2\">\r\n                <div>\r\n                    <h3>STAGES FINAUX<span class=\"formRequireStar\">*<span></h3>\r\n                    <img src=\"./liaisons/svg/arrow-up-broken.svg\" alt=\"\">\r\n                    <h3>17 MARS 2025</h3>\r\n                </div>\r\n                <p>Durée de 8 semaines </p>\r\n            </div>\r\n            <p><span class=\"formRequireStar\">*</span>Les étudiantes et les étudiants seront ensuite disponibles à l\'emploi. Ces stages rémunérés sont admissibles à des crédits d\'impôt avantageux.</p>\r\n        </div>\r\n', 1),
(25, '<h2>Notre savoir faire</h2>', '\r\n \r\n        <p>Consultez le profil des compétences de nos étudiant.e.s pour déterminer le stage à offrir</p>\r\n        <a class=\"mainButton\" href=\"./liaisons/docs/profilCompetences_2024.pdf\" download>Télécharger</a>\r\n        <p> Pour en savoir plus contactez <a  href=\"index.php?controleur=site&action=contact&responsable=1\" class=\"textLink\">Pascal Larose</a>. Téléphone : (418) 659-6600, poste 6663</p>\r\n', 1),
(26, '<h2>ATE</h2>', '<div class=\"stageContentWrapper\">\r\n            <h3>Alternance travail-études</h3>\r\n            <p>Les stages ATE est une formule qui permet aux étudiants et aux étudiantes qui le désirent, dès la fin de la première année, de vivre une expérience de travail enrichissante, tout en étant encadré par une personne enseignante et superviseure dans un milieu de travail authentique. Cette expérience permettra à l’étudiant et à l’étudiante de vivre la réalité du marché du travail et de mettre ses nouveaux acquis à profit.</p>\r\n        </div>\r\n\r\n        <div class=\"stageContentWrapper\">\r\n            <h3>POURQUOI FAIRE UN STAGE ATE?</h3>\r\n            <ul>\r\n                <li>Découvrir la dynamique d’un environnement de travail de professionnel</li>\r\n                <li>Faire de nouveaux apprentissages complémentaire au programme</li>\r\n                <li>Développer ses compétences professionnelles</li>\r\n                <li>Agrandir son réseau de contact dans le domaine</li>\r\n            </ul>\r\n        </div>', 1),
(27, '<h2>Finaux</h2>', '            <h3>Stages finaux</h3>\r\n            <p>La dernière session de la formation est divisée en deux parties. La première comporte des cours réalisés en mode intensif d’une durée de sept semaines. La seconde est entièrement consacrée à un stage rémunéré en entreprise.</p>\r\n            <p>Les étudiant.e.s de troisième année sont par la suite immédiatement disponibles à l’emploi.</p>', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `axes`
--
ALTER TABLE `axes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `axes_cours`
--
ALTER TABLE `axes_cours`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `axe_id_2` (`axe_id`,`cours_id`),
  ADD KEY `axe_id` (`axe_id`),
  ADD KEY `cours_id` (`cours_id`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `diplomes`
--
ALTER TABLE `diplomes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etapes`
--
ALTER TABLE `etapes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projet_id` (`projet_id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responsable_id` (`responsable_id`);

--
-- Index pour la table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diplome_id` (`diplome_id`),
  ADD KEY `cours_id` (`cours_id`);

--
-- Index pour la table `responsables`
--
ALTER TABLE `responsables`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `temoignages`
--
ALTER TABLE `temoignages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `textes`
--
ALTER TABLE `textes`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `axes`
--
ALTER TABLE `axes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `axes_cours`
--
ALTER TABLE `axes_cours`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `diplomes`
--
ALTER TABLE `diplomes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `etapes`
--
ALTER TABLE `etapes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Clé primaire', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `projets`
--
ALTER TABLE `projets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT pour la table `responsables`
--
ALTER TABLE `responsables`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `temoignages`
--
ALTER TABLE `temoignages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `textes`
--
ALTER TABLE `textes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `axes_cours`
--
ALTER TABLE `axes_cours`
  ADD CONSTRAINT `axes_cours_ibfk_1` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`id`),
  ADD CONSTRAINT `axes_cours_ibfk_2` FOREIGN KEY (`axe_id`) REFERENCES `axes` (`id`);

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`responsable_id`) REFERENCES `responsables` (`id`);

--
-- Contraintes pour la table `projets`
--
ALTER TABLE `projets`
  ADD CONSTRAINT `projets_ibfk_1` FOREIGN KEY (`diplome_id`) REFERENCES `diplomes` (`id`),
  ADD CONSTRAINT `projets_ibfk_2` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
