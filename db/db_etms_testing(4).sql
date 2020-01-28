-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2020 at 07:43 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_etms_testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `asset_series`
--

CREATE TABLE IF NOT EXISTS `asset_series` (
`asset_id` int(11) NOT NULL,
  `subcat_prefix` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `series` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=775 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_series`
--

INSERT INTO `asset_series` (`asset_id`, `subcat_prefix`, `location`, `series`) VALUES
(1, 'FFE- COMP', 'BCD', 1001),
(2, 'FFE- COMP', 'BCD', 1002),
(3, 'FFE- COMP', 'BCD', 1003),
(4, 'FFE- COMP', 'BCD', 1004),
(5, 'FFE- COMP', 'BCD', 1004),
(6, 'FFE- COMP', 'BCD', 1005),
(7, 'FFE- COMP', 'BCD', 1006),
(8, 'FFE- COMP', 'BCD', 1007),
(9, 'FFE- COMP', 'BCD', 1008),
(10, 'FFE- COMP', 'BCD', 1009),
(11, 'FFE- COMP', 'BCD', 1010),
(12, 'FFE- COMP', 'BCD', 1009),
(13, 'FFE- COMP', 'BCD', 1011),
(14, 'FFE-EQU', 'BCD', 1001),
(15, 'FFE- COMP', 'BCD', 1012),
(16, 'FFE-EQU', 'BCD', 1002),
(17, 'FFE- COMP', 'BCD', 1013),
(18, 'FFE- COMP', 'BCD', 1014),
(19, 'FFE- COMP', 'BCD', 1015),
(20, 'FFE- COMP', 'BCD', 1015),
(21, 'FFE- COMP', 'BCD', 1016),
(22, 'FFE- COMP', 'BCD', 1017),
(23, 'FFE- COMP', 'BCD', 1018),
(24, 'FFE- COMP', 'BCD', 1019),
(25, 'FFE- COMP', 'BCD', 1020),
(26, 'FFE- COMP', 'BCD', 1021),
(27, 'FFE- COMP', 'BCD', 1022),
(28, 'FFE- COMP', 'BCD', 1023),
(29, 'FFE- COMP', 'BCD', 1024),
(30, 'FFE- COMP', 'BCD', 1025),
(31, 'FFE- COMP', 'BCD', 1026),
(32, 'FFE- COMP', 'BCD', 1027),
(33, 'FFE- COMP', 'BCD', 1028),
(34, 'FFE- COMP', 'BCD', 1027),
(35, 'FFE- COMP', 'BCD', 1029),
(36, 'FFE- COMP', 'BCD', 1030),
(37, 'FFE- COMP', 'BCD', 1031),
(38, 'FFE- COMP', 'BCD', 1031),
(39, 'FFE- COMP', 'BCD', 1032),
(40, 'FFE- COMP', 'BCD', 1032),
(41, 'FFE- COMP', 'BCD', 1033),
(42, 'FFE- COMP', 'BCD', 1034),
(43, 'FFE- COMP', 'BCD', 1035),
(44, 'FFE- COMP', 'BCD', 1036),
(45, 'FFE- COMP', 'BCD', 1036),
(46, 'FFE- COMP', 'BCD', 1037),
(47, 'FFE- COMP', 'BCD', 1037),
(48, 'FFE- COMP', 'BCD', 1038),
(49, 'FFE- COMP', 'BCD', 1039),
(50, 'FFE- COMP', 'BCD', 1040),
(51, 'FFE- COMP', 'BCD', 1040),
(52, 'FFE- COMP', 'BCD', 1041),
(53, 'FFE- COMP', 'BCD', 1042),
(54, 'FFE- COMP', 'BCD', 1043),
(55, 'FFE- COMP', 'BCD', 1044),
(56, 'FFE- COMP', 'BCD', 1045),
(57, 'FFE- COMP', 'BCD', 1046),
(58, 'FFE- COMP', 'BCD', 1046),
(59, 'FFE- COMP', 'BCD', 1047),
(60, 'FFE- COMP', 'BCD', 1048),
(61, 'FFE- COMP', 'BCD', 1049),
(62, 'FFE- COMP', 'BCD', 1050),
(63, 'FFE- COMP', 'BCD', 1051),
(64, 'FFE- COMP', 'BCD', 1052),
(65, 'FFE-EQU', 'BCD', 1003),
(66, 'FFE- COMP', 'BCD', 1053),
(67, 'FFE- COMP', 'BCD', 1054),
(68, 'FFE- COMP', 'BCD', 1055),
(69, 'FFE- COMP', 'BCD', 1055),
(70, 'FFE- COMP', 'BCD', 1056),
(71, 'FFE- COMP', 'BCD', 1057),
(72, 'FFE- COMP', 'BCD', 1057),
(73, 'FFE- COMP', 'BCD', 1058),
(74, 'FFE- COMP', 'BCD', 1059),
(75, 'FFE- COMP', 'BCD', 1060),
(76, 'FFE- COMP', 'BCD', 1061),
(77, 'FFE- COMP', 'BCD', 1062),
(78, 'FFE- COMP', 'BCD', 1062),
(79, 'FFE- COMP', 'BCD', 1063),
(80, 'FFE- COMP', 'BCD', 1064),
(81, 'FFE- COMP', 'BCD', 1065),
(82, 'FFE- COMP', 'BCD', 1066),
(83, 'FFE- COMP', 'BCD', 1067),
(84, 'FFE- COMP', 'BCD', 1068),
(85, 'FFE- COMP', 'BCD', 1069),
(86, 'FFE- COMP', 'BCD', 1070),
(87, 'FFE- COMP', 'BCD', 1071),
(88, 'FFE- COMP', 'BCD', 1072),
(89, 'FFE- COMP', 'BCD', 1073),
(90, 'FFE- COMP', 'BCD', 1074),
(91, 'FFE- COMP', 'BCD', 1075),
(92, 'FFE- COMP', 'BCD', 1076),
(93, 'FFE- COMP', 'BCD', 1077),
(94, 'FFE- COMP', 'BCD', 1078),
(95, 'FFE- COMP', 'BCD', 1079),
(96, 'FFE- COMP', 'BCD', 1080),
(97, 'FFE-EQU', 'BCD', 1004),
(98, 'FFE- COMP', 'BCD', 1081),
(99, 'FFE- COMP', 'BCD', 1082),
(100, 'FFE- COMP', 'BCD', 1083),
(101, 'FFE- COMP', 'BCD', 1084),
(102, 'FFE- COMP', 'BCD', 1085),
(103, 'FFE- COMP', 'BCD', 1086),
(104, 'FFE- COMP', 'BCD', 1087),
(105, 'FFE- COMP', 'BCD', 1088),
(106, 'FFE- COMP', 'BCD', 1089),
(107, 'FFE- COMP', 'BCD', 1090),
(108, 'FFE- COMP', 'BCD', 1091),
(109, 'FFE- COMP', 'BCD', 1092),
(110, 'FFE- COMP', 'BCD', 1093),
(111, 'FFE- COMP', 'BCD', 1094),
(112, 'FFE- COMP', 'BCD', 1093),
(113, 'FFE- COMP', 'BCD', 1095),
(114, 'FFE- COMP', 'BCD', 1096),
(115, 'FFE- COMP', 'BCD', 1097),
(116, 'FFE- COMP', 'BCD', 1097),
(117, 'FFE- COMP', 'BCD', 1098),
(118, 'FFE- COMP', 'BCD', 1099),
(119, 'FFE- COMP', 'BCD', 1099),
(120, 'FFE- COMP', 'BCD', 1100),
(121, 'FFE- COMP', 'BCD', 1101),
(122, 'FFE- COMP', 'BCD', 1102),
(123, 'FFE- COMP', 'BCD', 1103),
(124, 'FFE- COMP', 'BCD', 1103),
(125, 'FFE- COMP', 'BCD', 1104),
(126, 'FFE- COMP', 'BCD', 1104),
(127, 'FFE- COMP', 'BCD', 1105),
(128, 'FFE- COMP', 'BCD', 1106),
(129, 'FFE- COMP', 'BCD', 1107),
(130, 'FFE- COMP', 'BCD', 1108),
(131, 'FFE- COMP', 'BCD', 1109),
(132, 'FFE- COMP', 'BCD', 1110),
(133, 'FFE- COMP', 'BCD', 1111),
(134, 'FFE- COMP', 'BCD', 1112),
(135, 'FFE- COMP', 'BCD', 1113),
(136, 'FFE- COMP', 'BCD', 1114),
(137, 'FFE- COMP', 'BCD', 1115),
(138, 'FFE- COMP', 'BCD', 1116),
(139, 'FFE- COMP', 'BCD', 1117),
(140, 'FFE- COMP', 'BCD', 1118),
(141, 'FFE- COMP', 'BCD', 1118),
(142, 'FFE- COMP', 'BCD', 1119),
(143, 'FFE- COMP', 'BCD', 1120),
(144, 'FFE- COMP', 'BCD', 1121),
(145, 'FFE- COMP', 'BCD', 1122),
(146, 'FFE- COMP', 'BCD', 1123),
(147, 'FFE- COMP', 'BCD', 1124),
(148, 'FFE- COMP', 'BCD', 1125),
(149, 'FFE- COMP', 'BCD', 1126),
(150, 'FFE- COMP', 'BCD', 1127),
(151, 'FFE- COMP', 'BCD', 1128),
(152, 'FFE- COMP', 'BCD', 1128),
(153, 'FFE- COMP', 'BCD', 1129),
(154, 'FFE- COMP', 'BCD', 1129),
(155, 'FFE- COMP', 'BCD', 1130),
(156, 'FFE- COMP', 'BCD', 1131),
(157, 'FFE- COMP', 'BCD', 1132),
(158, 'FFE- COMP', 'BCD', 1133),
(159, 'FFE- COMP', 'BCD', 1133),
(160, 'FFE- COMP', 'BCD', 1134),
(161, 'FFE- COMP', 'BCD', 1135),
(162, 'FFE- COMP', 'BCD', 1136),
(163, 'FFE- COMP', 'BCD', 1137),
(164, 'FFE- COMP', 'BCD', 1138),
(165, 'FFE- COMP', 'BCD', 1139),
(166, 'FFE- COMP', 'BCD', 1140),
(167, 'FFE- COMP', 'BCD', 1141),
(168, 'FFE- COMP', 'BCD', 1142),
(169, 'FFE- COMP', 'BCD', 1143),
(170, 'FFE- COMP', 'BCD', 1144),
(171, 'FFE- COMP', 'BCD', 1145),
(172, 'FFE- COMP', 'BCD', 1146),
(173, 'FFE- COMP', 'BCD', 1147),
(174, 'FFE- COMP', 'BCD', 1148),
(175, 'FFE- COMP', 'BCD', 1149),
(176, 'FFE- COMP', 'BCD', 1150),
(177, 'FFE- COMP', 'BCD', 1151),
(178, 'FFE- COMP', 'BCD', 1152),
(179, 'FFE- COMP', 'BCD', 1153),
(180, 'FFE- COMP', 'BCD', 1154),
(181, 'FFE- COMP', 'BCD', 1155),
(182, 'FFE-EQU', 'BCD', 1005),
(183, 'FFE- COMP', 'BCD', 1156),
(184, 'FFE- COMP', 'BCD', 1157),
(185, 'FFE- COMP', 'BCD', 1158),
(186, 'FFE- COMP', 'BCD', 1159),
(187, 'FFE- COMP', 'BCD', 1160),
(188, 'FFE- COMP', 'BCD', 1161),
(189, 'FFE- COMP', 'BCD', 1162),
(190, 'FFE- COMP', 'BCD', 1163),
(191, 'FFE- COMP', 'BCD', 1164),
(192, 'FFE- COMP', 'BCD', 1165),
(193, 'FFE- COMP', 'BCD', 1166),
(194, 'FFE- COMP', 'BCD', 1167),
(195, 'FFE- COMP', 'BCD', 1168),
(196, 'FFE-EQU', 'BCD', 1006),
(197, 'FFE- COMP', 'BCD', 1169),
(198, 'FFE- COMP', 'BCD', 1170),
(199, 'FFE- COMP', 'BCD', 1171),
(200, 'FFE- COMP', 'BCD', 1172),
(201, 'FFE- COMP', 'BCD', 1173),
(202, 'FFE- COMP', 'BCD', 1174),
(203, 'FFE- COMP', 'BCD', 1175),
(204, 'FFE- COMP', 'BCD', 1176),
(205, 'FFE- COMP', 'BCD', 1177),
(206, 'FFE- COMP', 'BCD', 1178),
(207, 'FFE- COMP', 'BCD', 1179),
(208, 'FFE- COMP', 'BCD', 1180),
(209, 'FFE- COMP', 'BCD', 1181),
(210, 'FFE- COMP', 'BCD', 1182),
(211, 'FFE- COMP', 'BCD', 1183),
(212, 'FFE- COMP', 'BCD', 1184),
(213, 'FFE- COMP', 'BCD', 1185),
(214, 'FFE- COMP', 'BCD', 1186),
(215, 'FFE- COMP', 'BCD', 1187),
(216, 'FFE- COMP', 'BCD', 1188),
(217, 'FFE- COMP', 'BCD', 1189),
(218, 'FFE- COMP', 'BCD', 1190),
(219, 'FFE- COMP', 'BCD', 1191),
(220, 'FFE- COMP', 'BCD', 1192),
(221, 'FFE- COMP', 'BCD', 1193),
(222, 'FFE- COMP', 'BCD', 1194),
(223, 'FFE- COMP', 'BCD', 1195),
(224, 'FFE- COMP', 'BCD', 1196),
(225, 'FFE- COMP', 'BCD', 1197),
(226, 'FFE- COMP', 'BCD', 1198),
(227, 'FFE- COMP', 'BCD', 1199),
(228, 'FFE- COMP', 'BCD', 1200),
(229, 'FFE- COMP', 'BCD', 1201),
(230, 'FFE- COMP', 'BCD', 1202),
(231, 'FFE- COMP', 'BCD', 1203),
(232, 'FFE-COMP', 'BCD', 1204),
(233, 'FFE- COMP', 'BCD', 1204),
(234, 'FFE- COMP', 'BCD', 1205),
(235, 'FFE- COMP', 'BCD', 1206),
(236, 'FFE- COMP', 'BCD', 1207),
(237, 'FFE- COMP', 'BCD', 1208),
(238, 'FFE- COMP', 'BCD', 1209),
(239, 'FFE- COMP', 'BCD', 1210),
(240, 'FFE- COMP', 'BCD', 1211),
(241, 'FFE- COMP', 'BCD', 1212),
(242, 'FFE- COMP', 'BCD', 1213),
(243, 'FFE- COMP', 'BCD', 1214),
(244, 'FFE- COMP', 'BCD', 1215),
(245, 'FFE- COMP', 'BCD', 1216),
(246, 'FFE- COMP', 'BCD', 1217),
(247, 'FFE- COMP', 'BCD', 1218),
(248, 'FFE- COMP', 'BCD', 1219),
(249, 'FFE- COMP', 'BCD', 1220),
(250, 'FFE- COMP', 'BCD', 1221),
(251, 'FFE- COMP', 'BCD', 1222),
(252, 'FFE- COMP', 'BCD', 1223),
(253, 'FFE- COMP', 'BCD', 1224),
(254, 'FFE- COMP', 'BCD', 1225),
(255, 'FFE- COMP', 'BCD', 1226),
(256, 'FFE- COMP', 'BCD', 1227),
(257, 'FFE- COMP', 'BCD', 1228),
(258, 'FFE- COMP', 'BCD', 1229),
(259, 'FFE- COMP', 'BCD', 1230),
(260, 'FFE- COMP', 'BCD', 1231),
(261, 'FFE- COMP', 'BCD', 1232),
(262, 'FFE-EQU', 'BCD', 1007),
(263, 'FFE- COMP', 'BCD', 1233),
(264, 'FFE- COMP', 'BCD', 1234),
(265, 'FFE- COMP', 'BCD', 1235),
(266, 'FFE-TRA', 'BCD', 1001),
(267, 'FFE-EQU', 'BCD', 1008),
(268, 'FFE- COMP', 'BCD', 1236),
(269, 'FFE- COMP', 'BCD', 1237),
(270, 'FFE- COMP', 'BCD', 1238),
(271, 'FFE- COMP', 'BCD', 1239),
(272, 'FFE- COMP', 'BCD', 1240),
(273, 'FFE- COMP', 'BCD', 1241),
(274, 'FFE- COMP', 'BCD', 1242),
(275, 'FFE- COMP', 'BCD', 1243),
(276, 'FFE- COMP', 'BCD', 1244),
(277, 'FFE- COMP', 'BCD', 1245),
(278, 'FFE-EQU', 'BCD', 1009),
(279, 'FFE- COMP', 'BCD', 1246),
(280, 'FFE- COMP', 'BCD', 1247),
(281, 'FFE- COMP', 'BCD', 1248),
(282, 'FFE- COMP', 'BCD', 1249),
(283, 'FFE- COMP', 'BCD', 1250),
(284, 'FFE- COMP', 'BCD', 1251),
(285, 'FFE- COMP', 'BCD', 1252),
(286, 'FFE- COMP', 'BCD', 1253),
(287, 'FFE- COMP', 'BCD', 1254),
(288, 'FFE- COMP', 'BCD', 1255),
(289, 'FFE- COMP', 'BCD', 1256),
(290, 'FFE- COMP', 'BCD', 1257),
(291, 'FFE- COMP', 'BCD', 1258),
(292, 'FFE- COMP', 'BCD', 1259),
(293, 'FFE- COMP', 'BCD', 1260),
(294, 'FFE- COMP', 'BCD', 1261),
(295, 'FFE- COMP', 'BCD', 1262),
(296, 'FFE- COMP', 'BCD', 1263),
(297, 'FFE- COMP', 'BCD', 1264),
(298, 'FFE- COMP', 'BCD', 1265),
(299, 'FFE- COMP', 'BCD', 1266),
(300, 'FFE- COMP', 'BCD', 1267),
(301, 'FFE- COMP', 'BCD', 1268),
(302, 'FFE-FUR', 'BCD', 1001),
(303, 'FFE-FUR', 'BCD', 1002),
(304, 'FFE- COMP', 'BCD', 1269),
(305, 'FFE- COMP', 'BCD', 1270),
(306, 'FFE- COMP', 'BCD', 1271),
(307, 'FFE-EQU', 'BCD', 1010),
(308, 'FFE-FUR', 'BCD', 1003),
(309, 'FFE-FUR', 'BCD', 1004),
(310, 'FFE-FUR', 'BCD', 1005),
(311, 'FFE-FUR', 'BCD', 1006),
(312, 'FFE-FUR', 'BCD', 1007),
(313, 'FFE-FUR', 'BCD', 1008),
(314, 'FFE-FUR', 'BCD', 1009),
(315, 'FFE-FUR', 'BCD', 1010),
(316, 'FFE-FUR', 'BCD', 1011),
(317, 'FFE-FUR', 'BCD', 1012),
(318, 'FFE- COMP', 'BCD', 1272),
(319, 'FFE-EQU', 'BCD', 1011),
(320, 'FFE-FUR', 'BCD', 1013),
(321, 'FFE-FUR', 'BCD', 1014),
(322, 'FFE-FUR', 'BCD', 1015),
(323, 'FFE-EQU', 'BCD', 1012),
(324, 'FFE-EQU', 'BCD', 1013),
(325, 'FFE-HOU', 'BCD', 1001),
(326, 'FFE-HOU', 'BCD', 1002),
(327, 'FFE-HOU', 'BCD', 1003),
(328, 'FFE-HOU', 'BCD', 1004),
(329, 'FFE-HOU', 'BCD', 1005),
(330, 'FFE-HOU', 'BCD', 1006),
(331, 'FFE-HOU', 'BCD', 1007),
(332, 'FFE-HOU', 'BCD', 1008),
(333, 'FFE-HOU', 'BCD', 1009),
(334, 'FFE-HOU', 'BCD', 1010),
(335, 'FFE-HOU', 'BCD', 1011),
(336, 'FFE-HOU', 'BCD', 1012),
(337, 'FFE-HOU', 'BCD', 1013),
(338, 'FFE-HOU', 'BCD', 1014),
(339, 'FFE-HOU', 'BCD', 1015),
(340, 'FFE-HOU', 'BCD', 1016),
(341, 'FFE-HOU', 'BCD', 1017),
(342, 'FFE-HOU', 'BCD', 1018),
(343, 'FFE-HOU', 'BCD', 1019),
(344, 'FFE-HOU', 'BCD', 1020),
(345, 'FFE-HOU', 'BCD', 1021),
(346, 'FFE-HOU', 'BCD', 1022),
(347, 'FFE-HOU', 'BCD', 1023),
(348, 'FFE-HOU', 'BCD', 1024),
(349, 'FFE-HOU', 'BCD', 1025),
(350, 'FFE-HOU', 'BCD', 1026),
(351, 'FFE-HOU', 'BCD', 1027),
(352, 'FFE-HOU', 'BCD', 1028),
(353, 'FFE-HOU', 'BCD', 1029),
(354, 'FFE-HOU', 'BCD', 1030),
(355, 'FFE-HOU', 'BCD', 1031),
(356, 'FFE-HOU', 'BCD', 1032),
(357, 'FFE-HOU', 'BCD', 1033),
(358, 'FFE-HOU', 'BCD', 1034),
(359, 'FFE-HOU', 'BCD', 1035),
(360, 'FFE-HOU', 'BCD', 1036),
(361, 'FFE-HOU', 'BCD', 1037),
(362, 'FFE-APP', 'BCD', 1001),
(363, 'FFE-APP', 'BCD', 1002),
(364, 'FFE-FUR', 'BCD', 1016),
(365, 'FFE-FUR', 'BCD', 1017),
(366, 'FFE-APP', 'BCD', 1003),
(367, 'FFE-TRA', 'BCD', 1002),
(368, 'FFE-FUR', 'BCD', 1018),
(369, 'FFE- COMP', 'BCD', 1273),
(370, 'FFE- COMP', 'BCD', 1274),
(381, 'FFE- SUP', 'BCD', 1001),
(383, 'FFE-COM', 'BCD', 1001),
(384, 'FFE- COMP', 'BCD', 1275),
(385, 'FFE- SUP', 'BCD', 1002),
(386, 'FFE- SUP', 'BCD', 1003),
(387, 'FFE-EQU', 'BCD', 1014),
(388, 'FFE-EQU', 'BCD', 1015),
(389, 'FFE-APP', 'BCD', 1004),
(390, 'FFE-APP', 'BCD', 1005),
(391, 'FFE- SUP', 'BCD', 1004),
(392, 'FFE- SUP', 'BCD', 1005),
(393, 'FFE- SUP', 'BCD', 1006),
(394, 'FFE-FUR', 'BCD', 1020),
(395, 'FFE-FUR', 'BCD', 1021),
(396, 'FFE-FUR', 'BCD', 1022),
(397, 'FFE-FUR', 'BCD', 1023),
(398, 'FFE-FUR', 'BCD', 1024),
(399, 'FFE-FUR', 'BCD', 1025),
(400, 'FFE-FUR', 'BCD', 1026),
(401, 'FFE-FUR', 'BCD', 1027),
(402, 'FFE-FUR', 'BCD', 1028),
(403, 'FFE-FUR', 'BCD', 1029),
(404, 'FFE-EQU', 'BCD', 1016),
(405, 'FFE-HOU', 'BCD', 1038),
(406, 'FFE-HOU', 'BCD', 1039),
(407, 'FFE-HOU', 'BCD', 1040),
(408, 'FFE-HOU', 'BCD', 1041),
(409, 'FFE-HOU', 'BCD', 1042),
(410, 'FFE-HOU', 'BCD', 1043),
(411, 'FFE-HOU', 'BCD', 1044),
(412, 'FFE-HOU', 'BCD', 1045),
(413, 'FFE-HOU', 'BCD', 1046),
(414, 'FFE-HOU', 'BCD', 1047),
(415, 'FFE-HOU', 'BCD', 1048),
(416, 'FFE-HOU', 'BCD', 1049),
(417, 'FFE-HOU', 'BCD', 1050),
(418, 'FFE-HOU', 'BCD', 1051),
(419, 'FFE-HOU', 'BCD', 1052),
(420, 'FFE-HOU', 'BCD', 1053),
(421, 'FFE-HOU', 'BCD', 1054),
(422, 'FFE-HOU', 'BCD', 1055),
(423, 'FFE-HOU', 'BCD', 1056),
(424, 'FFE-HOU', 'BCD', 1057),
(425, 'FFE-HOU', 'BCD', 1058),
(426, 'FFE-HOU', 'BCD', 1059),
(427, 'FFE-HOU', 'BCD', 1060),
(428, 'FFE-HOU', 'BCD', 1061),
(429, 'FFE-HOU', 'BCD', 1062),
(430, 'FFE-HOU', 'BCD', 1063),
(431, 'FFE-HOU', 'BCD', 1064),
(432, 'FFE-HOU', 'BCD', 1065),
(433, 'FFE-HOU', 'BCD', 1066),
(434, 'FFE-HOU', 'BCD', 1067),
(435, 'FFE-HOU', 'BCD', 1068),
(436, 'FFE-HOU', 'BCD', 1069),
(437, 'FFE-HOU', 'BCD', 1070),
(438, 'FFE-HOU', 'BCD', 1071),
(439, 'FFE-HOU', 'BCD', 1072),
(440, 'FFE-HOU', 'BCD', 1073),
(441, 'FFE- COMP', 'BCD', 1276),
(444, 'FFE- SUP', 'BCD', 1007),
(446, 'FFE- SUP', 'BCD', 1009),
(451, 'FFE- SUP', 'BCD', 1014),
(458, 'FFE-HOU', 'BCD', 1074),
(459, 'FFE-HOU', 'BCD', 1075),
(460, 'FFE-HOU', 'BCD', 1076),
(461, 'FFE-HOU', 'BCD', 1077),
(462, 'FFE-HOU', 'BCD', 1078),
(463, 'FFE-HOU', 'BCD', 1079),
(464, 'FFE-HOU', 'BCD', 1080),
(465, 'FFE-HOU', 'BCD', 1081),
(466, 'FFE-HOU', 'BCD', 1082),
(467, 'FFE-HOU', 'BCD', 1083),
(468, 'FFE-HOU', 'BCD', 1084),
(469, 'FFE-HOU', 'BCD', 1085),
(470, 'FFE-HOU', 'BCD', 1086),
(471, 'FFE-HOU', 'BCD', 1087),
(472, 'FFE-HOU', 'BCD', 1088),
(473, 'FFE-HOU', 'BCD', 1089),
(474, 'FFE-HOU', 'BCD', 1090),
(475, 'FFE-HOU', 'BCD', 1091),
(476, 'FFE-HOU', 'BCD', 1092),
(477, 'FFE- SUP', 'BCD', 1017),
(478, 'FFE- COMP', 'BCD', 1279),
(479, 'FFE- SUP', 'BCD', 1018),
(481, 'FFE- COMP', 'BCD', 1280),
(482, 'FFE- COMP', 'BCD', 1281),
(483, 'FFE-FUR', 'BCD', 1031),
(484, 'FFE-EQU', 'BCD', 1021),
(485, 'FFE-EQU', 'BCD', 1022),
(486, 'FFE-EQU', 'BCD', 1023),
(487, 'FFE-EQU', 'BCD', 1024),
(488, 'FFE-EQU', 'BCD', 1025),
(489, 'FFE-EQU', 'BCD', 1026),
(490, 'FFE-EQU', 'BCD', 1027),
(491, 'FFE-EQU', 'BCD', 1028),
(492, 'FFE-EQU', 'BCD', 1029),
(493, 'FFE- SUP', 'BCD', 1019),
(494, 'FFE- SUP', 'BCD', 1020),
(495, 'FFE- SUP', 'BCD', 1021),
(496, 'FFE-EQU', 'BCD', 1030),
(497, 'FFE-EQU', 'BCD', 1031),
(498, 'FFE-PPE', 'BCD', 1001),
(499, 'FFE-PPE', 'BCD', 1002),
(500, 'FFE-PPE', 'BCD', 1003),
(501, 'FFE-PPE', 'BCD', 1004),
(502, 'FFE-PPE', 'BCD', 1005),
(503, 'FFE-PPE', 'BCD', 1006),
(504, 'FFE-PPE', 'BCD', 1007),
(505, 'FFE-PPE', 'BCD', 1008),
(506, 'FFE-PPE', 'BCD', 1009),
(507, 'FFE-PPE', 'BCD', 1010),
(509, 'FFE- COMP', 'BCD', 1283),
(520, 'FFE-HOU', 'BCD', 1093),
(527, 'FFE- COMP', 'BCD', 1287),
(528, 'FFE- COMP', 'BCD', 1288),
(529, 'FFE- COMP', 'BCD', 1289),
(530, 'FFE- COMP', 'BCD', 1290),
(531, 'FFE- COMP', 'BCD', 1291),
(532, 'FFE-FUR', 'BCD', 1032),
(533, 'FFE-FUR', 'BCD', 1033),
(534, 'FFE- COMP', 'BCD', 1292),
(535, 'FFE- COMP', 'BCD', 1293),
(536, 'FFE- COMP', 'BCD', 1294),
(537, 'FFE- COMP', 'BCD', 1295),
(538, 'FFE- SUP', 'BCD', 1022),
(539, 'FFE- COMP', 'BCD', 1296),
(540, 'FFE-TRA', 'BCD', 1003),
(541, 'FFE-TRA', 'BCD', 1004),
(542, 'FFE-TRA', 'BCD', 1005),
(543, 'FFE-TRA', 'BCD', 1006),
(544, 'FFE-TRA', 'BCD', 1007),
(545, 'FFE-TRA', 'BCD', 1008),
(546, 'FFE-TRA', 'BCD', 1009),
(547, 'FFE-TRA', 'BCD', 1010),
(548, 'FFE-TRA', 'BCD', 1011),
(549, 'FFE-TRA', 'BCD', 1012),
(550, 'FFE-TRA', 'BCD', 1003),
(551, 'FFE-TRA', 'BCD', 1003),
(552, 'FFE-TRA', 'BCD', 1013),
(553, 'FFE-TRA', 'BCD', 1013),
(554, 'FFE- COMP', 'BCD', 1297),
(555, 'FFE- COMP', 'BCD', 1298),
(556, 'FFE- COMP', 'BCD', 1299),
(557, 'FFE- COMP', 'BCD', 1300),
(558, 'FFE-EQU', 'BCD', 1032),
(559, 'FFE-EQU', 'BCD', 1033),
(560, 'FFE- COMP', 'BCD', 1301),
(561, 'FFE- COMP', 'BCD', 1302),
(562, 'FFE- COMP', 'BCD', 1303),
(563, 'FFE- COMP', 'BCD', 1304),
(564, 'FFE-FUR', 'BCD', 1034),
(565, 'FFE-FUR', 'BCD', 1035),
(566, 'FFE-FUR', 'BCD', 1036),
(567, 'FFE-FUR', 'BCD', 1037),
(568, 'FFE-TRA', 'BCD', 1014),
(569, 'FFE- COMP', 'BCD', 1305),
(570, 'FFE- COMP', 'BCD', 1306),
(571, 'FFE- COMP', 'BCD', 1307),
(572, 'FFE- COMP', 'BCD', 1306),
(573, 'FFE- COMP', 'BCD', 1305),
(574, 'FFE- COMP', 'BCD', 1308),
(575, 'FFE- COMP', 'BCD', 1308),
(576, 'FFE- COMP', 'BCD', 1309),
(577, 'FFE- COMP', 'BCD', 1300),
(578, 'FFE- COMP', 'BCD', 1310),
(579, 'FFE- COMP', 'BCD', 1311),
(580, 'FFE- COMP', 'BCD', 1312),
(581, 'FFE- COMP', 'BCD', 1313),
(582, 'FFE- COMP', 'BCD', 1314),
(583, 'FFE- COMP', 'BCD', 1315),
(584, 'FFE- COMP', 'BCD', 1309),
(585, 'FFE-EQU', 'BCD', 1034),
(586, 'FFE-EQU', 'BCD', 1035),
(587, 'FFE-EQU', 'BCD', 1035),
(588, 'FFE- COMP', 'BCD', 1316),
(589, 'FFE- COMP', 'BCD', 1317),
(590, 'FFE- COMP', 'BCD', 1318),
(591, 'FFE-EQU', 'BCD', 1034),
(592, 'FFE- COMP', 'BCD', 1319),
(593, 'FFE- COMP', 'BCD', 1320),
(594, 'FFE- COMP', 'BCD', 1321),
(595, 'FFE-FUR', 'BCD', 1038),
(596, 'FFE-FUR', 'BCD', 1039),
(597, 'FFE- COMP', 'BCD', 1307),
(598, 'FFE- COMP', 'BCD', 1317),
(599, 'FFE- COMP', 'BCD', 1318),
(600, 'FFE- COMP', 'BCD', 1322),
(601, 'FFE- SUP', 'BCD', 1023),
(602, 'FFE- SUP', 'BCD', 1024),
(603, 'FFE- SUP', 'BCD', 1025),
(604, 'FFE-EQU', 'BCD', 1036),
(605, 'FFE- COMP', 'BCD', 1313),
(606, 'FFE- COMP', 'BCD', 1323),
(607, 'FFE- COMP', 'BCD', 1324),
(608, 'FFE- COMP', 'BCD', 1325),
(609, 'FFE- COMP', 'BCD', 1326),
(610, 'FFE- COMP', 'BCD', 1327),
(611, 'FFE- COMP', 'BCD', 1328),
(612, 'FFE- COMP', 'BCD', 1323),
(613, 'FFE- COMP', 'BCD', 1314),
(614, 'FFE- COMP', 'BCD', 1324),
(615, 'FFE- COMP', 'BCD', 1325),
(616, 'FFE- COMP', 'BCD', 1326),
(617, 'FFE-FUR', 'BCD', 1036),
(618, 'FFE-FUR', 'BCD', 1037),
(619, 'FFE-COM', 'BCD', 1002),
(620, 'FFE-COM', 'BCD', 1003),
(621, 'FFE-COM', 'BCD', 1004),
(622, 'FFE-COM', 'BCD', 1002),
(623, 'FFE-COM', 'BCD', 1003),
(624, 'FFE-COM', 'BCD', 1004),
(625, 'FFE-COM', 'BCD', 1005),
(626, 'FFE-COM', 'BCD', 1006),
(627, 'FFE-COM', 'BCD', 1007),
(628, 'FFE-COM', 'BCD', 1008),
(629, 'FFE-COM', 'BCD', 1005),
(630, 'FFE-COM', 'BCD', 1006),
(631, 'FFE- COMP', 'BCD', 1329),
(632, 'FFE- COMP', 'BCD', 1329),
(633, 'FFE-COM', 'BCD', 1007),
(634, 'FFE- COMP', 'BCD', 1330),
(635, 'FFE- COMP', 'BCD', 1331),
(636, 'FFE-EQU', 'BCD', 1037),
(637, 'FFE-EQU', 'BCD', 1038),
(638, 'FFE- COMP', 'BCD', 1332),
(639, 'FFE- COMP', 'BCD', 1333),
(640, 'FFE-EQU', 'BCD', 1039),
(641, 'FFE-EQU', 'BCD', 1040),
(642, 'FFE- SUP', 'BCD', 1026),
(643, 'FFE-EQU', 'BCD', 1041),
(644, 'FFE-EQU', 'BCD', 1042),
(645, 'FFE- SUP', 'BCD', 1027),
(646, 'FFE- SUP', 'BCD', 1028),
(647, 'FFE- SUP', 'BCD', 1029),
(648, 'FFE- SUP', 'BCD', 1030),
(649, 'FFE- SUP', 'BCD', 1031),
(650, 'FFE- SUP', 'BCD', 1032),
(651, 'FFE- SUP', 'BCD', 1033),
(652, 'FFE- SUP', 'BCD', 1034),
(653, 'FFE- COMP', 'BCD', 1304),
(654, 'FFE-EQU', 'BCD', 1037),
(655, 'FFE-EQU', 'BCD', 1041),
(656, 'FFE- SUP', 'BCD', 1027),
(657, 'FFE-EQU', 'BCD', 1040),
(658, 'FFE- COMP', 'BCD', 1333),
(659, 'FFE-EQU', 'BCD', 1038),
(660, 'FFE-EQU', 'BCD', 1039),
(661, 'FFE-EQU', 'BCD', 1033),
(662, 'FFE- SUP', 'BCD', 1031),
(663, 'FFE- SUP', 'BCD', 1032),
(664, 'FFE- SUP', 'BCD', 1033),
(665, 'FFE-FUR', 'BCD', 1034),
(666, 'FFE-FUR', 'BCD', 1034),
(667, 'FFE-EQU', 'BCD', 1032),
(668, 'FFE- COMP', 'BCD', 1301),
(669, 'FFE- COMP', 'BCD', 1302),
(670, 'FFE- COMP', 'BCD', 1303),
(671, 'FFE- COMP', 'BCD', 1330),
(672, 'FFE- COMP', 'BCD', 1331),
(673, 'FFE- COMP', 'BCD', 1332),
(674, 'FFE- SUP', 'BCD', 1026),
(675, 'FFE-EQU', 'BCD', 1042),
(676, 'FFE- SUP', 'BCD', 1028),
(677, 'FFE- SUP', 'BCD', 1029),
(678, 'FFE- SUP', 'BCD', 1030),
(679, 'FFE- SUP', 'BCD', 1034),
(680, 'FFE-FUR', 'BCD', 1040),
(681, 'FFE-FUR', 'BCD', 1040),
(682, 'FFE- COMP', 'BCD', 1334),
(683, 'FFE- COMP', 'BCD', 1335),
(684, 'FFE- COMP', 'BCD', 1336),
(685, 'FFE- COMP', 'BCD', 1337),
(686, 'FFE- COMP', 'BCD', 1338),
(687, 'FFE- COMP', 'BCD', 1339),
(688, 'FFE- COMP', 'BCD', 1340),
(689, 'FFE- COMP', 'BCD', 1341),
(690, 'FFE- COMP', 'BCD', 1342),
(691, 'FFE- COMP', 'BCD', 1343),
(692, 'FFE- COMP', 'BCD', 1344),
(693, 'FFE- COMP', 'BCD', 1327),
(694, 'FFE- COMP', 'BCD', 1345),
(695, 'FFE-TRA', 'BCD', 1014),
(696, 'FFE- COMP', 'BCD', 1346),
(697, 'FFE- COMP', 'BCD', 1347),
(698, 'FFE- COMP', 'BCD', 1346),
(699, 'FFE- COMP', 'BCD', 1347),
(700, 'FFE- COMP', 'BCD', 1348),
(701, 'FFE- COMP', 'BCD', 1348),
(702, 'FFE- COMP', 'BCD', 1349),
(703, 'FFE- COMP', 'BCD', 1349),
(704, 'FFE- COMP', 'BCD', 1350),
(705, 'FFE- COMP', 'BCD', 1350),
(706, 'FFE- COMP', 'BCD', 1351),
(707, 'FFE- COMP', 'BCD', 1351),
(708, 'FFE- COMP', 'BCD', 1352),
(709, 'FFE- COMP', 'BCD', 1352),
(710, 'FFE-FUR', 'BCD', 1041),
(711, 'FFE-FUR', 'BCD', 1041),
(712, 'FFE- COMP', 'BCD', 1353),
(713, 'FFE- COMP', 'BCD', 1354),
(714, 'FFE- COMP', 'BCD', 1355),
(715, 'FFE- COMP', 'BCD', 1356),
(716, 'FFE- COMP', 'BCD', 1357),
(717, 'FFE-FUR', 'BCD', 1042),
(718, 'FFE-FUR', 'BCD', 1043),
(719, 'FFE- SUP', 'BCD', 1035),
(720, 'FFE-FUR', 'BCD', 1044),
(721, 'FFE-FUR', 'BCD', 1045),
(722, 'FFE-EQU', 'BCD', 1043),
(723, 'FFE- COMP', 'BCD', 1353),
(724, 'FFE- COMP', 'BCD', 1354),
(725, 'FFE- COMP', 'BCD', 1355),
(726, 'FFE- COMP', 'BCD', 1356),
(727, 'FFE- COMP', 'BCD', 1357),
(728, 'FFE-FUR', 'BCD', 1042),
(729, 'FFE-FUR', 'BCD', 1043),
(730, 'FFE- SUP', 'BCD', 1035),
(731, 'FFE-FUR', 'BCD', 1044),
(732, 'FFE-FUR', 'BCD', 1045),
(733, 'FFE-EQU', 'BCD', 1043),
(734, 'FFE- COMP', 'BCD', 1358),
(735, 'FFE- COMP', 'BCD', 1359),
(736, 'FFE- COMP', 'BCD', 1360),
(737, 'FFE- COMP', 'BCD', 1361),
(738, 'FFE- COMP', 'BCD', 1362),
(739, 'FFE- COMP', 'BCD', 1363),
(740, 'FFE- COMP', 'BCD', 1364),
(741, 'FFE- COMP', 'BCD', 1365),
(742, 'FFE-FUR', 'BCD', 1046),
(743, 'FFE-FUR', 'BCD', 1047),
(744, 'FFE-FUR', 'BCD', 1048),
(745, 'FFE-EQU', 'BCD', 1044),
(746, 'FFE- SUP', 'BCD', 1036),
(747, 'FFE-EQU', 'BCD', 1045),
(748, 'FFE-EQU', 'BCD', 1046),
(749, 'FFE-EQU', 'BCD', 1047),
(750, 'FFE-EQU', 'BCD', 1048),
(751, 'FFE-PPE', 'BCD', 1011),
(752, 'FFE- COMP', 'BCD', 1358),
(753, 'FFE- COMP', 'BCD', 1359),
(754, 'FFE- COMP', 'BCD', 1360),
(755, 'FFE- COMP', 'BCD', 1361),
(756, 'FFE- COMP', 'BCD', 1362),
(757, 'FFE- COMP', 'BCD', 1363),
(758, 'FFE- COMP', 'BCD', 1364),
(759, 'FFE- COMP', 'BCD', 1365),
(760, 'FFE-FUR', 'BCD', 1046),
(761, 'FFE-FUR', 'BCD', 1047),
(762, 'FFE-FUR', 'BCD', 1048),
(763, 'FFE-EQU', 'BCD', 1044),
(764, 'FFE- SUP', 'BCD', 1036),
(765, 'FFE-EQU', 'BCD', 1045),
(766, 'FFE-EQU', 'BCD', 1046),
(767, 'FFE-EQU', 'BCD', 1047),
(768, 'FFE-EQU', 'BCD', 1048),
(769, 'FFE-PPE', 'BCD', 1011),
(770, 'FFE-COM', 'BCD', 1009),
(771, 'FFE-COM', 'BCD', 1009),
(772, 'FFE- COMP', 'BCD', 1366),
(773, 'FFE-COM', 'BCD', 1010),
(774, 'FFE-COM', 'BCD', 1010);

-- --------------------------------------------------------

--
-- Table structure for table `atf_series`
--

CREATE TABLE IF NOT EXISTS `atf_series` (
`atf_id` int(11) NOT NULL,
  `atf_prefix` varchar(255) DEFAULT NULL,
  `series` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atf_series`
--

INSERT INTO `atf_series` (`atf_id`, `atf_prefix`, `series`) VALUES
(1, 'BCD-2019', 1001),
(2, 'BCD-2019', 1002),
(3, '-2019', 1003),
(4, '-2019', 1004),
(5, 'BCD-2019', 1005),
(6, 'BCD-2019', 1006),
(7, 'BCD-2019', 1007),
(8, 'BCD-2019', 1008),
(9, 'BCD-2019', 1009),
(10, '-2019', 1010),
(11, 'BCD-2019', 1011),
(12, 'BCD-2019', 1012),
(13, 'BCD-2019', 1013),
(14, 'BCD-2019', 1014),
(15, 'BCD-2019', 1015),
(16, 'BCD-2019', 1016),
(17, 'BCD-2019', 1017),
(18, 'BCD-2019', 1018),
(19, 'BCD-2019', 1019),
(20, 'BCD-2019', 1020),
(21, '-2019', 1021),
(22, 'BCD-2019', 1022),
(23, 'BCD-2019', 1023),
(24, 'BCD-2019', 1024),
(25, 'BCD-2019', 1025),
(26, 'BCD-2019', 1026),
(27, 'BCD-2019', 1001),
(28, 'BCD-2019', 1027),
(29, 'BCD-2019', 1001),
(30, 'BCD-2019', 1028),
(31, 'BCD-2019', 1029),
(32, 'BCD-2019', 1030),
(33, 'BCD-2019', 1031),
(34, 'BCD-2019', 1032),
(35, 'BCD-2019', 1033),
(36, 'BCD-2019', 1034),
(37, 'BCD-2019', 1001),
(38, 'BCD-2019', 1001),
(39, 'CENPRI-B', 2019),
(40, 'CENPRI-B', 2019),
(41, 'CENPRI-B', 2019),
(42, 'CENPRI-B', 2019),
(43, 'CENPRI-B', 2019),
(44, 'CENPRI-B', 2020),
(45, 'CENPRI-B', 2020),
(46, 'CENPRI-B', 2020),
(47, 'CENPRI-B', 2020),
(48, 'CENPRI-B', 2020),
(49, 'CENPRI-B', 2020),
(50, 'CENPRI-B', 2020),
(51, 'CENPRI-B', 2020),
(52, 'CENPRI-B', 2020),
(53, 'CENPRI-B', 2020),
(54, 'CENPRI-B', 2020),
(55, 'CENPRI-B', 2020),
(56, 'CENPRI-B', 2020),
(57, 'CENPRI-B', 2020),
(58, 'CENPRI-B', 2020),
(59, 'CENPRI-B', 2020),
(60, 'CENPRI-B', 2020),
(61, 'CENPRI-B', 2020),
(62, 'CENPRI-B', 2020),
(63, 'CENPRI-B', 2020),
(64, 'CENPRI-B', 2020),
(65, 'CENPRI-B', 2020),
(66, 'CENPRI-B', 2020),
(67, 'CENPRI-B', 2020);

-- --------------------------------------------------------

--
-- Table structure for table `borrow_details`
--

CREATE TABLE IF NOT EXISTS `borrow_details` (
`bd_id` int(11) NOT NULL,
  `bh_id` int(11) NOT NULL DEFAULT '0',
  `et_id` int(11) NOT NULL DEFAULT '0',
  `ed_id` int(11) NOT NULL DEFAULT '0',
  `qty` int(11) NOT NULL DEFAULT '0',
  `returned` int(11) NOT NULL DEFAULT '0',
  `returned_date` varchar(20) DEFAULT NULL,
  `returned_by` int(11) NOT NULL DEFAULT '0',
  `return_qty` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `borrow_head`
--

CREATE TABLE IF NOT EXISTS `borrow_head` (
`bh_id` int(11) NOT NULL,
  `borrowed_by` int(11) NOT NULL DEFAULT '0',
  `borrowed_date` varchar(20) DEFAULT NULL,
  `borrow_series` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `create_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow_head`
--

INSERT INTO `borrow_head` (`bh_id`, `borrowed_by`, `borrowed_date`, `borrow_series`, `user_id`, `create_date`) VALUES
(1, 36, '2020-01-20', 'CENPRI-B-2020-01-1001', 1, '2020-01-20 15:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_series`
--

CREATE TABLE IF NOT EXISTS `borrow_series` (
`bseries_id` int(11) NOT NULL,
  `borrow_prefix` varchar(50) DEFAULT NULL,
  `series` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow_series`
--

INSERT INTO `borrow_series` (`bseries_id`, `borrow_prefix`, `series`) VALUES
(1, 'CENPRI-B-2020', '01');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`category_id` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Furniture, Fixtures and Equipment');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
`company_id` int(11) NOT NULL,
  `company_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`) VALUES
(1, 'CENPRI'),
(2, 'PROGEN'),
(3, 'Shoppers Guide');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
`currency_id` int(11) NOT NULL,
  `currency_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `currency_name`) VALUES
(1, 'PHP');

-- --------------------------------------------------------

--
-- Table structure for table `damage_info`
--

CREATE TABLE IF NOT EXISTS `damage_info` (
`damage_id` int(11) NOT NULL,
  `incident_date` varchar(20) DEFAULT NULL,
  `etdr_no` varchar(50) DEFAULT NULL,
  `activity` text,
  `et_id` int(11) NOT NULL DEFAULT '0',
  `ed_id` int(11) NOT NULL DEFAULT '0',
  `damage_location` text,
  `accountability` varchar(100) DEFAULT NULL,
  `incident_description` text,
  `equip_damage` text,
  `recommendation` text,
  `submitted_by` int(11) NOT NULL DEFAULT '0',
  `checked_by` int(11) NOT NULL DEFAULT '0',
  `noted_by` int(11) NOT NULL DEFAULT '0',
  `create_date` varchar(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `damage_info`
--

INSERT INTO `damage_info` (`damage_id`, `incident_date`, `etdr_no`, `activity`, `et_id`, `ed_id`, `damage_location`, `accountability`, `incident_description`, `equip_damage`, `recommendation`, `submitted_by`, `checked_by`, `noted_by`, `create_date`, `user_id`) VALUES
(1, '2019-12-17', 'CENPRI-B-2019-12-1001', 'Regulates Electric Power', 177, 233, 'Admin- Accounting Area', 'Gebby Jalandoni', 'It has an open wire and it flickers.', 'The device can''t give power to desktop due to the open wire.', 'Will refer the device to site to be checked and repaired.', 19, 31, 3, '2019-12-17 10:41:24', 5),
(2, '2019-10-31', 'CENPRI-B-2019-10-1001', 'Bacolod Office use', 210, 271, 'Purchasing area- Bacolod Office', 'Babylyn Providencia', 'The chair suddenly broke while Ms Babylyn was sitting.', 'Total damage;  Chair''s swivel base split broke ', 'For replacement.', 144, 12, 0, '2020-01-09 13:02:17', 5),
(3, '2018-03-21', 'CENPRI-B-2018-03-1001', 'Desk Lamp is often used for things such as reading, writing and working using a computer', 245, 302, 'Table of RCT', 'RCT/Genie Saludo', 'When Sir David turn over the desk lamp, he already told me that the item was already damaged.', 'Not charging/not functioning', 'Refer to technician', 28, 12, 12, '2020-01-16 20:26:49', 5);

-- --------------------------------------------------------

--
-- Table structure for table `damage_series`
--

CREATE TABLE IF NOT EXISTS `damage_series` (
`ds_id` int(11) NOT NULL,
  `damage_prefix` varchar(100) DEFAULT NULL,
  `series` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `damage_series`
--

INSERT INTO `damage_series` (`ds_id`, `damage_prefix`, `series`) VALUES
(1, 'CENPRI-B-2019', 12),
(2, 'CENPRI-B-2019', 10),
(3, 'CENPRI-B-2018', 3);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
`department_id` int(11) NOT NULL,
  `department_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
`employee_id` int(11) NOT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `location_id` int(11) NOT NULL DEFAULT '0',
  `aaf_no` varchar(100) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_name`, `department`, `location_id`, `aaf_no`, `position`, `contact_no`, `email`, `type`, `status`) VALUES
(1, 'Ma. Milagros Arana', 'Management', 1, 'CENPRI-B-1005', 'General Manager', '0917-5924080', '', 1, 0),
(2, 'Rhea Arsenio', 'Trading', 1, 'CENPRI-B-1021', 'Trader', '0920-6398529', '', 1, 0),
(3, 'Jonah Faye Benares', 'IT Department', 1, 'CENPRI-B-1038', 'Software Development Supervisor', '0932-4515369', '', 1, 0),
(4, 'Kervic Biñas', 'Purchasing', 0, NULL, 'Procurement Assistant', '0930-2357794', '', 1, 0),
(5, 'Joemarie Calibjo', 'Admin', 1, 'CENPRI-B-1037', 'Service Vehicle Driver', '0950-2900419', '', 1, 0),
(6, 'Maylen Cabaylo', 'Purchasing', 1, 'CENPRI-B-1010', 'Purchasing Officer', '09099491894/09234597487', '', 1, 0),
(7, 'Rey  Carbaquil', 'Admin', 1, 'CENPRI-B-1020', 'Service Vehicle Driver', '0912 5905319', '', 1, 0),
(8, 'Cristy Cesar', 'Accounting', 1, 'CENPRI-B-1014', 'Accounting Associate', '0916-3961389', '', 1, 0),
(9, 'Gretchen Danoy', 'Accounting', 1, 'CENPRI-B-1031', 'Accounting Supervisor', '0922-4386979', '', 1, 0),
(10, 'Merry Michelle Dato', 'Special Projects', 2, 'CENPRI-S-1018', 'Projects and Asset Management Assistant', '0920-5205418', '', 1, 0),
(11, 'Joemar De Los Santos', 'Trading', 1, 'CENPRI-B-1036', 'Lead Trader', '0923-4187139', '', 1, 0),
(12, 'Imelda Espera', 'Accounting / Finance', 1, 'CENPRI-B-1034', 'A/P & Credit Supervisor', '0918-6760758', '', 1, 0),
(13, 'Elaisa Jane Febrio', 'HR/Admin', 1, 'CENPRI-B-1018', 'HR Assistant', '0917-9941917', '', 1, 0),
(14, 'Jason Flor', 'IT Department', 1, 'CENPRI-B-1035', 'Software Development Assistant', '0939-6488141', '', 1, 0),
(15, 'Zara Joy Gabales', 'EMG-Billing', 1, 'CENPRI-B-1029', 'Billing Assistant', '0939-1159164', '', 1, 0),
(16, 'Relsie Gallo', '0', 1, 'CENPRI-B-1019', '0', '0', '', 1, 0),
(17, 'Celina Marie Grabillo', 'EMG-Billing', 1, 'CENPRI-B-1009', 'Billing & Settlement Officer', '0907-4494479', '', 1, 0),
(18, 'Nazario Shyde Jr. Ibañez', 'Trading', 1, 'CENPRI-B-1016', 'Trader', '0922-3271576', '', 1, 0),
(19, 'Gebby Jalandoni', 'Accounting', 1, 'CENPRI-B-1023', 'Accounting Assistant', '0909-9579077', '', 1, 0),
(20, 'Caesariane Jo', 'Trading', 1, 'CENPRI-B-1006', 'Trader', '0927-8212228', '', 1, 0),
(21, 'Lloyd Jamero', 'IT Department', 2, 'CENPRI-S-1006', 'IT Specialist', '0908-7636105', '', 1, 0),
(22, 'Annavi Lacambra', 'Accounting', 1, 'CENPRI-B-1003', 'Corporate Accountant', '0932-3649978', '', 1, 0),
(23, 'Ma. Erika Oquiana', 'Trading', 1, 'CENPRI-B-1004', 'Trader', '0912-4746470/09773640452', '', 1, 0),
(24, 'Charmaine Rei Plaza', 'Trading', 1, 'CENPRI-B-1011', 'Energy Market Analyst', '0948-9285185', '', 1, 0),
(25, 'Cresilda Mae Ramirez', 'Accounting', 1, 'CENPRI-B-1013', 'Internal Auditor', '0977-8215247', '', 1, 0),
(26, 'Melanie Rocha', 'Admin', 1, 'CENPRI-B-1012', 'Utility', '0910-4526879', '', 1, 0),
(27, 'Zyndyryn Rosales', 'Finance', 1, 'CENPRI-B-1030', 'Finance Supervisor', '0932-8737196', '', 1, 0),
(28, 'Genie Saludo', 'Shoppers Guide', 1, 'CENPRI-B-1024', 'Field Research Assistant', '09272257127/09454569188', '', 1, 0),
(29, 'Daisy Jane Sanchez', 'Trading', 1, 'CENPRI-B-1015', 'EMG Manager / WESM Compliance Officer', '0932-8773754', '', 1, 0),
(30, 'Rosemarie Sarroza', 'Trading', 1, 'CENPRI-B-1022', 'Trader', '0917-9512950', '', 1, 0),
(31, 'Stephine David Severino', 'IT Department', 1, 'CENPRI-B-1026', 'Software Development Assistant', '0977-7106914', '', 1, 0),
(32, 'Henry Sia', 'Engineering Dept.', 1, 'CENPRI-B-1033', 'Grid Integration Manager', '9177996939', '', 1, 0),
(33, 'Syndey Sinoro', 'HR/Admin', 1, 'CENPRI-B-1027', 'HR Supervisor', '0923-2802343', '', 1, 0),
(34, 'Marianita Tabilla', 'Finance', 1, 'CENPRI-B-1007', 'Finance Assistant', '0917-7793318', '', 1, 0),
(35, 'Krystal Gayle Tagalog', 'HR/Admin', 1, 'CENPRI-B-1063', 'Payroll Assistant', '0946-3348559', '', 1, 0),
(36, 'Hennelen Tanan', 'IT Department', 1, 'CENPRI-B-1032', 'IT Encoder ', '0945-5743745', '', 1, 0),
(37, 'Teresa Tan', 'Contracts & Compliance', 1, 'CENPRI-B-1028', 'Contracts & Compliance Asst.', '0923-6828813', '', 1, 0),
(38, 'Dary Mae Villas', 'Trading', 1, 'CENPRI-B-1017', 'Trader', '0930-7871989', '', 1, 0),
(39, 'Marlon Adorio', 'Electrical & Instrumentation', 2, 'CENPRI-S-1013', 'E & IC Technician', '0912-5896720', '', 1, 0),
(40, 'John Ezequiel Alejandro', 'Operations', 2, 'CENPRI-S-1058', 'Auxiliary Operator ', '0916-5321090', '', 1, 0),
(41, 'Carlito Alevio', 'Mechanical Maintenance', 2, 'CENPRI-S-1011', 'Plant Mechanic', '0926-8161359', '', 1, 0),
(42, 'Regina Alova', 'Trading', 2, 'CENPRI-S-1026', 'Operations Analyst', '09235607021 / 09485342153', '', 1, 0),
(43, 'Rebecca Alunan ', 'Trading', 2, 'CENPRI-S-1032', 'Performance Monitoring Supervisor', '0906-3425996', '', 1, 0),
(44, 'Fleur de Liz Ambong', 'Fuel Management', 2, 'CENPRI-S-1035', 'Fuel Management Asst.', '0909-4620177', '', 1, 0),
(45, 'Beverly  Ampog', 'Operations', 2, 'CENPRI-S-1009', 'Operations Analyst', '0995-3634548', '', 1, 0),
(46, 'Genaro Angulo', 'Electrical & Instrumentation', 2, 'CENPRI-S-1039', 'Electrical Supervisor', '09196745918', '', 1, 0),
(47, 'Rey Argawanon', 'Electrical & Instrumentation', 2, 'CENPRI-S-1030', 'Power Delivery & Technical Manager', '0917-8653566', '', 1, 0),
(48, 'Alona Arroyo', 'Operations', 2, 'CENPRI-S-1004', 'Operations Planner', '0919-3725318', '', 1, 0),
(49, 'Joemillan Baculio', 'Operations', 2, 'CENPRI-S-1056', 'Auxiliary Operator', '0906-8802652', '', 1, 0),
(50, 'Rashelle Joy Bating', 'Special Projects', 2, 'CENPRI-S-1023', 'Projects Coordinator Assistant', '0910-1980348', '', 1, 0),
(51, 'Gener Bawar', 'Machine Shop and Reconditioning', 2, 'CENPRI-S-1041', 'Machine Shop & Reconditioning Supervisor', '0920-2128998', '', 1, 0),
(52, 'Ruel Beato', 'Mechanical Maintenance', 2, 'CENPRI-S-1040', 'Plant Mechanic', '0939-2369794', '', 1, 0),
(53, 'Mary Grace Bugna', 'Accounting', 2, 'CENPRI-S-1014', 'Asset Management Asst.', '0930-7765706', '', 1, 0),
(54, 'Vency Cababat', 'Electrical & Instrumentation', 2, 'CENPRI-S-1048', ' E&IC Technician', '09267932911 / 09265638526', '', 1, 0),
(55, 'Rusty Canama', 'Mechanical Maintenance', 2, 'CENPRI-S-1042', 'Plant Mechanic', '0949-1547358', '', 1, 0),
(56, 'Exequil Corino', 'Operations', 2, 'CENPRI-S-1029', 'Engine Room Operator', '0920-6995646', '', 1, 0),
(57, 'Juanito Dagupan', 'Operations', 2, 'CENPRI-S-1060', 'Operation Shift Supervisor', '0918-6438993', '', 1, 0),
(58, 'Julyn May Divinagracia', 'HR/Admin', 2, 'CENPRI-S-1062', 'Admin Assistant', '0930-1553296/0916-6984461', '', 1, 0),
(59, 'Melfa Duis', 'Purchasing', 2, 'CENPRI-S-1016', 'Purchasing Assistant', '0927-4597157', '', 1, 0),
(60, 'Jerson Factolerin', 'HR/Admin', 2, 'CENPRI-S-1054', 'Utility', '0932-5420679', '', 1, 0),
(61, 'Julius Fernandez', 'Operations', 2, 'CENPRI-S-1061', 'Auxiliary Operator', '0918-2685507', '', 1, 0),
(62, 'Luisito Fortuno', 'Operations', 2, 'CENPRI-S-1007', 'Auxiliary Operator', '0908-3317408', '', 1, 0),
(63, 'Donna Gellada', 'Warehouse', 2, 'CENPRI-S-1025', 'Parts Inventory  Assistant', '0916-2779697', 'donna7.cenpri@gmail.com', 1, 0),
(64, 'Felipe, III Globert', 'Warehouse', 2, 'CENPRI-S-1034', 'Warehouse Assistant', '0948-7024664', '', 1, 0),
(65, 'Mikko Golvio', 'Electrical & Instrumentation', 2, 'CENPRI-S-1019', 'E&IC Technician', '0930-9363013', '', 1, 0),
(66, 'Eric Jabiniar', 'Management', 2, 'CENPRI-S-1028', 'Plant Director', '0917-8607244', '', 1, 0),
(67, 'Jushkyle Jambongana', 'IT Department', 2, 'CENPRI-S-1063', 'IT Assistant', '0912-3867454', '', 1, 0),
(68, 'Bobby  Jardiniano', 'HR/Admin', 2, 'CENPRI-S-1010', 'Service Vehicle Driver', '0933-3388374', '', 1, 0),
(69, 'Stephen Jardinico', 'Warehouse', 2, 'CENPRI-S-1046', 'Warehouse Assistant', '0912 922 1944', '', 1, 0),
(70, 'Joey Labanon', 'Operations', 2, 'CENPRI-S-1057', 'Auxiliary Operator Trainee', '0910-5787327', '', 1, 0),
(71, 'Roan Renz Liao', 'Warehouse', 2, 'CENPRI-S-1033', 'Parts Engineer', '0925-4887286', '', 1, 0),
(72, 'Gino Lovico', 'Machine Shop and Reconditioning', 2, 'CENPRI-S-1045', 'Foreman (Machine Shop & Recon)', '0999-8143307', '', 1, 0),
(73, 'Ricky Madeja', 'Admin', 2, 'CENPRI-S-1031', 'Safety Officer', '0918-6268028', '', 1, 0),
(74, 'Danilo Maglinte', 'Operations', 2, 'CENPRI-S-1020', 'Engine Room Operator', '0935-4046632', '', 1, 0),
(75, 'Alex Manilla Jr.', 'Fuel Management', 2, 'CENPRI-S-1001', 'Fuel Tender', '0999-7353561', '', 1, 0),
(76, 'Concordio Matuod', 'Electrical Department', 2, 'CENPRI-S-1015', 'Project Consultant', '0915-326-1829', '', 1, 0),
(77, 'Genielyne Mondejar', 'Admin', 2, 'CENPRI-S-1044', 'Pollution Control Officer  ', '0912-5356230', '', 1, 0),
(78, 'Francis Montero', 'Mechanical Maintenance', 2, 'CENPRI-S-1037', 'Plant Mechanic', '0918-2063492', '', 1, 0),
(79, 'Andro Ortega', 'Operations', 2, 'CENPRI-S-1005', 'Shift Supervisor Trainee', '0932-2400663', '', 1, 0),
(80, 'Joselito Panes', 'Mechanical Maintenance', 2, 'CENPRI-S-1059', 'Plant Mechanic', '0929-2629467', '', 1, 0),
(81, 'Nonito Pocong', 'Operations', 2, 'CENPRI-S-1021', 'Control Room Operator', '0933-6159620', '', 1, 0),
(82, 'Mario Dante Purisima', 'Operations', 2, 'CENPRI-S-1012', 'Shift Supervisor Trainee', '0927-1687549', '', 1, 0),
(83, 'Romeo Quiocson Jr.', 'Special Projects', 2, 'CENPRI-S-1036', 'Technical Assistant', '0927-6537369', '', 1, 0),
(84, 'Lawrence Vincent Roiles', 'Electrical & Instrumentation', 2, 'CENPRI-S-1002', 'E&IC Technician', '0936-6568781', '', 1, 0),
(85, 'Roy Sabit', 'Operations', 2, 'CENPRI-S-1038', 'Control Room Operator', '0947-9916563', '', 1, 0),
(86, 'Robert Sabando', 'Special Projects', 2, 'CENPRI-S-1053', 'Project Consultant', '0927-741-1950', '', 1, 0),
(87, 'Godfrey Stephen Samano', 'Operations', 2, 'CENPRI-S-1047', 'O&M Superintendent', '0908-6094932', '', 1, 0),
(88, 'Kennah Sasamoto', 'Testing Group', 2, 'CENPRI-S-1065', 'Test  Engineer', '0977-7842536', '', 1, 0),
(89, 'Iris Sixto', 'Admin', 2, 'CENPRI-S-1051', 'Site Facilities Supervisor', '0948-2732052', '', 1, 0),
(90, 'Kelwin Sarcauga', 'Operations', 2, 'CENPRI-S-1064', 'Engine Room Operator Trainee', '0932-1253131', '', 1, 0),
(91, 'Ranie Tabanao', '0', 2, 'CENPRI-S-1022', '0', '0', '', 1, 0),
(92, 'Alexander Tagarda', 'Operations', 2, 'CENPRI-S-1003', 'Control Room Operator', '0936-2138490', '', 1, 0),
(93, 'Ariel Tandoy', 'Warehouse', 2, 'CENPRI-S-1008', 'Driver', '0915-9555253', '', 1, 0),
(94, 'Ryan Tignero', 'Operations', 2, 'CENPRI-S-1043', 'Shift Supervisor Trainee', '0927-2885847', '', 1, 0),
(95, 'Elmer Torrijos', 'Mechanical Maintenance', 2, 'CENPRI-S-1027', 'Mechanical Maintenance Supervisor / Equipment & Parts Engr.', '0999 677 8341', '', 1, 0),
(96, 'Democrito Urnopia', 'Mechanical Maintenance', 2, 'CENPRI-S-1024', 'Plant Mechanic', '0930-8736393', '', 1, 0),
(97, 'Jobelle Villarias', 'Admin', 2, 'CENPRI-S-1055', 'Company Nurse', '0917-1595665', '', 1, 0),
(98, 'Melinda Aquino', 'Accounting', 2, 'CENPRI-S-1017', 'Accounting Assistant/ Bookkeeper', '0949-3005-813', '', 1, 0),
(99, 'Irish Dawn Torres', 'Admin', 2, 'CENPRI-S-1052', 'Site Admin Officer', '0932-8657926', '', 1, 0),
(100, 'Vincent Jed Depasupil', 'Operations', 2, 'CENPRI-S-1049', 'Auxiliary Operator', '', '', 1, 0),
(101, 'William Soltes', '', 2, 'CENPRI-S-1050', '', '', '', 1, 0),
(115, 'Silena Jomiller', 'Admin Department', 1, 'CENPRI-B-1025', 'Field Research Associate', NULL, NULL, 1, 0),
(118, 'Carlos Antonio Leonardia', 'Renewable Energy Department', 1, 'CENPRI-B-1008', 'Senior Project Engineer', NULL, NULL, 1, 0),
(119, 'Liza Marie Tasic', 'Shoppers Guide', 1, 'CENPRI-B-1002', '', NULL, NULL, 1, 0),
(120, 'Adrian Nemes', 'Shoppers Guide', 1, 'CENPRI-B-1001', '', NULL, NULL, 1, 0),
(121, 'IT Department', NULL, 1, 'CENPRI-B-1039', NULL, NULL, NULL, 2, 0),
(122, 'EMG-Billing', NULL, 1, 'CENPRI-B-1040', NULL, NULL, NULL, 2, 0),
(123, 'Board Room', NULL, 1, 'CENPRI-B-1041', NULL, NULL, NULL, 2, 0),
(124, 'Ladi Joy Bacong', 'Shoppers Guide', 1, 'CENPRI-B-1042', 'Social Media Marketing Assistant', NULL, NULL, 1, 0),
(125, 'Angelika Caballero', 'Shoppers Guide', 1, 'CENPRI-B-1043', '', NULL, NULL, 1, 0),
(126, 'Accounting Department', NULL, 1, 'CENPRI-B-1044', NULL, NULL, NULL, 2, 0),
(127, 'HR Department', NULL, 1, 'CENPRI-B-1045', NULL, NULL, NULL, 2, 0),
(128, 'Prency Francisco', 'HR/Admin', 1, 'CENPRI-B-1046', 'Admin Assistant Trainee', NULL, NULL, 1, 0),
(129, 'Rose Brenette Gaudite', 'Admin', 1, 'CENPRI-B-1047', '', NULL, NULL, 1, 0),
(130, 'Trading Department', NULL, 1, 'CENPRI-B-1048', NULL, NULL, NULL, 2, 0),
(131, 'Rowena Ricarse', 'Trading Department', 1, 'CENPRI-B-1049', 'WESM Market Coordinator', NULL, NULL, 1, 0),
(132, 'Glenn Paul Toledo', 'IT Department', 1, 'CENPRI-B-1050', 'IT Encoder', NULL, NULL, 1, 0),
(133, 'Aileen Tamano', 'Progen', 1, 'CENPRI-B-1051', 'Accounting Staff', NULL, NULL, 1, 0),
(134, 'Ivy Aizpuro', 'Finance', 1, 'CENPRI-B-1052', 'Finance Assistant', NULL, NULL, 1, 0),
(135, 'Purchasing Department', NULL, 1, 'CENPRI-B-1053', NULL, NULL, NULL, 2, 0),
(136, 'Engineering', NULL, 1, 'CENPRI-B-1054', NULL, NULL, NULL, 2, 0),
(137, 'Joshua Rey Diocson', 'Yooreka', 1, 'CENPRI-B-1055', '', NULL, NULL, 1, 0),
(138, 'Butch C. Dujenio', 'Shoppers Guide', 1, 'CENPRI-B-1056', 'Field Researcher Associate', NULL, NULL, 1, 0),
(139, 'Ladylyn Salavante', 'Finance', 1, 'CENPRI-B-1057', 'Finance Assistant', NULL, NULL, 1, 0),
(140, 'Crizeal Precious Marie Hilado', 'Renewable Energy Department', 1, 'CENPRI-B-1058', 'Renewable Energy Project Assistant Trainee', NULL, NULL, 1, 0),
(141, 'Sherny Mago', 'Accounting', 1, 'CENPRI-B-1059', 'Bookeeping Assistant', NULL, NULL, 1, 0),
(142, 'Ruth Jan Destacamento', 'Accounting', 1, 'CENPRI-B-1060', 'Internal Auditor', NULL, NULL, 1, 0),
(143, 'Admin', NULL, 1, 'CENPRI-B-1061', NULL, NULL, NULL, 2, 0),
(144, 'Babylyn C. Providencia', 'HR/Admin', 1, 'CENPRI-B-1062', 'HR Assistant', NULL, NULL, 1, 0),
(145, 'Yoorekka', NULL, 0, '', NULL, NULL, NULL, 2, 0),
(146, 'Ma. Beatrice Faye Lee', 'Yoorekka', 1, 'CENPRI-B-1064', 'SEM Assistant Trainee', NULL, NULL, 1, 0),
(147, 'Rayza Minoza', 'from Palawan', 1, 'CENPRI-B-1065', 'On the Job Trainee', NULL, NULL, 1, 0),
(148, 'Reena Catingub', 'from Palawan', 1, 'CENPRI-B-1065', 'On the Job Trainee', NULL, NULL, 1, 0),
(149, 'Eduardo Remy Suatengco', '', 1, 'CENPRI-B-1065', 'Consultant', NULL, NULL, 1, 0),
(150, 'Angela Shanice Reyes', 'Shoppers Guide', 1, 'CENPRI-B-1066', 'Content Writer', NULL, NULL, 1, 0),
(151, 'Jann Ray Romulo Javier', 'Shoppers Guide', 1, 'CENPRI-B-1067', 'Search Engine Marketing Supervisor', NULL, NULL, 1, 0),
(152, 'Alma Lucerna', 'Renewable Energy Department', 1, 'CENPRI-B-1068', 'Regulatory Assistant', NULL, NULL, 1, 0),
(153, 'Ryan Oliver Bricia', 'Trading Department', 1, 'CENPRI-B-1069', 'Trader', NULL, NULL, 1, 0),
(154, 'Haziel Aplaon', 'Accounting', 1, 'CENPRI-B-1070', 'Assistant Accountant', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee_inclusion`
--

CREATE TABLE IF NOT EXISTS `employee_inclusion` (
`ei_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `child_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_inclusion`
--

INSERT INTO `employee_inclusion` (`ei_id`, `parent_id`, `child_id`) VALUES
(1, 121, 36),
(2, 121, 3),
(3, 121, 14),
(4, 121, 31),
(5, 122, 15),
(6, 122, 17),
(7, 127, 0),
(8, 127, 35),
(9, 127, 33),
(10, 127, 13),
(11, 130, 11),
(12, 130, 2),
(13, 130, 18),
(14, 130, 24),
(15, 130, 38),
(16, 130, 30),
(17, 123, 33),
(18, 135, 4),
(19, 135, 6),
(20, 136, 118),
(21, 143, 0),
(22, 143, 128),
(23, 143, 13),
(24, 126, 8),
(25, 126, 19),
(26, 126, 142),
(27, 127, 128),
(28, 127, 144),
(29, 130, 20),
(30, 130, 23),
(31, 130, 153);

-- --------------------------------------------------------

--
-- Table structure for table `employee_series`
--

CREATE TABLE IF NOT EXISTS `employee_series` (
`empser_id` int(11) NOT NULL,
  `aaf_prefix` varchar(100) DEFAULT NULL,
  `series` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_series`
--

INSERT INTO `employee_series` (`empser_id`, `aaf_prefix`, `series`) VALUES
(1, 'CENPRI-S', 1001),
(2, 'CENPRI-B', 1001),
(3, 'CENPRI-S', 1002),
(4, 'CENPRI-S', 1003),
(5, 'CENPRI-B', 1002),
(6, 'CENPRI-S', 1004),
(7, 'CENPRI-S', 1005),
(8, 'CENPRI-S', 1006),
(9, 'CENPRI-B', 1003),
(10, 'CENPRI-S', 1007),
(11, 'CENPRI-S', 1008),
(12, 'CENPRI-B', 1004),
(13, 'CENPRI-S', 1009),
(14, 'CENPRI-B', 1005),
(15, 'CENPRI-S', 1010),
(16, 'CENPRI-B', 1006),
(17, 'CENPRI-B', 1007),
(18, 'CENPRI-S', 1011),
(19, 'CENPRI-S', 1012),
(20, 'CENPRI-B', 1008),
(21, 'CENPRI-S', 1013),
(22, 'CENPRI-S', 1014),
(23, 'CENPRI-B', 1009),
(24, 'CENPRI-B', 1010),
(25, 'CENPRI-B', 1011),
(26, 'CENPRI-B', 1012),
(27, 'CENPRI-S', 1015),
(28, 'CENPRI-S', 1016),
(29, 'CENPRI-B', 1013),
(30, 'CENPRI-S', 1017),
(31, 'CENPRI-B', 1014),
(32, 'CENPRI-S', 1018),
(33, 'CENPRI-B', 1015),
(34, 'CENPRI-S', 1019),
(35, 'CENPRI-B', 1016),
(36, 'CENPRI-S', 1020),
(37, 'CENPRI-S', 1021),
(38, 'CENPRI-S', 1022),
(39, 'CENPRI-S', 1023),
(40, 'CENPRI-B', 1017),
(41, 'CENPRI-S', 1024),
(42, 'CENPRI-S', 1024),
(43, 'CENPRI-S', 1025),
(44, 'CENPRI-S', 1026),
(45, 'CENPRI-B', 1018),
(46, 'CENPRI-S', 1027),
(47, 'CENPRI-B', 1019),
(48, 'CENPRI-S', 1028),
(49, 'CENPRI-B', 1020),
(50, 'CENPRI-S', 1029),
(51, 'CENPRI-S', 1030),
(52, 'CENPRI-B', 1021),
(53, 'CENPRI-S', 1031),
(54, 'CENPRI-S', 1032),
(55, 'CENPRI-S', 1033),
(56, 'CENPRI-S', 1034),
(57, 'CENPRI-S', 1034),
(58, 'CENPRI-S', 1035),
(59, 'CENPRI-S', 1036),
(60, 'CENPRI-S', 1037),
(61, 'CENPRI-B', 1022),
(62, 'CENPRI-B', 1023),
(63, 'CENPRI-S', 1038),
(64, 'CENPRI-S', 1039),
(65, 'CENPRI-S', 1040),
(66, 'CENPRI-S', 1041),
(67, 'CENPRI-S', 1042),
(68, 'CENPRI-B', 1024),
(69, 'CENPRI-S', 1043),
(70, 'CENPRI-S', 1044),
(71, 'CENPRI-B', 1025),
(72, 'CENPRI-S', 1045),
(73, 'CENPRI-S', 1046),
(74, 'CENPRI-S', 1047),
(75, 'CENPRI-B', 1026),
(76, 'CENPRI-B', 1027),
(77, 'CENPRI-B', 1028),
(78, 'CENPRI-S', 1048),
(79, 'CENPRI-S', 1049),
(80, 'CENPRI-S', 1050),
(81, 'CENPRI-B', 1029),
(82, 'CENPRI-B', 1030),
(83, 'CENPRI-B', 1031),
(84, 'CENPRI-B', 1032),
(85, 'CENPRI-B', 1033),
(86, 'CENPRI-B', 1034),
(87, 'CENPRI-S', 1051),
(88, 'CENPRI-S', 1051),
(89, 'CENPRI-S', 1052),
(90, 'CENPRI-S', 1053),
(91, 'CENPRI-B', 1035),
(92, 'CENPRI-S', 1054),
(93, 'CENPRI-S', 1055),
(94, 'CENPRI-B', 1036),
(95, 'CENPRI-B', 1037),
(96, 'CENPRI-S', 1056),
(97, 'CENPRI-S', 1057),
(98, 'CENPRI-S', 1058),
(99, 'CENPRI-B', 1038),
(100, 'CENPRI-S', 1059),
(101, 'CENPRI-S', 1060),
(102, 'CENPRI-S', 1061),
(103, 'CENPRI-S', 1062),
(104, 'CENPRI-S', 1063),
(105, 'CENPRI-S', 1064),
(106, 'CENPRI-S', 1065),
(107, 'CENPRI-B', 1039),
(108, 'CENPRI-B', 1040),
(109, 'CENPRI-B', 1041),
(110, 'CENPRI-B', 1042),
(111, 'CENPRI-B', 1043),
(112, 'CENPRI-B', 1044),
(113, 'CENPRI-B', 1045),
(114, 'CENPRI-B', 1046),
(115, 'CENPRI-B', 1047),
(116, 'CENPRI-B', 1048),
(117, 'CENPRI-B', 1049),
(118, 'CENPRI-B', 1050),
(119, 'CENPRI-B', 1051),
(120, 'CENPRI-B', 1052),
(121, 'CENPRI-B', 1053),
(122, 'CENPRI-B', 1052),
(123, 'CENPRI-B', 1054),
(124, 'CENPRI-B', 1025),
(125, 'CENPRI-B', 1055),
(126, 'CENPRI-B', 1056),
(127, 'CENPRI-B', 1057),
(128, 'CENPRI-B', 1008),
(129, 'CENPRI-B', 1058),
(130, 'CENPRI-B', 1059),
(131, 'CENPRI-B', 1060),
(132, 'CENPRI-B', 1060),
(133, 'CENPRI-B', 1059),
(134, 'CENPRI-B', 1061),
(135, 'CENPRI-B', 1062),
(136, 'CENPRI-B', 1063),
(137, 'CENPRI-B', 1064),
(138, 'CENPRI-B', 1049),
(139, 'CENPRI-B', 1042),
(140, 'CENPRI-B', 1049),
(141, 'CENPRI-B', 1049),
(142, 'CENPRI-B', 1049),
(143, 'CENPRI', 0),
(144, 'CENPRI', 0),
(145, 'CENPRI-B', 1065),
(146, 'CENPRI-B', 1066),
(147, 'CENPRI-B', 1067),
(148, 'CENPRI-B', 1068),
(149, 'CENPRI-B', 1069),
(150, 'CENPRI-B', 1070),
(151, 'CENPRI-B', 1024),
(152, 'CENPRI-B', 1051);

-- --------------------------------------------------------

--
-- Table structure for table `et_details`
--

CREATE TABLE IF NOT EXISTS `et_details` (
`ed_id` int(11) NOT NULL,
  `et_id` int(11) NOT NULL DEFAULT '0',
  `set_id` int(11) NOT NULL DEFAULT '0',
  `physical_condition` text,
  `company_id` int(11) NOT NULL DEFAULT '0',
  `rack_id` int(11) NOT NULL DEFAULT '0',
  `placement_id` int(11) NOT NULL DEFAULT '0',
  `serial_no` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `unit_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(50) DEFAULT NULL,
  `currency_id` int(11) NOT NULL DEFAULT '0',
  `acquisition_date` varchar(20) DEFAULT NULL,
  `date_issued` varchar(20) DEFAULT NULL,
  `remarks` text,
  `asset_control_no` varchar(50) DEFAULT NULL,
  `damage` int(11) NOT NULL DEFAULT '0',
  `beyond_repair` int(11) NOT NULL DEFAULT '0',
  `borrowed` int(11) NOT NULL DEFAULT '0',
  `acquired_by` varchar(50) DEFAULT NULL,
  `picture1` varchar(255) DEFAULT NULL,
  `picture2` varchar(255) DEFAULT NULL,
  `picture3` varchar(255) DEFAULT NULL,
  `change_location` int(11) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL DEFAULT '0',
  `lost` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `et_details`
--

INSERT INTO `et_details` (`ed_id`, `et_id`, `set_id`, `physical_condition`, `company_id`, `rack_id`, `placement_id`, `serial_no`, `brand`, `model`, `type`, `unit_price`, `currency`, `currency_id`, `acquisition_date`, `date_issued`, `remarks`, `asset_control_no`, `damage`, `beyond_repair`, `borrowed`, `acquired_by`, `picture1`, `picture2`, `picture3`, `change_location`, `location_id`, `lost`) VALUES
(1, 1, 0, '1', 0, 0, 3, '', '', '', '', '0.00', NULL, 0, '', '2019-09-06', 'Previous accountability of Ms Cresilda Ramirez.', 'FFE-FUR-BCD-1016', 0, 0, 0, '', '', '', '', 0, 0, 0),
(2, 2, 0, '1', 0, 0, 3, '', '', '', '', '0.00', NULL, 0, '', '2019-09-06', 'Previous accountability of Ms Cresilda Ramirez.', 'FFE-FUR-BCD-1017', 0, 0, 0, '', '', '', '', 0, 0, 0),
(3, 5, 0, '2', 0, 0, 5, '190500349', 'Fujidenzo', 'RB-18HS', '1.8 cu. ft.', '5033.10', NULL, 1, '2019-09-24', '2019-09-24', 'DR No.2019-Admin-140; PR No.2019-Admin-81; PO No. 2019-Admin-123; CSI No. 341682', 'FFE-APP-BCD-1003', 0, 0, 0, 'Pos Marketing Enterprises, Inc', '190500349-1.jpeg', '190500349-2.jpeg', '', 0, 0, 0),
(4, 6, 0, '2', 0, 0, 6, '547801183900356', 'Prolink', 'PRO1201SFC', '', '3890.00', NULL, 1, '2019-09-25', '2019-09-25', 'DR No. 2019-Admin-142; PR No. IT-08152019-94; PO No. 2019-Admin-124; CSI No. 0098', 'FFE- COMP-BCD-1273', 0, 0, 0, 'Teranova Computers', '', '', '', 0, 0, 0),
(5, 7, 0, '2', 1, 0, 13, '', 'Huntkey', '', '19V- 40W', '975.00', NULL, 1, '2019-09-25', '2019-09-25', 'DR No. 2019-Admin-143; PR No. IT-01282019-91; PO No. 2019-Admin-125; with 3 mos warranty;  Sales Inv. No. 0043253;  Voltage Range: 18V- 20V', 'FFE- COMP-BCD-1274', 0, 0, 0, 'Silicon Valley', '-1.jpeg', '-2.jpeg', '', 0, 0, 0),
(16, 10, 0, '1', 0, 0, 0, '', 'Max', 'HD-50/50R', '', '0.00', NULL, 0, '', '2019-09-06', 'Previous accountability of Cresilda Ramirez.', 'FFE- SUP-BCD-1001', 0, 0, 0, '', '', '', '', 0, 0, 0),
(18, 13, 0, '1', 0, 0, 8, '', 'Coby Plus', '', 'with Sim card, earphone and charger, apple green c', '0.00', NULL, 0, '', '', '', 'FFE-COM-BCD-1001', 0, 0, 0, '', '', '', '', 0, 0, 0),
(19, 14, 0, '2', 0, 0, 0, 'AQLK51A005927', 'AOC', 'E1670SW', '', '2950.00', NULL, 1, '2019-09-18', '2019-09-18', 'DR No.2019-Admin-138; PR No. IT-01282019-80; PO No. 2019-Admin-121; Sales Inv. no. 26256', 'FFE- COMP-BCD-1275', 0, 0, 0, 'MF Computer Solution', '', '', '', 0, 0, 0),
(20, 16, 10, '3', 0, 0, 7, '', 'Made in Taiwan', 'GM-1601E', '', '0.00', NULL, 0, '', '', 'Turned by Engr. Marvin Ambos', 'FFE- SUP-BCD-1002', 0, 0, 0, '', '', '', '', 0, 0, 0),
(21, 15, 10, '3', 0, 0, 7, '', 'Made in Taiwan', 'GM-160E', '', '0.00', NULL, 0, '', '', '', 'FFE- SUP-BCD-1003', 0, 0, 0, '', '', '', '', 0, 0, 0),
(22, 26, 11, '3', 0, 0, 7, '', '', '', '', '0.00', NULL, 0, '', '', 'Turned over by Engr Marvin Ambos', 'FFE-EQU-BCD-1014', 0, 0, 0, '', '', '', '', 0, 0, 0),
(23, 27, 0, '2', 0, 0, 5, 'KMCN29191', 'Canon', 'G2010', 'Continuous Ink', '7250.00', NULL, 1, '2019-09-18', '2019-09-18', 'DR No. 2019-Admin-137; PR No. 2019-Admin-68; PO No. 2019-Admin-120; Sales Inv No. 40427', 'FFE-EQU-BCD-1015', 0, 0, 0, 'Bacolod Sure Computer', '', '', '', 0, 0, 0),
(24, 28, 0, '2', 0, 0, 1, 'SB50K021901421', 'Devant', '', '', '0.00', NULL, 1, '', '2019-08-01', 'DR No. 2019-Admin-116; PO No. 2019-Admin-87; PR No. 2019-Admin-44; Sales Inv No. 44442', 'FFE-APP-BCD-1004', 0, 0, 0, 'Imperial Appliance Plaza', '', '', '', 0, 0, 0),
(25, 29, 11, '2', 0, 0, 5, '65UHV300A121800160', 'Devant', '', 'with free wall mount bracket antenna', '0.00', NULL, 0, '', '2019-08-01', 'DR No. 2019-Admin-111; PO No. 2019-Admin-87; PR No. 2019-Admin-44, Sales Inv. No. 44442', 'FFE-APP-BCD-1005', 0, 0, 0, 'Imperial Appliance Plaza', '', '', '', 0, 0, 0),
(26, 30, 0, '2', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '2019-08-02', 'DR No. 2019-Admin-109; PO No. 2019-Admin-98; PR No. 2019-Admin-48; Sales Inv. 594387', 'FFE- SUP-BCD-1004', 0, 0, 0, 'Bacolod China Mart', '', '', '', 0, 0, 0),
(27, 32, 0, '2', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '2019-08-02', 'DR No. 2019-Admin-110; PO No. 2019-Admin-97; PR No. 2019-Admin-48; Sales Inv No. 594387', 'FFE- SUP-BCD-1005', 0, 0, 0, 'New China Enterprises', '', '', '', 0, 0, 0),
(28, 33, 0, '2', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '2019-08-02', 'DR No. 2019-Admin-110; PO No. 2019-Admin-97; PR No. 2019-Admin-48; Sales Inv. No. 594387', 'FFE- SUP-BCD-1006', 0, 0, 0, 'New China Enterprises', '', '', '', 0, 0, 0),
(29, 34, 0, '2', 0, 0, 0, '', 'Ruby', '', '', '435.00', NULL, 1, '2019-09-13', '2019-09-13', 'DR No. 2019-Admin-136; PR No. 2019-Admin-61; PO No. 2019-Admin-119; Sales Inv. No.71447', 'FFE-FUR-BCD-1020', 0, 0, 0, 'Ravson Enterprises', '', '', '', 0, 0, 0),
(30, 34, 0, '2', 0, 0, 0, '', 'Ruby', '', '', '435.00', NULL, 1, '2019-09-13', '2019-09-13', '', 'FFE-FUR-BCD-1021', 0, 0, 0, 'Ravson Enterprises', '', '', '', 0, 0, 0),
(31, 34, 0, '2', 0, 0, 0, '', 'Ruby', '', '', '435.00', NULL, 1, '2019-09-13', '2019-09-13', '', 'FFE-FUR-BCD-1022', 0, 0, 0, 'Ravson Enterprises', '', '', '', 0, 0, 0),
(32, 34, 0, '2', 0, 0, 0, '', 'Ruby', '', '', '435.00', NULL, 1, '2019-09-13', '2019-09-13', '', 'FFE-FUR-BCD-1023', 0, 0, 0, 'Ravson Enterprises', '', '', '', 0, 0, 0),
(33, 34, 0, '2', 0, 0, 0, '', 'Ruby', '', '', '435.00', NULL, 1, '2019-09-13', '2019-09-13', '', 'FFE-FUR-BCD-1024', 0, 0, 0, 'Ravson Enterprises', '', '', '', 0, 0, 0),
(34, 34, 0, '2', 0, 0, 0, '', 'Ruby', '', '', '435.00', NULL, 1, '2019-09-13', '2019-09-13', '', 'FFE-FUR-BCD-1025', 0, 0, 0, 'Ravson Enterprises', '', '', '', 0, 0, 0),
(35, 34, 0, '2', 0, 0, 0, '', 'Ruby', '', '', '435.00', NULL, 1, '2019-09-13', '2019-09-13', '', 'FFE-FUR-BCD-1026', 0, 0, 0, 'Ravson Enterprises', '', '', '', 0, 0, 0),
(36, 34, 0, '2', 0, 0, 0, '', 'Ruby', '', '', '435.00', NULL, 1, '2019-09-13', '2019-09-13', '', 'FFE-FUR-BCD-1027', 0, 0, 0, 'Ravson Enterprises', '', '', '', 0, 0, 0),
(37, 34, 0, '2', 0, 0, 0, '', 'Ruby', '', '', '435.00', NULL, 1, '2019-09-13', '2019-09-13', '', 'FFE-FUR-BCD-1028', 0, 0, 0, 'Ravson Enterprises', '', '', '', 0, 0, 0),
(38, 34, 0, '2', 0, 0, 0, '', 'Ruby', '', '', '435.00', NULL, 0, '2019-09-13', '2019-09-13', '', 'FFE-FUR-BCD-1029', 0, 0, 0, 'Ravson Enterprises', '', '', '', 0, 0, 0),
(39, 35, 0, '2', 0, 0, 9, 'NS40ZLB20L', 'Motolite Gold MF', '', '', '0.00', NULL, 0, '2019-08-27', '2019-08-27', 'DR No. 2019-Admin-128; PR No. WHR-249-2019; PO No. 2019-Admin-114, Sales Inv. No. 47672', 'FFE-EQU-BCD-1016', 0, 0, 0, 'Samson Merchandising Inc.', '', '', '', 0, 0, 0),
(40, 36, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1038', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', 'DR No. HRAD 2018-021; PR No. HRAD 2018-009; PO No. 2017 RGA-027; SI No. 000021940', 'FFE-HOU-BCD-1038', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(41, 36, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1039', '', '', '', '0.00', NULL, 0, '2018-04-28', '2017-04-28', '', 'FFE-HOU-BCD-1039', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(42, 36, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1040', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1040', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(43, 36, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1041', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1041', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(44, 36, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1042', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1042', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(45, 36, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-043', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1043', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(46, 36, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1044', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1044', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(47, 36, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1045', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1045', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(48, 36, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1046', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1046', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(49, 36, 0, '2', 1, 0, 12, 'FFE-FFE-HOU-BCD-1047', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1047', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(50, 36, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1048', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1048', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(51, 36, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1049', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1049', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(52, 37, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1050', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', 'DR No. HRAD 2018-021; PR No. HRAD 2018-009;  PO No. 2017 RGA- 027, SI No. 000021940', 'FFE-HOU-BCD-1050', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(53, 37, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1051', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1051', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(54, 37, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1052', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1052', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(55, 37, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1053', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1053', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(56, 37, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1054', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1054', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(57, 37, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1055', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1055', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(58, 37, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1056', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1056', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(59, 37, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1057', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1057', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(60, 37, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1058', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1058', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(61, 37, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1059', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1059', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(62, 37, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1060', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1060', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(63, 37, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1061', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1061', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(64, 38, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1062', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', 'DR No.HRAD 2018-021; PR No. HRAD 2018-009; PO No. 2017 RGA-027', 'FFE-HOU-BCD-1062', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(65, 38, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1063', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1063', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(66, 38, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1064', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1064', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(67, 38, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1065', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1065', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(68, 38, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1066', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1066', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(69, 38, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1067', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1067', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(70, 38, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1068', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1068', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(71, 38, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1069', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1069', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(72, 38, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1070', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1070', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(73, 38, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1071', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1071', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(74, 38, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1072', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1072', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(75, 38, 0, '2', 1, 0, 12, 'FFE-HOU-BCD-1073', '', '', '', '0.00', NULL, 0, '2018-04-28', '2018-04-28', '', 'FFE-HOU-BCD-1073', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(76, 40, 0, '2', 0, 0, 5, '2192079004295', 'TP Link', 'Archer T2UH AC600', 'USB', '820.00', NULL, 1, '2018-09-26', '2019-09-26', 'Dimensions: 1.6x0.7x0.3 in.;  DR No. 2019-Admin-145; PR No. IT-09192019-95; Direct Purchased; CSI No. 40448', 'FFE- COMP-BCD-1276', 0, 0, 0, 'Bacolod Sure Computer', '', '', '', 0, 0, 0),
(79, 43, 0, '2', 0, 0, 0, '', '', '', '', '36.00', NULL, 1, '', '2019-10-03', 'DR No. 2019-Admin-155; PR No. 2019-Admin-73; PO No. 2019-Admin-137;', 'FFE- SUP-BCD-1007', 0, 0, 0, 'New China Enterprises', '', '', '', 0, 0, 0),
(81, 45, 0, '2', 1, 0, 3, 'FFE- SUP-BCD-1009', 'MonoMax', '', 'Stainless Steel, Black Handle', '36.00', NULL, 1, '2019-11-13', '2019-10-02', 'DR No. 2019-Admin-155; PR No. 2019-Admin-73; PO No. 2019-Admin-137;  CSI No. 700296', 'FFE- SUP-BCD-1009', 0, 0, 0, 'New China Enterprises', 'FFE- SUP-BCD-1009-1.jpg', '', '', 0, 0, 0),
(86, 51, 0, '2', 0, 0, 5, '', '', '', '', '160.00', NULL, 1, '', '', 'DR No. 2019-Admin-153; PR No. 2019-Admin-73; PO No. 2019-Admin- 136; ', 'FFE- SUP-BCD-1014', 0, 0, 0, 'Sunrise Marketing', '-1.jpg', '-2.jpg', '', 0, 0, 0),
(93, 58, 0, '2', 0, 0, 5, '', '', '', '', '38.00', NULL, 1, '2019-09-28', '2019-09-28', 'DR No. 2019-Admin-147; PR No. 2019-Admin-74; CSI No. 997895', 'FFE-HOU-BCD-1074', 0, 0, 0, 'New Season Trading', '', '', '', 0, 0, 0),
(94, 58, 0, '2', 0, 0, 5, '', '', '', '', '38.00', NULL, 1, '2019-09-28', '2019-09-28', '', 'FFE-HOU-BCD-1075', 0, 0, 0, 'New Season Trading', '', '', '', 0, 0, 0),
(95, 58, 0, '2', 0, 0, 5, '', '', '', '', '38.00', NULL, 1, '2019-09-28', '2019-09-28', '', 'FFE-HOU-BCD-1076', 0, 0, 0, 'New Season Trading', '', '', '', 0, 0, 0),
(96, 58, 0, '2', 0, 0, 5, '', '', '', '', '38.00', NULL, 1, '2019-09-28', '2019-09-28', '', 'FFE-HOU-BCD-1077', 0, 0, 0, 'New Season Trading', '', '', '', 0, 0, 0),
(97, 58, 0, '2', 0, 0, 5, '', '', '', '', '38.00', NULL, 1, '2019-09-28', '2019-09-28', '', 'FFE-HOU-BCD-1078', 0, 0, 0, 'New Season Trading', '', '', '', 0, 0, 0),
(98, 58, 0, '2', 0, 0, 5, '', '', '', '', '38.00', NULL, 1, '2019-09-28', '2019-09-28', '', 'FFE-HOU-BCD-1079', 0, 0, 0, 'New Season Trading', '', '', '', 0, 0, 0),
(99, 59, 0, '2', 0, 0, 5, '', '', '', 'White', '75.00', NULL, 1, '2019-09-28', '2019-09-28', 'DR No. 2019-Admin-147; PR No. 2019-Admin-74; CSI No.997895', 'FFE-HOU-BCD-1080', 0, 0, 0, 'New Season Trading', '', '', '', 0, 0, 0),
(100, 59, 0, '2', 0, 0, 5, '', '', '', 'White', '75.00', NULL, 1, '2019-09-28', '2019-09-28', '', 'FFE-HOU-BCD-1081', 0, 0, 0, 'New Season Trading', '', '', '', 0, 0, 0),
(101, 59, 0, '2', 0, 0, 5, '', '', '', 'White', '75.00', NULL, 1, '2019-09-28', '2019-09-28', '', 'FFE-HOU-BCD-1082', 0, 0, 0, 'New Season Trading', '', '', '', 0, 0, 0),
(102, 59, 0, '2', 0, 0, 5, '', '', '', 'White', '75.00', NULL, 1, '2019-09-28', '2019-09-28', '', 'FFE-HOU-BCD-1083', 0, 0, 0, 'New Season Trading', '', '', '', 0, 0, 0),
(103, 59, 0, '2', 0, 0, 5, '', '', '', 'White', '75.00', NULL, 1, '2019-09-28', '2019-09-28', '', 'FFE-HOU-BCD-1084', 0, 0, 0, 'New Season Trading', '', '', '', 0, 0, 0),
(104, 59, 0, '2', 0, 0, 5, '', '', '', 'White', '75.00', NULL, 1, '2019-09-28', '2019-09-28', '', 'FFE-HOU-BCD-1085', 0, 0, 0, 'New Season Trading', '', '', '', 0, 0, 0),
(105, 60, 0, '2', 0, 0, 5, '', '', '', '', '34.00', NULL, 1, '2019-09-28', '2019-09-28', 'DR No. 2019-Admin-147; PR No. 2019-Admin-74; CSI No.997895', 'FFE-HOU-BCD-1086', 0, 0, 0, 'New Season Trading', '', '', '', 0, 0, 0),
(106, 60, 0, '2', 0, 0, 5, '', '', '', '', '34.00', NULL, 1, '2019-09-28', '2019-09-28', '', 'FFE-HOU-BCD-1087', 0, 0, 0, 'New Season Trading', '', '', '', 0, 0, 0),
(107, 60, 0, '2', 0, 0, 5, '', '', '', '', '34.00', NULL, 1, '2019-09-28', '2019-09-28', '', 'FFE-HOU-BCD-1088', 0, 0, 0, 'New Season Trading', '', '', '', 0, 0, 0),
(108, 60, 0, '2', 0, 0, 5, '', '', '', '', '34.00', NULL, 1, '2019-09-28', '2019-09-28', '', 'FFE-HOU-BCD-1089', 0, 0, 0, 'New Season Trading', '', '', '', 0, 0, 0),
(109, 60, 0, '2', 0, 0, 5, '', '', '', '', '34.00', NULL, 1, '2019-09-28', '2019-09-28', '', 'FFE-HOU-BCD-1090', 0, 0, 0, 'New Season Trading', '', '', '', 0, 0, 0),
(110, 60, 0, '2', 0, 0, 5, '', '', '', '', '34.00', NULL, 1, '2019-09-28', '2019-09-28', '', 'FFE-HOU-BCD-1091', 0, 0, 0, 'New Season Trading', '', '', '', 0, 0, 0),
(111, 61, 0, '2', 0, 0, 5, '', 'Hi-top', '', '', '469.00', NULL, 1, '2019-09-28', '2019-09-28', 'DR No. 2019-Admin-147; PR No. 2019-Admin-74;  CSI No.997895', 'FFE-HOU-BCD-1092', 0, 0, 0, 'New Season Trading', '', '', '', 0, 0, 0),
(112, 62, 0, '1', 0, 0, 3, '', 'Mapes', '', '', '0.00', NULL, 0, '', '2019-09-02', 'Previous accountability of Ms Gretchen Danoy', 'FFE- SUP-BCD-1017', 0, 0, 0, '', '', '', '', 0, 0, 0),
(113, 63, 0, '2', 0, 0, 8, '1901001751', 'Huntkey', 'HKA06519533-8J', 'ES Ultra Edition', '1395.00', NULL, 1, '2019-09-20', '2019-10-05', 'Cash Sales Inv. No. 190925, 3 months warranty', 'FFE- COMP-BCD-1279', 0, 0, 0, 'I.E. Creative Computers- SM Bacolod Branch', '', '', '', 0, 0, 0),
(114, 64, 0, '3', 1, 0, 3, 'FFE- SUP-BCD-1018', 'MonoMax', '', 'Stainless Steel, Black Handle', '36.00', NULL, 1, '2019-11-13', '2019-10-07', 'New. P.O.No. 2019-ADMIN-137; CSI No. 700296', 'FFE- SUP-BCD-1018', 0, 0, 0, '', 'FFE- SUP-BCD-1018-1.jpg', '', '', 0, 0, 0),
(116, 66, 0, '0', 0, 0, 0, '', 'Vnzane', 'VN-U602', 'A male to B male cable cord', '350.00', NULL, 1, '2019-10-08', '2019-10-08', 'Newly purchased. DR 2019-Admin-152; PR No. IT-01282019-76; PO No. 2019-Admin-135; CSI No. 10493', 'FFE- COMP-BCD-1280', 0, 0, 0, 'Teranova Computer Sales & Services', '', '', '', 0, 0, 0),
(117, 67, 0, '0', 0, 0, 11, '19ER5193', 'Gaston', 'GT05619', '', '0.00', NULL, 0, '2019-10-08', '2019-10-08', 'Newly purchased. DR No. 2019-Admin-151; PR No. IT-01282019-92; PO No. 2019-Admin-131; CSI No. 40475', 'FFE- COMP-BCD-1281', 0, 0, 0, 'Bacolod Sure Computer Inc', '', '', '', 0, 0, 0),
(118, 68, 0, '0', 1, 0, 5, 'FFE-FUR-BCD-1031', '', '', '', '2762.50', NULL, 1, '2019-10-16', '2019-10-22', 'Newly Purchased, DR No. 2019-Admin-157; PR No. 2019-Admin-51; PO No. 2019-Admin-139, Sales Invoice No.49734; OR No. 00-048165', 'FFE-FUR-BCD-1031', 0, 0, 0, 'Mandaue Foam Industries Inc.', '', '', '', 0, 0, 0),
(119, 69, 0, 'Newly purchased', 0, 0, 5, '', 'MGK', 'MO7035', '', '110.00', NULL, 1, '2019-10-09', '2019-10-09', 'DR No. 2019-Admin-153; PR No. 2019-Admin-73; PR No. 2019-Admin-136; CSI No. 733407', 'FFE-EQU-BCD-1021', 0, 0, 0, 'Sunrise Marketing (Bacolod) Inc.', '-1.jpg', '-2.jpg', '', 0, 0, 0),
(120, 70, 0, 'Newly purchased', 0, 0, 0, '', 'Max', 'HD-50R', 'with free 1 box no.35 staple wire', '340.00', NULL, 1, '2019-10-09', '2019-10-09', 'DR No. 2019-Admin-153; PR No. 2019-Admin-73; PO No. 2019-Admin-136;  CSI No. 733407', 'FFE-EQU-BCD-1022', 0, 0, 0, 'Sunrise Marketing (Bacolod) Inc.', '-1.jpg', '', '', 0, 0, 0),
(121, 71, 0, 'Newly purchased', 0, 0, 3, '', 'Max', 'HD-50R', '', '340.00', NULL, 1, '2019-10-09', '2019-10-09', 'DR No. 2019-Admin-153; PR No. 2019-Admin-73; PO No. 2019-Admin-136; CSI No. 733407', 'FFE-EQU-BCD-1023', 0, 0, 0, 'Sunrise Marketing (Bacolod) Inc.', '-1.jpg', '', '', 0, 0, 0),
(122, 72, 0, 'Newly purchased', 0, 0, 5, '', 'Max', 'HD-50R', '', '340.00', NULL, 1, '2019-10-09', '2019-10-09', 'DR No. 2019-Admin-153; PR No. 2019-Admin-73; PO No. 2019-Admin-136; CSI No. 733407', 'FFE-EQU-BCD-1024', 0, 0, 0, 'Sunrise Marketing (Bacolod) Inc.', '-1.jpg', '', '', 0, 0, 0),
(123, 73, 0, 'Newly purchased', 0, 0, 5, '', '', '', '', '160.00', NULL, 1, '2019-10-09', '2019-10-09', 'DR No. 2019-Admin-153; PR No. 2019-Admin-73; PO No. 2019-Admin-136; CSI No. 733407', 'FFE-EQU-BCD-1025', 0, 0, 0, 'Sunrise Marketing (Bacolod) Inc.', '', '', '', 0, 0, 0),
(124, 74, 0, 'Newly purchased', 0, 0, 3, '', 'Casio', 'MZ-12S', 'Two way power', '255.00', NULL, 1, '2019-10-08', '2019-10-09', 'DR No. 2019-Admin-154; PR No. 2019-Admin-73; PO No. 2019-Admin-138; CSI No. 621268', 'FFE-EQU-BCD-1026', 0, 0, 0, 'Bacolod China Mart', '', '', '', 0, 0, 0),
(125, 75, 0, 'Newly purchased', 0, 0, 3, '', 'Casio', 'MZ-12S', 'Two way power', '255.00', NULL, 1, '2019-10-08', '2019-10-09', 'DR No. 2019-Admin-154; PR No. 2019-Admin-73; PO No. 2019-Admin-138; CSI No. 621268', 'FFE-EQU-BCD-1027', 0, 0, 0, 'Bacolod China Mart', '-1.jpg', '', '', 0, 0, 0),
(126, 76, 0, 'Newly purchased', 0, 0, 3, '', 'Casio', 'MZ-12S', 'Two way power', '255.00', NULL, 1, '2019-10-08', '2019-10-09', 'DR No. 2019-Admin-154; PR No. 2019-Admin-73; PO No. 2019-Admin-138; CSI No. 621268', 'FFE-EQU-BCD-1028', 0, 0, 0, 'Bacolod China Mart', '', '', '', 0, 0, 0),
(127, 77, 0, 'Newly purchased', 0, 0, 3, '', 'Casio', 'MZ-12S', 'Two way power', '255.00', NULL, 1, '2019-10-08', '2019-10-09', 'DR No. 2019-Admin-154; PR No. 2019-Admin-73; PO No. 2019-Admin-138; CSI No. 621268', 'FFE-EQU-BCD-1029', 0, 0, 0, 'Bacolod China Mart', '', '', '', 0, 0, 0),
(128, 78, 0, 'Newly purchased', 0, 0, 5, '', 'Made in China', '', '', '28.00', NULL, 1, '2019-10-08', '2019-10-09', 'DR No. 2019-Admin-154; PR No. 2019-Admin-73; PO NO. 2019-Admin-138; CSI No. 621268', 'FFE- SUP-BCD-1019', 0, 0, 0, 'Bacolod China Mart', '-1.jpg', '', '', 0, 0, 0),
(129, 79, 0, 'Newly purchased', 0, 0, 3, '', 'Made in China', '', '', '28.00', NULL, 1, '2019-10-08', '2019-10-10', 'DR No. 2019-Admin-154; PR No. 2019-Admin-73; PO No. 2019-Admin-138; CSI No. 621268', 'FFE- SUP-BCD-1020', 0, 0, 0, 'Bacolod China Mart', '', '', '', 0, 0, 0),
(130, 80, 0, 'Newly purchased', 0, 0, 5, '', '', '', '', '18.00', NULL, 1, '2019-09-28', '2019-10-10', 'DR No. 2019-Admin-160; PR No. 2019-Admin-68; Direct Purchased; CSI No. 577878', 'FFE- SUP-BCD-1021', 0, 0, 0, 'Bacolod China Mart Inc.', '-1.jpg', '-2.jpg', '', 0, 0, 0),
(131, 81, 0, 'Newly purchased', 0, 0, 5, '', '', '', '', '24.00', NULL, 1, '2019-09-28', '2019-10-10', 'DR No. 2019-Admin-160; PR No. 2019-Admin-68; Direct Purchased;  CSI No. 762705', 'FFE-EQU-BCD-1030', 0, 0, 0, 'Bacolod HKL Enterprises', '', '', '', 0, 0, 0),
(132, 82, 0, 'Newly purchased', 0, 0, 5, '', 'Legrand', '19W0905', '16A 250V', '49.00', NULL, 1, '2019-09-28', '2019-10-10', 'DR No. 2019-Admin-160; PR No. 2019-Admin-68; Direct Purchased;  CSI No. 762705', 'FFE-EQU-BCD-1031', 0, 0, 0, 'Bacolod HKL Enterprises', '-1.jpg', '-2.jpg', '', 0, 0, 0),
(135, 85, 0, 'Newly purchased', 1, 0, 7, '', 'Delta Plus', '', '', '220.00', NULL, 1, '2019-10-02', '', 'DR No. 2019-Admin-144; PR No. 2019-Admin-56; PO No. 2019-Admin-126; CSI No.5631', 'FFE-PPE-BCD-1001', 0, 0, 0, 'Milco Malcolm Marketing', '', '', '', 0, 0, 0),
(136, 85, 0, 'Newly purchased', 0, 0, 7, '', 'Delta Plus', '', '', '220.00', NULL, 1, '2019-10-02', '', '', 'FFE-PPE-BCD-1002', 0, 0, 0, 'Milco Malcom Marketing', '', '', '', 0, 0, 0),
(137, 85, 0, 'Newly purchased', 0, 0, 7, '', 'Delta Plus', '', '', '220.00', NULL, 1, '2019-10-02', '', '', 'FFE-PPE-BCD-1003', 0, 0, 0, 'Milco Malcolm Marketing', '', '', '', 0, 0, 0),
(138, 85, 0, 'Newly purchased', 0, 0, 7, '', 'Delta Plus', '', '', '220.00', NULL, 1, '2019-10-02', '', '', 'FFE-PPE-BCD-1004', 0, 0, 0, 'Milco Malcolm Marketing', '', '', '', 0, 0, 0),
(139, 85, 0, 'Newly purchased', 0, 0, 7, '', 'Delta Plus', '', '', '220.00', NULL, 1, '2019-10-02', '', '', 'FFE-PPE-BCD-1005', 0, 0, 0, 'Milco Malcolm Marketing', '', '', '', 0, 0, 0),
(140, 85, 0, 'Newly purchased', 0, 0, 7, '', 'Delta Plus', '', '', '220.00', NULL, 1, '2019-10-02', '', '', 'FFE-PPE-BCD-1006', 0, 0, 0, 'Milco Malcolm Marketing', '', '', '', 0, 0, 0),
(141, 85, 0, 'Newly purchased', 0, 0, 7, '', 'Delta Plus', '', '', '220.00', NULL, 1, '2019-10-02', '', '', 'FFE-PPE-BCD-1007', 0, 0, 0, 'Milco Malcolm Marketing', '', '', '', 0, 0, 0),
(142, 85, 0, 'Newly purchased', 0, 0, 7, '', 'Delta Plus', '', '', '220.00', NULL, 1, '2019-10-02', '', '', 'FFE-PPE-BCD-1008', 0, 0, 0, 'Milco Malcolm Marketing', '', '', '', 0, 0, 0),
(143, 85, 0, 'Newly purchased', 0, 0, 7, '', 'Delta Plus', '', '', '220.00', NULL, 1, '2019-10-02', '', '', 'FFE-PPE-BCD-1009', 0, 0, 0, 'Milco Malcolm Marketing', '', '', '', 0, 0, 0),
(144, 85, 0, 'Newly purchased', 0, 0, 7, '', 'Delta Plus', '', '', '220.00', NULL, 1, '2019-10-02', '', '', 'FFE-PPE-BCD-1010', 0, 0, 0, 'Milco Malcolm Marketing', '', '', '', 0, 0, 0),
(146, 86, 14, 'Newly purchased', 1, 0, 0, '', 'Kingston', '', '', '315.00', NULL, 1, '2019-10-16', '', 'PR No. IT-10042019-97; PO No. 2019-Admin-148;  CSI No. 5865', 'FFE- COMP-BCD-1283', 0, 0, 0, 'MF Computer Solutions, Inc.', '', '', '', 0, 0, 0),
(157, 97, 0, '', 0, 0, 0, '', 'Umbra', '', '', '0.00', NULL, 0, '', '2019-10-18', 'Given by Sir David', 'FFE-HOU-BCD-1093', 0, 0, 0, '', '-1.jpg', '', '', 0, 0, 0),
(165, 105, 0, 'Newly purchased', 1, 0, 13, 'NA9T7684', 'Seagate', '', '', '3200.00', NULL, 1, '2018-11-27', '2018-11-27', 'DR No. 3936; PO No. NH-001-4463; PR No. 2018-NH-001;  End use: Negros Harves Files; CSI No. 39507', 'FFE- COMP-BCD-1287', 0, 0, 0, 'Bacolod Sure Computer Inc.', '', '', '', 0, 0, 0),
(166, 106, 1, 'New purchased', 1, 0, 6, '', 'Acer', 'E1-432-29554675', '', '0.00', NULL, 0, '2013-12-18', '', 'CSI No. 87778, Collection Receipt No. 0021', 'FFE- COMP-BCD-1288', 0, 0, 0, 'Hardy Marketing Enterprises', '', '', '', 0, 0, 0),
(167, 107, 1, 'Newly purchased', 1, 0, 6, '', 'Acer', '', '', '0.00', NULL, 0, '2013-12-18', '', 'CSI No. 87778; Collection Receipt No. 0021', 'FFE- COMP-BCD-1289', 0, 0, 0, 'Hardy Marketing Enterprises', '', '', '', 0, 0, 0),
(168, 108, 1, 'Newly purchased', 1, 0, 6, '', '', '', 'USB', '0.00', NULL, 0, '2013-12-18', '', 'CSI No. 87778; Collection Receipt No. 0021', 'FFE- COMP-BCD-1290', 0, 0, 0, 'Hardy Marketing Enterprises', '', '', '', 0, 0, 0),
(169, 109, 1, 'Newly purchased', 1, 0, 6, '', '', '', '', '0.00', NULL, 0, '2013-12-18', '', 'CSI No. 87778; Collection Receipt No. 0021', 'FFE- COMP-BCD-1291', 0, 0, 0, 'Hardy Marketing Enterprises', '', '', '', 0, 0, 0),
(170, 110, 0, '', 1, 0, 15, 'FFE-TRA-BCD-1003', 'Veento Thailand', '', 'Tubeless 205 x 65/R15', '3050.00', NULL, 1, '2019-11-13', '2019-11-13', 'PO No. 2019-Admin-149;  PR No. 2019-Admin-50;  DR No. 2019-Admin-175;  Cash Sales Invoice No. 48474', 'FFE-TRA-BCD-1003', 0, 0, 0, 'Samson Merchandising Inc.', '', '', '', 0, 0, 0),
(171, 111, 0, '', 0, 0, 0, '', '', '', '', '1850.00', NULL, 1, '2018-10-20', '', 'Newly purchased', 'FFE-FUR-BCD-1032', 0, 0, 0, 'Ravson Enterprises', '', '', '', 0, 0, 0),
(172, 112, 0, '', 0, 0, 0, '', '', '', '', '1900.00', NULL, 0, '2018-10-20', '', 'Newly purchased', 'FFE-FUR-BCD-1033', 0, 0, 0, 'Ravson Enterprises', '', '', '', 0, 0, 0),
(173, 113, 0, '', 3, 0, 8, 'ANII31A024617', 'AOC', '', '', '25400.00', NULL, 1, '2018-09-06', '2018-09-06', 'PR No. POSGPRI-SGV-18-0724;  PO No. POSGPR-SGV-18-0724-4328;  DR No. 3720;  Charge Sales Invoice No. 4986;  Collection Receipt No. 8871.', 'FFE- COMP-BCD-1292', 0, 0, 0, 'Teranova Computer Sales & Services', '', '', '', 0, 0, 0),
(174, 114, 0, '', 3, 0, 8, 'FFE- COMP-BCD-1292', 'Fortress', '', 'Fortress Casing', '0.00', NULL, 0, '2018-09-06', '2018-09-06', 'PR No. POSGPRI-SGV-18-0724;  PO No. POSGPR-SGV-18-0724-4328;  DR No. 3720;  Charge Sales Invoice No. 4986;  Collection Receipt No. 8871.', 'FFE- COMP-BCD-1292', 0, 0, 0, 'Teranova Computer Sales & Services', '', '', '', 0, 0, 0),
(175, 115, 0, '', 3, 0, 8, 'PE1804019192', 'A4Tech', 'KRS-85', 'Natural A Keyboard', '0.00', NULL, 0, '2018-09-06', '2018-09-06', 'PR No. POSGPRI-SGV-18-0724;  PO No. POSGPR-SGV-18-0724-4328;  DR No. 3720;  Charge Sales Invoice No. 4986;  Collection Receipt No. 8871.', 'FFE- COMP-BCD-1293', 0, 0, 0, 'Teranova Computer Sales & Services', '', '', '', 0, 0, 0),
(176, 116, 0, '', 3, 0, 8, 'PE1804020129', 'A4Tech', 'OP-720', '', '0.00', NULL, 0, '2018-09-06', '2018-09-06', 'PR No. POSGPRI-SGV-18-0724;  PO No. POSGPR-SGV-18-0724-4328;  DR No. 3720;  Charge Sales Invoice No. 4986;  Collection Receipt No. 8871.', 'FFE- COMP-BCD-1294', 0, 0, 0, 'Teranova Computer Sales & Services', '', '', '', 0, 0, 0),
(177, 117, 0, '', 0, 0, 0, 'FFE- COMP-BCD-1295', 'TP-Link', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1295', 0, 0, 0, '', '', '', '', 0, 0, 0),
(178, 118, 0, 'New ', 1, 0, 3, 'FFE-FUR-BCD-1034', '', '', '', '1850.00', NULL, 1, '', '2019-09-02', 'AP2015-00460; CV1045', 'FFE-FUR-BCD-1034', 0, 0, 0, 'Ravson Enterprises', '', '', '', 0, 0, 0),
(179, 119, 0, '', 1, 0, 0, 'FFE- SUP-BCD-1022', 'TM Series', '', 'XL Green Color', '0.00', NULL, 0, '', '2019-11-13', 'From HR Stock', 'FFE- SUP-BCD-1022', 0, 0, 0, '', '', '', '', 0, 0, 0),
(180, 120, 14, '', 1, 0, 6, 'M137GX1711000673', 'Delux', 'M137', 'Wireless Optical Mouse, Black and Orange Color', '275.00', NULL, 1, '2019-11-14', '2019-11-14', 'DR No. 2019-ADMIN-173; PR No. IT-10152019-98; Cash Sales Inv. No. 40559', 'FFE- COMP-BCD-1296', 0, 0, 0, 'Bacolod Sure Computer Inc.', 'M137GX1711000673-1.jpg', 'M137GX1711000673-2.jpg', '', 0, 0, 0),
(181, 121, 0, '', 0, 0, 0, 'FFE-FUR-BCD-1034', '', '', 'Mesh, Black color', '2500.00', NULL, 1, '2015-03-09', '2019-09-02', '', 'FFE-FUR-BCD-1034', 0, 0, 0, 'Ravson Enterprises', '', '', '', 0, 0, 0),
(182, 39, 0, '', 1, 0, 12, 'FFE-HOU-1094', '', '', '', '0.00', NULL, 0, '2018-04-28', '', 'DR No. HRAD 2018-021; PR No. HRAD 2018-009; PO No. 2017 RGA-027', 'FFE-HOU-1094', 0, 0, 0, 'The SM Store', '', '', '', 0, 0, 0),
(183, 122, 0, '', 1, 0, 0, 'FFE-FUR-BCD-1034', '', '', '', '0.00', NULL, 1, '', '', 'AP 2017-02702; CV 2018-00011', 'FFE-FUR-BCD-1034', 0, 0, 0, '', '', '', '', 0, 0, 0),
(184, 123, 0, '', 1, 0, 0, '', 'AOC/ACER', '', '', '0.00', NULL, 0, '2018-04-20', '', 'PO No. IT-04122018-52-4147; Charge Sales Inv. no 4686; Collection Receipt No. 8870', 'FFE- COMP-BCD-1297', 0, 0, 0, 'Teranova Computer Sales & Services', '', '', '', 0, 0, 0),
(185, 124, 0, '', 1, 0, 0, '', 'Seagate', '', '', '0.00', NULL, 0, '2018-04-20', '2018-04-20', 'ATX Case Midtower 650-700W PSU;  PO No. IT-04122018-52-4147; DR No. 3439; Charge Sales Inv. No. 4686; Collection Receipt NO. 8870 ', 'FFE- COMP-BCD-1297', 0, 0, 0, 'Teranova Computer Sales & Services', '', '', '', 0, 0, 0),
(186, 125, 0, '', 1, 0, 0, '', 'A4Tech', '', '', '0.00', NULL, 0, '2018-04-20', '2018-04-20', 'PO No. IT-04122018-52-4147;  DR No. 3439;  Charge Sales Inv. No.4686;  Collection Receipt No. 8870', 'FFE- COMP-BCD-1297', 0, 0, 0, 'Teranova Computer Sales & Services', '', '', '', 0, 0, 0),
(187, 127, 2, '', 1, 0, 0, '', 'Toyota', 'GDH301LGDFDY005', '15-seater 2019 Hiace Commuter, white color', '1635000.00', NULL, 1, '2019-10-17', '2019-10-17', 'CS No. P4K474; VIN JTFNAFAP2K8009621; Engine No. 1GD8483644;  Year Model 2020; with tint and matting;   PO No. 2019-Admin-140;  DR No.2019-Admin-168;  Vehicle Sales Invoice F20A004305', 'FFE-TRA-BCD-1004', 0, 0, 0, 'Toyota Negros Occidental', '-1.jpg', '-2.jpg', '', 0, 0, 0),
(188, 128, 2, '', 1, 0, 0, 'FFE-TRA-BCD-1005', '', '', '', '0.00', NULL, 0, '2019-10-17', '2019-10-17', 'Included in Toyota Hiace Commuter Deluxe 2.8 Van Package;  PO No.2019- Admin-140;  DR No 2019-Admin-168; Vehicle Sales Invoice F20A004305;  ', 'FFE-TRA-BCD-1005', 0, 0, 0, 'Toyota Negros Occidental', 'FFE-TRA-BCD-1003-1.jpg', '', '', 0, 0, 0),
(189, 129, 2, '', 1, 0, 14, 'FFE-TRA-BCD-1006', '', '', 'Hydraulic', '0.00', NULL, 0, '2019-10-17', '2019-10-17', 'Included in Toyota Hiace Commuter Package;  PO No. 2019- Admin-140;  Vehicle Sales Invoice No. F20A004305', 'FFE-TRA-BCD-1006', 0, 0, 0, 'Toyota Negros Occidental', 'FFE-TRA-BCD-1006-1.jpg', 'FFE-TRA-BCD-1003-2.jpg', '', 0, 0, 0),
(190, 130, 2, '', 1, 0, 0, 'FFE-TRA-BCD-1007', '', '', '', '0.00', NULL, 0, '2019-10-17', '2019-10-17', 'Included in Toyota Hiace Commuter Package;  Vehicle Sales Invoice No. F20A004305', 'FFE-TRA-BCD-1007', 0, 0, 0, 'Toyota Negros Occidental', 'FFE-TRA-BCD-1007-1.jpg', '', '', 0, 0, 0),
(191, 131, 2, '', 1, 0, 14, 'FFE-TRA-BCD-1008', '', '', 'size 8 to 10', '0.00', NULL, 0, '2019-10-17', '2019-10-17', 'Included in Toyota Hiace Commuter package;  Vehicle Sales Invoice No. F20A004305', 'FFE-TRA-BCD-1008', 0, 0, 0, 'Toyota Negros Occidental', 'FFE-TRA-BCD-1004-1.jpg', '', '', 0, 0, 0),
(192, 132, 2, '', 1, 0, 14, 'FFE-TRA-BCD-1009', '', '', '', '0.00', NULL, 0, '2019-10-17', '2019-10-17', 'Included in Toyota Hiace Commuter package;  PO No. 2019-Admin-140;  Vehicle Sales Invoice No. F20A004305', 'FFE-TRA-BCD-1009', 0, 0, 0, 'Toyota Negros Occidental', 'FFE-TRA-BCD-1004-1.jpg', '', '', 0, 0, 0),
(193, 133, 2, '', 1, 0, 14, 'FFE-TRA-BCD-1010', '', '', '', '0.00', NULL, 0, '2019-10-17', '2019-10-17', 'Included in Toyota Hiace Commuter Package;  PO No. 2019-Admin-140;  Vehicle Sales Invoice No. F20A004305', 'FFE-TRA-BCD-1010', 0, 0, 0, 'Toyota Negros Occidental', 'FFE-TRA-BCD-1010-1.jpg', '', '', 0, 0, 0),
(194, 133, 0, '', 1, 0, 14, 'FFE-TRA-BCD-1011', '', '', '', '0.00', NULL, 0, '2019-10-17', '2019-10-17', 'Included in Toyota Hiace Commuter Package;  PO No. 2019-Admin-140;  Vehicle Sales Invoice No. F20A004305', 'FFE-TRA-BCD-1011', 0, 0, 0, 'Toyota Negros Occidental', 'FFE-TRA-BCD-1005-1.jpg', '', '', 0, 0, 0),
(195, 134, 2, '', 1, 0, 14, 'FFE-TRA-BCD-1012', '', '', '', '0.00', NULL, 0, '2019-10-17', '2019-10-17', 'Included in Toyota Hiace Commuter Package;  PO No. 2019-Admin-140;  Vehicle Sales Invoice No. F20A004305', 'FFE-TRA-BCD-1012', 0, 0, 0, 'Toyota Negros Occidental', '', '', '', 0, 0, 0),
(196, 135, 0, '', 1, 0, 15, 'FFE-TRA-BCD-1013', 'Veento Thailand', '', '', '3050.00', NULL, 1, '2019-11-13', '2019-11-13', 'PO No. 2019-Admin-149; PR No. 2019-Admin-50; DR No. 2019-Admin-175; Cash Sales Invoice No. 48474', 'FFE-TRA-BCD-1013', 0, 0, 0, 'Samson Merchandising Inc.', '', '', '', 0, 0, 0),
(197, 136, 0, '', 3, 0, 8, 'FFE- COMP-BCD-1297', 'Secure', '', '', '0.00', NULL, 0, '2018-09-06', '2018-09-06', '', 'FFE- COMP-BCD-1297', 0, 0, 0, 'Teranova Computer Sales & Services', '', '', '', 0, 0, 0),
(198, 136, 0, '', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1298', 0, 0, 0, '', '', '', '', 0, 0, 0),
(199, 137, 0, '', 3, 0, 8, '', 'APC', '', '', '0.00', NULL, 0, '2018-09-06', '2018-09-06', '', 'FFE- COMP-BCD-1299', 0, 0, 0, 'Teranova Computer Sales & Services', '', '', '', 0, 0, 0),
(200, 138, 0, '', 1, 0, 6, '', 'Kingston', '', '', '325.00', NULL, 1, '2019-04-02', '2019-04-02', 'PO No. 2019-Admin-08;  PR No. 2019-EIF-006;  DR No. 2019-Admin-0015; Charge Sales Invoice No. 61998;  Collection Receipt No. 5661', 'FFE- COMP-BCD-1300', 0, 0, 0, 'Bacolod Sure Computer, Inc.', '', '', '', 0, 0, 0),
(201, 141, 0, '', 0, 0, 0, '', 'Casio', 'MZ- 12S', '', '0.00', NULL, 0, '', '', '', 'FFE-EQU-BCD-1032', 0, 0, 0, '', '', '', '', 0, 0, 0),
(202, 142, 0, '', 0, 0, 3, 'FFE-EQU-BCD-1033', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-EQU-BCD-1033', 0, 0, 0, '', '', '', '', 0, 0, 0),
(203, 143, 0, '', 0, 0, 3, 'E4NOCX061019148', 'Asus', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1301', 0, 0, 0, '', '', '', '', 0, 0, 0),
(204, 144, 0, '', 0, 0, 3, 'LN261936', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1302', 0, 0, 0, '', '', '', '', 0, 0, 0),
(205, 145, 0, '', 0, 0, 3, '1416HSOSOFA8', 'Logitech', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1303', 0, 0, 0, '', '', '', '', 0, 0, 0),
(206, 146, 0, '', 0, 0, 3, 'FFE- COMP-BCD-1304', 'Scandisk', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1304', 0, 0, 0, '', '', '', '', 0, 0, 0),
(207, 147, 0, '', 0, 0, 0, 'FFE-FUR-BCD-1034', '', '', '', '0.00', NULL, 0, '', '2019-12-05', 'Office Table and Chair situated in front of RCT table', 'FFE-FUR-BCD-1034', 0, 0, 0, '', '', '', '', 0, 0, 0),
(208, 148, 0, '', 0, 0, 0, 'FFE-FUR-BCD-1035', '', '', '', '0.00', NULL, 0, '', '2019-12-05', 'Office Table and Chair situated in front of RCT table.', 'FFE-FUR-BCD-1035', 0, 0, 0, '', '', '', '', 0, 0, 0),
(209, 149, 0, '', 1, 0, 5, 'FFE-FUR-BCD-1036', '', '', 'Mesh, Nylon Base', '2500.00', NULL, 1, '2019-12-16', '', 'PR No. 2019-Admin-79;  PO No. YO-12;  DR No. 2019-Admin-177;  Cash Sales Invoice No. 622815;    ', 'FFE-FUR-BCD-1036', 0, 0, 0, 'Bacolod China Mart Wholesale and Retail', 'FFE-FUR-BCD-1036-1.jpg', '', '', 0, 0, 0),
(210, 150, 0, '', 1, 0, 5, 'FFE-FUR-BCD-1037', '', '', '', '1900.00', NULL, 1, '2019-12-16', '', 'PR No. 2019-Admin-79;  PO No. YO-11;  DR No. 2019-Admin-178;  Cash Sales Invoice No. 71843', 'FFE-FUR-BCD-1037', 0, 0, 0, 'Ravson Enterprises', '', '', '', 0, 0, 0),
(211, 151, 0, '', 1, 0, 0, 'NBK8306', 'Ford', 'Year Model 2016', 'Wagon, Gray color, Diesel', '0.00', NULL, 0, '', '2019-03-18', 'MV File No.: 13001-00001321360;  CR No. 343971106; Engine No. P4AT2240393; Chassis No. MNCAXXMAWAGO40058;  4 cylinders;  DR No. 2019-Admin-171', 'FFE-TRA-BCD-1014', 0, 0, 0, '', '', '', '', 0, 0, 0),
(212, 152, 0, '', 3, 0, 8, 'FFE- COMP-BCD-1305', 'Fortress', '', '', '0.00', NULL, 0, '2018-08-06', '', 'PR No. POSGPR-SGV-18-0724; PO No. POSGPR-SGV-18-0724-4328; DR No. 3720;  Charge Sales Inv No. 4986;  Collection Receipt No. 8871', 'FFE- COMP-BCD-1305', 0, 0, 0, 'Teranova Computer Sales & Services', '', '', '', 0, 0, 0),
(213, 153, 0, '', 3, 0, 8, 'ANII31AO23736', 'AOC', 'E970Sw', '', '0.00', NULL, 0, '2018-08-06', '', '', 'FFE- COMP-BCD-1306', 0, 0, 0, 'Teranova Computer Sales & Services', '', '', '', 0, 0, 0),
(214, 154, 0, '', 3, 0, 8, 'PE1804019190', 'A4Tech', 'KRS-85', '', '0.00', NULL, 0, '2018-08-06', '', '', 'FFE- COMP-BCD-1307', 0, 0, 0, '', '', '', '', 0, 0, 0),
(215, 158, 0, '', 1, 0, 6, 'FFE- COMP-BCD-1308', 'XO', 'NB32 Fast Data Cable', 'Micro USB', '200.00', NULL, 1, '2019-12-06', '2019-12-07', 'PR No. TRA19-1010; PO No. PTRA19-1010-1016; DR No. 1011;  Cash Sales Invoice No. 40613.  Correct price- P180.00', 'FFE- COMP-BCD-1308', 0, 0, 0, 'Bacolod Sure Computer, Inc.', 'FFE- COMP-BCD-1308-1.jpg', '', '', 0, 0, 0),
(216, 159, 0, '', 1, 0, 6, 'NA9VR3ZD', 'Seagate', '', '', '3150.00', NULL, 1, '2019-04-02', '2019-04-02', 'PR No. 2019-EJF-006;  PO No. 2019-Admin-08;  DR No. 2019-Admin-0015; Charge Sales Invoice No. 61998; Collection Receipt No. 5661', 'FFE- COMP-BCD-1309', 0, 0, 0, 'Bacolod Sure Computer, Inc.', '', '', '', 0, 0, 0),
(217, 160, 0, '', 0, 0, 5, '', '', '', '', '0.00', NULL, 0, '', '', 'In exchange for unit bought by CENPRI to ShoppersGuide.', 'FFE- COMP-BCD-1310', 0, 0, 0, 'Bacolod Sure Computer, Inc.', '', '', '', 0, 0, 0),
(218, 161, 0, '', 0, 0, 5, '', '', '', '', '0.00', NULL, 0, '', '', 'In exchange for unit bought by CENPRI', 'FFE- COMP-BCD-1311', 0, 0, 0, 'Bacolod Sure Computer, Inc.', '', '', '', 0, 0, 0),
(219, 162, 0, '', 0, 0, 5, '', '', '', '', '0.00', NULL, 0, '', '', 'In exchange for unit bought by CENPRI.', 'FFE- COMP-BCD-1312', 0, 0, 0, 'Bacolod Sure Computer, Inc.', '', '', '', 0, 0, 0),
(220, 163, 6, '', 0, 0, 5, 'FFE- COMP-BCD-1313', 'Secure', '', '', '240.00', NULL, 1, '2019-12-18', '2019-12-18', 'PR No. IT-11272019-01;  PO No. Y0-08;  DR No. 2019-Admin-179;  Cash Sales Invoice No. 0079; ', 'FFE- COMP-BCD-1313', 0, 0, 0, 'Teranova Computer Sales & Services', '', '', '', 0, 0, 0),
(222, 165, 0, '', 0, 0, 5, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1315', 0, 0, 0, '', '', '', '', 0, 0, 0),
(223, 166, 0, '', 1, 0, 0, 'VCHY042362', 'Epson', '', '', '3195.00', NULL, 1, '2018-04-23', '', 'PO No. IT-0410018-51-4136;  Provisional Receipt No.0017; Cash Invoice No. 1040; 1 year warranty on major parts and services; complete with manuals, installer and accessories', 'FFE-EQU-BCD-1034', 0, 0, 0, 'Technomart Computers and Consumer Electronics', '', '', '', 0, 0, 0),
(224, 167, 0, '', 1, 0, 6, 'FFE-EQU-BCD-1035', 'Casio', 'MZ 12S', '', '250.00', NULL, 1, '2018-07-03', '2019-10-16', 'PR No. 2018 Trading- D22;  DR No. RAG 2018-004;  Cash Sales Invoice No. 638530', 'FFE-EQU-BCD-1035', 0, 0, 0, 'New China Enterprises, Inc.', '', '', '', 0, 1, 0),
(225, 169, 0, '', 3, 0, 8, '', '', '', '', '0.00', NULL, 0, '2018-08-06', '', 'PR No. POSGPR-SGV-18-0724;  PO NO. SG-18-0724-4328;  DR NO. 3720;  Charge Sales Inv No. 4986;  Collection Receipt No. 8871', 'FFE- COMP-BCD-1316', 0, 0, 0, 'Teranova Computer Sales & Services', '', '', '', 0, 0, 0),
(226, 170, 0, '', 3, 0, 8, '', '', '', '', '0.00', NULL, 0, '2018-08-06', '', '', 'FFE- COMP-BCD-1317', 0, 0, 0, '', '', '', '', 0, 0, 0),
(227, 171, 0, '', 3, 0, 8, '', '', '', '', '0.00', NULL, 0, '2018-08-06', '', '', 'FFE- COMP-BCD-1318', 0, 0, 0, '', '', '', '', 0, 0, 0),
(228, 172, 0, '', 3, 0, 8, 'PB654MAW6K7AE71', 'Toshiba', 'TECRA A50-A Series', '', '0.00', NULL, 0, '', '', 'Bought by SG Manila. Jann Javier 1st user.', 'FFE- COMP-BCD-1319', 0, 0, 0, '', '', '', '', 0, 0, 0),
(229, 173, 0, '', 0, 0, 8, 'PIDH5637HB', 'Logitech', '', '', '0.00', NULL, 0, '', '', 'Bought by SG Manila. Jann Javier 1st user.', 'FFE- COMP-BCD-1320', 0, 0, 0, '', '', '', '', 0, 0, 0),
(230, 174, 0, '', 0, 0, 8, '', '', '', '', '0.00', NULL, 0, '', '', 'Bought by SG Manila. Jann Javier 1st user.', 'FFE- COMP-BCD-1321', 0, 0, 0, '', '', '', '', 0, 0, 0),
(231, 175, 0, '', 0, 0, 8, '', '', '', '', '0.00', NULL, 0, '', '', 'Bought by SG Manila. Jann Javier 1st user.', 'FFE-FUR-BCD-1038', 0, 0, 0, '', '', '', '', 0, 0, 0),
(232, 176, 0, '', 0, 0, 8, '', '', '', '', '0.00', NULL, 0, '', '', 'Bought by SG Manila. Jann Javier 1st user.', 'FFE-FUR-BCD-1039', 0, 0, 0, '', '', '', '', 0, 0, 0),
(233, 177, 0, '', 1, 0, 3, 'IT20190321', 'Secure', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1322', 1, 0, 0, '', '', '', '', 0, 0, 0),
(234, 178, 0, '', 1, 0, 4, 'FFE- SUP-BCD-1023', '', '', 'Blue', '90.00', NULL, 1, '2019-12-13', '2019-12-17', 'PR No. ADM19-1006;  PO No. PADM19-1006-1020; DR No. 1017;  Cash Sales Inv. No. 805984', 'FFE- SUP-BCD-1023', 0, 0, 0, 'New China Enterprises, Inc.', '', '', '', 0, 0, 0),
(235, 179, 0, '', 1, 0, 3, 'FFE- SUP-BCD-1024', '', '', 'Blue', '90.00', NULL, 1, '2019-12-13', '2019-12-17', 'PR No. ADM19-1006; PO No. PADM19-1006-1020; DR No. 1017;  Cash Sales Invoice No. 805984;', 'FFE- SUP-BCD-1024', 0, 0, 0, 'New China Enterprises, Inc.', '', '', '', 0, 0, 0),
(236, 179, 0, '', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- SUP-BCD-1025', 0, 0, 0, '', '', '', '', 0, 0, 0),
(237, 180, 0, '', 1, 0, 13, 'FFE-EQU-BCD-1036', 'Max', 'HD-50R', 'Ergonomic Style', '340.00', NULL, 1, '2019-12-16', '2019-12-17', 'PR No. ADM19-1006; PO No. PADM19-1006-1019; DR No. 1016;  Cash Sales Invoice No. 734656; ', 'FFE-EQU-BCD-1036', 0, 0, 0, 'Sunrise Marketing (Bacolod) Inc.', '', '', '', 0, 0, 0),
(238, 181, 8, '', 1, 0, 5, 'UEM185122344', 'Viewsonic', 'VS16216', 'VA 1903A', '3350.00', NULL, 1, '2019-12-18', '2019-12-19', 'PR NO. IT-11272019-01;  PO NO. Y0-09;  DR NO. 2019-ADMIN-180; OR NO. 2763;  ', 'FFE- COMP-BCD-1323', 0, 0, 0, 'Bacolod Sure Computer Inc', 'UEM185122344-1.jpg', 'UEM185122344-2.jpg', 'UEM185122344-3.jpg', 0, 0, 0),
(239, 182, 7, '', 1, 0, 5, 'FFE- COMP-BCD-1324', '', '', '', '18450.00', NULL, 1, '2019-12-18', '2019-12-19', 'Mainboard S1151 8th Gen MSI H310M PRO-D Plus;  Solid State Drive Kingston 480GB;  Video Card Zotac GEForce GT710 1GB 64bit DDR3; PR NO. IT-11272019-01;  PO NO. YO-09; DR NO. 2019-ADMIN-180;  OR No. 2763;  ', 'FFE- COMP-BCD-1324', 0, 0, 0, 'MF Computer Solutions, Inc.', '', '', '', 0, 0, 0),
(240, 183, 4, '', 1, 0, 5, 'K60029D007924', 'Delux', 'K6002', 'Wired', '0.00', NULL, 1, '2019-12-18', '2019-12-19', 'PR NO. IT-11272019-01;  PO NO. YO-09;  DR NO. 2019-ADMIN-180;  OR NO. 2763; ', 'FFE- COMP-BCD-1325', 0, 0, 0, '', '', '', '', 0, 0, 0),
(241, 184, 4, '', 1, 0, 5, 'M1368K023773', '', 'M136', '', '0.00', NULL, 0, '2019-12-18', '2018-12-19', 'PR NO. IT-11272019-01;  PO NO. YO-09; DR NO. 2019-ADMIN-180; OR NO. 2763;  ', 'FFE- COMP-BCD-1326', 0, 0, 0, '', '', '', '', 0, 0, 0),
(242, 185, 8, '', 1, 0, 5, 'FFE- COMP-BCD-1327', 'APC', '', '', '2790.00', NULL, 1, '2019-12-18', '2019-12-19', 'PR NO. IT-11272019-01;  PO NO. YO-09;  DR NO. 2019-ADMIN-180;  OR NO. 2763;  ', 'FFE- COMP-BCD-1327', 0, 0, 0, 'MF Computer Solutions, Inc.', '', '', '', 0, 0, 0),
(244, 188, 3, '', 1, 0, 13, 'SIM 4193010212258871', 'Huawei', 'DUB-LX2', 'Business boost 999 Postpaid SIM with Handset', '0.00', NULL, 0, '2020-01-02', '2020-01-03', 'Free phone after end of 4 years contract with Globe;  SIM description ghp128k lte trio postpaid sim 1.3lhg;  Corrections: S/N: YGC6R19A29000796;  Placement: Trading Department;  Dual SIM', 'FFE-COM-BCD-1002', 0, 0, 0, 'Globe Telecom, Inc.', '', '', '', 0, 0, 0),
(245, 189, 3, '', 1, 0, 6, 'FFE-COM-BCD-1003', 'Huawei', 'Huawei Y7 2019', '', '0.00', NULL, 0, '2020-01-02', '2020-02-03', 'Included in Huawei Y7 2019 package free  phone after 4 years contract with Globe; ', 'FFE-COM-BCD-1003', 0, 0, 0, 'Globe Telecom, Inc.', '', '', '', 0, 0, 0),
(246, 190, 3, '', 1, 0, 6, 'FFE-COM-BCD-1004', 'Huawei', 'DUB-LX2', 'Dual Sim', '0.00', NULL, 0, '2020-01-02', '2020-01-03', 'Included in Huawei Y7 Pro 2019 free from 4 years contract with Globe;  ', 'FFE-COM-BCD-1004', 0, 0, 0, 'Globe Telecom, Inc.', '', '', '', 0, 0, 0),
(247, 191, 0, '', 1, 0, 13, 'VXXNU19A17102998', 'Huawei', 'AMN-LX2', 'Sapphire Blue color', '0.00', NULL, 0, '2020-01-02', '2020-01-03', 'Free phone package after 4 years contract with Globe Telecom;  RAM 2GB;  Business boost 799;  Postpaid SIM with handset;  SIM SN 4193010212258905;  ', 'FFE-COM-BCD-1005', 0, 0, 0, 'Globe Telecom, Inc.', '', '', '', 0, 0, 0),
(248, 192, 0, '', 1, 0, 13, 'FFE-COM-BCD-1006', 'Huawei', 'AMN-LX2', '', '0.00', NULL, 0, '2020-01-02', '2019-01-03', 'Included in free phone package after 4 years contract with Globe;  \r\n', 'FFE-COM-BCD-1006', 0, 0, 0, 'Globe Telecom, Inc.', '', '', '', 0, 0, 0),
(249, 193, 0, '', 1, 0, 13, 'FFE-COM-BCD-1007', 'Huawei', 'AMN-LX2', '', '0.00', NULL, 0, '2020-01-02', '2020-01-03', 'Included in free phone package after 4 years contract with Globe Telecom.', 'FFE-COM-BCD-1007', 0, 0, 0, 'Globe Telecom, Inc.', '', '', '', 0, 0, 0),
(251, 194, 0, '', 1, 0, 6, 'FFE- COMP-BCD-1329', 'TP-Link', 'Archer T2UH AC600', '', '820.00', NULL, 1, '2019-12-18', '', 'PR No. IT-12072019-04;  DR No. 2019-Admin-182;  Cash Sales Invoice No. 40645;  ', 'FFE- COMP-BCD-1329', 0, 0, 0, 'Bacolod Sure Computer, Inc.', '', '', '', 0, 0, 0),
(252, 195, 0, '', 1, 0, 3, 'EBNOWUO5-420945B', 'Asus', 'R455L', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1330', 0, 0, 0, '', '', '', '', 0, 0, 0),
(253, 196, 0, '', 1, 0, 3, '', 'Asus', 'ADP-65GD B', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1331', 0, 0, 0, '', '', '', '', 0, 0, 0),
(254, 197, 0, '', 1, 0, 3, 'FFE-EQU-BCD-1037', 'Mapes', '', '', '0.00', NULL, 0, '', '2019-09-02', '', 'FFE-EQU-BCD-1037', 0, 0, 0, '', '', '', '', 0, 0, 0),
(255, 198, 0, '', 1, 0, 3, 'FFE-EQU-BCD-1038', '', '', '', '0.00', NULL, 0, '', '2019-09-02', '', 'FFE-EQU-BCD-1038', 0, 0, 0, '', '', '', '', 0, 0, 0),
(256, 199, 0, '', 1, 0, 3, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1332', 0, 0, 0, '', '', '', '', 0, 0, 0),
(257, 200, 0, '', 1, 0, 3, 'FFE- COMP-BCD-1333', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1333', 0, 0, 0, 'CDR- King', '', '', '', 0, 0, 0),
(258, 201, 0, '', 1, 0, 3, 'FFE-EQU-BCD-1039', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-EQU-BCD-1039', 0, 0, 0, '', '', '', '', 0, 0, 0),
(259, 202, 0, '', 1, 0, 3, 'FFE-EQU-BCD-1040', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-EQU-BCD-1040', 0, 0, 0, '', '', '', '', 0, 0, 0),
(260, 203, 0, '', 1, 0, 3, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- SUP-BCD-1026', 0, 0, 0, '', '', '', '', 0, 0, 0),
(261, 204, 0, '', 1, 0, 3, 'FFE-EQU-BCD-1041', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-EQU-BCD-1041', 0, 0, 0, '', '', '', '', 0, 0, 0),
(262, 205, 0, '', 1, 0, 3, 'FFE-EQU-BCD-1042', '', '', 'Pink color', '7.00', NULL, 1, '2019-02-02', '2019-09-02', 'Sales Invoice No. 6247770', 'FFE-EQU-BCD-1042', 0, 0, 0, 'Bacolod China Mart Inc.', '', '', '', 0, 0, 0),
(263, 206, 0, '', 1, 0, 3, 'FFE- SUP-BCD-1027', '', '', '', '35.00', NULL, 1, '2019-02-02', '2019-02-02', 'Sales Invoice No. 6247771', 'FFE- SUP-BCD-1027', 0, 0, 0, 'Bacolod China Mart Inc.', '', '', '', 0, 0, 0),
(264, 207, 0, '', 1, 0, 3, 'FFE- SUP-BCD-1028', 'Paperzone', '', 'Black color', '0.00', NULL, 0, '', '', '', 'FFE- SUP-BCD-1028', 0, 0, 0, '', '', '', '', 0, 0, 0),
(265, 207, 0, '', 1, 0, 3, 'FFE- SUP-BCD-1029', 'Paperzone', '', 'Black color', '0.00', NULL, 0, '', '', '', 'FFE- SUP-BCD-1029', 0, 0, 0, '', '', '', '', 0, 0, 0),
(266, 207, 0, '', 1, 0, 3, 'FFE- SUP-BCD-1030', 'Paperzone', '', 'Black color', '0.00', NULL, 0, '', '', '', 'FFE- SUP-BCD-1030', 0, 0, 0, '', '', '', '', 0, 0, 0),
(267, 208, 0, '', 1, 0, 3, 'FFE- SUP-BCD-1031', 'Variant', '', '', '0.00', NULL, 0, '', '', 'Correction:  Valiant brand', 'FFE- SUP-BCD-1031', 0, 0, 0, '', '', '', '', 0, 0, 0),
(268, 208, 0, '', 1, 0, 3, 'FFE- SUP-BCD-1032', 'Variant', '', '', '0.00', NULL, 0, '', '', 'Correction:  Valiant brand', 'FFE- SUP-BCD-1032', 0, 0, 0, '', '', '', '', 0, 0, 0),
(269, 208, 0, '', 1, 0, 3, 'FFE- SUP-BCD-1033', 'Variant', '', '', '0.00', NULL, 0, '', '', 'Correction:  Valiant brand', 'FFE- SUP-BCD-1033', 0, 0, 0, '', '', '', '', 0, 0, 0),
(270, 209, 0, '', 1, 0, 3, 'FFE- SUP-BCD-1034', 'Scor Magazine', '', '', '0.00', NULL, 0, '', '', 'Correction:  Scorr Magazine brand', 'FFE- SUP-BCD-1034', 0, 0, 0, '', '', '', '', 0, 0, 0),
(271, 210, 0, '', 0, 0, 0, 'FFE-FUR-BCD-1040', '', '', '', '0.00', NULL, 0, '', '', 'First issued to Desabelle auditors;  Returned by the auditors partially damaged;   Repaired by Iris Sixto in the Site;  Reissued to Ms Babylyn.', 'FFE-FUR-BCD-1040', 1, 0, 0, '', '', '', '', 0, 0, 0);
INSERT INTO `et_details` (`ed_id`, `et_id`, `set_id`, `physical_condition`, `company_id`, `rack_id`, `placement_id`, `serial_no`, `brand`, `model`, `type`, `unit_price`, `currency`, `currency_id`, `acquisition_date`, `date_issued`, `remarks`, `asset_control_no`, `damage`, `beyond_repair`, `borrowed`, `acquired_by`, `picture1`, `picture2`, `picture3`, `change_location`, `location_id`, `lost`) VALUES
(272, 211, 0, '', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1334', 0, 0, 0, '', '', '', '', 0, 0, 0),
(273, 212, 0, '', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1335', 0, 0, 0, '', '', '', '', 0, 0, 0),
(274, 213, 0, '', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1336', 0, 0, 0, '', '', '', '', 0, 0, 0),
(275, 214, 0, '', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1337', 0, 0, 0, '', '', '', '', 0, 0, 0),
(276, 215, 0, '', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1338', 0, 0, 0, '', '', '', '', 0, 0, 0),
(277, 216, 0, '', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1339', 0, 0, 0, '', '', '', '', 0, 0, 0),
(278, 217, 0, '', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1340', 0, 0, 0, '', '', '', '', 0, 0, 0),
(279, 218, 0, '', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1341', 0, 0, 0, '', '', '', '', 0, 0, 0),
(280, 219, 0, '', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1342', 0, 0, 0, '', '', '', '', 0, 0, 0),
(281, 220, 0, '', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1343', 0, 0, 0, '', '', '', '', 0, 0, 0),
(282, 221, 0, '', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1344', 0, 0, 0, '', '', '', '', 0, 0, 0),
(284, 225, 9, 'Brand new', 1, 0, 3, 'FFE- COMP-BCD-1346', '', 'FC-RY05M Black', 'Casing ATX Frontier Ray ', '18450.00', NULL, 1, '2020-01-15', '2020-01-16', 'PR No. TRA19-1018;  PO No. PTRA19-1018-1041;  DR No. 1035;  OR No. 36770;  Temporarily assigned to Ms Haziel Aplaon;  original request for Trading Department.', 'FFE- COMP-BCD-1346', 0, 0, 0, 'MF Computer Solution', '', '', '', 0, 0, 0),
(285, 226, 0, '', 1, 0, 3, '9B1934A18260', 'APC', 'BX650LI-MS ', 'with 2 year warranty', '2790.00', NULL, 1, '2020-01-15', '2020-01-16', 'PR No. TRA19-1018;  PO No.PTRA19-1018-1041;  DR No. 1035, OR No. 36770;  Temporarily assigned to Ms Haziel Aplaon, original request for Trading Department.', 'FFE- COMP-BCD-1347', 0, 0, 0, 'MF Computer Solution', '', '', '', 0, 0, 0),
(286, 227, 9, 'Brand new', 1, 0, 3, 'FFE- COMP-BCD-1348', 'Secure', '', '', '240.00', NULL, 1, '2020-01-15', '2020-01-16', 'PR No.  TRA19-1018;  PO No. PTRA19-1018-1040;  DR No. 1034;  Cash Sales Invoice No. 0109;  Temporarily assigned to Ms Haziel Aplaon.', 'FFE- COMP-BCD-1348', 0, 0, 0, 'Teranova Computer Sales & Services', '', '', '', 0, 0, 0),
(287, 228, 9, 'Brand new', 1, 0, 3, 'UEM185121867', 'Viewsonic', 'VA1903a', '', '3350.00', NULL, 1, '2020-01-15', '2020-01-16', 'PR No. TRA19-1018;  PO No. PTRA19-1018-1042;  DR No. 1036;  Cash Sales Invoice No. 40698;  Temporarily assigned to Ms Haziel Aplaon, original request for Trading Department.', 'FFE- COMP-BCD-1349', 0, 0, 0, 'Bacolod Sure Computer, Inc.', '', '', '', 0, 0, 0),
(288, 229, 5, 'Brand new', 1, 0, 3, 'M1368K0011388', 'Delux', 'M136', '', '0.00', NULL, 0, '2020-01-15', '2020-01-16', 'PR No. TRA19-1018;  PO No. PTRA19-1018-1042;  DR No. 1036;  Cash Sales Invoice No. 40698;  Temporarily assigned to Ms Haziel Aplaon', 'FFE- COMP-BCD-1350', 0, 0, 0, 'Bacolod Sure Computer, Inc.', '', '', '', 0, 0, 0),
(289, 230, 5, 'Brand new', 1, 0, 3, 'K600290004410', 'Delux', 'K6002', '', '0.00', NULL, 0, '2020-01-15', '2020-01-16', 'PR No. TRA19-1018;  PO No. PTRA19-1018-1042;  DR No. 1036; Cash Sales Invoice No. 40698;  Temporarily assigned to Ms Haziel,  original request by Trading Department. ', 'FFE- COMP-BCD-1351', 0, 0, 0, 'Bacolod Sure Computer, Inc.', '', '', '', 0, 0, 0),
(290, 231, 14, 'Brand new', 1, 0, 6, 'Part no. 646757-001', '', '', 'For use in HP Mini 200-4210TU', '4200.00', NULL, 1, '', '2020-01-16', 'PR NO. ITB19-1016;  PO No. PITB19-1016-1011.r2;  DR No. 1014(Manila);  Send by Ms Joana;  No Sales Invoice attached;  Price based on PO;  ', 'FFE- COMP-BCD-1352', 0, 0, 0, 'Zenshin Systems Corporation', '', '', '', 0, 0, 0),
(291, 233, 0, 'Brand new', 1, 0, 3, 'FFE-FUR-BCD-1041', '', '', '', '0.00', NULL, 0, '2019-12-16', '2020-01-16', 'PR No. 2019-Admin-79;  PO No. YO-11;  DR No. 2019-Admin-178;  Cash Sales Invoice No. 71843  ', 'FFE-FUR-BCD-1041', 0, 0, 0, 'Ravson Enterprises', '', '', '', 0, 0, 0),
(292, 234, 12, '', 1, 0, 16, 'APAH41A002236', 'AOC', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1353', 0, 0, 0, '', '', '', '', 0, 0, 0),
(293, 235, 12, '', 1, 0, 16, 'FFE- COMP-BCD-1354', '', 'H81M-S1', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1354', 0, 0, 0, '', '', '', '', 0, 0, 0),
(294, 236, 12, '', 1, 0, 16, '', '', 'KRS-083', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1355', 0, 0, 0, '', '', '', '', 0, 0, 0),
(295, 237, 0, '', 1, 0, 16, 'PH1707048733', 'A4Tech', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1356', 0, 0, 0, '', '', '', '', 0, 0, 0),
(296, 239, 0, '', 1, 0, 16, '231704701502030', 'Logic', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1357', 0, 0, 0, '', '', '', '', 0, 0, 0),
(297, 240, 0, '', 1, 0, 16, '', '', '', 'Gray color', '0.00', NULL, 0, '', '', '', 'FFE-FUR-BCD-1042', 0, 0, 0, '', '', '', '', 0, 0, 0),
(298, 241, 13, '', 0, 0, 0, '', '', '', 'Black color', '0.00', NULL, 0, '', '', '', 'FFE-FUR-BCD-1043', 0, 0, 0, '', '', '', '', 0, 0, 0),
(299, 242, 0, '', 1, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- SUP-BCD-1035', 0, 0, 0, '', '', '', '', 0, 0, 0),
(300, 243, 13, '', 0, 0, 8, '', '', '', '', '0.00', NULL, 0, '', '', 'This unit is previously use by Desabelle auditors.', 'FFE-FUR-BCD-1044', 0, 0, 0, '', '', '', '', 0, 0, 0),
(301, 244, 0, '', 0, 0, 8, '', '', '', '', '0.00', NULL, 0, '', '', 'This unit is previously use by Desabelle auditors.', 'FFE-FUR-BCD-1045', 0, 0, 0, '', '', '', '', 0, 0, 0),
(302, 245, 0, '', 0, 0, 0, '', 'Firefly', '', '', '0.00', NULL, 0, '', '', '', 'FFE-EQU-BCD-1043', 1, 0, 0, '', '', '', '', 0, 0, 0),
(303, 247, 0, '', 1, 0, 13, 'HHFE71A000908', 'AOC', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1358', 0, 0, 0, '', '', '', '', 0, 0, 0),
(304, 248, 0, '', 1, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1359', 0, 0, 0, '', '', '', '', 0, 0, 0),
(305, 249, 0, '', 1, 0, 0, 'ZH2014110636', 'Xtyle', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1360', 0, 0, 0, '', '', '', '', 0, 0, 0),
(306, 250, 0, '', 1, 0, 0, 'CO1XKBMC', 'Xtyle', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1361', 0, 0, 0, '', '', '', '', 0, 0, 0),
(307, 251, 0, '', 1, 0, 0, 'FFE- COMP-BCD-1362', 'Secure', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1362', 0, 0, 0, '', '', '', '', 0, 0, 0),
(308, 253, 0, '', 1, 0, 13, 'FFE- COMP-BCD-1363', 'Xtyle', '', '', '0.00', NULL, 0, '', '', 'Set with Monitor AOC 14inches  SN HHKE71A000908', 'FFE- COMP-BCD-1363', 0, 0, 0, '', '', '', '', 0, 0, 0),
(309, 254, 0, '', 1, 0, 13, '9b1714A08545', 'APC', '', '', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1364', 0, 0, 0, '', '', '', '', 0, 0, 0),
(310, 255, 0, '', 1, 0, 13, '', 'CDR- King', '', 'Black', '0.00', NULL, 0, '', '', '', 'FFE- COMP-BCD-1365', 0, 0, 0, '', '', '', '', 0, 0, 0),
(311, 256, 0, '', 1, 0, 13, '', '', '', 'Black color', '0.00', NULL, 0, '', '', '', 'FFE-FUR-BCD-1046', 0, 0, 0, '', '', '', '', 0, 0, 0),
(312, 257, 0, '', 1, 0, 13, 'FFE-FUR-BCD-1047', '', '', 'Gray color', '0.00', NULL, 0, '', '', '', 'FFE-FUR-BCD-1047', 0, 0, 0, '', '', '', '', 0, 0, 0),
(313, 258, 0, '', 1, 0, 13, 'FFE-FUR-BCD-1048', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-FUR-BCD-1048', 0, 0, 0, '', '', '', '', 0, 0, 0),
(314, 259, 0, '', 1, 0, 13, 'FFE-EQU-BCD-1044', 'Firefly', '', 'White', '0.00', NULL, 0, '', '', '', 'FFE-EQU-BCD-1044', 0, 0, 0, '', '', '', '', 0, 0, 0),
(315, 260, 0, '', 1, 0, 13, 'FFE- SUP-BCD-1036', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE- SUP-BCD-1036', 0, 0, 0, '', '', '', '', 0, 0, 0),
(316, 261, 0, '', 1, 0, 13, 'FFE-EQU-BCD-1045', 'Casio', 'MX-12S', '', '0.00', NULL, 0, '', '', '', 'FFE-EQU-BCD-1045', 0, 0, 0, '', '', '', '', 0, 0, 0),
(317, 262, 0, '', 1, 0, 13, 'FFE-EQU-BCD-1046', '', '', 'Blue', '0.00', NULL, 0, '', '', '', 'FFE-EQU-BCD-1046', 0, 0, 0, '', '', '', '', 0, 0, 0),
(318, 263, 0, '', 1, 0, 13, 'FFE-EQU-BCD-1047', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-EQU-BCD-1047', 0, 0, 0, '', '', '', '', 0, 0, 0),
(319, 264, 0, '', 1, 0, 13, 'FFE-EQU-BCD-1048', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-EQU-BCD-1048', 0, 0, 0, '', '', '', '', 0, 0, 0),
(320, 265, 0, '', 1, 0, 13, 'FFE-PPE-BCD-1011', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-PPE-BCD-1011', 0, 0, 0, '', '', '', '', 0, 0, 0),
(321, 268, 0, 'Used but in working condition', 1, 0, 0, 'FFE-COM-BCD-1009', 'Samsung', '', '', '0.00', NULL, 0, '', '2020-01-17', 'This unit is used in Bacolod office communication of purchasing, HR and admin departments.', 'FFE-COM-BCD-1009', 0, 0, 0, '', '', '', '', 0, 2, 0),
(322, 269, 0, 'Used but still charging and working', 1, 0, 0, 'FFE- COMP-BCD-1366', '', '', '', '0.00', NULL, 0, '', '2020-01-17', 'This unit is used in charging Samsung Globe cellphone no. 702-8322.', 'FFE- COMP-BCD-1366', 0, 0, 0, '', '', '', '', 0, 0, 0),
(323, 270, 0, 'Used but still charging and working.', 1, 0, 0, 'FFE-COM-BCD-1010', 'Samsung', '', 'asasas', '0.00', NULL, 0, '', '2020-01-17', 'This is used as charger of Samsung Globe phone 702-8322.', 'FFE-COM-BCD-1010', 0, 0, 0, '', '', '', '', 0, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `et_head`
--

CREATE TABLE IF NOT EXISTS `et_head` (
`et_id` int(11) NOT NULL,
  `accountability_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `subcat_id` int(11) NOT NULL DEFAULT '0',
  `create_date` varchar(100) DEFAULT NULL,
  `et_desc` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `unit_id` int(11) NOT NULL DEFAULT '0',
  `department` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `cancelled` int(11) NOT NULL DEFAULT '0',
  `cancelled_by` int(11) NOT NULL DEFAULT '0',
  `cancel_date` varchar(20) DEFAULT NULL,
  `cancel_reason` text,
  `save_temp` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `et_head`
--

INSERT INTO `et_head` (`et_id`, `accountability_id`, `category_id`, `subcat_id`, `create_date`, `et_desc`, `qty`, `unit_id`, `department`, `user_id`, `cancelled`, `cancelled_by`, `cancel_date`, `cancel_reason`, `save_temp`) VALUES
(1, 142, 1, 3, '2019-09-23 19:22:08', 'Office Table, Gray', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(2, 142, 1, 3, '2019-09-23 19:28:04', 'Swivel Chair', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(5, 118, 1, 7, '2019-09-24 09:39:28', 'Mini Refrigerator', 1, 2, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(6, 130, 1, 11, '2019-09-25 11:47:37', 'UPS 1200', 1, 2, '', 5, 0, 0, NULL, NULL, 0),
(7, 1, 1, 11, '2019-09-25 12:02:27', 'Universal Adapter(Charger) Output: 19V- 2.1A 40W', 1, 1, 'Management', 5, 0, 0, NULL, NULL, 0),
(10, 35, 1, 12, '2019-09-25 18:39:29', 'Stapler with Remover no. 35, Gray color', 1, 1, 'HR/Admin', 5, 0, 0, NULL, NULL, 0),
(13, 129, 1, 2, '2019-09-25 19:01:49', 'PLDT Unit', 1, 2, 'Admin', 5, 0, 0, NULL, NULL, 0),
(14, 12, 1, 11, '2019-09-25 19:10:53', 'Computer Monitor 15.6 inches', 1, 2, 'Accounting / Finance', 5, 0, 0, NULL, NULL, 0),
(15, 143, 1, 12, '2019-09-25 19:18:01', 'Glue Gun, blue color', 1, 1, 'Admin', 5, 0, 0, NULL, NULL, 0),
(16, 143, 1, 12, '2019-09-25 19:25:59', 'Glue Gun, blue color', 1, 1, 'Admin', 5, 0, 0, NULL, NULL, 0),
(26, 143, 1, 4, '2019-09-25 19:29:45', 'Balloon Inflator Pump, Blue color', 1, 1, 'Admin', 5, 0, 0, NULL, NULL, 0),
(27, 118, 1, 4, '2019-09-25 19:31:21', 'Printer and Scanner', 1, 2, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(28, 121, 1, 7, '2019-09-25 19:38:32', 'Soundbar', 1, 2, 'IT Department', 5, 0, 0, NULL, NULL, 0),
(29, 143, 1, 7, '2019-09-25 19:44:44', 'Ultra HD Smart TV, 65" ', 1, 2, 'Admin Department', 5, 0, 0, NULL, NULL, 0),
(30, 132, 1, 12, '2019-09-25 19:48:45', 'Scissors,  big', 1, 1, 'IT Department', 5, 0, 0, NULL, NULL, 0),
(32, 34, 1, 12, '2019-09-25 19:53:01', 'Magfile, Single', 1, 1, 'Finance', 5, 0, 0, NULL, NULL, 0),
(33, 128, 1, 12, '2019-09-25 19:55:43', 'Magfile, Single', 1, 1, 'HR/Admin', 5, 0, 0, NULL, NULL, 0),
(34, 127, 1, 3, '2019-09-25 19:58:04', 'Monoblock Chairs, Black color', 10, 1, 'HR/Admin', 5, 0, 0, NULL, NULL, 0),
(35, 130, 1, 4, '2019-09-25 20:09:05', 'Battery, 12 volts VDC', 1, 2, 'Trading Department', 5, 0, 0, NULL, NULL, 0),
(36, 26, 1, 9, '2019-09-25 20:31:53', 'Stainless Steel Spoon', 12, 1, 'Admin', 5, 0, 0, NULL, NULL, 0),
(37, 26, 1, 9, '2019-09-25 20:45:30', 'Stainless Steel Fork', 12, 1, 'Admin', 5, 0, 0, NULL, NULL, 0),
(38, 26, 1, 9, '2019-09-25 20:52:16', 'Stainless Steel Table Knife', 12, 1, 'Admin', 5, 0, 0, NULL, NULL, 0),
(39, 26, 1, 9, '2019-09-25 20:58:52', 'Frypan 26cm', 1, 1, 'Admin', 5, 0, 0, NULL, NULL, 0),
(40, 140, 1, 11, '2019-09-26 10:10:15', 'WIFI Adapter', 1, 1, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(43, 118, 1, 12, '2019-10-02 14:53:52', 'Scissors Big', 1, 1, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(45, 142, 1, 12, '2019-10-02 15:17:26', 'Scissors', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(51, 118, 1, 12, '2019-10-03 12:02:52', 'Trash Can Black', 1, 1, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(58, 118, 1, 9, '2019-10-04 16:36:20', 'Tumbler', 6, 1, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(59, 118, 1, 9, '2019-10-04 16:46:13', 'Cup and Saucer', 6, 3, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(60, 118, 1, 9, '2019-10-04 16:59:29', 'Teaspoon', 6, 1, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(61, 118, 1, 9, '2019-10-04 17:06:22', 'Storage Box 40 L', 1, 1, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(62, 141, 1, 12, '2019-10-04 18:34:35', 'Stapler no 35, Black and Silver', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(63, 146, 1, 11, '2019-10-05 20:16:15', 'Universal Laptop Adapter', 1, 2, 'Yoorekka', 5, 0, 0, NULL, NULL, 0),
(64, 141, 1, 12, '2019-10-07 09:22:28', 'Scissors', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(66, 37, 1, 11, '2019-10-08 16:23:21', 'Printer Cable, 5 meters long,  USB 2.0, 480 mbps data transfer', 1, 1, 'Contracts & Compliance', 5, 0, 0, NULL, NULL, 0),
(67, 17, 1, 11, '2019-10-08 16:41:35', 'UPS Sealed Rechargeable Battery (12V 4.5AH/20HR) ', 1, 1, 'EMG-Billing', 5, 0, 0, NULL, NULL, 0),
(68, 118, 1, 3, '2019-10-09 16:15:40', 'Side Table, Walnut color', 1, 1, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(69, 118, 1, 4, '2019-10-09 17:41:11', 'Puncher 2- hole, Big, Blue color, 70 mm, 25 sheets ', 1, 1, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(70, 144, 1, 4, '2019-10-09 17:52:40', 'Stapler No.35 with remover, Pink color', 1, 1, 'HR/Admin', 5, 0, 0, NULL, NULL, 0),
(71, 142, 1, 4, '2019-10-09 17:58:55', 'Stapler No. 35 with remover, Beige color', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(72, 118, 1, 4, '2019-10-09 18:25:03', 'Stapler No. 35 with remover, Black color', 1, 1, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(73, 118, 1, 4, '2019-10-09 18:31:28', 'Garbage bin, Big, Black color', 1, 1, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(74, 142, 1, 4, '2019-10-09 19:25:52', 'Calculator, 12 digits ', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(75, 141, 1, 4, '2019-10-09 19:39:36', 'Calculator, 12 digits', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(76, 8, 1, 4, '2019-10-09 19:44:41', 'Calculator, 12 digits', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(77, 22, 1, 4, '2019-10-09 19:49:43', 'Calculator, 12 digits', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(78, 118, 1, 12, '2019-10-09 19:56:55', 'Ruler, 12 inches with metric table, Gray color', 1, 1, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(79, 141, 1, 12, '2019-10-10 16:47:05', 'Ruler, 12 " with metric table, metal', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(80, 118, 1, 12, '2019-10-10 17:51:19', 'White Board Eraser, Green color', 1, 1, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(81, 118, 1, 4, '2019-10-10 18:14:47', 'Flat Cord #16, 5 meters, white', 1, 1, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(82, 118, 1, 4, '2019-10-10 18:23:13', 'Outlet 3- gang, white', 1, 1, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(85, 127, 1, 5, '2019-10-17 10:16:43', 'Hard Hat, Ordinary, White', 10, 1, '', 5, 0, 0, NULL, NULL, 0),
(86, 32, 1, 11, '2019-10-17 19:03:30', 'USB Flash Drive 32GB', 1, 1, 'Engineering Dept.', 5, 0, 0, NULL, NULL, 0),
(97, 26, 1, 9, '2019-10-18 17:58:43', 'Dish Rack, White', 1, 1, 'Admin', 5, 0, 0, NULL, NULL, 0),
(105, 1, 1, 11, '2019-10-21 19:22:48', 'External Hard Drive 1 TB', 1, 1, 'Management', 1, 0, 0, NULL, NULL, 0),
(106, 32, 1, 11, '2019-10-29 10:45:31', 'Laptop Intel Dual Core 2955U, Intel HD Graphics, 14 inches HD LED Display, 4GB DDR3 Memory', 1, 2, 'Engineering Dept.', 5, 0, 0, NULL, NULL, 0),
(107, 32, 1, 11, '2019-10-29 10:50:12', 'Laptop Charger', 1, 2, 'Engineering Dept.', 5, 0, 0, NULL, NULL, 0),
(108, 32, 1, 11, '2019-10-29 10:52:33', 'Mouse', 1, 2, 'Engineering Dept.', 5, 0, 0, NULL, NULL, 0),
(109, 32, 1, 11, '2019-10-29 10:55:17', 'Laptop Bag', 1, 1, 'Engineering Dept.', 5, 0, 0, NULL, NULL, 0),
(110, 68, 1, 1, '2019-10-30 10:21:00', 'Tire', 1, 1, 'HR/Admin', 5, 0, 0, NULL, NULL, 0),
(111, 0, 1, 3, '2019-11-08 19:29:33', 'Office Table', 1, 1, 'Trading Department', 5, 0, 0, NULL, NULL, 0),
(112, 0, 1, 3, '2019-11-08 19:38:37', 'Swivel Chair', 1, 1, 'Trading Department', 5, 0, 0, NULL, NULL, 0),
(113, 0, 1, 11, '2019-11-12 15:46:07', 'Monitor 18.5 inches', 1, 2, 'Trading Department', 5, 0, 0, NULL, NULL, 0),
(114, 0, 1, 11, '2019-11-12 15:54:11', 'CPU Intel Core i5-7400 @ 3.00GHz, 4GB RAM, 500GB HDD', 1, 2, 'Trading Department', 5, 0, 0, NULL, NULL, 0),
(115, 0, 1, 11, '2019-11-12 16:37:49', 'Wired Keyboard', 1, 1, 'Trading Department', 5, 0, 0, NULL, NULL, 0),
(116, 0, 1, 11, '2019-11-12 16:39:58', 'Wired Mouse', 1, 1, 'Trading Department', 5, 0, 0, NULL, NULL, 0),
(117, 0, 1, 11, '2019-11-12 16:43:27', 'WIFI Adapter', 1, 1, 'Trading Department', 5, 0, 0, NULL, NULL, 0),
(118, 141, 1, 3, '2019-11-12 17:46:59', 'Office Table L 46 inches x W 22.5 inches x H 28 inches', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(119, 132, 1, 12, '2019-11-13 18:06:43', 'Cutting Knife', 1, 1, 'IT Department', 5, 0, 0, NULL, NULL, 0),
(120, 32, 1, 11, '2019-11-14 10:46:05', 'Wireless Mouse', 1, 1, 'Engineering Dept.', 5, 0, 0, NULL, NULL, 0),
(121, 141, 1, 3, '2019-11-16 16:17:32', 'Office Chair', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(122, 29, 1, 3, '2019-11-18 19:41:44', 'Swivel Chair', 1, 1, 'Trading', 5, 0, 0, NULL, NULL, 1),
(123, 147, 1, 11, '2019-11-21 10:42:25', 'Monitor LED 18.5 inches', 1, 1, 'from Palawan', 5, 1, 5, '2019-11-21', 'Unit in Site;  AAF should be issued by the incharge Ms Grace', 1),
(124, 147, 1, 11, '2019-11-21 10:51:05', 'CPU Intel Core i3 7100 Processor: 3.9 GB H110 LGA 1151, HDD: 500GB, SATA 7200RPM, RAM: 4GB DDR4', 1, 1, 'from Palawan', 5, 1, 5, '2019-11-21', 'Unit is used in Site; AAF should be issued by incharge, Ms Grace Bugna', 1),
(125, 147, 1, 11, '2019-11-21 10:56:14', 'Keyboard', 1, 1, 'from Palawan', 5, 1, 5, '2019-11-21', 'Unit is used in Site. AAF should be issued by incharge, Ms Grace Bugna', 1),
(126, 147, 1, 11, '2019-11-21 10:59:26', 'Optical Mouse', 1, 1, 'from Palawan', 5, 0, 0, NULL, NULL, 0),
(127, 5, 1, 1, '2019-11-21 16:04:20', 'Toyota Hiace Commuter Delux 2.8 Dsl MT-ZC-005', 1, 2, 'Admin', 5, 0, 0, NULL, NULL, 0),
(128, 5, 1, 1, '2019-11-21 16:58:19', 'Early Warning Device', 1, 1, 'Admin', 5, 0, 0, NULL, NULL, 0),
(129, 5, 1, 1, '2019-11-21 17:18:25', 'Jack', 1, 1, 'Admin', 5, 0, 0, NULL, NULL, 0),
(130, 5, 1, 1, '2019-11-21 17:20:58', 'Spare Tire', 1, 1, 'Admin', 5, 0, 0, NULL, NULL, 0),
(131, 5, 1, 1, '2019-11-22 10:45:59', 'Open-end Wrench', 1, 1, 'Admin', 5, 0, 0, NULL, NULL, 0),
(132, 5, 1, 1, '2019-11-22 10:52:14', 'Open-end Wrench, size 12 mm to 14mm', 1, 1, 'Admin', 5, 0, 0, NULL, NULL, 0),
(133, 5, 1, 1, '2019-11-22 10:55:19', 'Towing Bars', 2, 1, 'Admin', 5, 0, 0, NULL, NULL, 0),
(134, 5, 1, 1, '2019-11-22 11:34:57', 'Pliers ', 1, 1, 'Admin', 5, 0, 0, NULL, NULL, 0),
(135, 68, 1, 1, '2019-11-25 10:41:06', 'Tire Tubeless 205 x 65/R15', 1, 1, 'HR/Admin', 5, 0, 0, NULL, NULL, 0),
(136, 124, 1, 11, '2019-11-29 17:53:44', 'AVR', 1, 1, 'Shoppers Guide', 5, 0, 0, NULL, NULL, 1),
(137, 124, 1, 11, '2019-11-29 17:57:50', 'UPS', 1, 1, 'Shoppers Guide', 5, 0, 0, NULL, NULL, 1),
(138, 24, 1, 11, '2019-11-29 18:07:56', 'Flash Drive 32 GB', 1, 1, 'Trading', 5, 0, 0, NULL, NULL, 0),
(139, 0, 1, 11, '2019-11-29 18:14:55', 'Hard Drive External,  1 TB', 1, 1, 'Trading Department', 5, 0, 0, NULL, NULL, 0),
(140, 130, 1, 11, '2019-11-29 18:15:53', 'External Hard Drive, 1 TB', 1, 1, '', 5, 0, 0, NULL, NULL, 0),
(141, 9, 1, 4, '2019-11-29 18:42:07', 'Calculator MZ- 12S', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(142, 0, 1, 4, '2019-11-29 18:43:20', 'Filing Tray 2 Layer, Black', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(143, 0, 1, 11, '2019-11-29 18:46:34', 'Laptop Windows 8 with Laptop Bag', 1, 2, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(144, 0, 1, 11, '2019-11-29 18:48:40', 'Laptop Charger', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(145, 9, 1, 11, '2019-11-29 18:49:42', 'Mouse', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(146, 0, 1, 11, '2019-11-29 18:51:20', 'Flash Drive 16GB', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(147, 149, 1, 3, '2019-12-03 15:16:46', 'Office Table', 1, 1, '', 5, 0, 0, NULL, NULL, 0),
(148, 149, 1, 3, '2019-12-03 15:18:46', 'Office Chair', 1, 1, '', 5, 0, 0, NULL, NULL, 0),
(149, 10, 1, 3, '2019-12-05 10:49:34', 'Swivel Chair, Colombia Chair with Armrest', 1, 1, 'Special Projects', 5, 0, 0, NULL, NULL, 0),
(150, 10, 1, 3, '2019-12-05 10:53:56', 'Office Table, M28', 1, 1, 'Special Projects', 5, 0, 0, NULL, NULL, 0),
(151, 7, 1, 1, '2019-12-05 16:59:03', 'Ford Everest Titanium', 1, 2, 'Admin', 5, 0, 0, NULL, NULL, 0),
(152, 0, 1, 11, '2019-12-06 14:46:38', 'CPU, Core i5 RAM 4GB, 64 bit, x64 Based Processor, 500GB HDD', 1, 2, 'Shoppers Guide', 5, 0, 0, NULL, NULL, 0),
(153, 0, 1, 11, '2019-12-06 14:54:17', 'Monitor, 18.5 inches ', 1, 2, 'Shoppers Guide', 5, 0, 0, NULL, NULL, 0),
(154, 0, 1, 11, '2019-12-06 14:57:45', 'Wired Keyboard', 1, 1, 'Shoppers Guide', 5, 0, 0, NULL, NULL, 0),
(155, 130, 1, 11, '2019-12-07 11:52:59', 'USB Data Cable', 1, 1, '', 5, 0, 0, NULL, NULL, 0),
(156, 0, 1, 11, '2019-12-07 11:54:04', 'USB Data Cable', 1, 1, 'Trading Department', 5, 0, 0, NULL, NULL, 0),
(157, 130, 1, 11, '2019-12-07 11:57:30', 'USb', 1, 0, '', 5, 0, 0, NULL, NULL, 0),
(158, 130, 1, 11, '2019-12-07 11:58:24', 'USB Data Cable', 1, 1, '', 5, 0, 0, NULL, NULL, 0),
(159, 130, 1, 11, '2019-12-07 20:31:30', 'External Hard Drive  1 TB', 1, 1, '', 5, 0, 0, NULL, NULL, 0),
(160, 152, 1, 11, '2019-12-09 17:23:01', 'Monitor 18.5 inches', 1, 2, 'Renewable Energy Department', 5, 1, 5, '2019-12-19', 'double encode', 1),
(161, 152, 1, 11, '2019-12-09 17:43:47', 'Wired Keyboard', 1, 1, 'Renewable Energy Department', 5, 1, 5, '2019-12-21', 'Double encode', 1),
(162, 152, 1, 11, '2019-12-09 17:46:10', 'Mouse', 1, 1, 'Renewable Energy Department', 5, 1, 5, '2019-12-21', 'Double encode', 1),
(163, 152, 1, 11, '2019-12-09 17:59:42', 'AVR', 1, 1, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(165, 152, 1, 11, '2019-12-09 18:12:36', 'UPS', 1, 1, 'Renewable Energy Department', 5, 1, 5, '2019-12-21', 'Double encode', 1),
(166, 121, 1, 4, '2019-12-09 19:06:13', 'V39 Perfection Scanner', 1, 1, '', 5, 0, 0, NULL, NULL, 0),
(167, 130, 1, 4, '2019-12-09 19:34:02', 'Calculator MZ 12S', 1, 1, '', 5, 0, 0, NULL, NULL, 0),
(168, 151, 1, 11, '2019-12-09 20:22:36', 'Mouse', 1, 1, 'Shoppers Guide', 5, 0, 0, NULL, NULL, 0),
(169, 0, 1, 11, '2019-12-09 20:23:32', 'Mouse', 1, 1, 'Shoppers Guide', 5, 0, 0, NULL, NULL, 1),
(170, 0, 1, 11, '2019-12-09 20:31:59', 'AVR', 1, 1, 'Shoppers Guide', 5, 0, 0, NULL, NULL, 0),
(171, 0, 1, 11, '2019-12-09 20:33:37', 'UPS', 1, 1, 'Shoppers Guide', 5, 0, 0, NULL, NULL, 0),
(172, 0, 1, 11, '2019-12-16 19:03:18', 'Intel Core i7 4th Gen 8GB Ram 120GB SSD Windows 10', 1, 2, 'Shoppers Guide', 5, 0, 0, NULL, NULL, 1),
(173, 0, 1, 11, '2019-12-16 19:05:50', 'Mouse', 1, 1, 'Shoppers Guide', 5, 0, 0, NULL, NULL, 1),
(174, 0, 1, 11, '2019-12-16 19:07:20', 'Charger Laptop', 1, 1, 'Shoppers Guide', 5, 0, 0, NULL, NULL, 1),
(175, 0, 1, 3, '2019-12-16 19:08:16', 'Office Table', 1, 1, 'Shoppers Guide', 5, 0, 0, NULL, NULL, 1),
(176, 0, 1, 3, '2019-12-16 19:09:21', 'Office Chair', 1, 1, 'Shoppers Guide', 5, 0, 0, NULL, NULL, 1),
(177, 0, 1, 11, '2019-12-17 10:22:58', 'AVR', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 1),
(178, 27, 1, 12, '2019-12-17 15:42:38', 'Magfile Single', 1, 1, 'Finance', 5, 0, 0, NULL, NULL, 0),
(179, 141, 1, 12, '2019-12-17 15:52:00', 'Magfile Single', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(180, 128, 1, 4, '2019-12-17 16:03:23', 'Stapler No. 35, Pink', 1, 1, 'HR/Admin', 5, 0, 0, NULL, NULL, 0),
(181, 152, 1, 11, '2019-12-19 10:54:40', 'Monitor 19 inches LED Backlit Display 47 cm', 1, 2, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(182, 152, 1, 11, '2019-12-19 12:11:04', 'CPU S1151 9th Gen Intel Core i59400, DDR4 4GB PC2400, Casing ATX Frontier Ray RY05M-C', 1, 2, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(183, 152, 1, 11, '2019-12-19 12:23:35', 'Wired Keyboard', 1, 1, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(184, 152, 1, 11, '2019-12-19 12:37:30', 'Mouse Wired Optical', 1, 1, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(185, 152, 1, 11, '2019-12-19 12:41:26', 'UPS 650', 1, 1, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(187, 130, 1, 2, '2020-01-02 17:23:40', 'Huawei Y7 2019 (Pro) Aurora Blue, CP No. 09178808478', 1, 2, '', 5, 0, 0, NULL, NULL, 0),
(188, 130, 1, 2, '2020-01-02 17:30:11', 'Huawei Y7 2019 (Pro) Aurora Blue, CP No. 09178808478', 1, 2, '', 5, 0, 0, NULL, NULL, 0),
(189, 130, 1, 2, '2020-01-02 17:53:52', 'Earphone for Huawei Y7 2019(Pro) Aurora Blue, CP No. 09178808478', 1, 1, '', 5, 0, 0, NULL, NULL, 0),
(190, 130, 1, 2, '2020-01-02 17:58:45', 'Charger for Huawei Y7 2019(Pro) Aurora Blue, CP No. 09178808478', 1, 1, '', 5, 0, 0, NULL, NULL, 0),
(191, 127, 1, 2, '2020-01-02 19:00:50', 'Huawei Y5 2019 Blue, CP No. 09177218400', 1, 2, '', 5, 0, 0, NULL, NULL, 0),
(192, 127, 1, 2, '2020-01-02 19:08:45', 'Charger for Huawei Y5 2019, CP No. 09177218400', 1, 1, '', 5, 0, 0, NULL, NULL, 0),
(193, 127, 1, 2, '2020-01-02 19:14:15', 'Earphone for Huawei Y5 2019 Blue, CP No. 09177218400', 1, 1, '', 5, 0, 0, NULL, NULL, 0),
(194, 152, 1, 11, '2020-01-03 10:45:27', 'USB Wifi Adapter', 1, 1, 'Renewable Energy Department', 5, 0, 0, NULL, NULL, 0),
(195, 0, 1, 11, '2020-01-06 18:10:29', 'Laptop i5-4210U cpu 1.70GHz 2.40GHz, RAM 4GB 64bit OS Windows 8', 1, 2, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(196, 0, 1, 11, '2020-01-06 18:12:46', 'Laptop Charger', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(197, 141, 1, 4, '2020-01-06 18:15:19', 'Stapler No. 35 Black and Silver Color', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(198, 141, 1, 4, '2020-01-06 18:18:58', 'Staple Remover, Black Color', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(199, 0, 1, 11, '2020-01-06 18:20:09', 'Power Cord for Asus Charger', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(200, 0, 1, 11, '2020-01-06 18:21:43', 'WIFI Adapter, Black Color', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(201, 9, 1, 4, '2020-01-06 18:25:41', 'Stapler No. 10,   Maroon Color', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(202, 0, 1, 4, '2020-01-06 18:26:57', 'Puncher,   Blue Color', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(203, 0, 1, 12, '2020-01-06 18:29:05', 'Cork Board', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(204, 0, 1, 4, '2020-01-06 18:30:53', 'Waste Basket,  Gray and Orange', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(205, 141, 1, 4, '2020-01-06 18:36:39', 'Cutter,  Small', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(206, 9, 1, 12, '2020-01-06 18:40:31', 'Scissors,  7 inches', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(207, 0, 1, 12, '2020-01-06 18:43:02', 'Document Keeper', 3, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(208, 0, 1, 12, '2020-01-06 18:50:15', 'Document Keeper,  Green Color', 3, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(209, 0, 1, 12, '2020-01-06 18:52:54', 'Document Keeper,  Red Color', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(210, 0, 1, 3, '2020-01-09 12:02:21', 'Office Chair', 1, 1, 'HR/Admin', 5, 0, 0, NULL, NULL, 0),
(211, 130, 1, 11, '2020-01-10 10:13:35', 'AVR', 1, 2, '', 5, 1, 5, '2020-01-16', 'Temporarily assigned to Ms Haziel Aplaon', 1),
(212, 130, 1, 11, '2020-01-10 10:26:14', 'Monitor ', 1, 2, '', 5, 1, 5, '2020-01-16', 'Temporarily assigned to Ms Haziel Aplaon- 01.16.20', 1),
(213, 130, 1, 11, '2020-01-10 10:31:42', 'Wired Keyboard', 1, 2, '', 5, 1, 5, '2020-01-16', 'Temporarily assigned to Ms Haziel Aplaon', 1),
(214, 130, 1, 11, '2020-01-10 10:39:08', 'Mouse', 1, 2, '', 5, 1, 5, '2020-01-16', 'Temporarily assigned to Ms Haziel Aplaon', 1),
(215, 130, 1, 11, '2020-01-10 10:46:10', 'CPU', 1, 2, '', 5, 1, 5, '2020-01-16', 'Unit temporarily assigned to Ms Haziel Aplaon', 1),
(216, 130, 1, 11, '2020-01-10 10:49:33', 'UPS', 1, 2, '', 5, 0, 0, NULL, NULL, 1),
(217, 154, 1, 11, '2020-01-11 17:50:58', 'Monitor', 1, 2, 'Accounting', 5, 1, 5, '2020-01-16', 'Temporarily use requested unit from Trading Department', 1),
(218, 154, 1, 11, '2020-01-11 17:56:24', 'Wired Keyboard', 1, 2, 'Accounting', 5, 1, 5, '2020-01-16', 'Temporarily use Trading request', 1),
(219, 154, 1, 11, '2020-01-11 17:59:30', 'AVR', 1, 2, 'Accounting', 5, 1, 5, '2020-01-16', 'Double encode', 1),
(220, 154, 1, 11, '2020-01-11 18:01:45', 'CPU', 1, 2, 'Accounting', 5, 1, 5, '2020-01-16', 'Temporarily use requested unit of Trading Department ', 1),
(221, 154, 1, 11, '2020-01-11 18:02:39', 'UPS', 1, 2, 'Accounting', 5, 1, 5, '2020-01-16', 'Temporarily use requested unit from Trading Department', 1),
(222, 28, 1, 11, '2020-01-15 13:04:20', 'Monitor 14 inches', 1, 2, 'HR/Admin', 5, 0, 0, NULL, NULL, 0),
(224, 154, 1, 11, '2020-01-16 10:02:46', 'CPU', 1, 2, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(225, 154, 1, 11, '2020-01-16 10:12:15', 'CPU Intel Core i5 4GB, 1 TB 9th Gen with SSD', 1, 2, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(226, 154, 1, 11, '2020-01-16 10:21:40', 'UPS 650VA', 1, 2, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(227, 154, 1, 11, '2020-01-16 10:36:26', 'AVR', 1, 2, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(228, 154, 1, 11, '2020-01-16 10:52:39', 'Monitor  19 inches ', 1, 2, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(229, 154, 1, 11, '2020-01-16 11:02:11', 'Wired Optical Mouse', 1, 2, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(230, 154, 1, 11, '2020-01-16 11:25:33', 'Wired Keyboard', 1, 2, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(231, 32, 1, 11, '2020-01-16 15:28:07', 'Battery 6 cell lithium-ion', 1, 2, 'Engineering Dept.', 5, 0, 0, NULL, NULL, 0),
(232, 154, 1, 3, '2020-01-16 18:47:56', 'Office Table  M28', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(233, 154, 1, 3, '2020-01-16 18:53:15', 'Office Table  M28', 1, 1, 'Accounting', 5, 0, 0, NULL, NULL, 0),
(234, 13, 1, 11, '2020-01-16 19:08:16', 'Monitor  14 inches', 1, 2, 'HR/Admin', 5, 0, 0, NULL, NULL, 0),
(235, 13, 1, 11, '2020-01-16 19:10:39', 'CPU i3-4170 3.70GHZ 4GB 64bit OS ', 1, 2, 'HR/Admin', 5, 0, 0, NULL, NULL, 0),
(236, 13, 1, 11, '2020-01-16 19:12:04', 'Keyboard', 1, 2, 'HR/Admin', 5, 0, 0, NULL, NULL, 0),
(237, 13, 1, 11, '2020-01-16 19:15:45', 'Mouse with mouse pad', 1, 2, 'HR/Admin', 5, 0, 0, NULL, NULL, 0),
(238, 28, 1, 11, '2020-01-16 19:18:08', 'AVR', 1, 2, 'Shoppers Guide', 5, 0, 0, NULL, NULL, 0),
(239, 13, 1, 11, '2020-01-16 19:20:20', 'UPS', 1, 2, 'HR/Admin', 5, 0, 0, NULL, NULL, 0),
(240, 0, 1, 3, '2020-01-16 19:22:10', 'Office Table', 1, 1, 'Shoppers Guide', 5, 0, 0, NULL, NULL, 0),
(241, 13, 1, 3, '2020-01-16 19:23:16', 'Office Chair  Ergonomic', 1, 1, 'HR/Admin', 5, 0, 0, NULL, NULL, 0),
(242, 144, 1, 12, '2020-01-16 19:24:08', 'Document Keeper,  Green', 1, 1, 'HR/Admin', 5, 0, 0, NULL, NULL, 0),
(243, 13, 1, 3, '2020-01-16 20:10:25', 'Office Table', 1, 1, 'HR/Admin', 5, 0, 0, NULL, NULL, 0),
(244, 0, 1, 3, '2020-01-16 20:13:04', 'Office Chair', 1, 1, 'Shoppers Guide', 5, 0, 0, NULL, NULL, 0),
(245, 0, 1, 4, '2020-01-16 20:17:10', 'Desk Lamp ', 1, 1, 'Shoppers Guide', 5, 0, 0, NULL, NULL, 0),
(246, 37, 1, 11, '2020-01-16 21:01:11', 'Monitor', 1, 2, 'Contracts & Compliance', 5, 0, 0, NULL, NULL, 0),
(247, 37, 1, 11, '2020-01-16 21:01:51', 'Monitor  14 inches', 1, 2, 'Contracts & Compliance', 5, 0, 0, NULL, NULL, 0),
(248, 37, 1, 11, '2020-01-16 21:03:41', 'CPU  Intel Core i3-4160 3.60GHz 2.0GB 32bit OS', 1, 2, 'Contracts & Compliance', 5, 0, 0, NULL, NULL, 0),
(249, 37, 1, 11, '2020-01-16 21:04:20', 'Keyboard', 1, 2, 'Contracts & Compliance', 5, 0, 0, NULL, NULL, 0),
(250, 37, 1, 11, '2020-01-16 21:05:25', 'Mouse', 1, 2, 'Contracts & Compliance', 5, 0, 0, NULL, NULL, 0),
(251, 37, 1, 11, '2020-01-16 21:06:36', 'AVR', 1, 2, 'Contracts & Compliance', 5, 0, 0, NULL, NULL, 0),
(252, 0, 1, 11, '2020-01-16 21:07:31', 'Speaker', 1, 0, '', 5, 0, 0, NULL, NULL, 0),
(253, 37, 1, 11, '2020-01-16 21:08:07', 'Speaker', 1, 2, 'Contracts & Compliance', 5, 0, 0, NULL, NULL, 0),
(254, 37, 1, 11, '2020-01-16 21:09:57', 'UPS', 1, 2, 'Contracts & Compliance', 5, 0, 0, NULL, NULL, 0),
(255, 37, 1, 11, '2020-01-16 21:11:08', 'WIFI Adapter', 1, 1, 'Contracts & Compliance', 5, 0, 0, NULL, NULL, 0),
(256, 37, 1, 3, '2020-01-16 21:12:10', 'Computer Rack', 1, 1, 'Contracts & Compliance', 5, 0, 0, NULL, NULL, 0),
(257, 37, 1, 3, '2020-01-16 21:12:51', 'Office Table', 1, 1, 'Contracts & Compliance', 5, 0, 0, NULL, NULL, 0),
(258, 37, 1, 3, '2020-01-16 21:13:49', 'Office Chair  Ergonomic', 1, 1, 'Contracts & Compliance', 5, 0, 0, NULL, NULL, 0),
(259, 37, 1, 4, '2020-01-16 21:14:40', 'Desk Lamp', 1, 1, 'Contracts & Compliance', 5, 0, 0, NULL, NULL, 0),
(260, 37, 1, 12, '2020-01-16 21:15:45', 'Document Keeper  Green', 1, 1, 'Contracts & Compliance', 5, 0, 0, NULL, NULL, 0),
(261, 37, 1, 4, '2020-01-16 21:16:32', 'Calculator', 1, 2, 'Contracts & Compliance', 5, 0, 0, NULL, NULL, 0),
(262, 37, 1, 4, '2020-01-16 21:17:41', 'Stapler No 35', 1, 1, 'Contracts & Compliance', 5, 0, 0, NULL, NULL, 0),
(263, 37, 1, 4, '2020-01-16 21:18:57', 'Cutter  Green', 1, 1, 'Contracts & Compliance', 5, 0, 0, NULL, NULL, 0),
(264, 37, 1, 4, '2020-01-16 21:19:49', 'Scissor', 1, 1, 'Contracts & Compliance', 5, 0, 0, NULL, NULL, 0),
(265, 37, 1, 5, '2020-01-16 21:20:40', 'Safety Shoes size 37', 1, 1, 'Contracts & Compliance', 5, 0, 0, NULL, NULL, 0),
(266, 0, 1, 2, '2020-01-17 09:53:53', 'Samsung Globe 702-8322', 1, 0, '', 5, 0, 0, NULL, NULL, 0),
(267, 127, 1, 2, '2020-01-17 09:55:13', 'Samsung Globe 702-8322', 1, 2, '', 5, 0, 0, NULL, NULL, 0),
(268, 133, 1, 2, '2020-01-17 09:56:35', 'Cellphone Samsung Globe 702-8322', 1, 2, 'Progen', 5, 0, 0, NULL, NULL, 0),
(269, 133, 1, 11, '2020-01-17 10:11:16', 'Cellphone Charger Samsung Globe 702-8322', 1, 2, 'Progen', 5, 1, 5, '2020-01-17', 'Double encode', 1),
(270, 133, 1, 2, '2020-01-17 10:18:12', 'Cellphone Charger Samsung Globe 702-8322', 1, 2, 'Progen', 5, 0, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `et_info`
--

CREATE TABLE IF NOT EXISTS `et_info` (
`et_id` int(11) NOT NULL,
  `accountability_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `serial_no` varchar(100) DEFAULT NULL,
  `acquisition_date` varchar(100) DEFAULT NULL,
  `create_date` varchar(100) DEFAULT NULL,
  `date_issued` varchar(100) DEFAULT NULL,
  `et_desc` varchar(255) DEFAULT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unit_id` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `location_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `remarks` text,
  `damaged` int(11) DEFAULT '0',
  `damaged_remarks` text,
  `damaged_of_unit` text,
  `aaf_no` varchar(100) DEFAULT NULL,
  `asset_control_no` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `et_set`
--

CREATE TABLE IF NOT EXISTS `et_set` (
`set_id` int(11) NOT NULL,
  `set_name` varchar(50) DEFAULT NULL,
  `set_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `set_serial_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `et_set`
--

INSERT INTO `et_set` (`set_id`, `set_name`, `set_price`, `set_serial_no`) VALUES
(1, 'Laptop 1', '21000.00', ''),
(2, 'Toyota Hiace Commuter Deluxe 2.8 Dsl and Accessori', '1635000.00', ''),
(3, 'Huawei Y7 2019 Pro Aurora Blue', '0.00', ''),
(4, 'Keyboard and mouse set', '400.00', ''),
(5, 'Keyboard and mouse set 2', '400.00', ''),
(6, 'Keyboard and mouse set', '200.00', '1223'),
(7, 'TESTING SET', '300.00', '123666'),
(8, 'TESTIN ONLY SET', '560.00', '1236665'),
(9, 'test only', '10000.00', '12333'),
(10, 'Glue GUN SET', '200.00', '123456'),
(11, 'inflator', '1000.00', '1255466'),
(12, 'Computer', '15000.00', '1546622'),
(13, 'Office Equipment', '1500.00', '1545566'),
(14, 'asd', '213.00', '123');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
`location_id` int(11) NOT NULL,
  `location_name` varchar(100) DEFAULT NULL,
  `location_prefix` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location_name`, `location_prefix`) VALUES
(1, 'Bacolod', 'CENPRI-B'),
(2, 'Bago', 'CENPRI-S');

-- --------------------------------------------------------

--
-- Table structure for table `lost_items`
--

CREATE TABLE IF NOT EXISTS `lost_items` (
`lost_id` int(11) NOT NULL,
  `ed_id` int(11) NOT NULL DEFAULT '0',
  `lost_date` varchar(20) DEFAULT NULL,
  `employee_id` int(11) NOT NULL DEFAULT '0',
  `remarks` text,
  `replacement` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `physical_condition`
--

CREATE TABLE IF NOT EXISTS `physical_condition` (
`physical_id` int(11) NOT NULL,
  `condition_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `physical_condition`
--

INSERT INTO `physical_condition` (`physical_id`, `condition_name`) VALUES
(1, 'Good condition.'),
(2, 'New'),
(3, 'Functional');

-- --------------------------------------------------------

--
-- Table structure for table `placement`
--

CREATE TABLE IF NOT EXISTS `placement` (
`placement_id` int(11) NOT NULL,
  `placement_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `placement`
--

INSERT INTO `placement` (`placement_id`, `placement_name`) VALUES
(1, 'Board Room'),
(2, 'Pantry'),
(3, 'Accounting Area'),
(4, 'Finance area'),
(5, 'CEMPCO Office'),
(6, 'Trading Department'),
(7, 'Stock Room- Pantry Area'),
(8, 'Yoorekka Office'),
(9, 'Pantry- Generator'),
(10, 'Stock Room- Parking Area'),
(11, 'Billing Department'),
(12, 'Wooden Cabinet beside Ladies CR'),
(13, 'Admin Area'),
(14, 'Inside Toyota Hiace Commuter'),
(15, 'Isuzu Crosswind Plate No. ANA 1819'),
(16, 'Purchasing Area');

-- --------------------------------------------------------

--
-- Table structure for table `rack`
--

CREATE TABLE IF NOT EXISTS `rack` (
`rack_id` int(11) NOT NULL,
  `rack_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `repair_details`
--

CREATE TABLE IF NOT EXISTS `repair_details` (
`repair_id` int(11) NOT NULL,
  `ed_id` int(11) NOT NULL DEFAULT '0',
  `repair_date` varchar(20) DEFAULT NULL,
  `repair_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `jo_no` varchar(50) DEFAULT NULL,
  `supplier` varchar(100) DEFAULT NULL,
  `assessment` int(11) NOT NULL DEFAULT '0',
  `received_by` int(11) NOT NULL DEFAULT '0',
  `remarks` text,
  `create_date` varchar(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `saved` int(11) NOT NULL DEFAULT '0',
  `unsaved` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `returned_et`
--

CREATE TABLE IF NOT EXISTS `returned_et` (
`return_id` int(11) NOT NULL,
  `et_id` int(11) NOT NULL DEFAULT '0',
  `accountability_id` int(11) NOT NULL DEFAULT '0',
  `receive_by` int(11) NOT NULL DEFAULT '0',
  `quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ars_no` varchar(255) DEFAULT NULL,
  `return_date` varchar(20) DEFAULT NULL,
  `date_issued` varchar(20) DEFAULT NULL,
  `create_date` varchar(100) DEFAULT NULL,
  `return_remarks` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `returned_series`
--

CREATE TABLE IF NOT EXISTS `returned_series` (
`series_id` int(11) NOT NULL,
  `prefix` varchar(100) DEFAULT NULL,
  `series` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returned_series`
--

INSERT INTO `returned_series` (`series_id`, `prefix`, `series`) VALUES
(1, 'BCD-2018-10', 1001),
(2, 'BCD-2018-11', 1001),
(3, 'CENPRI-B-2019', 12),
(4, 'CENPRI-B-2019', 12),
(5, 'CENPRI-B-2019', 10),
(6, 'CENPRI-B-2019', 11),
(7, 'CENPRI-B-2019', 12),
(8, 'CENPRI-B-2019', 9),
(9, 'CENPRI-B-2019', 9),
(10, 'CENPRI-B-2019', 9),
(11, 'CENPRI-B-2019', 9),
(12, 'CENPRI-B-2019', 9),
(13, 'CENPRI-B-2019', 9),
(14, 'CENPRI-B-2019', 9),
(15, 'CENPRI-B-2019', 9),
(16, 'CENPRI-B-2019', 9),
(17, 'CENPRI-B-2019', 9),
(18, 'CENPRI-B-2019', 9),
(19, 'CENPRI-B-2019', 9),
(20, 'CENPRI-B-2019', 9),
(21, 'CENPRI-B-2019', 9),
(22, 'CENPRI-B-2019', 4),
(23, 'CENPRI-B-2019', 4),
(24, 'CENPRI-B-2019', 9),
(25, 'CENPRI-B-2019', 9),
(26, 'CENPRI-B-2019', 9),
(27, 'CENPRI-B-2019', 10),
(28, 'CENPRI-B-2018', 3),
(29, 'CENPRI-B-2020', 1),
(30, 'CENPRI-B-2020', 1),
(31, 'CENPRI-B-2020', 1);

-- --------------------------------------------------------

--
-- Table structure for table `return_details`
--

CREATE TABLE IF NOT EXISTS `return_details` (
`rd_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL DEFAULT '0',
  `et_id` int(11) NOT NULL DEFAULT '0',
  `ed_id` int(11) NOT NULL DEFAULT '0',
  `date_issued` varchar(20) DEFAULT NULL,
  `return_remarks` text
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_details`
--

INSERT INTO `return_details` (`rd_id`, `return_id`, `et_id`, `ed_id`, `date_issued`, `return_remarks`) VALUES
(1, 1, 113, 173, '', NULL),
(2, 1, 114, 174, '', NULL),
(3, 1, 115, 175, '', NULL),
(4, 1, 116, 176, '', NULL),
(5, 1, 117, 177, '', NULL),
(6, 2, 111, 171, '', NULL),
(7, 2, 112, 172, '', NULL),
(8, 2, 113, 173, '2018-10-16', NULL),
(9, 2, 114, 174, '2018-10-16', NULL),
(10, 2, 115, 175, '2018-10-16', NULL),
(11, 2, 116, 176, '2018-10-16', NULL),
(12, 2, 117, 177, '2018-10-16', NULL),
(13, 3, 147, 207, '2017-12-03', NULL),
(14, 4, 148, 208, '2019-12-03', NULL),
(15, 5, 167, 224, '2018-07-03', NULL),
(16, 6, 152, 212, '2019-08-06', NULL),
(17, 6, 153, 213, '2019-08-06', NULL),
(18, 6, 154, 214, '2018-08-06', NULL),
(19, 6, 169, 225, '2018-08-06', NULL),
(20, 6, 170, 226, '2018-08-06', NULL),
(21, 6, 171, 227, '2016-08-06', NULL),
(22, 6, 172, 228, '', NULL),
(23, 6, 173, 229, '', NULL),
(24, 6, 174, 230, '', NULL),
(25, 6, 175, 231, '', NULL),
(26, 6, 176, 232, '', NULL),
(27, 7, 177, 233, '', NULL),
(28, 8, 118, 178, '', NULL),
(29, 9, 121, 181, '', NULL),
(30, 10, 197, 254, '', NULL),
(31, 11, 198, 255, '', NULL),
(32, 12, 205, 262, '2019-02-02', NULL),
(33, 13, 204, 261, '', NULL),
(34, 14, 207, 264, '', NULL),
(35, 14, 207, 265, '', NULL),
(36, 14, 207, 266, '', NULL),
(37, 15, 146, 206, '', NULL),
(38, 16, 208, 267, '', NULL),
(39, 16, 208, 268, '', NULL),
(40, 16, 208, 269, '', NULL),
(41, 17, 209, 270, '', NULL),
(42, 18, 203, 260, '', NULL),
(43, 19, 202, 259, '', NULL),
(44, 20, 142, 202, '', NULL),
(45, 21, 200, 257, '', NULL),
(46, 22, 195, 252, '', NULL),
(47, 23, 196, 253, '', NULL),
(48, 24, 199, 256, '', NULL),
(49, 25, 143, 203, '', NULL),
(50, 26, 144, 204, '', NULL),
(51, 27, 210, 271, '', NULL),
(52, 28, 245, 302, '', NULL),
(54, 29, 234, 292, '', NULL),
(55, 29, 235, 293, '', NULL),
(56, 29, 236, 294, '', NULL),
(57, 29, 237, 295, '', NULL),
(58, 29, 239, 296, '', NULL),
(59, 29, 240, 297, '', NULL),
(60, 29, 241, 298, '', NULL),
(61, 29, 242, 299, '', NULL),
(62, 29, 243, 300, '', NULL),
(63, 29, 244, 301, '', NULL),
(64, 30, 268, 321, '', NULL),
(65, 31, 270, 323, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `return_head`
--

CREATE TABLE IF NOT EXISTS `return_head` (
`return_id` int(11) NOT NULL,
  `ars_no` varchar(255) DEFAULT NULL,
  `atf_no` varchar(255) DEFAULT NULL,
  `return_date` varchar(20) DEFAULT NULL,
  `accountability_id` int(11) NOT NULL DEFAULT '0',
  `received_by` int(11) NOT NULL DEFAULT '0',
  `return_remarks` text,
  `create_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_head`
--

INSERT INTO `return_head` (`return_id`, `ars_no`, `atf_no`, `return_date`, `accountability_id`, `received_by`, `return_remarks`, `create_date`) VALUES
(1, 'BCD-2018-10-1001', 'BCD-2019-1001', '2018-10-16', 124, 121, 'Returned- Transferred to Rowena Ricarse(temporary return date above)', '2019-11-12 16:53:49'),
(2, 'BCD-2018-11-1001', 'BCD-2019-1001', '2018-11-15', 131, 12, 'WIFI Adapter was issued by IT to Ms Rowena. ', '2019-11-16 15:00:09'),
(3, 'CENPRI-B-2019-12-1001', 'CENPRI-B-2019-1001', '2019-12-04', 129, 12, 'Transferred to Cempco Office for use of Sir Eduardo Remy Suatengco.', '2019-12-04 11:12:42'),
(4, 'CENPRI-B-2019-12-1002', 'CENPRI-B-2019-2020', '2019-12-04', 129, 12, 'Transferred to Cempco Office for use of Sir Remy Suatengco.', '2019-12-04 11:14:27'),
(5, 'CENPRI-B-2019-10-1001', 'CENPRI-B-2019-2020', '2019-10-16', 29, 12, 'On Sabbatical Leave.  This unit with Trading Department.', '2019-12-09 19:44:41'),
(6, 'CENPRI-B-2019-11-1001', 'CENPRI-B-2019-2020', '2019-11-21', 151, 129, 'Monitor, CPU, wired keyboard, mouse, avr, ups new user is Liza Marie Tasic.', '2019-12-16 19:39:31'),
(7, 'CENPRI-B-2019-12-1002', 'CENPRI-B-2019-2020', '2019-12-17', 19, 31, 'The device can''t give power to desktop due to the open wire.', '2019-12-17 10:41:24'),
(8, 'CENPRI-B-2019-09-1001', 'CENPRI-B-2020-1001', '2019-09-02', 9, 12, 'From Ms Gretchen to be transferred to Ms Sherny Mago.', '2020-01-07 10:33:27'),
(9, 'CENPRI-B-2019-09-1002', 'CENPRI-B-2020-1001', '2019-09-02', 9, 12, 'To be transferred to Ms Sherny Mago.', '2020-01-07 10:52:21'),
(10, 'CENPRI-B-2019-09-1002', 'CENPRI-B-2020-1001', '2019-09-02', 9, 12, 'To be transferred to Ms Sherny Mago.', '2020-01-08 18:13:26'),
(11, 'CENPRI-B-2019-09-1002', 'CENPRI-B-2020-1001', '2019-09-02', 9, 12, 'To be transferred to Ms Shery Mago.', '2020-01-08 18:28:26'),
(12, 'CENPRI-B-2019-09-1002', 'CENPRI-B-2020-1001', '2019-09-02', 9, 12, 'To be transferred to Ms Sherny Mago.', '2020-01-08 18:33:15'),
(13, 'CENPRI-B-2019-09-1002', 'CENPRI-B-2020-1001', '2019-09-02', 9, 12, 'To be transferred to Ms Gebby Jalandoni.', '2020-01-08 18:42:46'),
(14, 'CENPRI-B-2019-09-1002', 'CENPRI-B-2020-1001', '2019-09-02', 9, 12, 'Excused from reporting to work starting July 1, 2019.', '2020-01-08 18:49:20'),
(15, 'CENPRI-B-2019-09-1002', 'CENPRI-B-2020-1001', '2019-09-02', 9, 12, 'Excused from reporting to work starting July 1, 2019.', '2020-01-08 18:53:23'),
(16, 'CENPRI-B-2019-09-1002', 'CENPRI-B-2020-1001', '2019-09-02', 9, 12, 'Excused from reporting to work starting July 1, 2019.', '2020-01-08 18:57:16'),
(17, 'CENPRI-B-2019-09-1002', 'CENPRI-B-2020-1001', '2019-09-02', 9, 12, 'Excused from reporting to work starting July 1, 2019.', '2020-01-08 19:05:10'),
(18, 'CENPRI-B-2019-09-1002', 'CENPRI-B-2020-1001', '2019-09-02', 9, 12, 'Excused from reporting to work starting July 1, 2019.', '2020-01-08 19:06:37'),
(19, 'CENPRI-B-2019-09-1002', 'CENPRI-B-2020-1001', '2019-09-02', 9, 12, 'Excused from reporting to work starting July 1, 2019.', '2020-01-08 19:07:41'),
(20, 'CENPRI-B-2019-09-1002', 'CENPRI-B-2020-1001', '2019-09-02', 9, 12, 'Excused from reporting to work starting July 1, 2019.', '2020-01-08 19:08:46'),
(21, 'CENPRI-B-2019-09-1002', 'CENPRI-B-2020-1001', '2019-09-02', 9, 12, 'Returned to IT Department;  found defective and not functional; ', '2020-01-08 19:13:20'),
(22, 'CENPRI-B-2019-04-1001', 'CENPRI-B-2020-1001', '2019-04-26', 9, 121, 'Returned to IT Department;   found defective', '2020-01-08 19:17:22'),
(23, 'CENPRI-B-2019-04-1002', 'CENPRI-B-2020-1001', '2019-04-26', 9, 121, 'Returned to IT Department;  ', '2020-01-08 19:21:06'),
(24, 'CENPRI-B-2019-09-1002', 'CENPRI-B-2020-1001', '2019-09-02', 9, 121, 'Returned to IT Department;  ', '2020-01-08 19:25:04'),
(25, 'CENPRI-B-2019-09-1002', 'CENPRI-B-2020-1001', '2019-09-02', 9, 121, 'Returned to IT Department;   found defective and not functional.', '2020-01-08 19:26:29'),
(26, 'CENPRI-B-2019-09-1002', 'CENPRI-B-2020-1001', '2019-09-02', 9, 121, 'Returned to IT Department by Ms Gretchen.   Excused from reporting to work starting July 1, 2019;  ', '2020-01-08 19:27:49'),
(27, 'CENPRI-B-2019-10-1002', 'CENPRI-B-2020-1001', '2019-10-31', 144, 12, 'Total damage;  Chair''s swivel base split broke ', '2020-01-09 13:02:17'),
(28, 'CENPRI-B-2018-03-1001', 'CENPRI-B-2020-1001', '2018-03-21', 28, 12, 'Not charging/not functioning', '2020-01-16 20:26:50'),
(29, 'CENPRI-B-2020-01-1001', 'CENPRI-B-2020-1001', '2020-01-15', 28, 12, 'test', '2020-01-16 20:37:10'),
(30, 'CENPRI-B-2020-01-1002', 'CENPRI-B-2020-2021', '2020-01-17', 127, 12, 'This unit is to be transferred to Progen Site.', '2020-01-17 10:03:49'),
(31, 'CENPRI-B-2020-01-1002', 'CENPRI-B-2020-2021', '2020-01-17', 127, 12, 'This unit is to be transferred to PROGEN Site.', '2020-01-17 10:21:02');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
`subcat_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `subcat_name` varchar(100) DEFAULT NULL,
  `subcat_prefix` varchar(100) DEFAULT NULL,
  `location` varchar(11) DEFAULT NULL,
  `subcat_desc` text
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcat_id`, `category_id`, `subcat_name`, `subcat_prefix`, `location`, `subcat_desc`) VALUES
(1, 1, 'Transportation Equipment', 'FFE-TRA', 'BCD', 'Vehicles (Innova, Crosswind, Pickup, Fortuner, etc), Forklift, Boomtruck, Tires'),
(2, 1, 'Communication Equipment', 'FFE-COM', 'BCD', 'Radio Handset, Radio Power Supply, Radio Repeater, Radio Antenna, Microphone with Cord for ICOM Motorola Radius'),
(3, 1, 'Office Furnitures', 'FFE-FUR', 'BCD', 'Office Chair, Office Table, Book Shelves, Filing Cabinets, Computer Table, Conference Table and Chairs, Table Top Glass, Cubicle, Office Partitions, Office Drawers'),
(4, 1, 'Office Equipment', 'FFE-EQU', 'BCD', 'Cellphones, Telephones, Printers, Scanners, Fax Machine, Overhead Projector,  Projector Screen, Photocopier, Hard Disk, USB, External Hard Drive, Recorder, Safety Vault, Standby Generator, Digital and Video Camera, Audio System for the Board Room, Microphone w/ Speaker,  Telephone System (PABX), Air Conditioning Unit, CCTV Camera, IP/Surveillance Camera, Industrial Fan, Air Cooler, Ceiling Fan, Electric Fan, Exhaust Fan, Television,Staplers, Calculators, Punchers, Tape Dispenser'),
(5, 1, 'Personal Protective Equipment', 'FFE-PPE', 'BCD', 'Hard Hat, Electrical Gloves, Goggles, Harness, Safety Shoes, Boots, Chemical Mask, Welding Mask'),
(6, 1, 'Safety & Security Equipment', 'FFE-SSE', 'BCD', 'Data Cabinet, Fire Extinguisher, Eye Wash and Face Shower, Emergency Light, Flash Light, Alarms, Caution Board, Warning Triangle or Cone, Biometric, Automatic Lock Door (Door Access),  Fire Hose,  Illuminated Fire Exit Sign'),
(7, 1, 'Appliance', 'FFE-APP', 'BCD', 'Gas Stove, Refrigirator,  CD/DVD Player, Blender & Juicers, Coffee Maker,  Rice Cooker, Toaster, Electric Airpot, Electric Kettle, Electric Stove, Electric/Gas Oven, Food Warmer/Steamer, Gas Stove, Microwave Oven, Water Dispenser, Dryer, Flat Iron, Hair Dryer, Steam Iron, Vacuum Cleaner, Washing Machine,'),
(8, 1, 'Staffhouse Furnitures and Supplies', 'FFE-STA', 'BCD', 'Dining Table and Chairs, Sofa, Beds, Clothes Cabinet, Mattress, Pillows, Pillow Case, Bed Sheets, Blanket'),
(9, 1, 'Housewares', 'FFE-HOU', 'BCD', 'Bowl, Cups and Saucers, Drinking Glass, Mug, Pitcher, Plate, Spoon and Fork, Food Keeper, Dipper, Pail, Trash Bin'),
(10, 1, 'Medical Equipment', 'FFE-MED', 'BCD', 'Glucometer, ( Glucose Meter, One Touch Ultra 2 ), Digital Blood Pressure Apparatus, Aneroid Blood Pressure Apparatus, Stechoscope, Weighing Scale, First Aid Equipment, Oxygen for First Aid'),
(11, 1, 'Computer Equipment', 'FFE- COMP', 'BCD', 'Routers, PCs, Laptops, UPS, Wifi Adapter'),
(12, 1, 'Office Supplies', 'FFE- SUP', 'BCD', 'Scissor, Tape Dispenser, Filing Tray, Document Keeper, Clip Board, Binders, Books,');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_details`
--

CREATE TABLE IF NOT EXISTS `transfer_details` (
`td_id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL DEFAULT '0',
  `et_id` int(11) NOT NULL DEFAULT '0',
  `ed_id` int(11) NOT NULL DEFAULT '0',
  `date_issued` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_head`
--

CREATE TABLE IF NOT EXISTS `transfer_head` (
`transfer_id` int(11) NOT NULL,
  `accountability_id` int(11) NOT NULL DEFAULT '0',
  `transfer_to` int(11) NOT NULL DEFAULT '0',
  `transfer_date` varchar(20) DEFAULT NULL,
  `create_date` varchar(100) DEFAULT NULL,
  `transfer_remarks` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE IF NOT EXISTS `unit` (
`unit_id` int(11) NOT NULL,
  `unit_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`unit_id`, `unit_name`) VALUES
(1, 'pc/s'),
(2, 'unit/s'),
(3, 'set/s'),
(4, 'meter/s');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `usertype` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fullname`, `username`, `password`, `usertype`) VALUES
(1, 'admin', 'admin', 'admin', 1),
(2, 'Hennelen Tanan', 'hen', 'hen', 1),
(3, 'Jason Flor', 'flor', 'flor', 1),
(4, 'Stephine David Severino', 'tep', 'tep', 1),
(5, 'Imelda Espera', 'imelda', 'cenpri', 1),
(6, 'Zyndyryn Rosales', 'zyndyrosales', 'zynd101', 0),
(7, 'Mila Arana', 'milaarana', 'mila101', 0),
(8, 'Syndey Sinoro', 'syndsinoro', 'synd101', 0),
(9, 'Babylyn Providencia', 'babylyn', 'babylynetms', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset_series`
--
ALTER TABLE `asset_series`
 ADD PRIMARY KEY (`asset_id`);

--
-- Indexes for table `atf_series`
--
ALTER TABLE `atf_series`
 ADD PRIMARY KEY (`atf_id`);

--
-- Indexes for table `borrow_details`
--
ALTER TABLE `borrow_details`
 ADD PRIMARY KEY (`bd_id`);

--
-- Indexes for table `borrow_head`
--
ALTER TABLE `borrow_head`
 ADD PRIMARY KEY (`bh_id`);

--
-- Indexes for table `borrow_series`
--
ALTER TABLE `borrow_series`
 ADD PRIMARY KEY (`bseries_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
 ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
 ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `damage_info`
--
ALTER TABLE `damage_info`
 ADD PRIMARY KEY (`damage_id`);

--
-- Indexes for table `damage_series`
--
ALTER TABLE `damage_series`
 ADD PRIMARY KEY (`ds_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
 ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
 ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `employee_inclusion`
--
ALTER TABLE `employee_inclusion`
 ADD PRIMARY KEY (`ei_id`);

--
-- Indexes for table `employee_series`
--
ALTER TABLE `employee_series`
 ADD PRIMARY KEY (`empser_id`);

--
-- Indexes for table `et_details`
--
ALTER TABLE `et_details`
 ADD PRIMARY KEY (`ed_id`);

--
-- Indexes for table `et_head`
--
ALTER TABLE `et_head`
 ADD PRIMARY KEY (`et_id`);

--
-- Indexes for table `et_info`
--
ALTER TABLE `et_info`
 ADD PRIMARY KEY (`et_id`);

--
-- Indexes for table `et_set`
--
ALTER TABLE `et_set`
 ADD PRIMARY KEY (`set_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
 ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `lost_items`
--
ALTER TABLE `lost_items`
 ADD PRIMARY KEY (`lost_id`);

--
-- Indexes for table `physical_condition`
--
ALTER TABLE `physical_condition`
 ADD PRIMARY KEY (`physical_id`);

--
-- Indexes for table `placement`
--
ALTER TABLE `placement`
 ADD PRIMARY KEY (`placement_id`);

--
-- Indexes for table `rack`
--
ALTER TABLE `rack`
 ADD PRIMARY KEY (`rack_id`);

--
-- Indexes for table `repair_details`
--
ALTER TABLE `repair_details`
 ADD PRIMARY KEY (`repair_id`);

--
-- Indexes for table `returned_et`
--
ALTER TABLE `returned_et`
 ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `returned_series`
--
ALTER TABLE `returned_series`
 ADD PRIMARY KEY (`series_id`);

--
-- Indexes for table `return_details`
--
ALTER TABLE `return_details`
 ADD PRIMARY KEY (`rd_id`);

--
-- Indexes for table `return_head`
--
ALTER TABLE `return_head`
 ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
 ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `transfer_details`
--
ALTER TABLE `transfer_details`
 ADD PRIMARY KEY (`td_id`);

--
-- Indexes for table `transfer_head`
--
ALTER TABLE `transfer_head`
 ADD PRIMARY KEY (`transfer_id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
 ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asset_series`
--
ALTER TABLE `asset_series`
MODIFY `asset_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=775;
--
-- AUTO_INCREMENT for table `atf_series`
--
ALTER TABLE `atf_series`
MODIFY `atf_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `borrow_details`
--
ALTER TABLE `borrow_details`
MODIFY `bd_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `borrow_head`
--
ALTER TABLE `borrow_head`
MODIFY `bh_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `borrow_series`
--
ALTER TABLE `borrow_series`
MODIFY `bseries_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `damage_info`
--
ALTER TABLE `damage_info`
MODIFY `damage_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `damage_series`
--
ALTER TABLE `damage_series`
MODIFY `ds_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT for table `employee_inclusion`
--
ALTER TABLE `employee_inclusion`
MODIFY `ei_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `employee_series`
--
ALTER TABLE `employee_series`
MODIFY `empser_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT for table `et_details`
--
ALTER TABLE `et_details`
MODIFY `ed_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=324;
--
-- AUTO_INCREMENT for table `et_head`
--
ALTER TABLE `et_head`
MODIFY `et_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=271;
--
-- AUTO_INCREMENT for table `et_info`
--
ALTER TABLE `et_info`
MODIFY `et_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `et_set`
--
ALTER TABLE `et_set`
MODIFY `set_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lost_items`
--
ALTER TABLE `lost_items`
MODIFY `lost_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `physical_condition`
--
ALTER TABLE `physical_condition`
MODIFY `physical_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `placement`
--
ALTER TABLE `placement`
MODIFY `placement_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `rack`
--
ALTER TABLE `rack`
MODIFY `rack_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `repair_details`
--
ALTER TABLE `repair_details`
MODIFY `repair_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `returned_et`
--
ALTER TABLE `returned_et`
MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `returned_series`
--
ALTER TABLE `returned_series`
MODIFY `series_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `return_details`
--
ALTER TABLE `return_details`
MODIFY `rd_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `return_head`
--
ALTER TABLE `return_head`
MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `transfer_details`
--
ALTER TABLE `transfer_details`
MODIFY `td_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transfer_head`
--
ALTER TABLE `transfer_head`
MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
