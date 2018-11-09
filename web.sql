-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 09/11/2018 às 13:34
-- Versão do servidor: 5.5.61-0ubuntu0.14.04.1
-- Versão do PHP: 5.5.9-1ubuntu4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `web`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(250) NOT NULL,
  `content` varchar(500) NOT NULL,
  `post` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Fazendo dump de dados para tabela `comment`
--

INSERT INTO `comment` (`id`, `author`, `content`, `post`) VALUES
(1, '7', 'opa', 0),
(2, '7', 'ok', 0),
(3, '7', 'humm', 0),
(4, '7', 'iiui', 0),
(5, '7', 'asasas', 16),
(6, '7', 'easa', 1),
(7, '7', 'epaweiepaweia', 3),
(8, '7', 'epawei', 16),
(9, '7', 'opaa', 16),
(10, '7', 'dsdasdsad', 16),
(11, '7', 'jhggggggggggg', 16),
(12, '7', 'nabay', 16),
(13, 'debs', 'olhaprai', 16),
(14, 'debs', 'duele recodarte', 7),
(15, 'admin', 'oi gentee', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `content` text,
  `description` text,
  `slug` varchar(255) NOT NULL,
  `sorting` int(11) NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT 'publish',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Fazendo dump de dados para tabela `post`
--

INSERT INTO `post` (`id`, `author`, `title`, `content`, `description`, `slug`, `sorting`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'magnam eum dolores', 'Ex id consequatur non modi nam. Non cumque enim voluptatum dolores saepe quisquam. Praesentium quas voluptatum. Non atque cumque.\n \rDolores quaerat porro facere et. Beatae mollitia ea tenetur illo deleniti cum molestiae aut soluta. Perspiciatis quae minima est est ut neque. Sit voluptatibus quam labore et blanditiis.\n \rAliquid culpa odit quibusdam praesentium nulla nihil odio ex consequuntur. Repellendus debitis velit aut itaque. Consectetur doloribus qui. Ut aut et consequatur et dolor exercitationem et tempore. Possimus quia corrupti laudantium libero saepe ad odio quia. Corporis recusandae deserunt non possimus ut aut.', 'Debitis omnis iste dolor eum natus ut et. Qui sed sint dicta. Alias voluptatibus et quasi inventore tenetur. Error dicta et quaerat iusto dolores et nemo. Est alias sed qui et neque.', 'facere-esse-accusamus', 0, 'publish', '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(2, 3, 'rerum accusamus aliquam', 'Sed totam id aliquid dolores ipsum. Iusto soluta accusamus quia sed quia. Commodi vero eius magnam et suscipit.\n \rIure quae omnis quidem quidem at dolorem tempore commodi. Voluptas ab explicabo maxime ipsum. Est accusamus sit reiciendis ipsum. Soluta aut et nobis sit et quam et consequatur.\n \rEarum tenetur deleniti quis in suscipit sapiente sint. Ut quasi odit qui sed in et. Maiores doloribus quos placeat excepturi at iure enim fuga. Quod similique similique earum sunt culpa eos et. Iusto voluptatum et.', 'At quibusdam est rem voluptas molestias ratione. Et omnis quia amet nostrum voluptas ea sequi id. Quod aspernatur laborum hic maiores possimus explicabo numquam. Ab voluptatem qui culpa voluptas dolorum rem. Rerum qui aut perferendis vitae sunt amet. Ad possimus facere.', 'vel-laborum-ut', 0, 'publish', '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(3, 5, 'voluptas blanditiis nam', 'Fugiat odio fugiat possimus. Consequatur sint consequatur earum ratione. Sequi id ratione. In officiis nam numquam consectetur labore quia. Non quam iusto ut rem temporibus sint. Consequatur quae ut dolores qui delectus et eos molestias minima.\n \rVelit et aliquam inventore non dolorem sit suscipit dolor nemo. Id aut quo quaerat aut incidunt. Accusamus corrupti non. Repellendus omnis a laudantium. Voluptatem et beatae. Voluptas placeat iste quaerat hic.\n \rNam odit enim autem dolor molestias nostrum quos quasi voluptate. Omnis nostrum perspiciatis voluptas ut rerum eos optio exercitationem sed. Debitis praesentium autem ipsum quia.', 'Sed accusamus aut aut doloribus neque unde repudiandae dicta quos. Sapiente et eum ut necessitatibus voluptatem qui voluptates sed ex. Dolorem ad eaque magni consequuntur. Aut qui blanditiis rerum qui numquam.', 'quis-sed-error', 0, 'publish', '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(4, 4, 'perferendis aspernatur deleniti', 'Odit enim odit. Voluptas doloremque rerum earum quidem nisi illo consequatur. Beatae blanditiis recusandae velit quod nemo voluptas. Vel sit dolore qui minima pariatur voluptas vel molestiae est. In accusantium sit nihil.\n \rVoluptas sit consequatur dicta autem earum consequuntur repellendus. Voluptatem harum quasi. Sit maxime ducimus ut laudantium est exercitationem quasi sed. Nihil quod exercitationem quia est ullam earum architecto consequatur iure. Et eos quasi numquam perferendis.\n \rConsectetur nulla recusandae et maiores maiores nihil. Enim et quis ut soluta magnam labore unde ex. Quia possimus repellat sint quisquam dolorem id. A repudiandae quis voluptas. Quo error optio quae molestiae. Perferendis vel error incidunt inventore blanditiis et quidem adipisci voluptatem.', 'Et cumque dolor nesciunt voluptatem ut ut eaque ea facere. Vero ab impedit ratione. Sed sit doloremque sint rerum tenetur commodi. Aspernatur quibusdam quis illo aut fugit et exercitationem quis vel. Minus mollitia impedit dolores fugit.', 'quibusdam-fuga-tempore', 0, 'publish', '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(5, 4, 'soluta consectetur omnis', 'Officiis saepe nostrum deserunt et laborum recusandae tenetur at doloribus. Exercitationem impedit pariatur deleniti voluptate molestias dolor consequatur dicta. A totam ad vel. Nesciunt architecto ex sunt. Delectus rerum mollitia sunt quas magnam vero voluptatem. Quidem velit itaque repellendus enim magni nesciunt cumque cumque.\n \rRepellendus quasi sunt est fugiat. Quis eius dolores iure neque ipsam sint. Sed expedita omnis et. Aperiam quae asperiores fuga quisquam doloremque excepturi ipsa. Quia itaque consectetur delectus blanditiis quisquam.\n \rMagni ducimus nesciunt vero quis ipsa earum sunt necessitatibus. Et sapiente repellat quo voluptatem explicabo porro voluptates eos sint. Dignissimos ut placeat quod praesentium. Eligendi nihil et et et suscipit et.', 'Dolor asperiores voluptas. Ut voluptatem voluptatem. Itaque cumque non. Dolorem adipisci aliquid fuga itaque sint. Aperiam rerum error molestiae autem aut labore dolor optio. Aut fugiat sit dolorem et est eos incidunt neque.', 'qui-praesentium-rerum', 0, 'publish', '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(6, 2, 'voluptas et repellendus', 'Iste dolore non explicabo quia. Rerum id qui tempora et aut. Aut quidem ad necessitatibus qui. Ipsam sint aliquam asperiores quis vero. Omnis voluptatum qui eum et unde dolorem reprehenderit distinctio non.\n \rLibero molestias similique quisquam voluptates praesentium accusamus. Beatae consequatur impedit ut magnam corporis aperiam est. Harum praesentium unde eum perspiciatis quia. Dolorum provident minus consequuntur nam autem. Sed aliquid quis corrupti ut minus aut ea excepturi.\n \rQuasi placeat ut ut quisquam et voluptatum. Odit dolor possimus excepturi omnis. Modi animi sunt dicta aliquam veniam eveniet aut autem repudiandae. Ipsum earum aperiam esse est nostrum qui dolores et. Inventore ea perspiciatis quod ratione adipisci nihil.', 'Officiis at est eos eaque et illum. Eum reprehenderit magni sed. Sit minus deleniti placeat enim quae recusandae explicabo esse. Hic recusandae soluta quod. Odio temporibus corrupti occaecati rerum sit consequatur.', 'explicabo-et-quos', 0, 'publish', '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(7, 5, 'id fugit unde', 'Aut natus consequatur. Voluptatem sint aut. Qui autem et commodi quod quibusdam dicta ea autem. Incidunt at qui. Voluptatem eum laudantium.\n \rEnim mollitia quibusdam et est omnis. Officia est officia aliquid ut eum soluta. Recusandae aliquid ipsam. Quod ullam perferendis et possimus sint. Omnis ipsum consequatur quasi officiis odit aut minima quisquam quo.\n \rEligendi consequuntur et aspernatur sed dolorem. Et debitis aperiam. Est rerum alias molestiae molestiae debitis.', 'Autem et nemo omnis quo nisi esse. Iusto voluptatem necessitatibus corrupti odio error sit ut facere. Ut ipsum et voluptas eligendi et quae eum.', 'omnis-voluptate-architecto', 0, 'publish', '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(8, 3, 'consequatur sed esse', 'Nihil magnam reprehenderit in qui sunt qui quo esse. Voluptatum quia debitis sit et aperiam. Nam harum reiciendis natus repellat temporibus sunt. Similique et explicabo. Explicabo est autem architecto quasi.\n \rEst sunt eligendi laudantium. Eum occaecati nam dolore sit tempora velit saepe et. Eius laudantium atque cupiditate doloribus quisquam. Quisquam facilis enim saepe. Dolores debitis facilis quam blanditiis mollitia quasi et. Ut omnis ut eveniet.\n \rEa ad maxime. Voluptas at veritatis est. Suscipit consectetur molestias quibusdam autem aperiam illum recusandae praesentium. Recusandae facilis dolorem vel eveniet. Qui ut officia repellat reprehenderit facere praesentium.', 'Magnam libero nulla ea explicabo tempora et qui voluptas. Qui tenetur et rerum nisi ullam est excepturi. Expedita saepe quasi dolor qui. At nihil voluptas qui dolorem. Doloribus quis omnis consequuntur voluptas.', 'ipsum-exercitationem-placeat', 0, 'publish', '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(9, 1, 'sunt voluptatibus et', 'Deleniti ea beatae sit quis quis at. Laboriosam corporis et provident illum id expedita maiores. Cum eum soluta ut corrupti et voluptatem qui asperiores.\n \rFacere dolorem aut non molestiae labore aut in quia eum. Aut quo rerum ea quo. In voluptas commodi debitis facere. Sunt maxime ut. Voluptatem voluptatem et similique sint facere fuga rerum.\n \rOmnis sint ad voluptas eligendi tenetur voluptas. Magni amet hic dolor doloremque est voluptas. Accusamus id aut. Qui minima a sed ex qui. Recusandae nesciunt dicta. Autem voluptas sit ut.', 'Itaque earum sequi in. Et adipisci omnis in alias. Architecto et odit rem. Culpa accusantium ea earum sed iste. Non molestiae delectus ipsum laboriosam libero magni eos ea possimus. Beatae sed sed iste commodi optio adipisci accusantium qui quis.', 'distinctio-sunt-unde', 0, 'publish', '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(10, 4, 'non assumenda molestias', 'Necessitatibus voluptate unde quo vel dolores. Eum ad ab. Aut natus eos voluptas et dolore tempore ea recusandae.\n \rEos ut possimus dolor molestiae voluptatem voluptatibus. Quidem asperiores atque doloribus doloribus sit quidem mollitia quis. Quia velit non libero aut rem alias facilis. Unde qui vero ex nobis facilis veniam quas.\n \rVoluptate rem provident illo similique maxime esse quia. Facilis illo facilis. Animi consectetur eveniet numquam voluptas.', 'Natus autem ea quas. Suscipit ratione voluptatem sit quia tenetur aut vel laboriosam. Voluptas laborum distinctio magni eligendi. Aliquam mollitia velit quia sint et. Voluptatem labore suscipit necessitatibus.', 'aut-similique-magnam', 0, 'publish', '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(11, 2, 'dolorem similique vel', 'Repellendus corporis blanditiis exercitationem non tenetur ab quos omnis. Eum sit enim. Distinctio et iusto nisi magnam occaecati ipsam ipsum. Hic nam inventore.\n \rQuis molestiae est dolorum fugiat asperiores est corporis mollitia. Ut ut in vitae at dolorem minus perspiciatis. Accusamus repellat aliquid.\n \rConsequatur soluta molestiae hic et. Numquam velit et suscipit itaque perspiciatis est deleniti. Labore in enim odit. Id rerum non recusandae.', 'Non nostrum est et atque neque. In itaque non repudiandae labore non dolorem iusto consequuntur. Veniam mollitia et quo minima doloribus est sed.', 'sint-modi-hic', 0, 'publish', '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(12, 3, 'deleniti officia et', 'Atque laboriosam facere quaerat dolorum culpa in placeat et quia. Aut incidunt vitae omnis consequatur dicta nihil quae. Voluptatibus qui in itaque adipisci rerum doloribus velit enim vel.\n \rId eos similique eaque officia. Voluptatem cum incidunt officia non ab maxime totam eius. Esse dolorem dignissimos. Laborum vitae rerum vel dolores. Omnis dignissimos in natus.\n \rAut dolorem voluptatem et itaque molestias sint nihil autem cumque. Corrupti optio eligendi perferendis fugiat praesentium sapiente. Eligendi aut repellat est quod laborum temporibus nulla. Voluptatem et dolore necessitatibus accusamus.', 'Porro quia aliquid. Non distinctio tempore sed aspernatur qui. Est consectetur asperiores corporis quas qui consequatur id repudiandae accusantium. Harum eos autem. Aliquam quaerat consequatur delectus sit esse sequi.', 'iste-et-voluptatem', 0, 'publish', '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(13, 2, 'sunt ut eveniet', 'Sit ut corporis voluptas ea. Id omnis qui porro dolores esse cupiditate consequuntur. Hic accusamus minima eum sed cumque. Similique maxime cumque dolorem autem libero. Et velit quasi ut omnis ex.\n \rNon voluptate temporibus sunt vero velit corrupti. Inventore iure qui qui architecto praesentium voluptatem maxime. Repellendus incidunt possimus doloremque quae id aperiam. Hic dolorem soluta labore aspernatur eum rerum. Fugiat qui molestiae.\n \rIncidunt consequatur iure eum. Nihil ratione numquam rem officia sit ducimus pariatur aut minus. Iste eum et nesciunt. Aut possimus officia nam modi.', 'Quasi voluptatem ut et eaque dicta animi animi. Dolorem corporis minima aut corrupti ut voluptatem. Sint voluptatibus debitis dolorum est laborum autem et est. Saepe deleniti sit molestiae neque quam. Et consectetur omnis.', 'et-eum-expedita', 0, 'publish', '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(14, 5, 'molestiae dolores aut', 'Dolores et dolore maxime nihil. Sed libero velit voluptas voluptatibus. Dolore adipisci iste alias et. Dolor in eum. Nemo voluptatem voluptatem totam blanditiis alias.\n \rQuia eligendi et laudantium veritatis. Inventore neque modi. Nihil non explicabo quaerat explicabo odit dolores sit non nisi. Quibusdam deserunt rem nemo recusandae nihil qui tenetur ipsa enim. Reprehenderit perferendis dolore quia libero.\n \rAliquid sint quod. Non accusantium ipsa aspernatur in ex suscipit dolor tempore aut. Dolor dicta quas deleniti id alias quo repellat dolores.', 'Amet corporis ex ut tempora consequuntur culpa est assumenda. Ut veritatis tempore maxime veniam quia et et ut odit. Ea voluptas non est non commodi enim sed quia at. Recusandae qui suscipit et odit eos et nobis asperiores veniam. Laborum dolore similique rem totam et.', 'quis-commodi-rerum', 0, 'publish', '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(15, 5, 'minus modi excepturi', 'Et quia sed. Ex ut voluptatem aspernatur labore incidunt magni beatae. Dolorem minus placeat repudiandae sit ex.\n \rPariatur voluptas ipsa debitis. Eum non et consequatur eius harum magnam maxime consequatur et. Itaque nulla deleniti incidunt omnis. Deleniti rem atque aut rem tenetur eius excepturi repellat dolorem.\n \rTemporibus asperiores odit sit repellendus magni libero qui debitis modi. In ullam aspernatur et quidem quae. Necessitatibus nisi vel facere iusto. Sequi vitae beatae ea aut. Corrupti qui enim quibusdam quia aspernatur modi. Ex et ipsum deserunt quis.', 'Omnis et qui in suscipit facere. Est iste ullam est non quisquam. Repellat vel dolorem.', 'dolores-quam-tenetur', 0, 'publish', '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(16, 7, 'hello its a teste', 'so that''s how we do it', 'hello veryone', 'sup', 0, 'publish', '2018-11-07 14:14:28', '2018-11-07 14:14:28'),
(17, 7, 'como isso', 'dsadasdsdsad', 'descricaooookkkkkkk', 'tema da casa', 0, 'publish', '2018-11-09 11:49:09', '2018-11-09 11:49:09');

-- --------------------------------------------------------

--
-- Estrutura para tabela `relationship`
--

CREATE TABLE IF NOT EXISTS `relationship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Fazendo dump de dados para tabela `relationship`
--

INSERT INTO `relationship` (`id`, `post_id`, `term_id`) VALUES
(1, 6, 11),
(2, 1, 1),
(3, 9, 14),
(4, 7, 3),
(5, 7, 14),
(6, 7, 1),
(7, 9, 5),
(8, 10, 4),
(9, 14, 14),
(10, 8, 5),
(11, 10, 10),
(12, 14, 11),
(13, 14, 8),
(14, 2, 9),
(15, 10, 7),
(16, 4, 3),
(17, 8, 6),
(18, 9, 2),
(19, 13, 7),
(20, 14, 10),
(21, 3, 9),
(22, 3, 11),
(23, 8, 13),
(24, 12, 3),
(25, 5, 12),
(26, 12, 6),
(27, 2, 14),
(28, 13, 1),
(29, 14, 11),
(30, 13, 6),
(31, 16, 12),
(32, 16, 6),
(33, 17, 2),
(34, 17, 12);

-- --------------------------------------------------------

--
-- Estrutura para tabela `term`
--

CREATE TABLE IF NOT EXISTS `term` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL DEFAULT '0',
  `type` varchar(32) NOT NULL DEFAULT 'category',
  `title` varchar(255) NOT NULL,
  `description` text,
  `slug` varchar(255) NOT NULL,
  `sorting` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Fazendo dump de dados para tabela `term`
--

INSERT INTO `term` (`id`, `parent`, `type`, `title`, `description`, `slug`, `sorting`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'category', 'sit voluptatem expedita', 'Aut officiis et voluptate ex adipisci. Incidunt omnis eos deleniti nam nisi repudiandae. Laudantium quisquam magnam dolore. Voluptatum explicabo facere.', 'aliquam-repellendus-accusantium', 0, 1, '2018-11-07 14:08:37', '2018-11-07 14:08:37'),
(2, 0, 'category', 'carros', 'Quidem quam cumque corrupti ut. Facilis ut soluta architecto reiciendis. Id occaecati commodi. Est sed doloribus.', 'opaopaoa', 0, 1, '2018-11-07 14:08:37', '2018-11-09 12:03:57'),
(8, 0, 'tag', 'voluptas porro accusantium', 'Atque iste est dolor nihil corrupti. Quia omnis recusandae distinctio animi quibusdam cum quas tempore. Similique minus aut reprehenderit possimus accusamus tenetur omnis voluptatem. Rerum ipsam eius autem qui fugit id quo.', 'alias-necessitatibus-quas', 0, 1, '2018-11-07 14:08:37', '2018-11-07 14:08:37'),
(16, 0, 'category', 'jurupeba', 'uma descricao', 'tematico', 0, 1, '2018-11-09 11:57:15', '2018-11-09 11:57:15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(16) NOT NULL DEFAULT 'user',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Fazendo dump de dados para tabela `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 1, '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(2, 'London58@gmail.com', 'Alfreda Lynch', 'e10adc3949ba59abbe56e057f20f883e', 'user', 1, '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(3, 'Jeremie_Shields91@yahoo.com', 'Kitty Kautzer', 'e10adc3949ba59abbe56e057f20f883e', 'user', 1, '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(4, 'Lula_Konopelski@yahoo.com', 'Armani Mayer', 'e10adc3949ba59abbe56e057f20f883e', 'user', 1, '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(5, 'Esmeralda_Leannon@hotmail.com', 'Mr. Maiya Kerluke', 'e10adc3949ba59abbe56e057f20f883e', 'user', 1, '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(6, 'Orrin84@hotmail.com', 'Nellie Monahan III', 'e10adc3949ba59abbe56e057f20f883e', 'user', 1, '2018-11-07 14:08:38', '2018-11-07 14:08:38'),
(7, 'debs@g.com', 'debs', '202cb962ac59075b964b07152d234b70', 'user', 1, '2018-11-07 14:13:02', '2018-11-07 14:13:02');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
