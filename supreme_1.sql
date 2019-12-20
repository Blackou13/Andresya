-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 22 août 2019 à 20:52
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `supreme`
--

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

CREATE TABLE `addon_account` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_account`
--

INSERT INTO `addon_account` (`id`, `name`, `label`, `shared`) VALUES
(1, 'society_ambulance', 'Ambulance', 1),
(2, 'caution', 'Caution', 0),
(3, 'society_police', 'Police', 1),
(4, 'society_realestateagent', 'Agent immobilier', 1),
(5, 'society_cardealer', 'Concessionnaire', 1),
(6, 'society_security', 'SunLand Securite', 1),
(10, 'society_mecano', 'Mécano', 1),
(11, 'society_mecano_black', 'Mécano Black', 1),
(12, 'society_avocat', 'Avocat', 1),
(13, 'society_journaliste', 'journaliste', 1),
(14, 'society_vigne', 'Vigneron', 1),
(15, 'society_taxi', 'Taxi', 1),
(16, 'society_tabac', 'Tabac', 1),
(17, 'society_ammu', 'ammu', 1),
(18, 'society_unicorn', 'Unicorn', 1),
(20, 'society_state', 'state', 1),
(21, 'society_bahama', 'bahama', 1),
(22, 'society_boatdealer', 'Marina', 1),
(23, 'property_black_money', 'Argent Sale Propriété', 0),
(25, 'society_armurier', 'Armurier', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_ambulance', 36700, NULL),
(2, 'society_police', 397532, NULL),
(3, 'society_realestateagent', 265017, NULL),
(4, 'society_cardealer', 77002, NULL),
(5, 'caution', 0, 'steam:11000011262d25d'),
(6, 'caution', 0, 'steam:110000111643812'),
(7, 'caution', 0, 'steam:110000110a0d478'),
(8, 'caution', 0, 'steam:1100001195ac815'),
(9, 'caution', 0, 'steam:110000103f13b0b'),
(10, 'society_security', 4700, NULL),
(13, 'caution', 0, 'steam:110000139e47704'),
(15, 'society_mecano', 901418, NULL),
(16, 'caution', 0, 'steam:110000139d6535a'),
(17, 'society_mecano_black', 0, NULL),
(18, 'society_avocat', 0, NULL),
(19, 'society_journaliste', 0, NULL),
(20, 'society_vigne', 0, NULL),
(21, 'society_taxi', 14942, NULL),
(22, 'society_tabac', 0, NULL),
(23, 'society_ammu', 232845, NULL),
(24, 'caution', 0, 'steam:11000013455a022'),
(25, 'society_unicorn', 18873, NULL),
(27, 'society_state', 63100, NULL),
(28, 'caution', 0, 'steam:110000137a50b0b'),
(29, 'caution', 0, 'steam:11000010315b0fc'),
(30, 'caution', 0, 'steam:1100001159d386a'),
(31, 'caution', 0, 'steam:11000010f9b63f4'),
(32, 'caution', 0, 'steam:1100001239833b9'),
(33, 'caution', 0, 'steam:11000011ad8ae36'),
(34, 'caution', 0, 'steam:11000011b8842b4'),
(35, 'caution', 0, 'steam:110000112a368e8'),
(36, 'caution', 0, 'steam:11000010aefb728'),
(37, 'caution', 0, 'steam:110000103e8537f'),
(38, 'caution', 0, 'steam:110000110b63da2'),
(39, 'caution', 0, 'steam:110000111b07fe1'),
(40, 'caution', 0, 'steam:110000109e159a4'),
(41, 'caution', 0, 'steam:1100001025de5ad'),
(42, 'caution', 0, 'steam:1100001173f46c2'),
(43, 'caution', 0, 'steam:110000108863bb1'),
(44, 'caution', 0, 'steam:110000137199bec'),
(45, 'caution', 0, 'steam:1100001167eb1ec'),
(46, 'caution', 0, 'steam:110000112f720b3'),
(47, 'caution', 0, 'steam:11000011036ca74'),
(48, 'caution', 0, 'steam:1100001153dcda0'),
(49, 'caution', 0, 'steam:1100001142cac41'),
(50, 'caution', 0, 'steam:1100001030e5b14'),
(51, 'caution', 0, 'steam:1100001025e0d64'),
(52, 'caution', 0, 'steam:11000011bd82ca0'),
(53, 'caution', 0, 'steam:110000104cb13a5'),
(54, 'caution', 0, 'steam:110000111d23809'),
(55, 'caution', 233, 'steam:110000102e30d3c'),
(56, 'society_bahama', 23975, NULL),
(57, 'caution', 0, 'steam:11000010e19aaa2'),
(58, 'caution', 0, 'steam:110000112fe6417'),
(59, 'caution', 0, 'steam:11000013bf98ef9'),
(60, 'caution', 0, 'steam:11000013cb23b44'),
(61, 'caution', 0, 'steam:110000133544f89'),
(62, 'caution', 0, 'steam:1100001105333bc'),
(63, 'caution', 0, 'steam:11000010ca5df0e'),
(64, 'caution', 0, 'steam:11000013cc3d4f7'),
(65, 'caution', 0, 'steam:1100001143762c9'),
(66, 'caution', 0, 'steam:1100001129ce7f5'),
(67, 'caution', 0, 'steam:11000010b509188'),
(68, 'caution', 0, 'steam:11000010a5b111e'),
(69, 'caution', 300, 'steam:110000107010251'),
(70, 'caution', 0, 'steam:11000013cc455e7'),
(71, 'caution', 0, 'steam:11000010b52d95b'),
(72, 'caution', 0, 'steam:110000103f9e0bb'),
(73, 'caution', 0, 'steam:1100001021ccf91'),
(74, 'caution', 300, 'steam:11000010768cb12'),
(75, 'caution', 0, 'steam:110000104b71a10'),
(76, 'caution', 229, 'steam:110000116e1d4b3'),
(77, 'caution', 0, 'steam:110000107fd6026'),
(78, 'caution', 0, 'steam:11000010d9bfc5f'),
(79, 'caution', 288, 'steam:11000011d32a135'),
(80, 'caution', 0, 'steam:110000136d17a91'),
(81, 'caution', 0, 'steam:11000013cff7125'),
(82, 'caution', 0, 'steam:110000133525d5d'),
(83, 'caution', 0, 'steam:1100001061994de'),
(84, 'caution', 0, 'steam:110000108ddc171'),
(85, 'caution', 0, 'steam:11000013cb744c0'),
(86, 'caution', 0, 'steam:11000013cb26f02'),
(87, 'caution', 0, 'steam:11000011525be75'),
(88, 'caution', 0, 'steam:110000107aeaf52'),
(89, 'caution', 0, 'steam:110000109ef4bb0'),
(90, 'caution', 0, 'steam:1100001025c4e4a'),
(91, 'caution', 0, 'steam:11000011638e655'),
(92, 'caution', 0, 'steam:110000102317531'),
(93, 'caution', 0, 'steam:1100001144f49eb'),
(94, 'society_boatdealer', 0, NULL),
(95, 'caution', 0, 'steam:110000112975e1e'),
(96, 'caution', 0, 'steam:11000010ae64f4d'),
(97, 'caution', 235, 'steam:110000111abe33d'),
(98, 'caution', 0, 'steam:11000011a6ddd7d'),
(99, 'caution', 0, 'steam:1100001350e39b8'),
(100, 'caution', 0, 'steam:11000013b749082'),
(101, 'caution', 0, 'steam:110000109039997'),
(102, 'caution', 0, 'steam:110000134db9a75'),
(103, 'caution', 0, 'steam:11000013623ce1b'),
(104, 'caution', 0, 'steam:110000119868030'),
(105, 'caution', 0, 'steam:11000013cbd4f72'),
(106, 'caution', 0, 'steam:11000010b316eb0'),
(107, 'caution', 0, 'steam:11000013cdddce8'),
(108, 'caution', 0, 'steam:11000013d0a8147'),
(109, 'property_black_money', 0, 'steam:11000011262d25d'),
(110, 'property_black_money', 0, 'steam:110000134db9a75'),
(111, 'property_black_money', 0, 'steam:110000108863bb1'),
(112, 'property_black_money', 0, 'steam:11000013d0a8147'),
(113, 'property_black_money', 0, 'steam:110000107aeaf52'),
(114, 'caution', 0, 'steam:110000131ff4226'),
(115, 'property_black_money', 0, 'steam:110000131ff4226'),
(116, 'caution', 0, 'steam:110000113214ea6'),
(117, 'property_black_money', 0, 'steam:110000113214ea6'),
(118, 'property_black_money', 0, 'steam:11000010ae64f4d'),
(119, 'property_black_money', 0, 'steam:110000103f13b0b'),
(120, 'property_black_money', 0, 'steam:11000013cc3d4f7'),
(121, 'property_black_money', 0, 'steam:110000107fd6026'),
(122, 'property_black_money', 0, 'steam:11000010315b0fc'),
(123, 'property_black_money', 0, 'steam:11000010b316eb0'),
(124, 'property_black_money', 0, 'steam:110000111b07fe1'),
(125, 'property_black_money', 0, 'steam:110000103f9e0bb'),
(126, 'property_black_money', 0, 'steam:11000010a5b111e'),
(127, 'property_black_money', 0, 'steam:11000011ad8ae36'),
(128, 'property_black_money', 0, 'steam:11000010d9bfc5f'),
(129, 'property_black_money', 0, 'steam:1100001021ccf91'),
(130, 'property_black_money', 0, 'steam:110000109ef4bb0'),
(131, 'property_black_money', 0, 'steam:11000010b509188'),
(132, 'property_black_money', 0, 'steam:110000133525d5d'),
(133, 'property_black_money', 0, 'steam:1100001030e5b14'),
(134, 'property_black_money', 0, 'steam:1100001025c4e4a'),
(135, 'caution', 0, 'steam:11000013cc8d8f2'),
(136, 'property_black_money', 0, 'steam:11000013cc8d8f2'),
(137, 'property_black_money', 0, 'steam:110000136d17a91'),
(138, 'caution', 0, 'steam:1100001139ac8fa'),
(139, 'property_black_money', 0, 'steam:1100001139ac8fa'),
(140, 'caution', 0, 'steam:11000011653d2af'),
(141, 'property_black_money', 0, 'steam:11000011653d2af'),
(142, 'property_black_money', 0, 'steam:1100001339c4c97'),
(143, 'caution', 0, 'steam:1100001339c4c97'),
(144, 'property_black_money', 0, 'steam:110000103e8537f'),
(145, 'property_black_money', 0, 'steam:11000013bce54b5'),
(146, 'caution', 0, 'steam:11000013bce54b5'),
(147, 'property_black_money', 0, 'steam:11000011036ca74'),
(148, 'property_black_money', 0, 'steam:110000139d6535a'),
(149, 'property_black_money', 0, 'steam:1100001061994de'),
(150, 'caution', 0, 'steam:110000115c7341b'),
(151, 'property_black_money', 0, 'steam:110000115c7341b'),
(152, 'property_black_money', 0, 'steam:11000013cb744c0'),
(153, 'caution', 0, 'steam:110000118c086d0'),
(154, 'property_black_money', 0, 'steam:110000118c086d0'),
(155, 'caution', 0, 'steam:11000013c253b8f'),
(156, 'property_black_money', 0, 'steam:11000013c253b8f'),
(157, 'caution', 0, 'steam:1100001094ea417'),
(158, 'property_black_money', 0, 'steam:1100001094ea417'),
(159, 'property_black_money', 0, 'steam:11000010ae1d564'),
(160, 'caution', 0, 'steam:11000010ae1d564'),
(161, 'caution', 0, 'steam:11000013c4e461d'),
(162, 'property_black_money', 0, 'steam:11000013c4e461d'),
(163, 'property_black_money', 0, 'steam:1100001159d386a'),
(164, 'caution', 0, 'steam:110000134ff4fcb'),
(165, 'property_black_money', 0, 'steam:110000134ff4fcb'),
(166, 'caution', 0, 'steam:11000013d10eaf3'),
(167, 'property_black_money', 0, 'steam:11000013d10eaf3'),
(168, 'caution', 0, 'steam:11000010e07911b'),
(169, 'property_black_money', 0, 'steam:11000010e07911b'),
(170, 'caution', 0, 'steam:110000114f8112e'),
(171, 'property_black_money', 0, 'steam:110000114f8112e'),
(172, 'property_black_money', 0, 'steam:110000112c9e145'),
(173, 'caution', 0, 'steam:110000112c9e145'),
(174, 'caution', 0, 'steam:11000011c7a7b3d'),
(175, 'property_black_money', 0, 'steam:11000011c7a7b3d'),
(176, 'caution', 0, 'steam:1100001347a8d60'),
(177, 'property_black_money', 0, 'steam:1100001347a8d60'),
(178, 'society_armurier', 0, NULL),
(179, 'property_black_money', 0, 'steam:110000104cb13a5'),
(180, 'property_black_money', 0, 'steam:11000013b874936'),
(181, 'caution', 0, 'steam:11000013b874936'),
(182, 'property_black_money', 0, 'steam:110000119770d69'),
(183, 'caution', 0, 'steam:110000119770d69'),
(184, 'property_black_money', 0, 'steam:110000112dbbe61'),
(185, 'caution', 0, 'steam:110000112dbbe61');

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_inventory`
--

INSERT INTO `addon_inventory` (`id`, `name`, `label`, `shared`) VALUES
(1, 'society_cardealer', 'Concesionnaire', 1),
(3, 'society_ambulance', 'Ambulance', 1),
(4, 'society_police', 'Police', 1),
(6, 'society_security', 'SunLand Securite', 1),
(10, 'society_mecano', 'Mécano', 1),
(11, 'society_avocat', 'Avocat', 1),
(12, 'society_journaliste', 'journaliste', 1),
(13, 'society_vigne', 'Vigneron', 1),
(14, 'society_taxi', 'Taxi', 1),
(15, 'society_tabac', 'Tabac', 1),
(16, 'society_ammu', 'Ammu', 1),
(17, 'society_unicorn', 'Unicorn', 1),
(18, 'society_unicorn_fridge', 'Unicorn (frigo)', 1),
(20, 'society_state', 'State', 1),
(21, 'society_bahama', 'bahama', 1),
(22, 'society_bahama_fridge', 'bahama (frigo)', 1),
(23, 'society_boatdealer', 'Marina', 1),
(24, 'property', 'Propriété', 0),
(27, 'society_armurier', 'Armurier', 1),
(28, 'society_armurier_coffre', 'Armurier (patron)', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_inventory_items`
--

INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
(2, 'society_journaliste', 'tel', 1, NULL),
(3, 'society_police', 'tel', 2, NULL),
(4, 'society_mecano', 'fixkit', 2, NULL),
(5, 'society_journaliste', 'sprunk', 0, NULL),
(6, 'society_journaliste', 'donut', 530, NULL),
(7, 'society_journaliste', 'chips', 370, NULL),
(8, 'society_police', 'coyotte', 0, NULL),
(9, 'society_ammu', 'licence1', 25, NULL),
(10, 'society_police', 'coffe', 0, NULL),
(11, 'society_police', 'bandage', 0, NULL),
(12, 'society_police', 'malt', 0, NULL),
(13, 'society_ammu', 'sprunk', 0, NULL),
(14, 'society_ammu', 'cupcake', 0, NULL),
(15, 'society_ammu', 'chocolate', 0, NULL),
(16, 'society_ammu', 'hamburger', 0, NULL),
(17, 'society_ammu', 'powerade', 0, NULL),
(18, 'society_ammu', 'coffe', 0, NULL),
(19, 'society_ammu', 'water', 0, NULL),
(20, 'society_ammu', 'clip', 0, NULL),
(21, 'society_ammu', 'flashlight', 35, NULL),
(22, 'society_ammu', 'grip', 36, NULL),
(23, 'society_ammu', 'silencieux', 11, NULL),
(24, 'society_ammu', 'yusuf', 17, NULL),
(25, 'society_ammu', 'canette_biere', 0, NULL),
(26, 'society_ammu', 'licence2', 10, NULL),
(27, 'society_ammu', 'licence3', 10, NULL),
(28, 'society_bahama_fridge', 'tequila', 27, NULL),
(29, 'society_bahama_fridge', 'absinthe', 3, NULL),
(30, 'society_bahama_fridge', 'gintonic', 11, NULL),
(31, 'society_bahama_fridge', 'champagne', 8, NULL),
(32, 'society_bahama_fridge', 'vodka', 5, NULL),
(33, 'society_bahama_fridge', 'whisky', 16, NULL),
(34, 'society_bahama_fridge', 'cocacola', 7, NULL),
(35, 'society_bahama_fridge', 'sprunk', 45, NULL),
(36, 'society_bahama_fridge', 'hamburger', 41, NULL),
(37, 'society_bahama_fridge', 'chips', 31, NULL),
(38, 'society_bahama_fridge', 'malbora', 450, NULL),
(39, 'society_mecano', 'coyotte', 4, NULL),
(40, 'society_tabac', 'malbora', 0, NULL),
(41, 'society_tabac', 'tabacblond', 0, NULL),
(42, 'society_bahama_fridge', 'canette_biere', 208, NULL),
(43, 'society_tabac', 'tabacblondsec', 0, NULL),
(44, 'society_journaliste', 'silencieux', 0, NULL),
(45, 'society_police', 'sim', 2, NULL),
(46, 'society_police', 'silencieux', 0, NULL),
(47, 'society_journaliste', 'blowpipe', 0, NULL),
(48, 'society_police', 'lom', 4, NULL),
(49, 'society_police', 'splif', 0, NULL),
(50, 'society_police', 'weed', 215, NULL),
(51, 'society_journaliste', 'coyotte', 0, NULL),
(52, 'society_police', 'gym_membership', 0, NULL),
(53, 'society_journaliste', 'medikit', 0, NULL),
(54, 'society_mecano', 'carokit', 22, NULL),
(55, 'society_unicorn_fridge', 'sprunk', 195, NULL),
(56, 'society_tabac', 'tabacbrun', 0, NULL),
(57, 'society_tabac', 'gitanes', 0, NULL),
(58, 'society_unicorn_fridge', 'malbora', 8, NULL),
(59, 'society_unicorn', 'canette_biere', 0, NULL),
(60, 'society_unicorn_fridge', 'canette_biere', 327, NULL),
(61, 'property', 'water', 0, 'steam:11000011262d25d'),
(62, 'property', 'splif', 25, 'steam:110000103f13b0b'),
(63, 'property', 'weed', 0, 'steam:110000103f13b0b'),
(64, 'society_unicorn_fridge', 'cocacola', 195, NULL),
(65, 'society_unicorn_fridge', 'hamburger', 400, NULL),
(66, 'society_unicorn_fridge', 'coffe', 196, NULL),
(67, 'society_unicorn_fridge', 'sandwich', 200, NULL),
(68, 'property', 'bandage', 0, 'steam:110000111b07fe1'),
(69, 'property', 'weed', 665, 'steam:110000107aeaf52'),
(70, 'property', 'whisky', 2, 'steam:110000111b07fe1'),
(71, 'property', 'vodka', 2, 'steam:110000111b07fe1'),
(72, 'property', 'gintonic', 2, 'steam:110000111b07fe1'),
(73, 'property', 'weed', 825, 'steam:110000109ef4bb0'),
(74, 'society_mecano', 'sprunk', 3, NULL),
(75, 'society_mecano', 'sandwich', 11, NULL),
(76, 'society_taxi', 'sandwich', 50, NULL),
(77, 'society_taxi', 'sprunk', 50, NULL),
(78, 'property', 'weed', 104, 'steam:110000107fd6026'),
(79, 'property', 'weed', 123, 'steam:11000010a5b111e'),
(80, 'society_state', 'donut', 50, NULL),
(81, 'property', 'jumelles', 0, 'steam:11000010b509188'),
(82, 'property', 'splif', 3, 'steam:11000010b509188');

-- --------------------------------------------------------

--
-- Structure de la table `baninfo`
--

CREATE TABLE `baninfo` (
  `identifier` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `playername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `banlist`
--

CREATE TABLE `banlist` (
  `identifier` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `expiration` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `banlisthistory`
--

CREATE TABLE `banlisthistory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` int(11) NOT NULL,
  `added` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `expiration` int(11) NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `boatdealer_boats`
--

CREATE TABLE `boatdealer_boats` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `boats`
--

CREATE TABLE `boats` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `boats`
--

INSERT INTO `boats` (`name`, `model`, `price`, `category`) VALUES
('Dinghy', 'dinghy', 2500, 'boat'),
('Dinghy2 ', 'dinghy2', 2500, 'boat'),
('Yacht Dinghy', 'dinghy4', 1500, 'boat'),
('Jetmax', 'jetmax', 17500, 'boat'),
('Voilier Marquis', 'marquis', 45500, 'boat'),
('Seashark', 'seashark', 1500, 'boat'),
('Seashark2', 'seashark2', 1500, 'boat'),
('Yacht Seashark', 'seashark3', 1500, 'boat'),
('Squalo', 'squalo', 12000, 'boat'),
('Suntrap', 'suntrap', 1500, 'boat'),
('Toro', 'toro', 15000, 'boat'),
('Yacht Toro', 'toro2', 15000, 'boat'),
('Tropic', 'tropic', 10000, 'boat'),
('Yacht Tropic', 'tropic2', 10000, 'boat');

-- --------------------------------------------------------

--
-- Structure de la table `boat_categories`
--

CREATE TABLE `boat_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `boat_categories`
--

INSERT INTO `boat_categories` (`name`, `label`) VALUES
('boat', 'Boats');

-- --------------------------------------------------------

--
-- Structure de la table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

CREATE TABLE `characters` (
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'f',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `datastore`
--

CREATE TABLE `datastore` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `datastore`
--

INSERT INTO `datastore` (`id`, `name`, `label`, `shared`) VALUES
(2, 'society_ambulance', 'Ambulance', 1),
(3, 'society_police', 'Police', 1),
(5, 'society_security', 'SunLand Securite', 1),
(6, 'society_mecano', 'Mécano', 1),
(7, 'society_avocat', 'Avocat', 1),
(8, 'society_journaliste', 'journaliste', 1),
(9, 'society_vigne', 'Vigneron', 1),
(10, 'society_taxi', 'Taxi', 1),
(11, 'user_ears', 'Ears', 0),
(12, 'user_glasses', 'Glasses', 0),
(13, 'user_helmet', 'Helmet', 0),
(14, 'user_mask', 'Mask', 0),
(15, 'society_tabac', 'Tabac', 1),
(16, 'society_ammu', 'Ammu', 1),
(17, 'society_unicorn', 'Unicorn', 1),
(19, 'society_state', 'State', 1),
(20, 'society_bahama', 'bahama', 1),
(21, 'property', 'Propriété', 0),
(24, 'society_armurier', 'Armurier', 1),
(25, 'society_armurier_coffre', 'Armurier', 1);

-- --------------------------------------------------------

--
-- Structure de la table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `data` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(3, 'society_ambulance', NULL, '{}'),
(4, 'society_police', NULL, '{\"weapons\":[{\"name\":\"WEAPON_NIGHTSTICK\",\"count\":3},{\"name\":\"WEAPON_COMBATPISTOL\",\"count\":7},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"count\":4},{\"name\":\"WEAPON_FLASHLIGHT\",\"count\":8},{\"name\":\"WEAPON_ASSAULTSMG\",\"count\":8},{\"name\":\"WEAPON_SAWNOFFSHOTGUN\",\"count\":12},{\"name\":\"WEAPON_STUNGUN\",\"count\":8},{\"name\":\"WEAPON_CARBINERIFLE\",\"count\":9},{\"name\":\"WEAPON_SNIPERRIFLE\",\"count\":9},{\"name\":\"WEAPON_BZGAS\",\"count\":8},{\"name\":\"WEAPON_MUSKET\",\"count\":1},{\"name\":\"WEAPON_KNIFE\",\"count\":5},{\"name\":\"WEAPON_PISTOL\",\"count\":0},{\"name\":\"WEAPON_PETROLCAN\",\"count\":0},{\"name\":\"WEAPON_BAT\",\"count\":0},{\"name\":\"WEAPON_KNUCKLE\",\"count\":4},{\"name\":\"WEAPON_SWITCHBLADE\",\"count\":1},{\"name\":\"GADGET_PARACHUTE\",\"count\":1},{\"name\":\"WEAPON_SMG\",\"count\":0}]}'),
(5, 'society_security', NULL, '{\"weapons\":[{\"name\":\"WEAPON_STUNGUN\",\"count\":0},{\"name\":\"WEAPON_MUSKET\",\"count\":0},{\"name\":\"WEAPON_NIGHTSTICK\",\"count\":2},{\"name\":\"WEAPON_COMBATPISTOL\",\"count\":0},{\"name\":\"WEAPON_BZGAS\",\"count\":1},{\"name\":\"WEAPON_FLASHLIGHT\",\"count\":6},{\"name\":\"WEAPON_PISTOL\",\"count\":0}]}'),
(6, 'society_mecano', NULL, '{\"weapons\":[]}'),
(7, 'society_avocat', NULL, '{}'),
(8, 'society_journaliste', NULL, '{\"weapons\":[{\"name\":\"WEAPON_PISTOL\",\"count\":0},{\"name\":\"WEAPON_KNIFE\",\"count\":0},{\"name\":\"WEAPON_COMBATPISTOL\",\"count\":0},{\"name\":\"WEAPON_STUNGUN\",\"count\":0},{\"name\":\"WEAPON_KNUCKLE\",\"count\":0}]}'),
(9, 'society_vigne', NULL, '{}'),
(10, 'society_taxi', NULL, '{}'),
(11, 'user_helmet', 'steam:11000011262d25d', '{}'),
(12, 'user_glasses', 'steam:11000011262d25d', '{}'),
(13, 'user_mask', 'steam:11000011262d25d', '{}'),
(14, 'user_ears', 'steam:11000011262d25d', '{}'),
(15, 'society_tabac', NULL, '{}'),
(16, 'user_mask', 'steam:110000110a0d478', '{}'),
(17, 'user_glasses', 'steam:110000110a0d478', '{}'),
(18, 'user_helmet', 'steam:110000110a0d478', '{}'),
(19, 'user_ears', 'steam:110000110a0d478', '{}'),
(20, 'society_ammu', NULL, '{\"weapons\":[{\"name\":\"WEAPON_FLASHLIGHT\",\"count\":0},{\"name\":\"WEAPON_PISTOL\",\"count\":0},{\"name\":\"WEAPON_STUNGUN\",\"count\":0},{\"name\":\"WEAPON_KNIFE\",\"count\":0},{\"name\":\"WEAPON_KNUCKLE\",\"count\":0},{\"name\":\"WEAPON_BAT\",\"count\":0},{\"name\":\"WEAPON_MICROSMG\",\"count\":0},{\"name\":\"WEAPON_SMG\",\"count\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"count\":0},{\"name\":\"WEAPON_SWITCHBLADE\",\"count\":0},{\"name\":\"WEAPON_PETROLCAN\",\"count\":0},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"count\":0},{\"name\":\"WEAPON_HAMMER\",\"count\":0},{\"name\":\"WEAPON_MUSKET\",\"count\":0}]}'),
(21, 'user_glasses', 'steam:11000013455a022', '{}'),
(22, 'user_helmet', 'steam:11000013455a022', '{}'),
(23, 'user_mask', 'steam:11000013455a022', '{}'),
(24, 'user_ears', 'steam:11000013455a022', '{}'),
(25, 'society_unicorn', NULL, '{\"weapons\":[{\"name\":\"WEAPON_CARBINERIFLE\",\"count\":0}]}'),
(27, 'society_state', NULL, '{\"weapons\":[{\"name\":\"WEAPON_KNIFE\",\"count\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"count\":0}]}'),
(28, 'user_helmet', 'steam:110000139d6535a', '{}'),
(29, 'user_ears', 'steam:110000139d6535a', '{}'),
(30, 'user_glasses', 'steam:110000139d6535a', '{}'),
(31, 'user_mask', 'steam:110000139d6535a', '{}'),
(32, 'user_mask', 'steam:110000111643812', '{}'),
(33, 'user_ears', 'steam:110000111643812', '{}'),
(34, 'user_glasses', 'steam:110000111643812', '{}'),
(35, 'user_helmet', 'steam:110000111643812', '{}'),
(36, 'user_mask', 'steam:110000137a50b0b', '{}'),
(37, 'user_ears', 'steam:110000137a50b0b', '{}'),
(38, 'user_helmet', 'steam:110000137a50b0b', '{}'),
(39, 'user_glasses', 'steam:110000137a50b0b', '{}'),
(40, 'user_mask', 'steam:11000010315b0fc', '{}'),
(41, 'user_glasses', 'steam:11000010315b0fc', '{}'),
(42, 'user_helmet', 'steam:11000010315b0fc', '{}'),
(43, 'user_ears', 'steam:11000010315b0fc', '{}'),
(44, 'user_mask', 'steam:1100001159d386a', '{}'),
(45, 'user_glasses', 'steam:1100001159d386a', '{}'),
(46, 'user_ears', 'steam:1100001159d386a', '{}'),
(47, 'user_helmet', 'steam:1100001159d386a', '{}'),
(48, 'user_ears', 'steam:11000010f9b63f4', '{}'),
(49, 'user_glasses', 'steam:11000010f9b63f4', '{}'),
(50, 'user_helmet', 'steam:11000010f9b63f4', '{}'),
(51, 'user_mask', 'steam:11000010f9b63f4', '{}'),
(52, 'user_glasses', 'steam:1100001239833b9', '{}'),
(53, 'user_ears', 'steam:1100001239833b9', '{}'),
(54, 'user_mask', 'steam:1100001239833b9', '{}'),
(55, 'user_helmet', 'steam:1100001239833b9', '{}'),
(56, 'user_glasses', 'steam:110000103f13b0b', '{}'),
(57, 'user_ears', 'steam:110000103f13b0b', '{}'),
(58, 'user_mask', 'steam:110000103f13b0b', '{}'),
(59, 'user_helmet', 'steam:110000103f13b0b', '{}'),
(60, 'user_ears', 'steam:11000011ad8ae36', '{}'),
(61, 'user_mask', 'steam:11000011ad8ae36', '{}'),
(62, 'user_glasses', 'steam:11000011ad8ae36', '{}'),
(63, 'user_helmet', 'steam:11000011ad8ae36', '{}'),
(64, 'user_mask', 'steam:11000011b8842b4', '{}'),
(65, 'user_helmet', 'steam:11000011b8842b4', '{}'),
(66, 'user_glasses', 'steam:11000011b8842b4', '{}'),
(67, 'user_ears', 'steam:11000011b8842b4', '{}'),
(68, 'user_mask', 'steam:110000112a368e8', '{}'),
(69, 'user_helmet', 'steam:110000112a368e8', '{}'),
(70, 'user_glasses', 'steam:110000112a368e8', '{}'),
(71, 'user_ears', 'steam:110000112a368e8', '{}'),
(72, 'user_ears', 'steam:11000010aefb728', '{}'),
(73, 'user_mask', 'steam:11000010aefb728', '{}'),
(74, 'user_glasses', 'steam:11000010aefb728', '{}'),
(75, 'user_helmet', 'steam:11000010aefb728', '{}'),
(76, 'user_ears', 'steam:110000103e8537f', '{}'),
(77, 'user_helmet', 'steam:110000103e8537f', '{}'),
(78, 'user_mask', 'steam:110000103e8537f', '{}'),
(79, 'user_glasses', 'steam:110000103e8537f', '{}'),
(80, 'user_mask', 'steam:110000110b63da2', '{}'),
(81, 'user_ears', 'steam:110000110b63da2', '{}'),
(82, 'user_glasses', 'steam:110000110b63da2', '{}'),
(83, 'user_helmet', 'steam:110000110b63da2', '{}'),
(84, 'user_glasses', 'steam:110000111b07fe1', '{}'),
(85, 'user_helmet', 'steam:110000111b07fe1', '{}'),
(86, 'user_ears', 'steam:110000111b07fe1', '{}'),
(87, 'user_mask', 'steam:110000111b07fe1', '{}'),
(88, 'user_mask', 'steam:110000109e159a4', '{}'),
(89, 'user_helmet', 'steam:110000109e159a4', '{}'),
(90, 'user_glasses', 'steam:110000109e159a4', '{}'),
(91, 'user_ears', 'steam:110000109e159a4', '{}'),
(92, 'user_glasses', 'steam:1100001025de5ad', '{}'),
(93, 'user_ears', 'steam:1100001025de5ad', '{}'),
(94, 'user_helmet', 'steam:1100001025de5ad', '{}'),
(95, 'user_mask', 'steam:1100001025de5ad', '{}'),
(96, 'user_helmet', 'steam:1100001173f46c2', '{}'),
(97, 'user_glasses', 'steam:1100001173f46c2', '{}'),
(98, 'user_ears', 'steam:1100001173f46c2', '{}'),
(99, 'user_mask', 'steam:1100001173f46c2', '{}'),
(100, 'user_helmet', 'steam:110000108863bb1', '{}'),
(101, 'user_glasses', 'steam:110000108863bb1', '{}'),
(102, 'user_mask', 'steam:110000108863bb1', '{}'),
(103, 'user_ears', 'steam:110000108863bb1', '{}'),
(104, 'user_helmet', 'steam:110000137199bec', '{}'),
(105, 'user_ears', 'steam:110000137199bec', '{}'),
(106, 'user_glasses', 'steam:110000137199bec', '{}'),
(107, 'user_mask', 'steam:110000137199bec', '{}'),
(108, 'user_ears', 'steam:1100001167eb1ec', '{}'),
(109, 'user_helmet', 'steam:1100001167eb1ec', '{}'),
(110, 'user_mask', 'steam:1100001167eb1ec', '{}'),
(111, 'user_glasses', 'steam:1100001167eb1ec', '{}'),
(112, 'user_ears', 'steam:110000112f720b3', '{}'),
(113, 'user_glasses', 'steam:110000112f720b3', '{}'),
(114, 'user_helmet', 'steam:110000112f720b3', '{}'),
(115, 'user_mask', 'steam:110000112f720b3', '{}'),
(116, 'user_ears', 'steam:11000011036ca74', '{}'),
(117, 'user_mask', 'steam:11000011036ca74', '{}'),
(118, 'user_helmet', 'steam:11000011036ca74', '{}'),
(119, 'user_glasses', 'steam:11000011036ca74', '{}'),
(120, 'user_glasses', 'steam:1100001153dcda0', '{}'),
(121, 'user_mask', 'steam:1100001153dcda0', '{}'),
(122, 'user_helmet', 'steam:1100001153dcda0', '{}'),
(123, 'user_ears', 'steam:1100001153dcda0', '{}'),
(124, 'user_ears', 'steam:1100001142cac41', '{}'),
(125, 'user_glasses', 'steam:1100001142cac41', '{}'),
(126, 'user_helmet', 'steam:1100001142cac41', '{}'),
(127, 'user_mask', 'steam:1100001142cac41', '{}'),
(128, 'user_glasses', 'steam:1100001030e5b14', '{}'),
(129, 'user_ears', 'steam:1100001030e5b14', '{}'),
(130, 'user_helmet', 'steam:1100001030e5b14', '{}'),
(131, 'user_mask', 'steam:1100001030e5b14', '{}'),
(132, 'user_ears', 'steam:1100001025e0d64', '{}'),
(133, 'user_helmet', 'steam:1100001025e0d64', '{}'),
(134, 'user_glasses', 'steam:1100001025e0d64', '{}'),
(135, 'user_mask', 'steam:1100001025e0d64', '{}'),
(136, 'user_ears', 'steam:11000011bd82ca0', '{}'),
(137, 'user_mask', 'steam:11000011bd82ca0', '{}'),
(138, 'user_glasses', 'steam:11000011bd82ca0', '{}'),
(139, 'user_helmet', 'steam:11000011bd82ca0', '{}'),
(140, 'user_ears', 'steam:110000104cb13a5', '{}'),
(141, 'user_helmet', 'steam:110000104cb13a5', '{}'),
(142, 'user_mask', 'steam:110000104cb13a5', '{}'),
(143, 'user_glasses', 'steam:110000104cb13a5', '{}'),
(144, 'user_ears', 'steam:110000111d23809', '{}'),
(145, 'user_glasses', 'steam:110000111d23809', '{}'),
(146, 'user_mask', 'steam:110000111d23809', '{}'),
(147, 'user_helmet', 'steam:110000111d23809', '{}'),
(148, 'user_ears', 'steam:110000102e30d3c', '{}'),
(149, 'user_glasses', 'steam:110000102e30d3c', '{}'),
(150, 'user_helmet', 'steam:110000102e30d3c', '{}'),
(151, 'user_mask', 'steam:110000102e30d3c', '{}'),
(152, 'society_bahama', NULL, '{}'),
(153, 'user_glasses', 'steam:11000010e19aaa2', '{}'),
(154, 'user_ears', 'steam:11000010e19aaa2', '{}'),
(155, 'user_mask', 'steam:11000010e19aaa2', '{}'),
(156, 'user_helmet', 'steam:11000010e19aaa2', '{}'),
(157, 'user_mask', 'steam:110000112fe6417', '{}'),
(158, 'user_ears', 'steam:110000112fe6417', '{}'),
(159, 'user_glasses', 'steam:110000112fe6417', '{}'),
(160, 'user_helmet', 'steam:110000112fe6417', '{}'),
(161, 'user_helmet', 'steam:11000013bf98ef9', '{}'),
(162, 'user_glasses', 'steam:11000013bf98ef9', '{}'),
(163, 'user_mask', 'steam:11000013bf98ef9', '{}'),
(164, 'user_ears', 'steam:11000013bf98ef9', '{}'),
(165, 'user_ears', 'steam:11000013cb23b44', '{}'),
(166, 'user_glasses', 'steam:11000013cb23b44', '{}'),
(167, 'user_helmet', 'steam:11000013cb23b44', '{}'),
(168, 'user_mask', 'steam:11000013cb23b44', '{}'),
(169, 'user_ears', 'steam:110000133544f89', '{}'),
(170, 'user_helmet', 'steam:110000133544f89', '{}'),
(171, 'user_glasses', 'steam:110000133544f89', '{}'),
(172, 'user_mask', 'steam:110000133544f89', '{}'),
(173, 'user_glasses', 'steam:1100001105333bc', '{}'),
(174, 'user_helmet', 'steam:1100001105333bc', '{}'),
(175, 'user_mask', 'steam:1100001105333bc', '{}'),
(176, 'user_ears', 'steam:1100001105333bc', '{}'),
(177, 'user_glasses', 'steam:11000010ca5df0e', '{}'),
(178, 'user_mask', 'steam:11000010ca5df0e', '{}'),
(179, 'user_ears', 'steam:11000010ca5df0e', '{}'),
(180, 'user_helmet', 'steam:11000010ca5df0e', '{}'),
(181, 'user_glasses', 'steam:11000013cc3d4f7', '{}'),
(182, 'user_helmet', 'steam:11000013cc3d4f7', '{}'),
(183, 'user_mask', 'steam:11000013cc3d4f7', '{}'),
(184, 'user_ears', 'steam:11000013cc3d4f7', '{}'),
(185, 'user_helmet', 'steam:1100001143762c9', '{}'),
(186, 'user_ears', 'steam:1100001143762c9', '{}'),
(187, 'user_glasses', 'steam:1100001143762c9', '{}'),
(188, 'user_mask', 'steam:1100001143762c9', '{}'),
(189, 'user_ears', 'steam:1100001129ce7f5', '{}'),
(190, 'user_helmet', 'steam:1100001129ce7f5', '{}'),
(191, 'user_mask', 'steam:1100001129ce7f5', '{}'),
(192, 'user_glasses', 'steam:1100001129ce7f5', '{}'),
(193, 'user_glasses', 'steam:11000010b509188', '{}'),
(194, 'user_ears', 'steam:11000010b509188', '{}'),
(195, 'user_mask', 'steam:11000010b509188', '{}'),
(196, 'user_helmet', 'steam:11000010b509188', '{}'),
(197, 'user_ears', 'steam:11000010a5b111e', '{}'),
(198, 'user_glasses', 'steam:11000010a5b111e', '{}'),
(199, 'user_mask', 'steam:11000010a5b111e', '{}'),
(200, 'user_helmet', 'steam:11000010a5b111e', '{}'),
(201, 'user_glasses', 'steam:110000107010251', '{}'),
(202, 'user_mask', 'steam:110000107010251', '{}'),
(203, 'user_ears', 'steam:110000107010251', '{}'),
(204, 'user_helmet', 'steam:110000107010251', '{}'),
(205, 'user_mask', 'steam:11000013cc455e7', '{}'),
(206, 'user_ears', 'steam:11000013cc455e7', '{}'),
(207, 'user_glasses', 'steam:11000013cc455e7', '{}'),
(208, 'user_helmet', 'steam:11000013cc455e7', '{}'),
(209, 'user_glasses', 'steam:11000010b52d95b', '{}'),
(210, 'user_mask', 'steam:11000010b52d95b', '{}'),
(211, 'user_ears', 'steam:11000010b52d95b', '{}'),
(212, 'user_helmet', 'steam:11000010b52d95b', '{}'),
(213, 'user_ears', 'steam:110000103f9e0bb', '{}'),
(214, 'user_helmet', 'steam:110000103f9e0bb', '{}'),
(215, 'user_glasses', 'steam:110000103f9e0bb', '{}'),
(216, 'user_mask', 'steam:110000103f9e0bb', '{}'),
(217, 'user_ears', 'steam:1100001021ccf91', '{}'),
(218, 'user_mask', 'steam:1100001021ccf91', '{}'),
(219, 'user_glasses', 'steam:1100001021ccf91', '{}'),
(220, 'user_helmet', 'steam:1100001021ccf91', '{}'),
(221, 'user_ears', 'steam:11000010768cb12', '{}'),
(222, 'user_glasses', 'steam:11000010768cb12', '{}'),
(223, 'user_helmet', 'steam:11000010768cb12', '{}'),
(224, 'user_mask', 'steam:11000010768cb12', '{}'),
(225, 'user_glasses', 'steam:110000104b71a10', '{}'),
(226, 'user_helmet', 'steam:110000104b71a10', '{}'),
(227, 'user_mask', 'steam:110000104b71a10', '{}'),
(228, 'user_ears', 'steam:110000104b71a10', '{}'),
(229, 'user_helmet', 'steam:110000116e1d4b3', '{}'),
(230, 'user_mask', 'steam:110000116e1d4b3', '{}'),
(231, 'user_glasses', 'steam:110000116e1d4b3', '{}'),
(232, 'user_ears', 'steam:110000116e1d4b3', '{}'),
(233, 'user_ears', 'steam:110000107fd6026', '{}'),
(234, 'user_helmet', 'steam:110000107fd6026', '{}'),
(235, 'user_mask', 'steam:110000107fd6026', '{}'),
(236, 'user_glasses', 'steam:110000107fd6026', '{}'),
(237, 'user_glasses', 'steam:11000010d9bfc5f', '{}'),
(238, 'user_mask', 'steam:11000010d9bfc5f', '{}'),
(239, 'user_helmet', 'steam:11000010d9bfc5f', '{}'),
(240, 'user_ears', 'steam:11000010d9bfc5f', '{}'),
(241, 'user_mask', 'steam:11000011d32a135', '{}'),
(242, 'user_helmet', 'steam:11000011d32a135', '{}'),
(243, 'user_glasses', 'steam:11000011d32a135', '{}'),
(244, 'user_ears', 'steam:11000011d32a135', '{}'),
(245, 'user_ears', 'steam:110000136d17a91', '{}'),
(246, 'user_glasses', 'steam:110000136d17a91', '{}'),
(247, 'user_helmet', 'steam:110000136d17a91', '{}'),
(248, 'user_mask', 'steam:110000136d17a91', '{}'),
(249, 'user_glasses', 'steam:11000013cff7125', '{}'),
(250, 'user_mask', 'steam:11000013cff7125', '{}'),
(251, 'user_helmet', 'steam:11000013cff7125', '{}'),
(252, 'user_ears', 'steam:11000013cff7125', '{}'),
(253, 'user_mask', 'steam:110000133525d5d', '{}'),
(254, 'user_ears', 'steam:110000133525d5d', '{}'),
(255, 'user_helmet', 'steam:110000133525d5d', '{}'),
(256, 'user_glasses', 'steam:110000133525d5d', '{}'),
(257, 'user_helmet', 'steam:1100001061994de', '{}'),
(258, 'user_mask', 'steam:1100001061994de', '{}'),
(259, 'user_ears', 'steam:1100001061994de', '{}'),
(260, 'user_glasses', 'steam:1100001061994de', '{}'),
(261, 'user_mask', 'steam:110000108ddc171', '{}'),
(262, 'user_ears', 'steam:110000108ddc171', '{}'),
(263, 'user_glasses', 'steam:110000108ddc171', '{}'),
(264, 'user_helmet', 'steam:110000108ddc171', '{}'),
(265, 'user_glasses', 'steam:11000013cb744c0', '{}'),
(266, 'user_mask', 'steam:11000013cb744c0', '{}'),
(267, 'user_helmet', 'steam:11000013cb744c0', '{}'),
(268, 'user_ears', 'steam:11000013cb744c0', '{}'),
(269, 'user_ears', 'steam:11000013cb26f02', '{}'),
(270, 'user_helmet', 'steam:11000013cb26f02', '{}'),
(271, 'user_glasses', 'steam:11000013cb26f02', '{}'),
(272, 'user_mask', 'steam:11000013cb26f02', '{}'),
(273, 'user_glasses', 'steam:11000011525be75', '{}'),
(274, 'user_ears', 'steam:11000011525be75', '{}'),
(275, 'user_helmet', 'steam:11000011525be75', '{}'),
(276, 'user_mask', 'steam:11000011525be75', '{}'),
(277, 'user_glasses', 'steam:110000107aeaf52', '{}'),
(278, 'user_ears', 'steam:110000107aeaf52', '{}'),
(279, 'user_mask', 'steam:110000107aeaf52', '{}'),
(280, 'user_helmet', 'steam:110000107aeaf52', '{}'),
(281, 'user_glasses', 'steam:110000109ef4bb0', '{}'),
(282, 'user_ears', 'steam:110000109ef4bb0', '{}'),
(283, 'user_helmet', 'steam:110000109ef4bb0', '{}'),
(284, 'user_mask', 'steam:110000109ef4bb0', '{}'),
(285, 'user_mask', 'steam:1100001025c4e4a', '{}'),
(286, 'user_ears', 'steam:1100001025c4e4a', '{}'),
(287, 'user_glasses', 'steam:1100001025c4e4a', '{}'),
(288, 'user_helmet', 'steam:1100001025c4e4a', '{}'),
(289, 'user_helmet', 'steam:11000011638e655', '{}'),
(290, 'user_ears', 'steam:11000011638e655', '{}'),
(291, 'user_glasses', 'steam:11000011638e655', '{}'),
(292, 'user_mask', 'steam:11000011638e655', '{}'),
(293, 'user_ears', 'steam:110000102317531', '{}'),
(294, 'user_helmet', 'steam:110000102317531', '{}'),
(295, 'user_mask', 'steam:110000102317531', '{}'),
(296, 'user_glasses', 'steam:110000102317531', '{}'),
(297, 'user_mask', 'steam:1100001144f49eb', '{}'),
(298, 'user_glasses', 'steam:1100001144f49eb', '{}'),
(299, 'user_helmet', 'steam:1100001144f49eb', '{}'),
(300, 'user_ears', 'steam:1100001144f49eb', '{}'),
(301, 'user_helmet', 'steam:110000112975e1e', '{}'),
(302, 'user_ears', 'steam:110000112975e1e', '{}'),
(303, 'user_glasses', 'steam:110000112975e1e', '{}'),
(304, 'user_mask', 'steam:110000112975e1e', '{}'),
(305, 'user_ears', 'steam:11000010ae64f4d', '{}'),
(306, 'user_glasses', 'steam:11000010ae64f4d', '{}'),
(307, 'user_mask', 'steam:11000010ae64f4d', '{}'),
(308, 'user_helmet', 'steam:11000010ae64f4d', '{}'),
(309, 'user_helmet', 'steam:110000111abe33d', '{}'),
(310, 'user_glasses', 'steam:110000111abe33d', '{}'),
(311, 'user_mask', 'steam:110000111abe33d', '{}'),
(312, 'user_ears', 'steam:110000111abe33d', '{}'),
(313, 'user_mask', 'steam:11000011a6ddd7d', '{}'),
(314, 'user_ears', 'steam:11000011a6ddd7d', '{}'),
(315, 'user_helmet', 'steam:11000011a6ddd7d', '{}'),
(316, 'user_glasses', 'steam:11000011a6ddd7d', '{}'),
(317, 'user_helmet', 'steam:1100001350e39b8', '{}'),
(318, 'user_ears', 'steam:1100001350e39b8', '{}'),
(319, 'user_glasses', 'steam:1100001350e39b8', '{}'),
(320, 'user_mask', 'steam:1100001350e39b8', '{}'),
(321, 'user_mask', 'steam:11000013b749082', '{}'),
(322, 'user_ears', 'steam:11000013b749082', '{}'),
(323, 'user_glasses', 'steam:11000013b749082', '{}'),
(324, 'user_helmet', 'steam:11000013b749082', '{}'),
(325, 'user_ears', 'steam:110000109039997', '{}'),
(326, 'user_mask', 'steam:110000109039997', '{}'),
(327, 'user_helmet', 'steam:110000109039997', '{}'),
(328, 'user_glasses', 'steam:110000109039997', '{}'),
(329, 'user_glasses', 'steam:110000134db9a75', '{}'),
(330, 'user_ears', 'steam:110000134db9a75', '{}'),
(331, 'user_helmet', 'steam:110000134db9a75', '{}'),
(332, 'user_mask', 'steam:110000134db9a75', '{}'),
(333, 'user_helmet', 'steam:11000013623ce1b', '{}'),
(334, 'user_glasses', 'steam:11000013623ce1b', '{}'),
(335, 'user_mask', 'steam:11000013623ce1b', '{}'),
(336, 'user_ears', 'steam:11000013623ce1b', '{}'),
(337, 'user_mask', 'steam:110000119868030', '{}'),
(338, 'user_helmet', 'steam:110000119868030', '{}'),
(339, 'user_ears', 'steam:110000119868030', '{}'),
(340, 'user_glasses', 'steam:110000119868030', '{}'),
(341, 'user_helmet', 'steam:11000013cbd4f72', '{}'),
(342, 'user_ears', 'steam:11000013cbd4f72', '{}'),
(343, 'user_glasses', 'steam:11000013cbd4f72', '{}'),
(344, 'user_mask', 'steam:11000013cbd4f72', '{}'),
(345, 'user_ears', 'steam:11000010b316eb0', '{}'),
(346, 'user_mask', 'steam:11000010b316eb0', '{}'),
(347, 'user_glasses', 'steam:11000010b316eb0', '{}'),
(348, 'user_helmet', 'steam:11000010b316eb0', '{}'),
(349, 'user_ears', 'steam:11000013cdddce8', '{}'),
(350, 'user_glasses', 'steam:11000013cdddce8', '{}'),
(351, 'user_helmet', 'steam:11000013cdddce8', '{}'),
(352, 'user_mask', 'steam:11000013cdddce8', '{}'),
(353, 'user_ears', 'steam:11000013d0a8147', '{}'),
(354, 'user_glasses', 'steam:11000013d0a8147', '{}'),
(355, 'user_helmet', 'steam:11000013d0a8147', '{}'),
(356, 'user_mask', 'steam:11000013d0a8147', '{}'),
(357, 'property', 'steam:11000011262d25d', '{}'),
(358, 'property', 'steam:110000134db9a75', '{}'),
(359, 'property', 'steam:110000108863bb1', '{}'),
(360, 'property', 'steam:11000013d0a8147', '{}'),
(361, 'property', 'steam:110000107aeaf52', '{\"weapons\":[{\"name\":\"WEAPON_CARBINERIFLE\",\"ammo\":250},{\"name\":\"WEAPON_CARBINERIFLE\",\"ammo\":250},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":250}]}'),
(362, 'user_glasses', 'steam:110000131ff4226', '{}'),
(363, 'user_helmet', 'steam:110000131ff4226', '{}'),
(364, 'property', 'steam:110000131ff4226', '{}'),
(365, 'user_ears', 'steam:110000131ff4226', '{}'),
(366, 'user_mask', 'steam:110000131ff4226', '{}'),
(367, 'user_ears', 'steam:110000113214ea6', '{}'),
(368, 'user_helmet', 'steam:110000113214ea6', '{}'),
(369, 'user_glasses', 'steam:110000113214ea6', '{}'),
(370, 'user_mask', 'steam:110000113214ea6', '{}'),
(371, 'property', 'steam:110000113214ea6', '{}'),
(372, 'property', 'steam:11000010ae64f4d', '{}'),
(373, 'property', 'steam:110000103f13b0b', '{}'),
(374, 'property', 'steam:11000013cc3d4f7', '{}'),
(375, 'property', 'steam:110000107fd6026', '{}'),
(376, 'property', 'steam:11000010315b0fc', '{}'),
(377, 'property', 'steam:11000010b316eb0', '{}'),
(378, 'property', 'steam:110000111b07fe1', '{\"weapons\":[{\"name\":\"WEAPON_SWITCHBLADE\",\"ammo\":0},{\"name\":\"WEAPON_KNIFE\",\"ammo\":0},{\"name\":\"WEAPON_KNIFE\",\"ammo\":0},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":250},{\"name\":\"WEAPON_SMG\",\"ammo\":250}]}'),
(379, 'property', 'steam:110000103f9e0bb', '{}'),
(380, 'property', 'steam:11000010a5b111e', '{}'),
(381, 'property', 'steam:11000011ad8ae36', '{}'),
(382, 'property', 'steam:11000010d9bfc5f', '{}'),
(383, 'property', 'steam:1100001021ccf91', '{}'),
(384, 'property', 'steam:110000109ef4bb0', '{\"weapons\":[{\"name\":\"WEAPON_CARBINERIFLE\",\"ammo\":250},{\"name\":\"WEAPON_CARBINERIFLE\",\"ammo\":250},{\"name\":\"WEAPON_CARBINERIFLE\",\"ammo\":250},{\"name\":\"WEAPON_CARBINERIFLE\",\"ammo\":250},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":250},{\"name\":\"WEAPON_CARBINERIFLE\",\"ammo\":250}]}'),
(385, 'property', 'steam:11000010b509188', '{}'),
(386, 'property', 'steam:110000133525d5d', '{}'),
(387, 'property', 'steam:1100001030e5b14', '{}'),
(388, 'property', 'steam:1100001025c4e4a', '{\"weapons\":[{\"name\":\"WEAPON_CARBINERIFLE\",\"ammo\":250}]}'),
(389, 'user_glasses', 'steam:11000013cc8d8f2', '{}'),
(390, 'property', 'steam:11000013cc8d8f2', '{}'),
(391, 'user_helmet', 'steam:11000013cc8d8f2', '{}'),
(392, 'user_ears', 'steam:11000013cc8d8f2', '{}'),
(393, 'user_mask', 'steam:11000013cc8d8f2', '{}'),
(394, 'property', 'steam:110000136d17a91', '{}'),
(395, 'user_helmet', 'steam:1100001139ac8fa', '{}'),
(396, 'property', 'steam:1100001139ac8fa', '{}'),
(397, 'user_mask', 'steam:1100001139ac8fa', '{}'),
(398, 'user_glasses', 'steam:1100001139ac8fa', '{}'),
(399, 'user_ears', 'steam:1100001139ac8fa', '{}'),
(400, 'user_ears', 'steam:11000011653d2af', '{}'),
(401, 'property', 'steam:11000011653d2af', '{}'),
(402, 'user_mask', 'steam:11000011653d2af', '{}'),
(403, 'user_helmet', 'steam:11000011653d2af', '{}'),
(404, 'user_glasses', 'steam:11000011653d2af', '{}'),
(405, 'property', 'steam:1100001339c4c97', '{}'),
(406, 'user_helmet', 'steam:1100001339c4c97', '{}'),
(407, 'user_glasses', 'steam:1100001339c4c97', '{}'),
(408, 'user_ears', 'steam:1100001339c4c97', '{}'),
(409, 'user_mask', 'steam:1100001339c4c97', '{}'),
(410, 'property', 'steam:110000103e8537f', '{}'),
(411, 'user_ears', 'steam:11000013bce54b5', '{}'),
(412, 'user_mask', 'steam:11000013bce54b5', '{}'),
(413, 'user_helmet', 'steam:11000013bce54b5', '{}'),
(414, 'property', 'steam:11000013bce54b5', '{}'),
(415, 'user_glasses', 'steam:11000013bce54b5', '{}'),
(416, 'property', 'steam:11000011036ca74', '{}'),
(417, 'property', 'steam:110000139d6535a', '{}'),
(418, 'property', 'steam:1100001061994de', '{}'),
(419, 'user_glasses', 'steam:110000115c7341b', '{}'),
(420, 'property', 'steam:110000115c7341b', '{}'),
(421, 'user_helmet', 'steam:110000115c7341b', '{}'),
(422, 'user_ears', 'steam:110000115c7341b', '{}'),
(423, 'user_mask', 'steam:110000115c7341b', '{}'),
(424, 'property', 'steam:11000013cb744c0', '{}'),
(425, 'user_glasses', 'steam:110000118c086d0', '{}'),
(426, 'user_helmet', 'steam:110000118c086d0', '{}'),
(427, 'user_ears', 'steam:110000118c086d0', '{}'),
(428, 'user_mask', 'steam:110000118c086d0', '{}'),
(429, 'property', 'steam:110000118c086d0', '{}'),
(430, 'property', 'steam:11000013c253b8f', '{}'),
(431, 'user_helmet', 'steam:11000013c253b8f', '{}'),
(432, 'user_mask', 'steam:11000013c253b8f', '{}'),
(433, 'user_ears', 'steam:11000013c253b8f', '{}'),
(434, 'user_glasses', 'steam:11000013c253b8f', '{}'),
(435, 'property', 'steam:1100001094ea417', '{}'),
(436, 'user_glasses', 'steam:1100001094ea417', '{}'),
(437, 'user_ears', 'steam:1100001094ea417', '{}'),
(438, 'user_helmet', 'steam:1100001094ea417', '{}'),
(439, 'user_mask', 'steam:1100001094ea417', '{}'),
(440, 'user_glasses', 'steam:11000010ae1d564', '{}'),
(441, 'user_helmet', 'steam:11000010ae1d564', '{}'),
(442, 'user_mask', 'steam:11000010ae1d564', '{}'),
(443, 'property', 'steam:11000010ae1d564', '{}'),
(444, 'user_ears', 'steam:11000010ae1d564', '{}'),
(445, 'user_helmet', 'steam:11000013c4e461d', '{}'),
(446, 'user_mask', 'steam:11000013c4e461d', '{}'),
(447, 'user_ears', 'steam:11000013c4e461d', '{}'),
(448, 'user_glasses', 'steam:11000013c4e461d', '{}'),
(449, 'property', 'steam:11000013c4e461d', '{}'),
(450, 'property', 'steam:1100001159d386a', '{}'),
(451, 'user_glasses', 'steam:110000134ff4fcb', '{}'),
(452, 'user_ears', 'steam:110000134ff4fcb', '{}'),
(453, 'user_helmet', 'steam:110000134ff4fcb', '{}'),
(454, 'user_mask', 'steam:110000134ff4fcb', '{}'),
(455, 'property', 'steam:110000134ff4fcb', '{}'),
(456, 'user_ears', 'steam:11000013d10eaf3', '{}'),
(457, 'user_helmet', 'steam:11000013d10eaf3', '{}'),
(458, 'user_mask', 'steam:11000013d10eaf3', '{}'),
(459, 'user_glasses', 'steam:11000013d10eaf3', '{}'),
(460, 'property', 'steam:11000013d10eaf3', '{}'),
(461, 'user_helmet', 'steam:11000010e07911b', '{}'),
(462, 'user_mask', 'steam:11000010e07911b', '{}'),
(463, 'user_glasses', 'steam:11000010e07911b', '{}'),
(464, 'user_ears', 'steam:11000010e07911b', '{}'),
(465, 'property', 'steam:11000010e07911b', '{}'),
(466, 'user_mask', 'steam:110000114f8112e', '{}'),
(467, 'user_ears', 'steam:110000114f8112e', '{}'),
(468, 'user_glasses', 'steam:110000114f8112e', '{}'),
(469, 'user_helmet', 'steam:110000114f8112e', '{}'),
(470, 'property', 'steam:110000114f8112e', '{}'),
(471, 'user_mask', 'steam:110000112c9e145', '{}'),
(472, 'user_helmet', 'steam:110000112c9e145', '{}'),
(473, 'user_ears', 'steam:110000112c9e145', '{}'),
(474, 'property', 'steam:110000112c9e145', '{}'),
(475, 'user_glasses', 'steam:110000112c9e145', '{}'),
(476, 'user_glasses', 'steam:11000011c7a7b3d', '{}'),
(477, 'user_ears', 'steam:11000011c7a7b3d', '{}'),
(478, 'user_helmet', 'steam:11000011c7a7b3d', '{}'),
(479, 'user_mask', 'steam:11000011c7a7b3d', '{}'),
(480, 'property', 'steam:11000011c7a7b3d', '{}'),
(481, 'user_ears', 'steam:1100001347a8d60', '{}'),
(482, 'user_helmet', 'steam:1100001347a8d60', '{}'),
(483, 'user_glasses', 'steam:1100001347a8d60', '{}'),
(484, 'user_mask', 'steam:1100001347a8d60', '{}'),
(485, 'property', 'steam:1100001347a8d60', '{}'),
(486, 'society_armurier', NULL, '{}'),
(487, 'society_armurier_coffre', NULL, '{}'),
(488, 'property', 'steam:110000104cb13a5', '{}'),
(489, 'user_ears', 'steam:11000013b874936', '{}'),
(490, 'user_helmet', 'steam:11000013b874936', '{}'),
(491, 'property', 'steam:11000013b874936', '{}'),
(492, 'user_mask', 'steam:11000013b874936', '{}'),
(493, 'user_glasses', 'steam:11000013b874936', '{}'),
(494, 'user_glasses', 'steam:110000119770d69', '{}'),
(495, 'user_helmet', 'steam:110000119770d69', '{}'),
(496, 'user_mask', 'steam:110000119770d69', '{}'),
(497, 'user_ears', 'steam:110000119770d69', '{}'),
(498, 'property', 'steam:110000119770d69', '{}'),
(499, 'user_helmet', 'steam:110000112dbbe61', '{}'),
(500, 'user_ears', 'steam:110000112dbbe61', '{}'),
(501, 'user_glasses', 'steam:110000112dbbe61', '{}'),
(502, 'user_mask', 'steam:110000112dbbe61', '{}'),
(503, 'property', 'steam:110000112dbbe61', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Non-port du casque ou casque non homologué', 200, 0),
(2, 'Stationnement gênant ou interdit ', 200, 0),
(3, 'Stop ou feu grillé', 200, 0),
(4, 'Conduite dangereuse', 500, 0),
(5, 'Conduite en état d’ébriété ', 700, 0),
(6, 'Excès de vitesse inférieur à 10km/h ', 100, 0),
(7, 'Excès de vitesse inférieur à 20km/h', 200, 0),
(8, 'Excès de vitesse inférieur à 30km/h', 450, 0),
(9, 'Excès de vitesse supérieur à 30km/h', 700, 0),
(10, 'Marche arrière ou demi-tour (interdit) ', 350, 0),
(11, 'Conduite en contre sens ', 750, 0),
(13, 'Wheeling', 200, 0),
(14, 'Franchissement d’une ligne continu ', 100, 0),
(15, 'Interfile / dépassement par la droite ', 100, 0),
(16, 'Non-respect des signalisations au sol ', 150, 0),
(19, 'Rappel à la loi simple ', 150, 1),
(20, 'Insulte / outrage à agent ', 200, 1),
(21, 'Agression / Menaces verbale ', 250, 1),
(22, 'Atteinte à la pudeur ', 300, 1),
(23, 'Harcèlement', 200, 1),
(24, 'Agression physique ', 450, 1),
(26, 'Non-respect du code de l’aviation ', 1000, 1),
(27, 'Appel abusif des services d’urgence ', 200, 1),
(28, 'Refus d’obtempérer ', 1000, 1),
(29, 'Présence piétonne sur autoroute ', 200, 1),
(30, 'Possession de stupéfiants <50 grammes', 3000, 1),
(31, 'Bagarre et blessure volontaire sur civil', 500, 1),
(32, 'Rappel à la loi grave', 1000, 1),
(33, 'Mise en danger de la vie d’autrui ', 500, 1),
(34, 'Dégradation de bien d’autrui ', 500, 1),
(35, 'Petit Racket ', 1000, 1);

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '-1',
  `rare` int(11) NOT NULL DEFAULT '0',
  `can_remove` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('absinthe', 'Bouteille Absinthe', 5, 0, 1),
('alive_chicken', 'Poulet vivant', 20, 0, 1),
('bandage', 'Bandage', 20, 0, 1),
('ble', 'Blé', 20, 0, 1),
('blowpipe', 'Chalumeaux', 15, 0, 1),
('bread', 'Pain', 40, 0, 1),
('canette_biere', 'Canette de bière', 20, 0, 1),
('carokit', 'Kit carosserie', 3, 0, 1),
('champagne', 'Bouteille de Champagne', 10, 0, 1),
('chips', 'Paquet de Chips', 5, 0, 1),
('chocolate', 'Barre de Chocolat', 10, 0, 1),
('clip', 'Chargeur', -1, 0, 1),
('clothe', 'Vêtement', 40, 0, 1),
('cocacola', 'Canette de Coca-Cola', 15, 0, 1),
('coffe', 'Café', 15, 0, 1),
('coke', 'Coke', -1, 0, 1),
('coke_pooch', 'Pochon de coke', -1, 0, 1),
('contract', 'Contrat Véhicule', 5, 0, 1),
('coyotte', 'Coyotte', 1, 0, 1),
('croquettes', 'Croquettes', 20, 0, 1),
('cupcake', 'Cupcake', 15, 0, 1),
('cutted_wood', 'Bois coupé', 20, 0, 1),
('donut', 'Donuts', 10, 0, 1),
('douille', 'Douille', -1, 0, 1),
('drill', 'Foreuse', 5, 0, 1),
('etui', 'Coque WaterProof', 5, 0, 1),
('fabric', 'Tissu', 80, 0, 1),
('farine', 'Farine', 20, 0, 1),
('fish', 'Poisson', 100, 0, 1),
('fixkit', 'Kit réparation', 5, 0, 1),
('flashlight', 'Lampe', -1, 0, 1),
('gintonic', 'Gin Tonic', 5, 0, 1),
('gitanes', 'Gitane', -1, 0, 1),
('grand_cru', 'Grand cru', -1, 0, 1),
('grip', 'Poignée', -1, 0, 1),
('gym_membership', 'Abonnement Musculation', -1, 0, 1),
('hamburger', 'Hamburger', 15, 0, 1),
('jumelles', 'Jumelles', 1, 0, 1),
('jus_raisin', 'Jus de raisin', -1, 0, 1),
('licence1', 'Licence 1', 1, 0, 1),
('licence2', 'Licence 2', 1, 0, 1),
('licence3', 'Licence 3', 1, 0, 1),
('lom', 'Pied de Biche', 5, 0, 1),
('malbora', 'Malboro', -1, 0, 1),
('malt', 'Malt', 20, 0, 1),
('medikit', 'Medikit', 5, 0, 1),
('meth', 'Meth', -1, 0, 1),
('meth_pooch', 'Pochon de meth', -1, 0, 1),
('milk', 'Lait', 15, 0, 1),
('mleko', 'Lait ', 50, 0, 1),
('opium', 'Opium', -1, 0, 1),
('opium_pooch', 'Pochon de opium', -1, 0, 1),
('packaged_chicken', 'Poulet en barquette', 100, 0, 1),
('packaged_plank', 'Paquet de planches', 100, 0, 1),
('phone', 'Téléphone', 5, 0, 1),
('pizza', 'Pizza', -1, 0, 1),
('poudre', 'Poudre', -1, 0, 1),
('powerade', 'Powerade', -1, 0, 1),
('protein_shake', 'Protein Shake', -1, 0, 1),
('raisin', 'Raisin', -1, 0, 1),
('sandwich', 'Sandwich', 15, 0, 1),
('silencieux', 'Silencieux', -1, 0, 1),
('sim', 'Carte Sim', 20, 0, 1),
('slaughtered_chicken', 'Poulet abattu', 20, 0, 1),
('splif', 'Splif', -1, 0, 1),
('sportlunch', 'Déjeuner Sportif', -1, 0, 1),
('sprunk', 'Canette de Sprunk', 15, 0, 1),
('tabacblond', 'Tabac Blond', -1, 0, 1),
('tabacblondsec', 'Tabac Blond Séché', -1, 0, 1),
('tabacbrun', 'Tabac Brun', -1, 0, 1),
('tabacbrunsec', 'Tabac Brun Séché', -1, 0, 1),
('tequila', 'Bouteille de Tequila', 15, 0, 1),
('vine', 'Bouteille de Vin', 15, 0, 1),
('vodka', 'Bouteille de Vodka', 15, 0, 1),
('water', 'Bouteille d\'eau', 40, 0, 1),
('weed', 'Weed', -1, 0, 1),
('weed_pooch', 'Pochon de weed', -1, 0, 1),
('whisky', 'Bouteille de Whisky', 15, 0, 1),
('wood', 'Bois', 20, 0, 1),
('wool', 'Laine', 40, 0, 1),
('yusuf', 'Skin de luxe', -1, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `jail`
--

CREATE TABLE `jail` (
  `identifier` varchar(100) NOT NULL,
  `jail_time` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ambulance', 'EMS', 1),
('ammu', 'Ammunation', 1),
('armurier', 'Armurier', 1),
('avocat', 'Avocat', 1),
('bahama', 'The Palace', 1),
('boatdealer', 'Marina', 0),
('brewer', 'Brasseur', 0),
('cardealer', 'BR Motorsport', 1),
('fermier', 'Fermier', 0),
('fisherman', 'Pêcheur', 0),
('journaliste', 'Weazel News', 1),
('lumberjack', 'Bûcheron', 0),
('mecano', 'BR Performance', 1),
('police', 'LSPD', 1),
('realestateagent', 'Sun\'Immo', 1),
('security', 'SunLand Securite', 1),
('slaughterer', 'Abatteur', 0),
('state', 'Mairie', 1),
('tabac', 'Tabac & Co', 1),
('tailor', 'Couturier', 0),
('taxi', 'Downtown Cab Co', 1),
('unemployed', 'Sans-Emploi', 0),
('unicorn', 'Unicorn', 1),
('vigne', 'The Mighty Bush', 1);

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', '', 50, '{}', '{}'),
(2, 'lumberjack', 0, 'employee', 'Intérimaire', 100, '{\"bags_1\":0,\"decals_2\":0,\"makeup_1\":0,\"bproof_1\":0,\"sex\":0,\"age_2\":0,\"lipstick_4\":0,\"torso_2\":3,\"eyebrows_1\":0,\"decals_1\":0,\"makeup_4\":0,\"shoes_1\":54,\"age_1\":0,\"hair_color_2\":4,\"pants_2\":0,\"hair_color_1\":0,\"helmet_2\":0,\"hair_2\":0,\"beard_3\":0,\"shoes\":1,\"pants_1\":63,\"skin\":29,\"makeup_2\":0,\"lipstick_2\":0,\"glasses_2\":1,\"shoes_2\":0,\"torso_1\":241,\"ears_2\":0,\"glasses_1\":23,\"chain_2\":0,\"eyebrows_4\":0,\"chain_1\":0,\"bproof_2\":0,\"face\":19,\"tshirt_2\":1,\"ears_1\":-1,\"eyebrows_3\":0,\"helmet_1\":0,\"glasses\":0,\"mask_2\":0,\"arms\":51,\"bags_2\":0,\"makeup_3\":0,\"lipstick_1\":0,\"beard_1\":5,\"lipstick_3\":0,\"beard_2\":6,\"beard_4\":0,\"mask_1\":0,\"eyebrows_2\":0,\"hair_1\":7,\"tshirt_1\":59}', '{\"beard_1\":5,\"pants_2\":4,\"eyebrows_3\":0,\"eyebrows_2\":0,\"lipstick_4\":0,\"shoes\":1,\"helmet_2\":0,\"makeup_2\":0,\"mask_2\":0,\"lipstick_3\":0,\"arms\":55,\"eyebrows_1\":0,\"age_2\":0,\"beard_3\":0,\"chain_1\":0,\"glasses_1\":25,\"decals_1\":0,\"torso_1\":226,\"eyebrows_4\":0,\"mask_1\":0,\"pants_1\":30,\"helmet_1\":0,\"makeup_1\":0,\"bproof_2\":0,\"ears_2\":0,\"sex\":1,\"makeup_3\":0,\"lipstick_2\":0,\"torso_2\":5,\"hair_2\":0,\"chain_2\":0,\"age_1\":0,\"skin\":29,\"tshirt_1\":36,\"hair_color_2\":4,\"glasses\":0,\"bproof_1\":0,\"bags_1\":0,\"bags_2\":0,\"makeup_4\":0,\"ears_1\":-1,\"face\":19,\"glasses_2\":1,\"shoes_1\":25,\"shoes_2\":0,\"decals_2\":0,\"hair_1\":10,\"beard_2\":0,\"tshirt_2\":0,\"hair_color_1\":0,\"lipstick_1\":0,\"beard_4\":0}'),
(3, 'fisherman', 0, 'employee', 'Intérimaire', 100, '{\"age_1\":0,\"beard_4\":0,\"pants_1\":47,\"hair_2\":0,\"beard_2\":6,\"lipstick_1\":0,\"eyebrows_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"makeup_4\":0,\"bags_1\":0,\"shoes\":1,\"shoes_1\":12,\"eyebrows_2\":0,\"glasses_1\":0,\"lipstick_3\":0,\"shoes_2\":2,\"face\":19,\"mask_2\":0,\"mask_1\":0,\"eyebrows_1\":0,\"bags_2\":0,\"pants_2\":1,\"makeup_3\":0,\"chain_2\":0,\"torso_2\":0,\"glasses_2\":0,\"bproof_1\":0,\"age_2\":0,\"tshirt_1\":0,\"sex\":0,\"torso_1\":233,\"bproof_2\":0,\"hair_color_2\":4,\"ears_1\":-1,\"decals_2\":0,\"lipstick_4\":0,\"decals_1\":0,\"beard_1\":5,\"chain_1\":0,\"helmet_2\":0,\"makeup_1\":0,\"eyebrows_4\":0,\"skin\":29,\"ears_2\":0,\"tshirt_2\":5,\"arms\":70,\"helmet_1\":20,\"lipstick_2\":0,\"beard_3\":0,\"glasses\":0,\"makeup_2\":0}', '{\"eyebrows_1\":0,\"shoes\":1,\"glasses_1\":5,\"torso_2\":1,\"lipstick_3\":0,\"eyebrows_4\":0,\"chain_1\":0,\"eyebrows_3\":0,\"ears_1\":-1,\"helmet_2\":0,\"tshirt_2\":0,\"makeup_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"lipstick_4\":0,\"skin\":29,\"arms\":72,\"eyebrows_2\":0,\"beard_2\":6,\"beard_4\":0,\"bproof_2\":0,\"chain_2\":0,\"mask_2\":0,\"ears_2\":0,\"beard_1\":5,\"hair_2\":0,\"tshirt_1\":5,\"glasses_2\":0,\"bags_2\":0,\"shoes_2\":2,\"pants_2\":1,\"hair_color_1\":0,\"mask_1\":0,\"hair_color_2\":4,\"hair_1\":5,\"makeup_3\":0,\"shoes_1\":52,\"pants_1\":49,\"beard_3\":0,\"lipstick_1\":0,\"bags_1\":0,\"makeup_4\":0,\"bproof_1\":0,\"age_1\":0,\"helmet_1\":-1,\"glasses\":0,\"sex\":1,\"decals_1\":0,\"makeup_1\":0,\"age_2\":0,\"face\":19,\"torso_1\":227}'),
(4, 'brewer', 0, 'employee', 'Intérimaire', 100, '{\"lipstick_3\":0,\"makeup_4\":0,\"age_2\":0,\"bproof_2\":0,\"sex\":0,\"ears_2\":0,\"torso_1\":215,\"torso_2\":19,\"eyebrows_1\":0,\"age_1\":0,\"eyebrows_2\":0,\"bags_2\":0,\"beard_4\":0,\"makeup_3\":0,\"chain_1\":0,\"lipstick_4\":0,\"mask_2\":0,\"bproof_1\":0,\"tshirt_2\":0,\"helmet_2\":0,\"beard_3\":0,\"arms\":96,\"hair_color_2\":0,\"helmet_1\":-1,\"hair_2\":0,\"shoes\":1,\"mask_1\":0,\"eyebrows_3\":0,\"decals_1\":0,\"makeup_1\":0,\"glasses\":0,\"shoes_1\":12,\"makeup_2\":0,\"eyebrows_4\":0,\"pants_2\":0,\"beard_1\":0,\"ears_1\":-1,\"glasses_2\":0,\"chain_2\":0,\"tshirt_1\":10,\"lipstick_2\":0,\"pants_1\":27,\"face\":0,\"beard_2\":0,\"hair_color_1\":0,\"skin\":0,\"decals_2\":0,\"glasses_1\":0,\"hair_1\":3,\"shoes_2\":0,\"lipstick_1\":0,\"bags_1\":0}', '{\"glasses_1\":5,\"torso_1\":219,\"eyebrows_4\":0,\"tshirt_2\":1,\"mask_2\":0,\"tshirt_1\":26,\"sex\":1,\"mask_1\":0,\"glasses_2\":0,\"eyebrows_1\":0,\"hair_2\":0,\"decals_1\":0,\"shoes_1\":26,\"eyebrows_2\":0,\"makeup_2\":0,\"glasses\":0,\"lipstick_3\":0,\"shoes_2\":0,\"hair_1\":5,\"makeup_1\":0,\"bproof_2\":0,\"bags_1\":0,\"lipstick_1\":0,\"lipstick_4\":0,\"ears_1\":-1,\"beard_3\":0,\"bags_2\":0,\"hair_color_1\":0,\"arms\":79,\"decals_2\":0,\"chain_2\":0,\"makeup_3\":0,\"pants_2\":1,\"skin\":3,\"shoes\":1,\"eyebrows_3\":0,\"pants_1\":45,\"bproof_1\":0,\"hair_color_2\":0,\"makeup_4\":0,\"face\":2,\"torso_2\":19,\"beard_2\":0,\"age_1\":0,\"age_2\":0,\"lipstick_2\":0,\"beard_1\":0,\"helmet_1\":-1,\"helmet_2\":0,\"ears_2\":0,\"chain_1\":0,\"beard_4\":0}'),
(5, 'fermier', 0, 'employee', 'Intérimaire', 100, '{\"shoes_2\":0,\"torso_1\":249,\"glasses_2\":0,\"helmet_1\":64,\"skin\":29,\"makeup_3\":0,\"lipstick_3\":0,\"beard_2\":6,\"decals_2\":0,\"hair_1\":2,\"age_2\":0,\"lipstick_2\":0,\"makeup_2\":0,\"lipstick_1\":0,\"sex\":0,\"eyebrows_1\":0,\"glasses_1\":0,\"eyebrows_3\":0,\"bproof_2\":0,\"tshirt_1\":71,\"eyebrows_2\":0,\"chain_2\":0,\"age_1\":0,\"face\":19,\"arms\":70,\"mask_2\":0,\"mask_1\":0,\"ears_1\":-1,\"hair_2\":0,\"shoes_1\":12,\"ears_2\":0,\"bags_1\":0,\"bproof_1\":0,\"tshirt_2\":4,\"makeup_4\":0,\"hair_color_1\":0,\"pants_1\":47,\"glasses\":0,\"shoes\":1,\"hair_color_2\":4,\"pants_2\":1,\"torso_2\":1,\"bags_2\":0,\"beard_4\":0,\"lipstick_4\":0,\"chain_1\":0,\"makeup_1\":0,\"helmet_2\":7,\"beard_3\":0,\"beard_1\":5,\"decals_1\":0,\"eyebrows_4\":0}', '{\"age_2\":0,\"makeup_3\":0,\"tshirt_2\":0,\"ears_2\":0,\"tshirt_1\":19,\"makeup_4\":0,\"eyebrows_2\":0,\"chain_2\":0,\"hair_2\":0,\"shoes\":1,\"bproof_2\":0,\"decals_1\":0,\"bags_1\":0,\"lipstick_4\":0,\"helmet_2\":4,\"ears_1\":-1,\"mask_1\":0,\"hair_color_2\":0,\"beard_3\":0,\"glasses_2\":0,\"skin\":3,\"decals_2\":0,\"pants_1\":45,\"helmet_1\":22,\"glasses_1\":5,\"lipstick_2\":0,\"makeup_2\":0,\"beard_1\":0,\"hair_color_1\":0,\"bags_2\":0,\"lipstick_1\":0,\"eyebrows_3\":0,\"bproof_1\":0,\"sex\":1,\"beard_4\":0,\"hair_1\":5,\"mask_2\":0,\"torso_1\":258,\"shoes_2\":3,\"beard_2\":0,\"glasses\":0,\"shoes_1\":10,\"face\":2,\"eyebrows_4\":0,\"pants_2\":0,\"arms\":74,\"lipstick_3\":0,\"makeup_1\":0,\"chain_1\":0,\"torso_2\":1,\"age_1\":0,\"eyebrows_1\":0}'),
(6, 'tailor', 0, 'employee', 'Intérimaire', 100, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(7, 'slaughterer', 0, 'employee', 'Intérimaire', 100, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(8, 'realestateagent', 0, 'location', 'Recrue', 300, '{}', '{}'),
(9, 'realestateagent', 1, 'vendeur', 'Novice', 400, '{}', '{}'),
(10, 'realestateagent', 2, 'gestion', 'Expérimenté', 900, '{}', '{}'),
(11, 'realestateagent', 3, 'boss', 'PDG', 1300, '{}', '{}'),
(12, 'cardealer', 0, 'recruit', 'Recrue', 400, '{}', '{}'),
(13, 'cardealer', 1, 'novice', 'Novice', 500, '{}', '{}'),
(14, 'cardealer', 2, 'experienced', 'Expérimenté', 600, '{}', '{}'),
(15, 'cardealer', 3, 'boss', 'PDG', 700, '{}', '{}'),
(16, 'ambulance', 0, 'ambulance', 'Ambulancier', 1000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"shoes_2\":1,\"bproof_2\":0,\"eyebrows_1\":0,\"chain_2\":0,\"hair_1\":0,\"beard_1\":0,\"sex\":1,\"eyebrows_4\":0,\"decals_1\":0,\"age_1\":0,\"ears_1\":-1,\"bags_1\":0,\"bags_2\":0,\"shoes\":1,\"face\":0,\"chain_1\":96,\"hair_2\":0,\"age_2\":0,\"mask_2\":0,\"makeup_3\":0,\"lipstick_4\":0,\"pants_2\":5,\"helmet_1\":57,\"glasses\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"beard_4\":0,\"ears_2\":0,\"tshirt_1\":10,\"makeup_1\":0,\"torso_1\":250,\"glasses_1\":19,\"mask_1\":0,\"bproof_1\":0,\"glasses_2\":0,\"beard_2\":0,\"eyebrows_3\":0,\"eyebrows_2\":0,\"decals_2\":0,\"skin\":0,\"helmet_2\":0,\"makeup_4\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"pants_1\":37,\"beard_3\":0,\"hair_color_1\":0,\"arms\":98,\"tshirt_2\":0,\"shoes_1\":3,\"torso_2\":1,\"makeup_2\":0}'),
(17, 'ambulance', 1, 'doctor', 'Medecin', 1200, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"shoes_2\":1,\"bproof_2\":0,\"eyebrows_1\":0,\"chain_2\":0,\"hair_1\":0,\"beard_1\":0,\"sex\":1,\"eyebrows_4\":0,\"decals_1\":0,\"age_1\":0,\"ears_1\":-1,\"bags_1\":0,\"bags_2\":0,\"shoes\":1,\"face\":0,\"chain_1\":96,\"hair_2\":0,\"age_2\":0,\"mask_2\":0,\"makeup_3\":0,\"lipstick_4\":0,\"pants_2\":5,\"helmet_1\":57,\"glasses\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"beard_4\":0,\"ears_2\":0,\"tshirt_1\":10,\"makeup_1\":0,\"torso_1\":250,\"glasses_1\":19,\"mask_1\":0,\"bproof_1\":0,\"glasses_2\":0,\"beard_2\":0,\"eyebrows_3\":0,\"eyebrows_2\":0,\"decals_2\":0,\"skin\":0,\"helmet_2\":0,\"makeup_4\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"pants_1\":37,\"beard_3\":0,\"hair_color_1\":0,\"arms\":98,\"tshirt_2\":0,\"shoes_1\":3,\"torso_2\":1,\"makeup_2\":0}'),
(18, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 1400, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"shoes_2\":1,\"bproof_2\":0,\"eyebrows_1\":0,\"chain_2\":0,\"hair_1\":0,\"beard_1\":0,\"sex\":1,\"eyebrows_4\":0,\"decals_1\":0,\"age_1\":0,\"ears_1\":-1,\"bags_1\":0,\"bags_2\":0,\"shoes\":1,\"face\":0,\"chain_1\":96,\"hair_2\":0,\"age_2\":0,\"mask_2\":0,\"makeup_3\":0,\"lipstick_4\":0,\"pants_2\":5,\"helmet_1\":57,\"glasses\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"beard_4\":0,\"ears_2\":0,\"tshirt_1\":10,\"makeup_1\":0,\"torso_1\":250,\"glasses_1\":19,\"mask_1\":0,\"bproof_1\":0,\"glasses_2\":0,\"beard_2\":0,\"eyebrows_3\":0,\"eyebrows_2\":0,\"decals_2\":0,\"skin\":0,\"helmet_2\":0,\"makeup_4\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"pants_1\":37,\"beard_3\":0,\"hair_color_1\":0,\"arms\":98,\"tshirt_2\":0,\"shoes_1\":3,\"torso_2\":1,\"makeup_2\":0}'),
(19, 'ambulance', 3, 'boss', 'Chirurgien', 1700, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"shoes_2\":1,\"bproof_2\":0,\"eyebrows_1\":0,\"chain_2\":0,\"hair_1\":0,\"beard_1\":0,\"sex\":1,\"eyebrows_4\":0,\"decals_1\":0,\"age_1\":0,\"ears_1\":-1,\"bags_1\":0,\"bags_2\":0,\"shoes\":1,\"face\":0,\"chain_1\":96,\"hair_2\":0,\"age_2\":0,\"mask_2\":0,\"makeup_3\":0,\"lipstick_4\":0,\"pants_2\":5,\"helmet_1\":57,\"glasses\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"beard_4\":0,\"ears_2\":0,\"tshirt_1\":10,\"makeup_1\":0,\"torso_1\":250,\"glasses_1\":19,\"mask_1\":0,\"bproof_1\":0,\"glasses_2\":0,\"beard_2\":0,\"eyebrows_3\":0,\"eyebrows_2\":0,\"decals_2\":0,\"skin\":0,\"helmet_2\":0,\"makeup_4\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"pants_1\":37,\"beard_3\":0,\"hair_color_1\":0,\"arms\":98,\"tshirt_2\":0,\"shoes_1\":3,\"torso_2\":1,\"makeup_2\":0}'),
(25, 'security', 0, 'soldato', 'Stagiaire', 800, '{\"tshirt_2\":0,\"hair_color_1\":0,\"glasses_2\":0,\"shoes\":25,\"torso_2\":0,\"hair_color_2\":8,\"pants_1\":33,\"glasses_1\":0,\"hair_1\":21,\"sex\":0,\"decals_2\":0,\"tshirt_1\":129,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":27,\"face\":0,\"decals_1\":0,\"torso_1\":50,\"hair_2\":0,\"skin\":0,\"pants_2\":0}', '{}'),
(26, 'security', 1, 'capo', 'Employé', 1300, '{\"tshirt_2\":0,\"hair_color_1\":0,\"glasses_2\":0,\"shoes\":25,\"torso_2\":0,\"hair_color_2\":8,\"pants_1\":33,\"glasses_1\":0,\"hair_1\":21,\"sex\":0,\"decals_2\":0,\"tshirt_1\":129,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":27,\"face\":0,\"decals_1\":0,\"torso_1\":50,\"hair_2\":0,\"skin\":0,\"pants_2\":0}', '{}'),
(27, 'security', 2, 'consigliere', 'Chef d equipe', 1600, '{\"tshirt_2\":0,\"hair_color_1\":0,\"glasses_2\":0,\"shoes\":25,\"torso_2\":0,\"hair_color_2\":8,\"pants_1\":33,\"glasses_1\":0,\"hair_1\":21,\"sex\":0,\"decals_2\":0,\"tshirt_1\":129,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":27,\"face\":0,\"decals_1\":0,\"torso_1\":50,\"hair_2\":0,\"skin\":0,\"pants_2\":0}', '{}'),
(28, 'security', 3, 'boss', 'PDG', 2000, '{\"tshirt_2\":0,\"hair_color_1\":0,\"glasses_2\":0,\"shoes\":25,\"torso_2\":0,\"hair_color_2\":8,\"pants_1\":33,\"glasses_1\":0,\"hair_1\":21,\"sex\":0,\"decals_2\":0,\"tshirt_1\":129,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":27,\"face\":0,\"decals_1\":0,\"torso_1\":50,\"hair_2\":0,\"skin\":0,\"pants_2\":0}', '{}'),
(44, 'mecano', 0, 'recrue', 'Recrue', 300, '{\"tshirt_2\":0,\"hair_color_1\":29,\"glasses_2\":0,\"shoes\":1,\"torso_2\":2,\"hair_color_2\":0,\"pants_1\":39,\"glasses_1\":0,\"hair_1\":3,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":17,\"face\":0,\"decals_1\":0,\"torso_1\":66,\"hair_2\":1,\"skin\":34,\"pants_2\":2}', '{\"shoes_2\":1,\"bproof_2\":0,\"eyebrows_1\":0,\"chain_2\":0,\"hair_1\":11,\"beard_1\":0,\"sex\":1,\"eyebrows_4\":0,\"decals_1\":0,\"age_1\":0,\"ears_1\":-1,\"bags_1\":0,\"bags_2\":0,\"shoes\":1,\"face\":0,\"chain_1\":0,\"hair_2\":4,\"age_2\":0,\"mask_2\":0,\"makeup_3\":0,\"lipstick_4\":0,\"pants_2\":2,\"helmet_1\":-1,\"glasses\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"beard_4\":0,\"ears_2\":0,\"tshirt_1\":14,\"makeup_1\":0,\"torso_1\":60\"glasses_1\":5,\"mask_1\":0,\"bproof_1\":0,\"glasses_2\":0,\"beard_2\":0,\"eyebrows_3\":0,\"eyebrows_2\":0,\"decals_2\":0,\"skin\":0,\"helmet_2\":0,\"makeup_4\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"pants_1\":39,\"beard_3\":0,\"hair_color_1\":0,\"arms\":18,\"tshirt_2\":0,\"shoes_1\":33,\"torso_2\":2,\"makeup_2\":0}'),
(45, 'mecano', 1, 'novice', 'Novice', 400, '{\"tshirt_2\":0,\"hair_color_1\":29,\"glasses_2\":0,\"shoes\":1,\"torso_2\":2,\"hair_color_2\":0,\"pants_1\":39,\"glasses_1\":0,\"hair_1\":3,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":17,\"face\":0,\"decals_1\":0,\"torso_1\":66,\"hair_2\":1,\"skin\":34,\"pants_2\":2}', '{\"shoes_2\":1,\"bproof_2\":0,\"eyebrows_1\":0,\"chain_2\":0,\"hair_1\":11,\"beard_1\":0,\"sex\":1,\"eyebrows_4\":0,\"decals_1\":0,\"age_1\":0,\"ears_1\":-1,\"bags_1\":0,\"bags_2\":0,\"shoes\":1,\"face\":0,\"chain_1\":0,\"hair_2\":4,\"age_2\":0,\"mask_2\":0,\"makeup_3\":0,\"lipstick_4\":0,\"pants_2\":2,\"helmet_1\":-1,\"glasses\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"beard_4\":0,\"ears_2\":0,\"tshirt_1\":14,\"makeup_1\":0,\"torso_1\":60\"glasses_1\":5,\"mask_1\":0,\"bproof_1\":0,\"glasses_2\":0,\"beard_2\":0,\"eyebrows_3\":0,\"eyebrows_2\":0,\"decals_2\":0,\"skin\":0,\"helmet_2\":0,\"makeup_4\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"pants_1\":39,\"beard_3\":0,\"hair_color_1\":0,\"arms\":18,\"tshirt_2\":0,\"shoes_1\":33,\"torso_2\":2,\"makeup_2\":0}'),
(46, 'mecano', 2, 'experimente', 'Experimente', 450, '{\"tshirt_2\":0,\"hair_color_1\":29,\"glasses_2\":0,\"shoes\":1,\"torso_2\":2,\"hair_color_2\":0,\"pants_1\":39,\"glasses_1\":0,\"hair_1\":3,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":17,\"face\":0,\"decals_1\":0,\"torso_1\":66,\"hair_2\":1,\"skin\":34,\"pants_2\":2}', '{\"shoes_2\":1,\"bproof_2\":0,\"eyebrows_1\":0,\"chain_2\":0,\"hair_1\":11,\"beard_1\":0,\"sex\":1,\"eyebrows_4\":0,\"decals_1\":0,\"age_1\":0,\"ears_1\":-1,\"bags_1\":0,\"bags_2\":0,\"shoes\":1,\"face\":0,\"chain_1\":0,\"hair_2\":4,\"age_2\":0,\"mask_2\":0,\"makeup_3\":0,\"lipstick_4\":0,\"pants_2\":2,\"helmet_1\":-1,\"glasses\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"beard_4\":0,\"ears_2\":0,\"tshirt_1\":14,\"makeup_1\":0,\"torso_1\":60\"glasses_1\":5,\"mask_1\":0,\"bproof_1\":0,\"glasses_2\":0,\"beard_2\":0,\"eyebrows_3\":0,\"eyebrows_2\":0,\"decals_2\":0,\"skin\":0,\"helmet_2\":0,\"makeup_4\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"pants_1\":39,\"beard_3\":0,\"hair_color_1\":0,\"arms\":18,\"tshirt_2\":0,\"shoes_1\":33,\"torso_2\":2,\"makeup_2\":0}'),
(47, 'mecano', 3, 'chief', 'Chef d\'équipe', 550, '{\"tshirt_2\":0,\"hair_color_1\":29,\"glasses_2\":0,\"shoes\":1,\"torso_2\":1,\"hair_color_2\":0,\"pants_1\":39,\"glasses_1\":0,\"hair_1\":3,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":17,\"face\":0,\"decals_1\":0,\"torso_1\":66,\"hair_2\":1,\"skin\":34,\"pants_2\":1}', '{\"shoes_2\":1,\"bproof_2\":0,\"eyebrows_1\":0,\"chain_2\":0,\"hair_1\":11,\"beard_1\":0,\"sex\":1,\"eyebrows_4\":0,\"decals_1\":0,\"age_1\":0,\"ears_1\":-1,\"bags_1\":0,\"bags_2\":0,\"shoes\":1,\"face\":0,\"chain_1\":0,\"hair_2\":4,\"age_2\":0,\"mask_2\":0,\"makeup_3\":0,\"lipstick_4\":0,\"pants_2\":1,\"helmet_1\":-1,\"glasses\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"beard_4\":0,\"ears_2\":0,\"tshirt_1\":15,\"makeup_1\":0,\"torso_1\":60\"glasses_1\":5,\"mask_1\":0,\"bproof_1\":0,\"glasses_2\":0,\"beard_2\":0,\"eyebrows_3\":0,\"eyebrows_2\":0,\"decals_2\":0,\"skin\":0,\"helmet_2\":0,\"makeup_4\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"pants_1\":39,\"beard_3\":0,\"hair_color_1\":0,\"arms\":18,\"tshirt_2\":0,\"shoes_1\":33,\"torso_2\":1,\"makeup_2\":0}'),
(48, 'mecano', 4, 'boss', 'PDG', 650, '{\"tshirt_2\":0,\"hair_color_1\":29,\"glasses_2\":0,\"shoes\":1,\"torso_2\":0,\"hair_color_2\":0,\"pants_1\":39,\"glasses_1\":0,\"hair_1\":3,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":17,\"face\":0,\"decals_1\":0,\"torso_1\":66,\"hair_2\":1,\"skin\":34,\"pants_2\":0}', '{\"shoes_2\":0,\"bproof_2\":0,\"eyebrows_1\":0,\"chain_2\":0,\"hair_1\":11,\"beard_1\":0,\"sex\":1,\"eyebrows_4\":0,\"decals_1\":0,\"age_1\":0,\"ears_1\":-1,\"bags_1\":0,\"bags_2\":0,\"shoes\":1,\"face\":0,\"chain_1\":0,\"hair_2\":4,\"age_2\":0,\"mask_2\":0,\"makeup_3\":0,\"lipstick_4\":0,\"pants_2\":0,\"helmet_1\":-1,\"glasses\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"beard_4\":0,\"ears_2\":0,\"tshirt_1\":10,\"makeup_1\":0,\"torso_1\":60\"glasses_1\":5,\"mask_1\":0,\"bproof_1\":0,\"glasses_2\":0,\"beard_2\":0,\"eyebrows_3\":0,\"eyebrows_2\":0,\"decals_2\":0,\"skin\":0,\"helmet_2\":0,\"makeup_4\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"pants_1\":39,\"beard_3\":0,\"hair_color_1\":0,\"arms\":18,\"tshirt_2\":0,\"shoes_1\":4,\"torso_2\":0,\"makeup_2\":0}'),
(49, 'avocat', 0, 'recruit', 'Recrue', 1000, '{\"tshirt_1\":57,\"torso_1\":55,\"arms\":0,\"pants_1\":35,\"glasses\":0,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":5,\"face\":19,\"glasses_2\":1,\"torso_2\":0,\"shoes\":24,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":8}', '{\"tshirt_1\":34,\"torso_1\":48,\"shoes\":24,\"pants_1\":34,\"torso_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"glasses\":0,\"helmet_2\":0,\"hair_2\":3,\"face\":21,\"decals_1\":0,\"glasses_2\":1,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"pants_2\":0,\"arms\":14,\"hair_color_1\":10,\"tshirt_2\":0,\"helmet_1\":57}'),
(50, 'avocat', 1, 'boss', 'PDG', 1200, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":41,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":8,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(51, 'journaliste', 0, 'stagiaire', 'Stagiaire', 1000, '{}', '{}'),
(52, 'journaliste', 1, 'reporter', 'Reporter', 1200, '{}', '{}'),
(53, 'journaliste', 2, 'investigator', 'Enquêteur', 1400, '{}', '{}'),
(54, 'journaliste', 3, 'boss', 'PDG', 1600, '{}', '{}'),
(60, 'police', 0, 'recruit', 'Cadet', 1200, '{}', '{}'),
(61, 'police', 1, 'officer', 'Officier', 1300, '{}', '{}'),
(62, 'police', 2, 'sergeant', 'Sergent', 1500, '{}', '{}'),
(63, 'police', 3, 'lieutenant', 'Lieutenant', 1800, '{}', '{}'),
(64, 'police', 4, 'boss', 'Commandant', 2200, '{}', '{}'),
(65, 'vigne', 0, 'recrue', 'Intérimaire', 300, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(66, 'vigne', 1, 'novice', 'Experimenté', 400, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(67, 'vigne', 2, 'cdisenior', 'Chef de chai', 500, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(68, 'vigne', 3, 'boss', 'PDG', 600, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(79, 'taxi', 0, 'recrue', 'Recrue', 600, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(80, 'taxi', 1, 'novice', 'Novice', 700, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(81, 'taxi', 2, 'experimente', 'Experimente', 800, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(82, 'taxi', 3, 'uber', 'CO-PDG', 850, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(83, 'taxi', 4, 'boss', 'PDG', 1000, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(84, 'tabac', 0, 'recrue', 'Tabagiste', 400, '{}', '{}'),
(85, 'tabac', 1, 'gerant', 'Novice', 500, '{}', '{}'),
(86, 'tabac', 2, 'boss', 'PDG', 600, '{}', '{}'),
(87, 'ammu', 0, 'soldato', 'Stagiaire', 400, '{}', '{}'),
(88, 'ammu', 1, 'capo', 'Apprenti', 500, '{}', '{}'),
(89, 'ammu', 2, 'consigliere', 'Employé', 550, '{}', '{}'),
(90, 'ammu', 3, 'righthand', 'Experimenté', 600, '{}', '{}'),
(91, 'ammu', 4, 'boss', 'PDG', 700, '{}', '{}'),
(92, 'unicorn', 0, 'barman', 'Barman', 700, '{}', '{}'),
(93, 'unicorn', 1, 'dancer', 'Danseur', 700, '{}', '{}'),
(94, 'unicorn', 2, 'viceboss', 'CO-PDG', 900, '{}', '{}'),
(95, 'unicorn', 3, 'boss', 'PDG', 1100, '{}', '{}'),
(100, 'state', 0, 'soldato', 'Stagiaire', 400, '{}', '{}'),
(101, 'state', 1, 'capo', 'Apprenti', 450, '{}', '{}'),
(102, 'state', 2, 'consigliere', 'Secrétaire', 1500, '{}', '{}'),
(103, 'state', 3, 'righthand', 'Juge', 2000, '{}', '{}'),
(104, 'state', 4, 'boss', 'Maire', 2200, '{}', '{}'),
(105, 'ambulance', 4, 'ambulance', 'Stagiaire', 500, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"shoes_2\":1,\"bproof_2\":0,\"eyebrows_1\":0,\"chain_2\":0,\"hair_1\":0,\"beard_1\":0,\"sex\":1,\"eyebrows_4\":0,\"decals_1\":0,\"age_1\":0,\"ears_1\":-1,\"bags_1\":0,\"bags_2\":0,\"shoes\":1,\"face\":0,\"chain_1\":96,\"hair_2\":0,\"age_2\":0,\"mask_2\":0,\"makeup_3\":0,\"lipstick_4\":0,\"pants_2\":5,\"helmet_1\":57,\"glasses\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"beard_4\":0,\"ears_2\":0,\"tshirt_1\":10,\"makeup_1\":0,\"torso_1\":250,\"glasses_1\":19,\"mask_1\":0,\"bproof_1\":0,\"glasses_2\":0,\"beard_2\":0,\"eyebrows_3\":0,\"eyebrows_2\":0,\"decals_2\":0,\"skin\":0,\"helmet_2\":0,\"makeup_4\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"pants_1\":37,\"beard_3\":0,\"hair_color_1\":0,\"arms\":98,\"tshirt_2\":0,\"shoes_1\":3,\"torso_2\":1,\"makeup_2\":0}'),
(106, 'bahama', 0, 'barman', 'Barman', 700, '{}', '{}'),
(107, 'bahama', 1, 'dj', 'DJ', 700, '{}', '{}'),
(108, 'bahama', 2, 'secu', 'Sécurité', 800, '{}', '{}'),
(109, 'bahama', 3, 'viceboss', 'Co-PDG', 900, '{}', '{}'),
(110, 'bahama', 4, 'boss', 'PDG', 1100, '{}', '{}'),
(111, 'boatdealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(112, 'boatdealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(113, 'boatdealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(114, 'boatdealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(115, 'armurier', 1, 'boss', 'Patron', 60, '{}', '{}'),
(116, 'armurier', 0, 'employe', 'Employé', 30, '{}', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

CREATE TABLE `licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `licenses`
--

INSERT INTO `licenses` (`id`, `type`, `label`) VALUES
(1, 'dmv', 'Code de la route'),
(2, 'drive', 'Permis de conduire'),
(3, 'drive_bike', 'Permis moto'),
(4, 'drive_truck', 'Permis camion');

-- --------------------------------------------------------

--
-- Structure de la table `owned_boats`
--

CREATE TABLE `owned_boats` (
  `owner` varchar(30) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'State of the boat',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `owned_shops`
--

CREATE TABLE `owned_shops` (
  `identifier` varchar(250) DEFAULT NULL,
  `ShopNumber` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT '0',
  `ShopValue` int(11) DEFAULT NULL,
  `LastRobbery` int(11) DEFAULT '0',
  `ShopName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `owned_shops`
--

INSERT INTO `owned_shops` (`identifier`, `ShopNumber`, `money`, `ShopValue`, `LastRobbery`, `ShopName`) VALUES
('steam:11000011262d25d', 1, 94280, 280000, 1564275315, 'Superette Centrale'),
('0', 2, 0, 220000, 1549643682, '0'),
('0', 3, 0, 235000, 1549643682, '0'),
('0', 4, 0, 285000, 1549643682, '0'),
('0', 5, 0, 135000, 1565833004, '0'),
('0', 6, 0, 235000, 1549643682, '0'),
('0', 7, 0, 160000, 1549643682, '0'),
('0', 8, 0, 275000, 1564451379, '0'),
('0', 9, 0, 265000, 1549643682, '0'),
('steam:11000013cc3d4f7', 10, 6660, 300000, 1565913637, 'Carter city'),
('steam:11000010b509188', 12, 2218, 145000, 1565559086, 'McLight & co '),
('0', 13, 0, 145000, 1549643682, '0'),
('0', 14, 0, 280000, 1549643682, '0'),
('steam:1100001159d386a', 15, 775, 300000, 1565484154, 'Superette Moore '),
('0', 16, 0, 435000, 1549643682, '0'),
('0', 18, 0, 235000, 1549643682, '0'),
('0', 11, 0, 225000, 1549643682, '0'),
('0', 19, 0, 150000, 1565483725, '0'),
('0', 20, 0, 165000, 1549643682, '0'),
('0', 17, 0, 150000, 1549643682, '0');

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(30) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) NOT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `receiver` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `number` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `display` varchar(64) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `playerstattoos`
--

CREATE TABLE `playerstattoos` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `tattoos` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000),
(100, 'MedEndApartment1', 'Medium Apartment 1', '{\"y\":3107.56,\"z\":41.49,\"x\":240.6}', '{\"y\":-1012.27,\"z\":-100.2,\"x\":346.49}', '{\"y\":-1000.09,\"z\":-100.2,\"x\":347.06}', '{\"y\":3100.77,\"z\":41.49,\"x\":240.21}', '[]', NULL, 1, 1, 0, '{\"x\":345.3,\"y\":-995.24,\"z\":-100.2}', 500000),
(101, 'MedEndApartment2', 'Medium Apartment 2', '{\"y\":3169.1,\"z\":41.81,\"x\":246.7}', '{\"y\":-1012.27,\"z\":-100.2,\"x\":346.49}', '{\"y\":-1000.09,\"z\":-100.2,\"x\":347.06}', '{\"y\":3163.97,\"z\":41.82,\"x\":245.83}', '[]', NULL, 1, 1, 0, '{\"x\":345.3,\"y\":-995.24,\"z\":-100.2}', 500000),
(102, 'MedEndApartment3', 'Medium Apartment 3', '{\"y\":2667.22,\"z\":39.06,\"x\":980.38}', '{\"y\":-1012.27,\"z\":-100.2,\"x\":346.49}', '{\"y\":-1000.09,\"z\":-100.2,\"x\":347.06}', '{\"y\":2668.77,\"z\":39.06,\"x\":986.38}', '[]', NULL, 1, 1, 0, '{\"x\":345.3,\"y\":-995.24,\"z\":-100.2}', 500000),
(103, 'MedEndApartment4', 'Medium Apartment 4', '{\"y\":3031.08,\"z\":42.89,\"x\":195.85}', '{\"y\":-1012.27,\"z\":-100.2,\"x\":346.49}', '{\"y\":-1000.09,\"z\":-100.2,\"x\":347.06}', '{\"y\":3031.39,\"z\":42.27,\"x\":200.68}', '[]', NULL, 1, 1, 0, '{\"x\":345.3,\"y\":-995.24,\"z\":-100.2}', 500000),
(104, 'MedEndApartment5', 'Medium Apartment 5', '{\"y\":4642.17,\"z\":42.88,\"x\":1724.43}', '{\"y\":-1012.27,\"z\":-100.2,\"x\":346.49}', '{\"y\":-1000.09,\"z\":-100.2,\"x\":347.06}', '{\"y\":4637.34,\"z\":42.31,\"x\":1724.27}', '[]', NULL, 1, 1, 0, '{\"x\":345.3,\"y\":-995.24,\"z\":-100.2}', 500000),
(105, 'MedEndApartment6', 'Medium Apartment 6', '{\"y\":4739.73,\"z\":40.99,\"x\":1664.98}', '{\"y\":-1012.27,\"z\":-100.2,\"x\":346.49}', '{\"y\":-1000.09,\"z\":-100.2,\"x\":347.06}', '{\"y\":4740.93,\"z\":41.08,\"x\":1670.92}', '[]', NULL, 1, 1, 0, '{\"x\":345.3,\"y\":-995.24,\"z\":-100.2}', 500000),
(106, 'MedEndApartment7', 'Medium Apartment 7', '{\"y\":6577.19,\"z\":31.74,\"x\":12.57}', '{\"y\":-1012.27,\"z\":-100.2,\"x\":346.49}', '{\"y\":-1000.09,\"z\":-100.2,\"x\":347.06}', '{\"y\":6572.61,\"z\":31.72,\"x\":16.93}', '[]', NULL, 1, 1, 0, '{\"x\":345.3,\"y\":-995.24,\"z\":-100.2}', 500000),
(107, 'MedEndApartment8', 'Medium Apartment 8', '{\"y\":6190.84,\"z\":30.73,\"x\":-374.31}', '{\"y\":-1012.27,\"z\":-100.2,\"x\":346.49}', '{\"y\":-1000.09,\"z\":-100.2,\"x\":347.06}', '{\"y\":6186.58,\"z\":30.52,\"x\":-372.65}', '[]', NULL, 1, 1, 0, '{\"x\":345.3,\"y\":-995.24,\"z\":-100.2}', 500000),
(108, 'MedEndApartment9', 'Medium Apartment 9', '{\"y\":6597.56,\"z\":30.86,\"x\":-27.06}', '{\"y\":-1012.27,\"z\":-100.2,\"x\":346.49}', '{\"y\":-1000.09,\"z\":-100.2,\"x\":347.06}', '{\"y\":6601.55,\"z\":30.44,\"x\":-30.55}', '[]', NULL, 1, 1, 0, '{\"x\":345.3,\"y\":-995.24,\"z\":-100.2}', 500000),
(109, 'MedEndApartment10', 'Medium Apartment 10', '{\"y\":6340.1,\"z\":28.84,\"x\":-367.33}', '{\"y\":-1012.27,\"z\":-100.2,\"x\":346.49}', '{\"y\":-1000.09,\"z\":-100.2,\"x\":347.06}', '{\"y\":6336.97,\"z\":28.84,\"x\":-371.3}', '[]', NULL, 1, 1, 0, '{\"x\":345.3,\"y\":-995.24,\"z\":-100.2}', 500000);

-- --------------------------------------------------------

--
-- Structure de la table `rented_boats`
--

CREATE TABLE `rented_boats` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `shipments`
--

CREATE TABLE `shipments` (
  `id` int(11) DEFAULT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `count` varchar(50) DEFAULT NULL,
  `time` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `shipments`
--

INSERT INTO `shipments` (`id`, `identifier`, `label`, `item`, `price`, `count`, `time`) VALUES
(10, 'steam:11000013cc3d4f7', 'Jumelles', 'jumelles', '75', '10', 1565911660),
(12, 'steam:11000010b509188', 'Canette de Coca-Cola', 'cocacola', '5', '1000', 1565981460),
(12, 'steam:11000010b509188', 'Sprunk', 'sprunk', '5', '300', 1565981519);

-- --------------------------------------------------------

--
-- Structure de la table `shops`
--

CREATE TABLE `shops` (
  `ShopNumber` int(11) NOT NULL DEFAULT '0',
  `src` varchar(50) NOT NULL,
  `count` int(11) NOT NULL,
  `item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `shops`
--

INSERT INTO `shops` (`ShopNumber`, `src`, `count`, `item`, `price`, `label`) VALUES
(1, 'img/phone.png', 4, 'tel', 200, 'Téléphone'),
(1, 'img/bottle.png', 120, 'water', 10, 'Bouteille d\'eau'),
(1, 'img/cafe.png', 183, 'coffe', 7, 'Café'),
(1, 'img/cocacola.png', 467, 'cocacola', 16, 'Canette de Coca-Cola'),
(1, 'img/sprunk.png', 983, 'sprunk', 16, 'Canette de Sprunk'),
(15, 'img/cafe.png', 982, 'coffe', 7, 'Café'),
(15, 'img/lait.png', 129, 'milk', 10, 'Lait'),
(1, 'img/sim.png', 18, 'sim', 75, 'Carte Sim'),
(15, 'img/tonic.png', 28, 'gintonic', 80, 'Gin Tonic'),
(15, 'img/whisky.png', 19, 'whisky', 120, 'Bouteille de Whisky'),
(15, 'img/absinthe.png', 29, 'absinthe', 80, 'Bouteille Absinthe'),
(15, 'img/tequila.png', 49, 'tequila', 60, 'Bouteille de Tequila'),
(15, 'img/vodka.png', 20, 'vodka', 100, 'Bouteille de Vodka'),
(15, 'img/champagne.png', 45, 'champagne', 250, 'Bouteille de Champagne'),
(10, 'img/biere.png', 355, 'canette_biere', 45, 'Canette de bière'),
(10, 'img/tequila.png', 88, 'tequila', 60, 'Bouteille de Tequila'),
(10, 'img/absinthe.png', 148, 'absinthe', 80, 'Bouteille Absinthe'),
(10, 'img/vodka.png', 148, 'vodka', 100, 'Bouteille de Vodka'),
(10, 'img/champagne.png', 150, 'champagne', 250, 'Bouteille de Champagne'),
(10, 'img/whisky.png', 130, 'whisky', 120, 'Bouteille de Whisky'),
(10, 'img/tonic.png', 150, 'gintonic', 80, 'Gin Tonic'),
(10, 'img/cafe.png', 250, 'coffe', 5, 'Café'),
(10, 'img/bottle.png', 143, 'water', 4, 'Bouteille d\'eau'),
(10, 'img/sprunk.png', 374, 'sprunk', 13, 'Canette de Sprunk'),
(10, 'img/sim.png', 77, 'sim', 45, 'Carte Sim'),
(10, 'img/croq.png', 70, 'croquettes', 15, 'Croquettes'),
(10, 'img/cupcake.png', 271, 'cupcake', 11, 'Cupcake'),
(10, 'img/donuts.png', 250, 'donut', 10, 'Donuts'),
(10, 'img/chips.png', 389, 'chips', 5, 'Paquet de Chips'),
(10, 'img/lait.png', 179, 'milk', 8, 'Lait'),
(10, 'img/burger.png', 197, 'hamburger', 13, 'Hamburger'),
(10, 'img/box.png', 190, 'sportlunch', 60, 'Déjeuner Sportif'),
(10, 'img/box.png', 180, 'protein_shake', 20, 'Protein Shake'),
(10, 'img/box.png', 110, 'powerade', 20, 'Powerade'),
(12, 'img/phone.png', 4, 'tel', 135, 'Téléphone'),
(12, 'img/sim.png', 6, 'sim', 30, 'Carte Sim'),
(12, 'img/cafe.png', 789, 'coffe', 5, 'Café'),
(12, 'img/cocacola.png', 454, 'cocacola', 6, 'Canette de Coca-Cola'),
(12, 'img/burger.png', 407, 'hamburger', 6, 'Hamburger'),
(12, 'img/sandwich.png', 607, 'sandwich', 8, 'Sandwich'),
(12, 'img/sprunk.png', 117, 'sprunk', 6, 'Canette de Sprunk'),
(12, 'img/biere.png', 30, 'canette_biere', 50, 'Canette de bière'),
(10, 'img/box.png', 15, 'jumelles', 70, 'Jumelles'),
(10, 'img/cig.png', 870, 'malbora', 45, 'Malboro'),
(10, 'img/cig.png', 1155, 'gitanes', 30, 'Gitane'),
(15, 'img/burger.png', 555, 'hamburger', 15, 'Hamburger'),
(15, 'img/cocacola.png', 430, 'cocacola', 15, 'Canette de Coca-Cola'),
(15, 'img/choco.png', 490, 'chocolate', 5, 'Barre de Chocolat'),
(15, 'img/bottle.png', 500, 'water', 5, 'Bouteille d\'eau'),
(15, 'img/sim.png', 48, 'sim', 50, 'Carte Sim'),
(15, 'img/cupcake.png', 500, 'cupcake', 7, 'Cupcake'),
(15, 'img/chips.png', 500, 'chips', 5, 'Paquet de Chips'),
(15, 'img/sandwich.png', 290, 'sandwich', 16, 'Sandwich'),
(15, 'img/phone.png', 9, 'tel', 200, 'Téléphone');

-- --------------------------------------------------------

--
-- Structure de la table `shops2`
--

CREATE TABLE `shops2` (
  `id` int(11) NOT NULL,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `shops2`
--

INSERT INTO `shops2` (`id`, `store`, `item`, `price`) VALUES
(1, 'narekshop', 'yusuf', 30),
(2, 'narekshop', 'grip', 30),
(3, 'narekshop', 'flashlight', 30),
(4, 'narekshop', 'silencieux', 15),
(5, 'narekshop', 'clip', 15);

-- --------------------------------------------------------

--
-- Structure de la table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `trunk_inventory`
--

CREATE TABLE `trunk_inventory` (
  `id` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT '0',
  `loadout` longtext COLLATE utf8mb4_bin,
  `position` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_bin,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `isDead` bit(1) DEFAULT b'0',
  `jail` int(11) NOT NULL DEFAULT '0',
  `pet` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `licence3` int(11) NOT NULL DEFAULT '0',
  `licence2` int(11) NOT NULL DEFAULT '0',
  `licence1` int(11) NOT NULL DEFAULT '0',
  `vote` varchar(254) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `user_accessories`
--

CREATE TABLE `user_accessories` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `mask` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin DEFAULT 'Masque',
  `type` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `index` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `item` varchar(50) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_message`
--

CREATE TABLE `user_message` (
  `phone_number` varchar(10) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `user_sim`
--

CREATE TABLE `user_sim` (
  `id` int(11) NOT NULL,
  `identifier` varchar(555) NOT NULL,
  `number` varchar(555) NOT NULL,
  `label` varchar(555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user_tenue`
--

CREATE TABLE `user_tenue` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `tenue` longtext COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `user_whitelist`
--

CREATE TABLE `user_whitelist` (
  `identifier` varchar(255) NOT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('17m760i', '17m760i', 348000, 'addon'),
('18performante', '18performante', 898000, 'addon'),
('2015s3', '2015s3', 78000, 'addon'),
('208', '208', 8000, 'addon'),
('370z', '370z', 118000, 'addon'),
('66fastback', '66fastback', 118000, 'addon'),
('720s', '720s', 798000, 'addon'),
('911tbs', '911tbs', 548000, 'addon'),
('a8lfsi', 'a8lfsi', 88000, 'addon'),
('Adder', 'adder', 900000, 'super'),
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Alpha', 'alpha', 60000, 'sports'),
('amv19', 'amv19', 418000, 'addon'),
('aperta', 'aperta', 1198000, 'addon'),
('Ardent', 'ardent', 1150000, 'sportsclassics'),
('Asea', 'asea', 5500, 'sedans'),
('Autarch', 'autarch', 1955000, 'super'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('bdivo', 'bdivo', 1198000, 'addon'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('BF400', 'bf400', 6500, 'motorcycles'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 45000, 'vans'),
('Blade', 'blade', 15000, 'muscle'),
('Blazer', 'blazer', 6500, 'offroad'),
('Blazer Sport', 'blazer4', 8500, 'offroad'),
('blazer5', 'blazer5', 1755600, 'offroad'),
('Blista', 'blista', 8000, 'compacts'),
('bmws', 'bmws', 58000, 'addon'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('brabus850', 'brabus850', 248000, 'addon'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('c63', 'c63', 308000, 'addon'),
('c7', 'c7', 248000, 'addon'),
('Camper', 'camper', 42000, 'vans'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('cayenne', 'cayenne', 178000, 'addon'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('contgt13', 'contgt13', 228000, 'addon'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('db11', 'db11', 298000, 'addon'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('Dominator', 'dominator', 35000, 'muscle'),
('Double T', 'double', 28000, 'motorcycles'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('e60', 'e60', 98000, 'addon'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Entity XF', 'entityxf', 425000, 'super'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('gle63c', 'gle63c', 248000, 'addon'),
('Glendale', 'glendale', 6500, 'sedans'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('gtrnismo17', 'gtrnismo17', 498000, 'addon'),
('Guardian', 'guardian', 45000, 'offroad'),
('gx460', 'gx460', 128000, 'addon'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('hondacivictr', 'hondacivictr', 58000, 'addon'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('i8', 'i8', 498000, 'addon'),
('Infernus', 'infernus', 180000, 'super'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Journey', 'journey', 6500, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('levante', 'levante', 168000, 'addon'),
('Lynx', 'lynx', 40000, 'sports'),
('m2f22', 'm2f22', 268000, 'addon'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Minivan', 'minivan', 13000, 'vans'),
('mk7pandem', 'mk7pandem', 68000, 'addon'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('The Liberator', 'monster', 210000, 'offroad'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Neon', 'neon', 1500000, 'sports'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Oppressor', 'oppressor', 3524500, 'super'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('polo2018', 'polo2018', 28000, 'addon'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('pturismo', 'pturismo', 348000, 'addon'),
('r8v10', 'r8v10', 598000, 'addon'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('raptor2017', 'raptor2017', 98000, 'addon'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('regera', 'regera', 1198000, 'addon'),
('Regina', 'regina', 5000, 'sedans'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('riata', 'riata', 380000, 'offroad'),
('rmodm4gts', 'rmodm4gts', 398000, 'addon'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('rs318', 'rs318', 198000, 'addon'),
('rs4avant', 'rs4avant', 248000, 'addon'),
('rs5r', 'rs5r', 298000, 'addon'),
('rs6', 'rs6', 308000, 'addon'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('s500w222', 's500w222', 248000, 'addon'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Sandking', 'sandking', 55000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Seminole', 'seminole', 25000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('sq72016', 'sq72016', 148000, 'addon'),
('stelvio', 'stelvio', 128000, 'addon'),
('sti', 'sti', 88000, 'addon'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Stretch', 'stretch', 90000, 'sedans'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Super Diamond', 'superd', 130000, 'sedans'),
('supra2', 'supra2', 128000, 'addon'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 12000, 'vans'),
('T20', 't20', 300000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('tmax', 'tmax', 68000, 'addon'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('urus', 'urus', 198000, 'addon'),
('Vacca', 'vacca', 120000, 'super'),
('Vader', 'vader', 7200, 'motorcycles'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voltic 2', 'voltic2', 3830400, 'super'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('wmfenyr', 'wmfenyr', 1198000, 'addon'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('x6m', 'x6m', 298000, 'addon'),
('xclass', 'xclass', 78000, 'addon'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('yPG205t16A', 'yPG205t16A', 78000, 'addon'),
('yPG205t16B', 'yPG205t16B', 58000, 'addon'),
('yz450f', 'yz450f', 28000, 'addon'),
('yzfr6', 'yzfr6', 38000, 'addon'),
('Z190', 'z190', 900000, 'sportsclassics'),
('z419', 'z419', 248000, 'addon'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('addon', 'Importés'),
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Structure de la table `whitelist`
--

CREATE TABLE `whitelist` (
  `identifier` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `whitelist`
--

INSERT INTO `whitelist` (`identifier`) VALUES
('steam:1100001021ccf91'),
('steam:1100001025de5ad'),
('steam:1100001025e0d64'),
('steam:110000102e30d3c'),
('steam:1100001030e5b14'),
('steam:11000010315b0fc'),
('steam:110000103e8537f'),
('steam:110000103f13b0b'),
('steam:110000103f9e0bb'),
('steam:110000104b71a10'),
('steam:110000104cb13a5'),
('steam:110000107010251'),
('steam:11000010768cb12'),
('steam:110000107fd6026'),
('steam:110000108863bb1'),
('steam:110000109e159a4'),
('steam:11000010a5b111e'),
('steam:11000010aefb728'),
('steam:11000010b509188'),
('steam:11000010b52d95b'),
('steam:11000010ca5df0e'),
('steam:11000010d9bfc5f'),
('steam:11000010e19aaa2'),
('steam:11000010f3dec9f'),
('steam:11000010f9b63f4'),
('steam:11000011036ca74'),
('steam:1100001105333bc'),
('steam:110000110a0d478'),
('steam:110000111643812'),
('steam:110000111b07fe1'),
('steam:11000011262d25d'),
('steam:1100001129ce7f5'),
('steam:110000112a368e8'),
('steam:110000112f720b3'),
('steam:110000112fe6417'),
('steam:1100001142cac41'),
('steam:1100001143762c9'),
('steam:110000114a51c91'),
('steam:1100001153dcda0'),
('steam:1100001159d386a'),
('steam:1100001167eb1ec'),
('steam:110000116e1d4b3'),
('steam:1100001173f46c2'),
('steam:11000011ad8ae36'),
('steam:11000011b8842b4'),
('steam:11000011bd82ca0'),
('steam:110000131cab120'),
('steam:110000133544f89'),
('steam:11000013455a022'),
('steam:110000136b99969'),
('steam:110000137199bec'),
('steam:110000139d6535a'),
('steam:11000013bf98ef9'),
('steam:11000013cb23b44'),
('steam:11000013cc3d4f7'),
('steam:11000013cc455e7');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `baninfo`
--
ALTER TABLE `baninfo`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `banlist`
--
ALTER TABLE `banlist`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `banlisthistory`
--
ALTER TABLE `banlisthistory`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `boatdealer_boats`
--
ALTER TABLE `boatdealer_boats`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `boats`
--
ALTER TABLE `boats`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `boat_categories`
--
ALTER TABLE `boat_categories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `jail`
--
ALTER TABLE `jail`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_boats`
--
ALTER TABLE `owned_boats`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `playerstattoos`
--
ALTER TABLE `playerstattoos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rented_boats`
--
ALTER TABLE `rented_boats`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `shops2`
--
ALTER TABLE `shops2`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `user_accessories`
--
ALTER TABLE `user_accessories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_sim`
--
ALTER TABLE `user_sim`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_tenue`
--
ALTER TABLE `user_tenue`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_whitelist`
--
ALTER TABLE `user_whitelist`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `whitelist`
--
ALTER TABLE `whitelist`
  ADD PRIMARY KEY (`identifier`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addon_account`
--
ALTER TABLE `addon_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT pour la table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT pour la table `banlisthistory`
--
ALTER TABLE `banlisthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `boatdealer_boats`
--
ALTER TABLE `boatdealer_boats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT pour la table `datastore`
--
ALTER TABLE `datastore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=504;

--
-- AUTO_INCREMENT pour la table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT pour la table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT pour la table `licenses`
--
ALTER TABLE `licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `playerstattoos`
--
ALTER TABLE `playerstattoos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT pour la table `shops2`
--
ALTER TABLE `shops2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_accessories`
--
ALTER TABLE `user_accessories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_sim`
--
ALTER TABLE `user_sim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_tenue`
--
ALTER TABLE `user_tenue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
