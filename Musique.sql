-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 08, 2020 at 02:20 PM
-- Server version: 5.6.47-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Playlist`
--

-- --------------------------------------------------------

--
-- Table structure for table `Blog`
--

CREATE TABLE `Blog` (
  `Id` int(11) NOT NULL,
  `Titre` varchar(255) NOT NULL,
  `Auteur` varchar(255) NOT NULL,
  `Date_A` date NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Blog`
--

INSERT INTO `Blog` (`Id`, `Titre`, `Auteur`, `Date_A`, `Image`, `Description`) VALUES
(1, 'Quels sont les effets de la musique sur le cerveau ?', 'Bea G.', '2019-11-07', 'images/blog1.jpg', 'Il est prouvé que la musique produit des effets sur l’esprit, aussi bien chez ceux qui l’écoutent que ceux qui en font. En effet, il semblerait qu’elle développe le sentiment de bien-être. Cela expliquerait sûrement qu’elle fasse autant partie de nos vies : nous sommes bercés par la musique depuis notre plus tendre enfance…'),
(2, '5 conseils pour apprendre le solfège et progresser rapidement', 'Carol', '2019-08-29', 'images/blog2.jpg', 'Dans l’art complexe qu’est la musique, le solfège occupe une place centrale et incontournable. Pourtant, il est bien souvent mal-aimé des amateurs de musique qui sont nombreux à essayer d’apprendre à jouer d’un instrument sans d’abord étudier le solfège. Bien sûr, il est possible d’atteindre un certain niveau musical sans solfège. Néanmoins, sans le…'),
(3, 'Comment certaines activités augmentent-elles les bienfaits de la musicothérapie ?', 'Pierrick B.', '2020-02-10', 'images/blog3.jpg', ' La musicothérapie, c’est l’utilisation de la musique dans un cadre de bien-être. Ce n’est pas un traitement en soi, ni même une technique classée parmi la médecine, mais un bon moyen d’augmenter son bien-être. D’ailleurs, la musicothérapie est souvent utilisée sans aucune autre raison particulière que le bien-être et c’est pourquoi beaucoup choisissent de…'),
(4, 'Musique et voiture : le sonomètre peut vous éviter des problèmes', 'MARC K.', '2019-12-11', 'images/blog4.jpg', 'On apprécie tous d’écouter la musique lors d’un trajet en voiture. Motivante, elle nous donne de l’élan pour la journée. Cependant, il faut être vigilant quant au volume du son. Vous pouvez vous équiper d’un appareil qui mesure le niveau du bruit afin de ne pas prendre de risques lorsque vous conduisez.'),
(5, '3 stars de la musique qui utilisent la batterie électronique, pourquoi pas vous ?', 'BEA G.', '2019-10-25', 'images/blog5.jpg', 'La batterie électronique fait partie de notre paysage musical depuis les années 1970, mais elle a fort évolué depuis. Au départ, il est vrai que leur gamme sonore était un peu limitée, et leur coût rédhibitoire. Désormais ce n’est plus le cas, la technologie ayant fortement évoluée et la qualité avec. Que vous soyez…'),
(6, 'Matériel pour DJ : des astuces pour le choisir', 'LOICK A.', '2020-02-18', 'images/blog6.jpg', 'Parmi les inconditionnels de musique électronique, il n’y a pas que des festivaliers qui font la fête jusqu’au bout de la nuit. On trouve aussi des personnes dotées d’une véritable sensibilité musicale, qui peuvent aussi s’exprimer comme les DJ les plus emblématiques. Vous avez envie de vous lancer et de commencer à mixer ?…');

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Page`
--

CREATE TABLE `Blog_Page` (
  `Id` int(11) NOT NULL,
  `Blog_Id` int(11) NOT NULL,
  `Details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Blog_Page`
--

INSERT INTO `Blog_Page` (`Id`, `Blog_Id`, `Details`) VALUES
(1, 1, '<p class=\"article__p\">Il est prouvé que la musique produit des effets sur l\'esprit, aussi bien chez ceux qui l\'écoutent que ceux qui en font. En effet, il semblerait qu\'elle développe le sentiment de bien-être. Cela expliquerait sûrement qu\'elle fasse autant partie de nos vies : nous sommes bercés par la musique depuis notre plus tendre enfance lorsque nos parents nous chantaient des berceuses, et en grandissant, nous développons nous-mêmes nos propres goûts musicaux.</p>\r\n<p class=\"article__p\">Les effets de la musique sur le cerveau ne manquent d\'ailleurs pas de susciter la fascination. Nous vous en avons donc listé quelques-uns.</p>\r\n<h2 class=\"article__h2\"	>Écouter de la musique stimule la production de la dopamine dans le cerveau</h2>\r\n<p class=\"article__p\">Les nombreuses études qui ont été réalisées sur le cerveau ont permis de démontrer que lorsque nous écoutons de la musique, et que celle-ci nous plaît, les circuits neuronaux qui œuvrent dans la motivation et la récompense sont stimulés. Cela se manifeste par la sécrétion de la dopamine, <strong>le neurotransmetteur responsable du plaisir et de la motivation</strong>.</p>\r\n<p class=\"article__p\">Cela s\'explique notamment par le fait que les zones des émotions musicales soient les mêmes que celles des autres émotions, il n\'y a aucune différence. Résultat : la musique apporte autant de bien-être que toute autre substance euphorisante, et <strong>permet d\'atténuer l\'anxiété, de déstresser et de susciter la bonne humeur</strong>.</p>\r\n<p class=\"article__p\"><img class=\"main__auteur__image\" src=\"images/blog1.1.jpg\" alt=\"Illustration de la musique au niveau du cerveau\" ></p>\r\n<p class=\"article__p\">Il existe différentes façons d\'apprendre la musique, et notamment en jouant de la guitare. Avec Allegro Musique par exemple, vous avez la possibilité d\'apprendre la guitare en prenant des cours particuliers à domicile. Mais saviez-vous qu\'en plus de vous permettre de maîtriser un instrument, <strong>l\'apprentissage de la musique protège également le cerveau</strong> ? Entre autres bienfaits, nous savons par exemple que les musiciens courent moins le risque de voir leur faculté auditive décliner avec l\'âge.</p>\r\n<h2 class=\"article__h2\"	>La musique stimule la concentration</h2>\r\n<p class=\"article__p\">La musique optimise la concentration, ce qui prouve qu\'il est parfaitement possible d\'apprendre tout en écoutant de la musique. Du reste, sachez que lorsque nous entendons de la musique, <strong>plus d\'une trentaine de régions céphaliques incluant celles liées au langage et à la motricité entrent en action</strong>. Cela peut également expliquer que nous retenons plus facilement les choses en chanson.</p>\r\n<h2 class=\"article__h2\"	>La musique calme la douleur</h2>\r\n<p class=\"article__p\">Écouter une musique apaisante peut contribuer à atténuer la douleur dans certaines situations. Pendant les actes médicaux, par exemple, une mélodie douce peut aider à se détendre et à moins percevoir la douleur.</p>\r\n<h2 class=\"article__h2\"	>La musique adoucit les mœurs</h2>\r\n<p class=\"article__p\">Il ne s\'agit pas simplement d\'une expression, puisque les résultats d\'une étude ont démontré que l\'humeur et la prédisposition d\'une personne à rendre service peuvent être influencées par la musique. En effet, <strong>après avoir écouté une musique apaisante, les gens sont plus sereins et disponibles</strong>, tandis que si la musique leur semble désagréable (selon leur goût), ils seront plus réticents.</p>'),
(2, 2, '<p class=\"article__p\">Dans l’art complexe qu’est la musique, le solfège occupe une place centrale et incontournable. Pourtant, il est bien souvent mal-aimé des amateurs de musique qui sont nombreux à essayer d’apprendre à jouer d’un instrument sans d’abord étudier le solfège. Bien sûr, il est possible d’atteindre un certain niveau musical sans solfège. Néanmoins, sans le solfège, vous atteindrez rapidement un plafond de verre indépassable.</p>\r\n<h2 class=\"article__h2\">Apprendre à déchiffrer les partitions</h2>\r\n<p class=\"article__p\">La première chose à faire pour apprendre le solfège et y prendre du plaisir, c’est d’apprendre à déchiffrer les partitions. C’est facile et très accessible. De plus, cela vous offrira la satisfaction d’être capable de jouer n’importe quel morceau puisque vous serez capable de reconnaître chaque note et chaque rythme.</p>\r\n<h2 class=\"article__h2\">Appliquer ses nouvelles connaissances à la pratique d’un instrument</h2>\r\n<p class=\"article__p\">Une erreur souvent commise par ceux qui apprennent le solfège, c’est de s’en tenir à la théorie. La pratique d’un instrument de musique sur lequel appliquer ses nouvelles connaissances est indispensable pour rester motivé. En plus, pour bien comprendre le solfège, il est important d’entraîner son oreille à reconnaître les sons et les rythmes.</p>\r\n<h2 class=\"article__h2\">Bien comprendre l’utilité du solfège</h2>\r\n<p class=\"article__p\">Tous les professeurs de solfège vous le diront, les élèves sont nombreux à se décourager parce qu’ils ne comprennent pas bien l’utilité du solfège. La pratique d’un instrument de musique, voire de plusieurs, permet de mieux comprendre l’utilité du solfège, mais ce n’est pas toujours suffisant. Il ne faut donc pas hésiter à prendre le temps d’étudier très superficiellement des notions très avancées du solfège pour comprendre l’ampleur de cette science des sons et se remotiver.</p>\r\n<h2 class=\"article__h2\">Étudier la musique que vous aimez</h2>\r\n<p class=\"article__p\">Ce conseil est surtout à donner aux professeurs, mais il peut aider les étudiants à retrouver la motivation quand ils la perdent. Étudier le solfège à travers de la musique et des partitions que l’on aime est une excellente méthode pour se remotiver rapidement. Il n’y a pas besoin de se tourner systématiquement vers les plus grands maîtres des siècles passés pour trouver des notions complexes de solfège intéressantes à étudier.</p>\r\n<h2 class=\"article__h2\">Trouver un bon professeur</h2>\r\n<p class=\"article__p\">Enfin, le meilleur moyen de rester motivé et d’étudier correctement le solfège, c’est de trouver un bon professeur. Généralement, un bon professeur vous poussera à appliquer tous les conseils précédents. Il tournera son apprentissage vers l’instrument qui vous plaît, l’adaptera à la musique que vous aimez et saura vous expliquer l’utilité précise de chacun de ses enseignements.</p>'),
(3, 3, '<p class=\"article__p\">La musicothérapie, c’est l’utilisation de la musique dans un cadre de bien-être. Ce n’est pas un traitement en soi, ni même une technique classée parmi la médecine, mais un bon moyen d’augmenter son bien-être. D’ailleurs, la musicothérapie est souvent utilisée sans aucune autre raison particulière que le bien-être et c’est pourquoi beaucoup choisissent de la mélanger à d’autres techniques de bien-être, notamment quand ils investissent dans un spa.</p>\r\n<h2 class=\"article__h2\">Les bienfaits de la musicothérapie et du spa</h2>\r\n<p class=\"article__p\">Dans les spas professionnels, la musique est très souvent utilisée pour encourager les clients à se détendre. Si vous investissez dans un spa personnel que vous installez chez vous, vous serez donc probablement tenté de chercher une solution pour écouter de la musique en même temps que vos séances dans votre spa.</p>\r\n<p class=\"article__p\">La solution la plus évidente, c’est alors de relier un téléphone ou un ordinateur à des enceintes que vous amenez avec vous là où votre spa est installé. Cependant, à cause de l’humidité, votre matériel se détériorera rapidement. L’oxydation que cela entraîne est une cause importante de panne dans l’électronique et elle n’est presque jamais couverte par les garanties.</p>\r\n<h2 class=\"article__h2\">Quel est le meilleur spa pour se détendre ?</h2>\r\n<p class=\"article__p\">Si vous êtes amateur de musicothérapie, vous voudrez alors certainement investir dans un spa avec des enceintes intégrées. Beaucoup de modèles de spa de nage offrent cette possibilité. L’avantage, c’est que vous pouvez alors même écouter la musique quand vos oreilles sont sous l’eau puisque les ondes s’y propagent également.</p>\r\n<p class=\"article__p\">D’ailleurs, les spas de nage ont l’avantage de proposer une option qui vous permet de nager à contre-courant. Ainsi, dans un bassin beaucoup plus petit qu’une piscine, vous pourrez nager et vous détendre à volonté, tout en écoutant la musique qui vous convient le mieux dans ces conditions. Si vous avez déjà investi dans un modèle de spa de nage sans enceintes intégrées, vous pouvez également vous tourner vers des enceintes Bluetooth étanches pour régler le problème.</p>\r\n<h2 class=\"article__h2\">Les autres thérapies de détente</h2>\r\n<p class=\"article__p\">Comme nous vous le disions, la musicothérapie gagne à être mélangée avec d’autres types de thérapie. La luminothérapie, une thérapie par la lumière, est une excellente méthode pour stimuler les défenses immunitaires et pour recalibrer l’horloge interne. Elle est souvent utilisée chez les personnes qui ont des problèmes de sommeil.</p>\r\n<p class=\"article__p\">La luminothérapie peut également être facilement intégrée à vos moments de détente dans votre spa nage. Il existe des lampes spéciales que vous pouvez simplement brancher dans la pièce où vous avez installé votre spa. Attention tout de même à ne pas utiliser la lampe le soir, vous risqueriez d’avoir des difficultés pour vous endormir ensuite.</p>'),
(4, 4, '<p class=\"article__p\">On apprécie tous d\'écouter la musique lors d\'un trajet en voiture. Motivante, elle nous donne de l\'élan pour la journée. Cependant, il faut être vigilant quant au volume du son. Vous pouvez vous équiper d\'un appareil qui mesure le niveau du bruit afin de ne pas prendre de risques lorsque vous conduisez.</p>\r\n<h2 class=\"article__h2\">Le sonomètre, un outil pratique</h2>\r\n<p class=\"article__p\">Le sonomètre est un outil qui permet de mesurer le son. Généralement, c\'est en décibels que les mesures sont rapportées. C\'est pour cela que le sonomètre est également appelé décibel-mètre. Il existe plusieurs modèles avec différentes options. De nos jours, la plupart des modèles ont un écran numérique pour afficher les données, certains ont aussi une mémoire pour enregistrer les relevés.</p>\r\n<p class=\"article__p\">En plus de cela, nous pouvons trouver deux catégories de sonomètre : classe 1 et classe 2. La classification des sonomètres se fait selon une norme internationale. Les appareils de classe 1 s\'utilisent généralement pour effectuer des mesures très précises, alors que ceux de classe 2 sont plus destinés à un usage personnel ou dans un lieu de travail pour mesurer le bruit.</p>\r\n<p class=\"article__p\">L\'utilisation d\'un sonomètre est très appréciable dans certaines situations, notamment dans le milieu professionnel afin d\'assurer la santé auditive des travailleurs. Il est aussi judicieux d\'en avoir un à son domicile. En effet, vous aurez la possibilité de mesurer le son chez vous ainsi que dans votre voiture. Si vous avez l\'habitude d\'écouter la musique à un niveau élevé quand vous conduisez, cela peut aboutir à une contravention.</p>\r\n<h2 class=\"article__h2\">La musique au volant : un danger potentiel</h2>\r\n<p class=\"article__p\">Vous avez certainement déjà écouté la musique « à fond » en conduisant. Même si nous convenons tous que cela est plaisant, il faut être vigilant. Effectivement, un bruit trop fort dans l\'habitacle peut représenter un danger.\r\nPremièrement, votre concentration est altérée et vos réflexes peuvent devenir plus lents. Vous vous exposez donc à des risques d\'accident qui pourraient être évités.</p>\r\n<p class=\"article__p\">De plus, vous êtes isolé de votre environnement. Ainsi, il est fort probable que vous n\'entendiez pas un autre conducteur klaxonner ou une ambulance arriver. Dans chacun de ces cas, le danger est présent. Si vous êtes contrôlé par les forces de l\'ordre, vous pouvez être verbalisé et vous vous exposez à une amende de 75 euros. En cas d\'accident, votre assurance peut refuser de vous indemniser.</p>\r\n<p class=\"article__p\">Dans la situation ou conduisez les fenêtres ouvertes, le soir, avec un haut niveau sonore, vous risquez alors une de recevoir contravention de troisième classe, pour tapage nocturne.</p>'),
(5, 5, '<p class=\"article__p\">La batterie électronique fait partie de notre paysage musical depuis les années 1970, mais elle a fort évolué depuis. Au départ, il est vrai que leur gamme sonore était un peu limitée, et leur coût rédhibitoire. Désormais ce n\'est plus le cas, la technologie ayant fortement évoluée et la qualité avec. Que vous soyez déjà batteur, ou que vous ayez envie de vous lancer, la batterie électronique peut se révéler être une bonne option. Besoin d\'inspiration ? Faisons ensemble un petit tour des possibilités avec 3 stars de la musique.</p>\r\n<h2 class=\"article__h2\"	>De mélomane à musicien : la batterie électronique, le bon choix ?</h2>\r\n<p class=\"article__p\">Il y a de nos jours peu de différences entre la batterie électronique et la batterie acoustique. Elle est composé d\'une grosse caisse, d\'une caisse claire, de toms, de cymbales et d\'une charleston. L\'avantage par rapport à l\'acoustique est la possibilité de jouer avec un casque, elle fait donc moins bruit (pratique pour ne pas embêter vos voisins). De plus, elle est légère, l\'entretien est plus simple, et vous pouvez profiter de nombreux sons intégrés.</p>\r\n<p class=\"article__p\">La clé est de bien réfléchir à l\'usage que vous allez en faire : un hobby, apprendre les bases, ou pouvoir l\'emmener en répétition, en concert ? Cela aura une influence sur votre budget et sur le choix des accessoires. Un bon compromis est de choisir un kit complet, tel que la batterie électronique chez Bax Music.</p>\r\n<h2 class=\"article__h2\"	>Phil Collins</h2>\r\n<p class=\"article__p\">On ne peut pas parler batterie sans parler de Phil Collins. Dans deux albums de Genesis (Genenis et Invisible Touch) ainsi que dans son album solo No Jacket Required, il utilise la batterie électronique. Sa chanson « The Brazilian » a changé la façon dont les percussions synthétisées seront incorporées par la suite. Ce mix entre batterie électronique et acoustique est devenu sa marque de fabrique.</p>\r\n<h2 class=\"article__h2\"	>Josh Dun (Twenty One Pilots)</h2>\r\n<p class=\"article__p\">Il en parle comme de la thérapie, c\'est dire que sa batterie est importante pour lui. Josh Dun a un style bien à lui, mixant des techniques punk-rock et hip hop. Du côté matos, il utilise des tambours électroniques Roland, ainsi que des tambours et cymbales classiques.</p>\r\n<h2 class=\"article__h2\"	>Tony Royster Jr (batteur de Jay-Z)</h2>\r\n<p class=\"article__p\">Batteur depuis l\'âge de 3 ans, c\'est un virtuose depuis des années maintenant. Tony Royster Jr a joué avec de grands noms de la musique : Jay-Z, Imajin, Joss Stone. Son kit est aussi un mix d\'électronique et d\'acoustique.</p>\r\n<p class=\"article__p\">En attendant de vous procurer la batterie de vos rêves, on espère que ce petit tour d\'horizon vous aura plu et inspiré !</p>'),
(6, 6, '<p class=\"article__p\">Parmi les inconditionnels de musique électronique, il n\'y a pas que des festivaliers qui font la fête jusqu\'au bout de la nuit. On trouve aussi des personnes dotées d\'une véritable sensibilité musicale, qui peuvent aussi s\'exprimer comme les DJ les plus emblématiques. Vous avez envie de vous lancer et de commencer à mixer ? Ce guide n\'a pas vocation à être exhaustif, mais il vous apporte un éclairage sur les principaux équipements de DJ que vous pourriez adopter.</p>\r\n<h2 class=\"article__h2\"	>Les tables de mixage</h2>\r\n<h3 class=\"article__h3\"	>Un modèle robuste</h3>\r\n<p class=\"article__p\">La table de mixage désigne comme son nom l\'indique un instrument permettant de procéder au <strong>mixage de plusieurs sources musicales</strong>, susceptibles d\'émaner d\'un micro, d\'un piano, d\'une guitare et bien entendu d\'un ordinateur. Cet équipement donne la possibilité de mélanger leurs sons et d\'y adjoindre divers effets, afin de rediriger le tout vers une sortie unique. Si vous avez pour objectif de vous équiper d\'une table de mixage de DJ digne de ce nom, vous devez tout d\'abord tenir compte de sa résistance, il serait malheureux d\'investir dans un système trop fragile. De préférence, <strong>ses boutons seront suffisamment espacés et fermement fixés au support</strong>, par ailleurs son fadeur ne doit occasionner aucun souffle ni bruit suspect.</p>\r\n<p><img class=\"main__auteur__image\" src=\"images/blog6.1.jpg\" alt=\"\"></p>\r\n<h3 class=\"article__h3\">Les possibilités offertes par la console</h3>\r\n<p class=\"article__p\">Un DJ néophyte créatif a forcément besoin de laisser libre cours à son imagination musicale, un pratiquant un peu plus expérimenté souhaitera également avoir plusieurs cordes à son arc, il est donc préférable de se diriger vers une <strong>table de mixage qui propose toutes les fonctionnalités basiques</strong> (PFL, potentiomètres, fadeurs…). Pour déterminer le modèle à la hauteur de vos attentes, nous vous suggérons de lister les appareils que vous aimeriez lui associer (instruments, voix, ordinateur, etc.). Ainsi, le nombre et le type d\'entrées vont forcément compter dans votre choix final. Si vous êtes en quête d\'un matériel caractérisé par sa polyvalence, les <strong>consoles numériques</strong> seront préférées au détriment des tables de mixage analogiques.</p>\r\n<h2 class=\"article__h2\"	>Les logiciels de composition musicale</h2>\r\n<p class=\"article__p\">Des difficultés à opter pour un logiciel plutôt qu\'un autre ? Si la composition musicale vous donne particulièrement envie, vous allez pouvoir démontrer votre talent et enregistrer vos morceaux avec ces logiciels. <strong>La sélection d\'un logiciel de DJ avec séquenceur est à privilégier</strong>.</p>\r\n<p class=\"article__p\">Les éditeurs distribuent plusieurs types d\'outils numériques, comme les logiciels open source, les logiciels sous licence propriétaire et les logiciels DJ hybrides, actualisés régulièrement et généralement mis à disposition au moyen d\'un abonnement. Les produits sous licence propriétaire montrent rapidement leurs limites dans la mesure ils ne disposent pas d\'un grand nombre de fonctionnalités et coûtent souvent plus cher.</p>\r\n<h3 class=\"article__h3\"	>Un outil pour composer même en déplacement ?</h3>\r\n<p class=\"article__p\">Attention à ne pas foncer tête baissée vers un logiciel recommandé par un ami ou un internaute qui l\'a immédiatement adopté sans avoir forcément d\'éléments de comparaison. Il est plus judicieux de bien analyser quelques critères pour déterminer la solution qui vous convient pleinement. La première caractéristique qui importe à nos yeux est <strong>l\'interface du logiciel</strong>, cette dernière ne doit pas vous rebuter, mais accompagner vos premières sensations !</p>\r\n<p class=\"article__p\">La transition est toute faite pour évoquer un autre critère important à savoir, <strong>la prise en main</strong>. Les débutants se tournent à raison vers les <strong>séquenceurs open source</strong> et les logiciels grand public, les DJ qui ont de la bouteille quant à eux peuvent succomber aux logiciels DJ pro. Et si vous n\'envisagez pas de partir en week-end ou en vacances sans pouvoir y créer de nouveaux morceaux, adoptez un outil <strong>compatible avec le système d\'exploitation de votre smartphone</strong> / tablette (iOS ou Android).</p>\r\n<h2 class=\"article__h2\"	>Les enceintes de sonorisation</h2>\r\n<p class=\"article__p\">Il existe un grand nombre d\'enceintes à destination des mélomanes et notamment des DJ. Cela étant, il est aussi évident qu\'elles ne sont pas toutes adaptées à tous les usages. Pour vous adonner à cette passion à votre domicile, <strong>une paire d\'enceintes de monitoring 5 pouces</strong> est suffisante. L\'une de leurs particularités est la neutralité du son restitué, en plus de la qualité sonore, l\'importance de l\'angle d\'ouverture et les options de connectivité sont d\'autres points à prendre en considération.</p>\r\n<h3 class=\"article__h3\"	> Deux grands fabricants</h3>\r\n<p class=\"article__p\">Si vous comptez faire danser vos amis et vous produire dans différents endroits ces prochains mois, vous devrez acheter votre propre système. Les <strong>enceintes actives</strong> constituent la solution la plus pratique pour sonoriser un grand espace, elles ont l\'atout de pouvoir être branchées directement sur une prise de courant et sont munies d\'un ampli.</p>\r\n<p class=\"article__p\">Parmi les aspects qui distinguent les modèles de ce type, il y a la puissance exprimée en Watt ainsi qu\'en RMS &#8211; d\'une importance considérable pour une utilisation en extérieur - ainsi que la capacité de la batterie. <strong>Yamaha avec sa gamme DSR et Pioneer sont assurément deux fabricants incontournables dans ce domaine</strong>. Pour terminer, jetez un œil aux accessoires auxquels vous pourriez avoir recours (plateaux à roulettes pour le transport, protections, supports isolants…).</p>\r\n<h2 class=\"article__h2\"	>Le casque DJ</h2>\r\n<p class=\"article__p\">Que vous vous initiez à l\'enthousiasmante pratique du mix ou que vous désiriez améliorer votre matériel actuel, vous n\'avez que l&#8217;embarras du choix tant l\'offre en matière de casques est prolifique. Mais encore faut-il sélectionner le modèle qui vous <strong>garantit une bonne expérience sonore</strong> ! En premier lieu, vous pouvez trancher entre un casque DJ de type ouvert et un périphérique dit fermé. Indéniablement, si les premiers offrent un <strong>son de qualité</strong>, ils laissent l\'air s\'infiltrer de par leur conception, mais ne s\'illustrent pas par leurs capacités isolantes. Vous avez intérêt à leur préférer les <strong>casques fermés</strong>, qui vous immergent littéralement dans votre playlist et vous mettent dans les meilleures dispositions pour mixer.</p>\r\n<p><img class=\"main__auteur__image\" src=\"images/blog6.2.jpg\" alt=\"\"  ></p>\r\n<p class=\"article__p\">Ensuite, concernant la qualité du son restitué par le casque, nous vous conseillons de vous orienter vers un modèle qui a la faculté de mettre véritablement en avant les <strong>basses</strong>. Pour ce faire, laissez de côté les casques dont les transducteurs sont inférieurs à 40 mm. Assurez-vous également que le produit que vous allez choisir livre bien <strong>une réponse en fréquence de 20 Hz à 20 000 Hz</strong>, ainsi tous les sons pourront être perçus !</p>\r\n<p class=\"article__p\">Attention à la qualité du casque, son arceau idéalement très flexible devra être associé à des écouteurs très mobiles. Enfin, vous seriez bien avisé de choisir un <strong>casque de DJ</strong> dont le câble s\'étire sur plus de 2 mètres, vous offrant ainsi une grande liberté de mouvement.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE `Categories` (
  `Id` int(11) NOT NULL,
  `Titre` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Categories`
--

INSERT INTO `Categories` (`Id`, `Titre`, `Image`) VALUES
(1, 'Noël', 'images/noel.jpg'),
(2, 'Anniversaire', 'images/anniversaire.jpg'),
(3, 'Classique au  bureau', 'images/classique_au_bureau.jpg'),
(4, 'Jazz', 'images/Jazz.jpg'),
(5, 'Bande sonore', 'images/bande-sonore.jpg'),
(6, 'Rock', 'images/rock.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Comment`
--

CREATE TABLE `Comment` (
  `Id` int(11) NOT NULL,
  `Blog_Id` int(11) NOT NULL,
  `Comment_text` text NOT NULL,
  `Comment_sender_name` varchar(255) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Comment`
--

INSERT INTO `Comment` (`Id`, `Blog_Id`, `Comment_text`, `Comment_sender_name`, `Date`) VALUES
(36, 1, 'La musique agit directement sur notre corps. L’écouter nous fait plaisir, nous stimule. Plusieurs études ont observé les effets qu’a la musique sur le cerveau humain.', 'Olga', '2020-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `Playlists`
--

CREATE TABLE `Playlists` (
  `Id` int(11) NOT NULL,
  `Titre` varchar(255) NOT NULL,
  `Cat_Id` int(11) NOT NULL,
  `Music` varchar(255) NOT NULL,
  `Time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Playlists`
--

INSERT INTO `Playlists` (`Id`, `Titre`, `Cat_Id`, `Music`, `Time`) VALUES
(1, 'Happy New Year', 1, 'Noel/Abba-HappyNewYear.mp3', '04:27'),
(2, 'It is Beggining to look like Christmas', 1, 'Noel/ItsBeginningToLookLikeChristmas.mp3', '02:46'),
(3, 'Rockin Around The Christmas Tree', 1, 'Noel/Glee-RockinAroundTheChristmasTree.mp3', '02:37'),
(5, 'Jingle Bell Rock', 1, 'Noel/Jingle Bell Rock-.mp3', '02:10'),
(6, 'Let it Snow', 1, 'Noel/Let it Snow - Michael Buble.mp3', '02:09'),
(7, 'Little Christmas Tree', 1, 'Noel/Little Christmas Tree - Jackson 5.mp3', '03:39'),
(8, 'All I Want For Christmas Is You', 1, 'Noel/Mariah Carey- All I Want For Christmas Is You.mp3', '04:02'),
(9, 'White Christmas', 1, 'Noel/Michael Bublé - White Christmas (ft. Shania Twain) [Official HD].mp3', '03:38'),
(10, 'Last Christmas ', 1, 'Noel/Wham - Last Christmas (Official).mp3', '04:23'),
(11, 'Birthday Song', 2, 'Anniversaire/B-Day Song.mp3', '03:33'),
(12, 'Stevie Wonder Happy Birthday', 2, 'Anniversaire/Stevie Wonder Happy Birthday.mp3', '05:58'),
(13, 'Beatles - Birthday ', 2, 'Anniversaire/Beatles - Birthday .mp3', '02:43'),
(14, 'Selena Gomez - Birthday', 2, 'Anniversaire/Selena Gomez - Birthday.mp3', '03:22'),
(15, 'Katy Perry - Birthday', 2, 'Anniversaire/Katy Perry - Birthday.mp3', '03:35'),
(16, 'Happy Birthday To You (Traditional) ', 2, 'Anniversaire/Happy Birthday To You (Traditional) First Time on YouTube.mp3', '01:45'),
(17, 'Joyeux anniversaire', 2, 'Anniversaire/Joyeux anniversaire avec paroles.mp3', '01:37'),
(18, 'Kygo Happy Birthday ft John Legend ', 2, 'Anniversaire/KygoHappyBirthdayftJohnLegendLyrics-arabsong-top.mp3', '04:10'),
(19, 'Beethoven  Pastoral Symphony (No.6)', 3, 'Classique/beethoven-symphony6-1.mp3', '12:08'),
(20, 'Brahms- St Anthony Chorale - Theme, Orchestra Op.56a', 3, 'Classique/brahms-st-anthony-chorale-theme-orchestral.mp3', '02:04'),
(21, 'Liszt  Liebestraum No.3 for Piano', 3, 'Classique/franz-liszt-liebestraum-3.mp3', '04:24'),
(22, 'Franz Schubert - Ständchen (Serenade)', 3, 'Classique/franz-schubert-standchen-serenade-piano-solo.mp3', '03:08'),
(23, 'Grieg: Holberg Suite - Gavotte (piano)', 3, 'Classique/grieg-holberg-suite-3-gavotte.mp3', '03:10'),
(24, 'Handel - Ombra Mai Fu - aria from the opera Serse', 3, 'Classique/handel-ombra-mai-fu.mp3', '02:30'),
(25, 'Haydn: Symphony No.88 in G major', 3, 'Classique/haydn-symphony88-1.mp3', '06:22'),
(26, 'Mozart Horn Concerto No.4', 3, 'Classique/mozart-horn-concerto4-3-rondo-piano-and-horn.mp3', '04:06'),
(27, 'Sergei Rachmaninoff - Prelude in C-sharp minor Op.3 No.5', 3, 'Classique/rachmaninoff-prelude-in-g-minor.mp3', '03:31'),
(28, 'Camille Saint-Saens - The Swan', 3, 'Classique/saint-saens-carnival-of-the-animals-the-swan-viola-piano.mp3', '02:30'),
(29, 'Louis Armstrong - What A Wonderful World', 4, 'Jazz/Louis Armstrong - What A Wonderful World.mp3', '02:17'),
(30, 'Louis Armstrong - Go Down Moses', 4, 'Jazz/Louis Armstrong - Go Down Moses.mp3', '03:40'),
(31, 'Nina Simone - Feeling Good ', 4, 'Jazz/Feeling Good -Nina Simone.mp3', '03:01'),
(32, 'Frank Sinatra - My funny Valentine', 4, 'Jazz/Frank Sinatra My funny Valentine.mp3', '02:35'),
(33, 'Frank Sinatra - Strangers In The Night', 4, 'Jazz/Strangers In The Night (Remastered 2008).mp3', '02:44'),
(34, 'Frank Sinatra- Witchcraft', 4, 'Jazz/Frank Sinatra- Witchcraft.mp3', '02:56'),
(35, 'Nina Simone - I put a spell on you', 4, 'Jazz/Nina Simone - I put a spell on you.mp3', '02:38'),
(36, 'Michael Bublé - Sway', 4, 'Jazz/Sway.mp3', '03:08'),
(37, 'Dave Brubeck - Take Five', 4, 'Jazz/Dave Brubeck, The Dave Brubeck Quartet - Take Five (Audio).mp3', '05:25'),
(38, 'Duke Ellington & John Coltrane - In a sentimental mood', 4, 'Jazz/Duke Ellington & John Coltrane - In a sentimental mood.mp3', '04:18'),
(39, 'John Williams - Schindlers List', 5, 'Film/Schindler s List Soundtrack.mp3', '05:07'),
(41, 'John Williams - The Book Thief', 5, 'Film/The Book Thief OST - 01. One Small Fact .mp3', '01:45\r\n'),
(42, 'John Williams - Home Alone', 5, 'Film/John Williams - Home Alone Theme.mp3', '04:52'),
(44, 'Hans Zimmer - Time (Inception)', 5, 'Film/Hans Zimmer - Time (Inception).mp3', '04:34'),
(47, 'Celine Dion - My Heart will go on', 5, 'Film/Celine Dion - My Heart will go on - Titanic-.mp3', '04:36'),
(49, 'Ludovico Einaudi - Fly (The Intouchables)', 5, 'Film/Ludovico Einaudi - Fly (The Intouchables).mp3', '04:41'),
(50, 'The Fifth Element song - Diva dance', 5, 'Film/The Fifth Element song - Diva dance.mp3', '04:43'),
(51, 'The Beatles - Come Together', 6, 'Rock/The Beatles - Come Together.mp3', '04:18'),
(52, 'Eric Clapton - Cocaine', 6, 'Rock/Eric Clapton - Cocaine +.mp3', '03:42'),
(53, 'Imagine - John Lennon ', 6, 'Rock/Imagine - John Lennon (Boyce Avenue).mp3', '03:10'),
(54, 'Roy Orbison - Oh, Pretty Woman', 6, 'Rock/Oh, Pretty Woman.mp3', '02:56'),
(55, 'Scorpions - Wind Of Change ', 6, 'Rock/Scorpions - Wind Of Change (Official Music Video).mp3', '04:42'),
(56, 'Nirvana - Smells Like Teen Spirit', 6, 'Rock/Nirvana - Smells Like Teen Spirit.mp3', '05:01'),
(57, 'Aerosmith - Dream on', 6, 'Rock/Aerosmith - Dream on-.mp3', '04:27'),
(58, 'Pink Floyd - Another brick in the wall', 6, 'Rock/pink floyd - another brick in the wall.mp3', '03:49'),
(59, 'Eagles - Hotel California', 6, 'Rock/Eagles - Hotel California HQ.mp3', '06:30'),
(60, 'Muse - Starlight', 6, 'Rock/Muse - Starlight -.mp3', '04:02');

-- --------------------------------------------------------

--
-- Table structure for table `Slider`
--

CREATE TABLE `Slider` (
  `Id` int(11) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Slider`
--

INSERT INTO `Slider` (`Id`, `Image`) VALUES
(1, 'images/slider1.jpg'),
(2, 'images/slider2.jpg'),
(3, 'images/slider3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(55) NOT NULL,
  `Prenom` varchar(55) NOT NULL,
  `Email` varchar(55) NOT NULL,
  `Pass` varchar(55) NOT NULL,
  `DateA` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`Id`, `Nom`, `Prenom`, `Email`, `Pass`, `DateA`) VALUES
(17, 'Lehardy', 'Olga', 'olga.lehardy@gmail.com', '698d51a19d8a121ce581499d7b701668', '2020-04-06'),
(18, 'Asatryan ', 'Olga', 'olga@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-04-06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Blog`
--
ALTER TABLE `Blog`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Blog_Page`
--
ALTER TABLE `Blog_Page`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Comment`
--
ALTER TABLE `Comment`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Playlists`
--
ALTER TABLE `Playlists`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Slider`
--
ALTER TABLE `Slider`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Blog`
--
ALTER TABLE `Blog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Blog_Page`
--
ALTER TABLE `Blog_Page`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Categories`
--
ALTER TABLE `Categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Comment`
--
ALTER TABLE `Comment`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `Playlists`
--
ALTER TABLE `Playlists`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `Slider`
--
ALTER TABLE `Slider`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
