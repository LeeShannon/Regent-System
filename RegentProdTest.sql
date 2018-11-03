-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 02, 2018 at 05:44 PM
-- Server version: 5.7.18
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `RegentProdTest`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

drop database RegentProdTest;
create database RegentProdTest;
use RegentProdTest;

CREATE TABLE `about` (
  `aboutId` int(11) NOT NULL,
  `aboutUsText` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `aboutUsImgUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `missionText` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `missionImgUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visionText` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visionImgUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminId` int(11) NOT NULL,
  `aboutStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`aboutId`, `aboutUsText`, `aboutUsImgUrl`, `missionText`, `missionImgUrl`, `visionText`, `visionImgUrl`, `adminId`, `aboutStamp`) VALUES
(1, 'Voluptatem ex rerum consectetur quisquam velit aliquid aut. Et aspernatur est sit repudiandae nam. Rerum sunt perspiciatis culpa in nostrum et reprehenderit quod.', 'http://www.hessel.com/', 'Dolores id ut aliquid rerum temporibus aut excepturi. Cum quis incidunt tempora explicabo ea quos. Tempore repudiandae ea doloribus fuga animi omnis. Quae optio consequatur natus quam ipsa.', 'http://www.blick.org/', 'Iure nesciunt quo aliquid illo. Ad fuga reiciendis suscipit est aut qui commodi nesciunt. Mollitia sed qui optio qui ipsa quia itaque.', 'http://beatty.com/', 9, '2014-06-30 14:35:06'),
(2, 'Praesentium saepe error ex recusandae. Voluptatum ea voluptatem facilis sunt. Qui quae ducimus omnis nam. Autem natus hic qui.', 'http://www.wisozkkeebler.com/', 'Et omnis tempore et nisi accusantium omnis repellat. Molestias cumque sequi aliquid repudiandae minima. Doloribus commodi repellendus quae voluptate aliquam soluta. In id et consequatur quo odit.', 'http://larson.info/', 'Odit labore reiciendis aspernatur et sit repellendus quo. Numquam repellat ea quia corrupti dignissimos soluta et totam.', 'http://nikolaus.com/', 0, '2002-01-01 21:20:57'),
(3, 'Ab eum voluptas ut quo odit. Laudantium quisquam tenetur magnam facere. Magni eligendi laudantium assumenda voluptatem qui quia animi.', 'http://reynoldsstreich.com/', 'Deleniti in tempora praesentium dolorum. In ut animi quia non. Vitae voluptatem ea et magni maiores deserunt. Repudiandae nesciunt voluptate inventore sit sed ex id.', 'http://www.okuneva.net/', 'Maiores adipisci nihil amet earum. Sed et id similique consectetur voluptatem. Et voluptatum dolorem beatae officiis laudantium officia.', 'http://www.whitecarter.org/', 8, '1997-01-01 03:45:05'),
(4, 'In quia accusantium nostrum eos doloribus soluta. Eaque voluptatem sit eos. Hic eligendi rerum qui esse maxime qui.\nFuga laboriosam mollitia ratione odit quia iste iste. Nihil incidunt ipsum est.', 'http://grimeskohler.com/', 'Voluptas pariatur quod dolorem illo architecto in. In natus beatae velit officia. Ad sed exercitationem quod ratione itaque.', 'http://www.dickikilback.com/', 'Nisi illum eum provident nihil vitae delectus nihil. Cum qui et ea nesciunt alias pariatur iure. Consequatur placeat excepturi molestiae enim alias aut voluptatem velit.', 'http://mcclure.com/', 5, '1974-12-27 16:24:18'),
(5, 'Voluptas quis nihil ea incidunt deserunt occaecati possimus. Voluptatibus aut est quos eaque eligendi ipsa. Eum consequuntur quis molestiae sapiente.', 'http://cartwright.biz/', 'Et nobis doloremque culpa saepe. Excepturi ut nulla earum fuga iure culpa et. Temporibus architecto quae et atque tempora debitis.', 'http://www.batzshanahan.org/', 'Et culpa et et sequi modi et. Laboriosam sit dicta modi libero molestiae et reprehenderit.\nId non non recusandae mollitia. Doloribus fugiat delectus porro natus.', 'http://medhurstyost.com/', 0, '1977-05-20 11:31:18'),
(6, 'Provident reprehenderit natus saepe dolor enim. Ad hic non dicta. Aliquam iure est architecto voluptates eum sed rerum.', 'http://greenabshire.com/', 'In magni dolor laborum praesentium optio sint. Quia aliquam suscipit quia quos et nisi alias fugiat. Officiis laborum repellendus ut libero. Laudantium dolorum odit iste dolores sit.', 'http://satterfieldgaylord.org/', 'Quibusdam in qui sunt sunt dolor odit. Ut quo a veritatis labore omnis nam aperiam. Nam veritatis neque officia doloremque. Inventore nesciunt quos sint autem.', 'http://considineokuneva.org/', 8, '2004-07-11 05:58:05'),
(7, 'Sed quo consectetur reprehenderit ex beatae. Cupiditate recusandae dolorum voluptatem quibusdam tenetur. Optio et architecto vero consequatur et harum. Eum quo eum architecto accusamus qui sunt cum.', 'http://www.ornboehm.com/', 'Accusamus esse delectus rerum perferendis odit. Doloremque incidunt eaque sapiente. Distinctio veritatis fugit quaerat eveniet.', 'http://sporer.com/', 'Ex magni itaque nam sit voluptates. Consequuntur quaerat illum aliquid sunt architecto dolorem. Cupiditate nihil ea doloribus tempora earum nam error eveniet. Omnis eaque earum omnis est.', 'http://www.morissette.net/', 7, '2007-12-20 02:04:31'),
(8, 'Voluptatum laudantium modi laudantium molestias. Ratione vel expedita inventore vel ab eius enim. Voluptatem ut cumque perspiciatis est.', 'http://www.rueckerterry.com/', 'Quo nulla fugit officia qui aliquam adipisci. Ipsa aut et ut fugiat repudiandae quis fugiat dolore. Est in et in ut voluptates qui autem.', 'http://friesenquitzon.net/', 'Fugit nisi est minima ab vel. Odio ipsum eos ut autem. Dolorum nesciunt facere ea autem ipsam fuga. Ipsam in similique quam eveniet dicta eos reiciendis deserunt.', 'http://mckenzie.com/', 3, '2015-01-02 21:22:54'),
(9, 'Dolores eos blanditiis sunt numquam facere. Non quis quis quod dolores repudiandae. Amet et error velit non quibusdam aliquid et voluptas.', 'http://www.sawaynroberts.com/', 'Eum nobis eaque aspernatur. Esse quis nesciunt eos itaque. Beatae dolores possimus quas at voluptates quas et autem. Asperiores quo ullam nam blanditiis rem expedita nisi.', 'http://cummeratabergnaum.org/', 'Animi est rerum ut ut. Architecto voluptas laborum praesentium iste. Nihil autem non placeat quam ullam laborum.', 'http://wisoky.com/', 6, '2002-03-13 11:12:52'),
(10, 'Et facere porro vel non sed quasi amet. Quo neque tempore at dolorem quas eum aut. Adipisci ut cumque omnis autem consequuntur corporis excepturi.', 'http://wisozk.com/', 'Quasi minima molestiae rerum dolor et. Exercitationem corporis voluptatum exercitationem ipsa. Est est assumenda aut quia.', 'http://hayes.com/', 'Corporis ipsa eveniet ad perspiciatis mollitia modi. Molestias eum placeat culpa et quibusdam. Quo qui rem odit. Quis dolores qui odio cumque optio voluptatem.', 'http://hodkiewicz.com/', 6, '2013-10-26 16:09:47'),
(11, 'Numquam corporis officia veniam quia. Natus sint quas dolore dolorem aut optio. Impedit necessitatibus soluta iste mollitia quod quia.', 'http://goldnerhettinger.biz/', 'Repellendus sed et explicabo a voluptatem. Consequatur quisquam consequatur aut quam quia. Aspernatur debitis labore distinctio a explicabo. Eos ut deserunt reiciendis blanditiis rerum quaerat ut.', 'http://harvey.net/', 'Et culpa quia id ut in. Nisi neque tenetur eum molestias est et. Omnis voluptatibus provident et id aut. Quo cumque in quas molestiae et quisquam.', 'http://www.hane.com/', 7, '1987-10-19 11:02:02'),
(12, 'Dolores placeat nam alias voluptatem dolorem. Dolorum maiores nesciunt eum ipsam. Provident facilis et nisi qui enim eveniet. In harum dolorem blanditiis ut.', 'http://denesik.info/', 'Sed dolores ea facere rerum nisi. Totam et ratione deserunt amet et. Sit vitae in enim ipsum omnis unde eius.', 'http://www.batzmonahan.biz/', 'Nam quidem asperiores natus dolorem minus ea suscipit sunt. Eveniet temporibus impedit vitae esse. Consectetur vel qui eum sequi ducimus.', 'http://www.schummwehner.com/', 0, '2008-08-16 16:02:57'),
(13, 'Recusandae eum omnis minima ipsam ab. Ut quos iure quam voluptatem non reiciendis dolore. Est ut et doloribus.', 'http://klocko.com/', 'Voluptatem et ab quisquam occaecati. Aut corporis magni ab sunt ut. Sunt ea enim est sapiente deserunt. Eos facilis voluptatem dolores qui sed ea saepe ratione.', 'http://boehm.org/', 'Quam dolorum voluptate soluta aut. Autem quia voluptatum perspiciatis excepturi. Mollitia voluptatem et et dolor eum. Adipisci corrupti suscipit error. Amet voluptate sint sed maxime accusantium.', 'http://www.kleinkiehn.org/', 2, '1971-11-13 22:56:42'),
(14, 'Eos natus vero quam architecto quo et. Sed in iste consequuntur veniam. Ea vel quis in ex.', 'http://hillskautzer.com/', 'Qui recusandae est ipsum et rerum dignissimos. Est aliquid quia sed nostrum animi. Iusto vel omnis illum deserunt consequatur. Quaerat alias non recusandae sint cumque voluptatem aliquid.', 'http://windler.com/', 'Voluptas sint aut aut officia. Sunt ad occaecati modi non quaerat. Exercitationem rerum et ducimus est tempore quod exercitationem.', 'http://www.kassulke.biz/', 7, '1981-05-27 12:13:24'),
(15, 'Vel nihil magnam nesciunt. Non qui quia eius et sapiente. Veniam impedit molestias totam recusandae exercitationem totam in. Earum aspernatur laborum aperiam occaecati.', 'http://www.kozey.org/', 'Voluptate fuga id porro sequi. Qui perferendis sequi et libero est. Id rem odio delectus vero placeat est et. Ad fuga sed voluptatum quas ipsum dolores est.', 'http://kihn.com/', 'Officia consequatur earum asperiores dolorem labore eos dolor. Repellendus pariatur dolore et ut dolores. Iusto enim ex et illum et.', 'http://www.gutmanngutkowski.net/', 4, '2003-05-03 16:27:56'),
(16, 'Ad et fugiat est culpa quam sunt sequi. Repellendus omnis et provident sed doloremque rerum aut. Aut est consequatur doloribus consequatur ipsum rerum. Numquam qui earum quam.', 'http://grant.com/', 'Ut quisquam cupiditate quis consequuntur possimus aut. Officia itaque esse quo amet quae dolores pariatur. Itaque debitis fugit iste nam autem. Et quibusdam rerum enim inventore aperiam fugit ea.', 'http://ward.org/', 'Pariatur tenetur quam ipsum molestiae atque ut. Necessitatibus corrupti consectetur aliquid dignissimos harum non animi asperiores. Rem ipsam quae quisquam culpa. Aut non qui ut culpa qui architecto.', 'http://heidenreichkshlerin.info/', 5, '2012-03-05 01:00:01'),
(17, 'Qui quis ut sed consequatur optio occaecati neque. Quod quia ipsam fugit. Saepe dolor modi ea est.', 'http://www.ullrich.com/', 'Consequuntur debitis temporibus cum sint voluptatem. Culpa eaque aut omnis est saepe dolores quis. Commodi at tempore hic.', 'http://www.bosco.com/', 'Eos perferendis perferendis sunt repellendus. Impedit assumenda vero quia omnis dolorum voluptatem.', 'http://www.schmitt.com/', 8, '1987-09-15 05:34:34'),
(18, 'Labore id velit quo a et neque facere. Corporis eos suscipit qui ipsa. Nulla sed vero minus unde est quis ratione. Assumenda possimus molestias provident ipsa quis facere reprehenderit.', 'http://hesselrogahn.net/', 'Voluptas quos rerum accusamus repellat sint provident minima. Repellat quod culpa rerum sit eaque suscipit.', 'http://kunze.biz/', 'Odio eligendi blanditiis officia eligendi soluta. Recusandae perspiciatis voluptatem iusto velit vitae. Explicabo quas maxime omnis iure nemo aperiam.', 'http://www.denesik.com/', 3, '1974-01-02 00:48:43'),
(19, 'Consequatur dolorem inventore at et laboriosam. Voluptas quas est quam qui. Ex molestias qui qui voluptas sequi.', 'http://www.ohara.com/', 'Esse et quaerat quia ratione ducimus. Quo et ea necessitatibus qui ipsum. Ut modi sapiente tempora doloremque earum. Sunt rerum aspernatur officia facere a quo. Omnis id qui doloribus optio vitae.', 'http://cruickshankbecker.info/', 'Aperiam harum et inventore repellat omnis magnam dolore. Et vero totam voluptatem rerum sint sed. Dolorum molestias suscipit ea. Blanditiis sint modi nobis ut cumque saepe eos.', 'http://schimmel.biz/', 9, '2003-06-28 04:29:06'),
(20, 'Molestias quo id id quos. Adipisci sint veritatis dolores pariatur aut omnis. Corrupti eum et aperiam occaecati et enim.', 'http://www.reinger.com/', 'Ullam amet quae repudiandae est porro. Et dolorem facilis provident numquam voluptatibus fugit esse accusamus. Sint laudantium aut quas explicabo temporibus delectus.', 'http://www.greenfelder.com/', 'Eveniet porro quia cum dolores similique atque. In rerum ab placeat aut. Quod voluptatum vitae est provident expedita explicabo. Ratione deleniti quia consequatur aut.', 'http://skilesthiel.net/', 3, '2004-12-26 22:38:01'),
(21, 'Incidunt et autem libero tempora ipsum ut. Cupiditate suscipit provident quia sed modi. Non expedita expedita necessitatibus sunt fuga sapiente suscipit.', 'http://www.mantekuhic.info/', 'Ipsa voluptas eum vel consequuntur. Ullam nihil doloribus perferendis in nihil. Maxime in aut voluptas nulla est ipsum ut labore.', 'http://jakubowskiherzog.info/', 'Odio quibusdam vel dignissimos. Libero tempora eaque animi architecto. Aspernatur ea ex impedit vel.', 'http://www.bayer.com/', 6, '1973-08-01 15:44:29'),
(22, 'Porro aut ipsum quos eum aliquid voluptate. Est nisi deleniti quia distinctio voluptatem. Consequuntur voluptas voluptatum deserunt accusantium. Sit perferendis aspernatur minima et.', 'http://www.greenholt.info/', 'Eum ut nemo omnis enim. Numquam consequuntur ducimus nam voluptas id sint autem. Quos numquam non quo sint aut.', 'http://www.klockotorphy.com/', 'Non vel provident veritatis porro qui corrupti est. Suscipit cum veritatis odit culpa. Ut et voluptatem et iste sed quasi harum.', 'http://www.parisian.com/', 2, '2007-04-29 19:23:27'),
(23, 'Ut rem consequatur sint optio voluptas. Vitae libero id officia velit quo praesentium. Assumenda quo culpa nisi numquam sit sit itaque. Eos quia ex ratione sapiente.', 'http://www.eichmann.com/', 'Dolorem amet consequuntur cupiditate quisquam molestiae et. Laboriosam ut voluptatem repudiandae quia nostrum aut dolorem. Ut odio nihil sed ipsam.', 'http://www.hintzgreen.com/', 'Minima hic eius minus dignissimos. Sunt consequatur placeat nesciunt perspiciatis quia eius. Tempore tempora unde maxime.', 'http://www.sanford.com/', 1, '1976-06-27 05:17:57'),
(24, 'Ipsum et ut deleniti. Quasi sit iusto fugiat non qui tempore. Ipsum voluptatem cum deserunt et. Consequatur ea sunt consequuntur aut perspiciatis earum neque.', 'http://braun.com/', 'Quibusdam aut ut consectetur ut minima et. Rerum eligendi officiis suscipit molestiae quasi esse. Doloribus saepe amet voluptatum. Numquam est perferendis vel vitae id sit.', 'http://www.steuber.com/', 'Et atque nam ab illo praesentium ut animi. Soluta odit iusto in dolor ipsum laboriosam nesciunt. Vel voluptates optio facilis eos earum quia.', 'http://www.cummerata.com/', 5, '1977-03-18 22:29:07'),
(25, 'Possimus autem vitae consectetur et cumque. Ipsa consequatur omnis repellendus quia est deserunt ea.', 'http://maggio.com/', 'Et nihil esse sed eveniet quo adipisci. Fuga dolorem et suscipit ea saepe aspernatur quae autem. Assumenda quidem vel voluptatibus reiciendis veniam perspiciatis quasi.', 'http://casperveum.com/', 'Dolorem et sit nihil. Quia aliquid sit expedita omnis omnis voluptatem dignissimos. Ea aut suscipit hic occaecati perferendis explicabo in. Mollitia tempora nemo dignissimos.', 'http://langterry.com/', 5, '2001-05-22 04:10:48'),
(26, 'Voluptate aspernatur doloribus ut. Voluptatem est nihil et magnam et. Esse autem culpa autem rem et quibusdam eveniet. Et tempore rerum magnam omnis rerum.', 'http://www.mayer.com/', 'In ullam aut explicabo debitis temporibus. Sapiente vitae totam libero dolores libero.', 'http://langoshmarvin.com/', 'Qui quo rerum quidem velit ab. Officia laboriosam laboriosam quia laborum tempore. Et omnis ipsam omnis saepe aliquam.', 'http://botsford.info/', 0, '2005-03-15 18:59:47'),
(27, 'Excepturi esse voluptatem quis qui nesciunt ea tenetur. Minus sit accusamus sed odio earum. Corrupti omnis ut tempora omnis sequi fugiat. Similique reprehenderit accusamus et aut rerum.', 'http://schmitt.biz/', 'Asperiores aut ullam ea dolore est aut assumenda. Dignissimos qui quisquam tempora adipisci. Ab dolor ut eos vitae porro voluptas mollitia dignissimos. Aperiam iusto soluta aliquam quo neque est.', 'http://toy.com/', 'Necessitatibus non qui quod quaerat voluptate. Et qui voluptatem consequatur consectetur. Quam qui consequatur dolore odio deserunt asperiores dolor.', 'http://www.hintzkohler.com/', 2, '1983-11-28 15:28:57'),
(28, 'Modi aut velit at quia aut dolore. Doloremque ut repellendus distinctio corrupti inventore. Quis vel temporibus ex ut voluptatem et exercitationem.', 'http://jacobi.com/', 'Vitae at ut asperiores amet. Et molestias deleniti doloribus perferendis impedit quisquam blanditiis. Doloribus doloremque quibusdam aperiam inventore est possimus.', 'http://www.thompson.com/', 'Omnis molestiae recusandae ipsum neque amet ut eius quidem. Esse fugiat nihil est omnis aut facere. Est ab commodi et est fugit. Vero dolor vero repudiandae.', 'http://www.schultz.net/', 3, '1991-05-04 06:36:32'),
(29, 'Error molestiae ea nulla assumenda et ut aut repellat. Illum excepturi laboriosam eligendi amet facilis. Rerum totam facere laboriosam. Et qui autem et doloribus.', 'http://www.senger.com/', 'Velit quis aliquid assumenda exercitationem voluptas consequatur. Omnis doloremque ut esse facere sit sit. Ullam quisquam voluptates ut id corporis iusto.', 'http://littel.com/', 'Natus aliquam quidem qui sed ipsa. Quos quaerat voluptas consequatur consectetur fugiat nam iure. Repudiandae quia delectus iusto sunt. Et sed aut quo dolores.', 'http://www.handbreitenberg.info/', 9, '1989-05-08 19:45:14'),
(30, 'Officia aut velit laudantium inventore. Sunt dolor assumenda repudiandae et error alias. Quia adipisci natus explicabo et. Velit maiores sed voluptas temporibus veritatis et.', 'http://jacobigoldner.com/', 'Facilis rerum quis et aut. Non enim libero alias aut pariatur necessitatibus dolorem voluptatem. Reiciendis omnis ipsa porro consequatur sed rerum asperiores quasi. Esse quia nihil in qui.', 'http://www.leffler.com/', 'Ratione et eligendi rerum repellat quia excepturi quos. Accusamus est incidunt rerum aut et eum rerum. Velit praesentium minus et accusamus doloribus perferendis. Occaecati error sit illum sint eius.', 'http://www.cronin.net/', 8, '1986-12-10 14:46:35');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminSurname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminUsername` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPhoneNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adminEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adminType` int(11) NOT NULL,
  `adminStamp` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `adminName`, `adminSurname`, `adminUsername`, `adminPassword`, `adminPhoneNumber`, `adminAddress`, `adminEmail`, `adminType`, `adminStamp`) VALUES
(1, 'Kayley Spinkar', 'Haley', 'bruen.melyna', 'df2b9eccddb4f94f442de97447ae6d7f8d08999c', '+29(5)9041773394', '6338 Cruickshank Plain Suite 358', 'schiller.americo@example.org', 9, '21:41:23'),
(2, 'Dorcas Paucek', 'Mueller', 'ukautzer', '7cbe42790f0b6f5091421e51a93bd5bf3c8e7265', '(299)194-5681', '14378 Destin Circle', 'abe34@example.com', 6, '02:23:01'),
(3, 'Willa Schiller', 'Oberbrunner', 'karianne.feil', 'f6298c721c84afa95a443d89f0cb9949bae83d8a', '340-517-5751x109', '9530 Kertzmann Rest Suite 628', 'lula.considine@example.net', 7, '20:56:32'),
(4, 'Fredy Jerde', 'Beier', 'terry.cody', '02f92203ef885395159622c2cac1d153d655d405', '(812)142-2927x5196', '404 Carlo Tunnel Apt. 015', 'zhamill@example.net', 8, '20:39:17'),
(5, 'Una Baumbach', 'Bayer', 'vauer', '474855240bbc5d77d37b614cda966f139135cc41', '(560)054-3848', '527 Myrtis Landing Suite 754', 'wmoen@example.com', 4, '13:24:32'),
(6, 'Modesto Mraz', 'Towne', 'bridgette58', '49fc063a33dddb9affdd6c8b23f5477de0b9cbc1', '560.007.6884', '7493 Schmeler Keys', 'rauer@example.org', 8, '23:23:58'),
(7, 'Vern Turner', 'Crooks', 'jarred75', '959c03516d7911043dc59701c2733485aab7d430', '(772)761-7009x141', '471 Diamond Mount', 'ignacio53@example.net', 1, '01:21:56'),
(8, 'Miss Therese Walter', 'Rutherford', 'erdman.autumn', '9bf6d1f60fc5bdf1b75aec977c1a770856b4ca7f', '1-818-193-0102', '46350 Giovanna Lodge Suite 972', 'gcormier@example.com', 7, '19:39:26'),
(9, 'Flavio Doyle', 'Weimann', 'schamberger.hilma', 'c38ed412a877dd7cb9165f80df8aea0df11e4afc', '267.147.0533', '93267 Hand Branch Apt. 219', 'xhowe@example.org', 2, '12:39:23'),
(10, 'Newell Mills', 'Berge', 'vcartwright', '5d1d681dcec8c5ed48459d0cc8cbeb393d71f8df', '1-196-112-3131x14598', '47418 Morton Shores Suite 254', 'maude22@example.com', 9, '04:12:53'),
(11, 'Miss Theresa Bogan', 'Runte', 'avery13', 'd327a378ab939c076c9cf04e71f099f35e10513f', '(656)394-1670x980', '40509 Leanna Manors Apt. 193', 'kshlerin.juston@example.org', 1, '12:45:30'),
(12, 'Pearl Luettgen', 'Larkin', 'haskell.fahey', 'bd9721bb8a7dca6758dcc9e826bd872845fdb22b', '(763)855-6715', '2524 Wehner Lake', 'nkemmer@example.org', 4, '22:57:36'),
(13, 'Miss Ressie Fadel III', 'Hamill', 'jaskolski.scot', '06cbefe501ac9614b37de2e5012a47ec395e1801', '(309)032-9293', '15357 Einar Tunnel', 'francis52@example.com', 8, '14:22:45'),
(14, 'Deshaun Barton MD', 'Ryan', 'odessa83', '8b391b40a351180516726750d7d092cdde93c800', '406.418.2496x2810', '9782 Brionna Cliff Suite 772', 'gerlach.jennings@example.net', 9, '06:04:54'),
(15, 'Raven Jacobson PhD', 'Weissnat', 'wstamm', 'd7263d6f6fa755ab6cefe42ee9c8cc019bba6f13', '07314833075', '89845 Wilderman Ville Apt. 315', 'agerhold@example.com', 2, '05:20:55'),
(16, 'Keeley Torp', 'Schmidt', 'turner10', '0c65b6d58200e48ead795205b4df6b5e67cbf2af', '1-015-250-2391', '42347 Koch Walks Apt. 859', 'ohansen@example.com', 7, '16:48:29'),
(17, 'Ludie Tillman', 'Johns', 'prenner', '76f5d7a27e4600bbee8ff105ea349664c3d1df0d', '1-456-310-3491x9098', '77607 Osvaldo Brooks', 'gcole@example.net', 3, '17:28:12'),
(18, 'Lexie Jones', 'Kihn', 'larry.nienow', '531ea55627b43d1765b2529e00862f88fc772d5a', '07690827749', '38335 Flatley Mountains', 'hillary92@example.net', 1, '15:27:13'),
(19, 'Aryanna Pfeffer', 'Kassulke', 'johnson.abby', 'a6080862e1eea12442caac1ec33a9a59abd1a648', '874.011.3628', '038 Farrell Fork Suite 837', 'vhintz@example.com', 5, '21:27:41'),
(20, 'King Hamill II', 'Ortiz', 'charley60', 'd359171ce3a5f9c69d9acaf7f65cb26496bd7715', '1-638-067-7577x11892', '96966 Torp View', 'wokuneva@example.com', 0, '13:16:56'),
(21, 'Birdie Denesik', 'Dicki', 'carroll.ted', 'b2efc31bf3ae0b2a8b7a33cb5023495fd5ee0532', '+39(2)0846927506', '157 Jayda Roads Apt. 004', 'gryan@example.net', 6, '14:54:12'),
(22, 'Filiberto Larson', 'Pollich', 'donato.gibson', '288bf4e0f3d4983b6c6318c6c443f1f32ed5bcaa', '09599450411', '7099 Violette Mall', 'bret36@example.net', 5, '23:01:14'),
(23, 'Dr. Adele Ruecker', 'Bailey', 'lemuel.waelchi', '875b3b337fed20c84ec465dc4da0f126d1bce467', '1-743-333-7204', '0401 Israel Port Apt. 402', 'qrempel@example.com', 6, '12:01:48'),
(24, 'Mr. Kurt Bailey I', 'Littel', 'stokes.claire', '01a6b33cc080a8f5b73251f4d2e6274836ee5b96', '893.312.9620', '9178 Leanne Roads', 'sammy36@example.com', 2, '12:12:21'),
(25, 'Dr. Alek Johns', 'Homenick', 'hayes.meggie', '69aa90c1b65a98df2eed14a7978bada48a6de419', '(536)078-4224x0869', '599 Angelica Inlet Suite 042', 'terry.brayan@example.net', 8, '13:32:01'),
(26, 'Ariane Cartwright', 'Turner', 'ethelyn02', '79e52549ed4fe52c1d34feb53f2bc013006feade', '381-118-1066x6649', '6666 Griffin Brooks Apt. 285', 'april55@example.net', 8, '11:34:48'),
(27, 'Erling Nikolaus', 'Dicki', 'orie92', 'ced0229c83d7616935fce981cd432e0ca2d94b2f', '(082)645-3648x50648', '5948 Abel Lodge Apt. 639', 'augustus.langosh@example.com', 0, '14:54:15'),
(28, 'Theron Kessler', 'O\'Kon', 'nestor.towne', '297729f611b61bd10cd4107052c2c1459b41f944', '+27(2)0318590851', '27560 Jamarcus Roads', 'reichert.mazie@example.net', 5, '13:32:51'),
(29, 'Kristy Langosh I', 'Tremblay', 'ursula44', 'd04c2af83afadb284fd5b5764a7d4de77667c169', '02186419691', '40032 Ona Neck', 'annabell89@example.net', 8, '21:23:01'),
(30, 'Marty Balistreri', 'Rogahn', 'gquigley', '69b3664ede12c2cbc67c33a2f414b3997418c6fd', '291.651.2667x81564', '379 Palma Mountains', 'aliya59@example.com', 3, '02:34:59'),
(31, 'Beau Metz Sr.', 'Dicki', 'bhahn', '54422978c3f3106aea1b275386bab9ca73862f99', '550-144-3139', '18137 Roberta Point', 'rubye.mosciski@example.net', 3, '10:30:07'),
(32, 'Taryn Kohler', 'Deckow', 'torp.eve', '5b0667db50a4b0278b10d35b58bb38ebbf16e9d6', '214.892.0176', '06031 Conroy Trail Suite 124', 'axel.schoen@example.net', 0, '11:23:36'),
(33, 'Lola Osinski', 'Halvorson', 'giovanna07', '55e776160e2f6ab291ee9f507275b2158284d9f0', '04139525971', '629 Penelope Land Suite 119', 'eulah08@example.net', 5, '13:51:24'),
(34, 'Elton Schultz', 'Bechtelar', 'to\'reilly', 'c333cff966a61b7ff5cc9eb3fff09b91af6942e1', '+02(6)0137824048', '8477 Sipes Meadow', 'considine.moshe@example.net', 9, '18:59:06'),
(35, 'Shaylee Johnson', 'Stanton', 'alisa48', '7787ee8b587e94977f93d602de1525860ea0e262', '+69(7)7868637153', '57469 Wunsch Lakes', 'lubowitz.lela@example.com', 9, '15:37:01'),
(36, 'Elza Crooks', 'Pfeffer', 'aidan.tillman', 'cdb961f3fac3f51ecc25065eee3063219826895d', '1-252-629-5369', '69224 Beverly Point', 'florida.ratke@example.org', 1, '03:05:06'),
(37, 'Marilyne Senger', 'Hegmann', 'cwolf', '6f30fa3a3e5db2cfa886cdb2b30f344043fda468', '1-513-633-0872', '1458 Charles Neck Apt. 913', 'thalia.schneider@example.net', 7, '21:07:17'),
(38, 'Lou Brakus', 'Schaefer', 'raymundo41', '1fc0d57f1a4b1398052ea75ac7fa3039669f214f', '(399)508-4011', '75510 Schuppe Camp', 'ydickinson@example.org', 8, '22:51:08'),
(39, 'Prof. Buford Breitenberg', 'McCullough', 'weber.easter', 'bb14b35138f8f3d12874e3fe1ca2ad5bd718b1fe', '1-135-784-1128', '97473 Rodriguez Land Apt. 424', 'akulas@example.com', 1, '02:18:48'),
(40, 'Julia Leannon', 'Hodkiewicz', 'rohan.cristina', 'a28eb756016d88aabbed34097ad2e7056b1a0173', '495.220.5116x11988', '666 Maye Burgs Suite 693', 'bfadel@example.org', 5, '03:20:57'),
(41, 'Dr. Griffin Brakus Sr.', 'Will', 'julie24', 'e88c4569db1a4591813c0a812a3cf5d890606d86', '580-553-0077x462', '332 Sanford Drive Suite 919', 'zoe.prohaska@example.org', 5, '02:05:50'),
(42, 'Nicolas Runolfsdottir', 'Emard', 'clovis.lindgren', '416a9514fccc4b1e98fa496a9a1278866fe538b6', '822-409-9131x876', '103 Nettie Branch Suite 582', 'deshaun06@example.net', 2, '10:44:03'),
(43, 'Prof. Clarabelle Lebsack', 'Gutmann', 'andrew30', '295aa86ab67a2f32c1366317e23262fa9621813b', '1-078-653-6185x1049', '49752 Stokes Oval Suite 831', 'abbigail00@example.com', 4, '10:05:19'),
(44, 'Earnestine Wintheiser', 'Hettinger', 'metz.london', '7fe13de111e62156706aebf7e7c7a928a95c8ce2', '1-505-153-8798', '925 Karine Lock Apt. 798', 'labadie.marilie@example.org', 0, '04:10:07'),
(45, 'Mr. Arnulfo Jacobs III', 'Bartell', 'mazie.ortiz', '5e3749aaa40130d60c38d36ccceab5ab0b020ac0', '(416)313-0466x3380', '148 Tromp Hollow', 'oratke@example.org', 6, '05:25:31'),
(46, 'Eleanore Beahan Sr.', 'Corwin', 'mitchell.wilfrid', '9198c25275c67d7712c39f73d7275663bd145cfd', '(707)245-8997', '8771 Hills Trail Suite 331', 'haylee95@example.com', 3, '03:02:11'),
(47, 'Dr. Marcelino Veum I', 'Casper', 'gfritsch', '3d8f0d62a2a5803d7f3753c46e4ed37ebdb980a2', '521.848.5302', '232 Hulda Squares Suite 521', 'schoen.cordell@example.org', 4, '08:10:43'),
(48, 'Brittany Bosco', 'Steuber', 'jrussel', '0482fdde894ceedf55fa9f5305352f7535ca460b', '(502)952-0244', '14298 Batz Falls Suite 643', 'schroeder.edgar@example.net', 6, '19:59:56'),
(49, 'Malika Vandervort', 'Kreiger', 'aswaniawski', 'c10048170ea438ce0c9f1594ee325a55077c83b6', '(600)391-3830', '524 Minnie Valley', 'orpha91@example.org', 6, '03:49:33'),
(50, 'Miss Telly Quitzon', 'Rutherford', 'ujacobs', '9cea6a4ffbce2caa42c8f531e0fee280ec50c989', '1-448-893-8883', '795 Nader Spring', 'steuber.jacinthe@example.com', 4, '04:59:55'),
(51, 'Miss Martina Lockman', 'Stanton', 'jacques58', '56609bd5a0754e04b1a4194e739c3ba2d3c70f61', '572-328-2378x865', '24229 Gulgowski Turnpike Suite 472', 'malachi16@example.net', 3, '04:20:54'),
(52, 'Mrs. Michaela Haag', 'Schulist', 'smith.yvette', 'f0e44e88f109870c6a00a796b275e9b0cb4f4d06', '804.753.0933x6242', '191 Von Isle Apt. 548', 'myrtice.o\'conner@example.com', 8, '14:02:08'),
(53, 'Mikayla Lang', 'Koelpin', 'o\'connell.aimee', '332ce5284802edde7ff60bcae79c8fc0a404e2d2', '1-969-412-7758x233', '116 Angela Mountains', 'akuhn@example.org', 1, '22:31:54'),
(54, 'Lois Lockman', 'Corkery', 'daugherty.jensen', '97a490e28b2d559fd8f9a91a6bd8db2dcbecd7cb', '+08(1)6652605397', '579 Walsh Hills', 'joel97@example.net', 0, '14:17:46'),
(55, 'Dr. Erica Gerlach Jr.', 'Sanford', 'mateo.ziemann', '0da7b2afa647de20cf4d7e58f317c184ffabfe2c', '1-245-013-7416x113', '944 Dale Row Suite 406', 'tamara.collins@example.net', 3, '07:37:11'),
(56, 'Dr. Carlo Durgan', 'Pacocha', 'lois71', '8c25b46dc72d0ee7f0df62dae2b9d84bbb2e95c1', '1-457-356-4037x2002', '397 Alberta Gateway Suite 791', 'floyd.okuneva@example.org', 4, '11:02:29'),
(57, 'Prof. Tiara Bechtelar II', 'Mayer', 'tina.hegmann', 'bb120e76ad07d1a353c81ebc32d230788bf246d2', '1-398-524-6036x14863', '25876 Joanie Lights', 'grant29@example.org', 3, '06:04:58'),
(58, 'Rogelio Jaskolski', 'Glover', 'kasandra69', '8447a50feabff8c29e20ced7780f213960fe9462', '1-709-987-3824', '239 Colton Wells Apt. 850', 'metz.meghan@example.com', 4, '12:51:38'),
(59, 'Tania Will PhD', 'Towne', 'edyth.dickens', '937fc44daa369a6f42d71e25f2cd8583f03b527a', '(669)982-5842x38141', '925 Mortimer Mountains Suite 803', 'osporer@example.com', 1, '12:37:46'),
(60, 'Darrion Friesen', 'Langosh', 'karianne91', 'b8e8e52fbe21388b64cec1947b1a9385ce2c78f6', '(427)577-4561x31509', '54322 Dee Garden Apt. 857', 'ihayes@example.org', 5, '06:27:29'),
(61, 'Ludie Schmidt', 'Shields', 'jamar.mclaughlin', '2a935395dab2ea8404cd721ebfaf402fcc0c5e48', '1-535-927-9154', '786 Funk Hill Suite 430', 'bashirian.bennett@example.net', 6, '12:04:56'),
(62, 'Landen Davis', 'Keebler', 'xmetz', '1fe5afff79e8b4adb76fd1984dfa853ee2f82d14', '462.921.7809', '3078 Towne Highway Apt. 041', 'beer.daphney@example.com', 7, '11:01:36'),
(63, 'Leatha Douglas', 'Schmidt', 'alexane.gleason', 'caad15c9f77b6e0ef12852801f655fa0d77dffd1', '(220)684-4456x106', '50692 Rice Square', 'qleannon@example.org', 7, '08:50:39'),
(64, 'Micaela Breitenberg', 'Konopelski', 'marjolaine.mosciski', '14bcc444006ee8074ccc3346d420835c3021a689', '01362483782', '957 Alvera Rest', 'auer.godfrey@example.net', 4, '14:16:25'),
(65, 'Meredith Harris', 'Romaguera', 'greenfelder.levi', '0032d8adee2565d53c97c3a4cbe58e447bdbd8a4', '773-170-6509', '055 Tomas Crest', 'destiney33@example.net', 8, '09:05:14'),
(66, 'Keanu Heaney III', 'Hammes', 'erna98', '62543999f1a1d0c20892db014ed63fa445f1c79c', '161-250-3925', '629 Emmerich Pines Suite 434', 'patrick.kilback@example.com', 3, '19:09:45'),
(67, 'Ora Blick', 'Auer', 'crona.chanel', 'fb3dbf423dd659376d47179d49fd11cfae23c282', '329-295-8640', '3843 Jerry Parks', 'owiegand@example.com', 2, '08:54:50'),
(68, 'Allie Strosin', 'Metz', 'eduardo.kiehn', '9bb05a2b106996cc136371d3c31e818a2262c6fc', '(353)391-3544x78124', '03432 Brakus Haven Suite 782', 'larson.shad@example.com', 9, '12:09:13'),
(69, 'Luna Blanda', 'Goldner', 'adela53', '5bcb5771b48afd7f46c57929915d0066b4673dde', '447.394.9985', '206 Lemke Stream', 'marlee.kohler@example.org', 9, '05:50:12'),
(70, 'Kelsi Feil III', 'Hilpert', 'enoch.mertz', '0a132f5dcc0680a8239edf80ed7b53119ff85e91', '(449)520-9261x6438', '50498 Pfeffer Course Apt. 808', 'marks.anjali@example.org', 0, '09:14:12'),
(71, 'Dr. Meda Jacobs MD', 'Romaguera', 'pansy.zboncak', '7079d824ff63dc6fd9d85d8fcc0bf4dc48e3053e', '08633302348', '92147 Mueller Extensions', 'ddeckow@example.net', 9, '20:11:58'),
(72, 'Mr. Regan Lindgren I', 'Kerluke', 'eliane87', '868a2aa2eae1837835bb772640f96be3d2689713', '343.940.0317x43902', '1392 Ullrich Creek', 'gusikowski.jamir@example.net', 3, '00:28:32'),
(73, 'Nikko Schinner', 'Cruickshank', 'imani.schultz', 'cdf7e7045279a749044373f121dbacdbaaa19366', '(686)320-1532', '29902 Thiel Corners Suite 521', 'lonie93@example.org', 3, '03:13:06'),
(74, 'Opal Zboncak', 'Lang', 'reilly.ora', 'be09f09c72c31de41fbd92d8765cf3ed769b1b05', '1-962-201-4442x97554', '17619 Waelchi Shore', 'zfahey@example.com', 3, '13:25:59'),
(75, 'Jayda Stanton', 'Metz', 'mlebsack', 'b8a01b374227296964e9d994345b25c50fdd2038', '109.261.6681x90150', '9750 Adolf Road', 'jaskolski.adrain@example.org', 2, '16:38:20'),
(76, 'Bridie Kessler', 'Ebert', 'tyrel79', '8ce478b003cca2b9a1d3133245ce25086a941832', '625.986.4584', '66126 Thiel Hills Suite 590', 'reymundo33@example.net', 0, '16:29:37'),
(77, 'Mrs. Angela Cole DDS', 'Wyman', 'tremayne.gerlach', '015f4b49ead1a4cb65f4fffd164f3156237e8031', '570-541-7749', '07740 Shields Lock Suite 567', 'walker.esperanza@example.org', 7, '15:48:00'),
(78, 'Liliane McKenzie II', 'Cassin', 'fbogan', 'aeb133f23b177341f663d8235b809f91d6cd7902', '00849351913', '709 Stracke Avenue Apt. 246', 'addison90@example.org', 8, '16:11:01'),
(79, 'Oleta Zieme Sr.', 'Bartoletti', 'russel.sherman', '9cbe69e295af1d30e0e4d15d18fa95a52d29509c', '1-111-730-2903x063', '34678 Nayeli Point Suite 615', 'rosario09@example.com', 4, '18:16:27'),
(80, 'Emelie Carter', 'Kihn', 'jerde.janet', '062552d2cb13cd407e46d8a701206ba7efb1c4df', '+49(6)6155815662', '91367 Yessenia Fort', 'edibbert@example.org', 6, '15:35:09'),
(81, 'Naomi Wuckert', 'Bruen', 'rhermann', 'c52545a2f411644248c8d0448160c3c30d88613d', '191.391.1687x87923', '69502 Crist Isle', 'fraynor@example.net', 7, '12:51:28'),
(82, 'Dimitri Rempel', 'Batz', 'harvey.misael', '2f37905b95bc071a110c7b831aeab682a25ce695', '1-341-389-1043x3774', '402 Tre Burgs Apt. 766', 'otilia.haag@example.com', 5, '07:43:32'),
(83, 'Deonte Gottlieb', 'Ritchie', 'frami.ali', '6fa23dfa83f4ba3e72d44cf85ed6dcf020e853c2', '02263922850', '0835 Corwin Camp', 'qcartwright@example.net', 7, '09:04:07'),
(84, 'Kathryne Johns', 'Pacocha', 'violet.schoen', '2840f4880cf6ccec32197c060ecb4e6764a591e0', '(299)463-7192x44514', '377 Lucas Center', 'phowell@example.com', 1, '20:51:15'),
(85, 'Dr. Jared Crona Jr.', 'Muller', 'cmurphy', '33696dd60d6edec039c57a91ab7e1ed34eab123d', '(233)553-9605', '69671 Hahn Cliff', 'nya.runolfsdottir@example.net', 7, '04:10:45'),
(86, 'Mercedes Rau', 'Wolff', 'lonny46', 'fa1476d0fe71d69986e75579831539a4f1fc53d7', '205-513-4241x147', '423 Alia Gardens', 'jeanie94@example.org', 6, '12:23:04'),
(87, 'Mrs. Minerva Cronin DVM', 'Armstrong', 'rohan.lisa', 'fa5c1a187d5f2e9578d333d83e5d5a432676e0c0', '+92(4)9368437418', '772 Aglae Place', 'ikuhlman@example.org', 8, '05:53:32'),
(88, 'Eloise Schneider', 'Mertz', 'jacky02', 'd54b90e5d329969f24518295cec677b709a22a1e', '667.325.7079', '20904 Mann Route Apt. 423', 'babernathy@example.org', 4, '03:04:46'),
(89, 'Mr. Wilbert Nicolas', 'Prohaska', 'dale.barrows', '3ca559a1d51af5298672f9ab309f08a7621ec02a', '(267)105-1108x351', '45452 Farrell Wells Apt. 450', 'lenny.fisher@example.net', 8, '22:20:09'),
(90, 'Miss Antonia Heathcote I', 'Waelchi', 'owilderman', '8f84cd0d85c71253bd082a18fd90bef7cee609f2', '642.740.4372x7736', '08859 Pfannerstill Unions Apt. 361', 'everette.cassin@example.net', 6, '20:22:24'),
(91, 'Ms. Shanny Rice Jr.', 'McDermott', 'phaag', 'e828f96cb20bc57a0d73bdca0b083111275a6e79', '1-038-774-4006', '7216 Evert Crossing', 'connelly.micheal@example.org', 1, '06:10:23'),
(92, 'Abagail Runolfsdottir', 'Goldner', 'verlie.mraz', '0b1495de0ae3a6b6a4a633066399e3ecebb176e1', '1-992-327-2336', '455 Pauline Circle Apt. 689', 'koch.ewell@example.com', 6, '00:22:20'),
(93, 'Everett Breitenberg', 'Yost', 'gschiller', 'f992fb1a09a5f16c9cf4d7ea3039850997349935', '(742)667-0127x34704', '46855 Moore Lane Suite 879', 'snolan@example.org', 3, '18:35:37'),
(94, 'Micah Cremin', 'Durgan', 'maxine.hegmann', 'c2a11f15c795cf411965375823fa0e9a0b4a0971', '519-962-0122', '297 Dwight Causeway', 'lhaag@example.com', 6, '08:39:59'),
(95, 'Chad Rodriguez', 'Thiel', 'agustina.kunze', '075140a3a1cce02a9c69a2446cbf0a076104bce8', '668-346-5258', '81363 Deanna Underpass Apt. 058', 'johns.sean@example.com', 1, '21:25:05'),
(96, 'Prof. Rosalyn Dietrich IV', 'Gusikowski', 'adriana.schaden', '34272c0ebd2402fe1338f7788521af426db6977c', '(657)548-1044x4877', '3862 Leannon Streets Suite 813', 'stracke.zula@example.com', 8, '20:08:25'),
(97, 'Jaiden Hoppe DVM', 'Johnston', 'dickens.moises', '6c03e279aff4a06144c23869a60a0d1ccc27c404', '(860)125-9528x2836', '05329 Adams Estate', 'gibson.abagail@example.net', 4, '08:45:33'),
(98, 'Alexandria Wilkinson', 'Effertz', 'hstamm', '38e12930fbd8c5dd7fa84600e3a66d113eb90e35', '+80(7)9763201033', '826 Alexis Pass Suite 749', 'mclaughlin.johathan@example.org', 1, '17:13:52'),
(99, 'Mr. Thomas Senger II', 'Howe', 'ursula35', 'd10c7d5d551d181685c926add223ffbea6467816', '296-506-5548x437', '857 Ofelia Lock', 'aron83@example.org', 7, '04:29:17'),
(100, 'Bernie Kunde', 'Dickinson', 'josiane.bogisich', '57c26ddc5939110a530775ca8eff431ff20fe1b9', '(865)962-7503', '14277 Aditya Ville', 'michael04@example.com', 5, '00:03:38'),
(101, 'Test2', 'Test Surname', '', 'test', '32343232', 'test', 'test@test.com', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categoryPosition` int(11) NOT NULL,
  `adminId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryId`, `categoryName`, `categoryPosition`, `adminId`) VALUES
(1, 'perferendis', 0, 2),
(8, 'rerum', 8, 6),
(12, 'similique', 3, 9),
(13, 'a', 1, 1),
(14, 'accusamus', 4, 7),
(16, 'non', 9, 8),
(17, 'cupiditate', 6, 4),
(19, 'laboriosam', 7, 9),
(20, 'tenetur', 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `clientId` int(11) NOT NULL,
  `clientName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clientEmail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clientPhoneNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clientCity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clientCountry` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clientSurname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clientNickname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clientPassphrase` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clientAddress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clientStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `clientCreditCardCompany` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clientCreditCardNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clientExpirey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clientCVV` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`clientId`, `clientName`, `clientEmail`, `clientPhoneNumber`, `clientCity`, `clientCountry`, `clientSurname`, `clientNickname`, `clientPassphrase`, `clientAddress`, `clientStamp`, `clientCreditCardCompany`, `clientCreditCardNumber`, `clientExpirey`, `clientCVV`, `adminId`) VALUES
(1, 'Regis', 'regisray@gmail.com', '0739956224', 'Cape Town', 'South Africa', '', '', '', '', '2018-10-31 12:30:41', '', '', '', '', 16),
(2, 'Serge', 'sramos20@gmail.com', '06384027530', 'Pretoria', 'South Africa', '', '', '', '', '2018-10-31 13:40:26', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `displayCategory`
--

CREATE TABLE `displayCategory` (
  `displayCategoryId` int(11) NOT NULL,
  `displayCategoryName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `displayCategoryPosition` int(11) NOT NULL,
  `adminId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `displayCategory`
--

INSERT INTO `displayCategory` (`displayCategoryId`, `displayCategoryName`, `displayCategoryPosition`, `adminId`) VALUES
(1, 'tempora', 3, 7),
(2, 'qui', 7, 2),
(3, 'natus', 9, 8),
(4, 'ea', 5, 0),
(5, 'voluptate', 1, 1),
(6, 'voluptatem', 6, 5),
(7, 'asperiores', 8, 4),
(8, 'rerum', 4, 6),
(9, 'ut', 2, 7),
(10, 'accusamus', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `displayProduct`
--

CREATE TABLE `displayProduct` (
  `displayProductId` int(11) NOT NULL,
  `displaySubCategoryId` int(11) NOT NULL,
  `displayProductName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `displayProductImgUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `displayProductActive` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `displayProductDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adminId` int(11) NOT NULL,
  `displayProductStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `displayProduct`
--

INSERT INTO `displayProduct` (`displayProductId`, `displaySubCategoryId`, `displayProductName`, `displayProductImgUrl`, `displayProductActive`, `displayProductDescription`, `adminId`, `displayProductStamp`) VALUES
(1, 9, 'ut', 'http://rath.com/', '1', 'Laboriosam dolorum minus ut esse sint illo. Adipisci reprehenderit sit voluptatibus sapiente. Rerum quos dignissimos voluptatem enim ex facilis consequatur debitis. Repudiandae quam eius aperiam.', 2, '1996-03-01 19:56:21'),
(2, 0, 'quod', 'http://krismurphy.info/', '', 'Ut rerum quo minus maiores qui. Ratione occaecati nesciunt facilis excepturi dolores.', 4, '1999-05-19 09:17:42'),
(3, 2, 'consequatur', 'http://abshiremclaughlin.biz/', '1', 'Excepturi consequatur veritatis illo dolorem ex. Voluptatum et aut maxime. Itaque repudiandae alias similique ad enim. Ut facere id molestiae sit.', 5, '2009-03-26 10:03:38'),
(4, 6, 'id', 'http://www.mclaughlinbernhard.com/', '1', 'Voluptas dicta nesciunt cum quis atque. Itaque excepturi molestiae ut nemo perferendis dolores. Eveniet sint molestiae pariatur voluptatem. Incidunt vel eum est voluptas deleniti fuga nesciunt.', 9, '2017-11-21 20:51:17'),
(5, 7, 'architecto', 'http://www.willms.info/', '1', 'Adipisci itaque rerum at consequatur ut quaerat. Sunt fuga quos aut aut porro eligendi voluptatem quo. Non aspernatur voluptatum debitis. Placeat ducimus incidunt tempore ea quia est.', 3, '1977-03-16 11:17:25'),
(6, 7, 'dolor', 'http://franeckigleason.com/', '1', 'Laboriosam animi architecto ut sunt debitis culpa. Ab delectus et ut repellendus dolor rem. Non amet dicta quo.', 9, '2000-08-19 04:34:42'),
(7, 4, 'perspiciatis', 'http://www.hamill.com/', '', 'Ipsam ut et voluptatem aut sit quibusdam omnis. Inventore rerum nam tempora quisquam vero aspernatur. Est et omnis consequuntur ad itaque dolorum ratione.', 1, '1991-10-28 16:54:49'),
(8, 3, 'molestias', 'http://www.orn.com/', '', 'Consequatur eum quia praesentium. Voluptatem placeat veniam possimus eos omnis qui ipsa deleniti.', 0, '2003-06-14 02:25:26'),
(9, 9, 'et', 'http://www.franeckikris.biz/', '', 'Praesentium sint est quia et cupiditate sunt quisquam. Molestias aliquam tempore et. Iure qui voluptate commodi assumenda. Voluptas explicabo cum totam sed.', 5, '1979-01-29 12:22:36'),
(10, 0, 'dignissimos', 'http://mills.com/', '1', 'Dolores distinctio corrupti eveniet eum cum quae labore. Modi doloribus pariatur nostrum voluptatem. Totam totam odit dolor quia recusandae soluta provident.', 9, '1994-01-31 12:24:45'),
(11, 7, 'numquam', 'http://schaefergutmann.biz/', '', 'Consectetur et adipisci molestias doloremque quae harum. Enim omnis sed voluptas est voluptas beatae. Et ea aperiam porro quae.', 8, '1995-11-05 02:21:36'),
(12, 3, 'aspernatur', 'http://www.fadel.com/', '', 'Mollitia voluptatem quisquam impedit et exercitationem. Non corrupti dolorum voluptates corrupti quis facilis. Molestias vitae mollitia est velit.', 7, '1974-11-16 21:30:54'),
(13, 4, 'ut', 'http://www.raynorfeest.com/', '', 'Odit eveniet officia dignissimos ab sint. Dolor veritatis nihil voluptas voluptatum. Optio quia quisquam non rerum sit inventore.', 0, '2000-02-12 09:00:58'),
(14, 7, 'iusto', 'http://www.ohara.com/', '1', 'Praesentium explicabo error est ea perferendis itaque. Porro ut quis aut architecto. Sed nemo deserunt harum repudiandae nisi vitae dolor.', 0, '1979-12-14 15:40:17'),
(15, 0, 'et', 'http://will.com/', '1', 'Sit voluptas ex repellat explicabo consequatur. Debitis et dolores odit. Ab quibusdam quaerat similique quia. Vel est eaque temporibus dolor.', 2, '1970-05-04 03:04:44'),
(16, 4, 'qui', 'http://www.maggio.com/', '', 'Doloremque fugit aliquam et ad numquam et quia. Adipisci quos numquam exercitationem porro commodi nobis dolor ea. Rerum qui aliquam soluta ducimus perspiciatis facilis fugit. Hic dolorem saepe earum ipsam.', 6, '1991-12-24 23:38:44'),
(17, 6, 'quia', 'http://www.schusterortiz.info/', '1', 'Dignissimos inventore consequatur eum dolorum et. Vero qui at accusamus ipsam placeat provident. Libero similique omnis quibusdam rem nostrum. Sed veritatis aut consequatur.', 2, '1970-12-14 14:15:36'),
(18, 3, 'doloribus', 'http://leuschke.com/', '1', 'Consequatur ut sed qui enim eum quia. Repellat in molestiae tempore est culpa quisquam. Voluptatum quod fugiat cupiditate et soluta. Reprehenderit dolore vero ratione unde cupiditate expedita.', 9, '2018-02-01 04:10:40'),
(19, 7, 'maxime', 'http://www.corkery.com/', '1', 'Est enim quia aut ipsum accusantium non aut. Dolorem dolor ratione suscipit quisquam quaerat sit consectetur. Voluptatum quia ipsa quia cumque ea amet quod.', 1, '1995-07-06 18:10:44'),
(20, 6, 'inventore', 'http://www.torp.net/', '1', 'Unde voluptatem optio commodi reiciendis consectetur quas. Nemo sed voluptatem inventore porro. Ducimus et porro doloremque quibusdam enim sequi distinctio et. Voluptatibus maxime repellendus quidem inventore rerum deserunt sit nobis. Est officiis labore ', 3, '1971-08-18 20:49:38'),
(21, 3, 'qui', 'http://www.senger.info/', '', 'Voluptas aut itaque ut natus quasi reiciendis soluta maxime. Aut quis fugit voluptatem corrupti. Quia facilis accusamus consectetur vero aut.', 7, '1997-01-28 16:55:56'),
(22, 9, 'eum', 'http://www.kirlin.com/', '', 'Rerum officiis et omnis odio. Cupiditate quibusdam est qui maiores voluptatem pariatur nihil. Et magnam illum fugiat dolorum.', 0, '2015-03-30 23:05:49'),
(23, 1, 'saepe', 'http://kreiger.com/', '', 'Ullam et esse adipisci est. Et quia qui porro sint velit ratione. Expedita omnis quia consequatur ea. Dolor accusamus blanditiis sint et inventore cum doloribus aut.', 2, '2004-04-04 17:47:55'),
(24, 9, 'enim', 'http://www.cronin.com/', '', 'Impedit nisi rerum architecto minima quo accusamus explicabo repudiandae. Ut est non ducimus. Beatae rerum recusandae iusto nihil. Laboriosam dolorem dolor soluta molestias vitae voluptate.', 6, '1988-04-02 09:26:18'),
(25, 0, 'reprehenderit', 'http://www.boehm.net/', '1', 'Ea ullam cum enim dolore. Aut veritatis est aut quibusdam voluptatem labore. Quo et placeat eum harum. Officia ducimus animi sunt neque voluptas adipisci aliquam. Optio placeat ut occaecati dolor neque voluptatum vitae ea.', 4, '2003-11-13 20:26:57'),
(26, 0, 'officiis', 'http://www.erdman.biz/', '1', 'Quam et eligendi architecto aut qui expedita. Ea odio laborum delectus nulla rem. Explicabo aut enim laudantium aperiam quam culpa. Provident quis earum doloribus cum exercitationem.', 2, '1982-12-30 05:10:23'),
(27, 6, 'placeat', 'http://hermiston.com/', '', 'Sed aliquid aperiam nemo labore. Illo consequatur et aliquam sed. Velit quos ullam consequatur at aut commodi.', 8, '1996-04-04 09:49:44'),
(28, 0, 'aut', 'http://www.blick.org/', '', 'Vel molestias eaque omnis ut nihil est officia distinctio. Voluptatibus consequatur corrupti quod quis nisi. Perspiciatis est laudantium expedita qui dolor. Consequatur quisquam molestiae accusantium rerum quidem. Impedit ut ut ut sint molestiae soluta qu', 0, '1980-02-13 04:19:16'),
(29, 7, 'ad', 'http://www.lynchmcglynn.net/', '', 'Velit totam quidem est nobis voluptatem dicta. Delectus excepturi velit autem sed. Asperiores rerum a omnis quaerat est veniam.', 2, '1998-08-03 04:34:54'),
(30, 3, 'repellendus', 'http://hoppe.info/', '1', 'Voluptatum optio consequuntur molestiae aliquid fugiat autem et. Cum eligendi sequi est.', 7, '1997-12-07 02:44:23'),
(31, 4, 'dicta', 'http://green.com/', '1', 'Nisi odit ullam consequatur aspernatur in dolorem tenetur. Vel nemo est quas nemo ad omnis voluptatem. Eaque suscipit quia laborum error consequuntur.', 0, '1979-06-21 02:27:49'),
(32, 2, 'iste', 'http://www.zulauf.com/', '1', 'Consequatur qui eos quos doloribus. A et aut tempore ab est in qui nihil. Consequatur reprehenderit quasi repellendus corrupti quo. Fugiat nemo ut neque porro.', 7, '1974-03-11 05:56:38'),
(33, 7, 'porro', 'http://www.koelpinanderson.net/', '', 'Nemo quia porro earum animi eos exercitationem sunt. Eius doloremque ut cumque enim voluptatem hic impedit est. Qui et quisquam aut aut. Sint maxime ipsam possimus est.', 4, '2011-04-01 01:24:01'),
(34, 9, 'error', 'http://www.prosaccorenner.com/', '', 'Tempore blanditiis expedita laboriosam laborum soluta quasi doloribus. Consequatur aut asperiores aut dolorem eos dolorem dicta deserunt. Et eius nihil qui minima natus quia. Magni ipsam id expedita inventore cum est.', 5, '1975-11-13 09:06:08'),
(35, 3, 'quibusdam', 'http://runolfsson.com/', '1', 'Voluptas optio quaerat quibusdam distinctio. Ab voluptatem qui sequi odit quo ullam. Facilis est esse ut similique aut.', 6, '2007-03-23 00:06:26'),
(36, 9, 'voluptas', 'http://www.yundt.net/', '', 'Rerum nihil delectus distinctio voluptate. Magni aut consequuntur voluptatibus quibusdam ullam quibusdam. Sequi fuga iure earum voluptatem ut aut delectus. Iusto soluta in consequatur consequatur libero.', 1, '1973-05-26 22:04:05'),
(37, 7, 'repellat', 'http://www.sipesgoodwin.com/', '1', 'Fuga nisi ut vitae sed iusto voluptatum. Ut dolores nemo error sit dolores optio. Eius iusto sunt et dolorum tempora.', 4, '2017-10-10 04:04:43'),
(38, 2, 'nihil', 'http://greenfelder.com/', '1', 'Quaerat id alias dolorem quaerat quia quam. Provident facere vero dolorem maxime voluptas. Ut laborum est explicabo porro tenetur atque. Occaecati deserunt tempore distinctio vel vero sint.', 9, '1997-08-09 10:52:19'),
(39, 6, 'fugiat', 'http://donnelly.biz/', '1', 'Est sunt a dolorem. Ex minus aut hic rerum. Error doloremque cumque at sunt mollitia. Quia earum assumenda eius non repellendus.', 8, '1980-11-21 12:26:12'),
(40, 2, 'ducimus', 'http://roob.com/', '', 'Distinctio sunt facilis esse optio ipsum dicta. Ullam aliquam aut esse maxime possimus numquam. Ad temporibus corrupti nisi velit consequatur quia doloribus. Omnis maxime commodi corporis incidunt.', 5, '1972-06-17 17:12:53'),
(41, 6, 'architecto', 'http://www.hesselrunolfsson.com/', '1', 'Voluptate aliquid totam adipisci harum dolor et quibusdam. Velit quam nulla consequatur culpa odio laboriosam quidem. Reiciendis adipisci ducimus voluptatem. Qui rerum dolorem aperiam ex.', 8, '1998-01-14 22:02:52'),
(42, 5, 'est', 'http://www.senger.com/', '1', 'Soluta nobis labore perspiciatis. Eum consequatur animi repudiandae magnam. Minus autem voluptas est et. Id non eos et voluptates consequatur ut et.', 6, '2014-03-26 12:09:25'),
(43, 2, 'harum', 'http://www.fritsch.net/', '', 'Beatae qui fugiat voluptas error aliquid est quos. Enim voluptate quidem alias aut. Incidunt quia voluptas nulla architecto quasi.', 3, '2018-02-25 13:16:23'),
(44, 9, 'in', 'http://www.goldnerward.com/', '1', 'Voluptatem et et accusantium dolorem consequatur repellendus explicabo. Itaque a libero fugiat itaque dolore. Molestias consequatur quaerat ab quas sit.', 1, '1988-09-24 06:43:15'),
(45, 2, 'libero', 'http://rolfsonbins.com/', '', 'Perspiciatis magni qui velit temporibus. Quia minus enim magnam qui rerum et rem. Sed et veniam aut minus est quisquam. Et ipsum nam ut.', 1, '2001-07-22 15:22:38'),
(46, 8, 'et', 'http://beahanblock.com/', '1', 'Maxime est veniam possimus non quibusdam. Delectus sunt molestiae recusandae sunt nobis rem. Est reiciendis dolorum qui consequatur consequatur qui hic. A ut illum minus.', 7, '1980-08-02 11:58:44'),
(47, 4, 'iste', 'http://www.quitzonhaley.com/', '', 'Laboriosam et inventore molestiae architecto minima. Quae qui reprehenderit amet nulla. Incidunt tenetur deleniti explicabo nulla autem similique ea quia. Voluptate aut perspiciatis sed molestias voluptatibus. Velit eos laudantium et qui architecto.', 9, '2006-02-16 10:15:38'),
(48, 9, 'dignissimos', 'http://www.ledner.com/', '', 'Ad voluptatum sunt vitae sunt. Ea id et expedita. Veniam quasi laudantium earum quia vitae.', 5, '1989-06-14 11:15:03'),
(49, 5, 'vel', 'http://www.walkerokon.net/', '', 'Non aut unde facere ut libero quo. Recusandae et enim repudiandae ut et qui vitae. Ea facilis ut quisquam magni pariatur.', 7, '2013-04-18 04:00:57'),
(50, 3, 'voluptatum', 'http://hammes.com/', '', 'Voluptatem neque deserunt in cum id consequuntur non. Quis eum ut et quam perspiciatis et eligendi. Et eaque qui et accusamus assumenda nostrum illo aut.', 5, '1987-11-01 09:57:45'),
(51, 2, 'eius', 'http://www.ritchie.com/', '1', 'Ut quidem tempore fuga ut enim ad enim. Quisquam asperiores et quibusdam sunt non reiciendis. Aut alias in aut sint. Sit sunt sed animi minima.', 7, '1984-09-10 15:10:11'),
(52, 0, 'nesciunt', 'http://schillerstracke.biz/', '1', 'Fugiat ipsa fuga dolorem voluptatum enim impedit nostrum. Explicabo sed velit et dicta. Earum maxime voluptas sapiente placeat aliquid impedit ut non.', 3, '1992-10-22 06:35:27'),
(53, 2, 'porro', 'http://www.senger.com/', '1', 'Nobis repellat reiciendis qui maxime sunt. Fugit ad veniam omnis ut expedita voluptatem voluptatem. Ut nihil temporibus nostrum impedit mollitia sit.', 8, '1972-12-16 17:57:01'),
(54, 0, 'qui', 'http://hermistonjerde.com/', '', 'Ipsa est assumenda quos possimus assumenda aut molestias. Quis aut sint in deleniti magnam quo. Repellat et dolorum minus. Dolor similique suscipit perferendis suscipit est consequatur voluptatum.', 8, '2002-03-30 04:59:57'),
(55, 5, 'earum', 'http://www.swaniawski.com/', '', 'Esse voluptate ipsam reiciendis impedit aut dolores. Quidem fugiat et sed cupiditate. Voluptate rem sed molestias doloribus a.', 8, '1986-01-30 23:48:12'),
(56, 4, 'accusantium', 'http://www.jacobi.com/', '', 'Et quibusdam accusamus dolor qui. Rerum est sint amet. Tempore et ducimus omnis labore hic.', 6, '2001-03-18 08:25:37'),
(57, 5, 'facilis', 'http://armstrong.net/', '', 'Non ut consequatur quisquam vitae. Deleniti et earum error culpa architecto commodi qui.', 5, '2001-07-30 20:42:58'),
(58, 3, 'perspiciatis', 'http://www.franeckicronin.com/', '', 'Fuga laborum quaerat quaerat consequatur ad ipsam. Sed consequatur placeat voluptatem at id consequatur. Fugit explicabo at et ipsa et esse.', 0, '2016-12-09 11:17:20'),
(59, 4, 'accusamus', 'http://bahringer.com/', '1', 'Odio mollitia libero omnis et tenetur. Voluptatem tempore eaque possimus veniam dicta vero.', 2, '1975-02-20 16:25:37'),
(60, 0, 'nulla', 'http://gibson.com/', '1', 'Debitis velit officia ut voluptatibus aut labore temporibus. Hic numquam id at. Non deleniti possimus praesentium suscipit velit vero.', 3, '1972-05-04 10:15:39'),
(61, 8, 'qui', 'http://www.carrollfahey.biz/', '', 'Sapiente eveniet illo mollitia ex aliquid quia incidunt assumenda. Doloremque laborum et ipsum quidem tempora et.', 9, '1983-01-22 02:54:27'),
(62, 3, 'reprehenderit', 'http://www.feeneykautzer.com/', '', 'Est sed sit laudantium quaerat iure est. Molestiae autem repudiandae voluptas eum saepe aut. Architecto inventore itaque voluptatem maiores.', 7, '1994-07-15 01:50:54'),
(63, 6, 'omnis', 'http://www.purdyskiles.com/', '1', 'Voluptates quaerat dolores excepturi ipsa. Et odit temporibus perferendis ab. Commodi ea qui beatae atque et.', 1, '1976-02-24 18:26:29'),
(64, 8, 'eveniet', 'http://www.gusikowski.com/', '', 'Molestiae ipsum dolor dolorum praesentium aspernatur nesciunt. Voluptas nemo sint in quam eos est. Eum quo aspernatur officiis reiciendis.', 4, '1989-09-14 19:51:37'),
(65, 6, 'excepturi', 'http://www.huel.net/', '1', 'Cum repudiandae dolores corporis tempora magni consequatur. Voluptatem ducimus magni laboriosam maxime ut. Laborum qui quaerat inventore excepturi.', 4, '2008-06-07 20:22:58'),
(66, 1, 'qui', 'http://www.pourosturcotte.org/', '1', 'Sequi molestias sit est et officia omnis dolorem voluptatem. Sit ex quam ut nesciunt exercitationem et. Suscipit maiores et omnis quaerat voluptas accusamus.', 0, '1978-01-03 21:22:56'),
(67, 7, 'vel', 'http://nolan.com/', '1', 'Ut est dolores iste veritatis et aperiam voluptas sapiente. Nostrum esse non et deleniti. Recusandae vel dolor aliquid magni impedit voluptatem optio. Beatae nihil accusantium porro et facilis blanditiis delectus. Quasi accusamus nisi sed molestiae est.', 0, '1982-02-02 21:40:48'),
(68, 3, 'optio', 'http://www.kilbackolson.org/', '', 'Vel sed ut id. Voluptates et autem cum doloribus dignissimos nisi maxime pariatur. Error enim quod at consequatur architecto possimus. Minima iure sunt voluptatum quasi sint.', 1, '1989-09-09 18:33:50'),
(69, 9, 'rerum', 'http://okuneva.net/', '1', 'Aut voluptas quis ducimus expedita sunt. Dolor non enim expedita quibusdam quia.', 6, '1973-07-20 09:54:13'),
(70, 1, 'tempore', 'http://www.ondrickagibson.org/', '1', 'Dolore repudiandae dicta et doloribus cumque et. Non eum odit dolor rerum nihil quod. Occaecati est dignissimos eum qui quidem. Placeat possimus alias porro cupiditate sapiente.', 6, '1999-05-11 02:32:32'),
(71, 5, 'consectetur', 'http://emmerichleuschke.com/', '1', 'Dolor molestias voluptate consectetur eum ad ut deserunt. Ut facilis consequatur fugiat praesentium reiciendis laborum necessitatibus. Omnis quia id exercitationem. Cupiditate porro iusto ea temporibus.', 0, '1972-06-27 19:12:40'),
(72, 3, 'quaerat', 'http://www.mitchell.com/', '', 'Quis autem fugiat placeat sit. Perferendis sequi molestias accusantium et. Eum mollitia quidem deserunt vitae.', 2, '1984-07-25 06:46:15'),
(73, 8, 'reiciendis', 'http://bergstrom.org/', '1', 'Soluta mollitia similique vel sunt. Laboriosam dolore totam earum quia distinctio. Deserunt eius excepturi autem nulla ab totam quos. Cumque ipsam quasi ab iusto unde.', 7, '1988-01-02 01:55:57'),
(74, 5, 'ipsam', 'http://www.pouros.biz/', '1', 'Repudiandae sit ratione ea vero possimus et fugiat ut. Nesciunt sapiente fugit velit ea voluptatem iure. A et et illo ut atque aut. Dolorum voluptas qui omnis earum et.', 9, '2014-06-09 20:05:39'),
(75, 2, 'rem', 'http://www.schmitt.net/', '', 'Velit cumque sit maiores ad reprehenderit assumenda. Repellat voluptatum ipsam est neque sit rerum. Et non beatae eligendi occaecati nisi accusamus ut.', 8, '1988-06-20 18:59:21'),
(76, 2, 'iure', 'http://www.halvorson.com/', '', 'Distinctio cumque aut consequatur. Saepe fugiat quo saepe modi mollitia quis et quia. Et autem facere sed illo ratione est. Tenetur quis mollitia facere magnam qui.', 5, '1982-11-30 01:35:37'),
(77, 4, 'sit', 'http://www.shieldswalsh.biz/', '', 'Earum voluptatem voluptates ea et placeat ut. Ipsa ad est ipsam consequatur temporibus sapiente possimus. Voluptatem magnam neque non et. Totam et debitis et dolorem est delectus magnam.', 5, '1992-03-10 06:03:10'),
(78, 0, 'deserunt', 'http://www.cremin.com/', '', 'Non molestiae iste id aut numquam. Quia quos aut ex molestiae et.', 1, '1977-04-14 18:17:55'),
(79, 0, 'sit', 'http://dicki.biz/', '1', 'Non officiis sed expedita aut nesciunt maiores. Hic eum totam numquam facilis. Voluptate nisi quae laboriosam illo consectetur qui.', 1, '1971-07-04 15:22:16'),
(80, 2, 'voluptates', 'http://barrowslynch.info/', '1', 'Voluptatem in est rem hic mollitia repellat. Eaque animi iste minima quidem dicta quo ipsa. Illum est id dolorum dolore itaque harum quis voluptatem.', 1, '2001-11-09 01:21:05'),
(81, 6, 'ad', 'http://www.baumbach.com/', '1', 'Omnis rerum eveniet fugit facilis labore saepe. Quam officiis eum dolorum hic. Animi facilis est ut.', 6, '1976-10-28 12:11:00'),
(82, 3, 'velit', 'http://darebrekke.org/', '1', 'Quis sit et illo. Unde ipsam quisquam et delectus. Accusamus aut reiciendis earum eveniet quis.', 4, '2017-07-08 08:16:42'),
(83, 5, 'odit', 'http://www.streichsipes.com/', '1', 'Doloremque et rem sed totam nisi. Et soluta qui magni asperiores. Dolor autem amet aut dolor.', 8, '2016-12-29 18:48:49'),
(84, 8, 'sit', 'http://www.gibson.biz/', '', 'Ut commodi cumque inventore dignissimos rem dolorem omnis distinctio. Officiis sed consequuntur eos.', 8, '2006-07-10 03:06:19'),
(85, 4, 'dolore', 'http://www.muller.com/', '1', 'Repellendus eos quia fuga neque. Omnis reprehenderit aperiam voluptates. Totam veritatis enim eius repellendus facere omnis. Quam ut distinctio magni molestiae illo delectus.', 7, '2009-12-06 19:33:45'),
(86, 1, 'porro', 'http://www.kassulkeweimann.biz/', '1', 'Et consequatur tenetur rem consequatur earum ratione. Fugiat veritatis culpa quibusdam necessitatibus modi. Dolorum sed sint enim assumenda tempora labore doloribus saepe.', 8, '1988-03-06 12:44:11'),
(87, 9, 'beatae', 'http://www.jakubowski.info/', '1', 'Odit non quod autem tenetur suscipit. Mollitia ducimus unde delectus quidem dignissimos autem error. Est aut debitis esse voluptatibus in mollitia consectetur. Dolor aperiam quam ea eum sunt error.', 9, '1987-03-05 10:36:52'),
(88, 2, 'autem', 'http://turcottekoelpin.com/', '1', 'Saepe et porro aperiam tempore aut. Repellendus odit nihil perspiciatis accusantium est qui dolor. Perferendis ut placeat consequuntur dolorem et. Ut dignissimos quos dicta deleniti ratione rerum.', 0, '1989-01-04 09:59:31'),
(89, 1, 'accusantium', 'http://white.net/', '1', 'Dicta ut blanditiis necessitatibus. Vel nobis ipsa omnis sunt quia accusamus. Nesciunt corporis sit rerum alias quidem.', 9, '1979-07-03 13:46:41'),
(90, 3, 'eum', 'http://www.pfeffer.com/', '', 'Vero maiores incidunt voluptatem pariatur aut. Dolorum repellat voluptatibus amet. Asperiores architecto quos aperiam esse. Dolorem consectetur praesentium quia repellat ratione sit.', 1, '2000-10-27 05:53:55'),
(91, 3, 'beatae', 'http://bergstrom.com/', '', 'Laboriosam molestiae esse dolores ut distinctio enim. Repudiandae natus ratione ut. Sit unde illo aut repellat quia. Quia deserunt totam praesentium.', 9, '2013-11-17 17:36:51'),
(92, 1, 'voluptatem', 'http://mitchell.net/', '', 'Inventore id impedit vitae quo deserunt qui rerum. Quo qui omnis consequuntur. Rerum ea non eligendi pariatur. Ipsum perferendis voluptatibus est voluptatem.', 4, '1988-09-26 09:12:25'),
(93, 1, 'nam', 'http://bechtelarkoepp.org/', '', 'Qui doloremque reprehenderit praesentium rem dolore sint. Non soluta qui earum dolorum voluptas id. Voluptatem voluptatibus molestias quia fugit doloremque quo.', 0, '1975-07-30 17:48:31'),
(94, 1, 'magni', 'http://grady.com/', '1', 'At sequi praesentium iure quam nisi. Vitae dolore laudantium quisquam. Occaecati dicta consequatur non veritatis aut eos consequatur.', 6, '1981-02-11 20:08:58'),
(95, 0, 'dolorum', 'http://carroll.info/', '1', 'Consequuntur ullam recusandae magni nemo. Minima et aut aut nobis ratione atque voluptas dolores. Et quidem enim quia accusamus velit fuga tempore.', 4, '2016-09-03 20:32:02'),
(96, 3, 'dignissimos', 'http://bergnaum.com/', '1', 'Eius amet nobis vitae autem distinctio voluptatem. Sapiente rerum est minus harum. Animi voluptatem aliquam id aut enim illo. Sed sint qui incidunt in perferendis quia. Quasi est laboriosam non harum adipisci labore.', 7, '2014-12-27 11:12:39'),
(97, 8, 'impedit', 'http://turcotte.com/', '', 'Aliquam in quisquam minima minus repellat. Veritatis sit quibusdam ipsa autem dolorem et. Fugiat aspernatur aperiam facere et quidem est.', 6, '2004-03-21 14:57:27'),
(98, 1, 'inventore', 'http://www.flatleyturner.net/', '1', 'Provident totam at aut vel. Illo eaque ut nihil inventore perferendis. Assumenda quo quo aut hic excepturi explicabo dignissimos.', 3, '1980-12-15 11:17:38'),
(99, 7, 'et', 'http://walshsanford.info/', '', 'Expedita tempora distinctio iste quam non quaerat nam. Nihil soluta est mollitia dolore enim. Eius consectetur minus ea dignissimos perspiciatis est.', 2, '2006-05-01 08:34:02'),
(100, 1, 'aut', 'http://www.schambergerbreitenberg.com/', '', 'Debitis voluptatem velit nesciunt eligendi reiciendis. Fugiat sed qui reprehenderit ducimus. Aut et velit quibusdam soluta.', 9, '1994-02-07 12:53:19'),
(101, 5, 'ab', 'http://www.nadergrimes.info/', '', 'Architecto perspiciatis rerum eius doloribus iusto quam quia. Dolorum qui earum vitae deserunt ut placeat.', 3, '2002-04-18 15:42:08'),
(102, 8, 'inventore', 'http://thompsonromaguera.org/', '', 'Ducimus et voluptate quia cupiditate. Ex ut debitis voluptatem corporis sit enim. Veritatis et odio explicabo. Facere odio maiores molestiae sunt aliquam fuga ipsum.', 0, '2001-02-24 13:03:22'),
(103, 7, 'dolorem', 'http://www.lefflerpredovic.biz/', '', 'Distinctio beatae reiciendis possimus eos. Officia optio iure voluptas sit nemo assumenda. Non quia corrupti quos modi ullam. Qui ut in nihil delectus dolores in.', 0, '2007-08-01 10:15:49'),
(104, 0, 'rerum', 'http://www.ziemann.net/', '', 'Autem dignissimos et non asperiores laboriosam. Odio est inventore corrupti enim eaque dolor. Id ut quo quisquam illo a. Repellat sequi velit esse natus illum architecto magnam.', 0, '2001-08-31 11:05:45'),
(105, 3, 'iste', 'http://www.jastcronin.net/', '', 'Distinctio ut qui et autem. Quia ea nihil maiores animi laborum fuga a sequi. Voluptatem suscipit aut sit aut aliquid similique ea.', 4, '1997-10-20 14:05:07'),
(106, 4, 'soluta', 'http://heidenreich.com/', '', 'Similique labore est aut earum temporibus tenetur. Nemo at occaecati hic minus aut non enim. Sunt enim sit non saepe vero culpa consequuntur et.', 1, '2001-10-08 03:56:31'),
(107, 4, 'dolore', 'http://www.johnston.com/', '1', 'Atque ad ut sint ea enim. Mollitia omnis omnis atque. Qui corporis at quia harum modi quas. Adipisci tempora suscipit fugit sit repellat vel.', 3, '1992-09-19 03:23:02'),
(108, 9, 'pariatur', 'http://larkin.net/', '1', 'Quam quisquam in accusamus omnis. Ea non vero qui dolore vel facere. Quod deserunt minus omnis perferendis et rerum unde. Quos aut dolorem iusto et suscipit. Sed et dolor ad et ex.', 3, '1984-03-13 04:26:14'),
(109, 4, 'labore', 'http://www.corkery.com/', '1', 'Alias voluptas quas iure pariatur exercitationem velit fugiat. Numquam quo vero consequuntur quia debitis neque. Consequuntur doloribus voluptatem ut commodi maiores.', 3, '2014-10-13 23:43:40'),
(110, 8, 'et', 'http://reynolds.com/', '', 'Molestiae culpa explicabo esse accusamus accusantium quibusdam et et. Qui quia accusamus qui qui neque. A odio voluptate placeat voluptatem.', 9, '2006-09-09 20:44:35'),
(111, 7, 'sit', 'http://www.quigleymurphy.org/', '1', 'Quibusdam velit ut eveniet ipsam. At commodi rem atque. Officia accusamus sit velit hic omnis asperiores nulla.', 6, '1970-07-27 09:43:47'),
(112, 3, 'tempore', 'http://nikolaus.com/', '', 'Possimus doloribus aut sunt totam. Voluptatem excepturi voluptatem quod exercitationem velit ipsum. Possimus consectetur quasi eum voluptate. Asperiores qui id ducimus mollitia nesciunt animi ullam.', 8, '2001-06-06 13:08:10'),
(113, 7, 'eaque', 'http://www.emmerich.com/', '1', 'Perferendis quibusdam sint et vitae perspiciatis consequuntur laudantium. Magnam quas aut modi rerum quia.', 2, '1979-09-07 12:09:41'),
(114, 1, 'aut', 'http://blanda.net/', '1', 'Voluptates perspiciatis a iusto dolores facilis rerum repudiandae. Sapiente neque nisi in non vero unde nobis. Iure voluptatem aperiam omnis aspernatur. Aut nulla ad odit et non.', 9, '2017-11-25 15:22:53'),
(115, 5, 'eos', 'http://www.gerhold.com/', '1', 'Maxime aut voluptatibus velit in quo animi error. Sint eaque beatae consectetur molestias nemo sed. Et sunt ut laudantium.', 0, '2005-10-05 04:13:35'),
(116, 8, 'enim', 'http://www.heidenreich.com/', '1', 'Minus culpa quia delectus porro. Ex accusantium consectetur rem autem recusandae quo. Modi dolorum atque aliquid ut saepe temporibus. Soluta esse neque nostrum.', 4, '1976-09-02 16:23:23'),
(117, 7, 'unde', 'http://koss.net/', '1', 'Sunt eius sed quod. Beatae est et rem voluptatem eum.', 5, '2016-02-11 13:23:56'),
(118, 4, 'animi', 'http://schiller.com/', '', 'Id accusamus blanditiis nihil dolorem ea voluptas. Et itaque omnis ab dolor cupiditate et non. Ratione quisquam qui consequatur nihil aut. Nulla et magni voluptatum doloremque qui qui.', 0, '1984-05-27 06:03:38'),
(119, 5, 'mollitia', 'http://daugherty.com/', '1', 'Sed adipisci cum est cupiditate id. Quos cum alias quo nihil quibusdam et id. Voluptas omnis aut sit.', 1, '2000-12-29 12:09:44'),
(120, 0, 'est', 'http://dach.net/', '1', 'Voluptatem ea distinctio voluptatum debitis accusamus dignissimos labore et. Nesciunt et ipsam vitae ut ad maiores. Temporibus numquam amet quia aut cupiditate. Ut explicabo est excepturi.', 9, '2001-04-07 05:33:15'),
(121, 6, 'modi', 'http://marquardt.com/', '', 'Velit odio vero unde. Eos veniam veritatis tempora illum esse pariatur. Nam autem sit itaque iure consequuntur consequatur dolorum. Voluptas sint dolorem maxime quae praesentium voluptatem voluptate quod.', 6, '2000-04-01 04:49:04'),
(122, 9, 'veniam', 'http://www.ryanokon.com/', '1', 'Id ipsa rerum ut quisquam. Architecto perspiciatis voluptatum dolores accusantium quam est. Facilis illum dolore quo doloribus dolor quia officia vitae.', 8, '2001-10-25 02:09:53'),
(123, 5, 'ut', 'http://www.zulauf.org/', '1', 'Perspiciatis est fuga quidem laborum vitae aperiam. Et ea in saepe quibusdam. Sunt velit cumque magni facilis. Possimus sint minus quis aliquid alias veniam.', 2, '2004-06-24 12:04:42'),
(124, 0, 'ad', 'http://www.murray.com/', '', 'Excepturi ut maiores quis perspiciatis autem. Nam eos repellat et. Molestiae nulla quidem velit quo nemo earum. Sed repudiandae omnis alias praesentium iusto inventore aut.', 7, '1989-09-25 03:51:04'),
(125, 8, 'qui', 'http://www.schimmelrath.info/', '1', 'Hic ea expedita quas voluptatum quia. Voluptates est et sequi ratione. Quis voluptates et minima. Alias in similique est accusantium est. Temporibus facere rerum dolores sequi.', 7, '1987-11-26 20:41:36'),
(126, 0, 'nobis', 'http://boehm.net/', '1', 'Repellendus sed laudantium aut sint odit doloribus voluptatem ut. Ratione illo voluptatibus magni aut. Cumque et itaque nemo cupiditate et aut.', 5, '2014-03-16 08:22:55'),
(127, 4, 'architecto', 'http://turnermoen.biz/', '', 'Et assumenda dolores animi perspiciatis ex ut minima. Blanditiis hic voluptas iste doloribus voluptas. Sequi doloribus qui quia voluptatem accusantium. Provident libero vel ratione et aut incidunt ipsa.', 8, '1985-07-20 06:10:26'),
(128, 7, 'maxime', 'http://www.faheybarrows.com/', '', 'Corrupti necessitatibus rem culpa ullam autem magni suscipit. Aut voluptatum fuga dolor ducimus. Non natus accusantium impedit.', 3, '2006-05-25 22:39:46'),
(129, 4, 'recusandae', 'http://www.hilpert.org/', '', 'Est odio iste est et. Autem omnis deserunt harum occaecati provident incidunt. Ex in labore eum aut officia.', 1, '2014-12-14 09:34:15'),
(130, 8, 'velit', 'http://www.kub.com/', '', 'Itaque non veritatis incidunt et dignissimos ex quos. Omnis excepturi ipsum odit mollitia adipisci laborum consequatur.', 2, '1985-08-29 23:11:52'),
(131, 9, 'mollitia', 'http://www.carter.com/', '', 'Beatae et inventore ut velit omnis deserunt. Eligendi soluta veritatis unde quae illo. Occaecati vitae iusto a ut voluptate explicabo. Earum sit error praesentium et autem.', 5, '1993-10-06 14:00:02'),
(132, 8, 'aspernatur', 'http://hermiston.net/', '', 'Recusandae cupiditate odio non explicabo quo id. Culpa ipsum perspiciatis aut in. Ipsum vel suscipit perspiciatis et dolore. Qui numquam ullam officia dolore facere deserunt enim. Aut pariatur est libero laboriosam.', 7, '2008-11-05 10:28:50'),
(133, 2, 'nesciunt', 'http://jacobsonboyle.org/', '1', 'Voluptas mollitia ut eum necessitatibus nostrum dolorum est veniam. Aperiam animi perspiciatis et eaque accusamus et nulla. Repudiandae libero cupiditate rerum qui sit molestias. Et aut qui nam libero.', 8, '1993-02-10 11:30:39'),
(134, 7, 'omnis', 'http://carter.com/', '', 'Cupiditate vero quos voluptatem impedit facere. Minus architecto exercitationem et optio et illum. Doloremque illum odio nisi sunt et quisquam.', 4, '2010-10-22 18:53:08'),
(135, 3, 'quam', 'http://vandervort.com/', '1', 'Similique repellendus laudantium inventore aspernatur. Quod quidem sed nesciunt aperiam alias distinctio. Vel et architecto cupiditate laboriosam.', 8, '2006-02-09 14:45:21'),
(136, 3, 'corrupti', 'http://www.ankundinghaag.biz/', '1', 'Possimus odio praesentium nihil est. Voluptatem aliquam quibusdam voluptas consequuntur consequatur aut neque. Voluptatem voluptatem ut dolore rerum.', 1, '2003-02-10 06:27:43'),
(137, 4, 'sit', 'http://www.ferryauer.com/', '', 'Enim non numquam fugit veniam. Voluptatum esse voluptatibus quidem nemo natus. Dolores non molestiae qui voluptatem totam sit quaerat. Ab illum nemo facere et molestiae.', 3, '2003-07-13 09:51:41'),
(138, 5, 'omnis', 'http://www.ohara.com/', '', 'Eos rerum asperiores iure eaque. Eum iusto a suscipit id repellendus. Iste dicta qui et cupiditate. Eius eos ut explicabo deserunt.', 0, '1970-04-12 15:08:30'),
(139, 4, 'nostrum', 'http://runolfssonhansen.net/', '', 'Similique nam omnis atque tempore. In aliquid architecto quaerat qui et quis quibusdam. Qui possimus rerum rem ad architecto libero voluptates.', 7, '2010-07-02 20:51:34'),
(140, 4, 'sunt', 'http://gutkowski.net/', '1', 'Eaque omnis accusamus et aut aperiam. Iure quidem et corrupti iure perferendis. Expedita in nihil tempore libero placeat adipisci quaerat. Perspiciatis fugiat et nesciunt inventore. Facilis sequi velit est illum quia sequi.', 0, '2002-04-06 06:47:09'),
(141, 0, 'saepe', 'http://townewillms.com/', '', 'Et repudiandae quisquam dolorem. Sed debitis et consequatur corrupti eveniet. Dolores nihil neque nemo beatae et. Ut aut temporibus nihil in ab.', 5, '1994-11-20 08:20:43'),
(142, 9, 'quas', 'http://www.klocko.net/', '1', 'Vel illum et voluptatem rerum autem. Illum dignissimos quaerat cumque est in sapiente. Nesciunt qui neque cumque repellendus facilis.', 9, '2013-06-06 22:55:04'),
(143, 5, 'maiores', 'http://langworth.com/', '', 'Cumque omnis repellat et aperiam est iste. Fuga fuga doloribus aut quia molestiae. Rem expedita quibusdam sint dolorem rem quisquam reprehenderit. Velit adipisci tenetur quae repellat accusantium in est. Dignissimos iste aut minus nihil.', 1, '1997-12-28 06:13:42'),
(144, 6, 'dolor', 'http://beierwest.org/', '', 'Minima a ducimus ipsam eos velit et neque. Atque quia quisquam totam sequi adipisci qui aut incidunt. Consequatur minus excepturi est eos. Eos sint ipsam quas ut eius dolores.', 3, '1993-12-08 08:04:13'),
(145, 6, 'ut', 'http://www.simonis.net/', '', 'Veritatis dolores perferendis ut placeat. Sunt aut deserunt illum alias nihil incidunt iste.', 4, '1973-11-06 06:57:16'),
(146, 7, 'id', 'http://goldner.com/', '', 'Occaecati voluptas dolore quaerat quia. Minus suscipit quibusdam ut vero. Suscipit doloremque dolore et delectus laboriosam est doloremque.', 9, '1984-09-20 03:25:06'),
(147, 8, 'et', 'http://turcotte.com/', '1', 'Et odio commodi aliquam qui quia consequatur aliquid. Necessitatibus sint non vero in at. Qui ab cumque et. Et maxime quia et et saepe.', 4, '2000-06-19 13:39:00'),
(148, 0, 'laudantium', 'http://www.christiansenking.com/', '', 'Sunt neque nihil deleniti. Qui alias autem et laudantium quis earum dolore. Quo sed ab et ut facilis nihil voluptates. Officiis vel esse consequatur rerum molestias quia.', 1, '2009-02-02 14:06:23'),
(149, 9, 'et', 'http://www.kingleffler.com/', '1', 'Vitae consequatur pariatur commodi fugit odit voluptatem. Nobis iure quia assumenda inventore consequatur. Quidem mollitia laboriosam perferendis totam et pariatur. Quo eum id vel incidunt aut cum sed.', 6, '1977-02-11 13:22:04'),
(150, 9, 'ex', 'http://wildermanbecker.com/', '', 'Recusandae consequatur quidem voluptatem et doloribus. Quia ipsum maxime repellendus recusandae dolores. Quia veniam illo occaecati ut magnam et. Recusandae libero voluptatem nulla delectus.', 2, '1995-10-11 21:28:55'),
(151, 8, 'nesciunt', 'http://www.swaniawskibernhard.info/', '1', 'Est sit omnis hic. Enim deserunt beatae rerum quia et alias voluptas sapiente. Impedit veniam error quae amet. Sed doloribus velit consequatur quidem voluptatem.', 4, '2000-10-03 17:36:30'),
(152, 4, 'molestiae', 'http://www.gleichnerreichel.com/', '', 'Dolorem vitae ea quas ab qui earum. Consequatur earum neque consectetur dignissimos. Voluptas at laboriosam dolor aut ratione.', 6, '2001-11-21 10:47:25'),
(153, 5, 'minus', 'http://stark.info/', '', 'Ullam repellat quaerat est. A quia qui facilis dolore totam ad amet. Unde est velit quo laboriosam voluptatum nihil ut. Itaque ut laudantium labore saepe necessitatibus.', 1, '2007-03-17 17:50:10'),
(154, 4, 'et', 'http://denesik.com/', '1', 'Qui eligendi voluptatem perspiciatis. Quisquam fugiat asperiores et minus. A nihil ducimus adipisci harum placeat necessitatibus.', 7, '1971-05-08 00:42:51'),
(155, 1, 'ipsa', 'http://ledner.com/', '', 'Aut facere quisquam repellendus. Voluptas id quidem sit minus ipsam quod.', 6, '2008-08-29 08:34:41'),
(156, 4, 'corporis', 'http://davisdaugherty.info/', '', 'Non quibusdam dolore et adipisci libero repellendus maxime. Libero quisquam voluptatem non rerum delectus unde. Optio consequatur eos placeat aspernatur nihil fugit aliquid. Dolor voluptatibus dolores esse et.', 2, '1978-10-06 16:04:19'),
(157, 7, 'occaecati', 'http://wildermanstokes.com/', '', 'Ut libero voluptatem eligendi est fugit. Nostrum quis tempore veniam aspernatur quia. Vel necessitatibus consectetur quos totam. Quia ut asperiores ut consequuntur dolor voluptatem provident.', 4, '1981-01-06 09:00:03'),
(158, 8, 'et', 'http://www.russellynch.biz/', '', 'Nobis dolorem voluptas itaque cum repellendus laborum non. Eos atque suscipit voluptatibus nostrum numquam dolore deserunt.', 5, '1975-04-13 04:52:24'),
(159, 0, 'mollitia', 'http://harvey.net/', '', 'Unde autem est velit consequatur magnam odit. Ducimus incidunt et distinctio sed facere quibusdam aut in. Minus itaque laboriosam dolore soluta id velit. Eos nostrum voluptates voluptas hic error.', 2, '2017-05-20 03:53:54'),
(160, 4, 'aut', 'http://www.ziemekub.biz/', '', 'Officiis placeat quisquam vitae. Possimus esse rerum nihil accusamus. Animi omnis dignissimos saepe harum qui expedita.', 5, '2016-10-25 21:26:29'),
(161, 3, 'asperiores', 'http://monahannader.info/', '1', 'Fuga voluptatem velit nesciunt deserunt. Omnis in sed consequatur modi autem sapiente et. Quisquam occaecati ad qui earum vitae. Esse atque quia doloremque illum sequi aut libero.', 7, '1972-10-25 00:15:47'),
(162, 2, 'repellendus', 'http://www.howell.com/', '', 'Eaque odio maxime eum totam facere sint. Itaque et est omnis blanditiis qui sit tempore. Non qui illum porro a. Libero veritatis aspernatur iusto unde.', 2, '1986-08-08 01:13:12'),
(163, 8, 'ut', 'http://zulauf.com/', '', 'Et aperiam dolorem non eveniet nihil est. Veniam atque voluptatem saepe totam quia aut quae rem. Voluptate possimus animi sequi impedit delectus ut voluptate. Tenetur consequatur voluptatem excepturi est laborum in dolorem.', 4, '2005-03-14 07:00:37'),
(164, 0, 'perspiciatis', 'http://www.nienow.com/', '1', 'Excepturi quo quod doloremque id enim repellendus deserunt porro. Necessitatibus adipisci incidunt molestias perspiciatis. Sint aut similique tempora minus est accusamus.', 2, '1993-02-16 09:18:36'),
(165, 7, 'porro', 'http://considine.com/', '', 'Ullam consequatur possimus nihil nemo perspiciatis dignissimos. Quasi illum expedita iste. Voluptas quaerat est repudiandae nam omnis dolor facere. Consequuntur ut eligendi aut alias culpa fugiat.', 0, '1976-04-17 23:13:02'),
(166, 6, 'cupiditate', 'http://www.hintzhackett.com/', '1', 'Minus maiores optio numquam libero velit similique. Id nesciunt corporis ut maxime autem. Blanditiis possimus consequuntur et eveniet a. Necessitatibus velit et consequatur illo aut.', 3, '1997-05-22 15:50:56'),
(167, 3, 'qui', 'http://www.stehrhahn.com/', '1', 'Autem aspernatur quam et commodi. Nostrum ex laboriosam inventore hic voluptatem a voluptatibus porro. Neque eum quisquam earum illum sit. Nesciunt laboriosam aut sed architecto.', 1, '2011-11-29 04:26:42'),
(168, 4, 'ipsam', 'http://www.mcglynnaufderhar.org/', '', 'Vel ea est consequatur blanditiis qui. A ex quod culpa sunt laboriosam asperiores numquam non. Dolore eaque magnam veritatis et laborum et fuga porro.', 5, '2003-05-31 11:25:11'),
(169, 1, 'quaerat', 'http://www.pfefferrolfson.com/', '', 'Exercitationem voluptatem vel corporis praesentium et ut est. Culpa aut rerum itaque enim saepe. Culpa libero soluta culpa laboriosam.', 2, '1986-01-28 22:40:13'),
(170, 6, 'sunt', 'http://mayertmurazik.org/', '1', 'Nulla eaque facere error corrupti. Et dolores quia mollitia quia facilis. Suscipit neque nam omnis quod et dolorum.', 5, '1985-09-20 08:03:20'),
(171, 4, 'sequi', 'http://www.medhurst.biz/', '', 'Ab dolorem et blanditiis. Cumque debitis provident enim dolorem vel consequatur qui. Rem harum voluptas et voluptatem eos sunt magni. Quae asperiores dolores quo assumenda magni qui.', 6, '1979-02-03 05:31:31'),
(172, 7, 'ipsum', 'http://swaniawskimraz.info/', '1', 'Sed numquam similique magni fugiat modi cupiditate. Voluptatem voluptatibus distinctio eveniet praesentium aperiam minima sit deleniti.', 2, '1972-05-22 02:04:51'),
(173, 6, 'minima', 'http://www.schaden.com/', '1', 'Beatae praesentium magnam dolor unde. Sequi ad laudantium nihil adipisci. Facere nemo debitis cumque perspiciatis ut qui quam.', 6, '2018-06-19 07:48:58'),
(174, 2, 'vitae', 'http://feil.net/', '', 'Sunt ipsum autem porro quo. Distinctio dicta ipsum sit est autem. Qui labore aut nobis suscipit accusamus ea molestias accusantium. Vel cumque recusandae magnam sint explicabo inventore labore doloribus. Assumenda ipsum et alias itaque voluptates.', 3, '2008-10-07 11:38:36'),
(175, 7, 'rerum', 'http://www.monahan.org/', '1', 'Ad mollitia ab ut aut doloribus voluptatem. Exercitationem quia harum qui ea labore quaerat consequatur et. Laboriosam sunt non itaque consequatur corrupti numquam. Libero dolor et aspernatur debitis nemo commodi.', 5, '1985-01-24 20:19:57');

-- --------------------------------------------------------

--
-- Table structure for table `displaySubcategory`
--

CREATE TABLE `displaySubcategory` (
  `displaySubCategoryId` int(11) NOT NULL,
  `displaySubCategoryName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `displaySubCategoryPosition` int(11) NOT NULL,
  `displayCategoryId` int(11) NOT NULL,
  `adminId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `displaySubcategory`
--

INSERT INTO `displaySubcategory` (`displaySubCategoryId`, `displaySubCategoryName`, `displaySubCategoryPosition`, `displayCategoryId`, `adminId`) VALUES
(1, 'magnam', 9, 5, 1),
(2, 'occaecati', 8, 2, 0),
(3, 'sint', 8, 8, 0),
(4, 'sint', 7, 4, 8),
(5, 'non', 4, 0, 6),
(6, 'in', 0, 9, 4),
(7, 'animi', 5, 6, 7),
(8, 'animi', 4, 0, 2),
(9, 'quia', 1, 8, 7),
(10, 'assumenda', 1, 7, 4),
(11, 'consequatur', 6, 5, 4),
(12, 'deleniti', 8, 9, 5),
(13, 'qui', 9, 6, 7),
(14, 'corporis', 8, 9, 4),
(15, 'fuga', 5, 3, 5),
(16, 'autem', 2, 4, 8),
(17, 'incidunt', 7, 8, 6),
(18, 'a', 6, 3, 6),
(19, 'quaerat', 1, 6, 1),
(20, 'nam', 6, 6, 8),
(21, 'qui', 6, 3, 6),
(22, 'repellat', 0, 3, 7),
(23, 'numquam', 0, 1, 6),
(24, 'id', 7, 8, 7),
(25, 'sapiente', 9, 5, 2),
(26, 'et', 1, 1, 8),
(27, 'nobis', 8, 3, 4),
(28, 'nobis', 2, 1, 5),
(29, 'ut', 3, 7, 8),
(30, 'fuga', 9, 6, 7),
(31, 'at', 5, 4, 6),
(32, 'nihil', 4, 9, 0),
(33, 'dolore', 4, 3, 9),
(34, 'illo', 9, 2, 5),
(35, 'et', 0, 9, 6),
(36, 'laboriosam', 2, 4, 7),
(37, 'sapiente', 7, 4, 4),
(38, 'et', 5, 3, 3),
(39, 'in', 5, 2, 9),
(40, 'vel', 4, 9, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `expensessummary`
-- (See below for the actual view)
--
CREATE TABLE `expensessummary` (
`month` varchar(9)
,`totalExpenses` double
);

-- --------------------------------------------------------

--
-- Table structure for table `offeredOrder`
--

CREATE TABLE `offeredOrder` (
  `offeredOrderId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `supplierName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminId` int(11) NOT NULL,
  `offeredOrderStamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `offeredOrder`
--

INSERT INTO `offeredOrder` (`offeredOrderId`, `orderId`, `supplierName`, `adminId`, `offeredOrderStamp`, `total`) VALUES
(5, 9, 'Gbc', 16, '2018-08-08 13:00:29', 2448),
(6, 10, 'Region State', 16, '2018-09-18 17:45:46', 15686),
(8, 13, 'Fruit and Veg', 16, '2018-10-30 18:00:01', 22500),
(9, 14, 'Orizon', 16, '2018-10-31 21:19:22', 2640),
(12, 22, 'Fruit and Veg', 16, '2018-01-02 17:03:47', 3252.5),
(13, 23, 'Desmond', 16, '2018-02-08 17:08:42', 1988.45),
(14, 24, 'Reunion', 16, '2018-07-02 17:14:54', 8684),
(15, 25, 'Azur', 16, '2018-07-11 17:16:26', 989),
(16, 27, 'Organic World', 16, '2018-10-16 17:24:17', 1350);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL,
  `adminId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `adminId`) VALUES
(5, 16),
(6, 16),
(9, 16),
(10, 16),
(13, 16),
(14, 16),
(18, 16),
(19, 16),
(20, 16),
(21, 16),
(22, 16),
(23, 16),
(24, 16),
(25, 16),
(26, 16),
(27, 16);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `subCategoryId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productPurchasePrice` float NOT NULL,
  `productSellingPrice` float NOT NULL,
  `productImgUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productActive` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adminId` int(11) NOT NULL,
  `productStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `subCategoryId`, `productName`, `productPurchasePrice`, `productSellingPrice`, `productImgUrl`, `productActive`, `productDescription`, `adminId`, `productStamp`) VALUES
(1, 1, 'aperiam', 0, 1812, 'http://schmidt.com/', '', 'Eos quibusdam deserunt minima et pariatur omnis. Consequuntur repudiandae id et placeat maiores commodi porro facilis. Quia molestias aut repellat est.', 9, '2006-02-08 21:22:53'),
(2, 7, 'minima', 6560960, 824098, 'http://torp.com/', '1', 'Dicta qui et mollitia nulla voluptas. Voluptatem libero voluptas corporis quia et facilis non.', 2, '2015-02-08 08:29:14'),
(3, 8, 'quia', 3433200, 34140.6, 'http://davisbarton.info/', '', 'Numquam ut fugiat ut sit velit illo est. Quis et sint cum eligendi voluptatem et. Voluptas molestiae esse dolor doloribus cum.', 2, '2004-01-19 09:51:44'),
(4, 4, 'in', 661024, 16857300, 'http://conroydaniel.com/', '', 'Iure mollitia quidem praesentium quisquam et nemo. Doloribus quo voluptas ducimus corporis rerum.', 3, '1973-12-24 01:07:34'),
(5, 1, 'labore', 0, 132.399, 'http://www.ohara.org/', '', 'Aut ratione doloremque dolorem alias nemo voluptatum voluptatibus. Ad modi ratione in impedit facilis corporis. Quia nisi consequatur impedit veritatis. Veritatis quia corrupti deserunt suscipit quo praesentium perspiciatis.', 6, '2016-07-06 22:04:29'),
(6, 1, 'autem', 45700300, 2.74307, 'http://veum.info/', '1', 'Facere odit veritatis error exercitationem deserunt consequatur excepturi. Odit voluptate nostrum facilis iure optio magni et iure. Occaecati optio quam consequatur vitae magni ratione. Sapiente id consequuntur asperiores qui cum rerum.', 5, '1993-02-25 14:43:29'),
(7, 3, 'libero', 0.8818, 302.312, 'http://gutkowskiwiegand.com/', '', 'Et qui magni error nostrum omnis modi doloribus. Sint aperiam harum ut praesentium molestiae eum mollitia nesciunt. Dolores soluta sed quia distinctio quod necessitatibus suscipit. Harum libero voluptatibus est sed quibusdam.', 4, '2004-09-04 13:24:38'),
(8, 5, 'excepturi', 135375000, 22.3, 'http://www.murphy.biz/', '', 'Sequi doloribus eos consectetur. Similique soluta consequatur quis nobis. Adipisci laboriosam delectus sunt voluptas quod ipsa non ab. Ut ullam consequatur est sint tenetur aut.', 4, '1990-12-27 18:58:23'),
(9, 3, 'eos', 1733.18, 0, 'http://jacobs.com/', '', 'Animi eveniet laborum atque ab. Vel tempora accusamus perspiciatis reiciendis rerum rerum. Nemo tempore totam odio quo.', 2, '2006-12-06 19:59:34'),
(10, 0, 'accusamus', 134982000, 24, 'http://mcdermott.com/', '1', 'Harum et provident ut laboriosam. Eius aperiam non fuga illum. Quasi ut qui debitis ab. Ipsum omnis ipsa beatae debitis itaque et.', 7, '2004-09-02 11:06:02'),
(11, 5, 'cupiditate', 27390.9, 58.1549, 'http://www.prosacco.org/', '1', 'Esse aut dolores deserunt non. Ut id quam natus illo culpa voluptatibus. Quas beatae et minima molestiae. Expedita minus aut et vel neque culpa.', 5, '2003-03-04 20:35:51'),
(12, 5, 'minima', 2.86067, 37546, 'http://nienowcasper.com/', '', 'Totam cumque pariatur voluptatem in ut praesentium nesciunt. Voluptatem cumque in eius laudantium totam quia et aperiam. Dolorum similique qui repellendus incidunt aliquid. Quam ea alias nam.', 0, '1972-10-28 13:10:03'),
(13, 7, 'occaecati', 30968000, 2609640, 'http://www.braunoconner.com/', '1', 'Id voluptate reiciendis placeat voluptas reiciendis optio. Voluptates repellendus id aut distinctio quo qui. Nulla laborum ex aperiam molestias ut sapiente consequuntur.', 5, '1986-05-25 14:23:59'),
(14, 8, 'adipisci', 48.805, 8811.69, 'http://von.biz/', '1', 'In impedit eum sint corporis natus ipsam. Non sit voluptatem dolorem assumenda. Dolore aut occaecati facere et atque dolorem. Dolor debitis voluptates perferendis.', 2, '1997-07-21 22:25:11'),
(15, 0, 'ut', 482.079, 446383000, 'http://morissettejones.com/', '1', 'Nemo laborum et quos laboriosam voluptas id. Debitis similique unde nobis est omnis.', 2, '1988-05-15 19:04:37'),
(16, 9, 'delectus', 33011.4, 40803, 'http://quitzondamore.com/', '', 'Voluptates accusantium reiciendis excepturi enim repudiandae iusto. Aut dolor fuga eos in. Quam illo dolorem modi cum libero.', 7, '1992-02-04 13:47:14'),
(17, 6, 'voluptates', 75.6908, 18879600, 'http://kreiger.org/', '', 'Alias aut consequatur blanditiis ut et nesciunt molestiae. Fugiat et illum tenetur quam maxime non. Repellat eos animi aut voluptas.', 1, '1982-06-01 21:54:54'),
(18, 9, 'est', 6.17837, 1.9, 'http://www.dickens.biz/', '', 'Quia praesentium excepturi qui omnis autem necessitatibus quis facilis. Sed reiciendis veniam rem illo culpa. Voluptas quia et necessitatibus tempora molestias cumque.', 9, '1999-03-14 11:55:15'),
(19, 1, 'magnam', 13572.5, 199396, 'http://thompsonpaucek.info/', '1', 'Ut nihil inventore cum iusto. Et cum magnam quod non fugit iusto cumque laboriosam. Excepturi sunt est molestias asperiores.', 6, '2013-09-02 07:31:33'),
(20, 6, 'libero', 835732, 11215200, 'http://hauck.com/', '', 'Perspiciatis exercitationem ducimus dicta et. Unde cupiditate et quos debitis et ut. Est non accusantium ea reprehenderit non impedit. Officiis et distinctio voluptas quae a. Repellendus ut iusto voluptatem soluta sit et.', 4, '1997-01-24 20:00:04'),
(21, 5, 'aut', 16298400, 817636, 'http://binsgutkowski.org/', '', 'Et ea in similique illo dolorum quo necessitatibus. Error consequatur a sapiente in et vero. Pariatur error ab repudiandae qui illo quae.', 5, '2011-11-20 20:10:39'),
(22, 1, 'voluptatem', 136694, 0.928573, 'http://mckenzie.info/', '', 'Et voluptatem maxime autem ut fugiat quia ut. Sequi cupiditate nulla in dignissimos. Non voluptatem nemo voluptas at rem excepturi.', 2, '2002-11-02 21:24:40'),
(23, 8, 'quam', 1021.02, 19260.9, 'http://runolfsson.net/', '', 'Ut ipsum ut et fuga. Ipsum sit aut fuga laborum et amet qui. Repudiandae culpa occaecati reiciendis laboriosam. Totam consectetur esse natus unde natus et consequatur eveniet.', 3, '2016-02-19 20:13:57'),
(24, 9, 'facere', 90.421, 0, 'http://daugherty.biz/', '1', 'Natus rerum mollitia quis et. Consequatur voluptas iure nisi ut quos. Quidem autem quis harum.', 3, '1990-08-29 19:16:48'),
(25, 9, 'est', 0, 30.9756, 'http://www.dibbertcarter.com/', '1', 'Laboriosam pariatur aut ut aut minus ducimus. Et enim nam et laborum molestiae maiores modi. Ut eum possimus cumque sit saepe dolorem eos. Dolor illum veniam inventore ratione quia itaque.', 9, '1998-11-02 23:41:00'),
(26, 2, 'autem', 23.0243, 15376.8, 'http://mitchell.net/', '', 'Odio nobis dignissimos aliquid veritatis aliquid facere ut iure. Praesentium adipisci voluptatem doloremque fugiat magnam tempore. Iusto ut eum sed animi est dolorum similique aspernatur.', 4, '2009-04-17 03:14:00'),
(27, 6, 'accusamus', 216317000, 29096800, 'http://manndenesik.net/', '', 'Nostrum facere necessitatibus id quasi ea minima rerum. Harum quaerat sed est et sapiente. Ea nesciunt ut eligendi nostrum est iste qui.', 5, '1978-07-12 19:04:35'),
(28, 7, 'nobis', 74221.4, 54345200, 'http://borerschinner.com/', '', 'Sint saepe magni enim sunt aut sit. Alias aliquid voluptatem sed tempore qui. Esse molestiae est et officiis consectetur distinctio quae.', 5, '1993-10-30 19:43:51'),
(29, 6, 'error', 7946, 326048000, 'http://fahey.com/', '1', 'Exercitationem eveniet officiis quo impedit facere. Cumque commodi vel voluptatum voluptatem modi sunt. Aut quia voluptatibus esse. Ea tenetur eligendi mollitia.', 9, '1995-03-07 14:07:00'),
(30, 5, 'quasi', 5.33366, 498964, 'http://www.franecki.info/', '', 'Nemo facere vitae nihil quibusdam et adipisci nesciunt. Quis minus aliquam voluptatem qui officia.', 5, '1991-09-05 03:29:24'),
(31, 1, 'labore', 1171.06, 1570310, 'http://www.kosshessel.org/', '', 'Doloribus quisquam praesentium optio facere. Dicta et qui facilis rerum. Sequi quasi qui sed et beatae. Quos incidunt sunt quasi reiciendis eos incidunt est.', 1, '1974-02-13 07:13:42'),
(32, 0, 'magnam', 2478630, 238365, 'http://kihn.org/', '1', 'Modi ipsum repellat est sed ipsam. Aperiam architecto quas nihil occaecati repellendus. Et rem aperiam eaque ut doloremque. Magni quis voluptas facere deserunt illo mollitia similique.', 5, '1976-07-27 04:49:14'),
(33, 2, 'occaecati', 5.9, 574771, 'http://nienow.net/', '1', 'Laborum rem quis ut qui veniam. Incidunt id non ut delectus.', 1, '2009-03-07 17:56:39'),
(34, 9, 'autem', 428.413, 0, 'http://www.howellortiz.info/', '', 'Qui incidunt quos atque blanditiis. Ratione et ab maxime corrupti.', 0, '1991-06-09 02:09:21'),
(35, 5, 'consequatur', 798310, 276945, 'http://quitzon.info/', '', 'Similique eos voluptatem porro itaque non quas vitae. Nobis ex ab ipsum odit et. Porro facere quia nisi laborum autem.', 6, '1971-11-07 13:30:32'),
(36, 0, 'et', 37690.3, 4.6, 'http://www.jakubowski.com/', '1', 'Modi vel eum nihil quod. Blanditiis ut voluptatum ut quam eos et. Voluptatem doloremque est eligendi voluptate. Et sed quas aut rerum rem.', 4, '1973-02-27 19:53:12'),
(37, 3, 'quisquam', 0, 4.8, 'http://bode.org/', '1', 'Aut aut atque est praesentium. Voluptatem quia et quidem quaerat. Omnis esse expedita et sunt qui ab est. Unde deleniti cupiditate sint quisquam.', 1, '1992-01-04 14:11:05'),
(38, 6, 'optio', 1528160, 540688, 'http://www.mitchell.org/', '1', 'Et perspiciatis qui laboriosam officia culpa. Praesentium aperiam a voluptatem ut. Et ut at optio quia error enim modi. Quidem velit consequuntur accusamus voluptatibus velit dolor.', 1, '1973-03-30 04:23:05'),
(39, 8, 'quia', 49814200, 0, 'http://www.rutherfordrenner.com/', '1', 'Voluptas eaque eos saepe consequuntur laboriosam. Nihil odit ut odio dolor perferendis consectetur consequuntur. Recusandae omnis non sequi recusandae voluptate. Hic sapiente est velit ea sed maxime modi saepe. Excepturi dolor voluptates incidunt voluptat', 4, '2009-05-06 11:36:59'),
(40, 0, 'quo', 5371940, 792404000, 'http://www.walkerupton.com/', '', 'Harum officiis aliquam et ducimus illo. Beatae optio cum voluptatibus cumque est. Doloremque consequatur alias dolores quasi occaecati cumque. Non quia et voluptatem dolores.', 2, '1987-08-25 03:41:52'),
(41, 8, 'natus', 136.41, 465418, 'http://lebsack.info/', '', 'In eaque tempora eos tempore. Ad aut aut asperiores odio sunt nulla tenetur officia. Magni non doloremque fugit dolor.', 2, '1994-07-06 08:13:51'),
(42, 0, 'reprehenderit', 20.0232, 81810000, 'http://www.schmeler.com/', '1', 'Iste dolor eligendi eos odio eligendi. Adipisci enim quam et aut asperiores dignissimos voluptas dolores. Sequi aliquam quis labore voluptas perspiciatis. Voluptatem impedit harum quaerat.', 1, '1971-06-27 22:59:31'),
(43, 6, 'et', 536292, 98457.7, 'http://larkin.biz/', '1', 'Nihil et tempore et natus similique libero. Quis voluptatem odit enim ut voluptatibus quaerat id. Dignissimos maiores labore facere omnis nisi.', 8, '2015-06-28 02:08:14'),
(44, 5, 'sit', 352672000, 149634000, 'http://sipesrunolfsson.org/', '', 'Eos impedit nobis reprehenderit pariatur itaque architecto. Omnis in error aut porro. A voluptas libero aut.', 8, '1988-10-11 10:47:40'),
(45, 6, 'ipsa', 265.44, 237.396, 'http://lueilwitzkonopelski.net/', '', 'Et quis animi earum et a quo. Ut eum dolore ducimus consectetur praesentium. Nulla sed dolor vel doloremque doloribus et. Sit repellendus vitae aliquid aliquid et.', 6, '1987-07-26 14:00:42'),
(46, 4, 'maiores', 2.45072, 30670800, 'http://www.lehneroberbrunner.info/', '1', 'Officia et et voluptatum mollitia non. Aut non ab voluptate illum. Et natus nihil aliquam aut optio. Quia dolorem beatae necessitatibus eaque fugit quos architecto assumenda.', 1, '2011-06-02 12:33:14'),
(47, 4, 'omnis', 6317.1, 0, 'http://www.legros.info/', '1', 'Est enim accusantium eaque non provident facere repellat. Aut est tempore corrupti a perferendis dolor. Esse sit eos doloribus eligendi. Laboriosam deleniti quo laborum vel magnam consequatur in. Cumque cumque a hic asperiores ab labore sed.', 6, '1973-02-04 13:25:12'),
(48, 2, 'veritatis', 86.5, 2.138, 'http://lindgren.com/', '', 'Quos aliquid facere repellendus in ea. Et sapiente a nemo quasi. Nam magni suscipit fugiat sed.', 3, '1974-05-09 00:19:08'),
(49, 2, 'fugiat', 58581.7, 568.2, 'http://www.rutherford.com/', '', 'Dolores sed porro non labore in dolor autem. Occaecati hic voluptas blanditiis voluptatibus dignissimos aut. Minima est asperiores enim laboriosam.', 8, '1996-03-21 13:22:54'),
(50, 6, 'voluptatem', 218.201, 20142600, 'http://smith.biz/', '', 'Corrupti dolor et tempore ut non quaerat. Quis aut deleniti fugit. Velit dolores possimus animi voluptatem. Facilis et est pariatur explicabo officia.', 4, '2001-01-24 02:08:46'),
(51, 3, 'incidunt', 305524, 1.23715, 'http://www.ornbarton.biz/', '', 'Accusamus quis ipsam iure qui. Libero ea dolore distinctio et magni eaque et. Accusamus consequuntur quia veniam ut et. Quod autem rem provident officiis.', 9, '1977-08-15 20:55:09'),
(52, 9, 'quo', 7, 1364550, 'http://abbott.com/', '', 'Nobis non asperiores natus eligendi voluptatum id et. Magni voluptatem pariatur quia. Rerum aut et quis sed.', 6, '1991-01-05 14:58:59'),
(53, 2, 'itaque', 6.3, 1363.5, 'http://www.moen.biz/', '', 'Quas doloribus itaque tempora est. Fuga omnis repellendus autem dolor. Nobis dolores rerum facilis placeat enim dicta totam autem. Velit ex omnis quis. Consequatur inventore optio sit eum.', 8, '1991-06-16 03:27:56'),
(54, 5, 'alias', 1269130, 1560.02, 'http://www.lebsackvon.com/', '1', 'At eligendi deserunt minus reprehenderit. Omnis quos iusto quam tenetur rerum et omnis. Voluptates ut esse quasi aut voluptatum ab est. Numquam sint quis nobis possimus.', 7, '2006-06-19 00:22:19'),
(55, 1, 'architecto', 349149000, 1297.61, 'http://conn.biz/', '1', 'Necessitatibus perspiciatis vero omnis et dolorem a. Velit ratione doloremque sit reiciendis.', 3, '1997-09-12 01:28:54'),
(56, 9, 'in', 22.1603, 11.4501, 'http://www.lockmansmitham.com/', '', 'Molestiae magnam enim non id. Id officiis voluptatum dolorum dicta voluptas necessitatibus non. At omnis aspernatur suscipit aut ut ad quas.', 3, '1988-08-14 20:57:16'),
(57, 8, 'ad', 16849000, 10611100, 'http://www.wisozk.com/', '1', 'Voluptatem animi ipsam fuga corporis. Non qui autem est quos non cupiditate. Corporis ipsa illum voluptas. Non maiores sit nobis sunt.', 6, '2003-05-21 17:50:52'),
(58, 2, 'id', 16415, 12842.6, 'http://hageneskub.org/', '1', 'Ratione soluta consequatur iste sit ducimus. Dolore voluptatum autem ad quia error qui.', 8, '1980-10-09 03:10:08'),
(59, 0, 'optio', 3, 0, 'http://www.huels.com/', '1', 'Porro soluta iure doloremque voluptas laborum quibusdam cumque. Eos nulla nulla molestiae nihil doloribus nesciunt. Dolor libero rerum rerum. Et nihil doloremque iure et possimus.', 1, '2011-10-25 18:48:21'),
(60, 9, 'eaque', 15595.7, 23757.1, 'http://kohlerfriesen.com/', '', 'Nostrum nisi magni excepturi et ut et. Fugiat itaque qui ducimus saepe recusandae quia. Eaque voluptas nemo voluptas ratione.', 4, '1992-09-17 15:58:56'),
(61, 2, 'omnis', 58151.4, 11063500, 'http://legros.info/', '', 'Quisquam quo sed est. Neque modi fugiat dolores consequatur. Distinctio consequuntur non veritatis molestiae aut voluptatem nihil et. Veniam sunt dicta maiores accusamus voluptatem.', 3, '1976-02-04 14:34:09'),
(62, 6, 'ipsa', 598.18, 1816360, 'http://www.kemmerhamill.com/', '1', 'Labore mollitia rem dignissimos iusto repudiandae doloribus tenetur. Voluptatibus voluptatem et numquam minima labore facere hic.', 1, '1977-04-13 20:11:39'),
(63, 0, 'ut', 4, 16.6057, 'http://greenfelder.com/', '1', 'Sit eum inventore officiis voluptatem delectus qui omnis. Et laboriosam aperiam sint rerum laudantium dolore. Ullam maiores ex culpa voluptatum.', 3, '1999-07-02 10:16:58'),
(64, 7, 'eum', 72039.7, 254.102, 'http://wilderman.com/', '1', 'Temporibus similique rerum nihil omnis perspiciatis numquam. Autem similique iusto maiores nisi assumenda ut. Dolor quo id cupiditate quam quo nostrum. Cupiditate non et ratione labore officiis quos repellat.', 9, '2004-10-31 05:27:08'),
(65, 0, 'quos', 218.5, 3733860, 'http://www.armstrong.net/', '1', 'Omnis rem quo accusantium. Maxime exercitationem culpa debitis eum ut eum dolor. Aliquid consequatur et beatae deserunt.', 5, '1996-10-05 00:35:20'),
(66, 1, 'dolore', 3.69442, 0, 'http://www.donnelly.com/', '', 'Corrupti dolorum sit debitis. Atque voluptates voluptatem ex eos qui nisi aspernatur.', 3, '1972-05-18 17:00:19'),
(67, 5, 'quas', 128621, 391379, 'http://stark.com/', '1', 'Neque repellat esse ad asperiores vitae aspernatur excepturi. Cumque et est nesciunt eos dolor aut. Enim et velit excepturi sint sed. Ut sed velit explicabo enim unde commodi.', 2, '2003-01-24 07:55:56'),
(68, 9, 'voluptatum', 394880000, 1.72643, 'http://botsfordreynolds.com/', '1', 'Non eveniet quisquam et inventore molestiae et. Aspernatur et officia quia.', 7, '2012-11-17 21:26:57'),
(69, 8, 'quia', 633.916, 295.867, 'http://www.walker.com/', '', 'Molestiae autem eaque labore voluptates. Blanditiis deserunt quia deleniti autem et similique nihil. Sed amet eos et nobis sit dicta molestiae. Qui enim dolorem quod.', 1, '1981-10-17 09:27:58'),
(70, 2, 'ut', 222762, 2503, 'http://www.feeney.org/', '', 'Consequatur qui voluptatum sunt ducimus qui distinctio est. Iure sed assumenda ut iusto voluptatem. Fugit qui ea sed tenetur odit. Ipsum ipsam saepe repellendus ipsam minima libero.', 8, '2011-09-25 23:34:47'),
(71, 7, 'at', 10538.9, 7175110, 'http://www.kuhnlakin.info/', '1', 'Voluptatem soluta iste omnis quos. Ut soluta praesentium repellat sint et illum. Iusto qui ut vel est expedita alias fuga.', 1, '2008-07-30 21:22:42'),
(72, 6, 'inventore', 12.4125, 27741.7, 'http://www.corkery.com/', '', 'Voluptas repellendus et impedit quis deleniti unde expedita. Nemo tenetur et dolor rerum magni veritatis. Est assumenda earum distinctio aut aperiam. Quos deleniti voluptatem repellat ullam explicabo.', 6, '1993-12-29 16:58:26'),
(73, 8, 'rerum', 5, 0, 'http://www.bahringertromp.com/', '1', 'Qui blanditiis et rem fuga perspiciatis itaque. Officia delectus quo aut minima doloremque. Reprehenderit autem dolor sit reiciendis id nobis repudiandae et.', 0, '2010-03-02 02:53:46'),
(74, 9, 'blanditiis', 392432, 92131100, 'http://runte.com/', '1', 'Alias et eum omnis nobis nihil. Eaque qui corporis voluptatibus.', 6, '1994-08-20 10:05:38'),
(75, 6, 'voluptas', 342.986, 277.348, 'http://www.schumm.com/', '1', 'Voluptatibus impedit ex enim facilis quasi. Velit natus expedita possimus sint dolore velit illo.', 2, '1977-02-22 20:50:49'),
(76, 9, 'et', 160932, 476408, 'http://hayes.com/', '', 'Veniam eos minima odio recusandae. Velit rerum adipisci molestias temporibus quas laborum impedit est. Error quidem voluptatem quas nam. Excepturi quibusdam saepe eos.', 1, '1987-03-05 04:09:54'),
(77, 2, 'qui', 21.3435, 62718900, 'http://www.deckowdamore.com/', '', 'Omnis quidem nihil totam. Voluptatem consequatur quia iusto iste asperiores soluta. Sequi similique quae suscipit dicta ad voluptate.', 6, '1991-01-26 16:02:24'),
(78, 0, 'rerum', 4204410, 723.238, 'http://kirlin.info/', '1', 'Dolore doloremque animi eaque. Eum accusamus ut quaerat aut dolores illum ex deleniti. Est hic voluptatem maiores illum.', 9, '1995-07-09 15:17:22'),
(79, 3, 'modi', 0.262, 5.46885, 'http://www.kunze.info/', '1', 'Porro consequatur perspiciatis sunt laboriosam voluptatibus iure facere assumenda. Explicabo esse ut nihil. Hic labore laboriosam quo facilis. Consequatur qui aliquam voluptas voluptatem.', 1, '1998-12-20 07:46:27'),
(80, 5, 'maiores', 4.87, 1553090, 'http://www.howe.com/', '', 'Ipsum nihil culpa repudiandae consequuntur deleniti voluptatum hic. Mollitia repellendus est hic corrupti voluptatem ducimus. Ipsam necessitatibus voluptas dolor vel fugiat. Laborum quidem quae sed nostrum explicabo.', 1, '1995-01-17 11:37:28'),
(81, 8, 'eveniet', 307267000, 239553, 'http://gerhold.com/', '1', 'Aut praesentium eius assumenda saepe sit blanditiis. Molestias sed minima ut vel rerum vitae. Incidunt esse tempora et sed. Ipsum sunt odio voluptatibus.', 3, '1983-05-15 05:12:15'),
(82, 5, 'temporibus', 358.321, 3127980, 'http://abshirehoeger.com/', '', 'Et corrupti maiores et dolores ut. Nostrum et ut at et aliquam voluptas. Atque cum ut doloremque quia ad et occaecati ratione. Sunt vero voluptatibus fugit at molestias.', 4, '1979-05-08 12:48:15'),
(83, 3, 'tempora', 412783, 372.314, 'http://will.com/', '', 'Sunt necessitatibus ullam et autem et omnis rem velit. Possimus consequatur autem praesentium. Quibusdam culpa ea consequatur repellat rem.', 2, '1975-01-09 03:08:43'),
(84, 6, 'molestiae', 2.01035, 2.9, 'http://kautzer.com/', '', 'Quam quia veniam occaecati explicabo et et sunt. Recusandae amet ad ex. Voluptatem amet suscipit quisquam deserunt voluptas. Modi consequuntur doloribus placeat consectetur quisquam tempora eveniet.', 8, '1974-02-07 13:39:35'),
(85, 0, 'dolorem', 2678.52, 1.83125, 'http://bergnaumjohns.com/', '1', 'Corporis qui ut architecto et quaerat. Adipisci ex quis repudiandae voluptas omnis sequi quia. Aut accusantium voluptas reiciendis illum.', 7, '1981-06-29 05:07:16'),
(86, 6, 'ut', 359402, 58.5197, 'http://www.bernhard.com/', '1', 'Beatae molestiae ut qui et in consequatur. Ut consectetur omnis voluptates aspernatur voluptatibus. Vel ea ea ut sed dolor sit.', 6, '2000-04-10 08:57:30'),
(87, 1, 'maiores', 0, 37.4426, 'http://www.reynolds.com/', '1', 'A voluptatibus sed quo consequuntur. Rerum aut omnis id aliquid consequatur aperiam. Quisquam consequatur in ipsam. Nisi accusantium rerum quos suscipit tenetur.', 2, '2015-06-20 20:40:36'),
(88, 6, 'ut', 60969300, 39304.8, 'http://www.kohler.biz/', '', 'Incidunt ducimus libero doloribus excepturi nemo molestias qui. Et optio quo sequi neque eum eum. Fuga soluta culpa est facilis.', 1, '1993-08-11 07:30:13'),
(89, 8, 'dicta', 0.825539, 5.24208, 'http://vandervort.info/', '1', 'Molestiae quo quae est aut amet labore amet. Numquam rerum recusandae id exercitationem eum numquam. Impedit magnam harum repellat.', 4, '1979-02-28 06:18:25'),
(90, 7, 'voluptatum', 82217500, 4085.35, 'http://www.shields.biz/', '1', 'Incidunt culpa rerum officiis placeat ut perferendis numquam. Eius excepturi labore non vel. Quia ipsa vel voluptatem et perspiciatis sapiente possimus.', 0, '2013-06-12 13:47:50'),
(91, 1, 'laborum', 19990.9, 1601090, 'http://www.bechtelar.com/', '', 'Dolorem nostrum aspernatur libero repudiandae. Itaque et nihil est ducimus.', 4, '1995-07-17 18:02:42'),
(92, 3, 'et', 25144400, 2904230, 'http://grimes.com/', '1', 'Repellat facilis totam ab architecto odio. Vitae voluptatibus harum laudantium aperiam sint.', 3, '1990-12-20 11:49:01'),
(93, 1, 'qui', 44.0449, 1493.15, 'http://www.padbergkutch.biz/', '1', 'Rerum aut id occaecati quisquam quae eos odio. Consequatur deleniti sit vero assumenda voluptatem modi magni. Quod neque et cumque. Quisquam iusto beatae quidem at et ipsa.', 8, '2005-02-22 01:51:43'),
(94, 7, 'veritatis', 24116.8, 7162.3, 'http://www.cummings.biz/', '1', 'Inventore voluptatem laborum in aut. Tempore harum consequatur beatae corrupti doloribus molestiae nam placeat. Est odio dolore aut omnis iusto omnis sunt. Reiciendis voluptatem dolorem veniam ipsam aspernatur ad nobis. Iste voluptas impedit sunt soluta t', 8, '2010-03-19 13:30:57'),
(95, 3, 'et', 12015.4, 0, 'http://www.littlekassulke.com/', '', 'Occaecati enim inventore ut rerum quisquam sunt repudiandae. Nemo deserunt neque vero omnis sint dolores sed. Et nihil quo aperiam.', 8, '2017-07-22 18:45:13'),
(96, 3, 'dignissimos', 222249000, 806859, 'http://www.carter.com/', '1', 'Vel provident dolor amet praesentium. Qui earum vel a et. Qui aut ipsam incidunt fugiat eius. Eligendi provident laboriosam sunt. Nulla et aut veritatis laborum itaque.', 6, '2012-03-10 00:20:42'),
(97, 3, 'quo', 403979000, 43242.4, 'http://waelchiturner.com/', '1', 'Omnis nulla voluptate quidem ea vel dolorum. Eveniet ab ut ratione minus repellendus. Voluptas voluptas et perferendis illum ex error doloribus est.', 1, '1976-07-10 02:35:26'),
(98, 8, 'cum', 14270200, 39651000, 'http://marks.com/', '1', 'Quaerat rerum qui est non ducimus voluptatum totam. Dignissimos veniam omnis doloribus non at facere vitae. Sed et pariatur in quos. Ipsam pariatur dolores quis molestias ipsum voluptas quo.', 1, '1991-03-12 08:13:10'),
(99, 4, 'sequi', 8.72891, 12.5011, 'http://emmerich.org/', '', 'Et illo aut eius in provident. Voluptatem sint voluptatem odit aut. Voluptatem dolor consequatur ut vitae. Autem occaecati earum at dicta placeat.', 7, '1972-07-05 06:47:00'),
(100, 8, 'eius', 4599.52, 33.4553, 'http://emmerich.com/', '1', 'Est quod velit iste esse. Neque quia qui et vel eos.', 1, '1986-07-01 09:01:33'),
(101, 3, 'a', 36876000, 31592.7, 'http://www.thompsonflatley.biz/', '', 'Nisi asperiores dolores fugit impedit minima voluptates quaerat. Hic praesentium expedita voluptatibus est optio voluptas. Consequuntur in rerum voluptatum ea et minus excepturi. Est qui voluptatem omnis culpa repellendus velit.', 7, '2007-05-03 02:04:58'),
(102, 7, 'odio', 306.26, 30083, 'http://www.zemlak.com/', '', 'Possimus sapiente qui sed quo unde. Quod quam sapiente recusandae numquam rerum nemo perspiciatis. Optio assumenda ipsum eum voluptatem voluptate.', 7, '2013-11-15 05:43:45'),
(103, 0, 'dolor', 1.52, 8456870, 'http://www.considinestrosin.com/', '', 'Ullam qui exercitationem excepturi omnis est officia impedit. Quia at fugiat ut sit suscipit sapiente. Illum commodi debitis repudiandae odio fugit illum qui.', 2, '2008-10-03 17:05:39'),
(104, 6, 'deleniti', 747550, 40.316, 'http://ziemannwalter.net/', '1', 'Perspiciatis aspernatur iste ad rerum id dolorum. Tenetur aut et expedita nihil et iure maxime asperiores. Earum nulla asperiores vel quia et expedita. Alias sed sunt ratione animi velit assumenda velit.', 2, '1989-09-05 02:02:02'),
(105, 4, 'quia', 631.52, 25155900, 'http://www.lang.info/', '1', 'Natus molestiae non dicta eaque. Sequi voluptatibus amet laudantium alias maiores perspiciatis optio molestiae. Doloribus cumque similique dolorum odit eos provident quam.', 5, '2015-05-14 21:19:45'),
(106, 7, 'veniam', 213531, 331.751, 'http://www.schroeder.net/', '', 'Et est corporis accusantium quibusdam dolores. Minima id dolor dolor ipsum fugiat laborum et. Deleniti qui assumenda et eum nulla enim. Nam distinctio fugit eaque doloremque soluta.', 9, '2017-06-21 18:50:31'),
(107, 3, 'aut', 244.112, 0.1, 'http://roberts.biz/', '1', 'Corrupti sit quia rerum maxime excepturi. Aliquam ducimus nesciunt accusantium similique id. Eligendi omnis esse quis et. Minima aut blanditiis dignissimos doloribus quisquam. Quam qui consequatur architecto nemo praesentium ut laborum.', 6, '2014-12-17 16:28:49'),
(108, 8, 'eum', 6257860, 14795.1, 'http://konopelski.com/', '', 'Ipsum vel nam natus quod eligendi veniam. Mollitia cupiditate officiis esse esse. Debitis fuga distinctio et deleniti eum non vitae.', 3, '1988-07-02 14:07:58'),
(109, 0, 'ab', 4773390, 8.94806, 'http://gibson.com/', '', 'Eum explicabo ratione et harum cupiditate officia. Omnis ut praesentium enim beatae cum explicabo.', 5, '1981-05-08 02:38:56'),
(110, 1, 'ad', 2.4388, 0, 'http://www.hodkiewicz.info/', '1', 'Possimus officia similique et voluptatibus. Asperiores et aut nihil aspernatur magni. Optio qui deleniti facere ducimus voluptatem temporibus officia. Id perspiciatis eum quam voluptas architecto ut dolorum. Aut quia recusandae harum ut consectetur.', 1, '1998-10-04 19:49:07'),
(111, 3, 'eius', 34177.2, 0, 'http://www.schaeferaltenwerth.com/', '', 'Dignissimos accusamus neque deserunt in vel id doloremque. Vel nihil laborum et consequuntur. Quasi incidunt consequatur eum et est impedit cupiditate. Quisquam quasi ex ratione in.', 2, '1999-04-13 23:49:03'),
(112, 9, 'qui', 5177640, 65196000, 'http://wintheiserdenesik.com/', '1', 'Eveniet ipsum ut eos corrupti est quia. Ullam at quae nobis porro ut perferendis. Laudantium sit ratione voluptatem doloribus.', 8, '1999-08-10 00:01:43'),
(113, 3, 'ut', 2071.71, 607084000, 'http://boyertoy.com/', '1', 'Quod incidunt voluptates est. Aut deleniti molestiae autem qui voluptatem modi voluptates accusantium. Reprehenderit minus numquam odio iure cupiditate. Inventore non sed deleniti.', 3, '2011-12-14 20:47:22'),
(114, 8, 'et', 553263, 25986900, 'http://www.gislasondietrich.com/', '1', 'Unde culpa tempore fugiat deleniti. Qui et deserunt voluptas hic voluptatem hic. Impedit non voluptatem error vel quis sapiente.', 6, '1972-03-25 14:08:22'),
(115, 4, 'dolore', 4.804, 21600, 'http://reinger.com/', '1', 'Voluptatem autem error dolores maxime qui et distinctio. Pariatur rem repudiandae sit et temporibus. Maxime culpa minus consequatur. Omnis et praesentium deleniti nihil aspernatur.', 2, '1974-03-24 19:35:37'),
(116, 2, 'hic', 1786.86, 135524, 'http://www.goodwin.biz/', '1', 'Vitae sed aut explicabo rerum et deserunt. Expedita adipisci quae porro assumenda veritatis deleniti voluptas. Distinctio et ducimus eum ad. Quis atque dolorum est atque ullam sapiente.', 6, '2016-10-22 03:02:50'),
(117, 1, 'accusantium', 4676.1, 1.5131, 'http://wiegand.org/', '1', 'Voluptas eum id omnis magnam voluptatem sint animi. Et aut excepturi quidem quae quo assumenda. Nihil eligendi et repellendus dignissimos veritatis harum. Exercitationem dignissimos voluptatem ex distinctio alias nisi.', 6, '1992-05-05 00:02:46'),
(118, 7, 'et', 3721.96, 57613.8, 'http://renner.com/', '', 'Distinctio aut ex commodi doloribus occaecati hic voluptatem. Exercitationem perspiciatis expedita et dignissimos sequi quasi sequi quisquam. Non dolorum vitae consequuntur vel.', 4, '2017-08-02 19:57:56'),
(119, 5, 'dolor', 1656570, 209, 'http://www.ferrycollins.com/', '1', 'Veniam dolor architecto totam sed qui sunt excepturi. Non nobis et omnis suscipit omnis. Fugit itaque et non quae perferendis sed quaerat.', 6, '2004-11-07 12:35:03'),
(120, 3, 'nulla', 516074, 143702, 'http://fisher.org/', '', 'Dolore sed tenetur sapiente ea porro voluptatem. Quo eius autem aut dolores. Illum quia voluptatibus eos a ea atque.', 9, '1995-04-23 06:25:49'),
(121, 0, 'dolorum', 207325000, 10067, 'http://schaefer.net/', '1', 'Voluptate dolore et numquam architecto molestiae. Sapiente nisi ex modi voluptatem dolores minima. Qui ut vel optio aspernatur facere temporibus asperiores quis. Illum minima et atque fuga impedit dolorem corrupti.', 0, '1977-06-18 22:21:45'),
(122, 8, 'repellendus', 0, 0, 'http://www.lesch.com/', '1', 'Suscipit placeat sit dicta omnis id qui. Sit mollitia consequatur dolores voluptatibus qui iure molestiae quia.', 0, '2000-05-07 20:34:34'),
(123, 1, 'et', 3663, 614051000, 'http://www.pollich.com/', '1', 'Dolorem minus excepturi beatae molestiae esse nesciunt. Totam velit et consequatur voluptatibus labore sed deserunt exercitationem. Hic dolorem omnis ipsa eos qui. Beatae dignissimos nam officiis ea aut quia. Placeat asperiores est eligendi quam ipsam neq', 5, '2015-03-10 21:58:43'),
(124, 6, 'facilis', 23.2325, 87759.6, 'http://www.paucek.org/', '1', 'Facilis culpa soluta ut pariatur amet rerum. Eos quibusdam esse et dolores. Non natus perspiciatis qui voluptatem.', 8, '1994-07-03 09:21:03'),
(125, 2, 'dolores', 2168.82, 174771, 'http://www.wilkinson.com/', '', 'Impedit omnis nihil totam veniam est accusantium. Earum esse quisquam dolorem tempora possimus. Quas ut similique et ea. Ut nisi sit consequatur dolorem itaque vel.', 4, '1978-12-27 08:46:05'),
(126, 0, 'doloremque', 0, 22.7895, 'http://nikolaus.biz/', '1', 'Nulla aliquid vel voluptas est explicabo facere. Voluptatem doloremque nostrum facere itaque non inventore sit. Exercitationem voluptatem incidunt quas minus delectus blanditiis. Unde sit neque omnis doloremque ut.', 1, '1989-06-19 23:20:24'),
(127, 8, 'eos', 272213000, 5534580, 'http://www.hansen.com/', '1', 'Nesciunt maiores natus consequuntur consequatur qui praesentium. Tempore velit qui laudantium laboriosam. A ad debitis maiores officia quas. Omnis et sint reiciendis.', 5, '1992-04-19 03:25:15'),
(128, 2, 'harum', 296766, 1.346, 'http://www.hirthe.biz/', '1', 'Quidem sit fugit quis et. Harum voluptatibus impedit qui earum. Eum est ut placeat molestias dolor aliquid non inventore. Consequatur totam eius quisquam consequatur autem est sit occaecati.', 3, '2010-07-15 16:39:53'),
(129, 9, 'temporibus', 37.4322, 58, 'http://www.langhaley.com/', '1', 'Occaecati rerum libero cupiditate et deserunt. Laborum alias non nobis et omnis illo. Magnam sapiente dicta totam. Neque quia ex facere dolorem provident maxime.', 6, '1995-02-18 04:52:22'),
(130, 6, 'at', 32184.7, 404389000, 'http://emard.net/', '1', 'Sit ut dolorem alias excepturi. Ipsum enim quam aut sit. Delectus consequuntur recusandae ad id. Quia aliquam consequatur laudantium sit aliquam voluptas eos doloribus.', 9, '2001-11-21 15:09:06'),
(131, 6, 'dignissimos', 27.2577, 41.8718, 'http://bartellquitzon.net/', '1', 'Optio omnis neque occaecati est. Fuga nulla beatae qui quas aliquid.', 9, '1999-06-26 18:22:29'),
(132, 0, 'temporibus', 3274360, 5978560, 'http://crooks.com/', '', 'Doloremque consequatur nihil laudantium assumenda est. Quisquam laborum optio sequi qui minima iusto praesentium. Omnis maxime et maxime sed. Maiores non officia culpa enim commodi qui nobis. Rerum vel sapiente aut et asperiores labore.', 0, '1990-02-26 08:36:53'),
(133, 8, 'qui', 3, 1346.39, 'http://www.gutmannebert.com/', '1', 'Officia autem eligendi velit quam illum numquam. Aut explicabo rerum quasi maxime. Enim excepturi cum sit neque. Qui dolorem ea aut qui vel incidunt. Aliquam est est debitis est.', 8, '2004-09-04 14:51:08'),
(134, 2, 'qui', 445.826, 29449800, 'http://www.larson.com/', '1', 'Placeat nobis repellat laudantium necessitatibus amet et debitis. Quia soluta nemo sed maxime perspiciatis facilis qui sit. Non non soluta ex.', 5, '1989-11-29 09:15:27'),
(135, 2, 'quae', 5391130, 0, 'http://goodwin.com/', '1', 'Dolor hic nam incidunt. Qui nostrum vel et laudantium et consequatur modi inventore. Tempore quia autem reprehenderit id ad saepe.', 0, '2010-01-22 06:11:10'),
(136, 3, 'et', 97408500, 798, 'http://haaggerlach.com/', '', 'Enim ullam excepturi sed id sint. Repudiandae reiciendis et praesentium soluta sunt. Temporibus corporis officia non esse quidem consectetur.', 7, '1984-09-25 03:17:30'),
(137, 9, 'sit', 108641000, 4.37777, 'http://www.wilkinson.com/', '', 'Culpa nihil sit ipsam tenetur qui cum et. Nulla eum labore quisquam eaque quasi amet rerum nihil. Consequuntur nesciunt odit velit qui ut ullam saepe voluptatem. Earum beatae suscipit consequatur et.', 5, '2009-03-04 16:57:38'),
(138, 5, 'molestiae', 564.6, 3.01383, 'http://hirthe.com/', '', 'Autem labore placeat repellendus ex non et expedita quibusdam. Fugit aspernatur esse repudiandae id. Amet blanditiis sint dolorem expedita. Corrupti quis quod soluta officia accusamus sit tenetur.', 1, '1970-06-14 11:38:07'),
(139, 9, 'et', 53282, 44662700, 'http://walter.biz/', '1', 'Quia ad nihil sint vel. Cumque recusandae fugit neque error nemo. Officia voluptates molestias officia est et velit nihil. Ut aperiam eum veritatis minus labore commodi autem. Est soluta repellat dolores consequatur.', 2, '1988-05-10 11:44:04'),
(140, 1, 'aut', 6993.85, 367696000, 'http://www.wyman.com/', '1', 'Inventore saepe non fuga alias dolor ratione nihil. Consequatur non fugit totam sed itaque autem voluptas.', 5, '2018-02-02 13:07:13'),
(141, 6, 'impedit', 1.01, 197384000, 'http://www.runolfsson.com/', '1', 'Dolores vel libero unde animi accusamus voluptas occaecati. Reprehenderit eos quibusdam qui dolores unde qui et quod.', 7, '1977-06-05 20:36:11'),
(142, 8, 'provident', 3.181, 0, 'http://www.schimmel.com/', '', 'Quasi explicabo molestias voluptatem. Sint velit necessitatibus eum eveniet provident aliquam molestiae. Aspernatur nesciunt sunt voluptas officiis aut iure aut.', 1, '1982-05-09 23:33:16'),
(143, 2, 'eos', 149.323, 29614, 'http://swiftmante.com/', '', 'Est est amet cum earum blanditiis. Temporibus exercitationem saepe id quis aut aut. Voluptas natus at aut odit. Voluptates modi voluptatem dicta eum esse perferendis suscipit velit.', 1, '1970-12-14 20:12:12'),
(144, 7, 'tempore', 131347000, 0, 'http://keeling.org/', '1', 'Hic veritatis nam aut ut in voluptas. Nemo et neque minima voluptas ipsa. Non recusandae et et quia tenetur.', 8, '2013-01-31 07:37:09'),
(145, 1, 'at', 194266, 122.776, 'http://www.kemmerwiegand.com/', '1', 'Facilis reprehenderit error deserunt omnis ducimus laudantium culpa voluptates. Voluptatem et qui laboriosam ut optio expedita quos.', 6, '2009-11-05 23:56:35'),
(146, 5, 'et', 183.458, 1.0031, 'http://mcdermottgrant.com/', '1', 'Nobis labore magnam repellat voluptate tenetur. Tempore distinctio omnis ad rerum optio voluptatem maiores. Est perspiciatis delectus culpa ut.', 3, '2003-07-12 09:30:17'),
(147, 2, 'sed', 0, 20803.5, 'http://www.kling.org/', '', 'Eveniet eligendi ratione qui amet. Fuga sit ad aperiam quae veritatis assumenda voluptas. Autem autem aliquid aperiam quasi.', 6, '1991-11-27 03:08:54'),
(148, 8, 'necessitatibus', 17623.9, 2689730, 'http://www.bartoletti.com/', '1', 'Architecto consequuntur neque rerum sunt ratione. Impedit eius deleniti rerum. Minima quaerat et consequatur nesciunt corporis voluptate at. Velit et labore est suscipit est aperiam dolorem.', 9, '2016-01-27 14:36:48'),
(149, 7, 'voluptatem', 354104, 0, 'http://weimann.com/', '1', 'Quia explicabo illo quas. Reprehenderit suscipit laborum similique enim. At deleniti dolore vel officia minus.', 7, '1998-10-20 08:55:01'),
(150, 1, 'pariatur', 3691380, 179.349, 'http://www.yost.org/', '', 'Molestias ut recusandae et non. In laborum atque ducimus dolore velit aut. Minima ea non ut quia.', 7, '2014-04-22 07:14:27'),
(151, 2, 'iusto', 26.6, 968.412, 'http://bartellcronin.com/', '1', 'Excepturi rem deleniti iusto quaerat fuga. Autem perspiciatis est praesentium et consequatur sint. Dolores temporibus similique rem. Quasi temporibus facilis dignissimos qui aspernatur a mollitia.', 8, '2016-07-15 00:25:44'),
(152, 6, 'consequuntur', 81640200, 310485000, 'http://www.marvin.org/', '1', 'Aliquam dolor tenetur cum neque qui veritatis in. Possimus ducimus est expedita. Omnis quisquam delectus sint et ut porro.', 4, '2016-07-16 05:51:59'),
(153, 9, 'temporibus', 8538180, 14008800, 'http://schinnerjohns.org/', '1', 'Consequatur dolor est dolor cumque laborum est. Debitis vitae est odio eligendi et commodi. Ex provident et culpa. Iste non quaerat officia dolores qui voluptatem officiis.', 5, '2013-02-26 17:39:18'),
(154, 7, 'ea', 0, 51.3295, 'http://cruickshank.com/', '', 'Provident ut vero est dolorem nulla assumenda. Expedita ea vel dolorum sed. Laudantium expedita qui excepturi voluptas tenetur. Earum illo dolores quis vel nulla sequi.', 7, '2010-02-20 11:17:59'),
(155, 2, 'tempore', 178.475, 5071530, 'http://www.bartell.info/', '', 'Dolores in et alias. Porro ut dolores nihil aperiam qui. Ipsa repellendus ab magni ut unde aut aut. Harum excepturi eos tempora omnis quia et animi quia.', 6, '1998-07-31 13:10:18'),
(156, 1, 'doloremque', 146.2, 5033.1, 'http://bode.com/', '1', 'Sapiente ullam sunt occaecati quasi asperiores molestiae non. Rerum est dolor velit rerum ducimus repellendus veritatis. Veniam assumenda qui ipsum voluptate. Sunt provident impedit illo esse maiores et.', 4, '2002-10-13 16:57:33'),
(157, 2, 'doloribus', 242948, 29662900, 'http://www.ebert.net/', '1', 'Quas quo consectetur omnis adipisci ullam quod debitis. Eius et officiis non tempora cupiditate et unde.', 8, '2001-08-23 21:20:26'),
(158, 7, 'rerum', 1747440, 108.99, 'http://www.mclaughlin.com/', '1', 'Laudantium voluptatibus repudiandae laborum. Hic asperiores ipsa veritatis minus voluptatem provident. Recusandae sequi suscipit laboriosam quia. Odit qui blanditiis numquam distinctio consequatur perferendis molestiae.', 6, '2005-06-13 10:59:14'),
(159, 3, 'natus', 533001000, 7.5133, 'http://www.granthalvorson.com/', '', 'Quo accusantium nesciunt eius. Blanditiis eaque recusandae exercitationem esse tempore sit ut. Autem voluptatem non nesciunt maxime cum. Ullam corporis nihil dicta.', 2, '1994-07-17 10:40:06'),
(160, 6, 'quia', 5.6, 179.626, 'http://www.boehmabshire.com/', '', 'Eaque corrupti nihil et sunt. Similique qui incidunt voluptatem.', 6, '2016-07-27 20:24:45'),
(161, 0, 'et', 11.1914, 37629200, 'http://www.mcculloughsmitham.com/', '1', 'Accusamus eum ratione debitis ipsa minus aliquid voluptas. Et molestiae sed aliquam et possimus dolor nihil.', 6, '1990-11-27 21:35:08'),
(162, 0, 'quos', 21781.7, 459968000, 'http://www.gleichnerhickle.com/', '1', 'Quod temporibus qui dolores. Qui incidunt quidem id adipisci. Non magni qui dolore nihil. Quo ea necessitatibus quidem ut et dolores.', 2, '2015-07-17 06:41:36'),
(163, 9, 'voluptatum', 58.8534, 21792.1, 'http://barton.com/', '', 'Eius sequi qui natus dolor repellat doloribus minus minus. Velit enim officiis sit rerum sequi et quam. Nihil voluptate sequi nobis. Ipsa dolorem aut sint et odit quia sed.', 4, '2010-08-01 02:08:19'),
(164, 1, 'est', 2368.17, 400293, 'http://damore.net/', '1', 'Consequatur quo voluptatem voluptas magni molestiae cumque. Laborum maxime neque quisquam enim iure repellat. Et veniam voluptatibus ut pariatur rerum nam veniam. Et dolorem sed officia sit nobis sed.', 1, '1989-11-25 11:47:32'),
(165, 2, 'rem', 564689, 0, 'http://schultz.com/', '', 'Nihil qui voluptatem dolor consectetur. Aperiam optio vel sunt odit autem earum pariatur vero. Ex voluptatibus ea quos delectus. Fugit exercitationem reiciendis qui voluptatem. Qui qui nostrum deserunt sint placeat.', 4, '2006-02-14 10:34:10'),
(166, 0, 'assumenda', 29645700, 801058000, 'http://schmittlakin.biz/', '', 'Tenetur voluptas animi occaecati dolorum perferendis. Id assumenda libero non atque. Repudiandae dignissimos enim odio ut est similique.', 6, '1986-05-15 05:09:19'),
(167, 9, 'eveniet', 1.864, 8162580, 'http://www.streich.com/', '1', 'Inventore quis dolorum quo culpa. Aut placeat alias voluptatem rerum dolore tenetur. Voluptatem perspiciatis omnis sint quis eos nesciunt quo. Voluptatem rerum laboriosam optio excepturi voluptas pariatur. Harum vero id non ipsam molestiae id.', 1, '1991-09-03 16:45:04'),
(168, 8, 'recusandae', 5.579, 611041, 'http://www.nienow.com/', '1', 'Et repellendus eum incidunt occaecati aspernatur occaecati amet quo. Eos recusandae quaerat distinctio autem tenetur corrupti recusandae ut. Enim voluptatem sed accusamus quibusdam est doloribus. Aut voluptate similique non reiciendis quod in necessitatib', 4, '2009-08-08 14:53:10'),
(169, 6, 'vel', 366728000, 2, 'http://reynolds.net/', '1', 'Perferendis fuga ab accusamus itaque alias asperiores optio. Aut accusamus architecto non in. Ab voluptatibus ipsam quo dolorem quis facilis qui labore. Minus exercitationem facere dolor impedit odio optio ut.', 5, '2016-11-17 22:35:51'),
(170, 1, 'ullam', 220, 0, 'http://kutchkertzmann.com/', '1', 'Ratione et aut commodi numquam ut. Accusantium et voluptatem et. Blanditiis repudiandae corporis asperiores.', 9, '1985-01-20 15:47:56'),
(171, 0, 'minima', 0.905702, 366.4, 'http://www.yostkoepp.net/', '', 'Aut porro et placeat officiis eveniet fuga. Aut nulla aut et. Quidem mollitia officia iure doloribus voluptas modi corporis. Incidunt mollitia in voluptates perspiciatis ipsum corporis facilis.', 0, '2001-05-10 21:30:50'),
(172, 9, 'expedita', 0, 333.231, 'http://www.ratkedurgan.com/', '1', 'Sint impedit possimus exercitationem voluptatum. Quia corrupti omnis quaerat exercitationem consequatur in. Sit eligendi dolorum nesciunt at.', 7, '1972-08-02 15:11:59'),
(173, 4, 'itaque', 71961000, 21.9104, 'http://www.krajciksauer.biz/', '1', 'Culpa cupiditate animi vero culpa autem soluta. Odit maxime impedit illum eos. Dolores ipsam repudiandae sapiente laudantium deserunt consequuntur. Ipsam optio voluptates minus facere distinctio dignissimos praesentium.', 4, '1994-06-17 09:51:00'),
(174, 2, 'aliquid', 17876600, 26.8474, 'http://johns.com/', '', 'Dolorem ab iusto nostrum repudiandae sint odio sed. Vero minus quidem totam. Autem sequi quod ut quidem. Et temporibus voluptatem sed maiores.', 9, '1980-04-02 13:40:55'),
(175, 1, 'recusandae', 2379.63, 128593, 'http://www.stromankiehn.com/', '', 'Perspiciatis dolore rerum et vel. Voluptas quam dolor ut error aut autem. Saepe qui corrupti enim qui dignissimos maiores. Ipsa sed natus recusandae mollitia sequi dignissimos asperiores.', 2, '1980-02-04 05:09:11'),
(176, 5, 'et', 15975.9, 0, 'http://www.barton.com/', '', 'Magni asperiores minima mollitia est deserunt. Amet soluta dolor atque sit recusandae. Deleniti laudantium labore optio qui ut. Amet impedit rerum ipsum nulla molestiae.', 9, '1983-05-06 09:03:44'),
(177, 5, 'velit', 160873, 259, 'http://adams.com/', '1', 'Iusto perferendis suscipit alias quia sint vero. Tenetur beatae autem neque magnam eos atque quibusdam. Voluptatibus natus voluptatem sequi odit exercitationem est omnis.', 2, '2018-08-17 15:10:51'),
(178, 2, 'et', 163892000, 1845430, 'http://www.schoen.com/', '', 'Corrupti laudantium molestiae illo et at accusamus ipsam. Consequuntur perspiciatis est unde eius quia eos a. Harum quisquam voluptatem esse id quia dolor temporibus.', 1, '2005-07-07 00:08:12'),
(179, 5, 'aliquam', 1.59388, 23.8892, 'http://heidenreich.info/', '1', 'Eos aut quasi eum nulla in sint exercitationem. Repudiandae velit distinctio vitae eum est. Consequatur rerum hic consectetur quae.', 8, '2008-09-20 12:44:21'),
(180, 0, 'ut', 0.449196, 150086, 'http://auer.com/', '1', 'Aspernatur ut vero maiores iste cum aut. Sunt esse maxime ut ad aut iusto consequatur minus. Odio dolor repellat ut autem autem. Libero quos ut aliquam ut maiores.', 8, '1992-11-11 12:14:14'),
(181, 4, 'in', 44523400, 33248.6, 'http://www.altenwerth.net/', '', 'Amet ipsa eos ipsum. Quaerat neque totam eum earum velit voluptatem et. Et consequatur quos quibusdam inventore rerum. Explicabo non eum qui sint laboriosam.', 5, '1974-09-26 15:55:10'),
(182, 8, 'dignissimos', 673138000, 2261.11, 'http://willschinner.org/', '', 'Earum quis voluptatem dolorem quidem maxime. Est sed rem veritatis eum. Qui molestiae vel eaque impedit laborum.', 1, '1974-08-19 02:34:55'),
(183, 7, 'quod', 1980010, 3375760, 'http://kochbaumbach.info/', '1', 'Eos est nostrum aut blanditiis qui ipsa et. Exercitationem ut cumque quo eius et. Ut commodi recusandae aut. Consequatur accusamus sapiente maxime rerum et.', 5, '2005-10-10 02:28:36'),
(184, 5, 'dignissimos', 0, 0, 'http://www.bosco.com/', '', 'Provident quisquam nobis ullam voluptatem provident quas. Ut omnis a ut nulla corporis nihil sed non. Voluptatum sit est autem consectetur fuga.', 6, '1992-12-01 23:27:07'),
(185, 3, 'dignissimos', 215863000, 0, 'http://www.sporerlittel.com/', '1', 'Voluptatem enim rerum est sit et nobis vel molestiae. Ex aspernatur animi praesentium vel autem iste accusantium. Non quaerat culpa nihil impedit et.', 3, '2016-04-16 08:08:20'),
(186, 1, 'ut', 2.57, 5.8698, 'http://www.erdman.info/', '1', 'Qui nihil consequuntur provident doloremque at. Aut id alias quasi. Reiciendis incidunt quidem consequatur rem dolor quo. Accusantium dignissimos sequi nobis nam voluptatibus atque eos.', 6, '1971-12-14 04:28:20'),
(187, 8, 'nihil', 3, 7057030, 'http://www.wiegand.net/', '1', 'Non voluptates harum porro assumenda quisquam. Quos consequatur mollitia soluta. Laudantium quam est assumenda fugiat ab. Excepturi eum sit pariatur sequi. Est eos culpa dolor sit a.', 3, '1971-08-27 16:29:35'),
(188, 3, 'vitae', 525740, 0, 'http://www.romaguera.com/', '', 'Assumenda impedit beatae nostrum impedit aspernatur impedit quia. Sunt est consequatur non. Consequatur quisquam illo aut voluptate quam laborum. Quos aut aspernatur laudantium deleniti modi ut.', 6, '1994-04-04 23:36:02'),
(189, 3, 'impedit', 2054.39, 253104000, 'http://www.hammes.com/', '1', 'Hic praesentium aspernatur ut. Modi et quaerat ut nesciunt. Eos neque id et ut molestiae sed. Et omnis voluptates qui voluptatum ut iste.', 4, '1986-09-26 07:28:51'),
(190, 0, 'illo', 54134900, 38343.1, 'http://weimann.com/', '1', 'Sequi cum laboriosam sint facere eligendi fugiat. Quis voluptatem sit aut eveniet aliquam quis.', 9, '1979-07-04 21:15:11'),
(191, 3, 'magnam', 205796000, 0, 'http://beatty.net/', '1', 'Ducimus ab minima qui consectetur. Veritatis in repellendus qui. Eligendi sapiente rerum non pariatur cupiditate iusto. Earum sunt voluptate necessitatibus eos eos.', 6, '2005-03-11 09:56:40'),
(192, 4, 'a', 0.96791, 69449900, 'http://sanford.info/', '1', 'Quia excepturi ex necessitatibus ut. Incidunt ab assumenda aut corporis. Impedit eaque enim iusto est. Ducimus debitis sequi culpa.', 0, '1994-12-13 02:58:26'),
(193, 7, 'qui', 128622, 66854.8, 'http://considineeffertz.com/', '1', 'Facilis illo nobis sed voluptatem voluptatem non odit. Aut qui illo natus repellendus magni dolores ad. Eius similique fuga mollitia repudiandae. Magni nostrum omnis necessitatibus fugit enim amet.', 0, '2009-03-01 11:24:21'),
(194, 1, 'qui', 12.2198, 23554, 'http://www.rice.biz/', '', 'Quisquam amet sit illum distinctio tenetur molestiae. Vero nemo sequi possimus ipsam rerum qui vitae ea. Quod qui ut sint quasi praesentium quidem iusto vel.', 1, '1988-03-19 17:03:38'),
(195, 1, 'dolorem', 5.39921, 629403000, 'http://kirlinhermiston.com/', '', 'Non ipsum tempore nemo doloribus eum. Minima eos voluptas sapiente corrupti rerum. Nemo et dolor repellat velit est quidem qui. At eum laborum quas dolor alias et aut excepturi.', 8, '2017-03-06 23:40:03'),
(196, 5, 'vel', 368214000, 0, 'http://hermann.info/', '1', 'Error eum laborum dolorem placeat dolores eveniet sint dolores. Aliquam quam veniam ratione quam. Cumque rem commodi quis. Id saepe id omnis porro accusamus nostrum ipsum ipsam. Est odio at dolorum sapiente.', 4, '1972-01-03 13:14:14'),
(197, 1, 'praesentium', 129.423, 101437, 'http://stracke.org/', '', 'Incidunt culpa vero assumenda mollitia ut mollitia. Ex repellat aut beatae omnis. Omnis ut autem atque asperiores quae voluptatum qui.', 8, '1995-05-04 06:14:42'),
(198, 0, 'qui', 1020360, 5560260, 'http://pouros.biz/', '', 'Harum enim ad autem. Autem ullam delectus delectus et nihil eaque ut.', 3, '1974-08-11 22:22:02'),
(199, 9, 'sit', 11.587, 14456.4, 'http://www.klein.biz/', '1', 'Quaerat quasi nesciunt repellendus architecto rerum. Eum odit minus dolores repudiandae aliquid alias qui ipsum. Velit officiis tempore unde aut maiores sint corporis suscipit. Ipsa labore dolorem officiis laboriosam reiciendis rerum.', 7, '2016-02-08 06:50:20');
INSERT INTO `product` (`productId`, `subCategoryId`, `productName`, `productPurchasePrice`, `productSellingPrice`, `productImgUrl`, `productActive`, `productDescription`, `adminId`, `productStamp`) VALUES
(200, 1, 'atque', 1220.29, 3587720, 'http://www.lubowitz.com/', '', 'In ex laudantium officia voluptates velit nihil. Accusamus neque deserunt sunt fugiat alias odio quia. Voluptas ad unde deserunt sit.', 5, '1987-07-07 01:47:13'),
(201, 8, 'voluptas', 9, 660559, 'http://goldner.com/', '1', 'Voluptas deserunt tempora maxime expedita cupiditate magni. Doloremque porro maxime non ut eos optio. Est doloremque qui animi exercitationem. Facere perferendis at dolore aut quia aut et in.', 5, '2017-06-30 13:03:08'),
(202, 4, 'sint', 1833950, 5351.3, 'http://www.herzoghansen.info/', '1', 'Natus vero ab dolores quaerat aut est quam. Ratione vel quibusdam labore doloremque. Modi in aperiam quia.', 9, '1998-09-04 19:35:54'),
(203, 5, 'qui', 19791700, 13, 'http://www.yost.com/', '', 'Et ut illum et aliquid non id rem. Voluptatem vero veritatis unde. Non laudantium architecto ut eaque.', 4, '2013-07-25 00:32:43'),
(204, 7, 'et', 0.8, 15657700, 'http://cormierlarkin.biz/', '1', 'Alias dolor nulla occaecati. Voluptas sint qui a consequatur natus fugit. Hic facere ipsum voluptates repellat consequatur. Explicabo vel porro dolores delectus.', 9, '1980-11-07 09:04:00'),
(205, 2, 'commodi', 39814000, 425.042, 'http://www.dickens.com/', '', 'Ipsa quo minima in in minus architecto ducimus. Dolorum ea dolorum eum quia illo voluptatem et. Aspernatur vel tempore cupiditate deleniti.', 8, '1981-01-23 16:24:31'),
(206, 3, 'et', 74314900, 64378100, 'http://www.terry.com/', '1', 'Hic consectetur ut dolore. Ipsa eaque accusamus mollitia eum corrupti optio eos. Accusantium aliquam ratione consequuntur debitis cumque. Suscipit aut aspernatur voluptas non voluptatum iure quasi hic.', 5, '1976-10-19 13:17:07'),
(207, 8, 'dolorem', 627431, 222650000, 'http://www.oconnerbergstrom.com/', '1', 'Voluptatem maxime fugiat est. Officiis sunt nam enim. Voluptate commodi nobis expedita error maiores rem. Qui aut possimus est vel iste culpa vel.', 4, '2008-12-11 00:31:24'),
(208, 3, 'nihil', 669448000, 9384680, 'http://www.prosaccorussel.com/', '1', 'Excepturi commodi libero voluptatem nihil minima. Dolorum veniam quod eum natus esse. Sit occaecati occaecati non est.', 5, '1970-01-07 15:23:07'),
(209, 4, 'ab', 3130700, 0.1154, 'http://kuhnwiza.net/', '', 'Illum provident unde beatae repellat tenetur et laudantium. Debitis eveniet repellat nesciunt eum officiis tenetur molestias. Molestiae ab porro expedita aut. Est quas et voluptas autem ab ratione quibusdam.', 6, '1972-12-23 20:39:20'),
(210, 7, 'molestiae', 16939.5, 250791, 'http://grantkiehn.com/', '', 'Iusto consequatur aperiam et. Rerum debitis distinctio minus ea deserunt facere. Neque et qui adipisci modi.', 1, '1997-12-05 06:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `productOrder`
--

CREATE TABLE `productOrder` (
  `productOrderId` int(11) NOT NULL,
  `shipmentOrderId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `productOrderName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productQuantity` int(11) NOT NULL,
  `productPrice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productOrder`
--

INSERT INTO `productOrder` (`productOrderId`, `shipmentOrderId`, `orderId`, `productOrderName`, `productQuantity`, `productPrice`) VALUES
(8, 5, 5, 'Lemons', 344, 2),
(9, 5, 5, 'Watermelon', 30, 32),
(10, 2, 6, 'Salmon', 53, 65),
(11, 2, 6, 'Broccoli', 43, 12),
(12, 2, 6, 'Corn', 340, 55),
(16, 4, 9, 'Granadilla', 200, 12),
(17, 4, 9, 'Couscous', 24, 2),
(18, 5, 10, 'Grapes', 245, 34),
(19, 5, 10, 'Oranges', 223, 33),
(23, 3, 13, 'Oranges', 75, 20),
(24, 3, 13, 'Grapes', 1000, 21),
(25, 4, 14, 'Potatoes', 60, 34),
(26, 4, 14, 'Cabbage', 15, 20),
(27, 4, 14, 'Sweet Potatoes', 15, 20),
(33, 5, 18, 'Kiwi', 24, 18),
(34, 5, 18, 'Apricot', 23, 22),
(35, 4, 19, 'Asparagus', 30, 10),
(36, 4, 19, 'Banana', 23, 30),
(37, 3, 20, 'Black Eye Bean', 15, 11),
(38, 3, 20, 'Broccoli', 23, 22),
(39, 3, 20, 'Clementine', 7, 27),
(40, 4, 21, 'Fennel', 20, 22),
(41, 4, 21, 'Fig', 5, 40),
(42, 5, 22, 'Garlic', 50, 34),
(43, 5, 22, 'Green Bean', 23, 30),
(44, 5, 22, 'Haricot Bean', 23, 37.5),
(45, 4, 23, 'Iceberg Lettuce', 30, 23.54),
(46, 4, 23, 'Courgette', 23, 55.75),
(47, 5, 24, 'Date', 65, 44),
(48, 5, 24, 'Iceberg Lettuce', 44, 21),
(49, 5, 24, 'Garlic', 30, 40),
(50, 5, 24, 'Fig', 30, 50),
(51, 5, 24, 'Clementine', 44, 50),
(52, 4, 25, 'Orange', 43, 23),
(53, 4, 26, 'Clementine', 24, 45),
(54, 4, 26, 'Courgette', 30, 35),
(55, 4, 26, 'Clementine', 24, 45),
(56, 4, 26, 'Courgette', 30, 35),
(57, 5, 27, 'Clementine', 24, 25),
(58, 5, 27, 'Endive', 30, 25);

-- --------------------------------------------------------

--
-- Table structure for table `requestedOrder`
--

CREATE TABLE `requestedOrder` (
  `requestedOrderId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `clientName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminId` int(11) NOT NULL,
  `requestedOrderStamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `requestedOrder`
--

INSERT INTO `requestedOrder` (`requestedOrderId`, `orderId`, `clientName`, `adminId`, `requestedOrderStamp`, `total`) VALUES
(1, 5, 'Casius', 16, '2018-04-09 09:07:53', 1648),
(2, 6, 'Pick n Pay', 16, '2018-06-13 09:17:27', 22661),
(5, 18, 'Jean Luc', 16, '2018-01-17 16:50:39', 938),
(6, 19, 'Pick n Pay', 16, '2018-01-15 16:52:11', 990),
(7, 20, 'Arnaud', 16, '2018-03-14 16:54:07', 860),
(8, 21, 'Sarah', 16, '2018-04-12 16:59:19', 640),
(9, 26, 'Spur', 16, '2018-01-17 17:23:18', 2130);

-- --------------------------------------------------------

--
-- Stand-in structure for view `salessummary`
-- (See below for the actual view)
--
CREATE TABLE `salessummary` (
`month` varchar(9)
,`totalSales` double
);

-- --------------------------------------------------------

--
-- Table structure for table `shipment`
--

CREATE TABLE `shipment` (
  `shipmentId` int(11) NOT NULL,
  `companyName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `companyPhone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `companyAddress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `companyEmail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipment`
--

INSERT INTO `shipment` (`shipmentId`, `companyName`, `companyPhone`, `companyAddress`, `companyEmail`, `adminId`) VALUES
(3, 'Maersks', '0959275024', '23 Adderley Street, Century City', 'maersksa@region.co.za', 16),
(4, 'Turners Shipping', '021 506 6200', 'Off Upper Camp Unit 9, M5 Business Park, Eastman Rd, Maitland, Cape Town, 7785', 'tshipping@shipsa.com', 96),
(5, 'Trade Ocean', '021 417 3050', '18 Foregate Square, Heerengracht Street, Cape Town, 8000', 'oceansways@traceoce.co.za', 16);

-- --------------------------------------------------------

--
-- Table structure for table `shipmentOrder`
--

CREATE TABLE `shipmentOrder` (
  `shipmentOrderId` int(11) NOT NULL,
  `shipmentId` int(11) NOT NULL,
  `adminId` int(11) NOT NULL,
  `departure` date NOT NULL,
  `arrival` date NOT NULL,
  `orderId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipmentOrder`
--

INSERT INTO `shipmentOrder` (`shipmentOrderId`, `shipmentId`, `adminId`, `departure`, `arrival`, `orderId`) VALUES
(1, 4, 16, '2018-10-10', '2018-11-11', 9),
(2, 3, 16, '2018-10-25', '2018-11-29', 10),
(3, 5, 16, '2018-10-04', '2017-10-04', 5),
(4, 5, 16, '2018-10-01', '2018-12-21', 6),
(7, 3, 16, '2019-02-22', '2019-03-05', 13),
(8, 4, 16, '2018-10-09', '1997-10-24', 14),
(12, 5, 16, '2018-11-08', '2018-11-29', 18),
(13, 4, 16, '2019-01-09', '2019-02-16', 19),
(14, 3, 16, '2018-12-13', '2019-02-01', 20),
(15, 4, 16, '2018-11-23', '2019-01-16', 21),
(16, 5, 16, '2018-11-08', '2018-11-23', 22),
(17, 4, 16, '2018-11-10', '2018-11-20', 23),
(18, 5, 16, '2018-11-15', '2018-12-06', 24),
(19, 4, 16, '2018-11-14', '2018-11-30', 25),
(20, 4, 16, '2018-11-09', '2018-11-15', 26),
(21, 4, 16, '2018-11-09', '2018-11-15', 26),
(22, 5, 16, '2018-11-09', '2018-11-15', 27);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subCategoryId` int(11) NOT NULL,
  `subCategoryName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subCategoryPosition` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `adminId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subCategoryId`, `subCategoryName`, `subCategoryPosition`, `categoryId`, `adminId`) VALUES
(1, 'id', 9, 8, 3),
(2, 'qui', 9, 6, 8),
(3, 'et', 7, 3, 8),
(4, 'et', 3, 9, 7),
(5, 'et', 5, 7, 8),
(6, 'error', 1, 4, 4),
(7, 'consequatur', 9, 1, 3),
(8, 'voluptatem', 9, 6, 4),
(9, 'iste', 5, 1, 5),
(10, 'quis', 7, 6, 3),
(11, 'modi', 4, 6, 6),
(12, 'ut', 3, 4, 7),
(13, 'sapiente', 8, 6, 1),
(14, 'quas', 8, 5, 8),
(15, 'eius', 9, 8, 9),
(16, 'voluptatem', 2, 2, 2),
(17, 'dolore', 0, 4, 7),
(18, 'culpa', 5, 0, 7),
(19, 'voluptate', 6, 6, 2),
(20, 'perspiciatis', 4, 1, 4),
(21, 'ipsum', 4, 9, 0),
(22, 'non', 1, 6, 3),
(23, 'est', 9, 1, 3),
(24, 'odio', 9, 3, 5),
(25, 'neque', 1, 7, 9),
(26, 'ipsum', 2, 4, 1),
(27, 'est', 9, 0, 9),
(28, 'quidem', 8, 2, 7),
(29, 'maxime', 0, 3, 7),
(30, 'autem', 6, 0, 6),
(31, 'qui', 9, 5, 5),
(32, 'dolores', 9, 6, 6),
(33, 'omnis', 1, 9, 7),
(34, 'doloremque', 2, 8, 6),
(35, 'quisquam', 4, 8, 0),
(36, 'repellat', 0, 6, 6),
(37, 'suscipit', 9, 2, 1),
(38, 'explicabo', 9, 5, 6),
(39, 'qui', 3, 5, 9),
(40, 'harum', 0, 1, 3),
(41, 'quasi', 1, 1, 8),
(42, 'ut', 6, 8, 3),
(43, 'repellendus', 9, 4, 1),
(44, 'rerum', 0, 8, 3),
(45, 'et', 5, 1, 4),
(46, 'sequi', 5, 5, 6),
(47, 'aut', 7, 0, 9),
(48, 'culpa', 9, 7, 5),
(49, 'sit', 3, 1, 9),
(50, 'voluptatum', 0, 3, 8),
(51, 'possimus', 4, 5, 2),
(52, 'voluptatem', 4, 9, 7),
(53, 'quia', 0, 8, 9),
(54, 'sunt', 4, 6, 8),
(55, 'totam', 4, 1, 8),
(56, 'sed', 5, 3, 7),
(57, 'perspiciatis', 2, 0, 1),
(58, 'ullam', 3, 4, 0),
(59, 'excepturi', 9, 2, 4),
(60, 'provident', 8, 2, 9),
(61, 'placeat', 1, 1, 6),
(62, 'aut', 3, 4, 1),
(63, 'ipsa', 2, 9, 2),
(64, 'atque', 3, 2, 6),
(65, 'iste', 7, 8, 5),
(66, 'quibusdam', 8, 3, 3),
(67, 'adipisci', 8, 8, 8),
(68, 'error', 9, 4, 9),
(69, 'nihil', 8, 5, 4),
(70, 'reiciendis', 6, 2, 0),
(71, 'consequuntur', 0, 2, 4),
(72, 'delectus', 8, 1, 2),
(73, 'laudantium', 2, 7, 3),
(74, 'quia', 9, 0, 9),
(75, 'ratione', 4, 1, 6),
(76, 'numquam', 6, 8, 5),
(77, 'blanditiis', 7, 8, 0),
(78, 'et', 7, 2, 1),
(79, 'et', 9, 4, 4),
(80, 'laborum', 1, 0, 5),
(81, 'dolor', 4, 9, 7),
(82, 'a', 7, 1, 3),
(83, 'nobis', 7, 9, 7),
(84, 'est', 3, 9, 3),
(85, 'natus', 3, 6, 5),
(86, 'pariatur', 4, 4, 3),
(87, 'rerum', 2, 1, 3),
(88, 'laboriosam', 0, 2, 5),
(89, 'ducimus', 7, 6, 3),
(90, 'accusantium', 0, 7, 0),
(91, 'sed', 4, 6, 6),
(92, 'nisi', 4, 4, 0),
(93, 'aperiam', 7, 4, 2),
(94, 'sit', 8, 6, 0),
(95, 'iure', 3, 1, 5),
(96, 'quidem', 3, 9, 0),
(97, 'sit', 1, 2, 5),
(98, 'eius', 0, 9, 7),
(99, 'minima', 4, 7, 9),
(100, 'molestiae', 0, 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplierId` int(11) NOT NULL,
  `supplierName` varchar(255) NOT NULL,
  `supplierEmail` varchar(255) NOT NULL,
  `supplierPhone` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplierId`, `supplierName`, `supplierEmail`, `supplierPhone`, `city`, `country`) VALUES
(1, 'Fruit & Veg', 'arnaudgauthier@fruitAndVeg.com', '0294637529', 'Cape Town', 'South Africa'),
(2, 'All Organic', 'mart@allorganic.co.za', '084592538', 'Pretoria', 'Cape Town'),
(3, 'CEGADAC', 'cegadac-admin@cgd.com', '(250)04268252', 'Senegal', 'Dakar'),
(4, 'Archez', 'archez@gmail.com', '(971)5778435', 'Abu Dhabi', 'Dubai');

-- --------------------------------------------------------

--
-- Stand-in structure for view `totalincomingorders`
-- (See below for the actual view)
--
CREATE TABLE `totalincomingorders` (
`month` varchar(9)
,`TotalIncomingOrders` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `totaloutgoingorders`
-- (See below for the actual view)
--
CREATE TABLE `totaloutgoingorders` (
`month` varchar(9)
,`totaloutgoinggorders` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `expensessummary`
--
DROP TABLE IF EXISTS `expensessummary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `regentprodtest`.`expensessummary`  AS  select `m`.`MONTH` AS `month`,sum(`p`.`total`) AS `totalExpenses` from (((select 'January' AS `MONTH`) union select 'February' AS `MONTH` union select 'March' AS `MONTH` union select 'April' AS `MONTH` union select 'May' AS `MONTH` union select 'June' AS `MONTH` union select 'July' AS `MONTH` union select 'August' AS `MONTH` union select 'September' AS `MONTH` union select 'October' AS `MONTH` union select 'November' AS `MONTH` union select 'December' AS `MONTH`) `m` left join `regentprodtest`.`offeredorder` `p` on((`m`.`MONTH` = date_format(`p`.`offeredOrderStamp`,'%M')))) group by `m`.`MONTH` ;

-- --------------------------------------------------------

--
-- Structure for view `salessummary`
--
DROP TABLE IF EXISTS `salessummary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `regentprodtest`.`salessummary`  AS  select `m`.`MONTH` AS `month`,sum(`p`.`total`) AS `totalSales` from (((select 'January' AS `MONTH`) union select 'February' AS `MONTH` union select 'March' AS `MONTH` union select 'April' AS `MONTH` union select 'May' AS `MONTH` union select 'June' AS `MONTH` union select 'July' AS `MONTH` union select 'August' AS `MONTH` union select 'September' AS `MONTH` union select 'October' AS `MONTH` union select 'November' AS `MONTH` union select 'December' AS `MONTH`) `m` left join `regentprodtest`.`requestedorder` `p` on((`m`.`MONTH` = date_format(`p`.`requestedOrderStamp`,'%M')))) group by `m`.`MONTH` ;

-- --------------------------------------------------------

--
-- Structure for view `totalincomingorders`
--
DROP TABLE IF EXISTS `totalincomingorders`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `regentprodtest`.`totalincomingorders`  AS  select `m`.`MONTH` AS `month`,count(date_format(`p`.`offeredOrderStamp`,'%M')) AS `TotalIncomingOrders` from (((select 'January' AS `MONTH`) union select 'February' AS `MONTH` union select 'March' AS `MONTH` union select 'April' AS `MONTH` union select 'May' AS `MONTH` union select 'June' AS `MONTH` union select 'July' AS `MONTH` union select 'August' AS `MONTH` union select 'September' AS `MONTH` union select 'October' AS `MONTH` union select 'November' AS `MONTH` union select 'December' AS `MONTH`) `m` left join `regentprodtest`.`offeredorder` `p` on((`m`.`MONTH` = date_format(`p`.`offeredOrderStamp`,'%M')))) group by `m`.`MONTH` ;

-- --------------------------------------------------------

--
-- Structure for view `totaloutgoingorders`
--
DROP TABLE IF EXISTS `totaloutgoingorders`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `regentprodtest`.`totaloutgoingorders`  AS  select `m`.`MONTH` AS `month`,count(date_format(`p`.`requestedOrderStamp`,'%M')) AS `totaloutgoinggorders` from (((select 'January' AS `MONTH`) union select 'February' AS `MONTH` union select 'March' AS `MONTH` union select 'April' AS `MONTH` union select 'May' AS `MONTH` union select 'June' AS `MONTH` union select 'July' AS `MONTH` union select 'August' AS `MONTH` union select 'September' AS `MONTH` union select 'October' AS `MONTH` union select 'November' AS `MONTH` union select 'December' AS `MONTH`) `m` left join `regentprodtest`.`requestedorder` `p` on((`m`.`MONTH` = date_format(`p`.`requestedOrderStamp`,'%M')))) group by `m`.`MONTH` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`aboutId`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryId`),
  ADD KEY `R1` (`adminId`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`clientId`);

--
-- Indexes for table `displayCategory`
--
ALTER TABLE `displayCategory`
  ADD PRIMARY KEY (`displayCategoryId`);

--
-- Indexes for table `displayProduct`
--
ALTER TABLE `displayProduct`
  ADD PRIMARY KEY (`displayProductId`);

--
-- Indexes for table `displaySubcategory`
--
ALTER TABLE `displaySubcategory`
  ADD PRIMARY KEY (`displaySubCategoryId`);

--
-- Indexes for table `offeredOrder`
--
ALTER TABLE `offeredOrder`
  ADD PRIMARY KEY (`offeredOrderId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `productOrder`
--
ALTER TABLE `productOrder`
  ADD PRIMARY KEY (`productOrderId`);

--
-- Indexes for table `requestedOrder`
--
ALTER TABLE `requestedOrder`
  ADD PRIMARY KEY (`requestedOrderId`);

--
-- Indexes for table `shipment`
--
ALTER TABLE `shipment`
  ADD PRIMARY KEY (`shipmentId`);

--
-- Indexes for table `shipmentOrder`
--
ALTER TABLE `shipmentOrder`
  ADD PRIMARY KEY (`shipmentOrderId`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subCategoryId`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplierId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `aboutId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `clientId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `displayCategory`
--
ALTER TABLE `displayCategory`
  MODIFY `displayCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `displayProduct`
--
ALTER TABLE `displayProduct`
  MODIFY `displayProductId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `displaySubcategory`
--
ALTER TABLE `displaySubcategory`
  MODIFY `displaySubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `offeredOrder`
--
ALTER TABLE `offeredOrder`
  MODIFY `offeredOrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `productOrder`
--
ALTER TABLE `productOrder`
  MODIFY `productOrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `requestedOrder`
--
ALTER TABLE `requestedOrder`
  MODIFY `requestedOrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `shipment`
--
ALTER TABLE `shipment`
  MODIFY `shipmentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shipmentOrder`
--
ALTER TABLE `shipmentOrder`
  MODIFY `shipmentOrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplierId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `R1` FOREIGN KEY (`adminId`) REFERENCES `admin` (`adminId`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
