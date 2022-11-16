SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog_p5`
--

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `idComment` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `creationDate` datetime NOT NULL,
  `valid` varchar(5) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idPost` int(11) NOT NULL,
  PRIMARY KEY (`idComment`),
  KEY `id_user` (`idUser`),
  KEY `id_post` (`idPost`),
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`idComment`, `content`, `creationDate`, `valid`, `idUser`, `idPost`) VALUES
(6, 'Incroyable...', '2022-11-06 16:20:39', 'Yes', 1, 132),
(7, 'Grenouille explosée !', '2022-11-06 16:24:05', 'Yes', 13, 132),
(8, 'Je l\'ai bien apprise à l\'école mais je suis incapable de la réciter.', '2022-11-06 16:24:56', 'Yes', 13, 133),
(10, 'bonjour', '2022-11-08 15:51:04', 'Yes', 1, 132),
(11, 'et Bim!', '2022-11-10 13:38:06', 'Yes', 16, 132),
(13, 'J\'ai toujours été mauvais à Tetris et je pense pas que çà va s\'ameliorer avec ce genre de devices...', '2022-11-09 18:44:47', 'Yes', 1, 158),
(14, 'On se raproche petit à petit de Matrix.', '2022-11-10 18:46:27', 'Yes', 14, 158),
(15, 'Attention au carambolage taile XXL !', '2022-11-10 18:49:23', 'Yes', 1, 157),
(16, 'Qui a dit que PHP était mort ?', '2022-11-10 18:50:29', 'Yes', 1, 156),
(17, 'Je vous rassure le blog est en v7.1 ;-)', '2022-11-10 18:51:33', 'Yes', 1, 155),
(18, 'Sinon les transports en commun c\'est bien aussi et plus simple...', '2022-11-10 18:58:31', 'Yes', 17, 157),
(19, 'Envoyez les pepettes !', '2022-11-10 18:59:05', 'Yes', 17, 156),
(20, 'Le bug de l\'an 2019 !', '2022-11-10 18:59:47', 'Yes', 17, 155),
(21, 'Je ne suis pas un robot', '2022-11-10 19:01:37', 'No', 13, 158),
(22, 'A quand une grosse MAJ ?', '2022-11-10 19:02:23', 'No', 13, 155);

-- --------------------------------------------------------

--
-- Structure de la table `permission`
--

DROP TABLE IF EXISTS `permission`;
CREATE TABLE IF NOT EXISTS `permission` (
  `idPermission` int(11) NOT NULL AUTO_INCREMENT,
  `actionList` text NOT NULL,
  PRIMARY KEY (`idPermission`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `permission`
--

INSERT INTO `permission` (`idPermission`, `actionList`) VALUES
(1, 'addPostView;addPost;editPostView;editPost;deletePost;getUser;deleteUser;writePostView;getUsersView;getPendingUsersView;validateUser;addComment;deleteComment;getPendingComments;validateComment;'),
(2, 'addPostView;addPost;editPostView;editPost;deletePost;getUser;writePostView;getPendingUsersView;validateUser;addComment;deleteComment;getPendingComments;validateComment;'),
(3, 'getUser;addComment;');

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `idPost` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `chapo` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `creationDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `idUser` int(11) NOT NULL,
  PRIMARY KEY (`idPost`),
  KEY `utilisateur_post_fk` (`idUser`)
) ENGINE=MyISAM AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`idPost`, `title`, `chapo`, `content`, `image`, `creationDate`, `updateDate`, `idUser`) VALUES
(155, 'Titre', 'Lorem ipsum dolor sit, amet consectetur', '   Lorem ipsum dolor sit, amet consectetur adipisicing elit. At vitae dolore porro quam magni sed ratione, tempore officia sapiente, pariatur neque excepturi officiis saepe expedita dolores non rerum harum sint fuga tempora nobis atque velit totam reprehenderit! Unde vel ipsa temporibus repellendus aut aperiam nesciunt dolorum dicta nisi quibusdam quae, eveniet sequi accusamus provident nam similique nihil maiores facilis sunt eaque asperiores voluptate officia. Sed accusamus adipisci, nulla ratione ut numquam? Velit, repellendus! Vel nostrum accusantium voluptatem quaerat expedita cum aspernatur facilis nam eveniet blanditiis? Ea tenetur, voluptate quibusdam nobis incidunt dolorum sequi molestiae nemo soluta eum! Sapiente voluptas reiciendis nihil perspiciatis quisquam alias totam repudiandae porro quasi at sed soluta tenetur quidem aperiam suscipit ullam nesciunt atque magnam minima, rerum officia? Blanditiis earum provident cum a eum in illo assumenda accusamus quibusdam facere sit officia eius doloremque eveniet dolore, sapiente quasi dolorum labore maiores excepturi, reiciendis iure deleniti. Cumque minus accusantium eius quibusdam at consequatur nam dolor corrupti libero illo, quis expedita, iste eos quidem illum quasi quaerat, repellendus id possimus ducimus? Eos, quo dolorem voluptas minus dolorum ullam laudantium amet enim quaerat. Et alias recusandae fuga, sunt, quae vel magni quidem excepturi quibusdam ex ea voluptatem? Nobis commodi, rem cupiditate nisi fugit distinctio dolores eius illum, quisquam, provident enim maiores doloribus? Distinctio ullam voluptate tempora quidem est pariatur laboriosam eaque iste aut amet, dolore molestias veritatis facere soluta unde nobis ad fugit, velit maxime officiis? Hic sed aspernatur voluptatibus illum, soluta, aperiam dolore, cumque suscipit maxime fugit illo.', '1542648134.jpg', '2022-11-10 17:22:14', '2022-11-10 17:22:14', 1),
(156, 'Titre', 'Lorem ipsum dolor sit, amet consectetur', '   Lorem ipsum dolor sit, amet consectetur adipisicing elit. At vitae dolore porro quam magni sed ratione, tempore officia sapiente, pariatur neque excepturi officiis saepe expedita dolores non rerum harum sint fuga tempora nobis atque velit totam reprehenderit! Unde vel ipsa temporibus repellendus aut aperiam nesciunt dolorum dicta nisi quibusdam quae, eveniet sequi accusamus provident nam similique nihil maiores facilis sunt eaque asperiores voluptate officia. Sed accusamus adipisci, nulla ratione ut numquam? Velit, repellendus! Vel nostrum accusantium voluptatem quaerat expedita cum aspernatur facilis nam eveniet blanditiis? Ea tenetur, voluptate quibusdam nobis incidunt dolorum sequi molestiae nemo soluta eum! Sapiente voluptas reiciendis nihil perspiciatis quisquam alias totam repudiandae porro quasi at sed soluta tenetur quidem aperiam suscipit ullam nesciunt atque magnam minima, rerum officia? Blanditiis earum provident cum a eum in illo assumenda accusamus quibusdam facere sit officia eius doloremque eveniet dolore, sapiente quasi dolorum labore maiores excepturi, reiciendis iure deleniti. Cumque minus accusantium eius quibusdam at consequatur nam dolor corrupti libero illo, quis expedita, iste eos quidem illum quasi quaerat, repellendus id possimus ducimus? Eos, quo dolorem voluptas minus dolorum ullam laudantium amet enim quaerat. Et alias recusandae fuga, sunt, quae vel magni quidem excepturi quibusdam ex ea voluptatem? Nobis commodi, rem cupiditate nisi fugit distinctio dolores eius illum, quisquam, provident enim maiores doloribus? Distinctio ullam voluptate tempora quidem est pariatur laboriosam eaque iste aut amet, dolore molestias veritatis facere soluta unde nobis ad fugit, velit maxime officiis? Hic sed aspernatur voluptatibus illum, soluta, aperiam dolore, cumque suscipit maxime fugit illo.', '1542648134.jpg', '2022-11-10 17:22:14', '2022-11-10 17:22:14', 1),
(157, 'Titre', 'Lorem ipsum dolor sit, amet consectetur', '   Lorem ipsum dolor sit, amet consectetur adipisicing elit. At vitae dolore porro quam magni sed ratione, tempore officia sapiente, pariatur neque excepturi officiis saepe expedita dolores non rerum harum sint fuga tempora nobis atque velit totam reprehenderit! Unde vel ipsa temporibus repellendus aut aperiam nesciunt dolorum dicta nisi quibusdam quae, eveniet sequi accusamus provident nam similique nihil maiores facilis sunt eaque asperiores voluptate officia. Sed accusamus adipisci, nulla ratione ut numquam? Velit, repellendus! Vel nostrum accusantium voluptatem quaerat expedita cum aspernatur facilis nam eveniet blanditiis? Ea tenetur, voluptate quibusdam nobis incidunt dolorum sequi molestiae nemo soluta eum! Sapiente voluptas reiciendis nihil perspiciatis quisquam alias totam repudiandae porro quasi at sed soluta tenetur quidem aperiam suscipit ullam nesciunt atque magnam minima, rerum officia? Blanditiis earum provident cum a eum in illo assumenda accusamus quibusdam facere sit officia eius doloremque eveniet dolore, sapiente quasi dolorum labore maiores excepturi, reiciendis iure deleniti. Cumque minus accusantium eius quibusdam at consequatur nam dolor corrupti libero illo, quis expedita, iste eos quidem illum quasi quaerat, repellendus id possimus ducimus? Eos, quo dolorem voluptas minus dolorum ullam laudantium amet enim quaerat. Et alias recusandae fuga, sunt, quae vel magni quidem excepturi quibusdam ex ea voluptatem? Nobis commodi, rem cupiditate nisi fugit distinctio dolores eius illum, quisquam, provident enim maiores doloribus? Distinctio ullam voluptate tempora quidem est pariatur laboriosam eaque iste aut amet, dolore molestias veritatis facere soluta unde nobis ad fugit, velit maxime officiis? Hic sed aspernatur voluptatibus illum, soluta, aperiam dolore, cumque suscipit maxime fugit illo.', '1542648134.jpg', '2022-11-10 17:22:14', '2022-11-10 17:22:14', 1),
(158, 'Titre', 'Lorem ipsum dolor sit, amet consectetur', '   Lorem ipsum dolor sit, amet consectetur adipisicing elit. At vitae dolore porro quam magni sed ratione, tempore officia sapiente, pariatur neque excepturi officiis saepe expedita dolores non rerum harum sint fuga tempora nobis atque velit totam reprehenderit! Unde vel ipsa temporibus repellendus aut aperiam nesciunt dolorum dicta nisi quibusdam quae, eveniet sequi accusamus provident nam similique nihil maiores facilis sunt eaque asperiores voluptate officia. Sed accusamus adipisci, nulla ratione ut numquam? Velit, repellendus! Vel nostrum accusantium voluptatem quaerat expedita cum aspernatur facilis nam eveniet blanditiis? Ea tenetur, voluptate quibusdam nobis incidunt dolorum sequi molestiae nemo soluta eum! Sapiente voluptas reiciendis nihil perspiciatis quisquam alias totam repudiandae porro quasi at sed soluta tenetur quidem aperiam suscipit ullam nesciunt atque magnam minima, rerum officia? Blanditiis earum provident cum a eum in illo assumenda accusamus quibusdam facere sit officia eius doloremque eveniet dolore, sapiente quasi dolorum labore maiores excepturi, reiciendis iure deleniti. Cumque minus accusantium eius quibusdam at consequatur nam dolor corrupti libero illo, quis expedita, iste eos quidem illum quasi quaerat, repellendus id possimus ducimus? Eos, quo dolorem voluptas minus dolorum ullam laudantium amet enim quaerat. Et alias recusandae fuga, sunt, quae vel magni quidem excepturi quibusdam ex ea voluptatem? Nobis commodi, rem cupiditate nisi fugit distinctio dolores eius illum, quisquam, provident enim maiores doloribus? Distinctio ullam voluptate tempora quidem est pariatur laboriosam eaque iste aut amet, dolore molestias veritatis facere soluta unde nobis ad fugit, velit maxime officiis? Hic sed aspernatur voluptatibus illum, soluta, aperiam dolore, cumque suscipit maxime fugit illo.', '1542648134.jpg', '2022-11-10 17:22:14', '2022-11-10 17:22:14', 1),
(128, 'Titre', 'Lorem ipsum dolor sit, amet consectetur', '   Lorem ipsum dolor sit, amet consectetur adipisicing elit. At vitae dolore porro quam magni sed ratione, tempore officia sapiente, pariatur neque excepturi officiis saepe expedita dolores non rerum harum sint fuga tempora nobis atque velit totam reprehenderit! Unde vel ipsa temporibus repellendus aut aperiam nesciunt dolorum dicta nisi quibusdam quae, eveniet sequi accusamus provident nam similique nihil maiores facilis sunt eaque asperiores voluptate officia. Sed accusamus adipisci, nulla ratione ut numquam? Velit, repellendus! Vel nostrum accusantium voluptatem quaerat expedita cum aspernatur facilis nam eveniet blanditiis? Ea tenetur, voluptate quibusdam nobis incidunt dolorum sequi molestiae nemo soluta eum! Sapiente voluptas reiciendis nihil perspiciatis quisquam alias totam repudiandae porro quasi at sed soluta tenetur quidem aperiam suscipit ullam nesciunt atque magnam minima, rerum officia? Blanditiis earum provident cum a eum in illo assumenda accusamus quibusdam facere sit officia eius doloremque eveniet dolore, sapiente quasi dolorum labore maiores excepturi, reiciendis iure deleniti. Cumque minus accusantium eius quibusdam at consequatur nam dolor corrupti libero illo, quis expedita, iste eos quidem illum quasi quaerat, repellendus id possimus ducimus? Eos, quo dolorem voluptas minus dolorum ullam laudantium amet enim quaerat. Et alias recusandae fuga, sunt, quae vel magni quidem excepturi quibusdam ex ea voluptatem? Nobis commodi, rem cupiditate nisi fugit distinctio dolores eius illum, quisquam, provident enim maiores doloribus? Distinctio ullam voluptate tempora quidem est pariatur laboriosam eaque iste aut amet, dolore molestias veritatis facere soluta unde nobis ad fugit, velit maxime officiis? Hic sed aspernatur voluptatibus illum, soluta, aperiam dolore, cumque suscipit maxime fugit illo.', '1542648134.jpg', '2022-11-10 17:22:14', '2022-11-10 17:22:14', 1),
(127, 'Titre', 'Lorem ipsum dolor sit, amet consectetur', '   Lorem ipsum dolor sit, amet consectetur adipisicing elit. At vitae dolore porro quam magni sed ratione, tempore officia sapiente, pariatur neque excepturi officiis saepe expedita dolores non rerum harum sint fuga tempora nobis atque velit totam reprehenderit! Unde vel ipsa temporibus repellendus aut aperiam nesciunt dolorum dicta nisi quibusdam quae, eveniet sequi accusamus provident nam similique nihil maiores facilis sunt eaque asperiores voluptate officia. Sed accusamus adipisci, nulla ratione ut numquam? Velit, repellendus! Vel nostrum accusantium voluptatem quaerat expedita cum aspernatur facilis nam eveniet blanditiis? Ea tenetur, voluptate quibusdam nobis incidunt dolorum sequi molestiae nemo soluta eum! Sapiente voluptas reiciendis nihil perspiciatis quisquam alias totam repudiandae porro quasi at sed soluta tenetur quidem aperiam suscipit ullam nesciunt atque magnam minima, rerum officia? Blanditiis earum provident cum a eum in illo assumenda accusamus quibusdam facere sit officia eius doloremque eveniet dolore, sapiente quasi dolorum labore maiores excepturi, reiciendis iure deleniti. Cumque minus accusantium eius quibusdam at consequatur nam dolor corrupti libero illo, quis expedita, iste eos quidem illum quasi quaerat, repellendus id possimus ducimus? Eos, quo dolorem voluptas minus dolorum ullam laudantium amet enim quaerat. Et alias recusandae fuga, sunt, quae vel magni quidem excepturi quibusdam ex ea voluptatem? Nobis commodi, rem cupiditate nisi fugit distinctio dolores eius illum, quisquam, provident enim maiores doloribus? Distinctio ullam voluptate tempora quidem est pariatur laboriosam eaque iste aut amet, dolore molestias veritatis facere soluta unde nobis ad fugit, velit maxime officiis? Hic sed aspernatur voluptatibus illum, soluta, aperiam dolore, cumque suscipit maxime fugit illo.', '1542648134.jpg', '2022-11-10 17:22:14', '2022-11-10 17:22:14', 1),
(129, 'Titre', 'Lorem ipsum dolor sit, amet consectetur', '   Lorem ipsum dolor sit, amet consectetur adipisicing elit. At vitae dolore porro quam magni sed ratione, tempore officia sapiente, pariatur neque excepturi officiis saepe expedita dolores non rerum harum sint fuga tempora nobis atque velit totam reprehenderit! Unde vel ipsa temporibus repellendus aut aperiam nesciunt dolorum dicta nisi quibusdam quae, eveniet sequi accusamus provident nam similique nihil maiores facilis sunt eaque asperiores voluptate officia. Sed accusamus adipisci, nulla ratione ut numquam? Velit, repellendus! Vel nostrum accusantium voluptatem quaerat expedita cum aspernatur facilis nam eveniet blanditiis? Ea tenetur, voluptate quibusdam nobis incidunt dolorum sequi molestiae nemo soluta eum! Sapiente voluptas reiciendis nihil perspiciatis quisquam alias totam repudiandae porro quasi at sed soluta tenetur quidem aperiam suscipit ullam nesciunt atque magnam minima, rerum officia? Blanditiis earum provident cum a eum in illo assumenda accusamus quibusdam facere sit officia eius doloremque eveniet dolore, sapiente quasi dolorum labore maiores excepturi, reiciendis iure deleniti. Cumque minus accusantium eius quibusdam at consequatur nam dolor corrupti libero illo, quis expedita, iste eos quidem illum quasi quaerat, repellendus id possimus ducimus? Eos, quo dolorem voluptas minus dolorum ullam laudantium amet enim quaerat. Et alias recusandae fuga, sunt, quae vel magni quidem excepturi quibusdam ex ea voluptatem? Nobis commodi, rem cupiditate nisi fugit distinctio dolores eius illum, quisquam, provident enim maiores doloribus? Distinctio ullam voluptate tempora quidem est pariatur laboriosam eaque iste aut amet, dolore molestias veritatis facere soluta unde nobis ad fugit, velit maxime officiis? Hic sed aspernatur voluptatibus illum, soluta, aperiam dolore, cumque suscipit maxime fugit illo.', '1542648134.jpg', '2022-11-10 17:22:14', '2022-11-10 17:22:14', 1),
(131, 'Titre', 'Lorem ipsum dolor sit, amet consectetur', '   Lorem ipsum dolor sit, amet consectetur adipisicing elit. At vitae dolore porro quam magni sed ratione, tempore officia sapiente, pariatur neque excepturi officiis saepe expedita dolores non rerum harum sint fuga tempora nobis atque velit totam reprehenderit! Unde vel ipsa temporibus repellendus aut aperiam nesciunt dolorum dicta nisi quibusdam quae, eveniet sequi accusamus provident nam similique nihil maiores facilis sunt eaque asperiores voluptate officia. Sed accusamus adipisci, nulla ratione ut numquam? Velit, repellendus! Vel nostrum accusantium voluptatem quaerat expedita cum aspernatur facilis nam eveniet blanditiis? Ea tenetur, voluptate quibusdam nobis incidunt dolorum sequi molestiae nemo soluta eum! Sapiente voluptas reiciendis nihil perspiciatis quisquam alias totam repudiandae porro quasi at sed soluta tenetur quidem aperiam suscipit ullam nesciunt atque magnam minima, rerum officia? Blanditiis earum provident cum a eum in illo assumenda accusamus quibusdam facere sit officia eius doloremque eveniet dolore, sapiente quasi dolorum labore maiores excepturi, reiciendis iure deleniti. Cumque minus accusantium eius quibusdam at consequatur nam dolor corrupti libero illo, quis expedita, iste eos quidem illum quasi quaerat, repellendus id possimus ducimus? Eos, quo dolorem voluptas minus dolorum ullam laudantium amet enim quaerat. Et alias recusandae fuga, sunt, quae vel magni quidem excepturi quibusdam ex ea voluptatem? Nobis commodi, rem cupiditate nisi fugit distinctio dolores eius illum, quisquam, provident enim maiores doloribus? Distinctio ullam voluptate tempora quidem est pariatur laboriosam eaque iste aut amet, dolore molestias veritatis facere soluta unde nobis ad fugit, velit maxime officiis? Hic sed aspernatur voluptatibus illum, soluta, aperiam dolore, cumque suscipit maxime fugit illo.', '1542648134.jpg', '2022-11-10 17:22:14', '2022-11-10 17:22:14', 1),
(132, 'La grenouille qui se veut faire aussi grosse que le bœuf', 'Livre I, fâble 3', '                                              Une Grenouille vit un Bœuf,&lt;br /&gt;<br />\r\n               Qui lui sembla de belle taille.&lt;br /&gt;<br />\r\nElle qui n\'était pas grosse en tout comme un œuf,&lt;br /&gt;<br />\r\nEnvieuse s\'étend, et s\'enfle, et se travaille,&lt;br /&gt;<br />\r\n               Pour égaler l\'animal en grosseur,&lt;br /&gt;<br />\r\n...............Disant : Regardez bien, ma sœur ;&lt;br /&gt;<br />\r\nEst-ce assez ? dites-moi ; n\'y suis-je point encore ?&lt;br /&gt;<br />\r\nNenni. M\'y voici donc ? Point du tout. M\'y voilà ?&lt;br /&gt;<br />\r\nVous n\'en approchez point. La chétive Pécore,&lt;br /&gt;<br />\r\n               S\'enfla si bien qu\'elle creva.&lt;br /&gt;<br />\r\nLe monde est plein de gens qui ne sont pas plus sages:&lt;br /&gt;<br />\r\nTout bourgeois veut bâtir comme les grands seigneurs,&lt;br /&gt;<br />\r\n        Tout petit prince a des ambassadeurs,&lt;br /&gt;<br />\r\n              Tout marquis veut avoir des pages.   ', '1541157781.jpg', '2018-11-02 12:23:01', '2018-11-14 14:48:16', 1);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `idRole` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `idPermission` int(11) NOT NULL,
  PRIMARY KEY (`idRole`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`idRole`, `name`, `idPermission`) VALUES
(1, 'member', 3),
(2, 'admin', 2),
(3, 'super_admin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `signinDate` datetime NOT NULL,
  `signupDate` datetime NOT NULL,
  `asleep` varchar(5) NOT NULL,
  `valid` varchar(3) NOT NULL,
  `idRole` int(11) NOT NULL,
  `validation_code` varchar(255) NULL
  PRIMARY KEY (`idUser`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`idUser`, `email`, `password`, `username`, `lastname`, `firstname`, `signinDate`, `signupDate`, `asleep`, `valid`, `idRole`, `validation_code`) VALUES
(1, 'addi@hotmail.com', '$2y$10$jCfh8MlrmyILcExUha3eie1f2JA5SK5n1QXMrTXu9t2vllNSqoltS', 'addi05', 'Amz', 'Addi', '2022-11-10 13:03:00', '2022-09-01 15:00:00', 'No', 'Yes', 3, NULL),
(13, 'coco2053@gmail.com', '$2y$10$pE7pdyu4uxMGycE/hrBlSeY5TyauGu.bohDWT7vYY5U0EQaf77OnS', 'Beber', 'Bertrand', 'Tessaro', '2022-11-10 19:01:11', '2022-09-06 12:27:55', 'Yes', 'Yes', 1, NULL),
(18, 'luigi@fabio.com', '$2y$10$OHwiw/U0xM2ip05/NYtmkOP3mWEp5A461nCPwfBjGMaKXocVwEMr.', 'Luigi', 'Fabio', 'Alain', '2022-11-10 13:04:27', '2022-11-09 19:04:27', 'No', 'No', 1, NULL),
(17, 'hacineo@gmail.com', '$2y$10$0gURIBSIUl3SN3w5JicHv.jWwGlRFIjF0lyhdOnC4ACuH2cW/jciu', 'Sly', 'Huguet', 'Sylvain', '2022-11-10 13:52:40', '2022-11-09 14:50:44', 'Yes', 'Yes', 1, NULL),
(14, 'luciengau@gmail.com', '$2y$10$cqhyaGCDTIU7rMruyzB8yeDrjtKBom55dOeQAwMBclJZ0FZXFMT8a', 'Lulu', 'Gaudion', 'Lucien', '2022-11-10 13:45:30', '2022-11-09 12:29:10', 'Yes', 'Yes', 1, NULL);