-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Úte 21. úno 2023, 14:04
-- Verze serveru: 10.4.24-MariaDB
-- Verze PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `skhn.cz`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_17_184027_create_pharmacies_table', 1),
(6, '2023_02_17_194455_create_regions_table', 1),
(7, '2023_02_21_070421_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Struktura tabulky `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `pharmacies`
--

CREATE TABLE `pharmacies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `village` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `pharmacies`
--

INSERT INTO `pharmacies` (`id`, `region_id`, `uid`, `ic`, `name`, `address`, `village`, `zip`, `code`) VALUES
(1, '1', '231', '25136143', 'Scarabeus', 'Sofijské náměstí 3405/2', 'Praha 4', '140 00', 'CZ010'),
(2, '1', '247', '63837129', 'Ďáblice', 'Ke Kinu 159/7', 'Praha 8', '182 00', 'CZ010'),
(3, '1', '335', '27385345', 'Vinoř', 'Mladoboleslavská 514', 'Praha 9', '190 17', 'CZ010'),
(4, '1', '396', '28495403', 'Lékárna Černá růže ', 'Na příkopě 853/12', 'Praha', NULL, 'CZ010'),
(5, '3', '288', '26066203', 'Zahradní', 'Zahradní 44', 'České Budějovice', NULL, 'CZ031'),
(6, '3', '297', '7737106', 'Patriot', 'Holečkova 3A', 'České Budějovice', NULL, 'CZ031'),
(7, '3', '298', '28112997', 'U Cepků', 'Václavská 100', 'Jindřichův Hradec', NULL, 'CZ031'),
(8, '3', '332', '65953371', 'U Matky Boží Pomocné', 'Náměstí T.G.M. 115', 'Veselí nad Lužnicí', '391 81', 'CZ031'),
(9, '3', '333', '65953371', 'OOVL U Matky Boží Pomocné', 'Veselská 108', 'Dolní Bukovsko', '373 65', 'CZ031'),
(10, '3', '334', '65953371', 'U nádraží Veselí nad Lužnicí', 'J.V.Sládka 699', 'Veselí nad Lužnicí', 'Veselí nad', 'CZ031'),
(11, '3', '353', '46680217', 'U červeného Hroznu', 'Velké náměstí 222', 'Strakonice', NULL, 'CZ031'),
(12, '3', '354', '46680217', 'U Otavy', 'Bezděkovská 65', 'Strakonice', NULL, 'CZ031'),
(13, '3', '360', '16087481', 'Na Předměstí', 'Palackého náměstí 251/2', 'Třeboň', NULL, 'CZ031'),
(14, '11', '285', NULL, 'Žebětín - OOVL Biovita', NULL, NULL, NULL, 'CZ062'),
(15, '11', '386', '29372526', 'U Bílého Anděla Velké Opatovice', 'Nám míru', 'Velké Opatovice', NULL, 'CZ062'),
(16, '11', '397', '26274493', 'Lékárna Dobrovského', 'Páteřní 1216/7', 'Brno', NULL, 'CZ062'),
(17, '11', '398', '26274493', 'Lékárna Jemelkova', 'Páteřní 1216/8', 'Brno', NULL, 'CZ062'),
(18, '11', '240', '49437267', 'Alba', 'Svinošická 368', 'Lipůvka', NULL, 'CZ062'),
(19, '11', '252', '4589718', 'Panský dům', 'Nám. Osvobození 286', 'Říčany u Brna', NULL, 'CZ062'),
(20, '11', '261', '28284984', 'Pod Nemocnicí', 'B. Němcové 9', 'Blansko', NULL, 'CZ062'),
(21, '11', '279', '28284984', 'Orion', 'Majdalenky 10a', 'Brno', NULL, 'CZ062'),
(22, '11', '282', '48455881', 'Podivín', 'Komenského 269', 'Podivín', NULL, 'CZ062'),
(23, '11', '289', '2765390', 'Vinohrady', 'Velkopavlovická 25', 'Brno', NULL, 'CZ062'),
(24, '11', '290', '28635639', 'Tillova lékárna U černého orla', 'Masarykovo náměstí. 37', 'Výškov', '682 01', 'CZ062'),
(25, '11', '294', '29373417', 'Olešnice', 'Rovečínská 2', 'Olešnice', '679 74', 'CZ062'),
(26, '11', '313', '2765390', 'Benu Olympie', 'U Dálnice 777', 'Brno', '664 42', 'CZ062'),
(27, '11', '317', '28282159', 'Hornpharm', 'Široká 1', 'Ivančice', '664 91', 'CZ062'),
(28, '11', '342', '46975446', 'OOVL U nemocnice', 'Kovářská 653/6, Svatobořice-Mistřín 69604', 'Svatobořice-Mistřín', NULL, 'CZ062'),
(29, '11', '343', '46975446', 'Na Městečku', 'Náměstí Míru 199, Vracov 69642', 'Vracov', NULL, 'CZ062'),
(30, '11', '344', '46975446', 'U Zlaté koruny Kyjov', 'Masarykovo náměstí 12/16, Kyjov 697 01', 'Kyjov', NULL, 'CZ062'),
(31, '11', '345', '46975446', 'OOVL U zlaté koruny Kyjov', 'Žarošice 50, 696 34', 'Žarošice', NULL, 'CZ062'),
(32, '11', '374', '7122322', 'Komín', 'Dělnická 53, Brno', 'Brno', NULL, 'CZ062'),
(33, '11', '375', '7122322', 'Bystrc', 'Náměstí 28.dubna 2, Brno', 'Brno', NULL, 'CZ062'),
(34, '11', '376', '48900494', 'U Sv. Mikuláše', 'Náměstí 73, 683 33 Brankovice', 'Brankovice', NULL, 'CZ062'),
(35, '11', '405', '25969749', 'Mc-Pharm  U bílého páva', 'Revoluční 500', 'Nový Bydžov', NULL, 'CZ062'),
(36, '11', '412', '28267311', 'Hippokrates ', 'Luidická 935/10', 'Boskovice', NULL, 'CZ062'),
(37, '11', '414', '8369437', 'Chytrá lékárna Slováková', 'Slovákova 11, 602 00 Brno', 'Brno', NULL, 'CZ062'),
(38, '11', '415', '8369437', 'Chytrá lékárna Kobližná', 'Kobližná 2, 602 00 Brno', 'Brno', NULL, 'CZ062'),
(39, '11', '416', '8369437', 'Chytrá lékárna Orlí', 'Orlí 34, 602 00 Brno', 'Brno', NULL, 'CZ062'),
(40, '11', '417', '8369437', 'Chytrá lékárna Hlinky', 'Hlinky 122, 603 00 Brno', 'Brno', NULL, 'CZ062'),
(41, '11', '418', '8369437', 'Chytrá lékárna Vyškov', 'Nádražní 2, 682 01  Vyškov', 'Vyškov', NULL, 'CZ062'),
(42, '11', '419', '8369437', 'Chytrá lékárna Mendlovo náměstí', 'Mendlovo nám. 149/16, 603 00 Brno', 'Brno', NULL, 'CZ062'),
(43, '11', '420', '8369437', 'Chytrá lékárna Tišnov', 'nám. Komenského 123, 666 01 Tišnov', 'Tišnov', NULL, 'CZ062'),
(44, '11', '421', '8369437', 'Chytrá lékárna Česká', 'Česká 6, 602 00 Brno', 'Brno', NULL, 'CZ062'),
(45, '11', '422', '8369437', 'Chytrá lékárna Oblá', 'Oblá 518, 634 00 Brno', 'Brno', NULL, 'CZ062'),
(46, '11', '423', '8369437', 'Chytrá lékárna Palackého', 'Palackého tř. 137, Brno', 'Brno', NULL, 'CZ062'),
(47, '11', '424', '8369437', 'Chytrá lékárna E-hop', 'Slovákova 11, 602 00 Brno', 'Brno', NULL, 'CZ062'),
(48, '11', '425', '8369437', 'Chytrá lékárna Tišnov nemocnice', 'Purkyňova 2010, 666 01 Tišnov', 'Tišnov', NULL, 'CZ062'),
(49, '11', '283', '48455881', 'OOVL Rakvice', 'Náměstí 221, Rakvice', 'Rakvice', NULL, 'CZ062'),
(50, '11', '287', '29373417', 'Lysice', 'Komenského 597, Lysice', 'Lysice', NULL, 'CZ062'),
(51, '11', '302', '29373417', 'Kunštát', 'Náměstí ČSČK 477, Kunštát', 'Kunštát', NULL, 'CZ062'),
(52, '11', '351', '4589718', 'OOVL Zbraslav', 'Komesnkého 105, Zbraslav', 'Zbraslav', NULL, 'CZ062'),
(53, '5', '328', '6772668', 'Arnika Horní Slavkov', 'Dlouhá 635, 35731 Horní Slavkov', 'Horní Slavkov', NULL, 'CZ041'),
(54, '8', '310', '64201279', 'Na Struze', 'Komenského 821, Trutnov 54101', 'Trutnov', NULL, 'CZ052'),
(55, '8', '338', '1733800', 'U Itálie Náchod', 'Kamenice 131, 547 01 Náchod', 'Náchod', NULL, 'CZ052'),
(56, '8', '339', '6905871', 'Na Poliklinice Dobruška', 'Pulická 99, 518 01 Dobruška', 'Dobruška', NULL, 'CZ052'),
(57, '8', '346', '73606553', 'Na Ptákách', 'Boženy Němcové 486, Jaroměř 551 01', 'Jaroměř', NULL, 'CZ052'),
(58, '8', '349', '73606553', 'Za skleněnou věží', 'Wonkova 1225/3, Hradec Králové 500 02', 'Hradec Králové', NULL, 'CZ052'),
(59, '8', '364', '28855451', 'Trio', 'Husova 58, 50601 Jičín', 'Jičín', NULL, 'CZ052'),
(60, '8', '404', '49332406', 'U bílého lva', 'Palackého 61', 'Nechanice', NULL, 'CZ052'),
(61, '7', '326', '25296256', 'U Aesculapa Tanvald', 'Krkonošská 227, Tanvald', 'Tanvald', NULL, 'CZ051'),
(62, '7', '365', '28855451', 'Lomnice-Trio', 'Obránců míru 866, 512 51 Lomnice nad Popelkou', 'Lomnice nad Popelkou', NULL, 'CZ051'),
(63, '13', '21', '60793490', 'KHN Veřejná část', 'Zakladatelská 22, Karviná 735 06', 'Karviná   ', NULL, 'CZ080'),
(64, '13', '22', '60793490', 'KHN v Ráji', 'Kosmonautů 842, Karviná - Ráj 734 01', 'Karviná-Ráj   ', NULL, 'CZ080'),
(65, '13', '24', '47975938', 'Modrý pavilon', 'Chittussiho 1001/9, Slezská Ostrava 710 00', 'Slezská Ostrava', NULL, 'CZ080'),
(66, '13', '215', '26822814', 'Hlučín', 'Čs. armády 1491/6b., Hlučín 748 01', 'Hlučín', NULL, 'CZ080'),
(67, '13', '216', '663734672', 'U Zlatého raka', 'Hornopolní 28, Moravská Ostrava 702 00 ', 'Moravská Ostrava', NULL, 'CZ080'),
(68, '13', '217', '47831961', 'Poliklinika Hlučín', 'Čs. armády 6A, Hlučín 748 01', 'Hlučín', NULL, 'CZ080'),
(69, '13', '219', '60782668', 'Ambra', 'Náměstí SNP 1886/4, Ostrava - Zábřeh 700 30', 'Ostrava - Zábřeh', NULL, 'CZ080'),
(70, '13', '221', '25377248', 'U svatého Jiří - Brušperk', 'K náměstí 23, Brušperk 739 44', 'Brušperk', NULL, 'CZ080'),
(71, '13', '222', '25377248', 'U svatého Jiří - Rychaltice', 'Rychaltice 188, 739 46', 'Rychaltice', NULL, 'CZ080'),
(72, '13', '223', '25377248', 'U svatého Jiří - Fryčovice', 'Fryčovice 83, Fryčovice 739 46', 'Fryčovice', NULL, 'CZ080'),
(73, '13', '224', '25377248', 'U svatého Jiří - Stará Ves', 'Zámecká  202, Stará ves nad Ondřejnicí 739 23', 'Stará Ves nad Ondřejnicí', NULL, 'CZ080'),
(74, '13', '234', '45211191', '111 Vrbno', 'Nádražní 202, Vrbno pod Pradědem 793 26', 'Vrbno pod Pradědem', NULL, 'CZ080'),
(75, '13', '239', '26798981', 'Krevní centrum', 'T.G.Masaryka 495, Frýdek - Místek 738 01', 'Frýdek-Místek', NULL, 'CZ080'),
(76, '13', '251', '26841291', 'Pod Orlem', 'T.G.M. 600, 738 01 Frýdek - Místek', 'Frýdek - Místek', NULL, 'CZ080'),
(77, '13', '286', '29450926', 'Pod náměstím', 'Dolní 9, Frenštát pod Radhoštěm', 'Frenštát pod Radhoštěm', NULL, 'CZ080'),
(78, '13', '296', '26849143', 'U kaple', 'Na Březích 110, 74712', 'Dolní Benešov', NULL, 'CZ080'),
(79, '13', '308', '26850877', 'Mariana', 'Sokola Tůmy 3, Ostrava - Hulváky, 709 00', 'Ostrava', NULL, 'CZ080'),
(80, '13', '322', '25853333', 'U Elišky Havířov', 'Dlouhá třída 873/18b, 73601 Havířov', 'Havířov ', NULL, 'CZ080'),
(81, '13', '356', '3568890', 'Magnolia I', 'Hlučínská 183/126, Ludgeřovice', 'Ludgeřovice', NULL, 'CZ080'),
(82, '13', '357', '27790363', 'Magnolia II', '28. Října 168, Ostrava', 'Ostrava', NULL, 'CZ080'),
(83, '13', '379', '46111999', 'Lékárna Camilla (#Petřvald#)', 'Školní 1050', 'Petřvald', NULL, 'CZ080'),
(84, '13', '400', '29214106', 'U černého orla', NULL, 'Prostějov', NULL, 'CZ080'),
(85, '13', '402', '29386896', 'U Edisona', 'Závodní 40', 'Ostrava', NULL, 'CZ080'),
(86, '13', '403', '29386896', 'Heřmanka, Koněvova 732, Ostrava', 'Koněvova 732', 'Ostrava', NULL, 'CZ080'),
(87, '12', '381', '12687782', 'Lékárna Dr. Schwarz', 'nám T.G.Masaryka 10', 'Lipník n. Bečvou', NULL, 'CZ071'),
(88, '12', '382', '12687782', 'Lékárna Dr. Schwarz', 'nám T.G. Masaryka 91/7', 'Lipník n. Bečvou', NULL, 'CZ071'),
(89, '12', '383', '12687782', 'Lékárna Dr. Schwarz', 'Osecká 1069', 'Lipník n. Bečvou', NULL, 'CZ071'),
(90, '12', '387', '60697610', 'Lékárna Haná', 'Sídliště Svobody 3576/22', 'Prostějov', NULL, 'CZ071'),
(91, '12', '27', '27832848', 'U Alberta ', 'Vítězná 107, 779 00, Litovel', 'Litovel ', NULL, 'CZ071'),
(92, '12', '227', '62353187', 'region_idinská lékárna', 'Komenského 4, Šumperk 787 01 ', 'Šumperk', NULL, 'CZ071'),
(93, '12', '233', '47920939', 'Brodek', 'Zámecká 370, Brodek u Prostějova 798 07', 'Brodek u Prostějova', NULL, 'CZ071'),
(94, '12', '256', '25579029', 'OOVL Kralice nad Oslavou', 'V zahradách 319,', 'Kralice nad Oslavou', NULL, 'CZ071'),
(95, '12', '314', '26951185', 'Konice', 'Masarykovo náměstí 40, 798 52 Konice', 'Konice', NULL, 'CZ071'),
(96, '12', '318', '26951185', 'Brodek u Konice', 'Brodek u Konice 328, 79846 Brodek u Konice', 'Brodek u Konice', NULL, 'CZ071'),
(97, '12', '358', '28615883', 'U Hygie', 'Komenského 724/13, Přerov', 'Přerov', NULL, 'CZ071'),
(98, '12', '384', '24959648', 'OOVL Na nábřeží', 'Náměstí míru21', 'Hustopeče nad Bečvou', NULL, 'CZ071'),
(99, '12', '388', '60338725', 'lékárna Mgr Kalman', 'Kmochova 18', 'Olomouc', NULL, 'CZ071'),
(100, '12', '389', '26876892', 'Media', 'Jiráskova 20', 'Přerov', NULL, 'CZ071'),
(101, '12', '399', '29214106', ' Vaše srdcovka', 'Vodní 4545/25', 'Prostějov', NULL, 'CZ071'),
(102, '12', '401', '29214106', ' Vaše srdcovka OOVL', NULL, 'Prostějov', NULL, 'CZ071'),
(103, '9', '241', '47490730', 'Lékárna Nemcová', 'Na Podkově 25, Bystré 569 92', 'Bystré', NULL, 'CZ053'),
(104, '9', '281', '29372526', 'U Bílého Anděla', 'Palackého nám.14, Jevíčko 56943', 'Jevíčko', NULL, 'CZ053'),
(105, '9', '316', '25294989', 'Energia', 'Náměstí J.M.Marků 57, 56301 Lanškroun', 'Lanškroun', NULL, 'CZ053'),
(106, '9', '347', '73606553', 'Na Štěpnici', 'Polská 1308, Ústí nad Orlicí 562 01', 'Ústí nad Orlicí', NULL, 'CZ053'),
(107, '9', '348', '73606553', 'OOVL Na Štěpnici', 'Náměstí 101, Dolní Čermná 561 53', 'Dolní Čermná', NULL, 'CZ053'),
(108, '9', '385', '25294989', 'Regena', 'M.Marků 57', 'Lanškroun', NULL, 'CZ053'),
(109, '4', '225', '69946442', 'U Kamenného zdraví', 'Čelakovského 6, Plzeň 301 00', 'Plzeň', NULL, 'CZ032'),
(110, '2', '307', '24155748', 'U Sv. Ludmily (#Brandýs nad Labem - Stará Boleslav#)', 'Boleslavská 31/4', 'Brandýs nad Labem', NULL, 'CZ020'),
(111, '2', '309', '24302732', 'Mandragora', 'Pražská 614, Benátky nad Jizerou, 29471', 'Benátky nad Jizerou', NULL, 'CZ020'),
(112, '2', '312', '27641309', 'U Českého lva', 'Kolínská 173, 285 04 Uhlířské Janovice', 'Uhlířské Janovice', NULL, 'CZ020'),
(113, '2', '331', '25136143', 'Jirny', 'Tovární 19, 25090 Jirny', 'Jirny', NULL, 'CZ020'),
(114, '2', '352', '66068096', 'Viola', 'Tř.Osvobození politických vězňů 241; 294 71 Benátky nad Jizerou', 'Benátky nad Jizerou', NULL, 'CZ020'),
(115, '2', '361', '28993977', 'Zásmuky', 'Komenského náměstí 92,28144 Zásmuky', 'Zásmuky', NULL, 'CZ020'),
(116, '2', '362', '25109022', 'Modrá lékárna', 'Školská 256, 27201 Kladno', 'Kladno', NULL, 'CZ020'),
(117, '2', '363', '25109022', 'OOVL Modrá lékárna', 'Dukelská 51, Braškov, 27351 Unhošť', 'Unhošť', NULL, 'CZ020'),
(118, '2', '367', '6609147', 'U Svatého Václava', 'Rudých dolů 291, 25401 Jílové u Prahy', 'Jílové u Prahy', NULL, 'CZ020'),
(119, '2', '377', '1400827', 'Zdice', 'Palackého náměstí 894, 26751 Zdice', 'Zdice', NULL, 'CZ020'),
(120, '2', '390', '27211223', 'lékárna Zamzam-Barandov', 'Tillého nám', 'Praha', NULL, 'CZ020'),
(121, '2', '391', '27211223', 'lékárna Zamzam Nebuš', 'Tillého nám', 'Praha', NULL, 'CZ020'),
(122, '2', '392', '27211223', 'lékárna Zamzam Jesenice', 'Tillého nám', 'Praha', NULL, 'CZ020'),
(123, '2', '393', '27211223', 'lékárna Zamzam Davle', 'Tillého nám', 'Praha', NULL, 'CZ020'),
(124, '2', '407', NULL, 'Lékárna na Bezděkově', 'Na Bezděkově 2154, 25601 Benešov', 'Benešov', NULL, 'CZ020'),
(125, '2', '409', NULL, 'Lékárna ALMA ve Vlašimi', 'Luidická 402, 25801 Vlašim', 'Vlašim', NULL, 'CZ020'),
(126, '2', '410', NULL, 'Lékárna ALMA', 'J.Horáka 1697, 25601 Benešov', 'Benešov', NULL, 'CZ020'),
(127, '2', '411', '1486225', 'Jesenice', 'Budějovická 371, 25242 Jesenice u Prahy', 'Jesenice u Prahy', NULL, 'CZ020'),
(128, '2', '413', '24155748', 'Lékárna U sv. Ludmily- výdejna ', 'Libčice', NULL, NULL, 'CZ020'),
(129, '6', '395', NULL, 'U Slunce Hřensko', NULL, 'Hřensko', NULL, 'CZ042'),
(130, '6', '305', '28794796', 'U Bílého Jednorožce (#Libochovice#)', 'Dr. Vacka 44', 'Libochovice', NULL, 'CZ042'),
(131, '6', '324', '25007602', 'Tercia Varnsdorf', 'Pražská 2951, Varnsdorf', 'Varnsdorf', NULL, 'CZ042'),
(132, '6', '329', '62744771', 'U lázní Teplice', 'Mlýnská 326/6; Teplice 41501 ', 'Teplice', NULL, 'CZ042'),
(133, '6', '330', '27576671', 'Benefit Litvínov', '9.Května 2044/9, Litvínov 43601', 'Litvínov', NULL, 'CZ042'),
(134, '6', '380', '27576671', 'Lékárna Benefit u Gymnázia', 'Studentská 999, 436 01  Litvínov', 'Litvínov', NULL, 'CZ042'),
(135, '6', '394', '3944182', 'U Slunce Děčín', 'Tomayerova 116/8', 'Děčín', NULL, 'CZ042'),
(136, '10', '280', '2818451', 'Na Poliklinice', 'Husova 898', 'Náměšť n. Osl.0', NULL, 'CZ061'),
(137, '10', '243', '28828160', 'Zdravá lékárna Chotěboř', 'Legiií 1851, 58301 Chotěboř', 'Chotěboř', NULL, 'CZ061'),
(138, '10', '255', '25579029', 'Aura', 'Tyršova 603, Velká Bíteš', 'Velká Bíteš', NULL, 'CZ061'),
(139, '10', '311', '27505995', 'Golčův Jeníkov', 'Havlíčkovo náměstí 787, 58282 Golšův Jeníkov', 'Golčův Jeníkov', NULL, 'CZ061'),
(140, '10', '408', NULL, 'Lékárna na poliklinice', 'Žižkova 922, 39501 Pacov', 'Pacov', NULL, 'CZ061'),
(141, '10', '295', '3348962', 'Batelov', 'Družstevní 449, Batelov', 'Batelov', NULL, 'CZ063'),
(142, '10', '372', '49437445', 'Arnica Bystřice n.P', 'Zahradní 580, Bystřice nad Pernštejnem', 'Bystřice n. P.', NULL, 'CZ063'),
(143, '10', '373', '49437445', 'U Sv. Vavřince', 'Masarykovo nám. 2, Bystřice n. Pernštejnem', 'Bystřice n.P.', NULL, 'CZ063'),
(144, '10', '378', '11962518', 'Lékárna Buková', 'Buková 740/8, Jihlava', 'Jihlava', NULL, 'CZ063'),
(145, '14', '237', '48533327', 'Salvia - Bystřice', '6.května 556, Bystřice pod Hostýnem 768 61', 'Bystřice pod Hostýnem', NULL, 'CZ072'),
(146, '14', '245', '73078531', 'Panax', 'Zašovská 778, 757 01', 'Valašské Meziříčí', NULL, 'CZ072'),
(147, '14', '248', '48533327', 'OOVL Ratiboř', 'U Vsetína 75, Ratiboř 756 21', 'Ratiboř', NULL, 'CZ072'),
(148, '14', '250', '73078531', 'Jablůnka', 'Jablůnka 365, Jablůnka 756 23 ', 'Jablůnka', NULL, 'CZ072'),
(149, '14', '291', '29370639', 'Ve vile ', 'Havlíčkova 814, Kroměříž', 'Kroměříž', NULL, 'CZ072'),
(150, '14', '319', '65469992', 'Karolinka', 'Vsetínská 71, 756 05 Karolinka', 'Karolinka', NULL, 'CZ072'),
(151, '14', '320', '65469992', 'Nový Hrozenkov', 'Nový Hrozenkov 455, 756 04', 'Nový Hrozenkov', NULL, 'CZ072'),
(152, '14', '321', '24959648', 'Na nábřeží ValMez', 'Mostní 530, 75701 Valašské Meziříčí', 'Valašské Meziříčí', NULL, 'CZ072'),
(153, '14', '371', '47908467', 'Stanclova lékárna', 'Masarykovo náměstí 148, Uherské Hradiště', 'Uherské Hradiště', NULL, 'CZ072');

-- --------------------------------------------------------

--
-- Struktura tabulky `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `posts`
--

INSERT INTO `posts` (`id`, `name`, `email`, `phone`, `uid`, `region_id`, `message`, `created_at`, `updated_at`) VALUES
(1, '1', 'test@test.cz', '2', '3', '1', '4', '2023-02-21 08:23:33', '2023-02-21 08:23:33'),
(2, 'sdqweqwe3424234', 'test@test.cz', '78665+546+546546', '765546456', '11', 'asdfdsvfsdffgsefsf', '2023-02-21 08:26:20', '2023-02-21 08:26:20'),
(3, '23werwerwer', 'test@test.cz', 'ewrwerwerwe', 'werwerwerwe', '8', 'werwerwerwe', '2023-02-21 08:28:29', '2023-02-21 08:28:29'),
(4, 'jjtzztjuzt', 'ztzt@khn.cz', 'žřčžřčžřčž', 'řčžřčžřč', '4', 'řčžřčžřčž', '2023-02-21 11:26:22', '2023-02-21 11:26:22');

-- --------------------------------------------------------

--
-- Struktura tabulky `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region_csu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `regions`
--

INSERT INTO `regions` (`id`, `region_csu`, `region_name`, `region_city`) VALUES
(1, 'PHA', 'Hlavní město Praha', 'Praha '),
(2, 'STČ', 'Středočeský kraj', 'Praha '),
(3, 'JHČ', 'Jihočeský kraj', 'České Budějovice'),
(4, 'PLK', 'Plzeňský kraj', 'Plzeň'),
(5, 'KVK', 'Karlovarský kraj', 'Karlovy Vary'),
(6, 'ULK', 'Ústecký kraj', 'Ústí nad Labem'),
(7, 'LBK', 'Liberecký kraj', 'Liberec'),
(8, 'HKK', 'Královéhradecký kraj', 'Hradec Králové'),
(9, 'PAK', 'Pardubický kraj', 'Pardubice'),
(10, 'VYS', 'Kraj Vysočina', 'Jihlava'),
(11, 'JHM', 'Jihomoravský kraj', 'Brno'),
(12, 'OLK', 'Olomoucký kraj', 'Olomouc'),
(13, 'MSK', 'Moravskoslezský kraj', 'Ostrava'),
(14, 'ZLK', 'Zlínský kraj', 'Zlín');

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexy pro tabulku `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexy pro tabulku `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexy pro tabulku `pharmacies`
--
ALTER TABLE `pharmacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pro tabulku `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `pharmacies`
--
ALTER TABLE `pharmacies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT pro tabulku `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pro tabulku `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pro tabulku `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
