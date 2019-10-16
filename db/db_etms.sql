-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2019 at 02:50 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_etms`
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
) ENGINE=InnoDB AUTO_INCREMENT=851 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_series`
--

INSERT INTO `asset_series` (`asset_id`, `subcat_prefix`, `location`, `series`) VALUES
(1, 'FFE-FUR', 'BS', 1001),
(2, 'FFE-FUR', 'BS', 1002),
(3, 'FFE-FUR', 'BS', 1003),
(4, 'FFE-FUR', 'BS', 1004),
(5, 'FFE-FUR', 'BS', 1005),
(6, 'FFE-FUR', 'BS', 1006),
(7, 'FFE-FUR', 'BS', 1007),
(8, 'FFE-FUR', 'BS', 1008),
(9, 'FFE-FUR', 'BS', 1009),
(10, 'FFE-FUR', 'BS', 1010),
(11, 'FFE-FUR', 'BS', 1011),
(12, 'FFE-FUR', 'BS', 1012),
(13, 'FFE-FUR', 'BS', 1013),
(14, 'FFE-FUR', 'BS', 1014),
(15, 'FFE-FUR', 'BS', 1015),
(16, 'FFE-FUR', 'BS', 1016),
(17, 'FFE-FUR', 'BS', 1017),
(18, 'FFE-FUR', 'BS', 1018),
(19, 'FFE-FUR', 'BS', 1019),
(20, 'FFE-FUR', 'BS', 1020),
(21, 'FFE-FUR', 'BS', 1021),
(22, 'FFE-FUR', 'BS', 1022),
(23, 'FFE-FUR', 'BS', 1023),
(24, 'FFE-FUR', 'BS', 1024),
(25, 'FFE-FUR', 'BS', 1025),
(26, 'FFE-FUR', 'BS', 1026),
(27, 'FFE-FUR', 'BS', 1027),
(28, 'FFE-FUR', 'BS', 1028),
(29, 'FFE-FUR', 'BS', 1029),
(30, 'FFE-FUR', 'BS', 1030),
(31, 'FFE-FUR', 'BS', 1031),
(32, 'FFE-FUR', 'BS', 1032),
(33, 'FFE-FUR', 'BS', 1033),
(34, 'TOO-HAN', 'BS', 1001),
(35, 'TOO-HAN', 'BS', 1002),
(36, 'TOO-HAN', 'BS', 1003),
(37, 'TOO-HAN', 'BS', 1004),
(38, 'TOO-HAN', 'BS', 1005),
(39, 'TOO-HAN', 'BS', 1006),
(40, 'FFE-PPE', 'BS', 1001),
(41, 'FFE-PPE', 'BS', 1002),
(42, 'FFE-PPE', 'BS', 1003),
(43, 'FFE-PPE', 'BS', 1004),
(44, 'FFE-PPE', 'BS', 1005),
(45, 'FFE-PPE', 'BS', 1006),
(46, 'FFE-PPE', 'BS', 1007),
(47, 'FFE-PPE', 'BS', 1008),
(48, 'FFE-PPE', 'BS', 1009),
(49, 'FFE-PPE', 'BS', 1010),
(50, 'FFE-PPE', 'BS', 1011),
(51, 'FFE-PPE', 'BS', 1012),
(52, 'FFE-PPE', 'BS', 1013),
(53, 'FFE-PPE', 'BS', 1014),
(54, 'FFE-PPE', 'BS', 1015),
(55, 'FFE-PPE', 'BS', 1016),
(56, 'TOO-HAN', 'BS', 1007),
(57, 'TOO-HAN', 'BS', 1008),
(58, 'TOO-HAN', 'BS', 1009),
(59, 'TOO-HAN', 'BS', 1010),
(60, 'TOO-HAN', 'BS', 1011),
(61, 'TOO-HAN', 'BS', 1012),
(62, 'TOO-HAN', 'BS', 1013),
(63, 'TOO-HAN', 'BS', 1014),
(64, 'TOO-HAN', 'BS', 1015),
(65, 'TOO-HAN', 'BS', 1016),
(66, 'TOO-HAN', 'BS', 1017),
(67, 'TOO-HAN', 'BS', 1018),
(68, 'TOO-HAN', 'BS', 1019),
(69, 'TOO-HAN', 'BS', 1020),
(70, 'TOO-HAN', 'BS', 1021),
(71, 'TOO-HAN', 'BS', 1022),
(72, 'TOO-HAN', 'BS', 1023),
(73, 'TOO-HAN', 'BS', 1024),
(74, 'TOO-HAN', 'BS', 1025),
(75, 'TOO-HAN', 'BS', 1026),
(76, 'TOO-HAN', 'BS', 1027),
(77, 'TOO-HAN', 'BS', 1028),
(78, 'TOO-HAN', 'BS', 1029),
(79, 'TOO-HAN', 'BS', 1030),
(80, 'TOO-HAN', 'BS', 1031),
(81, 'TOO-HAN', 'BS', 1032),
(82, 'TOO-HAN', 'BS', 1033),
(83, 'TOO-HAN', 'BS', 1034),
(84, 'TOO-HAN', 'BS', 1035),
(85, 'TOO-HAN', 'BS', 1036),
(86, 'TOO-HAN', 'BS', 1037),
(87, 'TOO-HAN', 'BS', 1038),
(88, 'TOO-HAN', 'BS', 1039),
(89, 'TOO-HAN', 'BS', 1040),
(90, 'TOO-HAN', 'BS', 1041),
(91, 'TOO-HAN', 'BS', 1042),
(92, 'TOO-HAN', 'BS', 1043),
(93, 'TOO-HAN', 'BS', 1044),
(94, 'TOO-HAN', 'BS', 1045),
(95, 'TOO-HAN', 'BS', 1046),
(96, 'TOO-HAN', 'BS', 1047),
(97, 'TOO-HAN', 'BS', 1048),
(98, 'TOO-HAN', 'BS', 1049),
(99, 'TOO-HAN', 'BS', 1050),
(100, 'TOO-HAN', 'BS', 1051),
(101, 'TOO-HAN', 'BS', 1052),
(102, 'TOO-HAN', 'BS', 1053),
(103, 'TOO-HAN', 'BS', 1054),
(104, 'TOO-HAN', 'BS', 1055),
(105, 'TOO-HAN', 'BS', 1056),
(106, 'TOO-HAN', 'BS', 1057),
(107, 'TOO-HAN', 'BS', 1058),
(108, 'TOO-HAN', 'BS', 1059),
(109, 'TOO-HAN', 'BS', 1060),
(110, 'TOO-HAN', 'BS', 1061),
(111, 'TOO-HAN', 'BS', 1062),
(112, 'TOO-HAN', 'BS', 1063),
(113, 'TOO-HAN', 'BS', 1064),
(114, 'TOO-HAN', 'BS', 1065),
(115, 'TOO-HAN', 'BS', 1066),
(116, 'TOO-HAN', 'BS', 1067),
(117, 'TOO-HAN', 'BS', 1068),
(118, 'TOO-HAN', 'BS', 1069),
(119, 'TOO-HAN', 'BS', 1070),
(120, 'TOO-HAN', 'BS', 1071),
(121, 'TOO-HAN', 'BS', 1072),
(122, 'TOO-HAN', 'BS', 1073),
(123, 'TOO-HAN', 'BS', 1074),
(124, 'TOO-HAN', 'BS', 1075),
(125, 'TOO-HAN', 'BS', 1076),
(126, 'TOO-HAN', 'BS', 1077),
(127, 'TOO-HAN', 'BS', 1078),
(128, 'TOO-HAN', 'BS', 1079),
(129, 'TOO-HAN', 'BS', 1080),
(130, 'TOO-HAN', 'BS', 1081),
(131, 'TOO-HAN', 'BS', 1082),
(132, 'TOO-HAN', 'BS', 1083),
(133, 'TOO-HAN', 'BS', 1084),
(134, 'TOO-HAN', 'BS', 1085),
(135, 'TOO-HAN', 'BS', 1086),
(136, 'TOO-HAN', 'BS', 1087),
(137, 'TOO-HAN', 'BS', 1088),
(138, 'TOO-HAN', 'BS', 1089),
(139, 'TOO-HAN', 'BS', 1090),
(140, 'TOO-HAN', 'BS', 1091),
(141, 'TOO-HAN', 'BS', 1092),
(142, 'TOO-HAN', 'BS', 1093),
(143, 'TOO-HAN', 'BS', 1094),
(144, 'TOO-HAN', 'BS', 1095),
(145, 'TOO-HAN', 'BS', 1096),
(146, 'TOO-HAN', 'BS', 1097),
(147, 'TOO-HAN', 'BS', 1098),
(148, 'TOO-HAN', 'BS', 1099),
(149, 'TOO-HAN', 'BS', 1100),
(150, 'TOO-HAN', 'BS', 1101),
(151, 'TOO-HAN', 'BS', 1102),
(152, 'TOO-HAN', 'BS', 1103),
(153, 'TOO-HAN', 'BS', 1104),
(154, 'TOO-HAN', 'BS', 1105),
(155, 'TOO-HAN', 'BS', 1106),
(156, 'TOO-HAN', 'BS', 1107),
(157, 'TOO-HAN', 'BS', 1108),
(158, 'TOO-HAN', 'BS', 1109),
(159, 'TOO-HAN', 'BS', 1110),
(160, 'TOO-HAN', 'BS', 1111),
(161, 'TOO-HAN', 'BS', 1112),
(162, 'TOO-HAN', 'BS', 1113),
(163, 'TOO-HAN', 'BS', 1114),
(164, 'TOO-HAN', 'BS', 1115),
(165, 'TOO-HAN', 'BS', 1116),
(166, 'TOO-HAN', 'BS', 1117),
(167, 'TOO-HAN', 'BS', 1118),
(168, 'TOO-HAN', 'BS', 1119),
(169, 'TOO-HAN', 'BS', 1120),
(170, 'TOO-HAN', 'BS', 1121),
(171, 'TOO-HAN', 'BS', 1122),
(172, 'TOO-HAN', 'BS', 1123),
(173, 'TOO-HAN', 'BS', 1124),
(174, 'TOO-HAN', 'BS', 1125),
(175, 'TOO-HAN', 'BS', 1126),
(176, 'TOO-HAN', 'BS', 1127),
(177, 'TOO-HAN', 'BS', 1128),
(178, 'TOO-HAN', 'BS', 1129),
(179, 'TOO-HAN', 'BS', 1130),
(180, 'TOO-HAN', 'BS', 1131),
(181, 'TOO-HAN', 'BS', 1132),
(182, 'TOO-HAN', 'BS', 1133),
(183, 'TOO-HAN', 'BS', 1134),
(184, 'TOO-HAN', 'BS', 1135),
(185, 'TOO-HAN', 'BS', 1136),
(186, 'TOO-HAN', 'BS', 1137),
(187, 'TOO-HAN', 'BS', 1138),
(188, 'TOO-HAN', 'BS', 1139),
(189, 'TOO-HAN', 'BS', 1140),
(190, 'TOO-HAN', 'BS', 1141),
(191, 'TOO-HAN', 'BS', 1142),
(192, 'TOO-HAN', 'BS', 1143),
(193, 'TOO-HAN', 'BS', 1144),
(194, 'TOO-HAN', 'BS', 1145),
(195, 'TOO-HAN', 'BS', 1146),
(196, 'TOO-HAN', 'BS', 1147),
(197, 'TOO-HAN', 'BS', 1148),
(198, 'TOO-HAN', 'BS', 1149),
(199, 'TOO-HAN', 'BS', 1150),
(200, 'TOO-HAN', 'BS', 1151),
(201, 'TOO-HAN', 'BS', 1152),
(202, 'TOO-HAN', 'BS', 1153),
(203, 'TOO-HAN', 'BS', 1154),
(204, 'TOO-HAN', 'BS', 1155),
(205, 'TOO-HAN', 'BS', 1156),
(206, 'TOO-HAN', 'BS', 1157),
(207, 'TOO-HAN', 'BS', 1158),
(208, 'TOO-HAN', 'BS', 1159),
(209, 'TOO-HAN', 'BS', 1160),
(210, 'TOO-HAN', 'BS', 1161),
(211, 'TOO-HAN', 'BS', 1162),
(212, 'TOO-HAN', 'BS', 1163),
(213, 'TOO-HAN', 'BS', 1164),
(214, 'TOO-HAN', 'BS', 1165),
(215, 'TOO-HAN', 'BS', 1166),
(216, 'TOO-HAN', 'BS', 1167),
(217, 'TOO-HAN', 'BS', 1168),
(218, 'TOO-HAN', 'BS', 1169),
(219, 'TOO-HAN', 'BS', 1170),
(220, 'TOO-HAN', 'BS', 1171),
(221, 'TOO-HAN', 'BS', 1172),
(222, 'TOO-HAN', 'BS', 1173),
(223, 'TOO-HAN', 'BS', 1174),
(224, 'TOO-HAN', 'BS', 1175),
(225, 'TOO-HAN', 'BS', 1176),
(226, 'TOO-HAN', 'BS', 1177),
(227, 'TOO-HAN', 'BS', 1178),
(228, 'TOO-HAN', 'BS', 1179),
(229, 'TOO-HAN', 'BS', 1180),
(230, 'TOO-HAN', 'BS', 1181),
(231, 'TOO-HAN', 'BS', 1182),
(232, 'TOO-HAN', 'BS', 1183),
(233, 'TOO-HAN', 'BS', 1184),
(234, 'TOO-HAN', 'BS', 1185),
(235, 'TOO-HAN', 'BS', 1186),
(236, 'FFE-COMP', 'BS', 1001),
(237, 'FFE-COMP', 'BS', 1002),
(238, 'TOO-HAN', 'BS', 1187),
(239, 'TOO-HAN', 'BS', 1188),
(240, 'TOO-HAN', 'BS', 1189),
(241, 'TOO-HAN', 'BS', 1190),
(242, 'TOO-HAN', 'BS', 1191),
(243, 'TOO-HAN', 'BS', 1192),
(244, 'TOO-HAN', 'BS', 1193),
(245, 'TOO-HAN', 'BS', 1194),
(246, 'TOO-HAN', 'BS', 1195),
(247, 'TOO-HAN', 'BS', 1196),
(248, 'TOO-HAN', 'BS', 1197),
(249, 'TOO-HAN', 'BS', 1198),
(250, 'TOO-HAN', 'BS', 1199),
(251, 'TOO-HAN', 'BS', 1200),
(252, 'TOO-HAN', 'BS', 1201),
(253, 'TOO-HAN', 'BS', 1202),
(254, 'TOO-HAN', 'BS', 1203),
(255, 'TOO-HAN', 'BS', 1204),
(256, 'TOO-HAN', 'BS', 1205),
(257, 'TOO-HAN', 'BS', 1206),
(258, 'TOO-HAN', 'BS', 1207),
(259, 'TOO-HAN', 'BS', 1208),
(260, 'TOO-HAN', 'BS', 1209),
(261, 'TOO-HAN', 'BS', 1210),
(262, 'TOO-HAN', 'BS', 1211),
(263, 'TOO-HAN', 'BS', 1212),
(264, 'TOO-HAN', 'BS', 1213),
(265, 'TOO-HAN', 'BS', 1214),
(266, 'TOO-HAN', 'BS', 1215),
(267, 'TOO-HAN', 'BS', 1216),
(268, 'TOO-HAN', 'BS', 1217),
(269, 'TOO-HAN', 'BS', 1218),
(270, 'TOO-HAN', 'BS', 1219),
(271, 'TOO-HAN', 'BS', 1220),
(272, 'TOO-HAN', 'BS', 1221),
(273, 'TOO-HAN', 'BS', 1222),
(274, 'TOO-HAN', 'BS', 1223),
(275, 'TOO-HAN', 'BS', 1224),
(276, 'TOO-HAN', 'BS', 1225),
(277, 'TOO-HAN', 'BS', 1226),
(278, 'TOO-HAN', 'BS', 1227),
(279, 'TOO-HAN', 'BS', 1228),
(280, 'TOO-HAN', 'BS', 1229),
(281, 'TOO-HAN', 'BS', 1230),
(282, 'TOO-HAN', 'BS', 1231),
(283, 'TOO-HAN', 'BS', 1232),
(284, 'TOO-HAN', 'BS', 1233),
(285, 'TOO-HAN', 'BS', 1234),
(286, 'TOO-HAN', 'BS', 1235),
(287, 'TOO-HAN', 'BS', 1236),
(288, 'TOO-HAN', 'BS', 1237),
(289, 'TOO-HAN', 'BS', 1238),
(290, 'TOO-HAN', 'BS', 1239),
(291, 'TOO-HAN', 'BS', 1240),
(292, 'TOO-HAN', 'BS', 1241),
(293, 'TOO-HAN', 'BS', 1242),
(294, 'TOO-HAN', 'BS', 1243),
(295, 'TOO-HAN', 'BS', 1244),
(296, 'TOO-HAN', 'BS', 1245),
(297, 'TOO-HAN', 'BS', 1246),
(298, 'TOO-HAN', 'BS', 1247),
(299, 'TOO-HAN', 'BS', 1248),
(300, 'TOO-HAN', 'BS', 1249),
(301, 'TOO-HAN', 'BS', 1250),
(302, 'TOO-HAN', 'BS', 1251),
(303, 'TOO-HAN', 'BS', 1252),
(304, 'TOO-HAN', 'BS', 1253),
(305, 'TOO-HAN', 'BS', 1254),
(306, 'TOO-HAN', 'BS', 1255),
(307, 'TOO-HAN', 'BS', 1256),
(308, 'TOO-HAN', 'BS', 1257),
(309, 'TOO-HAN', 'BS', 1258),
(310, 'TOO-HAN', 'BS', 1259),
(311, 'TOO-HAN', 'BS', 1260),
(312, 'TOO-HAN', 'BS', 1261),
(313, 'TOO-HAN', 'BS', 1262),
(314, 'TOO-HAN', 'BS', 1263),
(315, 'TOO-HAN', 'BS', 1264),
(316, 'TOO-HAN', 'BS', 1265),
(317, 'TOO-HAN', 'BS', 1266),
(318, 'TOO-HAN', 'BS', 1267),
(319, 'TOO-HAN', 'BS', 1268),
(320, 'TOO-HAN', 'BS', 1269),
(321, 'TOO-HAN', 'BS', 1270),
(322, 'TOO-HAN', 'BS', 1271),
(323, 'TOO-HAN', 'BS', 1272),
(324, 'TOO-HAN', 'BS', 1273),
(325, 'TOO-HAN', 'BS', 1274),
(326, 'TOO-HAN', 'BS', 1275),
(327, 'TOO-HAN', 'BS', 1276),
(328, 'TOO-HAN', 'BS', 1277),
(329, 'TOO-HAN', 'BS', 1278),
(330, 'TOO-HAN', 'BS', 1279),
(331, 'TOO-HAN', 'BS', 1280),
(332, 'TOO-HAN', 'BS', 1281),
(333, 'TOO-HAN', 'BS', 1282),
(334, 'TOO-HAN', 'BS', 1283),
(335, 'TOO-HAN', 'BS', 1284),
(336, 'TOO-HAN', 'BS', 1285),
(337, 'TOO-POW', 'BS', 1001),
(338, 'TOO-HAN', 'BS', 1286),
(339, 'TOO-HAN', 'BS', 1287),
(340, 'TOO-HAN', 'BS', 1288),
(341, 'TOO-HAN', 'BS', 1289),
(342, 'TOO-HAN', 'BS', 1290),
(343, 'TOO-HAN', 'BS', 1291),
(344, 'TOO-HAN', 'BS', 1292),
(345, 'TOO-HAN', 'BS', 1293),
(346, 'TOO-HAN', 'BS', 1294),
(347, 'TOO-HAN', 'BS', 1295),
(348, 'TOO-HAN', 'BS', 1296),
(349, 'TOO-HAN', 'BS', 1297),
(350, 'TOO-HAN', 'BS', 1298),
(351, 'TOO-HAN', 'BS', 1299),
(352, 'TOO-HAN', 'BS', 1300),
(353, 'TOO-HAN', 'BS', 1301),
(354, 'TOO-HAN', 'BS', 1302),
(355, 'TOO-HAN', 'BS', 1303),
(356, 'TOO-HAN', 'BS', 1304),
(357, 'TOO-HAN', 'BS', 1305),
(358, 'TOO-HAN', 'BS', 1306),
(359, 'TOO-HAN', 'BS', 1307),
(360, 'TOO-HAN', 'BS', 1307),
(361, 'TOO-HAN', 'BS', 1308),
(362, 'TOO-HAN', 'BS', 1309),
(363, 'TOO-HAN', 'BS', 1310),
(364, 'TOO-HAN', 'BS', 1311),
(365, 'TOO-HAN', 'BS', 1312),
(366, 'TOO-HAN', 'BS', 1313),
(367, 'TOO-HAN', 'BS', 1314),
(368, 'TOO-HAN', 'BS', 1315),
(369, 'TOO-HAN', 'BS', 1316),
(370, 'TOO-HAN', 'BS', 1317),
(371, 'TOO-HAN', 'BS', 1318),
(372, 'TOO-HAN', 'BS', 1319),
(373, 'TOO-HAN', 'BS', 1320),
(374, 'TOO-HAN', 'BS', 1321),
(375, 'TOO-HAN', 'BS', 1322),
(376, 'TOO-HAN', 'BS', 1323),
(377, 'TOO-HAN', 'BS', 1324),
(378, 'TOO-HAN', 'BS', 1325),
(379, 'TOO-HAN', 'BS', 1326),
(380, 'TOO-HAN', 'BS', 1327),
(381, 'TOO-HAN', 'BS', 1328),
(382, 'TOO-HAN', 'BS', 1329),
(383, 'TOO-HAN', 'BS', 1330),
(384, 'TOO-HAN', 'BS', 1331),
(385, 'TOO-HAN', 'BS', 1332),
(386, 'TOO-HAN', 'BS', 1333),
(387, 'TOO-HAN', 'BS', 1334),
(388, 'TOO-HAN', 'BS', 1335),
(389, 'TOO-HAN', 'BS', 1336),
(390, 'TOO-HAN', 'BS', 1337),
(391, 'TOO-HAN', 'BS', 1338),
(392, 'TOO-HAN', 'BS', 1339),
(393, 'TOO-HAN', 'BS', 1340),
(394, 'TOO-HAN', 'BS', 1341),
(395, 'TOO-HAN', 'BS', 1342),
(396, 'TOO-HAN', 'BS', 1343),
(397, 'TOO-HAN', 'BS', 1344),
(398, 'TOO-HAN', 'BS', 1345),
(399, 'TOO-HAN', 'BS', 1346),
(400, 'TOO-HAN', 'BS', 1347),
(401, 'TOO-HAN', 'BS', 1348),
(402, 'TOO-HAN', 'BS', 1349),
(403, 'TOO-HAN', 'BS', 1350),
(404, 'TOO-HAN', 'BS', 1351),
(405, 'TOO-HAN', 'BS', 1352),
(406, 'TOO-HAN', 'BS', 1353),
(407, 'TOO-HAN', 'BS', 1354),
(408, 'TOO-HAN', 'BS', 1355),
(409, 'TOO-HAN', 'BS', 1356),
(410, 'TOO-HAN', 'BS', 1357),
(411, 'TOO-HAN', 'BS', 1358),
(412, 'TOO-HAN', 'BS', 1359),
(413, 'TOO-HAN', 'BS', 1360),
(414, 'TOO-HAN', 'BS', 1361),
(415, 'TOO-HAN', 'BS', 1362),
(416, 'TOO-HAN', 'BS', 1363),
(417, 'TOO-HAN', 'BS', 1364),
(418, 'TOO-HAN', 'BS', 1365),
(419, 'TOO-HAN', 'BS', 1366),
(420, 'TOO-HAN', 'BS', 1367),
(421, 'TOO-HAN', 'BS', 1368),
(422, 'TOO-HAN', 'BS', 1369),
(423, 'TOO-HAN', 'BS', 1370),
(424, 'TOO-HAN', 'BS', 1371),
(425, 'TOO-HAN', 'BS', 1372),
(426, 'TOO-HAN', 'BS', 1373),
(427, 'TOO-HAN', 'BS', 1374),
(428, 'TOO-HAN', 'BS', 1375),
(429, 'TOO-HAN', 'BS', 1376),
(430, 'TOO-HAN', 'BS', 1377),
(431, 'TOO-HAN', 'BS', 1378),
(432, 'TOO-HAN', 'BS', 1379),
(433, 'TOO-HAN', 'BS', 1380),
(434, 'TOO-HAN', 'BS', 1381),
(435, 'TOO-HAN', 'BS', 1382),
(436, 'TOO-HAN', 'BS', 1383),
(437, 'TOO-HAN', 'BS', 1384),
(438, 'TOO-HAN', 'BS', 1385),
(439, 'TOO-HAN', 'BS', 1386),
(440, 'TOO-HAN', 'BS', 1387),
(441, 'TOO-HAN', 'BS', 1388),
(442, 'TOO-HAN', 'BS', 1389),
(443, 'TOO-HAN', 'BS', 1390),
(444, 'TOO-HAN', 'BS', 1391),
(445, 'TOO-HAN', 'BS', 1392),
(446, 'TOO-HAN', 'BS', 1393),
(447, 'TOO-HAN', 'BS', 1394),
(448, 'TOO-HAN', 'BS', 1395),
(449, 'TOO-HAN', 'BS', 1396),
(450, 'TOO-HAN', 'BS', 1397),
(451, 'TOO-HAN', 'BS', 1398),
(452, 'TOO-HAN', 'BS', 1399),
(453, 'TOO-HAN', 'BS', 1400),
(454, 'TOO-HAN', 'BS', 1401),
(455, 'TOO-HAN', 'BS', 1402),
(456, 'TOO-HAN', 'BS', 1403),
(457, 'TOO-HAN', 'BS', 1404),
(458, 'TOO-HAN', 'BS', 1405),
(459, 'TOO-HAN', 'BS', 1406),
(460, 'TOO-HAN', 'BS', 1407),
(461, 'TOO-HAN', 'BS', 1408),
(462, 'TOO-HAN', 'BS', 1408),
(463, 'TOO-HAN', 'BS', 1409),
(464, 'TOO-HAN', 'BS', 1410),
(465, 'TOO-HAN', 'BS', 1411),
(466, 'TOO-HAN', 'BS', 1412),
(467, 'TOO-HAN', 'BS', 1413),
(468, 'TOO-HAN', 'BS', 1414),
(469, 'TOO-HAN', 'BS', 1415),
(470, 'TOO-HAN', 'BS', 1416),
(471, 'TOO-HAN', 'BS', 1417),
(472, 'TOO-HAN', 'BS', 1418),
(473, 'TOO-HAN', 'BS', 1419),
(474, 'TOO-HAN', 'BS', 1420),
(475, 'TOO-HAN', 'BS', 1421),
(476, 'TOO-HAN', 'BS', 1422),
(477, 'TOO-HAN', 'BS', 1423),
(478, 'TOO-HAN', 'BS', 1424),
(479, 'TOO-HAN', 'BS', 1425),
(480, 'TOO-HAN', 'BS', 1425),
(481, 'TOO-HAN', 'BS', 1425),
(482, 'TOO-HAN', 'BS', 1426),
(483, 'TOO-HAN', 'BS', 1427),
(484, 'TOO-HAN', 'BS', 1428),
(485, 'TOO-HAN', 'BS', 1429),
(486, 'TOO-HAN', 'BS', 1430),
(487, 'TOO-HAN', 'BS', 1431),
(488, 'TOO-HAN', 'BS', 1432),
(489, 'TOO-HAN', 'BS', 1433),
(490, 'TOO-HAN', 'BS', 1434),
(491, 'TOO-HAN', 'BS', 1435),
(492, 'TOO-HAN', 'BS', 1436),
(493, 'TOO-HAN', 'BS', 1437),
(494, 'TOO-HAN', 'BS', 1438),
(495, 'TOO-HAN', 'BS', 1438),
(496, 'TOO-HAN', 'BS', 1439),
(497, 'TOO-HAN', 'BS', 1440),
(498, 'TOO-HAN', 'BS', 1441),
(499, 'TOO-HAN', 'BS', 1442),
(500, 'TOO-HAN', 'BS', 1443),
(501, 'TOO-HAN', 'BS', 1444),
(502, 'TOO-HAN', 'BS', 1445),
(503, 'TOO-HAN', 'BS', 1446),
(504, 'TOO-HAN', 'BS', 1447),
(505, 'TOO-HAN', 'BS', 1448),
(506, 'TOO-HAN', 'BS', 1449),
(507, 'TOO-HAN', 'BS', 1450),
(508, 'TOO-HAN', 'BS', 1451),
(509, 'TOO-HAN', 'BS', 1452),
(510, 'TOO-HAN', 'BS', 1453),
(511, 'TOO-HAN', 'BS', 1454),
(512, 'TOO-HAN', 'BS', 1455),
(513, 'TOO-HAN', 'BS', 1456),
(514, 'TOO-HAN', 'BS', 1457),
(515, 'TOO-HAN', 'BS', 1458),
(516, 'TOO-HAN', 'BS', 1459),
(517, 'TOO-HAN', 'BS', 1460),
(518, 'TOO-HAN', 'BS', 1461),
(519, 'TOO-HAN', 'BS', 1462),
(520, 'TOO-HAN', 'BS', 1463),
(521, 'TOO-HAN', 'BS', 1464),
(522, 'TOO-HAN', 'BS', 1465),
(523, 'TOO-HAN', 'BS', 1466),
(524, 'TOO-HAN', 'BS', 1467),
(525, 'TOO-HAN', 'BS', 1468),
(526, 'TOO-HAN', 'BS', 1469),
(527, 'TOO-HAN', 'BS', 1470),
(528, 'TOO-HAN', 'BS', 1471),
(529, 'TOO-HAN', 'BS', 1472),
(530, 'TOO-HAN', 'BS', 1473),
(531, 'TOO-HAN', 'BS', 1474),
(532, 'TOO-HAN', 'BS', 1475),
(533, 'TOO-HAN', 'BS', 1476),
(534, 'TOO-HAN', 'BS', 1477),
(535, 'TOO-HAN', 'BS', 1478),
(536, 'TOO-HAN', 'BS', 1479),
(537, 'TOO-HAN', 'BS', 1480),
(538, 'TOO-HAN', 'BS', 1481),
(539, 'TOO-HAN', 'BS', 1482),
(540, 'TOO-HAN', 'BS', 1483),
(541, 'TOO-HAN', 'BS', 1484),
(542, 'TOO-HAN', 'BS', 1485),
(543, 'TOO-HAN', 'BS', 1486),
(544, 'TOO-HAN', 'BS', 1487),
(545, 'TOO-HAN', 'BS', 1488),
(546, 'TOO-HAN', 'BS', 1489),
(547, 'TOO-HAN', 'BS', 1490),
(548, 'TOO-HAN', 'BS', 1491),
(549, 'TOO-HAN', 'BS', 1492),
(550, 'TOO-HAN', 'BS', 1493),
(551, 'TOO-HAN', 'BS', 1494),
(552, 'TOO-HAN', 'BS', 1495),
(553, 'TOO-HAN', 'BS', 1496),
(554, 'TOO-HAN', 'BS', 1497),
(555, 'TOO-HAN', 'BS', 1498),
(556, 'TOO-HAN', 'BS', 1499),
(557, 'TOO-HAN', 'BS', 1500),
(558, 'TOO-HAN', 'BS', 1501),
(559, 'TOO-HAN', 'BS', 1502),
(560, 'TOO-HAN', 'BS', 1503),
(561, 'TOO-HAN', 'BS', 1504),
(562, 'TOO-HAN', 'BS', 1505),
(563, 'TOO-HAN', 'BS', 1506),
(564, 'TOO-HAN', 'BS', 1507),
(565, 'TOO-HAN', 'BS', 1508),
(566, 'TOO-HAN', 'BS', 1509),
(567, 'TOO-HAN', 'BS', 1510),
(568, 'TOO-HAN', 'BS', 1511),
(569, 'TOO-HAN', 'BS', 1512),
(570, 'TOO-HAN', 'BS', 1513),
(571, 'TOO-HAN', 'BS', 1514),
(572, 'TOO-HAN', 'BS', 1515),
(573, 'TOO-HAN', 'BS', 1516),
(574, 'TOO-HAN', 'BS', 1517),
(575, 'TOO-HAN', 'BS', 1518),
(576, 'TOO-HAN', 'BS', 1519),
(577, 'TOO-HAN', 'BS', 1520),
(578, 'TOO-HAN', 'BS', 1521),
(579, 'TOO-HAN', 'BS', 1522),
(580, 'TOO-HAN', 'BS', 1523),
(581, 'TOO-HAN', 'BS', 1524),
(582, 'TOO-HAN', 'BS', 1525),
(583, 'TOO-HAN', 'BS', 1526),
(584, 'TOO-HAN', 'BS', 1527),
(585, 'TOO-HAN', 'BS', 1528),
(586, 'TOO-HAN', 'BS', 1529),
(587, 'TOO-HAN', 'BS', 1530),
(588, 'TOO-HAN', 'BS', 1531),
(589, 'TOO-HAN', 'BS', 1532),
(590, 'TOO-HAN', 'BS', 1533),
(591, 'TOO-HAN', 'BS', 1534),
(592, 'TOO-HAN', 'BS', 1535),
(593, 'TOO-HAN', 'BS', 1536),
(594, 'TOO-HAN', 'BS', 1537),
(595, 'TOO-HAN', 'BS', 1538),
(596, 'TOO-HAN', 'BS', 1539),
(597, 'TOO-HAN', 'BS', 1540),
(598, 'TOO-HAN', 'BS', 1541),
(599, 'TOO-HAN', 'BS', 1542),
(600, 'TOO-HAN', 'BS', 1543),
(601, 'TOO-HAN', 'BS', 1544),
(602, 'TOO-HAN', 'BS', 1545),
(603, 'TOO-HAN', 'BS', 1546),
(604, 'TOO-HAN', 'BS', 1547),
(605, 'TOO-HAN', 'BS', 1548),
(606, 'TOO-HAN', 'BS', 1549),
(607, 'TOO-HAN', 'BS', 1550),
(608, 'TOO-HAN', 'BS', 1551),
(609, 'TOO-HAN', 'BS', 1552),
(610, 'TOO-HAN', 'BS', 1553),
(611, 'TOO-HAN', 'BS', 1554),
(612, 'TOO-HAN', 'BS', 1555),
(613, 'TOO-HAN', 'BS', 1556),
(614, 'TOO-HAN', 'BS', 1557),
(615, 'TOO-HAN', 'BS', 1558),
(616, 'TOO-HAN', 'BS', 1559),
(617, 'TOO-HAN', 'BS', 1560),
(618, 'TOO-HAN', 'BS', 1561),
(619, 'TOO-HAN', 'BS', 1562),
(620, 'TOO-HAN', 'BS', 1563),
(621, 'TOO-HAN', 'BS', 1564),
(622, 'TOO-HAN', 'BS', 1565),
(623, 'TOO-HAN', 'BS', 1566),
(624, 'TOO-HAN', 'BS', 1567),
(625, 'TOO-HAN', 'BS', 1568),
(626, 'TOO-HAN', 'BS', 1569),
(627, 'TOO-HAN', 'BS', 1570),
(628, 'TOO-HAN', 'BS', 1571),
(629, 'TOO-HAN', 'BS', 1572),
(630, 'TOO-HAN', 'BS', 1573),
(631, 'TOO-HAN', 'BS', 1574),
(632, 'TOO-HAN', 'BS', 1575),
(633, 'TOO-MEA', 'BS', 1001),
(634, 'TOO-MEA', 'BS', 1002),
(635, 'TOO-MEA', 'BS', 1003),
(636, 'TOO-MEA', 'BS', 1004),
(637, 'TOO-MEA', 'BS', 1005),
(638, 'TOO-MEA', 'BS', 1006),
(639, 'TOO-MEA', 'BS', 1007),
(640, 'TOO-MEA', 'BS', 1008),
(641, 'TOO-MEA', 'BS', 1009),
(642, 'TOO-MEA', 'BS', 1010),
(643, 'TOO-MEA', 'BS', 1011),
(644, 'TOO-MEA', 'BS', 1012),
(645, 'TOO-MEA', 'BS', 1013),
(646, 'TOO-MEA', 'BS', 1014),
(647, 'TOO-MEA', 'BS', 1015),
(648, 'TOO-HAN', 'BS', 1576),
(649, 'TOO-HAN', 'BS', 1577),
(650, 'TOO-HAN', 'BS', 1578),
(651, 'TOO-HAN', 'BS', 1579),
(652, 'TOO-HAN', 'BS', 1580),
(653, 'TOO-HAN', 'BS', 1581),
(654, 'TOO-HAN', 'BS', 1582),
(655, 'TOO-HAN', 'BS', 1583),
(656, 'TOO-HAN', 'BS', 1584),
(657, 'TOO-HAN', 'BS', 1585),
(658, 'TOO-HAN', 'BS', 1586),
(659, 'TOO-HAN', 'BS', 1587),
(660, 'TOO-HAN', 'BS', 1588),
(661, 'TOO-HAN', 'BS', 1589),
(662, 'TOO-HAN', 'BS', 1590),
(663, 'TOO-HAN', 'BS', 1591),
(664, 'TOO-HAN', 'BS', 1592),
(665, 'TOO-HAN', 'BS', 1593),
(666, 'TOO-HAN', 'BS', 1594),
(667, 'TOO-HAN', 'BS', 1595),
(668, 'TOO-HAN', 'BS', 1596),
(669, 'TOO-HAN', 'BS', 1597),
(670, 'TOO-HAN', 'BS', 1598),
(671, 'TOO-MEA', 'BS', 1016),
(672, 'TOO-MEA', 'BS', 1017),
(673, 'TOO-MEA', 'BS', 1018),
(674, 'TOO-MEA', 'BS', 1019),
(675, 'TOO-MEA', 'BS', 1020),
(676, 'TOO-MEA', 'BS', 1021),
(677, 'TOO-MEA', 'BS', 1022),
(678, 'TOO-MEA', 'BS', 1023),
(679, 'TOO-MEA', 'BS', 1024),
(680, 'FFE-PPE', 'BS', 1017),
(681, 'FFE-PPE', 'BS', 1018),
(682, 'FFE-PPE', 'BS', 1019),
(683, 'FFE-PPE', 'BS', 1020),
(684, 'FFE-PPE', 'BS', 1021),
(685, 'FFE-PPE', 'BS', 1022),
(686, 'FFE-PPE', 'BS', 1023),
(687, 'FFE-PPE', 'BS', 1024),
(688, 'FFE-PPE', 'BS', 1025),
(689, 'FFE-PPE', 'BS', 1026),
(690, 'FFE-PPE', 'BS', 1027),
(691, 'FFE-PPE', 'BS', 1028),
(692, 'FFE-PPE', 'BS', 1029),
(693, 'FFE-PPE', 'BS', 1030),
(694, 'FFE-PPE', 'BS', 1031),
(695, 'FFE-PPE', 'BS', 1032),
(696, 'FFE-PPE', 'BS', 1033),
(697, 'FFE-PPE', 'BS', 1034),
(698, 'FFE-PPE', 'BS', 1035),
(699, 'FFE-PPE', 'BS', 1036),
(700, 'FFE-PPE', 'BS', 1037),
(701, 'FFE-PPE', 'BS', 1038),
(702, 'FFE-PPE', 'BS', 1039),
(703, 'FFE-PPE', 'BS', 1040),
(704, 'FFE-PPE', 'BS', 1041),
(705, 'FFE-PPE', 'BS', 1042),
(706, 'FFE-PPE', 'BS', 1043),
(707, 'FFE-PPE', 'BS', 1044),
(708, 'FFE-PPE', 'BS', 1045),
(709, 'FFE-PPE', 'BS', 1046),
(710, 'FFE-PPE', 'BS', 1047),
(711, 'FFE-PPE', 'BS', 1048),
(712, 'FFE-PPE', 'BS', 1049),
(713, 'FFE-PPE', 'BS', 1050),
(714, 'FFE-PPE', 'BS', 1051),
(715, 'FFE-PPE', 'BS', 1052),
(716, 'FFE-PPE', 'BS', 1053),
(717, 'FFE-PPE', 'BS', 1054),
(718, 'FFE-PPE', 'BS', 1055),
(719, 'FFE-PPE', 'BS', 1056),
(720, 'FFE-PPE', 'BS', 1057),
(721, 'FFE-PPE', 'BS', 1058),
(722, 'FFE-PPE', 'BS', 1059),
(723, 'FFE-PPE', 'BS', 1060),
(724, 'FFE-PPE', 'BS', 1061),
(725, 'FFE-PPE', 'BS', 1062),
(726, 'FFE-PPE', 'BS', 1063),
(727, 'FFE-PPE', 'BS', 1064),
(728, 'FFE-MED', 'BS', 1001),
(729, 'FFE-MED', 'BS', 1002),
(730, 'FFE-MED', 'BS', 1003),
(731, 'FFE-MED', 'BS', 1004),
(732, 'FFE-MED', 'BS', 1005),
(733, 'FFE-MED', 'BS', 1006),
(734, 'FFE-MED', 'BS', 1007),
(735, 'FFE-MED', 'BS', 1008),
(736, 'FFE-MED', 'BS', 1009),
(737, 'TOO-HAN', 'BS', 1599),
(738, 'TOO-HAN', 'BS', 1600),
(739, 'TOO-HAN', 'BS', 1601),
(740, 'TOO-HAN', 'BS', 1602),
(741, 'TOO-HAN', 'BS', 1603),
(742, 'TOO-HAN', 'BS', 1604),
(743, 'TOO-HAN', 'BS', 1605),
(744, 'TOO-HAN', 'BS', 1606),
(745, 'TOO-HAN', 'BS', 1607),
(746, 'TOO-HAN', 'BS', 1608),
(747, 'TOO-HAN', 'BS', 1609),
(748, 'TOO-HAN', 'BS', 1610),
(749, 'TOO-HAN', 'BS', 1611),
(750, 'TOO-HAN', 'BS', 1612),
(751, 'TOO-HAN', 'BS', 1613),
(752, 'TOO-HAN', 'BS', 1614),
(753, 'TOO-HAN', 'BS', 1615),
(754, 'TOO-HAN', 'BS', 1616),
(755, 'TOO-HAN', 'BS', 1617),
(756, 'TOO-HAN', 'BS', 1618),
(757, 'TOO-HAN', 'BS', 1619),
(758, 'TOO-MEA', 'BS', 1025),
(759, 'TOO-MEA', 'BS', 1026),
(760, 'TOO-MEA', 'BS', 1027),
(761, 'TOO-POW', 'BS', 1002),
(762, 'TOO-TES', 'BS', 1001),
(763, 'TOO-TES', 'BS', 1002),
(764, 'TOO-TES', 'BS', 1003),
(765, 'TOO-TES', 'BS', 1004),
(766, 'TOO-TES', 'BS', 1005),
(767, 'FFE-SUP', 'BS', 1001),
(768, 'FFE-COMP', 'BS', 1003),
(769, 'FFE-COMP', 'BS', 1004),
(770, 'FFE-COMP', 'BS', 1005),
(771, 'FFE-COMP', 'BS', 1006),
(772, 'FFE-COMP', 'BS', 1007),
(773, 'TOO-HAN', 'BS', 1620),
(774, 'TOO-HAN', 'BS', 1621),
(775, 'TOO-HAN', 'BS', 1622),
(776, 'TOO-HAN', 'BS', 1623),
(777, 'TOO-HAN', 'BS', 1624),
(778, 'TOO-HAN', 'BS', 1625),
(779, 'TOO-HAN', 'BS', 1626),
(780, 'TOO-HAN', 'BS', 1627),
(781, 'TOO-HAN', 'BS', 1628),
(782, 'TOO-HAN', 'BS', 1629),
(783, 'TOO-HAN', 'BS', 1630),
(784, 'TOO-HAN', 'BS', 1631),
(785, 'TOO-HAN', 'BS', 1632),
(786, 'TOO-HAN', 'BS', 1633),
(787, 'TOO-HAN', 'BS', 1634),
(788, 'TOO-HAN', 'BS', 1635),
(789, 'TOO-HAN', 'BS', 1636),
(790, 'TOO-HAN', 'BS', 1637),
(791, 'TOO-HAN', 'BS', 1638),
(792, 'TOO-HAN', 'BS', 1639),
(793, 'TOO-HAN', 'BS', 1640),
(794, 'TOO-HAN', 'BS', 1641),
(795, 'TOO-HAN', 'BS', 1642),
(796, 'TOO-HAN', 'BS', 1643),
(797, 'TOO-HAN', 'BS', 1644),
(798, 'TOO-HAN', 'BS', 1645),
(799, 'TOO-HAN', 'BS', 1646),
(800, 'TOO-HAN', 'BS', 1647),
(801, 'TOO-HAN', 'BS', 1648),
(802, 'TOO-HAN', 'BS', 1649),
(803, 'TOO-HAN', 'BS', 1650),
(804, 'TOO-HAN', 'BS', 1651),
(805, 'TOO-HAN', 'BS', 1652),
(806, 'TOO-HAN', 'BS', 1653),
(807, 'TOO-HAN', 'BS', 1654),
(808, 'TOO-HAN', 'BS', 1655),
(809, 'TOO-HAN', 'BS', 1656),
(810, 'TOO-HAN', 'BS', 1657),
(811, 'TOO-HAN', 'BS', 1658),
(812, 'TOO-HAN', 'BS', 1659),
(813, 'TOO-HAN', 'BS', 1660),
(814, 'TOO-HAN', 'BS', 1661),
(815, 'TOO-HAN', 'BS', 1662),
(816, 'TOO-HAN', 'BS', 1663),
(817, 'TOO-HAN', 'BS', 1664),
(818, 'TOO-HAN', 'BS', 1665),
(819, 'TOO-HAN', 'BS', 1666),
(820, 'TOO-HAN', 'BS', 1667),
(821, 'TOO-HAN', 'BS', 1668),
(822, 'TOO-HAN', 'BS', 1669),
(823, 'TOO-HAN', 'BS', 1670),
(824, 'TOO-HAN', 'BS', 1671),
(825, 'TOO-HAN', 'BS', 1672),
(826, 'TOO-HAN', 'BS', 1673),
(827, 'TOO-HAN', 'BS', 1674),
(828, 'TOO-MEA', 'BS', 1028),
(829, 'TOO-HAN', 'BS', 1675),
(830, 'TOO-HAN', 'BS', 1676),
(831, 'TOO-HAN', 'BS', 1677),
(832, 'TOO-HAN', 'BS', 1678),
(833, 'TOO-HAN', 'BS', 1679),
(834, 'TOO-HAN', 'BS', 1680),
(835, 'TOO-MEA', 'BS', 1029),
(836, 'TOO-MEA', 'BS', 1030),
(837, 'TOO-HAN', 'BS', 1681),
(838, 'TOO-HAN', 'BS', 1682),
(839, 'TOO-HAN', 'BS', 1683),
(840, 'TOO-MEA', 'BS', 1031),
(841, 'TOO-MEA', 'BS', 1032),
(842, 'TOO-POW', 'BS', 1003),
(843, 'TOO-POW', 'BS', 1004),
(844, 'TOO-POW', 'BS', 1005),
(845, 'FFE-COMP', 'BS', 1008),
(846, 'FFE-COMP', 'BS', 1009),
(847, 'FFE-COMP', 'BS', 1010),
(848, 'FFE-COMP', 'BS', 1011),
(849, 'FFE-COMP', 'BS', 1012),
(850, 'FFE-COMP', 'BS', 1013);

-- --------------------------------------------------------

--
-- Table structure for table `atf_series`
--

CREATE TABLE IF NOT EXISTS `atf_series` (
`atf_id` int(11) NOT NULL,
  `atf_prefix` varchar(255) DEFAULT NULL,
  `series` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atf_series`
--

INSERT INTO `atf_series` (`atf_id`, `atf_prefix`, `series`) VALUES
(1, '-2019', 1001),
(2, '-2019', 1002),
(3, 'BS-2019', 1003),
(4, 'BS-2019', 1004),
(5, 'BS-2019', 1005),
(6, 'BS-2019', 1006),
(7, 'BCD-2019', 1007),
(8, 'BCD-2019', 1008),
(9, 'BS-2019', 1009),
(10, 'BS-2019', 1010),
(11, 'BS-2019', 1011);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow_details`
--

INSERT INTO `borrow_details` (`bd_id`, `bh_id`, `et_id`, `ed_id`, `qty`, `returned`, `returned_date`, `returned_by`, `return_qty`) VALUES
(1, 1, 790, 845, 1, 1, '2019-09-26 14:29:55', 35, '1.00'),
(2, 1, 49, 47, 1, 1, '2019-09-26 14:29:28', 35, '1.00');

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
(1, 35, '2019-09-26', 'BS-2019-09-1001', 1, '2019-09-26 14:27:43');

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
(1, 'BS-2019-09', '1001');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`category_id` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Furniture, Fixtures and Equipment'),
(2, 'Tools and Equipment'),
(3, 'Sample Category'),
(4, 'Sample'),
(5, 'Sample 2');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
`currency_id` int(11) NOT NULL,
  `currency_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `currency_name`) VALUES
(1, 'PHP'),
(2, 'USD'),
(3, 'EURO'),
(4, 'JPY');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `damage_info`
--

INSERT INTO `damage_info` (`damage_id`, `incident_date`, `etdr_no`, `activity`, `et_id`, `ed_id`, `damage_location`, `accountability`, `incident_description`, `equip_damage`, `recommendation`, `submitted_by`, `checked_by`, `noted_by`, `create_date`, `user_id`) VALUES
(1, '2019-07-05', '-2019-07-1001', 'Tightening of 16mm Bolt', 506, 523, 'Bago - Site (Maintenance Workshop Area)', 'Carlito Alevio', 'Use during tightening of 16mm  bolt, the power handle break at drive joint.', 'The drive joint broken. ', 'Welded temporary but unsafe to use. Replaced power handle with new provide PR. ', 61, 16, 30, '2019-07-11 11:55:32', 1),
(2, '2019-06-25', '-2019-06-1001', 'Re-threading of Air Cooler & Engine frame bolt holes.', 395, 393, 'Bago - Site (Engine Area)', 'All mechanical maintenance', 'Hand Tap thread already deform.', 'The thread is already flatten.', 'Not repairable buy a good quality of hand tap. To PR 2 sets of Hand Tap M12 x 1.75 pitch good quality.', 61, 16, 30, '2019-07-22 13:46:16', 1),
(3, '2019-09-26', 'BS-2019-09-1001', 'Office Use', 13, 13, 'HR Office', 'Julyn Divina Gracia', 'Sample', 'Sample', 'To replace', 16, 13, 1, '2019-09-26 14:21:33', 1),
(4, '2019-09-26', 'BS-2019-09-1002', 'sample', 790, 845, 'sample', 'sample', 'sample', 'sample', 'sample', 35, 16, 30, '2019-09-26 14:30:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `damage_series`
--

CREATE TABLE IF NOT EXISTS `damage_series` (
`ds_id` int(11) NOT NULL,
  `damage_prefix` varchar(100) DEFAULT NULL,
  `series` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `damage_series`
--

INSERT INTO `damage_series` (`ds_id`, `damage_prefix`, `series`) VALUES
(1, '-2019-07', 1001),
(2, '-2019-06', 1001),
(3, 'BS-2019-09', 1001),
(4, 'BS-2019-09', 1002);

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
  `type` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_name`, `department`, `location_id`, `aaf_no`, `position`, `contact_no`, `email`, `type`) VALUES
(1, 'Marlon Adorio', 'Electrical & Instrumentation', 2, 'CENPRI-S-1001', 'E & IC Technician', '', '', 1),
(2, 'John Ezequiel Alejandro', 'Operations Department', 2, 'CENPRI-S-1002', 'Auxiliary Operator', '', '', 1),
(3, 'Carlito Alevio', 'Mechanical Maintenance', 2, 'CENPRI-S-1003', 'Plant Mechanic', '', '', 1),
(4, 'Regina Alova', 'Trading', 2, 'CENPRI-S-1004', 'Operations Analyst', '', '', 1),
(5, 'Rebecca Alunan', 'Trading', 2, 'CENPRI-S-1005', 'Performance Monitoring Supervisor', '', '', 1),
(6, 'Fleur de Liz Ambong', 'Fuel Management', 2, 'CENPRI-S-1006', 'Fuel Management Assistant', '', '', 1),
(7, 'Beverly Ampog', 'Trading', 2, 'CENPRI-S-1007', 'Operations Analyst', '', '', 1),
(8, 'Genaro Angulo', 'Electrical & Instrumentation', 2, 'CENPRI-S-1008', 'Electrical Supervisor', '', '', 1),
(9, 'Melinda Aquino', 'Progen', 2, 'CENPRI-S-1009', 'Asset Accounting Assistant - PROGEN', '', '', 1),
(10, 'Rey Argawanon', 'Electrical & Instrumentation', 2, 'CENPRI-S-1010', 'Power Delivery and Technical Manager', '', '', 1),
(11, 'Alona Arroyo', 'Operations Department', 2, 'CENPRI-S-1011', 'Operations Planner', '', '', 1),
(12, 'Joemillan Baculio', 'Operations Department', 2, 'CENPRI-S-1012', 'Engine Room Operator', '', '', 1),
(13, 'Rashelle Joy Bating', 'Special Projects', 2, 'CENPRI-S-1013', 'Projects Coordinator Assistant', '', '', 1),
(14, 'Gener Bawar', 'Machine Shop & Reconditioning', 2, 'CENPRI-S-1014', 'Machine Shop & Reconditioning Supervisor', '', '', 1),
(15, 'Ruel Beato', 'Mechanical Maintenance', 2, 'CENPRI-S-1015', 'Plant Mechanic', '', '', 1),
(16, 'Mary Grace Bugna', 'Accounting', 2, 'CENPRI-S-1016', 'Asset Management Assistant', '', '', 1),
(17, 'Vency Cababat', 'Electrical & Instrumentation', 2, 'CENPRI-S-1017', 'E & IC Technician', '', '', 1),
(18, 'Rusty Canama', 'Mechanical Maintenance', 2, 'CENPRI-S-1018', 'Plant Mechanic', '', '', 1),
(19, 'Exequil Corino', 'Operations Department', 2, 'CENPRI-S-1019', 'Engine Room Operator', '', '', 1),
(20, 'Juanito Dagupan', 'Operations Department', 2, 'CENPRI-S-1020', 'Operation Shift Supervisor', '', '', 1),
(21, 'Vincent Jed Depasupil', 'Operations Department', 2, 'CENPRI-S-1021', 'Auxiliary Operator', '', '', 1),
(22, 'Julyn May Divinagracia', 'Purchasing Department', 2, 'CENPRI-S-1022', 'Purchasing Assistant', '', '', 1),
(23, 'Melfa Duis', 'Purchasing Department', 2, 'CENPRI-S-1023', 'Purchasing Assistant', '', '', 1),
(24, 'Jerson Factolerin', 'Admin', 2, 'CENPRI-S-1024', 'Utility', '', '', 1),
(25, 'Julius Fernandez', 'Operations Department', 2, 'CENPRI-S-1025', 'Auxiliary Operator', '', '', 1),
(26, 'Luisito Fortuno', 'Operations Department', 2, 'CENPRI-S-1026', 'Auxiliary Operator', '', '', 1),
(27, 'Donna Gellada', 'Warehouse', 2, 'CENPRI-S-1027', 'Parts Inventory Assistant', '', '', 1),
(28, 'Felipe Globert III', 'Warehouse', 2, 'CENPRI-S-1028', 'Warehouse Assistant', '', '', 1),
(29, 'Mikko Golvio', 'Electrical & Instrumentation', 2, 'CENPRI-S-1029', 'E & IC Technician', '', '', 1),
(30, 'Eric Jabiniar', 'Management', 2, 'CENPRI-S-1030', 'Plant Director', '', '', 1),
(31, 'Erimar Jabiniar', 'Electrical & Instrumentation', 2, 'CENPRI-S-1031', 'E & IC Technician', '', '', 1),
(32, 'Jushkyle Jambongana', 'IT Department', 2, 'CENPRI-S-1032', 'IT Assistant', '', '', 1),
(33, 'Lloyd Jamero', 'IT Department', 2, 'CENPRI-S-1033', 'IT Specialist', '', '', 1),
(34, 'Bobby Jardiniano', 'Admin', 2, 'CENPRI-S-1034', 'Service Vehicle Driver', '', '', 1),
(35, 'Stephen Jardinico', 'Warehouse', 2, 'CENPRI-S-1035', 'Warehouse Assistant', '', '', 1),
(36, 'Joey Labanon', 'Operations Department', 2, 'CENPRI-S-1036', 'Auxiliary Operator', '', '', 1),
(37, 'Roan Renz Liao', 'Warehouse', 2, 'CENPRI-S-1037', 'Parts Engineer', '', '', 1),
(38, 'Gino Lovico', 'Machine Shop & Reconditioning', 2, 'CENPRI-S-1038', 'Foreman (Machine Shop & Recon)', '', '', 1),
(39, 'Ricky Madeja', 'Admin', 2, 'CENPRI-S-1039', 'Safety Officer', '', '', 1),
(40, 'Danilo Maglinte', 'Operations Department', 2, 'CENPRI-S-1040', 'Engine Room Operator', '', '', 1),
(41, 'Alex Manilla Jr.', 'Fuel Management', 2, 'CENPRI-S-1041', 'Fuel Tender', '', '', 1),
(42, 'Jerry Matucan', 'Warehouse', 2, 'CENPRI-S-1042', 'Tool Keeper', '', '', 1),
(43, 'Genielyne Mondejar', 'Admin', 2, 'CENPRI-S-1043', 'Pollution Control Officer', '', '', 1),
(44, 'Francis Montero', 'Mechanical Maintenance', 2, 'CENPRI-S-1044', 'Plant Mechanic', '', '', 1),
(45, 'Andro Ortega', 'Operations Department', 2, 'CENPRI-S-1045', 'Operation Shift Supervisor', '', '', 1),
(46, 'Joselito Panes', 'Mechanical Maintenance', 2, 'CENPRI-S-1046', 'Plant Mechanic', '', '', 1),
(47, 'Julius Pangilinan', 'Testing Group', 2, 'CENPRI-S-1047', 'Sr. Test Engineer', '', '', 1),
(48, 'Mario Dante Purisima', 'Operations Department', 2, 'CENPRI-S-1048', 'Operation Shift Supervisor', '', '', 1),
(49, 'Romeo Jr. Quicson', 'Special Projects', 2, 'CENPRI-S-1049', 'Technical Assistant', '', '', 1),
(50, 'Lawrence Vincent Roiles', 'Operations Department', 2, 'CENPRI-S-1050', 'Control Room Operator', '', '', 1),
(51, 'Roy Sabit', 'Operations Department', 2, 'CENPRI-S-1051', 'Control Room Operator', '', '', 1),
(52, 'Godfrey Stephen Samano', 'Operations Department', 2, 'CENPRI-S-1052', 'O & M Superintendent', '', '', 1),
(53, 'Kennah Sasamoto', 'Testing Group', 2, 'CENPRI-S-1053', 'Test Engineer', '', '', 1),
(54, 'Iris Sixto', 'Admin', 2, 'CENPRI-S-1054', 'Site Facilities Supervisor', '', '', 1),
(55, 'Kelwin Sarcauga', 'Operations Department', 2, 'CENPRI-S-1055', 'Engine Room Operator', '', '', 1),
(56, 'Alexander Tagarda', 'Operations Department', 2, 'CENPRI-S-1056', 'Control Room Operator', '', '', 1),
(57, 'Aileen Tama', 'Progen', 2, 'CENPRI-S-1057', 'Accounting Staff - PROGEN', '', '', 1),
(58, 'Ariel Tandoy', 'Warehouse', 2, 'CENPRI-S-1058', 'Driver', '', '', 1),
(59, 'Ryan Tignero', 'Operations Department', 2, 'CENPRI-S-1059', 'Operation Shift Supervisor', '', '', 1),
(60, 'Irish Dawn Torres', 'Admin', 2, 'CENPRI-S-1060', 'Site Admin Officer', '', '', 1),
(61, 'Elmer Torrijos', 'Mechanical Maintenance', 2, 'CENPRI-S-1061', 'Mech''l Maintenance Supervisor / Equipment & Parts Engr.', '', '', 1),
(62, 'Democrito Urnopia', 'Mechanical Maintenance', 2, 'CENPRI-S-1062', 'Plant Mechanic', '', '', 1),
(63, 'Jobelle Villarias', 'Admin', 2, 'CENPRI-S-1063', 'Company Nurse', '', '', 1),
(64, 'Admin Office', '', 2, 'CENPRI-S-1064', '', '', '', 2),
(65, 'Control Room', '', 2, 'CENPRI-S-1065', '', '', '', 2),
(66, 'CENPRI Warehouse', '', 2, 'CENPRI-S-1066', '', '', '', 2),
(67, 'Merry Michelle Dato', 'Special Projects', 2, 'CENPRI-S-1067', 'Projects Management Assistant', '', '', 1),
(68, 'Auxiliary Operators', '', 2, 'CENPRI-S-1068', '', '', '', 2),
(69, 'Engine Room Operator', '', 2, 'CENPRI-S-1069', '', '', '', 2),
(71, 'Control Room Operator', '', 2, 'CENPRI-S-1071', '', '', '', 2),
(72, 'IT Department', '', 2, 'CENPRI-S-1072', '', '', '', 2),
(73, 'Maintenance Department', '', 2, 'CENPRI-S-1073', '', '', '', 2),
(74, 'Rommel Agraviador', 'Admin', 2, 'CENPRI-S-1074', 'Security In Charge', '', '', 1),
(75, 'Jomarie Calibjo', 'Admin', 1, 'CENPRI-B-1001', 'Service Vehicle Driver', '', '', 1),
(76, 'Nelson Abas', 'Testing Group', 2, 'CENPRI-S-1075', 'Sr. Engineer', '', '', 1),
(79, 'admin', NULL, 1, 'CENPRI-B-1004', NULL, NULL, NULL, 2),
(80, 'HR Office', NULL, 1, 'CENPRI-B-1005', NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `employee_inclusion`
--

CREATE TABLE IF NOT EXISTS `employee_inclusion` (
`ei_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `child_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_inclusion`
--

INSERT INTO `employee_inclusion` (`ei_id`, `parent_id`, `child_id`) VALUES
(1, 64, 49),
(2, 64, 22),
(3, 64, 13),
(4, 64, 60),
(5, 64, 63),
(6, 64, 11),
(7, 64, 23),
(8, 64, 39),
(9, 64, 54),
(10, 65, 7),
(11, 65, 4),
(12, 65, 6),
(13, 65, 5),
(14, 65, 51),
(15, 65, 50),
(16, 65, 56),
(17, 65, 52),
(18, 66, 27),
(19, 66, 35),
(20, 66, 28),
(21, 66, 16),
(22, 66, 67),
(24, 68, 2),
(25, 68, 21),
(26, 68, 26),
(27, 68, 25),
(28, 69, 55),
(30, 69, 40),
(31, 69, 12),
(32, 69, 19),
(33, 72, 32),
(34, 72, 33),
(35, 71, 56),
(36, 71, 51),
(37, 71, 50),
(38, 73, 61),
(39, 73, 38),
(40, 73, 14),
(41, 73, 3),
(42, 73, 62),
(43, 73, 18),
(44, 73, 44),
(45, 66, 9),
(46, 66, 37),
(47, 66, 58),
(50, 77, 78),
(51, 80, 22),
(52, 80, 43);

-- --------------------------------------------------------

--
-- Table structure for table `employee_series`
--

CREATE TABLE IF NOT EXISTS `employee_series` (
`empser_id` int(11) NOT NULL,
  `aaf_prefix` varchar(100) DEFAULT NULL,
  `series` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_series`
--

INSERT INTO `employee_series` (`empser_id`, `aaf_prefix`, `series`) VALUES
(1, 'CENPRI-S', 1001),
(2, 'CENPRI-S', 1002),
(3, 'CENPRI-S', 1003),
(4, 'CENPRI-S', 1004),
(5, 'CENPRI-S', 1005),
(6, 'CENPRI-S', 1006),
(7, 'CENPRI-S', 1007),
(8, 'CENPRI-S', 1008),
(9, 'CENPRI-S', 1009),
(10, 'CENPRI-S', 1010),
(11, 'CENPRI-S', 1011),
(12, 'CENPRI-S', 1012),
(13, 'CENPRI-S', 1013),
(14, 'CENPRI-S', 1014),
(15, 'CENPRI-S', 1015),
(16, 'CENPRI-S', 1016),
(17, 'CENPRI-S', 1017),
(18, 'CENPRI-S', 1018),
(19, 'CENPRI-S', 1019),
(20, 'CENPRI-S', 1020),
(21, 'CENPRI-S', 1021),
(22, 'CENPRI-S', 1022),
(23, 'CENPRI-S', 1023),
(24, 'CENPRI-S', 1024),
(25, 'CENPRI-S', 1025),
(26, 'CENPRI-S', 1026),
(27, 'CENPRI-S', 1027),
(28, 'CENPRI-S', 1028),
(29, 'CENPRI-S', 1029),
(30, 'CENPRI-S', 1030),
(31, 'CENPRI-S', 1031),
(32, 'CENPRI-S', 1032),
(33, 'CENPRI-S', 1033),
(34, 'CENPRI-S', 1034),
(35, 'CENPRI-S', 1035),
(36, 'CENPRI-S', 1036),
(37, 'CENPRI-S', 1037),
(38, 'CENPRI-S', 1038),
(39, 'CENPRI-S', 1039),
(40, 'CENPRI-S', 1024),
(41, 'CENPRI-S', 1040),
(42, 'CENPRI-S', 1041),
(43, 'CENPRI-S', 1042),
(44, 'CENPRI-S', 1043),
(45, 'CENPRI-S', 1044),
(46, 'CENPRI-S', 1045),
(47, 'CENPRI-S', 1046),
(48, 'CENPRI-S', 1047),
(49, 'CENPRI-S', 1048),
(50, 'CENPRI-S', 1049),
(51, 'CENPRI-S', 1050),
(52, 'CENPRI-S', 1051),
(53, 'CENPRI-S', 1052),
(54, 'CENPRI-S', 1053),
(55, 'CENPRI-S', 1054),
(56, 'CENPRI-S', 1055),
(57, 'CENPRI-S', 1056),
(58, 'CENPRI-S', 1057),
(59, 'CENPRI-S', 1009),
(60, 'CENPRI-S', 1058),
(61, 'CENPRI-S', 1059),
(62, 'CENPRI-S', 1060),
(63, 'CENPRI-S', 1061),
(64, 'CENPRI-S', 1062),
(65, 'CENPRI-S', 1063),
(66, 'CENPRI-S', 1064),
(67, 'CENPRI-S', 1065),
(68, 'CENPRI-S', 1066),
(69, 'CENPRI-S', 1067),
(70, 'CENPRI-S', 1068),
(71, 'CENPRI-S', 1069),
(72, 'CENPRI-S', 1070),
(73, 'CENPRI-S', 1040),
(74, 'CENPRI-S', 1071),
(75, 'CENPRI-S', 1072),
(76, 'CENPRI-S', 1073),
(77, 'CENPRI-S', 1074),
(78, 'CENPRI-B', 1001),
(79, 'CENPRI-S', 1075),
(80, 'CENPRI-B', 1002),
(81, 'CENPRI-B', 1003),
(82, 'CENPRI-B', 1004),
(83, 'CENPRI-B', 1005),
(84, 'CENPRI-S', 1076);

-- --------------------------------------------------------

--
-- Table structure for table `et_details`
--

CREATE TABLE IF NOT EXISTS `et_details` (
`ed_id` int(11) NOT NULL,
  `et_id` int(11) NOT NULL DEFAULT '0',
  `set_id` int(11) NOT NULL DEFAULT '0',
  `physical_id` int(11) NOT NULL DEFAULT '0',
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
  `change_location` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=851 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `et_details`
--

INSERT INTO `et_details` (`ed_id`, `et_id`, `set_id`, `physical_id`, `rack_id`, `placement_id`, `serial_no`, `brand`, `model`, `type`, `unit_price`, `currency`, `currency_id`, `acquisition_date`, `date_issued`, `remarks`, `asset_control_no`, `damage`, `beyond_repair`, `borrowed`, `acquired_by`, `picture1`, `picture2`, `picture3`, `change_location`) VALUES
(1, 1, 0, 0, 0, 12, '', '', '', '', '0.00', '', 0, '', '', '', 'FFE-FUR-BS-1001', 0, 0, 0, 'CENPRI', '', '', '', 0),
(2, 2, 0, 0, 0, 12, '', '', '', '', '0.00', '', 0, '', '', '', 'FFE-FUR-BS-1002', 0, 0, 0, 'CENPRI', '', '', '', 0),
(3, 3, 0, 0, 0, 12, '', '', '', '', '0.00', '', 0, '', '', '', 'FFE-FUR-BS-1003', 0, 0, 0, 'CENPRI', '', '', '', 0),
(4, 4, 0, 0, 0, 12, '', '', '', '', '0.00', '', 0, '', '', '', 'FFE-FUR-BS-1004', 0, 0, 0, '', '', '', '', 0),
(5, 5, 0, 0, 0, 12, '', '', '', '', '0.00', '', 0, '', '', '', 'FFE-FUR-BS-1005', 0, 0, 0, '', '', '', '', 0),
(6, 6, 0, 0, 0, 12, '', '', '', '', '0.00', '', 0, '', '', '', 'FFE-FUR-BS-1006', 0, 0, 0, '', '', '', '', 0),
(7, 7, 0, 0, 0, 11, '', '', '', '', '1850.00', '', 1, '', '', '', 'FFE-FUR-BS-1007', 0, 0, 0, 'CENPRI', '', '', '', 0),
(8, 8, 0, 0, 0, 11, '', '', '', '', '2500.00', '', 1, '', '', '', 'FFE-FUR-BS-1008', 0, 0, 0, '', '', '', '', 0),
(9, 9, 0, 5, 0, 1, '', '', '', '', '0.00', '', 0, '', '', 'Table from 2nd Floor, Progen Warehouse.\r\n Damaged drawer.', 'FFE-FUR-BS-1009', 0, 0, 0, '', '', '', '', 0),
(10, 10, 0, 1, 0, 1, '', '', '', '', '1900.00', '', 1, '2018-11-27', '2018-11-27', '', 'FFE-FUR-BS-1010', 0, 0, 0, '', '', '', '', 0),
(11, 11, 0, 0, 0, 0, '', '', '', '', '0.00', '', 0, '', '', '', 'FFE-FUR-BS-1011', 0, 0, 0, 'CENPRI', '', '', '', 0),
(12, 12, 0, 0, 0, 0, '', '', '', '', '0.00', '', 0, '', '', '', 'FFE-FUR-BS-1012', 0, 0, 0, 'CENPRI', '', '', '', 0),
(13, 13, 0, 1, 0, 11, '', '', '', '', '1850.00', '', 1, '2018-04-21', '', 'Previous Custodian: Rayza Mi?oza (Palawan OJT)', 'FFE-FUR-BS-1013', 0, 0, 0, 'CENPRI', '', '', '', 0),
(14, 14, 0, 1, 0, 11, '', '', '', '', '1900.00', '', 1, '2018-04-21', '2018-05-26', 'Previous Custodian: Rayza Mi?oza (Palawan OJT).', 'FFE-FUR-BS-1014', 0, 0, 0, 'CENPRI', '', '', '', 0),
(15, 15, 0, 1, 0, 1, '', '', '', '', '1900.00', '', 1, '2018-11-27', '2018-11-27', '', 'FFE-FUR-BS-1015', 0, 0, 0, 'CENPRI', '', '', '', 0),
(16, 16, 0, 5, 0, 1, '', '', '', '', '0.00', '', 0, '', '', '', 'FFE-FUR-BS-1016', 0, 0, 0, 'CENPRI', '', '', '', 0),
(17, 17, 0, 1, 0, 1, '', '', '', '', '0.00', '', 0, '', '', 'Previous Custodian: Jojo Canson (Warehouse Assistant)', 'FFE-FUR-BS-1017', 0, 0, 0, 'CENPRI', '', '', '', 0),
(18, 18, 0, 1, 0, 1, '', '', '', '', '1900.00', '', 1, '2019-11-27', '2019-11-27', '', 'FFE-FUR-BS-1018', 0, 0, 0, 'CENPRI', '', '', '', 0),
(19, 19, 0, 0, 0, 11, '', '', '', '', '1607.14', '', 1, '2015-01-08', '2015-02-04', '', 'FFE-FUR-BS-1019', 0, 0, 0, 'CENPRI', '', '', '', 0),
(20, 20, 0, 0, 0, 0, '', '', '', '', '2500.00', '', 1, '2016-07-30', '2016-07-30', '', 'FFE-FUR-BS-1020', 0, 0, 0, 'CENPRI', '', '', '', 0),
(21, 21, 0, 5, 0, 1, '', '', '', '', '1850.00', '', 1, '2016-06-01', '', 'Previous Custodian: Leizel Pisga (Asset Management Assistant) - Damaged drawer.', 'FFE-FUR-BS-1021', 0, 0, 0, 'CENPRI', '', '', '', 0),
(22, 22, 0, 1, 0, 1, '', '', '', '', '1900.00', '', 1, '2018-11-27', '2018-11-27', '', 'FFE-FUR-BS-1022', 0, 0, 0, 'CENPRI', '', '', '', 0),
(23, 23, 0, 5, 0, 1, '', '', '', '', '0.00', '', 0, '', '', 'Table from 2nd Floor, Progen Warehouse. Damaged drawer.', 'FFE-FUR-BS-1023', 0, 0, 0, '', '', '', '', 0),
(24, 24, 0, 1, 0, 1, '', '', '', '', '0.00', '', 0, '', '', 'Previous Custodian: Antonette Ledesma (Progen Asset Management Staff)', 'FFE-FUR-BS-1024', 0, 0, 0, '', '', '', '', 0),
(25, 25, 0, 0, 0, 11, '', '', '', '', '0.00', '', 0, '', '', '', 'FFE-FUR-BS-1025', 0, 0, 0, 'CENPRI', '', '', '', 0),
(26, 26, 0, 1, 0, 11, '', '', '', '', '1850.00', '', 1, '2015-04-29', '2015-04-29', '', 'FFE-FUR-BS-1026', 0, 0, 0, 'CENPRI', '', '', '', 0),
(27, 27, 0, 1, 0, 12, '', '', '', '', '1651.79', '', 1, '2016-07-20', '2016-08-03', '', 'FFE-FUR-BS-1027', 0, 0, 0, 'CENPRI', '', '', '', 0),
(28, 28, 0, 1, 0, 11, '', '', '', '', '1850.00', '', 1, '', '', 'Previous Custodian: New Harvest Energy Corp. Marvin Ambos', 'FFE-FUR-BS-1028', 0, 0, 0, '', '', '', '', 0),
(29, 29, 0, 0, 0, 11, '', '', '', '', '2500.00', '', 1, '', '', 'Previous Custodian: Negros Harvest Energy Corp. and Lloyd Jamero', 'FFE-FUR-BS-1029', 0, 0, 0, 'CENPRI', '', '', '', 0),
(30, 30, 0, 5, 0, 11, '', '', '', '', '0.00', '', 0, '', '', 'Damaged drawer.', 'FFE-FUR-BS-1030', 0, 0, 0, '', '', '', '', 0),
(31, 31, 0, 0, 0, 11, '', '', '', '', '1850.00', '', 1, '2016-06-01', '2017-01-26', 'Previous Custodian: Esther Luz Abarte', 'FFE-FUR-BS-1031', 0, 0, 0, 'CENPRI', '', '', '', 0),
(32, 32, 0, 0, 0, 11, '', '', '', '', '2500.00', '', 1, '2016-07-01', '2017-01-26', 'Previous Custodian: Esther Luz Abarte', 'FFE-FUR-BS-1032', 0, 0, 0, 'CENPRI', '', '', '', 0),
(33, 33, 0, 5, 0, 11, '', '', '', '', '0.00', '', 0, '', '', 'Damaged drawer, Previous Custodian: Relanie Parcon', 'FFE-FUR-BS-1033', 0, 0, 0, 'CENPRI', '', '', '', 0),
(34, 35, 0, 1, 0, 1, 'HTWAD-004', 'Vise-Grip', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1001', 0, 0, 0, 'CENPRI', 'HTWA-004-1.jpg', 'HTWA-004-2.jpg', 'HTWA-004-3.jpg', 0),
(35, 36, 0, 1, 0, 1, 'HTWAD-003', 'Crescent', '', '', '2500.00', '', 1, '2019-04-30', '', '', 'TOO-HAN-BS-1002', 0, 0, 0, 'CENPRI', 'HTWA-003-1.jpg', 'HTWA-003-2.jpg', 'HTWA-003-3.jpg', 0),
(36, 37, 0, 1, 0, 1, 'HTWB-002', 'Aigo', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1003', 0, 0, 0, 'CENPRI', 'HTWB-002-1.jpg', 'HTWB-002-2.jpg', 'HTWB-002-3.jpg', 0),
(37, 38, 0, 1, 0, 1, 'HTWB-004', 'Indestro USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1004', 0, 0, 0, 'CENPRI', 'HTWB-004-1.jpg', 'HTWB-004-2.jpg', 'HTWB-004-3.jpg', 0),
(38, 39, 0, 1, 0, 1, 'HTWB-003', 'SKS USA', '', '', '290.00', '', 1, '2015-12-07', '', '', 'TOO-HAN-BS-1005', 0, 0, 0, 'CENPRI', 'HTWB-003-1.jpg', 'HTWB-003-2.jpg', 'HTWB-003-3.jpg', 0),
(39, 40, 0, 1, 0, 1, 'HTWB-006', '', '', '', '6500.00', '', 1, '2015-12-07', '', '', 'TOO-HAN-BS-1006', 0, 0, 0, 'CENPRI', 'HTWB-006-1.jpg', 'HTWB-006-2.jpg', 'HTWB-006-3.jpg', 0),
(40, 41, 0, 1, 0, 0, '', 'Safety Jogger', 'Bestgirl S3', '', '1800.00', '', 1, '2018-11-28', '2018-11-29', '', 'FFE-PPE-BS-1001', 0, 0, 0, 'CENPRI', '', '', '', 0),
(41, 43, 0, 1, 0, 0, '', 'Safety Jogger', 'Bestgirl S3', 'Low Cut', '1800.00', '', 1, '2018-11-28', '2018-11-28', '', 'FFE-PPE-BS-1002', 0, 0, 0, 'CENPRI', '', '', '', 0),
(42, 44, 0, 1, 0, 0, '', 'Safety Jogger', 'Bestgirl S3', 'Low Cut', '1800.00', '', 1, '2018-11-28', '2018-11-28', '', 'FFE-PPE-BS-1003', 0, 0, 0, 'CENPRI', '', '', '', 0),
(43, 45, 0, 1, 0, 0, '', 'Safety Jogger', 'Bestgirl S3', 'Low Cut', '1800.00', '', 1, '2018-11-28', '2018-11-28', '', 'FFE-PPE-BS-1004', 0, 0, 0, 'CENPRI', '', '', '', 0),
(44, 46, 0, 1, 0, 0, '', 'Safety Jogger', 'Bestgirl S3', 'Low Cut', '1800.00', '', 1, '2018-11-28', '2018-11-28', '', 'FFE-PPE-BS-1005', 0, 0, 0, 'CENPRI', '', '', '', 0),
(45, 47, 0, 1, 0, 0, '', 'Safety Jogger', 'Bestgirl S3', 'Low Cut', '1800.00', '', 1, '2018-11-28', '2018-11-28', '', 'FFE-PPE-BS-1006', 0, 0, 0, 'CENPRI', '', '', '', 0),
(46, 48, 0, 1, 0, 0, '', 'Safety Jogger', 'Bestgirl S3', 'Low Cut', '1800.00', '', 1, '2018-11-28', '2018-11-28', '', 'FFE-PPE-BS-1007', 0, 0, 0, 'CENPRI', '', '', '', 0),
(47, 49, 0, 1, 0, 0, '', 'Safety Jogger', 'Bestgirl S3', 'Low Cut', '1800.00', '', 1, '2018-11-28', '2019-09-26', '', 'FFE-PPE-BS-1008', 0, 0, 0, 'CENPRI', '', '', '', 0),
(48, 50, 0, 1, 0, 0, '', 'Safety Jogger', 'Bestgirl S3', 'Low Cut', '1800.00', '', 1, '2018-11-28', '2018-11-28', '', 'FFE-PPE-BS-1009', 0, 0, 0, 'CENPRI', '', '', '', 0),
(49, 51, 0, 1, 0, 0, '', 'Safety Jogger', 'Bestgirl S3', 'Low Cut', '1800.00', '', 1, '2018-11-28', '2018-11-28', '', 'FFE-PPE-BS-1010', 0, 0, 0, 'CENPRI', '', '', '', 0),
(50, 52, 0, 1, 0, 0, '', 'Safety Jogger', 'Bestgirl S3', 'Low Cut', '1800.00', '', 1, '2018-11-28', '2018-11-28', '', 'FFE-PPE-BS-1011', 0, 0, 0, 'CENPRI', '', '', '', 0),
(51, 53, 0, 1, 0, 0, '', 'Safety Jogger', 'Bestgirl S3', 'Low Cut', '1800.00', '', 1, '2018-11-28', '2018-11-28', '', 'FFE-PPE-BS-1012', 0, 0, 0, 'CENPRI', '', '', '', 0),
(52, 54, 0, 1, 0, 0, '', 'Safety Jogger', 'Bestgirl S3', 'Low Cut', '1800.00', '', 1, '2018-11-28', '2018-11-28', '', 'FFE-PPE-BS-1013', 0, 0, 0, 'CENPRI', '', '', '', 0),
(53, 55, 0, 1, 0, 0, '', 'Safety Jogger', 'Bestgirl S3', 'Low Cut', '1800.00', '', 1, '2018-01-28', '2018-01-28', '', 'FFE-PPE-BS-1014', 0, 0, 0, 'CENPRI', '', '', '', 0),
(54, 56, 0, 1, 0, 0, '', 'Safety Jogger', 'Bestgirl S3', 'Low Cut', '1800.00', '', 1, '2018-01-28', '2018-01-28', '', 'FFE-PPE-BS-1015', 0, 0, 0, 'CENPRI', '', '', '', 0),
(55, 57, 0, 1, 0, 0, '', 'Safety Jogger', 'Bestgirl S3', 'Low Cut', '1800.00', '', 1, '2018-01-28', '2018-11-28', '', 'FFE-PPE-BS-1016', 0, 0, 0, 'CENPRI', '', '', '', 0),
(56, 58, 0, 1, 0, 0, 'HTWC-001', 'Indestro USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1007', 0, 0, 0, 'CENPRI', 'HTWC-001-1.jpg', 'HTWC-001-2.jpg', 'HTWC-001-3.jpg', 0),
(57, 59, 0, 1, 0, 0, 'HTWC-002', 'Indestro USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1008', 0, 0, 0, 'CENPRI', 'HTWC-002-1.jpg', 'HTWC-002-2.jpg', 'HTWC-002-3.jpg', 0),
(58, 60, 0, 1, 0, 0, 'HTWC-003', 'Indestro USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1009', 0, 0, 0, 'CENPRI', 'HTWC-003-1.jpg', 'HTWC-003-2.jpg', 'HTWC-003-3.jpg', 0),
(59, 61, 0, 1, 0, 0, 'HTWC-004', 'Indestro USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1010', 0, 0, 0, 'CENPRI', 'HTWC-004-1.jpg', 'HTWC-004-2.jpg', 'HTWC-004-3.jpg', 0),
(60, 62, 0, 1, 0, 0, 'HTWC-005', 'Indestro USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1011', 0, 0, 0, 'CENPRI', 'HTWC-005-1.jpg', 'HTWC-005-2.jpg', 'HTWC-005-3.jpg', 0),
(61, 63, 0, 1, 0, 0, 'HTWC-006', 'Indestro USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1012', 0, 0, 0, 'CENPRI', 'HTWC-006-1.jpg', 'HTWC-006-2.jpg', 'HTWC-006-3.jpg', 0),
(62, 64, 0, 1, 0, 0, 'HTWC-007', 'Creston', '', '', '72.00', '', 1, '2019-04-16', '', '', 'TOO-HAN-BS-1013', 0, 0, 0, 'CENPRI', 'HTWC-007-1.jpg', 'HTWC-007-2.jpg', 'HTWC-007-3.jpg', 0),
(63, 65, 0, 1, 0, 0, 'HTWC-008', 'Creston', '', '', '72.00', '', 1, '2019-04-16', '', '', 'TOO-HAN-BS-1014', 0, 0, 0, 'CENPRI', 'HTWC-008-1.jpg', 'HTWC-008-2.jpg', 'HTWC-008-3.jpg', 0),
(64, 66, 0, 1, 0, 0, 'HTWC-009', 'Indestro USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1015', 0, 0, 0, 'CENPRI', 'HTWC-009-1.jpg', 'HTWC-009-2.jpg', '', 0),
(65, 67, 0, 1, 0, 0, 'HTWC-010', 'Diamond Leopard', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1016', 0, 0, 0, 'CENPRI', 'HTWC-010-1.jpg', 'HTWC-010-2.jpg', 'HTWC-010-3.jpg', 0),
(66, 68, 0, 1, 0, 0, 'HTWC-011', 'Buffalo', '', '', '349.50', '', 1, '2019-04-16', '', '', 'TOO-HAN-BS-1017', 0, 0, 0, 'CENPRI', 'HTWC-011-1.jpg', 'HTWC-011-2.jpg', 'HTWC-011-3.jpg', 0),
(67, 69, 0, 1, 0, 0, 'HTWC-012', 'Buffalo', '', '', '349.50', '', 1, '2019-04-16', '', '', 'TOO-HAN-BS-1018', 0, 0, 0, 'CENPRI', '', '', '', 0),
(68, 70, 0, 1, 0, 0, 'HTWC-013', 'Greenfield', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1019', 0, 0, 0, 'CENPRI', 'HTWC-013-1.jpg', 'HTWC-013-2.jpg', 'HTWC-013-3.jpg', 0),
(69, 71, 0, 1, 0, 0, 'HTWC-014', 'Greenfield', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1020', 0, 0, 0, 'CENPRI', 'HTWC-014-1.jpg', 'HTWC-014-2.jpg', 'HTWC-014-3.jpg', 0),
(70, 72, 0, 1, 0, 0, 'HTWC-015', 'Greenfield', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1021', 0, 0, 0, 'CENPRI', 'HTWC-015-1.jpg', 'HTWC-015-2.jpg', 'HTWC-015-3.jpg', 0),
(71, 73, 0, 0, 0, 0, 'HTWC-016', 'Greenfield', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1022', 0, 0, 0, '', 'HTWC-016-1.jpg', 'HTWC-016-2.jpg', 'HTWC-016-3.jpg', 0),
(72, 74, 0, 1, 0, 0, 'HTWC-017', 'Butterfly', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1023', 0, 0, 0, 'CENPRI', 'HTWC-017-1.jpg', 'HTWC-017-2.jpg', 'HTWC-017-3.jpg', 0),
(73, 75, 0, 1, 0, 0, 'HTWC-018', 'Bestguard', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1024', 0, 0, 0, 'CENPRI', 'HTWC-018-1.jpg', 'HTWC-018-2.jpg', 'HTWC-018-3.jpg', 0),
(74, 76, 0, 1, 0, 0, 'HTWC-019', 'Stanley', '87-081', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1025', 0, 0, 0, 'CENPRI', 'HTWC-019-1.jpg', 'HTWC-019-2.jpg', 'HTWC-019-3.jpg', 0),
(75, 77, 0, 1, 0, 0, 'HTWC-020', 'Stanley', '87-081', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1026', 0, 0, 0, 'CENPRI', 'HTWC-020-1.jpg', 'HTWC-020-2.jpg', 'HTWC-020-3.jpg', 0),
(76, 78, 0, 1, 0, 0, 'HTWC-021', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1027', 0, 0, 0, 'CENPRI', 'HTWC-021-1.jpg', 'HTWC-021-2.jpg', 'HTWC-021-3.jpg', 0),
(77, 79, 0, 1, 0, 0, 'HTWC-022', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1028', 0, 0, 0, 'CENPRI', 'HTWC-022-1.jpg', 'HTWC-022-2.jpg', 'HTWC-022-3.jpg', 0),
(78, 80, 0, 1, 0, 0, 'HTWC-023', 'Greenfield', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1029', 0, 0, 0, 'CENPRI', '', '', '', 0),
(79, 81, 0, 1, 0, 0, 'HTWC-024', 'Greenfield', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1030', 0, 0, 0, 'CENPRI', '', '', '', 0),
(80, 82, 0, 1, 0, 0, 'HTWC-025', 'Bestguard USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1031', 0, 0, 0, 'CENPRI', 'HTWC-025-1.jpg', 'HTWC-025-2.jpg', 'HTWC-025-3.jpg', 0),
(81, 83, 0, 1, 0, 0, 'HTWC-026', 'Bestguard USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1032', 0, 0, 0, 'CENPRI', 'HTWC-026-1.jpg', 'HTWC-026-2.jpg', 'HTWC-026-3.jpg', 0),
(82, 84, 0, 1, 0, 0, 'HTWC-027', 'Creston', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1033', 0, 0, 0, 'CENPRI', 'HTWC-027-1.jpg', 'HTWC-027-2.jpg', 'HTWC-027-3.jpg', 0),
(83, 85, 0, 1, 0, 0, 'HTWC-028', 'Creston', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1034', 0, 0, 0, 'CENPRI', 'HTWC-028-1.jpg', 'HTWC-028-2.jpg', 'HTWC-028-3.jpg', 0),
(84, 86, 0, 1, 0, 0, 'HTWC-029', 'Proto USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1035', 0, 0, 0, 'CENPRI', 'HTWC-029-1.jpg', 'HTWC-029-2.jpg', 'HTWC-029-3.jpg', 0),
(85, 87, 0, 1, 0, 0, 'HTWC-030', 'Proto USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1036', 0, 0, 0, 'CENPRI', 'HTWC-030-1.jpg', 'HTWC-030-2.jpg', 'HTWC-030-3.jpg', 0),
(86, 88, 0, 1, 0, 0, 'HTWC-031', 'Proto USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1037', 0, 0, 0, 'CENPRI', 'HTWC-031-1.jpg', 'HTWC-031-2.jpg', 'HTWC-031-3.jpg', 0),
(87, 89, 0, 1, 0, 0, 'HTWC-032', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1038', 0, 0, 0, 'CENPRI', 'HTWC-032-1.jpg', 'HTWC-032-2.jpg', 'HTWC-032-3.jpg', 0),
(88, 90, 0, 1, 0, 0, 'HTWC-033', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1039', 0, 0, 0, 'CENPRI', 'HTWC-033-1.jpg', 'HTWC-033-2.jpg', 'HTWC-033-3.jpg', 0),
(89, 91, 0, 1, 0, 0, 'HTWC-034', 'Stanley', '87-084', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1040', 0, 0, 0, 'CENPRI', 'HTWC-034-1.jpg', 'HTWC-034-2.jpg', 'HTWC-034-3.jpg', 0),
(90, 92, 0, 1, 0, 0, 'HTWC-035', 'Indestro USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1041', 0, 0, 0, 'CENPRI', '', '', '', 0),
(91, 93, 0, 1, 0, 0, 'HTWC-036', 'Aigo', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1042', 0, 0, 0, 'CENPRI', 'HTWC-036-1.jpg', 'HTWC-036-2.jpg', 'HTWC-036-3.jpg', 0),
(92, 94, 0, 1, 0, 0, 'HTWC-037', 'Butterfly', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1043', 0, 0, 0, 'CENPRI', 'HTWC-037-1.jpg', 'HTWC-037-2.jpg', 'HTWC-037-3.jpg', 0),
(93, 95, 0, 1, 0, 0, 'HTWC-038', 'SKS USA', '', '', '900.00', '', 1, '2015-06-25', '', '', 'TOO-HAN-BS-1044', 0, 0, 0, 'CENPRI', 'HTWC-038-1.jpg', 'HTWC-038-2.jpg', 'HTWC-038-3.jpg', 0),
(94, 96, 0, 1, 0, 0, 'HTWC-039', 'SKS USA', '', '', '900.00', '', 1, '2015-06-25', '', '', 'TOO-HAN-BS-1045', 0, 0, 0, 'CENPRI', 'HTWC-039-1.jpg', 'HTWC-039-2.jpg', 'HTWC-039-3.jpg', 0),
(95, 97, 0, 1, 0, 0, 'HTWC-040', 'Indestro USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1046', 0, 0, 0, 'CENPRI', '', '', '', 0),
(96, 98, 0, 1, 0, 0, 'HTWC-041', 'Stanley', '87-088', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1047', 0, 0, 0, 'CENPRI', 'HTWC-041-1.jpg', 'HTWC-041-2.jpg', 'HTWC-041-3.jpg', 0),
(97, 99, 0, 1, 0, 0, 'HTWC-042', 'Stanley', '87-088', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1048', 0, 0, 0, 'CENPRI', 'HTWC-042-1.jpg', 'HTWC-042-2.jpg', 'HTWC-042-3.jpg', 0),
(98, 100, 0, 1, 0, 0, 'HTWC-043', 'Stanley', '87-088', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1049', 0, 0, 0, 'CENPRI', 'HTWC-043-1.jpg', 'HTWC-043-2.jpg', 'HTWC-043-3.jpg', 0),
(99, 101, 0, 1, 0, 0, 'HTWC-044', 'Stanley', '87-088', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1050', 0, 0, 0, 'CENPRI', 'HTWC-044-1.jpg', 'HTWC-044-2.jpg', 'HTWC-044-3.jpg', 0),
(100, 102, 0, 1, 0, 0, 'HTWC-045', 'Proto USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1051', 0, 0, 0, 'CENPRI', 'HTWC-045-1.jpg', 'HTWC-045-2.jpg', 'HTWC-045-3.jpg', 0),
(101, 103, 0, 1, 0, 0, 'HTWC-046', 'Proto USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1052', 0, 0, 0, 'CENPRI', 'HTWC-046-1.jpg', 'HTWC-046-2.jpg', 'HTWC-046-3.jpg', 0),
(102, 104, 0, 1, 0, 0, 'HTWC-047', 'Easco', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1053', 0, 0, 0, 'CENPRI', 'HTWC-047-1.jpg', 'HTWC-047-2.jpg', 'HTWC-047-3.jpg', 0),
(103, 105, 0, 1, 0, 0, 'HTWC-048', 'Indestro USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1054', 0, 0, 0, 'CENPRI', 'HTWC-048-1.jpg', 'HTWC-048-2.jpg', 'HTWC-048-3.jpg', 0),
(104, 106, 0, 1, 0, 0, 'HTWC-049', 'Indestro USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1055', 0, 0, 0, 'CENPRI', 'HTWC-049-1.jpg', 'HTWC-049-2.jpg', 'HTWC-049-3.jpg', 0),
(105, 107, 0, 1, 0, 0, 'HTWC-050', 'Stanley', '87-266', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1056', 0, 0, 0, 'CENPRI', 'HTWC-050-1.jpg', 'HTWC-050-2.jpg', 'HTWC-050-3.jpg', 0),
(106, 108, 0, 1, 0, 0, 'HTWC-051', 'SKS USA', '', '', '1700.00', '', 1, '2015-06-25', '', '', 'TOO-HAN-BS-1057', 0, 0, 0, 'CENPRI', '', '', '', 0),
(107, 109, 0, 1, 0, 0, 'HTWC-052', 'Unior LSI', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1058', 0, 0, 0, 'CENPRI', 'HTWC-052-1.jpg', 'HTWC-052-2.jpg', 'HTWC-052-3.jpg', 0),
(108, 110, 0, 1, 0, 0, 'HTWC-053', 'Unior LSI', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1059', 0, 0, 0, 'CENPRI', 'HTWC-053-1.jpg', 'HTWC-053-2.jpg', 'HTWC-053-3.jpg', 0),
(109, 111, 0, 1, 0, 0, 'HTWC-054', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1060', 0, 0, 0, 'CENPRI', 'HTWC-054-1.jpg', 'HTWC-054-2.jpg', 'HTWC-054-3.jpg', 0),
(110, 112, 0, 1, 0, 0, 'HTWC-055', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1061', 0, 0, 0, 'CENPRI', 'HTWC-055-1.jpg', 'HTWC-055-2.jpg', 'HTWC-055-3.jpg', 0),
(111, 113, 0, 1, 0, 0, 'HTWC-056', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1062', 0, 0, 0, 'CENPRI', '', '', '', 0),
(112, 114, 0, 1, 0, 0, 'HTWC-057', 'Stanley', '87-271', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1063', 0, 0, 0, 'CENPRI', '', '', '', 0),
(113, 115, 0, 1, 0, 0, 'HTWC-058', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1064', 0, 0, 0, 'CENPRI', '', '', '', 0),
(114, 116, 0, 1, 0, 0, 'HTWC-059', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1065', 0, 0, 0, 'CENPRI', '', '', '', 0),
(115, 117, 0, 1, 0, 0, 'HTWC-060', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1066', 0, 0, 0, 'CENPRI', '', '', '', 0),
(116, 118, 0, 1, 0, 0, 'HTWC-061', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1067', 0, 0, 0, 'CENPRI', '', '', '', 0),
(117, 119, 0, 1, 0, 0, 'HTWC-062', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1068', 0, 0, 0, 'CENPRI', '', '', '', 0),
(118, 120, 0, 1, 0, 0, 'HTWC-063', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1069', 0, 0, 0, 'CENPRI', '', '', '', 0),
(119, 121, 0, 1, 0, 0, 'HTWCAC-001', 'SKS USA', '', '', '0.00', '', 0, '', '2018-06-13', '', 'TOO-HAN-BS-1070', 0, 0, 0, 'CENPRI', '', '', '', 0),
(120, 122, 0, 1, 0, 0, 'HTWCAC-002', 'SKS USA', '', '', '0.00', '', 0, '', '2018-06-13', '', 'TOO-HAN-BS-1071', 0, 0, 0, 'CENPRI', '', '', '', 0),
(121, 123, 0, 1, 0, 0, 'HTWCAC-003', 'SKS USA', '', '', '0.00', '', 0, '', '2018-06-13', '', 'TOO-HAN-BS-1072', 0, 0, 0, 'CENPRI', '', '', '', 0),
(122, 124, 0, 1, 0, 0, 'HTWCAC-004', 'SKS USA', '', '', '0.00', '', 0, '', '2018-06-13', '', 'TOO-HAN-BS-1073', 0, 0, 0, 'CENPRI', '', '', '', 0),
(123, 125, 0, 1, 0, 0, 'HTWCAC-005', 'SKS USA', '', '', '0.00', '', 0, '', '2018-06-13', '', 'TOO-HAN-BS-1074', 0, 0, 0, 'CENPRI', '', '', '', 0),
(124, 126, 0, 1, 0, 0, 'HTWCAC-006', 'SKS USA', '', '', '0.00', '', 0, '', '2018-06-13', '', 'TOO-HAN-BS-1075', 0, 0, 0, 'CENPRI', '', '', '', 0),
(125, 127, 0, 1, 0, 0, 'HWTCAC-007', 'SKS USA', '', '', '0.00', '', 0, '', '2018-06-13', '', 'TOO-HAN-BS-1076', 0, 0, 0, 'CENPRI', '', '', '', 0),
(126, 128, 0, 1, 0, 0, 'HTWCAC-008', 'SKS USA', '', '', '0.00', '', 0, '', '2018-06-13', '', 'TOO-HAN-BS-1078', 0, 0, 0, 'CENPRI', '', '', '', 0),
(127, 129, 0, 1, 0, 0, 'HTWO-001', 'Lotus', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1078', 0, 0, 0, 'CENPRI', 'HTWO-001-1.jpg', 'HTWO-001-2.jpg', 'HTWO-001-3.jpg', 0),
(128, 130, 0, 1, 0, 0, 'HTWO-002', 'Venus', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1079', 0, 0, 0, 'CENPRI', 'HTWO-002-1.jpg', 'HTWO-002-2.jpg', 'HTWO-002-3.jpg', 0),
(129, 131, 0, 1, 0, 0, 'HTWO-003', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1080', 0, 0, 0, 'CENPRI', 'HTWO-003-1.jpg', 'HTWO-003-2.jpg', 'HTWO-003-3.jpg', 0),
(130, 132, 0, 1, 0, 0, 'HTWO-004', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1081', 0, 0, 0, 'CENPRI', 'HTWO-004-1.jpg', 'HTWO-004-2.jpg', 'HTWO-004-3.jpg', 0),
(131, 133, 0, 1, 0, 0, 'HTWO-005', 'Indestro USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1082', 0, 0, 0, 'CENPRI', 'HTWO-005-1.jpg', 'HTWO-005-2.jpg', 'HTWO-005-3.jpg', 0),
(132, 134, 0, 1, 0, 0, 'HTWO-006', 'Indestro USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1083', 0, 0, 0, 'CENPRI', '', '', '', 0),
(133, 135, 0, 1, 0, 0, 'HTWO-007', '', 'DIN 895', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1084', 0, 0, 0, 'CENPRI', 'HTWO-007-1.jpg', 'HTWO-007-2.jpg', 'HTWO-007-3.jpg', 0),
(134, 136, 0, 1, 0, 0, 'HTWO-008', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1085', 0, 0, 0, 'CENPRI', 'HTWO-008-1.jpg', 'HTWO-008-2.jpg', 'HTWO-008-3.jpg', 0),
(135, 137, 0, 1, 0, 0, 'HTWO-009', '', 'DIN 895', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1086', 0, 0, 0, 'CENPRI', 'HTWO-009-1.jpg', 'HTWO-009-2.jpg', 'HTWO-009-3.jpg', 0),
(136, 138, 0, 1, 0, 0, 'HTWO-010', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1087', 0, 0, 0, 'CENPRI', '', '', '', 0),
(137, 139, 0, 1, 0, 0, 'HTW0-011', '', 'DIN 895', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1088', 0, 0, 0, 'CENPRI', 'HTW0-011-1.jpg', 'HTW0-011-2.jpg', 'HTW0-011-3.jpg', 0),
(138, 140, 0, 1, 0, 0, 'HTWO-012', '', 'DIN 895', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1089', 0, 0, 0, 'CENPRI', '', '', '', 0),
(139, 141, 0, 1, 0, 0, 'HTWO-013', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1090', 0, 0, 0, 'CENPRI', '', '', '', 0),
(140, 142, 0, 1, 0, 0, 'HTWO-014', 'Hans', '1550', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1091', 0, 0, 0, 'CENPRI', 'HTWO-014-1.jpg', 'HTWO-014-2.jpg', 'HTWO-014-3.jpg', 0),
(141, 143, 0, 1, 0, 0, 'HTWO-015', '', 'DIN 894', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1092', 0, 0, 0, 'CENPRI', '', '', '', 0),
(142, 144, 0, 0, 0, 0, 'HTWAL-001', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1093', 0, 0, 0, '', '', '', '', 0),
(143, 145, 0, 0, 0, 0, 'HTWAL-002', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1094', 0, 0, 0, '', '', '', '', 0),
(144, 146, 0, 0, 0, 0, 'HTWAL-003', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1095', 0, 0, 0, '', '', '', '', 0),
(145, 147, 0, 0, 0, 0, 'HTWAL-004', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1096', 0, 0, 0, '', '', '', '', 0),
(146, 148, 0, 0, 0, 0, 'HTWAL-005', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1097', 0, 0, 0, '', '', '', '', 0),
(147, 149, 0, 0, 0, 0, 'HTWAL-006', 'SKS USA', '', '', '0.00', '', 0, '', '', 'Convert to Special Tools (6/23/2019)', 'TOO-HAN-BS-1098', 0, 0, 0, '', '', '', '', 0),
(148, 150, 0, 0, 0, 0, 'HTWAL-007', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1099', 0, 0, 0, '', '', '', '', 0),
(149, 151, 0, 0, 0, 0, 'HTWAL-008', 'Licota', 'HW1', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1100', 0, 0, 0, '', '', '', '', 0),
(150, 152, 0, 0, 0, 0, 'HTWAL-009', 'Licota', 'HW1', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1101', 0, 0, 0, '', '', '', '', 0),
(151, 153, 0, 0, 0, 0, 'HTWAL-010', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1102', 0, 0, 0, '', '', '', '', 0),
(152, 154, 0, 0, 0, 0, 'HTWAL-011', 'Beargrip', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1103', 0, 0, 0, '', '', '', '', 0),
(153, 155, 0, 0, 0, 0, 'HTWAL-012', 'Beargrip', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1104', 0, 0, 0, '', '', '', '', 0),
(154, 156, 0, 0, 0, 0, 'HTWAL-013', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1105', 0, 0, 0, '', '', '', '', 0),
(155, 157, 0, 0, 0, 0, 'HTWAL-014', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1106', 0, 0, 0, '', '', '', '', 0),
(156, 158, 0, 0, 0, 0, 'HTWAL-015', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1107', 0, 0, 0, '', '', '', '', 0),
(157, 159, 0, 0, 0, 0, 'HTWAL-016', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1108', 0, 0, 0, '', '', '', '', 0),
(158, 160, 0, 0, 0, 0, 'HTWAL-017', 'USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1109', 0, 0, 0, '', '', '', '', 0),
(159, 161, 0, 0, 0, 0, 'HTWAL-018', 'Germany', 'DIN 911', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1110', 0, 0, 0, '', '', '', '', 0),
(160, 162, 0, 0, 0, 0, 'HTWAL-019', 'Germany', 'DIN 911', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1111', 0, 0, 0, '', '', '', '', 0),
(161, 163, 0, 0, 0, 0, 'HTWAL-020', 'Germany', 'DIN 911', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1112', 0, 0, 0, '', '', '', '', 0),
(162, 164, 0, 0, 0, 0, 'HTWAL-021', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1113', 0, 0, 0, '', '', '', '', 0),
(163, 165, 0, 0, 0, 0, 'HTWAL-022', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1114', 0, 0, 0, '', '', '', '', 0),
(164, 166, 0, 0, 0, 0, 'HTWAL-023', 'Germany', 'DIN 911', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1115', 0, 0, 0, '', '', '', '', 0),
(165, 167, 0, 0, 0, 0, 'HTWAL-024', 'Germany', 'DIN 911', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1116', 0, 0, 0, '', '', '', '', 0),
(166, 168, 0, 0, 0, 0, 'HTWP-001', 'Ridgid', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1117', 0, 0, 0, '', '', '', '', 0),
(167, 169, 0, 0, 0, 0, 'HTWP-002', 'Ridgid', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1118', 0, 0, 0, '', '', '', '', 0),
(168, 170, 0, 0, 0, 0, 'HTWP-003', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1119', 0, 0, 0, '', '', '', '', 0),
(169, 171, 0, 0, 0, 0, 'HTWP-004', 'Ridgid', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1120', 0, 0, 0, '', '', '', '', 0),
(170, 172, 0, 0, 0, 0, 'HTWP-005', 'Stanley', '87-626', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1121', 0, 0, 0, '', '', '', '', 0),
(171, 173, 0, 0, 0, 0, 'HTWP-006', 'Stanley', '87-626', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1122', 0, 0, 0, '', '', '', '', 0),
(172, 174, 0, 0, 0, 0, 'HTWP-007', 'Stanley', '87-627', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1123', 0, 0, 0, '', '', '', '', 0),
(173, 175, 0, 0, 0, 0, 'HTWP-008', 'Stanley', '87-627', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1124', 0, 0, 0, '', '', '', '', 0),
(174, 176, 0, 0, 0, 0, 'HTWSL-001', 'Hans', '1501', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1125', 0, 0, 0, '', '', '', '', 0),
(175, 177, 0, 0, 0, 0, 'HTWSL-002', 'Hans', '1501', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1126', 0, 0, 0, '', '', '', '', 0),
(176, 178, 0, 0, 0, 0, 'HTWSL-003', 'Unior', '184', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1127', 0, 0, 0, '', '', '', '', 0),
(177, 179, 0, 0, 0, 0, 'HTWSL-004', 'Unior', '184', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1128', 0, 0, 0, '', '', '', '', 0),
(178, 180, 0, 0, 0, 0, 'HTWSL-005', 'Hans', '1501', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1129', 0, 0, 0, '', '', '', '', 0),
(179, 181, 0, 0, 0, 0, 'HTWSL-006', 'Hans', '1501', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1130', 0, 0, 0, '', '', '', '', 0),
(180, 182, 0, 0, 0, 0, 'HTWSL-007', 'Hans', '1501', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1131', 0, 0, 0, '', '', '', '', 0),
(181, 183, 0, 0, 0, 0, 'HTWSL-008', 'Hans', '1501', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1132', 0, 0, 0, '', '', '', '', 0),
(182, 184, 0, 0, 0, 0, 'HTWSL-009', 'Bangquan', 'DIN 7444', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1133', 0, 0, 0, '', '', '', '', 0),
(183, 185, 0, 0, 0, 0, 'HTWSL-010', 'Hans', '1501', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1134', 0, 0, 0, '', '', '', '', 0),
(184, 186, 0, 0, 0, 0, 'HTWSL-011', 'SK Tool', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1135', 0, 0, 0, '', '', '', '', 0),
(185, 187, 0, 0, 0, 0, 'HTWSL-012', 'Ampco', 'ALBR', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1136', 0, 0, 0, '', '', '', '', 0),
(186, 188, 0, 0, 0, 0, 'HTWSL-013', 'Heycoo', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1137', 0, 0, 0, '', '', '', '', 0),
(187, 189, 0, 0, 0, 0, 'HTSO-001', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1138', 0, 0, 0, '', '', '', '', 0),
(188, 190, 0, 0, 0, 0, 'HTSO-002', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1139', 0, 0, 0, '', '', '', '', 0),
(189, 191, 0, 0, 0, 0, 'HTSO-003', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1140', 0, 0, 0, '', '', '', '', 0),
(190, 192, 0, 0, 0, 0, 'HTSO-004', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1141', 0, 0, 0, '', '', '', '', 0),
(191, 193, 0, 0, 0, 0, 'HTSO-005', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1142', 0, 0, 0, '', '', '', '', 0),
(192, 194, 0, 0, 0, 0, 'HTSO-006', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1143', 0, 0, 0, '', '', '', '', 0),
(193, 195, 0, 0, 0, 0, 'HTSO-007', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1144', 0, 0, 0, '', '', '', '', 0),
(194, 196, 0, 0, 0, 0, 'HTSO-008', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1145', 0, 0, 0, '', '', '', '', 0),
(195, 197, 0, 0, 0, 0, 'HTSO-009', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1146', 0, 0, 0, '', '', '', '', 0),
(196, 198, 0, 0, 0, 0, 'HTSO-010', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1147', 0, 0, 0, '', '', '', '', 0),
(197, 199, 0, 0, 0, 0, 'HTSO-011', 'Koken ', '4400 M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1148', 0, 0, 0, '', '', '', '', 0),
(198, 200, 0, 0, 0, 0, 'HTSO-012', 'Stanley', '86-523', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1149', 0, 0, 0, '', '', '', '', 0),
(199, 201, 0, 0, 0, 0, 'HTSO-013', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1150', 0, 0, 0, '', '', '', '', 0),
(200, 202, 0, 0, 0, 0, 'HTSO-014', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1151', 0, 0, 0, '', '', '', '', 0),
(201, 203, 0, 0, 0, 0, 'HTSO-017', 'Unior', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1152', 0, 0, 0, '', '', '', '', 0),
(202, 204, 0, 0, 0, 0, 'HTSO-018', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1153', 0, 0, 0, '', '', '', '', 0),
(203, 205, 0, 0, 0, 0, 'HTSO-019', 'Koken', '4400 M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1154', 0, 0, 0, '', '', '', '', 0),
(204, 206, 0, 0, 0, 0, 'HTSO-020', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1155', 0, 0, 0, '', '', '', '', 0),
(205, 207, 0, 0, 0, 0, 'HTSO-021', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1156', 0, 0, 0, '', '', '', '', 0),
(206, 208, 0, 0, 0, 0, 'HTSO-022', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1157', 0, 0, 0, '', '', '', '', 0),
(207, 209, 0, 0, 0, 0, 'HTSO-023', 'Stanley', '86-543', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1158', 0, 0, 0, '', '', '', '', 0),
(208, 210, 0, 0, 0, 0, 'HTSO-024', 'Stanley', '86-543', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1159', 0, 0, 0, '', '', '', '', 0),
(209, 211, 0, 0, 0, 0, 'HTSO-025', 'Stanley', '86-543', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1160', 0, 0, 0, '', '', '', '', 0),
(210, 212, 0, 0, 0, 0, 'HTSO-026', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1161', 0, 0, 0, '', '', '', '', 0),
(211, 213, 0, 0, 0, 0, 'HTSO-027', 'Stanley', '86-545', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1162', 0, 0, 0, '', '', '', '', 0),
(212, 214, 0, 0, 0, 0, 'HTSO-028', 'Stanley', '86-546', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1163', 0, 0, 0, '', '', '', '', 0),
(213, 215, 0, 0, 0, 0, 'HTSO-029', 'Stanley', '86-546', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1164', 0, 0, 0, '', '', '', '', 0),
(214, 216, 0, 0, 0, 0, 'HTSO-030', 'Stanley', '86-547', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1165', 0, 0, 0, '', '', '', '', 0),
(215, 217, 0, 0, 0, 0, 'HTSO-031', 'Stanley', '86-547', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1166', 0, 0, 0, '', '', '', '', 0),
(216, 218, 0, 0, 0, 0, 'HTSO-032', 'Proto', '5415 M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1167', 0, 0, 0, '', '', '', '', 0),
(217, 219, 0, 0, 0, 0, 'HTSO-033', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1168', 0, 0, 0, '', '', '', '', 0),
(218, 220, 0, 0, 0, 0, 'HTSO-034', 'Stanley', '88-788', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1169', 0, 0, 0, '', '', '', '', 0),
(219, 221, 0, 0, 0, 0, 'HTSO-035', 'Stanley', '88-788', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1170', 0, 0, 0, '', '', '', '', 0),
(220, 222, 0, 0, 0, 0, 'HTSO-036', 'Stanley', '88-788', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1171', 0, 0, 0, '', '', '', '', 0),
(221, 223, 0, 0, 0, 0, 'HTSO-037', 'Stanley', '88-790', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1172', 0, 0, 0, '', '', '', '', 0),
(222, 224, 0, 0, 0, 0, 'HTWCAC-009', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1173', 0, 0, 0, '', '', '', '', 0),
(223, 225, 0, 0, 0, 0, 'HTWCAC-010', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1174', 0, 0, 0, '', '', '', '', 0),
(224, 226, 0, 0, 0, 0, 'HTWCAC-011', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1175', 0, 0, 0, '', '', '', '', 0),
(225, 227, 0, 0, 0, 0, 'HTWCAC-012', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1176', 0, 0, 0, '', '', '', '', 0),
(226, 228, 0, 0, 0, 0, 'HTWCAC-013', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1177', 0, 0, 0, '', '', '', '', 0),
(227, 229, 0, 0, 0, 0, 'HTSO-038', 'Stanley', '88-790', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1178', 0, 0, 0, '', '', '', '', 0),
(228, 230, 0, 0, 0, 0, 'HTSO-039', 'Stanley', '88-791', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1179', 0, 0, 0, '', '', '', '', 0),
(229, 231, 0, 0, 0, 0, 'HTSO-040', 'Stanley', '88-791', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1180', 0, 0, 0, '', '', '', '', 0),
(230, 232, 0, 0, 0, 0, 'HTSO-041', 'Proto', '5419 M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1181', 0, 0, 0, '', '', '', '', 0),
(231, 233, 0, 0, 0, 0, 'HTSO-042', 'Stanley', '88-792', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1182', 0, 0, 0, '', '', '', '', 0),
(232, 234, 0, 0, 0, 0, 'HTSO-043', 'Stanley', '88-792', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1183', 0, 0, 0, '', '', '', '', 0),
(233, 235, 0, 0, 0, 0, 'HTSO-044', 'Stanley', '88-792', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1184', 0, 0, 0, '', '', '', '', 0),
(234, 236, 0, 0, 0, 0, 'HTSO-045', 'Stanley', '88-792', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1185', 0, 0, 0, '', '', '', '', 0),
(235, 237, 0, 0, 0, 0, 'HTSO-046', 'Stanley', '88-792', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1186', 0, 0, 0, '', '', '', '', 0),
(236, 238, 1, 0, 0, 12, '', 'ASUS', 'X450', '', '0.00', '', 1, '2016-05-14', '2016-05-17', '', 'FFE-COMP-BS-1001', 0, 0, 0, '', '', '', '', 0),
(237, 239, 1, 0, 0, 0, '', 'Huntkey', '', '', '0.00', '', 0, '2016-05-17', '2016-05-17', '', 'FFE-COMP-BS-1002', 0, 0, 0, '', '', '', '', 0),
(238, 240, 0, 0, 0, 0, 'HTSO-047', 'Stanley', '88-793', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1187', 0, 0, 0, '', '', '', '', 0),
(239, 241, 0, 0, 0, 0, 'HTSO-048', 'Stanley', '88-793', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1188', 0, 0, 0, '', '', '', '', 0),
(240, 242, 0, 0, 0, 0, 'HTSO-049', 'Stanley', '88-793', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1189', 0, 0, 0, '', '', '', '', 0),
(241, 243, 0, 0, 0, 0, 'HTSO-050', 'Stanley', '88-793', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1190', 0, 0, 0, '', '', '', '', 0),
(242, 244, 0, 0, 0, 0, 'HTSO-051', 'Stanley', '88-793', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1191', 0, 0, 0, '', '', '', '', 0),
(243, 245, 0, 0, 0, 0, 'HTSO-052', 'Stanley', '88-794', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1192', 0, 0, 0, '', '', '', '', 0),
(244, 246, 0, 0, 0, 0, 'HTSO-053', 'Stanley', '88-794', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1193', 0, 0, 0, '', '', '', '', 0),
(245, 247, 0, 0, 0, 0, 'HTSO-054', 'Stanley', '88-794', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1194', 0, 0, 0, '', '', '', '', 0),
(246, 248, 0, 0, 0, 0, 'HTSO-055', 'Stanley', '88-795', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1195', 0, 0, 0, '', '', '', '', 0),
(247, 249, 0, 0, 0, 0, 'HTSO-056', 'Tone', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1196', 0, 0, 0, '', '', '', '', 0),
(248, 250, 0, 0, 0, 0, 'HTSO-057', 'Tone', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1197', 0, 0, 0, '', '', '', '', 0),
(249, 251, 0, 0, 0, 0, 'HTSO-058', 'Tone', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1198', 0, 0, 0, '', '', '', '', 0),
(250, 252, 0, 0, 0, 0, 'HTSO-059', 'Tone', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1199', 0, 0, 0, '', '', '', '', 0),
(251, 253, 0, 0, 0, 0, 'HTSO-060', 'Tone', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1200', 0, 0, 0, '', '', '', '', 0),
(252, 254, 0, 0, 0, 0, 'HTSO-061', 'Stanley', '88-796', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1201', 0, 0, 0, '', '', '', '', 0),
(253, 255, 0, 0, 0, 0, 'HTSO-062', 'Stanley', '88-796', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1202', 0, 0, 0, '', '', '', '', 0),
(254, 256, 0, 0, 0, 0, 'HTSO-063', 'Stanley', '88-796', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1203', 0, 0, 0, '', '', '', '', 0),
(255, 257, 0, 0, 0, 0, 'HTSO-064', 'Proto', '5424M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1204', 0, 0, 0, '', '', '', '', 0),
(256, 258, 0, 0, 0, 0, 'HTSO-065', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1205', 0, 0, 0, '', '', '', '', 0),
(257, 259, 0, 0, 0, 0, 'HTSO-066', 'Stanley', '88-797', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1206', 0, 0, 0, '', '', '', '', 0),
(258, 260, 0, 0, 0, 0, 'HTSO-067', 'Stanley', '88-797', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1207', 0, 0, 0, '', '', '', '', 0),
(259, 261, 0, 0, 0, 0, 'HTSO-068', 'Stanley', '88-797', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1208', 0, 0, 0, '', '', '', '', 0),
(260, 262, 0, 0, 0, 0, 'HTSO-069', 'Stanley', '88-797', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1209', 0, 0, 0, '', '', '', '', 0),
(261, 263, 0, 0, 0, 0, 'HTSO-070', 'Stanley', '88-797', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1210', 0, 0, 0, '', '', '', '', 0),
(262, 264, 0, 0, 0, 0, 'HTSO-071', 'Stanley', '88-797', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1211', 0, 0, 0, '', '', '', '', 0),
(263, 265, 0, 0, 0, 0, 'HTSO-072', 'Stanley', '88-798', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1212', 0, 0, 0, '', '', '', '', 0),
(264, 267, 0, 0, 0, 0, 'HTSO-073', 'Stanley', '88-798', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1213', 0, 0, 0, '', '', '', '', 0),
(265, 268, 0, 0, 0, 0, 'HTSO-074', 'Stanley', '88-798', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1214', 0, 0, 0, '', '', '', '', 0),
(266, 269, 0, 0, 0, 0, 'HTSO-075', 'Stanley', '88-798', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1215', 0, 0, 0, '', '', '', '', 0),
(267, 270, 0, 0, 0, 0, 'HTSO-076', 'Stanley', '88-799', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1216', 0, 0, 0, '', '', '', '', 0),
(268, 271, 0, 0, 0, 0, 'HTSO-077', 'Stanley', '88-799', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1217', 0, 0, 0, '', '', '', '', 0),
(269, 272, 0, 0, 0, 0, 'HTSO-078', 'Stanley', '88-799', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1218', 0, 0, 0, '', '', '', '', 0),
(270, 273, 0, 0, 0, 0, 'HTSO-079', 'Stanley', '88-799', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1219', 0, 0, 0, '', '', '', '', 0),
(271, 274, 0, 0, 0, 0, 'HTSO-080', 'Stanley', '88-799', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1220', 0, 0, 0, '', '', '', '', 0),
(272, 275, 0, 0, 0, 0, 'HTSO-081', 'Proto', '5427M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1221', 0, 0, 0, '', '', '', '', 0),
(273, 276, 0, 0, 0, 0, 'HTSO-082', 'Proto', '5427M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1222', 0, 0, 0, '', '', '', '', 0),
(274, 277, 0, 0, 0, 0, 'HTSO-083', 'Koken', '4405M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1223', 0, 0, 0, '', '', '', '', 0),
(275, 278, 0, 0, 0, 0, 'HTSO-084', 'Proto', '5430M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1224', 0, 0, 0, '', '', '', '', 0),
(276, 279, 0, 0, 0, 0, 'HTSO-085', 'Proto', '5430M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1225', 0, 0, 0, '', '', '', '', 0),
(277, 280, 0, 0, 0, 0, 'HTSO-086', 'Proto', '5430M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1226', 0, 0, 0, '', '', '', '', 0),
(278, 281, 0, 0, 0, 0, 'HTSO-087', 'Stanley', '88-802', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1227', 0, 0, 0, '', '', '', '', 0),
(279, 282, 0, 0, 0, 0, 'HTSO-088', 'Stanley', '88-802', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1228', 0, 0, 0, '', '', '', '', 0),
(280, 283, 0, 0, 0, 0, 'HTSO-089', 'Stanley', '88-803', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1229', 0, 0, 0, '', '', '', '', 0),
(281, 284, 0, 0, 0, 0, 'HTSO-090', 'Stanley', '88-803', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1230', 0, 0, 0, '', '', '', '', 0),
(282, 285, 0, 0, 0, 0, 'HTSO-091', 'Stanley', '88-803', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1231', 0, 0, 0, '', '', '', '', 0),
(283, 286, 0, 0, 0, 0, 'HTSO-092', 'Stanley', '88-803', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1232', 0, 0, 0, '', '', '', '', 0),
(284, 287, 0, 0, 0, 0, 'HTSO-093', 'Stanley', '88-803', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1233', 0, 0, 0, '', '', '', '', 0),
(285, 288, 0, 0, 0, 0, 'HTSO-094', 'Proto', '5436M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1234', 0, 0, 0, '', '', '', '', 0),
(286, 289, 0, 0, 0, 0, 'HTSO-095', 'Proto', '5436M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1235', 0, 0, 0, '', '', '', '', 0),
(287, 290, 0, 0, 0, 0, 'HTSO-096', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1236', 0, 0, 0, '', '', '', '', 0),
(288, 291, 0, 0, 0, 0, 'HTSO-097', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1237', 0, 0, 0, '', '', '', '', 0),
(289, 292, 0, 0, 0, 0, 'HTSO-098', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1238', 0, 0, 0, '', '', '', '', 0),
(290, 293, 0, 0, 0, 0, 'HTSO-099', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1239', 0, 0, 0, '', '', '', '', 0),
(291, 294, 0, 0, 0, 0, 'HTSO-100', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1240', 0, 0, 0, '', '', '', '', 0),
(292, 295, 0, 0, 0, 0, 'HTSO-101', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1241', 0, 0, 0, '', '', '', '', 0),
(293, 296, 0, 0, 0, 0, 'HTSO-102', 'Koken', '6405', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1242', 0, 0, 0, '', '', '', '', 0),
(294, 297, 0, 0, 0, 0, 'HTSO-103', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1243', 0, 0, 0, '', '', '', '', 0),
(295, 298, 0, 0, 0, 0, 'HTSO-104', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1244', 0, 0, 0, '', '', '', '', 0),
(296, 299, 0, 0, 0, 0, 'HTSO-105', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1245', 0, 0, 0, '', '', '', '', 0),
(297, 300, 0, 0, 0, 0, 'HTSO-106', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1246', 0, 0, 0, '', '', '', '', 0),
(298, 301, 0, 0, 0, 0, 'HTSO-107', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1247', 0, 0, 0, '', '', '', '', 0),
(299, 302, 0, 0, 0, 0, 'HTSO-108', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1248', 0, 0, 0, '', '', '', '', 0),
(300, 303, 0, 0, 0, 0, 'HTSO-109', 'Proto', '5527M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1249', 0, 0, 0, '', '', '', '', 0),
(301, 304, 0, 0, 0, 0, 'HTSO-110', 'Proto', '5527M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1250', 0, 0, 0, '', '', '', '', 0),
(302, 305, 0, 0, 0, 0, 'HTSO-111', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1251', 0, 0, 0, '', '', '', '', 0),
(303, 306, 0, 0, 0, 0, 'HTSO-112', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1252', 0, 0, 0, '', '', '', '', 0),
(304, 307, 0, 0, 0, 0, 'HTSO-113', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1253', 0, 0, 0, '', '', '', '', 0),
(305, 308, 0, 0, 0, 0, 'HTSO-114', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1254', 0, 0, 0, '', '', '', '', 0),
(306, 309, 0, 0, 0, 0, 'HTSO-115', 'Koken', '6405M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1255', 0, 0, 0, '', '', '', '', 0),
(307, 310, 0, 0, 0, 0, 'HTSO-116', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1256', 0, 0, 0, '', '', '', '', 0),
(308, 311, 0, 0, 0, 0, 'HTSO-117', 'Toptul', '2446', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1257', 0, 0, 0, '', '', '', '', 0),
(309, 312, 0, 0, 0, 0, 'HTSO-118', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1258', 0, 0, 0, '', '', '', '', 0),
(310, 313, 0, 0, 0, 0, 'HTSO-119', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1259', 0, 0, 0, '', '', '', '', 0),
(311, 314, 0, 0, 0, 0, 'HTSO-120', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1260', 0, 0, 0, '', '', '', '', 0),
(312, 315, 0, 0, 0, 0, 'HTSO-121', 'Hans', '6402', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1261', 0, 0, 0, '', '', '', '', 0),
(313, 316, 0, 0, 0, 0, 'HTSO-122', 'Koken ', '6405M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1262', 0, 0, 0, '', '', '', '', 0),
(314, 317, 0, 0, 0, 0, 'HTSO-123', 'Koken', '6405M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1263', 0, 0, 0, '', '', '', '', 0),
(315, 318, 0, 0, 0, 0, 'HTSO-124', 'Unior', '199', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1264', 0, 0, 0, '', '', '', '', 0),
(316, 319, 0, 0, 0, 0, 'HTSO-125', 'Unior', '199', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1265', 0, 0, 0, '', '', '', '', 0),
(317, 320, 0, 0, 0, 0, 'HTSO-126', 'Koken', '8405M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1266', 0, 0, 0, '', '', '', '', 0),
(318, 321, 0, 0, 0, 0, 'HTSO-127', 'Koken', '8405M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1267', 0, 0, 0, '', '', '', '', 0),
(319, 322, 0, 0, 0, 0, 'HTSO-128', 'Koken', '8405M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1268', 0, 0, 0, '', '', '', '', 0),
(320, 323, 0, 0, 0, 0, 'HTSO-129', 'Koken', '8405M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1269', 0, 0, 0, '', '', '', '', 0),
(321, 324, 0, 0, 0, 0, 'HTSO-130', 'Koken', '8405M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1270', 0, 0, 0, '', '', '', '', 0),
(322, 325, 0, 0, 0, 0, 'HTSO-131', 'Koken', '8405M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1271', 0, 0, 0, '', '', '', '', 0),
(323, 326, 0, 0, 0, 0, 'HTIS-001', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1272', 0, 0, 0, '', '', '', '', 0),
(324, 327, 0, 0, 0, 0, 'HTIS-002', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1273', 0, 0, 0, '', '', '', '', 0),
(325, 328, 0, 0, 0, 0, 'HTIS-003', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1274', 0, 0, 0, '', '', '', '', 0),
(326, 329, 0, 0, 0, 0, 'HTIS-004', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1275', 0, 0, 0, '', '', '', '', 0),
(327, 330, 0, 0, 0, 0, 'HTIS-005', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1276', 0, 0, 0, '', '', '', '', 0),
(328, 331, 0, 0, 0, 0, 'HTIS-006', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1277', 0, 0, 0, '', '', '', '', 0),
(329, 332, 0, 0, 0, 0, 'HTIS-007', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1278', 0, 0, 0, '', '', '', '', 0),
(330, 333, 0, 0, 0, 0, 'HTIS-008', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1279', 0, 0, 0, '', '', '', '', 0),
(331, 334, 0, 0, 0, 0, 'HTIS-009', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1280', 0, 0, 0, '', '', '', '', 0),
(332, 335, 0, 0, 0, 0, 'HTIS-010', 'Koken', '6406M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1281', 0, 0, 0, '', '', '', '', 0),
(333, 336, 0, 0, 0, 0, 'HTIS-011', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1282', 0, 0, 0, '', '', '', '', 0),
(334, 337, 0, 0, 0, 0, 'HTIS-012', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1283', 0, 0, 0, '', '', '', '', 0),
(335, 338, 0, 0, 0, 0, 'HTIS-013', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1284', 0, 0, 0, '', '', '', '', 0),
(336, 339, 0, 0, 0, 0, 'HTIS-014', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1285', 0, 0, 0, '', '', '', '', 0),
(337, 340, 0, 0, 0, 0, 'HTIS-015', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-POW-BS-1001', 0, 0, 0, '', '', '', '', 0),
(338, 341, 0, 0, 0, 0, 'HTIS-016', 'Hans', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1286', 0, 0, 0, '', '', '', '', 0),
(339, 342, 0, 0, 0, 0, 'HTIS-017', 'Hans', '86300', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1287', 0, 0, 0, '', '', '', '', 0),
(340, 343, 0, 0, 0, 0, 'HTIS-018', 'Hans', '86300', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1288', 0, 0, 0, '', '', '', '', 0),
(341, 344, 0, 0, 0, 0, 'HTIS-019', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1289', 0, 0, 0, '', '', '', '', 0),
(342, 345, 0, 0, 0, 0, 'HTIS-020', 'Unior', '233', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1290', 0, 0, 0, '', '', '', '', 0),
(343, 346, 0, 0, 0, 0, 'HTIS-021', 'Unior', '233', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1291', 0, 0, 0, '', '', '', '', 0),
(344, 347, 0, 0, 0, 0, 'HTIS-022', 'Unior', '233', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1292', 0, 0, 0, '', '', '', '', 0),
(345, 348, 0, 0, 0, 0, 'HTIS-023', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1293', 0, 0, 0, '', '', '', '', 0),
(346, 349, 0, 0, 0, 0, 'HTIS-024', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1294', 0, 0, 0, '', '', '', '', 0),
(347, 350, 0, 0, 0, 0, 'HTIS-025', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1295', 0, 0, 0, '', '', '', '', 0),
(348, 351, 0, 0, 0, 0, 'HTIS-026', 'Hans', '88400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1296', 0, 0, 0, '', '', '', '', 0),
(349, 352, 0, 0, 0, 0, 'HTIS-027', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1297', 0, 0, 0, '', '', '', '', 0);
INSERT INTO `et_details` (`ed_id`, `et_id`, `set_id`, `physical_id`, `rack_id`, `placement_id`, `serial_no`, `brand`, `model`, `type`, `unit_price`, `currency`, `currency_id`, `acquisition_date`, `date_issued`, `remarks`, `asset_control_no`, `damage`, `beyond_repair`, `borrowed`, `acquired_by`, `picture1`, `picture2`, `picture3`, `change_location`) VALUES
(350, 353, 0, 0, 0, 0, 'HTIS-028', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1298', 0, 0, 0, '', '', '', '', 0),
(351, 354, 4, 0, 0, 0, 'HTWCR-001', 'Lota', 'CR-MO', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1299', 0, 0, 0, '', '', '', '', 0),
(352, 355, 4, 0, 0, 0, 'HTWCR-002', 'Lota', 'CR-MO', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1300', 0, 0, 0, '', '', '', '', 0),
(353, 356, 4, 0, 0, 0, 'HTWCR-003', 'Lota', 'CR-MO', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1301', 0, 0, 0, '', '', '', '', 0),
(354, 357, 4, 0, 0, 0, 'HTWCR-004', 'Lota', 'CR-MO', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1302', 0, 0, 0, '', '', '', '', 0),
(355, 358, 4, 0, 0, 0, 'HTWCR-005', 'Lota', 'CR-MO', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1303', 0, 0, 0, '', '', '', '', 0),
(356, 359, 4, 0, 0, 0, 'HTWCR-006', 'Lota', 'CR-MO', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1304', 0, 0, 0, '', '', '', '', 0),
(357, 360, 4, 0, 0, 0, 'HTWCR-007', 'Lota', 'CR-MO', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1305', 0, 0, 0, '', '', '', '', 0),
(358, 361, 4, 0, 0, 0, 'HTWCR-008', 'Lota', 'CR-MO', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1306', 0, 0, 0, '', '', '', '', 0),
(359, 362, 4, 0, 0, 0, 'HTWCR-009', 'Lota', 'CR-MO', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1307', 0, 0, 0, '', '', '', '', 0),
(361, 363, 4, 0, 0, 0, 'HTWCR-010', 'Lota', 'CR-MO', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1308', 0, 0, 0, '', '', '', '', 0),
(362, 364, 4, 0, 0, 0, 'HTWCR-011', 'Lota', 'CR-MO', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1309', 0, 0, 0, '', '', '', '', 0),
(363, 365, 4, 0, 0, 0, 'HTWCR-012', 'Lota', 'CR-MO', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1310', 0, 0, 0, '', '', '', '', 0),
(364, 367, 4, 0, 0, 0, 'HTWCR-013', 'Lota', 'CR-MO', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1311', 0, 0, 0, '', '', '', '', 0),
(365, 368, 4, 0, 0, 0, 'HTWCR-014', 'Lota', 'CR-MO', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1312', 0, 0, 0, '', '', '', '', 0),
(366, 369, 4, 0, 0, 0, 'HTWCR-015', 'Lota', 'CR-MO', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1313', 0, 0, 0, '', '', '', '', 0),
(367, 370, 3, 0, 0, 0, 'HTPH-001', 'Hoyoma', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1314', 0, 0, 0, '', '', '', '', 0),
(368, 371, 3, 0, 0, 0, 'HTPH-002', 'Hoyoma', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1315', 0, 0, 0, '', '', '', '', 0),
(369, 372, 3, 0, 0, 0, 'HTPH-003', 'Hoyoma', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1316', 0, 0, 0, '', '', '', '', 0),
(370, 373, 3, 0, 0, 0, 'HTPH-004', 'Hoyoma', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1317', 0, 0, 0, '', '', '', '', 0),
(371, 374, 3, 0, 0, 0, 'HTPH-005', 'Hoyoma', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1318', 0, 0, 0, '', '', '', '', 0),
(372, 375, 3, 0, 0, 0, 'HTPH-006', 'Hoyoma', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1319', 0, 0, 0, '', '', '', '', 0),
(373, 376, 3, 0, 0, 0, 'HTPH-007', 'Hoyoma', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1320', 0, 0, 0, '', '', '', '', 0),
(375, 377, 3, 0, 0, 0, 'HTPH-008', 'Hoyoma', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1322', 0, 0, 0, '', '', '', '', 0),
(376, 378, 3, 0, 0, 0, 'HTPH-009', 'Hoyoma', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1323', 0, 0, 0, '', '', '', '', 0),
(377, 379, 3, 0, 0, 0, 'HTPH-010', 'Hoyoma', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1324', 0, 0, 0, '', '', '', '', 0),
(378, 380, 3, 0, 0, 0, 'HTPH-011', 'Hoyoma', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1325', 0, 0, 0, '', '', '', '', 0),
(379, 381, 3, 0, 0, 0, 'HTPH-012', 'Hoyoma', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1326', 0, 0, 0, '', '', '', '', 0),
(380, 382, 0, 0, 0, 0, 'HTWC-064', 'Indestro USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1327', 0, 0, 0, '', '', '', '', 0),
(381, 383, 0, 0, 0, 0, 'HTWC-065', 'Hoyoma Japan', '', 'Ratchet ', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1328', 0, 0, 0, '', '', '', '', 0),
(382, 384, 0, 0, 0, 0, 'HTWC-066', 'Hoyoma Japan', '', 'Ratchet ', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1329', 0, 0, 0, '', '', '', '', 0),
(383, 385, 0, 0, 0, 0, 'HTWC-067', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1330', 0, 0, 0, '', '', '', '', 0),
(384, 386, 0, 0, 0, 0, 'HTWC-068', 'Indestro USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1331', 0, 0, 0, '', '', '', '', 0),
(385, 387, 0, 0, 0, 0, 'HTTH-001', 'Magma', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1332', 0, 0, 0, '', '', '', '', 0),
(386, 388, 0, 0, 0, 0, 'HTTH-002', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1333', 0, 0, 0, '', 'HTTH-002-1.jpg', 'HTTH-002-2.jpg', '', 0),
(387, 389, 0, 0, 0, 0, 'HTTH-003', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1334', 0, 0, 0, '', '', '', '', 0),
(388, 390, 0, 0, 0, 0, 'HTTH-004', 'Light', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1335', 0, 0, 0, '', '', '', '', 0),
(389, 391, 0, 0, 0, 0, 'HTTH-005', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1336', 0, 0, 0, '', '', '', '', 0),
(390, 392, 0, 0, 0, 0, 'HTTH-006', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1337', 0, 0, 0, '', '', '', '', 0),
(391, 393, 0, 0, 0, 0, 'HTTH-007', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1338', 0, 0, 0, '', 'HTTH-007-1.jpg', 'HTTH-007-2.jpg', '', 0),
(392, 394, 0, 0, 0, 0, 'HTTH-008', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1339', 0, 0, 0, '', '', '', '', 0),
(393, 395, 0, 0, 0, 0, 'HTTH-009', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1340', 1, 0, 0, '', '', '', '', 0),
(394, 396, 0, 0, 0, 0, 'HTTH-010', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1341', 0, 0, 0, '', '', '', '', 0),
(395, 396, 0, 0, 0, 0, '', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1342', 0, 0, 0, '', '', '', '', 0),
(396, 397, 0, 0, 0, 0, 'HTTH-011', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1343', 0, 0, 0, '', '', '', '', 0),
(397, 398, 0, 0, 0, 0, 'HTTH-012', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1344', 0, 0, 0, '', '', '', '', 0),
(398, 399, 0, 0, 0, 0, 'HTTH-013', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1345', 0, 0, 0, '', '', '', '', 0),
(399, 400, 0, 0, 0, 0, 'HTTH-014', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1346', 0, 0, 0, '', '', '', '', 0),
(400, 401, 0, 0, 0, 0, 'HTTH-015', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1347', 0, 0, 0, '', '', '', '', 0),
(401, 402, 0, 0, 0, 0, 'HTTH-016', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1348', 0, 0, 0, '', 'HTTH-016-1.jpg', '', '', 0),
(402, 403, 0, 0, 0, 0, 'HTTH-017', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1349', 0, 0, 0, '', '', '', '', 0),
(403, 404, 0, 0, 0, 0, 'HTTH-018', 'Magna', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1350', 0, 0, 0, '', '', '', '', 0),
(404, 405, 0, 0, 0, 0, 'HTTH-019', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1351', 0, 0, 0, '', 'HTTH-019-1.jpg', '', '', 0),
(405, 406, 0, 0, 0, 0, 'HTTH-020', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1352', 0, 0, 0, '', '', '', '', 0),
(406, 407, 0, 0, 0, 0, 'HTTH-021', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1353', 0, 0, 0, '', '', '', '', 0),
(407, 408, 0, 0, 0, 0, 'HTTH-022', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1354', 0, 0, 0, '', '', '', '', 0),
(408, 409, 0, 0, 0, 0, 'HTTH-023', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1355', 0, 0, 0, '', '', '', '', 0),
(409, 410, 0, 0, 0, 0, 'HTTH-024', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1356', 0, 0, 0, '', '', '', '', 0),
(410, 411, 0, 0, 0, 0, 'HTTH-025', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1357', 0, 0, 0, '', '', '', '', 0),
(411, 412, 0, 0, 0, 0, 'HTTH-026', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1358', 0, 0, 0, '', '', '', '', 0),
(412, 413, 0, 0, 0, 0, 'HTTH-027', 'Drexel', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1359', 0, 0, 0, '', '', '', '', 0),
(413, 414, 0, 0, 0, 0, 'HTTH-028', 'Regal', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1360', 0, 0, 0, '', '', '', '', 0),
(414, 415, 0, 0, 0, 0, 'HTTH-029', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1361', 0, 0, 0, '', '', '', '', 0),
(415, 416, 0, 0, 0, 0, 'HTTH-030', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1362', 0, 0, 0, '', '', '', '', 0),
(416, 417, 0, 0, 0, 0, 'HTTH-031', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1363', 0, 0, 0, '', '', '', '', 0),
(417, 418, 0, 0, 0, 0, 'HTTH-032', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1364', 0, 0, 0, '', '', '', '', 0),
(418, 419, 0, 0, 0, 0, 'HTTH-033', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1365', 0, 0, 0, '', '', '', '', 0),
(419, 420, 0, 0, 0, 0, 'HTTH-034', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1366', 0, 0, 0, '', '', '', '', 0),
(420, 421, 0, 0, 0, 0, 'HTTH-035', 'Super', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1367', 0, 0, 0, '', '', '', '', 0),
(421, 422, 0, 0, 0, 0, 'HTTH-036', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1368', 0, 0, 0, '', '', '', '', 0),
(422, 423, 0, 0, 0, 0, 'HTTH-037', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1369', 0, 0, 0, '', '', '', '', 0),
(423, 424, 0, 0, 0, 0, 'HTTH-038', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1370', 0, 0, 0, '', '', '', '', 0),
(424, 425, 0, 0, 0, 0, 'HTTH-039', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1371', 0, 0, 0, '', '', '', '', 0),
(425, 426, 0, 0, 0, 0, 'HTTH-040', 'Japan', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1372', 0, 0, 0, '', '', '', '', 0),
(426, 427, 0, 0, 0, 0, 'HTTH-041', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1373', 0, 0, 0, '', '', '', '', 0),
(428, 428, 0, 0, 0, 0, 'HTTH-042', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1375', 0, 0, 0, '', '', '', '', 0),
(429, 429, 0, 0, 0, 0, 'HTTH-043', 'Super', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1376', 0, 0, 0, '', '', '', '', 0),
(430, 430, 0, 0, 0, 0, 'HTTH-044', 'Super', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1377', 0, 0, 0, '', '', '', '', 0),
(431, 431, 0, 0, 0, 0, 'HTTH-045', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1378', 0, 0, 0, '', '', '', '', 0),
(433, 432, 0, 0, 0, 0, 'HTTH-046', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1380', 0, 0, 0, '', '', '', '', 0),
(434, 433, 0, 0, 0, 0, 'HTTH-047', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1381', 0, 0, 0, '', '', '', '', 0),
(435, 434, 0, 0, 0, 0, 'HTTH-048', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1382', 0, 0, 0, '', '', '', '', 0),
(436, 435, 0, 0, 0, 0, 'HTTP-001', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1383', 0, 0, 0, '', '', '', '', 0),
(437, 436, 0, 0, 0, 0, 'HTTP-002', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1384', 0, 0, 0, '', '', '', '', 0),
(438, 437, 0, 0, 0, 0, 'HTTP-003', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1385', 0, 0, 0, '', '', '', '', 0),
(439, 438, 0, 0, 0, 0, 'HTTP-004', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1386', 0, 0, 0, '', '', '', '', 0),
(440, 439, 0, 0, 0, 0, 'HTTP-005', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1387', 0, 0, 0, '', '', '', '', 0),
(441, 440, 0, 0, 0, 0, 'HTTP-006', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1388', 0, 0, 0, '', '', '', '', 0),
(442, 441, 0, 0, 0, 0, 'HTTP-007', 'Light', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1389', 0, 0, 0, '', '', '', '', 0),
(443, 442, 0, 0, 0, 0, 'HTTP-008', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1390', 0, 0, 0, '', '', '', '', 0),
(444, 443, 0, 0, 0, 0, 'HTTP-009', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1391', 0, 0, 0, '', '', '', '', 0),
(445, 444, 0, 0, 0, 0, 'HTTP-010', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1392', 0, 0, 0, '', '', '', '', 0),
(446, 445, 0, 0, 0, 0, 'HTTP-011', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1393', 0, 0, 0, '', '', '', '', 0),
(447, 446, 0, 0, 0, 0, 'HTTP-012', 'SKC', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1394', 0, 0, 0, '', '', '', '', 0),
(448, 447, 0, 0, 0, 0, 'HTEB-001', 'USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1395', 0, 0, 0, '', '', '', '', 0),
(449, 448, 0, 0, 0, 0, 'HTEB-002', 'USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1396', 0, 0, 0, '', '', '', '', 0),
(450, 449, 0, 0, 0, 0, 'HTEB-003', 'USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1397', 0, 0, 0, '', '', '', '', 0),
(451, 450, 0, 0, 0, 0, 'HTEB-004', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1398', 0, 0, 0, '', '', '', '', 0),
(452, 451, 0, 0, 0, 0, 'HTEB-005', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1399', 0, 0, 0, '', '', '', '', 0),
(453, 452, 0, 0, 0, 0, 'HTEB-006', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1400', 0, 0, 0, '', '', '', '', 0),
(454, 453, 0, 0, 0, 0, 'HTEB-007', 'Australia', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1401', 0, 0, 0, '', '', '', '', 0),
(455, 454, 0, 0, 0, 0, 'HTWC-069', 'Greenfield', '', '', '0.00', '', 0, '', '', 'Converted to Special Tool.', 'TOO-HAN-BS-1402', 0, 0, 0, 'CENPRI', '', '', '', 0),
(456, 455, 0, 0, 0, 0, 'HTWC-070', 'Stanley', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1403', 0, 0, 0, '', '', '', '', 0),
(457, 457, 0, 0, 0, 0, 'HTSA-001', 'Ameriman', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1404', 0, 0, 0, '', '', '', '', 0),
(458, 458, 0, 0, 0, 0, 'HTSA-002', 'Proto', '5441-6M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1405', 0, 0, 0, '', '', '', '', 0),
(459, 459, 0, 0, 0, 0, 'HTSA-003', 'Proto', '5441-12M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1406', 0, 0, 0, '', '', '', '', 0),
(460, 460, 0, 0, 0, 0, 'HTSA-004', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1407', 0, 0, 0, '', '', '', '', 0),
(461, 461, 0, 0, 0, 0, 'HTSA-005', 'Tone', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1408', 0, 0, 0, '', '', '', '', 0),
(463, 462, 0, 0, 0, 0, 'HTSA-006', 'Proto', '5441-13M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1409', 0, 0, 0, '', '', '', '', 0),
(464, 463, 0, 0, 0, 0, 'HTSA-007', 'Proto', '5441-14M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1410', 0, 0, 0, '', '', '', '', 0),
(465, 464, 0, 0, 0, 0, 'HTSA-008', 'Proto', '5441-14M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1411', 0, 0, 0, '', '', '', '', 0),
(466, 465, 0, 0, 0, 0, 'HTSA-009', 'Tone', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1412', 0, 0, 0, '', '', '', '', 0),
(467, 466, 0, 0, 0, 0, 'HTSA-010', 'Belzer', '7809M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1413', 0, 0, 0, '', '', '', '', 0),
(468, 467, 0, 0, 0, 0, 'HTSA-011', 'Proto', '5441-15M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1414', 0, 0, 0, '', '', '', '', 0),
(469, 468, 0, 0, 0, 0, 'HTSA-012', 'Proto', '5441-17M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1415', 0, 0, 0, '', '', '', '', 0),
(470, 469, 0, 0, 0, 0, 'HTSA-013', 'Proto', '5441-18M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1416', 0, 0, 0, '', '', '', '', 0),
(471, 470, 0, 0, 0, 0, 'HTSA-014', 'Proto', '5441-19M', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1417', 0, 0, 0, '', '', '', '', 0),
(472, 471, 0, 0, 0, 0, 'HTDB-001', '', '', 'Long Series', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1418', 0, 0, 0, '', '', '', '', 0),
(473, 472, 0, 0, 0, 0, 'HTDB-002', '', '', 'Long Series', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1419', 0, 0, 0, '', '', '', '', 0),
(474, 473, 0, 0, 0, 0, 'HTDB-003', '', '', 'Long Series', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1420', 0, 0, 0, '', '', '', '', 0),
(475, 474, 0, 0, 0, 0, 'HTDB-004', '', '', 'Long Series', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1421', 0, 0, 0, '', '', '', '', 0),
(476, 475, 0, 0, 0, 0, 'HTDB-005', '', '', 'Long Series', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1422', 0, 0, 0, '', '', '', '', 0),
(477, 476, 0, 0, 0, 0, 'HTDB-006', '', '', 'Long Series', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1423', 0, 0, 0, '', '', '', '', 0),
(478, 477, 0, 0, 0, 0, 'HTDB-007', '', '', 'Long Series', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1424', 0, 0, 0, '', '', '', '', 0),
(479, 478, 0, 0, 0, 0, 'HTDB-008', '', '', 'Long Series', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1425', 0, 0, 0, '', '', '', '', 0),
(482, 479, 0, 0, 0, 0, 'HTDB-009', '', '', 'Long Series', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1426', 0, 0, 0, '', '', '', '', 0),
(483, 480, 0, 0, 0, 0, 'HTDB-010', '', '', 'Long Series', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1427', 0, 0, 0, '', '', '', '', 0),
(484, 481, 0, 0, 0, 0, 'HTDB-011', '', '', 'Long Series', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1428', 0, 0, 0, '', '', '', '', 0),
(485, 482, 0, 0, 0, 0, 'HTDB-012', '', '', 'Long Series', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1429', 0, 0, 0, '', '', '', '', 0),
(486, 483, 0, 0, 0, 0, 'HTDB-013', '', '', 'Long Series', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1430', 0, 0, 0, '', '', '', '', 0),
(487, 484, 0, 0, 0, 0, 'HTDB-014', 'Dormer', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1431', 0, 0, 0, '', '', '', '', 0),
(488, 485, 0, 0, 0, 0, 'HTDB-015', 'Dormer', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1432', 0, 0, 0, '', '', '', '', 0),
(489, 486, 0, 0, 0, 0, 'HTDB-016', 'Dormer', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1433', 0, 0, 0, '', '', '', '', 0),
(490, 487, 0, 0, 0, 0, 'HTDB-017', 'Dormer', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1434', 0, 0, 0, '', '', '', '', 0),
(493, 488, 0, 0, 0, 0, 'HTDB-018', 'Dormer', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1437', 0, 0, 0, '', '', '', '', 0),
(494, 489, 0, 0, 0, 0, 'HTDB-019', 'Dormer', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1438', 0, 0, 0, '', '', '', '', 0),
(496, 490, 0, 0, 0, 0, 'HTHD-001', 'USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1439', 0, 0, 0, '', '', '', '', 0),
(497, 491, 0, 0, 0, 0, 'HTHD-002', 'USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1440', 0, 0, 0, '', '', '', '', 0),
(498, 492, 0, 0, 0, 0, 'HTHD-003', 'USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1441', 0, 0, 0, '', '', '', '', 0),
(499, 493, 0, 0, 0, 0, 'HTHD-004', 'USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1442', 0, 0, 0, '', '', '', '', 0),
(500, 494, 0, 0, 0, 0, 'HTHD-005', 'USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1443', 0, 0, 0, '', '', '', '', 0),
(501, 495, 0, 0, 0, 0, 'HTHD-006', 'USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1444', 0, 0, 0, '', '', '', '', 0),
(502, 496, 0, 0, 0, 0, 'HTHD-007', 'USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1445', 0, 0, 0, '', '', '', '', 0),
(503, 497, 0, 0, 0, 0, 'HTEB-001', 'Hans', '4800-05', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1446', 0, 0, 0, '', '', '', '', 0),
(504, 497, 0, 0, 0, 0, 'HTEB-002', 'Hans', '4800-05', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1447', 0, 0, 0, '', '', '', '', 0),
(505, 498, 0, 0, 0, 0, 'HTEB-003', 'Stanley', '86-407', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1448', 0, 0, 0, '', '', '', '', 0),
(506, 498, 0, 0, 0, 0, 'HTEB-004', 'Stanley', '86-407', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1449', 0, 0, 0, '', '', '', '', 0),
(507, 498, 0, 0, 0, 0, 'HTEB-005', 'Stanley', '86-407', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1450', 0, 0, 0, '', '', '', '', 0),
(508, 498, 0, 0, 0, 0, 'HTEB-006', 'Stanley', '86-407', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1451', 0, 0, 0, '', '', '', '', 0),
(509, 499, 0, 0, 0, 0, 'HTEB-007', 'Stanley', '86-408', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1452', 0, 0, 0, '', '', '', '', 0),
(510, 499, 0, 0, 0, 0, 'HTEB-008', 'Stanley', '86-408', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1453', 0, 0, 0, '', '', '', '', 0),
(511, 499, 0, 0, 0, 0, 'HTEB-009', 'Stanley', '86-408', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1454', 0, 0, 0, '', '', '', '', 0),
(512, 500, 0, 0, 0, 0, 'HTEB-010', 'Hans', '4800-10', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1455', 0, 0, 0, '', '', '', '', 0),
(513, 501, 0, 0, 0, 0, 'HTEB-011', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1456', 0, 0, 0, '', '', '', '', 0),
(514, 502, 0, 0, 0, 0, 'HTEB-012', 'Hans', '6800-4', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1457', 0, 0, 0, '', '', '', '', 0),
(515, 502, 0, 0, 0, 0, 'HTEB-013', 'Hans', '6800-4', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1458', 0, 0, 0, '', '', '', '', 0),
(516, 503, 0, 0, 0, 0, 'HTEB-014', 'Stanley', '89-306', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1459', 0, 0, 0, '', '', '', '', 0),
(517, 503, 0, 0, 0, 0, 'HTEB-015', 'Stanley', '89-306', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1460', 0, 0, 0, '', '', '', '', 0),
(518, 504, 0, 0, 0, 0, 'HTEB-016', 'Hans', '6800-8', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1461', 0, 0, 0, '', '', '', '', 0),
(519, 504, 0, 0, 0, 0, 'HTEB-017', 'Hans', '6800-8', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1462', 0, 0, 0, '', '', '', '', 0),
(520, 504, 0, 0, 0, 0, 'HTEB-018', 'Hans', '6800-8', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1463', 0, 0, 0, '', '', '', '', 0),
(521, 505, 0, 0, 0, 0, 'HTEB-019', 'Hans', '8800-16', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1464', 0, 0, 0, '', '', '', '', 0),
(522, 505, 0, 0, 0, 0, 'HTEB-020', 'Hans', '8800-16', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1465', 0, 0, 0, '', '', '', '', 0),
(523, 506, 0, 0, 0, 0, 'HTPH-001', 'Hans', '4700P-15', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1466', 1, 0, 0, '', '', '', '', 0),
(524, 507, 0, 0, 0, 0, 'HTPH-002', 'Bernman', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1467', 0, 0, 0, '', '', '', '', 0),
(525, 508, 0, 0, 0, 0, 'HTPH-003', 'Hans', '8700N', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1468', 0, 0, 0, '', '', '', '', 0),
(526, 509, 0, 0, 0, 0, 'HTRH-001', 'Hans', '6120NO', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1469', 0, 0, 0, '', '', '', '', 0),
(527, 510, 0, 0, 0, 0, 'HTRH-002', 'Tone', '471', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1470', 0, 0, 0, '', '', '', '', 0),
(528, 511, 0, 0, 0, 0, 'HTRH-003', 'Genius', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1471', 0, 0, 0, '', '', '', '', 0),
(529, 511, 0, 0, 0, 0, 'HTRH-004', 'Genius', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1472', 0, 0, 0, '', '', '', '', 0),
(530, 512, 0, 0, 0, 0, 'HTSTH-001', 'Proto', '5685', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1473', 0, 0, 0, '', '', '', '', 0),
(531, 512, 0, 0, 0, 0, 'HTSTH-002', 'Proto', '5685', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1474', 0, 0, 0, '', '', '', '', 0),
(532, 513, 0, 0, 0, 0, 'HTUJ-001', 'Hans', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1475', 0, 0, 0, '', '', '', '', 0),
(533, 514, 0, 0, 0, 0, 'HTUS-002', 'Stanley', '86-411', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1476', 0, 0, 0, '', '', '', '', 0),
(534, 514, 0, 0, 0, 0, 'HTUS-003', 'Stanley', '86-411', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1477', 0, 0, 0, '', '', '', '', 0),
(535, 515, 0, 0, 0, 0, 'HTUJ-004', 'Hans', '4200', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1478', 0, 0, 0, '', '', '', '', 0),
(536, 516, 0, 0, 0, 0, 'HTUJ-005', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1479', 0, 0, 0, '', '', '', '', 0),
(537, 517, 0, 0, 0, 0, 'HTUJ-006', 'Koken', '8770', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1480', 0, 0, 0, '', '', '', '', 0),
(538, 518, 0, 0, 0, 0, 'HTJR-001', 'Proto', '5853', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1481', 0, 0, 0, '', '', '', '', 0),
(539, 519, 0, 0, 0, 0, 'HTSAV-001', 'Stanley Fatmax', '14563', '', '0.00', '', 0, '', '', 'Previous Custodian: Sir William Soltes', 'TOO-HAN-BS-1482', 0, 0, 0, 'CENPRI', '', '', '', 0),
(540, 519, 0, 0, 0, 0, 'HTSAV-002', 'Stanley Fatmax', '14563', '', '0.00', '', 0, '', '', 'Previous Custodian: Sir William Soltes', 'TOO-HAN-BS-1483', 0, 0, 0, 'CENPRI', '', '', '', 0),
(541, 520, 0, 0, 0, 0, 'HTSAV-003', 'Kerwin', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1484', 0, 0, 0, '', '', '', '', 0),
(542, 521, 0, 1, 0, 0, 'HTALP-001', 'Irwin Mason', '', 'Duct Type ', '495.00', '', 1, '2019-07-03', '2019-07-04', '', 'TOO-HAN-BS-1485', 0, 0, 0, 'CENPRI', '', '', '', 0),
(543, 521, 0, 1, 0, 0, 'HTALP-002', 'Irwin Mason', '', 'Duct Type', '495.00', '', 1, '2019-07-03', '2019-07-04', '', 'TOO-HAN-BS-1486', 0, 0, 0, 'CENPRI', '', '', '', 0),
(544, 522, 0, 4, 0, 0, 'HTSTN-001', 'Creston', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1487', 0, 0, 0, 'CENPRI', '', '', '', 0),
(545, 523, 0, 0, 0, 0, 'HTSTN-002', 'Creston', '', '', '0.00', '', 0, '', '', 'Previous Custodian: Sir William Soltes', 'TOO-HAN-BS-1488', 0, 0, 0, 'CENPRI', '', '', '', 0),
(546, 524, 0, 0, 0, 0, 'HTTB-001', 'Ridgid', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1489', 0, 0, 0, '', '', '', '', 0),
(547, 525, 0, 0, 0, 0, 'HTTB-002', 'Ridgid', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1490', 0, 0, 0, '', '', '', '', 0),
(548, 526, 0, 1, 0, 0, 'HTSFD-001', 'Standard', '', '', '0.00', '', 0, '', '', 'Previous Custodian: Nonito Pocong', 'TOO-HAN-BS-1491', 0, 0, 0, 'CENPRI', '', '', '', 0),
(549, 527, 0, 1, 0, 0, 'HTSFD-002', 'Chrome', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1492', 0, 0, 0, 'CENPRI', '', '', '', 0),
(550, 529, 0, 1, 0, 0, 'HTASFD-001', 'Stanley', '', '', '265.00', '', 1, '2018-10-23', '2018-11-23', '', 'TOO-HAN-BS-1493', 0, 0, 0, 'CENPRI', '', '', '', 0),
(551, 530, 0, 1, 0, 0, 'HTASFD-002', 'Stanley', '', '', '265.00', '', 1, '2018-10-23', '2018-11-23', '', 'TOO-HAN-BS-1494', 0, 0, 0, 'CENPRI', '', '', '', 0),
(552, 531, 0, 1, 0, 0, 'HTASFD-003', 'Stanley', '', '', '265.00', '', 1, '2018-10-23', '2018-11-23', '', 'TOO-HAN-BS-1495', 0, 0, 0, 'CENPRI', '', '', '', 0),
(553, 528, 0, 1, 0, 0, 'HTASFD-004', 'Stanley', '', '', '265.00', '', 1, '2018-10-23', '2018-11-23', '', 'TOO-HAN-BS-1496', 0, 0, 0, 'CENPRI', '', '', '', 0),
(554, 532, 0, 1, 0, 0, 'HTASFD-005', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1497', 0, 0, 0, 'CENPRI', '', '', '', 0),
(555, 533, 0, 0, 0, 0, 'HTSPD-001', 'Standard', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1498', 0, 0, 0, '', '', '', '', 0),
(556, 535, 0, 1, 0, 0, 'HTASPD-001', 'Stanley', '', '', '310.00', '', 1, '2018-10-23', '2018-11-23', '', 'TOO-HAN-BS-1499', 0, 0, 0, 'CENPRI', '', '', '', 0),
(557, 536, 0, 1, 0, 0, 'HTASPD-002', 'Stanley', '', '', '310.00', '', 1, '2018-10-23', '2018-11-23', '', 'TOO-HAN-BS-1500', 0, 0, 0, '', '', '', '', 0),
(558, 537, 0, 1, 0, 0, 'HTASPD-003', 'Stanley', '', '', '310.00', '', 1, '2018-10-23', '2018-11-23', '', 'TOO-HAN-BS-1501', 0, 0, 0, 'CENPRI', '', '', '', 0),
(559, 534, 0, 1, 0, 0, 'HTASPD-004', 'Stanley', '', '', '310.00', '', 1, '2018-10-23', '2018-11-23', '', 'TOO-HAN-BS-1502', 0, 0, 0, 'CENPRI', '', '', '', 0),
(560, 538, 0, 1, 0, 0, 'HTASPD-005', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1503', 0, 0, 0, 'CENPRI', '', '', '', 0),
(561, 540, 0, 0, 0, 0, 'HTASID-001', 'Stanley', '', '', '540.00', '', 1, '2018-11-23', '2018-11-23', '', 'TOO-HAN-BS-1504', 0, 0, 0, '', '', '', '', 0),
(562, 541, 0, 1, 0, 0, 'HTASID-002', 'Stanley', '', '', '540.00', '', 1, '2018-11-23', '2019-07-19', '', 'TOO-HAN-BS-1505', 0, 0, 0, 'CENPRI', '', '', '', 0),
(563, 542, 0, 1, 0, 0, 'HTASID-003', 'Stanley', '', '', '540.00', '', 1, '2018-11-23', '2018-11-23', '', 'TOO-HAN-BS-1506', 0, 0, 0, 'CENPRI', '', '', '', 0),
(564, 543, 0, 1, 0, 0, 'HTASID-004', 'Stanley', '', '', '540.00', '', 1, '2018-11-23', '2018-11-23', '', 'TOO-HAN-BS-1507', 0, 0, 0, 'CENPRI', '', '', '', 0),
(565, 544, 0, 1, 0, 0, 'HTASID-005', 'Stanley', '', '', '540.00', '', 1, '2018-11-23', '2018-11-23', '', 'TOO-HAN-BS-1508', 0, 0, 0, 'CENPRI', '', '', '', 0),
(566, 539, 0, 1, 0, 0, 'HTASID-006', 'Stanley', '', '', '540.00', '', 1, '2018-11-23', '2018-11-23', '', 'TOO-HAN-BS-1509', 0, 0, 0, 'CENPRI', '', '', '', 0),
(567, 548, 0, 1, 0, 0, 'HTAPIL-001', 'Stanley', '', '', '320.00', '', 1, '2018-10-23', '2018-11-23', '', 'TOO-HAN-BS-1510', 0, 0, 0, 'CENPRI', '', '', '', 0),
(568, 545, 0, 1, 0, 0, 'HTAPIL-002', 'Stanley', '', '', '320.00', '', 1, '2018-10-23', '2018-11-23', '', 'TOO-HAN-BS-1511', 0, 0, 0, 'CENPRI', '', '', '', 0),
(569, 545, 0, 1, 0, 0, 'HTAPIL-003', 'Stanley', '', '', '320.00', '', 1, '2018-10-23', '2018-11-23', '', 'TOO-HAN-BS-1512', 0, 0, 0, 'CENPRI', '', '', '', 0),
(570, 545, 0, 1, 0, 0, 'HTAPIL-004', 'Stanley', '', '', '320.00', '', 1, '2018-10-23', '2018-11-23', '', 'TOO-HAN-BS-1513', 0, 0, 0, 'CENPRI', '', '', '', 0),
(571, 550, 0, 0, 0, 0, 'HTAPILN-001', 'Stanley', '', '', '330.00', '', 1, '2018-11-10', '2018-11-23', '', 'TOO-HAN-BS-1514', 0, 0, 0, '', '', '', '', 0),
(572, 551, 0, 0, 0, 0, 'HTAPILN-002', 'Stanley', '', '', '330.00', '', 1, '2018-11-10', '2018-11-23', '', 'TOO-HAN-BS-1515', 0, 0, 0, '', '', '', '', 0),
(573, 552, 0, 1, 0, 0, 'HTAPILN-003', 'Stanley', '', '', '330.00', '', 1, '2018-11-10', '2018-11-23', '', 'TOO-HAN-BS-1516', 0, 0, 0, 'CENPRI', '', '', '', 0),
(574, 549, 0, 1, 0, 0, 'HTAPILN-004', 'Stanley', '', '', '330.00', '', 1, '2018-11-10', '2018-11-23', '', 'TOO-HAN-BS-1517', 0, 0, 0, 'CENPRI', '', '', '', 0),
(575, 553, 0, 1, 0, 0, 'HTPM-001', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1518', 0, 0, 0, 'CENPRI', '', '', '', 0),
(576, 554, 0, 0, 0, 0, 'HTPM-002', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1519', 0, 0, 0, '', '', '', '', 0),
(577, 555, 0, 0, 0, 0, 'HTAPC', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1520', 0, 0, 0, '', '', '', '', 0),
(578, 557, 0, 1, 0, 0, 'HTAPC-002', 'Stanley', '84-233', '', '240.00', '', 1, '2018-10-23', '2018-11-23', '', 'TOO-HAN-BS-1521', 0, 0, 0, 'CENPRI', '', '', '', 0),
(579, 556, 0, 1, 0, 0, 'HTAPC-003', 'Stanley', '84-233', '', '240.00', '', 1, '2018-10-23', '2018-11-23', '', 'TOO-HAN-BS-1522', 0, 0, 0, 'CENPRI', '', '', '', 0),
(580, 558, 0, 0, 0, 0, 'HTCW-001', 'Germany', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1523', 0, 0, 0, '', '', '', '', 0),
(581, 559, 0, 0, 0, 0, 'HTACW-002', 'Bosca', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1524', 0, 0, 0, '', '', '', '', 0),
(582, 560, 0, 0, 0, 0, 'HTACWS-001', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1525', 0, 0, 0, '', '', '', '', 0),
(583, 561, 0, 0, 0, 0, 'HTACWS-002', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1526', 0, 0, 0, '', '', '', '', 0),
(584, 562, 0, 0, 0, 0, 'HTASW-001', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1527', 0, 0, 0, '', '', '', '', 0),
(586, 563, 0, 0, 0, 0, 'HTGP-001', 'Creston', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1529', 0, 0, 0, '', '', '', '', 0),
(587, 564, 0, 0, 0, 0, 'HTGP-002', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1530', 0, 0, 0, '', '', '', '', 0),
(588, 565, 0, 0, 0, 0, ' HTASTM-001', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1531', 0, 0, 0, '', '', '', '', 0),
(589, 566, 0, 0, 0, 0, 'HTASTM-002', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1532', 0, 0, 0, '', '', '', '', 0),
(590, 567, 0, 0, 0, 0, 'HTARH-001', 'Stanley', '69-646', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1533', 0, 0, 0, '', '', '', '', 0),
(591, 567, 0, 0, 0, 0, 'HTARH-002', 'Stanley', '69-646', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1534', 0, 0, 0, '', '', '', '', 0),
(592, 567, 0, 0, 0, 0, 'HTARH-003', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1535', 0, 0, 0, '', '', '', '', 0),
(593, 568, 0, 4, 0, 0, 'HTCS-001', 'Stanley', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1536', 0, 0, 0, '', '', '', '', 0),
(594, 569, 0, 0, 0, 0, 'HTGG-001', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1537', 0, 0, 0, '', '', '', '', 0),
(595, 570, 0, 0, 0, 0, 'HTCT-001', '', '', '', '0.00', '', 0, '', '', '1 set - 12pcs', 'TOO-HAN-BS-1538', 0, 0, 0, '', '', '', '', 0),
(596, 571, 0, 1, 0, 0, 'HTAFHRF-001', 'Nicholson', '', '', '670.00', '', 1, '2019-07-03', '2019-07-04', '', 'TOO-HAN-BS-1539', 0, 0, 0, 'CENPRI', '', '', '', 0),
(597, 571, 0, 1, 0, 0, 'HTAFHRF-002', 'Nicholson', '', '', '670.00', '', 1, '2018-07-03', '2018-07-04', '', 'TOO-HAN-BS-1540', 0, 0, 0, 'CENPRI', '', '', '', 0),
(598, 571, 0, 1, 0, 0, 'HTAFHRF-003', 'Nicholson', '', '', '670.00', '', 1, '2018-07-03', '2018-07-04', '', 'TOO-HAN-BS-1541', 0, 0, 0, 'CENPRI', '', '', '', 0),
(599, 572, 0, 0, 0, 0, '035326R', 'Tohnichi', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1542', 0, 0, 0, '', '', '', '', 0),
(600, 573, 0, 0, 0, 0, '035318R', 'Tohnichi', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1543', 0, 0, 0, '', '', '', '', 0),
(601, 574, 0, 0, 0, 0, 'HTWTO-001', 'Torques', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1544', 0, 0, 0, '', '', '', '', 0),
(602, 575, 0, 0, 0, 0, 'HTWTO-002', 'Proto', '604B', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1545', 0, 0, 0, '', '', '', '', 0),
(603, 576, 0, 0, 0, 0, 'HTWTM-001', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1546', 0, 0, 0, '', '', '', '', 0),
(604, 577, 0, 0, 0, 0, 'HTWTM-002', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1547', 0, 0, 0, '', '', '', '', 0),
(605, 578, 0, 0, 0, 0, 'HTWTM-003', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1548', 0, 0, 0, '', '', '', '', 0),
(606, 579, 0, 0, 0, 0, 'HTAWSO-001', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1549', 0, 0, 0, '', '', '', '', 0),
(607, 580, 0, 0, 0, 0, 'HTAWSO-002', 'Stanley', '86-543', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1550', 0, 0, 0, '', '', '', '', 0),
(608, 581, 0, 0, 0, 0, 'HTAWSO-003', 'Stanley', '86-544', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1551', 0, 0, 0, '', '', '', '', 0),
(609, 582, 0, 0, 0, 0, 'HTAWSO-004', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1552', 0, 0, 0, '', '', '', '', 0),
(610, 583, 0, 0, 0, 0, 'HTAWSO-005', 'Stanley', '88-788', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1553', 0, 0, 0, '', '', '', '', 0),
(611, 584, 0, 0, 0, 0, 'HTAWSO-006', 'Hans', '4400', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1554', 0, 0, 0, '', '', '', '', 0),
(612, 585, 0, 1, 0, 0, 'HTAWB-001', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1555', 0, 0, 0, 'CENPRI', '', '', '', 0),
(613, 586, 0, 1, 0, 0, 'HTAWB-002', 'Blue Point', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1556', 0, 0, 0, 'CENPRI', '', '', '', 0),
(614, 587, 0, 0, 0, 0, 'HTWA-001', 'Stanley', '87-434', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1557', 0, 0, 0, '', '', '', '', 0),
(615, 588, 0, 0, 0, 0, 'HTWA-002', 'Crescent', '1907', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1558', 0, 0, 0, '', '', '', '', 0),
(616, 589, 0, 1, 0, 0, 'HTTH-049', 'SKC', '', '', '2950.00', '', 1, '2019-07-14', '', '', 'TOO-HAN-BS-1559', 0, 0, 0, 'CENPRI', '', '', '', 0),
(617, 590, 0, 1, 0, 0, 'HTTH-050', 'SKC', '', '', '2950.00', '', 1, '2019-07-14', '', '', 'TOO-HAN-BS-1560', 0, 0, 0, 'CENPRI', '', '', '', 0),
(618, 591, 0, 1, 0, 0, '', 'Rota Broach', '', '', '3840.00', '', 1, '2019-06-29', '', '', 'TOO-HAN-BS-1561', 0, 0, 0, 'CENPRI', '', '', '', 0),
(619, 591, 0, 1, 0, 0, '', 'Rota Broach', '', '', '3840.00', '', 1, '2019-06-29', '', '', 'TOO-HAN-BS-1562', 0, 0, 0, 'CENPRI', '', '', '', 0),
(620, 591, 0, 1, 0, 0, '', 'Rota Broach', '', '', '3840.00', '', 1, '2019-06-29', '', '', 'TOO-HAN-BS-1563', 0, 0, 0, 'CENPRI', '', '', '', 0),
(621, 591, 0, 1, 0, 0, '', 'Rota Broach', '', '', '3840.00', '', 1, '2019-06-29', '', '', 'TOO-HAN-BS-1564', 0, 0, 0, 'CENPRI', '', '', '', 0),
(622, 592, 0, 1, 0, 0, '', 'Hausmann', 'DP01012', '', '810.00', '', 1, '2019-07-20', '2019-07-20', '', 'TOO-HAN-BS-1565', 0, 0, 0, 'CENPRI', '', '', '', 0),
(623, 593, 0, 0, 0, 0, '', '', '', 'Heavy Duty', '460.00', '', 1, '2019-07-20', '2019-07-20', '', 'TOO-HAN-BS-1566', 0, 0, 0, '', '', '', '', 0),
(624, 594, 0, 1, 0, 0, '', 'Bernmann', 'B-9ATLW', 'Long Nose', '400.00', '', 1, '2019-07-20', '2019-07-20', '', 'TOO-HAN-BS-1567', 0, 0, 0, 'CENPRI', '', '', '', 0),
(625, 594, 0, 1, 0, 0, '', 'Bernmann', 'B-9ATLW', 'Long Nose', '400.00', '', 1, '2019-07-20', '2019-07-20', '', 'TOO-HAN-BS-1568', 0, 0, 0, 'CENPRI', '', '', '', 0),
(626, 595, 0, 1, 0, 0, '', 'SKC', '', '', '1490.00', '', 1, '2019-07-14', '', '', 'TOO-HAN-BS-1569', 0, 0, 0, 'CENPRI', '', '', '', 0),
(627, 596, 0, 1, 0, 0, '', 'SKC', '', '', '1490.00', '', 1, '2019-07-14', '', '', 'TOO-HAN-BS-1570', 0, 0, 0, 'CENPRI', '', '', '', 0),
(628, 597, 0, 1, 0, 0, '', 'SKC', '', '', '3600.00', '', 1, '2019-07-14', '', '', 'TOO-HAN-BS-1571', 0, 0, 0, 'CENPRI', '', '', '', 0),
(629, 598, 0, 0, 0, 0, '', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1572', 0, 0, 0, '', '', '', '', 0),
(630, 599, 0, 0, 0, 0, '', 'Magnaflux', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1573', 0, 0, 0, '', '', '', '', 0),
(631, 600, 0, 0, 0, 0, 'HTMR-003', 'Stanley', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1574', 0, 0, 0, '', '', '', '', 0),
(632, 600, 0, 0, 0, 0, '', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1575', 0, 0, 0, '', '', '', '', 0),
(633, 601, 0, 0, 0, 0, '06129322', 'Mitutoyo', '103-137', 'Ball Type', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1001', 0, 0, 0, '', '', '', '', 0),
(634, 602, 0, 0, 0, 0, '60008048', 'Mitutoyo', '103-107', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1002', 0, 0, 0, '', '', '', '', 0),
(635, 603, 0, 0, 0, 0, '', 'Mitutoyo', '', 'Inside', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1003', 0, 0, 0, '', '', '', '', 0),
(636, 604, 0, 0, 0, 0, '26244321', 'Mitutoyo', '103-138', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1004', 0, 0, 0, '', '', '', '', 0),
(637, 605, 0, 0, 0, 0, '46032049', 'Mitutoyo', '103-139-10', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1005', 0, 0, 0, '', '', '', '', 0),
(638, 606, 0, 0, 0, 0, '', 'Mitutoyo', '103-140', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1006', 0, 0, 0, '', '', '', '', 0),
(639, 607, 0, 0, 0, 0, '', 'Starett', '224-M', '', '0.00', '', 0, '', '', 'For Sulzer', 'TOO-MEA-BS-1007', 0, 0, 0, '', '', '', '', 0),
(640, 608, 0, 0, 0, 0, '46079289', 'Mitutoyo', '104-135', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1008', 0, 0, 0, '', '', '', '', 0),
(641, 609, 0, 0, 0, 0, '46032535', 'Mitutoyo', '104-136', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1009', 0, 0, 0, '', '', '', '', 0),
(642, 610, 0, 0, 0, 0, '1135088', 'Mitutoyo', '104-136', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1010', 0, 0, 0, '', '', '', '', 0),
(643, 611, 0, 0, 0, 0, '', 'Mitutoyo', '', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1011', 0, 0, 0, '', '', '', '', 0),
(644, 612, 0, 0, 0, 0, '32006446', 'Mitutoyo', '104-142', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1012', 0, 0, 0, '', '', '', '', 0),
(645, 613, 0, 0, 0, 0, '62005400', 'Mitutoyo', '104-143', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1013', 0, 0, 0, '', '', '', '', 0),
(646, 614, 0, 0, 0, 0, '01011314', 'Mitutoyo', '104-144', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1014', 0, 0, 0, '', '', '', '', 0),
(647, 615, 0, 0, 0, 0, '31005776', 'Mitutoyo', '104-145', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1015', 0, 0, 0, '', '', '', '', 0),
(648, 616, 0, 0, 0, 0, 'HTWC-071', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1576', 0, 0, 0, '', '', '', '', 0),
(649, 617, 0, 0, 0, 0, 'HTWC-072', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1577', 0, 0, 0, '', '', '', '', 0),
(650, 618, 0, 0, 0, 0, 'HTWC-073', 'Butterfly', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1578', 0, 0, 0, '', '', '', '', 0),
(651, 619, 0, 0, 0, 0, 'HTWC-074', 'Creston', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1579', 0, 0, 0, '', '', '', '', 0),
(652, 620, 0, 0, 0, 0, 'HTWC-075', 'Proto', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1580', 0, 0, 0, '', '', '', '', 0),
(653, 621, 0, 0, 0, 0, 'HTWC-076', 'Stanley', '87-084', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1581', 0, 0, 0, '', '', '', '', 0),
(654, 622, 0, 0, 0, 0, 'HTWC-077', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1582', 0, 0, 0, '', '', '', '', 0),
(655, 623, 0, 0, 0, 0, 'HTWC-078', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1583', 0, 0, 0, '', '', '', '', 0),
(656, 624, 0, 0, 0, 7, 'HTWC-079', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1584', 0, 0, 0, '', '', '', '', 0),
(657, 624, 0, 0, 0, 7, 'HTWC-080', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1585', 0, 0, 0, '', '', '', '', 0),
(658, 624, 0, 0, 0, 7, 'HTWC-081', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1586', 0, 0, 0, '', '', '', '', 0),
(659, 625, 0, 0, 0, 0, 'HTWC-082', 'Proto', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1587', 0, 0, 0, '', '', '', '', 0),
(660, 626, 0, 0, 0, 0, 'HTWC-083', 'Butterfly', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1588', 0, 0, 0, '', '', '', '', 0),
(661, 627, 0, 0, 0, 0, 'HTWC-084', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1589', 0, 0, 0, '', '', '', '', 0),
(662, 628, 0, 0, 0, 0, 'HTWC-085', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1590', 0, 0, 0, '', '', '', '', 0),
(663, 629, 0, 0, 0, 0, 'HTWC-086', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1591', 0, 0, 0, '', '', '', '', 0),
(664, 630, 0, 0, 0, 0, 'HTSO-132', 'Hans', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1592', 0, 0, 0, '', '', '', '', 0),
(665, 631, 0, 0, 0, 0, 'HTSO-133', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1593', 0, 0, 0, '', '', '', '', 0),
(666, 632, 0, 0, 0, 0, 'HTSO-134', 'Hans', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1594', 0, 0, 0, '', '', '', '', 0),
(667, 633, 0, 0, 0, 0, 'HTSO-135', 'Hans', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1595', 0, 0, 0, '', '', '', '', 0),
(668, 634, 0, 0, 0, 0, 'HTSO-136', 'Hans', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1596', 0, 0, 0, '', '', '', '', 0),
(669, 635, 0, 0, 0, 0, 'HTSO-137', 'Koken', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1597', 0, 0, 0, '', '', '', '', 0),
(670, 636, 0, 0, 0, 0, 'HTSO-138', 'Hans', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1598', 0, 0, 0, '', '', '', '', 0),
(671, 637, 0, 0, 0, 0, '', '', '', 'Dial', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1016', 0, 0, 0, '', '', '', '', 0),
(672, 638, 0, 0, 0, 0, '4246330', 'Mitutoyo', '511-706', 'Dial', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1017', 0, 0, 0, '', '', '', '', 0),
(673, 639, 0, 0, 0, 0, '', 'Mitutoyo', '511-131', 'Dial', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1018', 0, 0, 0, '', '', '', '', 0),
(674, 640, 0, 0, 0, 0, '6399975', 'Mitutoyo', '511-701', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1019', 0, 0, 0, '', '', '', '', 0),
(675, 641, 0, 0, 0, 0, '', 'Mitutoyo', '', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1020', 0, 0, 0, '', '', '', '', 0),
(676, 642, 0, 0, 0, 0, '314674', 'Mitutoyo', '', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1021', 0, 0, 0, '', '', '', '', 0),
(677, 643, 0, 0, 0, 0, '', 'Stanley', '', '', '108.00', '', 1, '2018-10-26', '2018-11-23', '', 'TOO-MEA-BS-1022', 0, 0, 0, '', '', '', '', 0),
(678, 644, 0, 0, 0, 0, '', 'Stanley', '', '', '108.00', '', 1, '2018-10-26', '2019-07-19', '', 'TOO-MEA-BS-1023', 0, 0, 0, '', '', '', '', 0),
(679, 645, 0, 0, 0, 0, '', '', '', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1024', 0, 0, 0, '', '', '', '', 0),
(680, 646, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1017', 0, 0, 0, 'CENPRI', '', '', '', 0),
(681, 647, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1018', 0, 0, 0, 'CENPRI', '', '', '', 0),
(682, 648, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1019', 0, 0, 0, 'CENPRI', '', '', '', 0),
(683, 649, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1020', 0, 0, 0, 'CENPRI', '', '', '', 0),
(684, 650, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1021', 0, 0, 0, 'CENPRI', '', '', '', 0),
(685, 651, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1022', 0, 0, 0, 'CENPRI', '', '', '', 0),
(686, 652, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1023', 0, 0, 0, 'CENPRI', '', '', '', 0),
(687, 653, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1024', 0, 0, 0, 'CENPRI', '', '', '', 0),
(688, 654, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1025', 0, 0, 0, 'CENPRI', '', '', '', 0),
(689, 655, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1026', 0, 0, 0, 'CENPRI', '', '', '', 0),
(690, 656, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1027', 0, 0, 0, 'CENPRI', '', '', '', 0),
(691, 657, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1028', 0, 0, 0, 'CENPRI', '', '', '', 0),
(692, 658, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1029', 0, 0, 0, 'CENPRI', '', '', '', 0),
(693, 659, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1030', 0, 0, 0, 'CENPRI', '', '', '', 0),
(694, 660, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1031', 0, 0, 0, 'CENPRI', '', '', '', 0),
(695, 661, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1032', 0, 0, 0, 'CENPRI', '', '', '', 0),
(696, 662, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1033', 0, 0, 0, 'CENPRI', '', '', '', 0),
(697, 663, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1034', 0, 0, 0, 'CENPRI', '', '', '', 0),
(698, 664, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1035', 0, 0, 0, 'CENPRI', '', '', '', 0),
(699, 665, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1036', 0, 0, 0, 'CENPRI', '', '', '', 0),
(700, 666, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1037', 0, 0, 0, 'CENPRI', '', '', '', 0),
(701, 667, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1038', 0, 0, 0, 'CENPRI', '', '', '', 0),
(702, 668, 0, 0, 0, 0, '', 'King Power', 'K-803', 'High Cut', '1890.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1039', 0, 0, 0, 'CENPRI', '', '', '', 0),
(703, 669, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1040', 0, 0, 0, 'CENPRI', '', '', '', 0),
(704, 670, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1041', 0, 0, 0, 'CENPRI', '', '', '', 0),
(705, 671, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1042', 0, 0, 0, 'CENPRI', '', '', '', 0),
(706, 672, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1043', 0, 0, 0, 'CENPRI', '', '', '', 0),
(707, 673, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1044', 0, 0, 0, 'CENPRI', '', '', '', 0),
(708, 674, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1045', 0, 0, 0, 'CENPRI', '', '', '', 0),
(709, 675, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1046', 0, 0, 0, 'CENPRI', '', '', '', 0),
(710, 676, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1047', 0, 0, 0, 'CENPRI', '', '', '', 0),
(711, 677, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1048', 0, 0, 0, 'CENPRI', '', '', '', 0),
(712, 678, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1049', 0, 0, 0, 'CENPRI', '', '', '', 0),
(713, 679, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1050', 0, 0, 0, 'CENPRI', '', '', '', 0),
(714, 680, 0, 0, 0, 0, '', 'King Power', 'K-803', 'High Cut', '1890.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1051', 0, 0, 0, 'CENPRI', '', '', '', 0),
(715, 681, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1052', 0, 0, 0, 'CENPRI', '', '', '', 0),
(716, 682, 0, 0, 0, 0, '', 'Lemaitre', ' LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1053', 0, 0, 0, 'CENPRI', '', '', '', 0),
(717, 683, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1054', 0, 0, 0, 'CENPRI', '', '', '', 0),
(718, 684, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1055', 0, 0, 0, 'CENPRI', '', '', '', 0),
(719, 685, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1056', 0, 0, 0, 'CENPRI', '', '', '', 0),
(720, 686, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1057', 0, 0, 0, 'CENPRI', '', '', '', 0),
(721, 687, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-07-25', '2019-07-25', '', 'FFE-PPE-BS-1058', 0, 0, 0, 'CENPRI', '', '', '', 0),
(722, 688, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1059', 0, 0, 0, 'CENPRI', '', '', '', 0),
(723, 689, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1060', 0, 0, 0, 'CENPRI', '', '', '', 0),
(724, 690, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1061', 0, 0, 0, 'CENPRI', '', '', '', 0);
INSERT INTO `et_details` (`ed_id`, `et_id`, `set_id`, `physical_id`, `rack_id`, `placement_id`, `serial_no`, `brand`, `model`, `type`, `unit_price`, `currency`, `currency_id`, `acquisition_date`, `date_issued`, `remarks`, `asset_control_no`, `damage`, `beyond_repair`, `borrowed`, `acquired_by`, `picture1`, `picture2`, `picture3`, `change_location`) VALUES
(725, 691, 0, 0, 0, 0, '', 'Safety Jogger', '', '', '0.00', '', 0, '', '2019-06-22', '', 'FFE-PPE-BS-1062', 0, 0, 0, 'CENPRI', '', '', '', 0),
(726, 692, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1063', 0, 0, 0, 'CENPRI', '', '', '', 0),
(727, 693, 0, 0, 0, 0, '', 'Lemaitre', 'LMC151 Colmar', 'High Cut', '1765.00', '', 1, '2019-06-20', '2019-06-22', '', 'FFE-PPE-BS-1064', 0, 0, 0, 'CENPRI', '', '', '', 0),
(728, 694, 0, 0, 0, 0, '', '3M', '', '', '1255.00', '', 1, '2018-03-14', '', 'Previous Custodian: Ms. Irish Dawn Torres', 'FFE-MED-BS-1001', 0, 0, 0, 'CENPRI', '', '', '', 0),
(729, 695, 0, 0, 0, 0, '', '', '', '', '0.00', '', 0, '', '', 'Previous Custodian: Ms. Relanie Parcon', 'FFE-MED-BS-1002', 0, 0, 0, '', '', '', '', 0),
(730, 696, 0, 0, 0, 0, '', '', '', '', '0.00', '', 0, '', '', 'Previous Custodian: Ms. Relanie Parcon', 'FFE-MED-BS-1003', 0, 0, 0, '', '', '', '', 0),
(731, 697, 0, 0, 0, 0, 'XJL25F5BY', 'One Touch Ultra 2', '', '', '0.00', '', 0, '', '', 'From Sir RCT.', 'FFE-MED-BS-1004', 0, 0, 0, '', '', '', '', 0),
(732, 698, 0, 0, 0, 0, '', '', '', '', '0.00', '', 0, '', '', 'Previous Custodian: Ms. Relanie Parcon', 'FFE-MED-BS-1005', 0, 0, 0, '', '', '', '', 0),
(733, 698, 0, 0, 0, 0, '', '', '', '', '0.00', '', 0, '', '', 'Previous Custodian: Ms. Relanie Parcon', 'FFE-MED-BS-1006', 0, 0, 0, '', '', '', '', 0),
(734, 699, 0, 0, 0, 0, '', '', '', '', '0.00', '', 0, '', '', 'Previous Custodian: Ms. Relanie Parcon', 'FFE-MED-BS-1007', 0, 0, 0, '', '', '', '', 0),
(735, 700, 0, 0, 0, 0, '', 'Alcor', '', '', '530.00', '', 1, '2019-08-06', '2019-08-20', '', 'FFE-MED-BS-1008', 0, 0, 0, 'CENPRI', '', '', '', 0),
(736, 701, 0, 0, 0, 0, '', 'Surgitech', '', '', '0.00', '', 0, '', '', '', 'FFE-MED-BS-1009', 0, 0, 0, 'CENPRI', '', '', '', 0),
(737, 702, 0, 0, 0, 0, '', 'John-Benzen', '', '', '650.00', '', 1, '2019-04-30', '', '', 'TOO-HAN-BS-1599', 0, 0, 0, 'CENPRI', '-1.jpg', '-2.jpg', '-3.jpg', 0),
(738, 703, 0, 4, 0, 0, 'HTTH-051', 'Magna', '', '', '0.00', '', 0, '', '', 'Retrieve from Maintenance Dept.', 'TOO-HAN-BS-1600', 0, 0, 0, 'CENPRI', '', '', '', 0),
(739, 703, 0, 4, 0, 0, 'HTTH-052', 'Magna', '', '', '0.00', '', 0, '', '', 'Retrieve from Maintenance Dept.', 'TOO-HAN-BS-1601', 0, 0, 0, 'CENPRI', '', '', '', 0),
(740, 704, 0, 0, 0, 0, 'HTTH-053', 'Creston', '', '', '0.00', '', 0, '', '', 'Retrieve from Maintenance Dept.', 'TOO-HAN-BS-1602', 0, 0, 0, 'CENPRI', '', '', '', 0),
(741, 705, 0, 4, 0, 0, 'HTTH-053', 'SKC', '', '', '0.00', '', 0, '', '', 'Retrieve from Maintenance Dept.', 'TOO-HAN-BS-1603', 0, 0, 0, 'CENPRI', '', '', '', 0),
(742, 706, 0, 4, 0, 0, '', 'Japan', '', '', '0.00', '', 0, '', '', 'Retrieve from Maintenance Dept.', 'TOO-HAN-BS-1604', 0, 0, 0, 'CENPRI', '', '', '', 0),
(743, 706, 0, 4, 0, 0, '', 'Japan', '', '', '0.00', '', 0, '', '', 'Retrieve from Maintenance Dept.', 'TOO-HAN-BS-1605', 0, 0, 0, 'CENPRI', '', '', '', 0),
(744, 707, 0, 4, 0, 0, 'HTTH-054', '', '', '', '0.00', '', 0, '', '', 'Retrieve from Maintenance Dept.', 'TOO-HAN-BS-1606', 0, 0, 0, 'CENPRI', '', '', '', 0),
(745, 708, 0, 4, 0, 0, '', 'Japan', '', '', '0.00', '', 0, '', '', 'Retrieve from Maintenance Dept.', 'TOO-HAN-BS-1607', 0, 0, 0, '', '', '', '', 0),
(746, 709, 0, 0, 0, 0, 'HTTH-056', 'SKC', '', '', '0.00', '', 0, '', '', 'Retrieve from Maintenance Dept.', 'TOO-HAN-BS-1608', 0, 0, 0, 'CENPRI', '', '', '', 0),
(747, 710, 0, 0, 0, 0, 'HTTH-057', 'SKC', '', '', '0.00', '', 0, '', '', 'Retrieve from Maintenance Dept.', 'TOO-HAN-BS-1609', 0, 0, 0, '', '', '', '', 0),
(748, 711, 0, 0, 0, 0, '', 'Unior', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1610', 0, 0, 0, '', '', '', '', 0),
(749, 712, 0, 0, 0, 0, 'HTWB-007', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1611', 0, 0, 0, '', '', '', '', 0),
(750, 713, 0, 0, 0, 0, 'HTWB-008', 'Stanley', '87-812', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1612', 0, 0, 0, '', '', '', '', 0),
(751, 714, 0, 0, 0, 0, 'HTWP-009', 'Ridgid', '', 'Heavy Duty', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1613', 0, 0, 0, '', '', '', '', 0),
(752, 715, 0, 1, 0, 0, '', 'Stanley', '', '', '240.00', '', 1, '2018-11-10', '2016-11-23', '', 'TOO-HAN-BS-1614', 0, 0, 0, 'CENPRI', '', '', '', 0),
(753, 716, 0, 1, 0, 0, '', 'Stanley', '', '', '240.00', '', 1, '2018-11-10', '2018-11-23', '', 'TOO-HAN-BS-1615', 0, 0, 0, 'CENPRI', '', '', '', 0),
(754, 717, 0, 1, 0, 0, '', 'SKC', '', '', '780.00', '', 1, '2019-07-14', '2019-07-14', '', 'TOO-HAN-BS-1616', 0, 0, 0, 'CENPRI', '', '', '', 0),
(755, 718, 0, 1, 0, 0, '', 'Irwin Mason', '', 'Metric', '200.00', '', 1, '2019-04-18', '', '', 'TOO-HAN-BS-1617', 0, 0, 0, 'CENPRI', '', '', '', 0),
(756, 719, 0, 1, 0, 0, '', 'Germany', 'DIN 911', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1618', 0, 0, 0, 'CENPRI', '', '', '', 0),
(757, 720, 0, 1, 0, 0, '', 'Germany', 'DIN 911', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1619', 0, 0, 0, 'CENPRI', '', '', '', 0),
(758, 721, 0, 0, 0, 0, '', 'Diamond', '', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1025', 0, 0, 0, '', '', '', '', 0),
(759, 722, 0, 0, 0, 0, '', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1026', 0, 0, 0, '', '', '', '', 0),
(760, 722, 0, 0, 0, 0, '', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1027', 0, 0, 0, '', '', '', '', 0),
(762, 725, 0, 1, 0, 0, '101802264', 'Megger', 'DLRO10', '', '4030.08', '', 2, '2019-01-11', '', 'With DH4-C Duplex handspikes (x2), one with indicator lights. 1.2m/4ft.', 'TOO-TES-BS-1001', 0, 0, 0, 'CENPRI', '', '', '', 0),
(763, 726, 0, 0, 0, 0, '1002692101649070', 'Meger', 'MIT1025', '', '0.00', '', 0, '', '', '', 'TOO-TES-BS-1002', 0, 0, 0, '', '', '', '', 0),
(764, 727, 0, 0, 0, 0, '43580012WS', 'Fluke', '376', '', '34500.00', '', 1, '2019-02-19', '', '', 'TOO-TES-BS-1003', 0, 0, 0, 'CENPRI', '43580012WS-1.jpg', '', '', 0),
(765, 728, 0, 0, 0, 0, '95178-1', 'ASHCROFT', '1305-2BH', '', '0.00', '', 0, '', '', '', 'TOO-TES-BS-1004', 0, 0, 0, '', '', '', '', 0),
(766, 729, 0, 0, 0, 0, '95370-5', 'ASHCROFT', '1305-2BH', '', '0.00', '', 0, '', '', '', 'TOO-TES-BS-1005', 0, 0, 0, '', '', '', '', 0),
(767, 730, 0, 0, 0, 0, '732277', 'MGK', '', '', '115.00', '', 1, '2019-08-19', '', '', 'FFE-SUP-BS-1001', 0, 0, 0, 'CENPRI', '', '', '', 0),
(768, 731, 0, 1, 0, 11, '3100267368A9779504338', 'Secure', 'UPS-650VA', '', '1600.00', '', 1, '2019-08-27', '2019-08-28', '', 'FFE-COMP-BS-1003', 0, 0, 0, 'CENPRI', '3100267368A9779504338-1.jpg', '', '', 0),
(769, 732, 0, 1, 0, 11, '3100267368A9779504339', 'Secure', 'UPS-650VA', '', '1600.00', '', 1, '2019-08-27', '2019-08-28', '', 'FFE-COMP-BS-1004', 0, 0, 0, 'CENPRI', '3100267368A9779504339-1.jpg', '', '', 0),
(770, 733, 0, 1, 0, 12, '3100267368A9779504340', 'Secure', 'UPS-650VA', '', '1600.00', '', 1, '2019-08-27', '2019-08-28', '', 'FFE-COMP-BS-1005', 0, 0, 0, 'CENPRI', '3100267368A9779504340-1.jpg', '', '', 0),
(771, 734, 0, 1, 0, 11, '3100267368A9779504337', 'Secure', 'UPS-650VA', '', '1600.00', '', 1, '2019-08-27', '2019-08-28', '', 'FFE-COMP-BS-1006', 0, 0, 0, 'CENPRI', '3100267368A9779504337-1.jpg', '', '', 0),
(772, 735, 0, 1, 0, 12, '3102267368A9779501094', 'Secure', 'UPS-650VA', '', '1600.00', '', 1, '2019-08-27', '2019-08-28', '', 'FFE-COMP-BS-1007', 0, 0, 0, 'CENPRI', '3102267368A9779501094-1.jpg', '', '', 0),
(773, 736, 0, 0, 0, 0, '', 'Proto', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1620', 0, 0, 0, 'CENPRI', '', '', '', 0),
(774, 737, 0, 0, 0, 0, '', 'Stanley', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1621', 0, 0, 0, '', '', '', '', 0),
(775, 738, 0, 0, 0, 0, '', 'Bernman', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1622', 0, 0, 0, '', '', '', '', 0),
(776, 739, 0, 0, 0, 0, '', 'Snap-or', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1623', 0, 0, 0, '', '', '', '', 0),
(777, 740, 0, 0, 0, 0, '', 'Proto', '5685', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1624', 0, 0, 0, '', '', '', '', 0),
(778, 741, 0, 0, 0, 0, '', 'Unior', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1625', 0, 0, 0, '', '', '', '', 0),
(779, 742, 0, 0, 0, 0, '', 'Unior', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1626', 0, 0, 0, '', '', '', '', 0),
(780, 743, 0, 0, 0, 0, '', 'Zhonggong', '', '', '0.00', '', 0, '', '', 'Retrieve from Maintenance Dept.\r\nAs per Sir Elmer this tool was not purchase by CENPRI.', 'TOO-HAN-BS-1627', 0, 0, 0, '', '', '', '', 0),
(781, 745, 0, 0, 0, 0, '', 'Creston', 'CMB-308', '', '198.00', '', 1, '2019-08-29', '2019-08-30', '', 'TOO-HAN-BS-1628', 0, 0, 0, 'CENPRI', '-1.jpg', '', '', 0),
(782, 746, 0, 0, 0, 0, '', 'Buffalo', '', '', '349.50', '', 1, '2019-04-16', '', '', 'TOO-HAN-BS-1629', 0, 0, 0, '', '', '', '', 0),
(783, 747, 0, 0, 0, 0, '', 'Stanley', '', '', '0.00', '', 0, '', '', 'Retrieve from Maintenance Department\r\n', 'TOO-HAN-BS-1630', 0, 0, 0, '', '', '', '', 0),
(784, 748, 0, 0, 0, 0, '', 'Butterfly', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1631', 0, 0, 0, '', '', '', '', 0),
(785, 750, 0, 0, 0, 0, '', 'Proto', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1632', 0, 0, 0, '', '', '', '', 0),
(786, 751, 0, 0, 0, 0, '', 'Germany', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1633', 0, 0, 0, '', '', '', '', 0),
(787, 752, 0, 0, 0, 0, '', 'CR-V', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1634', 0, 0, 0, '', '', '', '', 0),
(788, 753, 0, 0, 0, 0, '', 'Germany', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1635', 0, 0, 0, '', '', '', '', 0),
(789, 754, 0, 0, 0, 0, '', 'SKS-USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1636', 0, 0, 0, '', '', '', '', 0),
(790, 755, 0, 0, 0, 0, '', 'SKS USA', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1637', 0, 0, 0, '', '', '', '', 0),
(791, 757, 0, 0, 0, 0, '', 'Chrome', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1638', 0, 0, 0, '', '', '', '', 0),
(792, 758, 0, 0, 0, 0, '', 'Stanley', '88-794', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1639', 0, 0, 0, '', '', '', '', 0),
(793, 758, 0, 0, 0, 0, '', 'Stanley', '88-794', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1640', 0, 0, 0, '', '', '', '', 0),
(794, 759, 0, 0, 0, 0, '', 'Rigid', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1641', 0, 0, 0, '', '', '', '', 0),
(795, 760, 0, 0, 0, 0, '', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1642', 0, 0, 0, '', '', '', '', 0),
(796, 760, 0, 0, 0, 0, '', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1643', 0, 0, 0, '', '', '', '', 0),
(797, 761, 0, 0, 0, 0, 'HTCO-001', '', '', '', '4520.00', '', 1, '2019-04-30', '', '', 'TOO-HAN-BS-1644', 0, 0, 0, 'CENPRI', 'HTCO-001-1.jpg', '', '', 0),
(798, 762, 0, 0, 0, 0, '', 'Tungho', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1645', 0, 0, 0, '', '', '', '', 0),
(799, 762, 0, 0, 0, 0, '', 'Tungho', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1646', 0, 0, 0, '', '', '', '', 0),
(800, 763, 0, 0, 0, 0, '', 'Creston', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1647', 0, 0, 0, '', '', '', '', 0),
(801, 764, 0, 0, 0, 0, '', 'Viking', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1648', 0, 0, 0, '', '', '', '', 0),
(802, 764, 0, 0, 0, 0, '', 'Viking', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1649', 0, 0, 0, '', '', '', '', 0),
(803, 765, 0, 0, 0, 0, '', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1650', 0, 0, 0, '', '', '', '', 0),
(804, 765, 0, 0, 0, 0, '', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1651', 0, 0, 0, '', '', '', '', 0),
(805, 766, 0, 0, 0, 0, '', 'SKS USA', '', 'C-Type', '270.00', '', 1, '2019-08-24', '', '', 'TOO-HAN-BS-1652', 0, 0, 0, 'CENPRI', '', '', '', 0),
(806, 766, 0, 0, 0, 0, '', 'SKS USA', '', 'C-Type', '270.00', '', 1, '2019-08-24', '', '', 'TOO-HAN-BS-1653', 0, 0, 0, 'CENPRI', '', '', '', 0),
(807, 766, 0, 0, 0, 0, '', 'SKS USA', '', 'C-Type', '270.00', '', 1, '2019-08-24', '', '', 'TOO-HAN-BS-1654', 0, 0, 0, 'CENPRI', '', '', '', 0),
(808, 766, 0, 0, 0, 0, '', 'SKS USA', '', 'C-Type', '270.00', '', 1, '2019-08-24', '', '', 'TOO-HAN-BS-1655', 0, 0, 0, 'CENPRI', '', '', '', 0),
(809, 767, 0, 0, 0, 0, '', 'SKS USA', '', 'C-Type', '310.00', '', 1, '2019-08-24', '', '', 'TOO-HAN-BS-1656', 0, 0, 0, 'CENPRI', '', '', '', 0),
(810, 767, 0, 0, 0, 0, '', 'SKS USA', '', 'C-Type', '310.00', '', 1, '2019-08-24', '', '', 'TOO-HAN-BS-1657', 0, 0, 0, 'CENPRI', '', '', '', 0),
(811, 767, 0, 0, 0, 0, '', 'SKS USA', '', 'C-Type', '310.00', '', 1, '2019-08-24', '', '', 'TOO-HAN-BS-1658', 0, 0, 0, 'CENPRI', '', '', '', 0),
(812, 767, 0, 0, 0, 0, '', 'SKS USA', '', 'C-Type', '310.00', '', 1, '2019-08-24', '', '', 'TOO-HAN-BS-1659', 0, 0, 0, 'CENPRI', '', '', '', 0),
(813, 768, 0, 0, 0, 0, '', 'KYK Tools', '', '', '130.00', '', 1, '2019-02-11', '', '', 'TOO-HAN-BS-1660', 0, 0, 0, 'CENPRI', '', '', '', 0),
(814, 768, 0, 0, 0, 0, '', 'KYK Tools', '', '', '130.00', '', 1, '2019-02-11', '', '', 'TOO-HAN-BS-1661', 0, 0, 0, 'CENPRI', '', '', '', 0),
(816, 769, 0, 0, 0, 0, '', 'Hausmann', '', '', '210.00', '', 1, '2019-07-09', '2019-07-19', '', 'TOO-HAN-BS-1663', 0, 0, 0, 'CENPRI', '', '', '', 0),
(817, 769, 0, 0, 0, 0, '', 'Hausmann', '', '', '210.00', '', 1, '2019-07-19', '2019-07-19', '', 'TOO-HAN-BS-1664', 0, 0, 0, 'CENPRI', '', '', '', 0),
(818, 770, 0, 0, 0, 0, '', 'Tolsen', '25040', '', '395.00', '', 1, '2019-09-03', '2019-09-04', '', 'TOO-HAN-BS-1665', 0, 0, 0, 'CENPRI', '', '', '', 0),
(819, 771, 0, 0, 0, 0, '', '', '', '', '36.00', '', 1, '2018-10-23', '2019-01-07', '', 'TOO-HAN-BS-1666', 0, 0, 0, 'CENPRI', '', '', '', 0),
(820, 771, 0, 0, 0, 0, '', '', '', '', '36.00', '', 1, '2018-10-23', '2019-01-07', '', 'TOO-HAN-BS-1667', 0, 0, 0, 'CENPRI', '', '', '', 0),
(821, 772, 0, 0, 0, 0, '', 'Duwell', '', '', '350.00', '', 1, '2019-05-16', '2019-05-20', '', 'TOO-HAN-BS-1668', 0, 0, 0, 'CENPRI', '', '', '', 0),
(822, 773, 0, 0, 0, 0, '', 'Creston', '', '', '120.00', '', 1, '2019-01-02', '2019-01-03', '', 'TOO-HAN-BS-1669', 0, 0, 0, 'CENPRI', '', '', '', 0),
(823, 774, 0, 0, 0, 0, '', 'Duwell', '', '', '150.00', '', 1, '2019-04-18', '2019-05-20', '', 'TOO-HAN-BS-1670', 0, 0, 0, 'CENPRI', '', '', '', 0),
(824, 775, 0, 0, 0, 0, '', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1671', 0, 0, 0, '', '', '', '', 0),
(825, 776, 0, 0, 0, 0, '', '', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1672', 0, 0, 0, '', '', '', '', 0),
(826, 777, 0, 0, 0, 0, '', '', '', '', '487.50', '', 1, '2019-03-22', '2019-05-02', '', 'TOO-HAN-BS-1673', 0, 0, 0, 'CENPRI', '', '', '', 0),
(827, 778, 0, 0, 0, 0, '', 'Creston', '', '', '850.00', '', 1, '2019-03-25', '2019-05-02', 'High Pressure, 1.5mm Fluid Nozzle, 3.0 Bar Air Pressure Required, 75L/min Air Consumption, 95cc/min Output, 110mm Pattern Width of Fan Shaped, 0.4 kw Compressor Required', 'TOO-HAN-BS-1674', 0, 0, 0, 'CENPRI', '', '', '', 0),
(828, 779, 0, 0, 0, 0, '', 'Mitutoyo', '', '', '14430.00', '', 1, '2019-05-17', '2019-05-17', '', 'TOO-MEA-BS-1028', 0, 0, 0, 'CENPRI', '', '', '', 0),
(829, 780, 0, 0, 0, 0, '', 'Metric', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1675', 0, 0, 0, 'CENPRI', '', '', '', 0),
(830, 780, 0, 0, 0, 0, '', 'Metric', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1676', 0, 0, 0, 'CENPRI', '', '', '', 0),
(831, 780, 0, 0, 0, 0, '', 'Metric', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1677', 0, 0, 0, 'CENPRI', '', '', '', 0),
(832, 781, 0, 0, 0, 0, '', 'SAE', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1678', 0, 0, 0, 'CENPRI', '', '', '', 0),
(833, 781, 0, 0, 0, 0, '', 'SAE', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1679', 0, 0, 0, 'CENPRI', '', '', '', 0),
(834, 781, 0, 0, 0, 0, '', 'SAE', '', '', '0.00', '', 0, '', '', '', 'TOO-HAN-BS-1680', 0, 0, 0, 'CENPRI', '', '', '', 0),
(835, 782, 0, 0, 0, 0, '', 'Creston', '', '', '86.00', '', 1, '2019-01-19', '2019-01-21', '', 'TOO-MEA-BS-1029', 0, 0, 0, 'CENPRI', '', '', '', 0),
(836, 783, 0, 0, 0, 0, '', 'Creston', '', '', '86.00', '', 1, '2019-02-18', '2019-02-18', '', 'TOO-MEA-BS-1030', 0, 0, 0, 'CENPRI', '', '', '', 0),
(837, 784, 0, 5, 0, 0, '', '', '', '', '25.00', '', 1, '2018-08-30', '', 'Partially worn out. Returned to Warehouse by Ms. Genielyne Mondejar from Oil Spill Contingency Training.', 'TOO-HAN-BS-1681', 0, 0, 0, 'CENPRI', '', '', '', 0),
(838, 784, 0, 5, 0, 0, '', '', '', '', '25.00', '', 1, '2016-08-30', '', 'Returned to Warehouse by Ms. Genielyne Mondejar from Oil Spill Contingency Training.', 'TOO-HAN-BS-1682', 0, 0, 0, 'CENPRI', '', '', '', 0),
(839, 784, 0, 5, 0, 0, '', '', '', '', '25.00', '', 1, '2018-08-30', '', 'Partially worn out. Returned to Warehouse by Ms. Genielyne Mondejar from Oil Spill Contingency Training.', 'TOO-HAN-BS-1683', 0, 0, 0, 'CENPRI', '', '', '', 0),
(840, 785, 0, 5, 0, 0, '', 'Butterfly', '', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1031', 0, 0, 0, 'CENPRI', '', '', '', 0),
(841, 786, 0, 0, 0, 0, '', 'Trade K Mark', '', '', '0.00', '', 0, '', '', '', 'TOO-MEA-BS-1032', 0, 0, 0, 'CENPRI', '', '', '', 0),
(842, 787, 0, 0, 0, 0, '124490K', 'Makita', 'M0910M', '', '0.00', '', 0, '', '', '', 'TOO-POW-BS-1003', 0, 0, 0, 'CENPRI', '', '', '', 0),
(843, 788, 0, 5, 0, 0, '126973K', 'Makita', 'M0910M', '', '0.00', '', 0, '', '', '', 'TOO-POW-BS-1004', 0, 0, 0, 'CENPRI', '', '', '', 0),
(844, 789, 0, 0, 0, 0, '', 'Honest Friend', '', '', '0.00', '', 0, '', '', '', 'TOO-POW-BS-1005', 0, 0, 0, '', '', '', '', 0),
(845, 790, 0, 1, 0, 0, 'PH1804034610', 'A4TECH', 'G3-300N', '', '350.00', NULL, 1, '2019-09-24', '', '', 'FFE-COMP-BS-1008', 1, 0, 0, 'BCG Computers', '', '', '', 0),
(846, 791, 5, 0, 0, 0, 'IT201901111', 'Asus', 'Asus VivoBook X540B', '', '23000.00', NULL, 1, '2019-09-24', '', '', 'FFE-COMP-BS-1009', 0, 0, 0, 'BCG Computers', '', '', '', 0),
(847, 792, 5, 0, 0, 0, 'IT20192222', 'Asus', '', '', '0.00', NULL, 0, '2019-09-24', '', '', 'FFE-COMP-BS-1010', 0, 0, 0, '', '', '', '', 0),
(848, 793, 6, 1, 0, 11, 'PH1804034610', 'A4tECH', 'G3-300N', '', '500.00', NULL, 1, '2019-09-26', '', '', 'FFE-COMP-BS-1011', 0, 0, 0, 'MF Computers', '', '', '', 0),
(849, 794, 6, 1, 0, 11, '2222', 'Asus', '', '', '0.00', NULL, 0, '2019-09-26', '2019-09-26', '', 'FFE-COMP-BS-1012', 0, 0, 0, '', '', '', '', 0),
(850, 795, 0, 1, 0, 11, '55555', 'Asus', '', '', '0.00', NULL, 0, '2019-09-26', '2019-09-26', '', 'FFE-COMP-BS-1013', 0, 0, 0, 'MF Computers', '', '', '', 0);

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
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=797 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `et_head`
--

INSERT INTO `et_head` (`et_id`, `accountability_id`, `category_id`, `subcat_id`, `create_date`, `et_desc`, `qty`, `unit_id`, `department`, `user_id`) VALUES
(1, 4, 1, 4, '2019-05-09 14:03:58', 'Table, Gray', 1, 2, 'Trading', 1),
(2, 4, 1, 4, '2019-05-09 14:05:06', 'Chair, Ergonomic, Black', 1, 2, 'Trading', 1),
(3, 7, 1, 4, '2019-05-09 14:06:05', 'Table, Gray', 1, 2, 'Trading', 1),
(4, 7, 1, 4, '2019-05-09 14:07:44', 'Chair, Ergonomic, Black', 1, 2, 'Trading', 1),
(5, 6, 1, 4, '2019-05-09 14:09:58', 'Table, Gray', 1, 2, 'Fuel Management', 1),
(6, 6, 1, 4, '2019-05-09 14:11:00', 'Chair, Ergonomic, Black', 1, 2, 'Fuel Management', 1),
(7, 11, 1, 4, '2019-05-09 14:11:58', 'Table, Gray', 1, 2, 'Operations Department', 1),
(8, 11, 1, 4, '2019-05-09 14:13:59', 'Chair, Ergonomic, Black', 1, 2, 'Operations Department', 1),
(9, 9, 1, 4, '2019-05-09 14:14:57', 'Table, Gray', 1, 2, 'Progen', 1),
(10, 9, 1, 4, '2019-05-09 14:16:13', 'Chair, Swivel, Gray', 1, 2, 'Progen', 1),
(11, 13, 1, 4, '2019-05-09 14:21:05', 'Table, Gray', 1, 2, 'Special Projects', 1),
(12, 13, 1, 4, '2019-05-09 14:21:57', 'Chair, Ergonomic, Black', 1, 2, 'Special Projects', 1),
(13, 0, 1, 4, '2019-05-09 14:23:06', 'Table, Gray', 1, 2, 'Purchasing Department', 1),
(14, 22, 1, 4, '2019-05-09 14:25:23', 'Chair, Ergonomic, Black', 1, 2, 'Purchasing Department', 1),
(15, 27, 1, 4, '2019-05-09 14:28:08', 'Chair, Swivel, Gray', 1, 2, 'Warehouse', 1),
(16, 27, 1, 4, '2019-05-09 14:29:25', 'Table, Gray', 1, 2, '', 1),
(17, 28, 1, 4, '2019-05-09 14:35:54', 'Table, Gray', 1, 2, 'Warehouse', 1),
(18, 28, 1, 4, '2019-05-09 14:41:01', 'Chair, Swivel, Gray', 1, 2, 'Warehouse', 1),
(19, 30, 1, 4, '2019-05-09 14:45:04', 'Table, Gray', 1, 2, 'Management', 1),
(20, 30, 1, 4, '2019-05-09 14:47:40', 'Ergonomic, Chair, Black', 1, 2, 'Management', 1),
(21, 35, 1, 4, '2019-05-09 14:49:11', 'Table, Gray', 1, 2, 'Warehouse', 1),
(22, 35, 1, 4, '2019-05-09 14:51:15', 'Chair, Swivel, Gray', 1, 2, 'Warehouse', 1),
(23, 37, 1, 4, '2019-05-09 14:53:27', 'Table, Gray', 1, 2, 'Warehouse', 1),
(24, 37, 1, 4, '2019-05-09 14:54:55', 'Chair, Ergonomic, Black', 1, 2, 'Warehouse', 1),
(25, 39, 1, 4, '2019-05-14 09:55:05', 'Table, Gray', 1, 2, 'Admin', 1),
(26, 43, 1, 4, '2019-05-14 09:56:27', 'Table, Gray', 1, 2, 'Admin', 1),
(27, 52, 1, 4, '2019-05-14 09:59:11', 'Table, Gray', 1, 2, 'Operations Department', 1),
(28, 53, 1, 4, '2019-05-14 10:00:33', 'Table, Gray', 1, 2, 'Testing Group', 1),
(29, 53, 1, 4, '2019-05-14 13:37:16', 'Chair, Ergonomic, Black', 1, 2, 'Testing Group', 1),
(30, 54, 1, 4, '2019-05-15 14:49:03', 'Table, Gray', 1, 2, 'Admin', 1),
(31, 60, 1, 4, '2019-05-16 11:29:29', 'Table, Gray', 1, 2, 'Admin', 1),
(32, 60, 1, 4, '2019-05-16 11:31:38', 'Chair, Swivel, Black', 1, 2, 'Admin', 1),
(33, 63, 1, 4, '2019-05-16 11:34:52', 'Table, Gray', 1, 2, 'Admin', 1),
(35, 0, 2, 2, '2019-05-20 12:25:27', 'Wrench, Adjustable 12 inches', 1, 2, '', 1),
(36, 0, 2, 2, '2019-05-20 12:27:10', 'Wrench, Adjustable 12 inches', 1, 2, '', 1),
(37, 0, 2, 2, '2019-05-20 13:29:43', 'Wrench, Box 24mm x 26mm, 12pt', 1, 2, '', 1),
(38, 0, 2, 2, '2019-05-20 13:31:48', 'Wrench, Box 24mm x 27mm, 12pt', 1, 2, '', 1),
(39, 0, 2, 2, '2019-05-20 13:39:32', 'Wrench, Box 24mm x 27mm, 12pt', 1, 2, '', 1),
(40, 0, 2, 2, '2019-05-21 11:46:06', 'Wrench, Box 46mm x 50mm, 12pt', 1, 2, '', 1),
(41, 53, 1, 6, '2019-05-27 14:42:12', 'Safety Shoes, Ladies, Size: 6', 1, 4, 'Testing Group', 1),
(43, 5, 1, 6, '2019-05-27 15:00:56', 'Safety Shoes, Ladies, Size: 8', 1, 4, 'Trading', 1),
(44, 4, 1, 6, '2019-05-27 15:42:15', 'Safety Shoes, Ladies, Size: 6', 1, 4, 'Trading', 1),
(45, 6, 1, 6, '2019-05-27 16:34:48', 'Safety Shoes, Ladies, Size: 6', 1, 4, 'Fuel Management', 1),
(46, 7, 1, 6, '2019-05-27 16:36:12', 'Safety Shoes, Ladies, Size: 6', 1, 4, 'Trading', 1),
(47, 9, 1, 6, '2019-05-27 16:37:26', 'Safety Shoes, Ladies, Size: 8', 1, 4, 'Progen', 1),
(48, 13, 1, 6, '2019-05-28 10:07:05', 'Safety Shoes, Ladies, Size: 6', 1, 4, 'Special Projects', 1),
(49, 0, 1, 6, '2019-05-28 10:32:05', 'Safety Shoes, Ladies, Size: 6', 1, 4, 'Accounting', 1),
(50, 67, 1, 6, '2019-05-28 10:34:05', 'Safety Shoes, Ladies, Size: 6', 1, 4, 'Special Projects', 1),
(51, 22, 1, 6, '2019-05-28 10:35:08', 'Safety Shoes, Ladies, Size: 6', 1, 4, 'Purchasing Department', 1),
(52, 23, 1, 6, '2019-05-28 10:36:29', 'Safety Shoes, Ladies, Size: 6', 1, 4, 'Purchasing Department', 1),
(53, 27, 1, 6, '2019-05-28 10:37:33', 'Safety Shoes, Ladies, Size: 8', 1, 4, 'Warehouse', 1),
(54, 43, 1, 6, '2019-05-28 10:38:46', 'Safety Shoes, Ladies, Size: 8', 1, 4, 'Admin', 1),
(55, 11, 1, 6, '2019-05-28 10:48:09', 'Safety Shoes, Ladies, Size: 6.5', 1, 4, 'Operations Department', 1),
(56, 60, 1, 6, '2019-05-28 10:51:26', 'Safety Shoes, Ladies, Size: 6.5', 1, 4, 'Admin', 1),
(57, 63, 1, 6, '2019-05-28 10:53:15', 'Safety Shoes, Ladies, Size: 8', 1, 4, '', 1),
(58, 0, 2, 2, '2019-05-29 16:27:42', 'Wrench, Combination, 6mm, 12pt', 1, 2, '', 1),
(59, 0, 2, 2, '2019-05-29 16:29:29', 'Wrench, Combination, 8mm, 12pt\r\n', 1, 2, '', 1),
(60, 0, 2, 2, '2019-05-29 16:33:22', 'Wrench, Combination, 9mm, 12pt', 1, 2, '', 1),
(61, 0, 2, 2, '2019-05-29 16:34:17', 'Wrench, Combination, 10mm, 12pt', 1, 2, '', 1),
(62, 0, 2, 2, '2019-05-29 16:35:12', 'Wrench, Combination, 12mm, 12pt', 1, 2, '', 1),
(63, 0, 2, 2, '2019-05-29 16:36:51', 'Wrench, Combination, 13mm, 12pt', 1, 2, '', 1),
(64, 0, 2, 2, '2019-05-31 09:31:33', 'Wrench, Combination, 13mm, 12pt', 1, 2, '', 1),
(65, 0, 2, 2, '2019-05-31 09:33:25', 'Wrench, Combination, 13mm, 12pt', 1, 2, '', 1),
(66, 0, 2, 2, '2019-05-31 09:37:59', 'Wrench, Combination, 14mm, 12pt', 1, 2, '', 1),
(67, 0, 2, 2, '2019-05-31 09:49:39', 'Wrench, Combination, 14mm, 12pt', 1, 2, '', 1),
(68, 0, 2, 2, '2019-06-03 08:55:39', 'Wrench, Combination, 16mm, 12pt', 1, 2, '', 1),
(69, 0, 2, 2, '2019-06-03 08:56:36', 'Wrench, Combination, 16mm, 12pt', 1, 2, '', 1),
(70, 0, 2, 2, '2019-06-03 08:59:11', 'Wrench, Combination, 17mm, 12pt', 1, 2, '', 1),
(71, 0, 2, 2, '2019-06-03 09:17:13', 'Wrench, Combination, 18mm, 12pt', 1, 2, '', 1),
(72, 0, 2, 2, '2019-06-03 09:35:59', 'Wrench, Combination, 18mm, 12pt', 1, 2, '', 1),
(73, 0, 2, 2, '2019-06-03 09:36:50', 'Wrench, Combination, 19mm, 12pt', 1, 2, '', 1),
(74, 0, 2, 2, '2019-06-03 09:43:23', 'Wrench, Combination, 21mm, 12pt', 1, 2, '', 1),
(75, 0, 2, 2, '2019-06-03 09:44:22', 'Wrench, Combination, 21mm, 12pt', 1, 2, '', 1),
(76, 0, 2, 2, '2019-06-03 09:45:33', 'Wrench, Combination, 21mm, 12pt', 1, 2, '', 1),
(77, 0, 2, 2, '2019-06-03 09:48:12', 'Wrench, Combination, 21mm, 12pt', 1, 2, '', 1),
(78, 0, 2, 2, '2019-06-03 09:49:32', 'Wrench, Combination, 21mm, 12pt', 1, 2, '', 1),
(79, 0, 2, 2, '2019-06-03 09:52:20', 'Wrench, Combination, 21mm, 12pt', 1, 2, '', 1),
(80, 0, 2, 2, '2019-06-03 09:56:53', 'Wrench, Combination, 22mm, 12pt', 1, 2, '', 1),
(81, 0, 2, 2, '2019-06-03 09:58:35', 'Wrench, Combination, 22mm, 12pt', 1, 2, '', 1),
(82, 0, 2, 2, '2019-06-03 09:59:34', 'Wrench, Combination, 23mm, 12pt', 1, 2, '', 1),
(83, 0, 2, 2, '2019-06-03 10:02:53', 'Wrench, Combination, 23mm, 12pt', 1, 2, '', 1),
(84, 0, 2, 2, '2019-06-03 10:06:11', 'Wrench, Combination, 24mm, 12pt', 1, 2, '', 1),
(85, 0, 2, 2, '2019-06-06 14:40:00', 'Wrench, Combination, 24mm, 12pt', 1, 2, '', 1),
(86, 0, 2, 2, '2019-06-06 14:43:28', 'Wrench, Combination, 24mm, 12pt', 1, 2, '', 1),
(87, 0, 2, 2, '2019-06-06 14:45:19', 'Wrench, Combination, 24mm, 12pt', 1, 2, '', 1),
(88, 0, 2, 2, '2019-06-06 14:46:23', 'Wrench, Combination, 24mm, 12pt', 1, 2, '', 1),
(89, 0, 2, 2, '2019-06-06 14:51:54', 'Wrench, Combination, 24mm, 12pt', 1, 2, '', 1),
(90, 0, 2, 2, '2019-06-06 14:54:02', 'Wrench, Combination, 1 inch, 12pt', 1, 2, '', 1),
(91, 0, 2, 2, '2019-06-06 14:55:32', 'Wrench, Combination, 24mm, 12pt', 1, 2, '', 1),
(92, 0, 2, 2, '2019-06-06 14:56:44', 'Wrench, Combination, 24mm, 12pt', 1, 2, '', 1),
(93, 0, 2, 2, '2019-06-07 10:58:55', 'Wrench, Combination, 27mm, 12pt', 1, 2, '', 1),
(94, 0, 2, 2, '2019-06-07 11:02:57', 'Wrench, Combination, 27mm, 12pt', 1, 2, '', 1),
(95, 0, 2, 2, '2019-06-07 11:13:29', 'Wrench, Combination, 27mm, 12pt', 1, 2, '', 1),
(96, 0, 2, 2, '2019-06-07 16:03:07', 'Wrench, Combination, 27mm, 12pt', 1, 2, '', 1),
(97, 0, 2, 2, '2019-06-07 16:05:51', 'Wrench, Combination, 27mm, 12pt', 1, 2, '', 1),
(98, 0, 2, 2, '2019-06-07 16:07:53', 'Wrench, Combination, 28mm, 12pt', 1, 2, '', 1),
(99, 0, 2, 2, '2019-06-07 16:09:02', 'Wrench, Combination, 28mm, 12pt', 1, 2, '', 1),
(100, 0, 2, 2, '2019-06-07 16:28:44', 'Wrench, Combination, 28mm, 12pt', 1, 2, '', 1),
(101, 0, 2, 2, '2019-06-07 16:38:30', 'Wrench, Combination, 28mm, 12pt', 1, 2, '', 1),
(102, 0, 2, 2, '2019-06-07 16:54:55', 'Wrench, Combination, 29mm, 12pt', 1, 2, '', 1),
(103, 0, 2, 2, '2019-06-07 16:56:11', 'Wrench, Combination, 29mm, 12pt', 1, 2, '', 1),
(104, 0, 2, 2, '2019-06-07 16:58:27', 'Wrench, Combination, 29mm, 12pt', 1, 2, '', 1),
(105, 0, 2, 2, '2019-06-10 14:45:20', 'Wrench, Combination, 30mm, 12pt', 1, 2, '', 1),
(106, 0, 2, 2, '2019-06-10 15:06:55', 'Wrench, Combination, 32mm, 12pt', 1, 2, '', 1),
(107, 0, 2, 2, '2019-06-10 15:26:54', 'Wrench, Combination, 36mm, 12pt', 1, 2, '', 1),
(108, 0, 2, 2, '2019-06-10 15:27:54', 'Wrench, Combination, 36mm, 12pt', 1, 2, '', 1),
(109, 0, 2, 2, '2019-06-10 15:28:39', 'Wrench, Combination, 38mm, 12pt', 1, 2, '', 1),
(110, 0, 2, 2, '2019-06-10 15:31:34', 'Wrench, Combination, 38mm, 12pt', 1, 2, '', 1),
(111, 0, 2, 2, '2019-06-10 15:32:35', 'Wrench, Combination, 40mm, 12pt', 1, 2, '', 1),
(112, 0, 2, 2, '2019-06-10 15:33:34', 'Wrench, Combination, 40mm, 12pt', 1, 2, '', 1),
(113, 0, 2, 2, '2019-06-10 15:34:27', 'Wrench, Combination, 40mm, 12pt', 1, 2, '', 1),
(114, 0, 2, 2, '2019-06-10 15:35:20', 'Wrench, Combination, 41mm, 12pt', 1, 2, '', 1),
(115, 0, 2, 2, '2019-06-10 15:38:50', 'Wrench, Combination, 45mm, 12pt', 1, 2, '', 1),
(116, 0, 2, 2, '2019-06-10 15:42:45', 'Wrench, Combination, 45mm, 12pt', 1, 2, '', 1),
(117, 0, 2, 2, '2019-06-10 15:43:37', 'Wrench, Combination, 45mm, 12pt', 1, 2, '', 1),
(118, 0, 2, 2, '2019-06-10 15:44:33', 'Wrench, Combination, 46mm, 12pt', 1, 2, '', 1),
(119, 0, 2, 2, '2019-06-10 15:45:24', 'Wrench, Combination, 50mm, 12pt', 1, 2, '', 1),
(120, 0, 2, 2, '2019-06-10 15:46:10', 'Wrench, Combination, 50mm, 12pt', 1, 2, '', 1),
(121, 15, 2, 2, '2019-06-13 13:32:18', 'Wrench, Combination, 8mm, 12pt', 1, 2, '', 1),
(122, 15, 2, 2, '2019-06-13 13:33:29', 'Wrench, Combination, 11mm, 12pt', 1, 2, '', 1),
(123, 15, 2, 2, '2019-06-13 13:34:18', 'Wrench, Combination, 12mm, 12pt', 1, 2, '', 1),
(124, 15, 2, 2, '2019-06-13 13:34:58', 'Wrench, Combination, 13mm, 12pt', 1, 2, '', 1),
(125, 15, 2, 2, '2019-06-13 13:36:32', 'Wrench, Combination, 14mm, 12pt', 1, 2, '', 1),
(126, 15, 2, 2, '2019-06-13 13:37:27', 'Wrench, Combination, 21mm, 12pt', 1, 2, '', 1),
(127, 15, 2, 2, '2019-06-13 13:39:51', 'Wrench, Combination, 22mm, 12pt', 1, 2, '', 1),
(128, 15, 2, 2, '2019-06-13 13:40:45', 'Wrench, Combination, 24mm, 12pt', 1, 2, '', 1),
(129, 0, 2, 2, '2019-06-14 11:04:42', 'Wrench, Open 12mm x 13mm', 1, 2, '', 1),
(130, 0, 2, 2, '2019-06-14 11:50:30', 'Wrench, Open 14mm x 15mm', 1, 2, '', 1),
(131, 0, 2, 2, '2019-06-14 11:51:22', 'Wrench, Open 30mm x 32mm', 1, 2, '', 1),
(132, 0, 2, 2, '2019-06-14 11:52:02', 'Wrench, Open 30mm x 32mm', 1, 2, '', 1),
(133, 0, 2, 2, '2019-06-14 11:52:42', 'Wrench, Open 36mm x 41mm', 1, 2, '', 1),
(134, 0, 2, 2, '2019-06-14 11:53:38', 'Wrench, Open 36mm x 41mm', 1, 2, '', 1),
(135, 0, 2, 2, '2019-06-14 11:54:17', 'Wrench, Open 46mm x 50mm', 1, 2, '', 1),
(136, 0, 2, 2, '2019-06-14 11:55:40', 'Wrench, Open 46mm x 50mm', 1, 2, '', 1),
(137, 0, 2, 2, '2019-06-14 13:17:37', 'Wrench, Open 55mm x 60mm', 1, 2, '', 1),
(138, 0, 2, 2, '2019-06-14 14:27:01', 'Wrench, Open 55mm x 60mm', 1, 2, '', 1),
(139, 0, 2, 2, '2019-06-14 14:28:00', 'Wrench, Open 65mm x 70mm', 1, 2, '', 1),
(140, 0, 2, 2, '2019-06-14 14:29:00', 'Wrench, Open 65mm x 70mm', 1, 2, '', 1),
(141, 0, 2, 2, '2019-06-14 14:29:49', 'Wrench, Open 65mm x 70mm', 1, 2, '', 1),
(142, 0, 2, 2, '2019-06-14 14:30:36', 'Wrench, Open 43mm', 1, 2, '', 1),
(143, 0, 2, 2, '2019-06-14 14:34:38', 'Wrench, Open 55mm', 1, 2, '', 1),
(144, 0, 2, 2, '2019-06-17 11:52:00', 'Wrench, Allen 1mm', 1, 2, '', 1),
(145, 0, 2, 2, '2019-06-17 11:52:45', 'Wrench, Allen 1mm', 1, 2, '', 1),
(146, 0, 2, 2, '2019-06-17 11:53:19', 'Wrench, Allen 2mm', 1, 2, '', 1),
(147, 0, 2, 2, '2019-06-17 11:53:55', 'Wrench, Allen 2mm', 1, 2, '', 1),
(148, 0, 2, 2, '2019-06-17 11:54:29', 'Wrench, Allen 2mm', 1, 2, '', 1),
(149, 0, 2, 2, '2019-06-17 11:54:55', 'Wrench, Allen 6mm', 1, 2, '', 1),
(150, 0, 2, 2, '2019-06-17 11:55:31', 'Wrench, Allen 8mm', 1, 2, '', 1),
(151, 0, 2, 2, '2019-06-17 11:56:01', 'Wrench, Allen 8mm', 1, 2, '', 1),
(152, 0, 2, 2, '2019-06-17 11:56:44', 'Wrench, Allen 8mm', 1, 2, '', 1),
(153, 0, 2, 2, '2019-06-17 11:57:29', 'Wrench, Allen 10mm', 1, 2, '', 1),
(154, 0, 2, 2, '2019-06-17 11:58:10', 'Wrench, Allen 12mm', 1, 2, '', 1),
(155, 0, 2, 2, '2019-06-17 13:18:52', 'Wrench, Allen 12mm', 1, 2, '', 1),
(156, 0, 2, 2, '2019-06-17 13:19:32', 'Wrench, Allen 12mm', 1, 2, '', 1),
(157, 0, 2, 2, '2019-06-17 13:40:12', 'Wrench, Allen 14mm', 1, 2, '', 1),
(158, 0, 2, 2, '2019-06-17 13:47:19', 'Wrench, Allen 14mm', 1, 2, '', 1),
(159, 0, 2, 2, '2019-06-17 13:54:18', 'Wrench, Allen 17mm', 1, 2, '', 1),
(160, 0, 2, 2, '2019-06-17 13:54:54', 'Wrench, Allen 17mm', 1, 2, '', 1),
(161, 0, 2, 2, '2019-06-17 13:55:39', 'Wrench, Allen 17mm', 1, 2, '', 1),
(162, 0, 2, 2, '2019-06-17 13:56:45', 'Wrench, Allen 17mm', 1, 2, '', 1),
(163, 0, 2, 2, '2019-06-17 13:57:22', 'Wrench, Allen 19mm', 1, 2, '', 1),
(164, 0, 2, 2, '2019-06-17 13:58:03', 'Wrench, Allen 22mm', 1, 2, '', 1),
(165, 0, 2, 2, '2019-06-17 13:58:33', 'Wrench, Allen 22mm', 1, 2, '', 1),
(166, 0, 2, 2, '2019-06-17 13:59:18', 'Wrench, Allen 22mm', 1, 2, '', 1),
(167, 0, 2, 2, '2019-06-17 13:59:52', 'Wrench, Allen 22mm', 1, 2, '', 1),
(168, 0, 2, 2, '2019-06-17 14:10:33', 'Wrench, Pipe 18 inches', 1, 2, '', 1),
(169, 0, 2, 2, '2019-06-17 14:11:42', 'Wrench, Pipe 18 inches', 1, 2, '', 1),
(170, 0, 2, 2, '2019-06-17 14:12:44', 'Wrench, Pipe 18 inches', 1, 2, '', 1),
(171, 0, 2, 2, '2019-06-17 14:13:11', 'Wrench, Pipe 24 inches', 1, 2, '', 1),
(172, 0, 2, 2, '2019-06-17 14:13:44', 'Wrench, Pipe 24 inches', 1, 2, '', 1),
(173, 0, 2, 2, '2019-06-17 14:14:23', 'Wrench, Pipe 24 inches', 1, 2, '', 1),
(174, 0, 2, 2, '2019-06-17 14:15:15', 'Wrench, Pipe 36 inches', 1, 2, '', 1),
(175, 0, 2, 2, '2019-06-17 14:15:53', 'Wrench, Pipe 36 inches', 1, 2, '', 1),
(176, 0, 2, 2, '2019-06-17 14:52:26', 'Wrench, Slug 32mm, 12pt', 1, 2, '', 1),
(177, 0, 2, 2, '2019-06-17 14:53:11', 'Wrench, Slug 32mm, 12pt', 1, 2, '', 1),
(178, 0, 2, 2, '2019-06-17 14:53:43', 'Wrench, Slug 41mm, 12pt', 1, 2, '', 1),
(179, 0, 2, 2, '2019-06-17 14:54:26', 'Wrench, Slug 41mm, 12pt', 1, 2, '', 1),
(180, 0, 2, 2, '2019-06-17 14:55:23', 'Wrench, Slug 46mm, 12pt', 1, 2, '', 1),
(181, 0, 2, 2, '2019-06-17 14:56:31', 'Wrench, Slug 46mm, 12pt', 1, 2, '', 1),
(182, 0, 2, 2, '2019-06-17 14:57:35', 'Wrench, Slug 46mm, 12pt', 1, 2, '', 1),
(183, 0, 2, 2, '2019-06-17 14:58:23', 'Wrench, Slug 46mm, 12pt', 1, 2, '', 1),
(184, 0, 2, 2, '2019-06-17 14:59:05', 'Wrench, Slug 55mm, 12pt', 1, 2, '', 1),
(185, 0, 2, 2, '2019-06-17 15:00:00', 'Wrench, Slug 60mm, 12pt', 1, 2, '', 1),
(186, 0, 2, 2, '2019-06-17 15:01:02', 'Wrench, Slug 63mm, 12pt', 1, 2, '', 1),
(187, 0, 2, 2, '2019-06-17 15:01:51', 'Wrench, Slug 63mm, 12pt', 1, 2, '', 1),
(188, 0, 2, 2, '2019-06-17 15:02:31', 'Wrench, Slug 95mm, 12pt', 1, 2, '', 1),
(189, 0, 2, 2, '2019-06-19 09:21:22', '1/2 inches DR 6pt Socket - 11mm', 1, 2, '', 1),
(190, 0, 2, 2, '2019-06-19 09:22:16', '1/2 inches DR 6pt Socket - 13mm', 1, 2, '', 1),
(191, 0, 2, 2, '2019-06-19 09:23:00', '1/2 inches DR 6pt Socket - 14mm', 1, 2, '', 1),
(192, 0, 2, 2, '2019-06-19 09:49:02', '1/2 inches DR 6pt Socket - 14mm', 1, 2, '', 1),
(193, 0, 2, 2, '2019-06-19 09:49:49', '1/2 inches DR 6pt Socket - 15mm', 1, 2, '', 1),
(194, 0, 2, 2, '2019-06-19 09:50:49', '1/2 inches DR 6pt Socket - 17mm', 1, 2, '', 1),
(195, 0, 2, 2, '2019-06-19 09:52:10', '1/2 inches DR 6pt Socket - 19mm', 1, 2, '', 1),
(196, 0, 2, 2, '2019-06-19 09:53:05', '1/2 inches DR 6pt Socket - 20mm', 1, 2, '', 1),
(197, 0, 2, 2, '2019-06-19 09:53:55', '1/2 inches DR 6pt Socket - 21mm', 1, 2, '', 1),
(198, 0, 2, 2, '2019-06-19 09:55:14', '1/2 inches DR 6pt Socket - 21mm', 1, 2, '', 1),
(199, 0, 2, 2, '2019-06-19 09:56:05', '1/2 inches DR 6pt Socket - 22mm', 1, 2, '', 1),
(200, 0, 2, 2, '2019-06-19 10:00:02', '1/2 inches DR 6pt Socket - 23mm', 1, 2, '', 1),
(201, 0, 2, 2, '2019-06-19 10:01:05', '1/2 inches DR 6pt Socket - 23mm', 1, 2, '', 1),
(202, 0, 2, 2, '2019-06-19 10:02:44', '1/2 inches DR 6pt Socket - 24mm', 1, 2, '', 1),
(203, 0, 2, 2, '2019-06-19 10:06:08', '1/2 inches DR 6pt Socket - 27mm', 1, 2, '', 1),
(204, 0, 2, 2, '2019-06-19 10:06:58', '1/2 inches DR 6pt Socket - 30mm', 1, 2, '', 1),
(205, 0, 2, 2, '2019-06-19 10:27:24', '1/2 inches DR 6pt Socket - 32mm', 1, 2, '', 1),
(206, 0, 2, 2, '2019-06-19 10:29:13', '1/2 inches DR 6pt Socket - 32mm', 1, 2, '', 1),
(207, 0, 2, 2, '2019-06-19 10:44:56', '1/2 inches DR 6pt Socket - 32mm', 1, 2, '', 1),
(208, 0, 2, 2, '2019-06-19 10:45:57', '1/2 inches DR 6pt Socket - 32mm', 1, 2, '', 1),
(209, 0, 2, 2, '2019-06-20 11:15:50', '1/2 inches DR 12pt Socket - 11mm', 1, 2, '', 1),
(210, 0, 2, 2, '2019-06-20 11:16:41', '1/2 inches DR 12pt Socket - 11mm', 1, 2, '', 1),
(211, 0, 2, 2, '2019-06-20 11:19:56', '1/2 inches DR 12pt Socket - 11mm', 1, 2, '', 1),
(212, 0, 2, 2, '2019-06-20 11:20:41', '1/2 inches DR 12pt Socket - 12mm', 1, 2, '', 1),
(213, 0, 2, 2, '2019-06-20 11:21:39', '1/2 inches DR 12pt Socket - 13mm', 1, 2, '', 1),
(214, 0, 2, 2, '2019-06-20 11:22:31', '1/2 inches DR 12pt Socket - 14mm', 1, 2, '', 1),
(215, 0, 2, 2, '2019-06-20 11:23:40', '1/2 inches DR 12pt Socket - 14mm', 1, 2, '', 1),
(216, 0, 2, 2, '2019-06-20 11:35:03', '1/2 inches DR 12pt Socket - 15mm', 1, 2, '', 1),
(217, 0, 2, 2, '2019-06-20 11:42:22', '1/2 inches DR 12pt Socket - 15mm', 1, 2, '', 1),
(218, 0, 2, 2, '2019-06-20 11:57:44', '1/2 inches DR 12pt Socket - 15mm', 1, 2, '', 1),
(219, 0, 2, 2, '2019-06-20 11:58:36', '1/2 inches DR 12pt Socket - 15mm', 1, 2, '', 1),
(220, 0, 2, 2, '2019-06-20 13:14:18', '1/2 inches DR 12pt Socket - 16mm', 1, 2, '', 1),
(221, 0, 2, 2, '2019-06-20 13:19:03', '1/2 inches DR 12pt Socket - 16mm', 1, 2, '', 1),
(222, 0, 2, 2, '2019-06-20 13:20:05', '1/2 inches DR 12pt Socket - 16mm', 1, 2, '', 1),
(223, 0, 2, 2, '2019-06-20 13:22:31', '1/2 inches DR 12pt Socket - 18mm', 1, 2, '', 1),
(224, 58, 2, 2, '2019-06-21 15:55:40', 'Wrench, Combination, 8mm, 12pt', 1, 2, '', 1),
(225, 58, 2, 2, '2019-06-21 15:56:39', 'Wrench, Combination, 10mm, 12pt', 1, 2, '', 1),
(226, 58, 2, 2, '2019-06-21 15:57:09', 'Wrench, Combination, 12mm, 12pt', 1, 2, '', 1),
(227, 58, 2, 2, '2019-06-21 15:57:47', 'Wrench, Combination, 14mm, 12pt', 1, 2, '', 1),
(228, 58, 2, 2, '2019-06-21 16:00:13', 'Wrench, Combination, 17mm, 12pt', 1, 2, '', 1),
(229, 0, 2, 2, '2019-06-21 16:04:46', '1/2 inches DR 12pt Socket - 18mm', 1, 2, '', 1),
(230, 0, 2, 2, '2019-06-21 16:06:11', '1/2 inches DR 12pt Socket - 19mm', 1, 2, '', 1),
(231, 0, 2, 2, '2019-06-21 16:24:37', '1/2 inches DR 12pt Socket - 19mm', 1, 2, '', 1),
(232, 0, 2, 2, '2019-06-21 16:26:06', '1/2 inches DR 12pt Socket - 19mm', 1, 2, '', 1),
(233, 0, 2, 2, '2019-06-21 16:29:03', '1/2 inches DR 12pt Socket - 20mm', 1, 2, '', 1),
(234, 0, 2, 2, '2019-06-21 16:46:52', '1/2 inches DR 12pt Socket - 20mm', 1, 2, '', 1),
(235, 0, 2, 2, '2019-06-21 16:47:40', '1/2 inches DR 12pt Socket - 20mm', 1, 2, '', 1),
(236, 0, 2, 2, '2019-06-21 16:48:48', '1/2 inches DR 12pt Socket - 20mm', 1, 2, '', 1),
(237, 0, 2, 2, '2019-06-21 16:49:22', '1/2 inches DR 12pt Socket - 20mm', 1, 2, '', 1),
(238, 5, 1, 12, '2019-06-22 11:02:22', 'Laptop', 1, 3, '', 1),
(239, 5, 1, 12, '2019-06-22 11:09:14', 'Charger, Universal', 1, 2, '', 1),
(240, 0, 2, 2, '2019-06-24 16:37:43', '1/2 inches DR 12pt Socket - 21mm', 1, 2, '', 1),
(241, 0, 2, 2, '2019-06-24 16:44:14', '1/2 inches DR 12pt Socket - 21mm', 1, 2, '', 1),
(242, 0, 2, 2, '2019-06-25 09:20:10', '1/2 inches DR 12pt Socket - 21mm', 1, 2, '', 1),
(243, 0, 2, 2, '2019-06-25 09:20:59', '1/2 inches DR 12pt Socket - 21mm', 1, 2, '', 1),
(244, 0, 2, 2, '2019-06-25 09:22:11', '1/2 inches DR 12pt Socket - 21mm', 1, 2, '', 1),
(245, 0, 2, 2, '2019-06-25 09:23:14', '1/2 inches DR 12pt Socket - 22mm', 1, 2, '', 1),
(246, 0, 2, 2, '2019-06-25 09:24:10', '1/2 inches DR 12pt Socket - 22mm', 1, 2, '', 1),
(247, 0, 2, 2, '2019-06-25 09:24:49', '1/2 inches DR 12pt Socket - 22mm', 1, 2, '', 1),
(248, 0, 2, 2, '2019-06-25 09:26:10', '1/2 inches DR 12pt Socket - 23mm', 1, 2, '', 1),
(249, 0, 2, 2, '2019-06-25 09:26:58', '1/2 inches DR 12pt Socket - 23mm', 1, 2, '', 1),
(250, 0, 2, 2, '2019-06-25 09:27:38', '1/2 inches DR 12pt Socket - 24mm', 1, 2, '', 1),
(251, 0, 2, 2, '2019-06-25 09:28:14', '1/2 inches DR 12pt Socket - 24mm', 1, 2, '', 1),
(252, 0, 2, 2, '2019-06-25 09:29:47', '1/2 inches DR 12pt Socket - 24mm', 1, 2, '', 1),
(253, 0, 2, 2, '2019-06-25 09:30:26', '1/2 inches DR 12pt Socket - 24mm', 1, 2, '', 1),
(254, 0, 2, 2, '2019-06-25 09:31:25', '1/2 inches DR 12pt Socket - 24mm', 1, 2, '', 1),
(255, 0, 2, 2, '2019-06-25 10:32:54', '1/2 inches DR 12pt Socket - 24mm', 1, 2, '', 1),
(256, 0, 2, 2, '2019-06-25 10:33:32', '1/2 inches DR 12pt Socket - 24mm', 1, 2, '', 1),
(257, 0, 2, 2, '2019-06-25 10:35:04', '1/2 inches DR 12pt Socket - 24mm', 1, 2, '', 1),
(258, 0, 2, 2, '2019-06-25 10:35:55', '1/2 inches DR 12pt Socket - 24mm', 1, 2, '', 1),
(259, 0, 2, 2, '2019-06-25 10:36:48', '1/2 inches DR 12pt Socket - 25mm', 1, 2, '', 1),
(260, 0, 2, 2, '2019-06-25 10:37:38', '1/2 inches DR 12pt Socket - 25mm', 1, 2, '', 1),
(261, 0, 2, 2, '2019-06-25 10:38:16', '1/2 inches DR 12pt Socket - 25mm', 1, 2, '', 1),
(262, 0, 2, 2, '2019-06-25 10:39:37', '1/2 inches DR 12pt Socket - 25mm', 1, 2, '', 1),
(263, 0, 2, 2, '2019-06-25 10:40:17', '1/2 inches DR 12pt Socket - 25mm', 1, 2, '', 1),
(264, 0, 2, 2, '2019-06-25 10:42:53', '1/2 inches DR 12pt Socket - 25mm', 1, 2, '', 1),
(265, 0, 2, 2, '2019-06-25 11:30:35', '1/2 inches DR 12pt Socket - 26mm', 1, 2, '', 1),
(267, 0, 2, 2, '2019-06-25 13:28:19', '1/2 inches DR 12pt Socket - 26mm', 1, 2, '', 1),
(268, 0, 2, 2, '2019-06-25 13:29:13', '1/2 inches DR 12pt Socket - 26mm', 1, 2, '', 1),
(269, 0, 2, 2, '2019-06-25 13:30:48', '1/2 inches DR 12pt Socket - 26mm', 1, 2, '', 1),
(270, 0, 2, 2, '2019-06-25 13:32:09', '1/2 inches DR 12pt Socket - 27mm', 1, 2, '', 1),
(271, 0, 2, 2, '2019-06-25 13:33:09', '1/2 inches DR 12pt Socket - 27mm', 1, 2, '', 1),
(272, 0, 2, 2, '2019-06-25 13:41:40', '1/2 inches DR 12pt Socket - 27mm', 1, 2, '', 1),
(273, 0, 2, 2, '2019-06-25 13:43:08', '1/2 inches DR 12pt Socket - 27mm', 1, 2, '', 1),
(274, 0, 2, 2, '2019-06-25 13:44:15', '1/2 inches DR 12pt Socket - 27mm', 1, 2, '', 1),
(275, 0, 2, 2, '2019-06-25 13:45:13', '1/2 inches DR 12pt Socket - 27mm', 1, 2, '', 1),
(276, 0, 2, 2, '2019-06-25 13:45:55', '1/2 inches DR 12pt Socket - 27mm', 1, 2, '', 1),
(277, 0, 2, 2, '2019-06-25 13:46:56', '1/2 inches DR 12pt Socket - 27mm', 1, 2, '', 1),
(278, 0, 2, 2, '2019-06-25 13:48:21', '1/2 inches DR 12pt Socket - 30mm', 1, 2, '', 1),
(279, 0, 2, 2, '2019-06-25 13:49:37', '1/2 inches DR 12pt Socket - 30mm', 1, 2, '', 1),
(280, 0, 2, 2, '2019-06-25 14:09:08', '1/2 inches DR 12pt Socket - 30mm', 1, 2, '', 1),
(281, 0, 2, 2, '2019-06-25 14:10:16', '1/2 inches DR 12pt Socket - 30mm', 1, 2, '', 1),
(282, 0, 2, 2, '2019-06-25 14:11:03', '1/2 inches DR 12pt Socket - 30mm', 1, 2, '', 1),
(283, 0, 2, 2, '2019-06-25 14:37:29', '1/2 inches DR 12pt Socket - 32mm', 1, 2, '', 1),
(284, 0, 2, 2, '2019-06-25 14:38:15', '1/2 inches DR 12pt Socket - 32mm', 1, 2, '', 1),
(285, 0, 2, 2, '2019-06-25 14:39:03', '1/2 inches DR 12pt Socket - 32mm', 1, 2, '', 1),
(286, 0, 2, 2, '2019-06-25 14:39:39', '1/2 inches DR 12pt Socket - 32mm', 1, 2, '', 1),
(287, 0, 2, 2, '2019-06-25 14:40:35', '1/2 inches DR 12pt Socket - 32mm', 1, 2, '', 1),
(288, 0, 2, 2, '2019-06-25 14:41:56', '1/2 inches DR 12pt Socket - 36mm', 1, 2, '', 1),
(289, 0, 2, 2, '2019-06-25 14:42:32', '1/2 inches DR 12pt Socket - 36mm', 1, 2, '', 1),
(290, 0, 2, 2, '2019-06-25 16:05:54', '3/4 inches DR 12pt Socket - 17mm', 1, 2, '', 1),
(291, 0, 2, 2, '2019-06-25 16:06:49', '3/4 inches DR 12pt Socket - 19mm', 1, 2, '', 1),
(292, 0, 2, 2, '2019-06-25 16:07:31', '3/4 inches DR 12pt Socket - 21mm', 1, 2, '', 1),
(293, 0, 2, 2, '2019-06-26 09:13:17', '3/4 inches DR 12pt Socket - 22mm', 1, 2, '', 1),
(294, 0, 2, 2, '2019-06-26 09:14:12', '3/4 inches DR 12pt Socket - 22mm', 1, 2, '', 1),
(295, 0, 2, 2, '2019-06-26 09:14:56', '3/4 inches DR 12pt Socket - 22mm', 1, 2, '', 1),
(296, 0, 2, 2, '2019-06-26 09:15:43', '3/4 inches DR 12pt Socket - 23mm', 1, 2, '', 1),
(297, 0, 2, 2, '2019-06-26 09:16:41', '3/4 inches DR 12pt Socket - 23mm', 1, 2, '', 1),
(298, 0, 2, 2, '2019-06-26 09:17:32', '3/4 inches DR 12pt Socket - 24mm', 1, 2, '', 1),
(299, 0, 2, 2, '2019-06-26 09:20:15', '3/4 inches DR 12pt Socket - 24mm', 1, 2, '', 1),
(300, 0, 2, 2, '2019-06-26 09:20:57', '3/4 inches DR 12pt Socket - 24mm', 1, 2, '', 1),
(301, 0, 2, 2, '2019-06-26 09:21:40', '3/4 inches DR 12pt Socket - 24mm', 1, 2, '', 1),
(302, 0, 2, 2, '2019-06-26 09:52:37', '3/4 inches DR 12pt Socket - 27mm', 1, 2, '', 1),
(303, 0, 2, 2, '2019-06-26 09:53:16', '3/4 inches DR 12pt Socket - 27mm', 1, 2, '', 1),
(304, 0, 2, 2, '2019-06-26 09:54:24', '3/4 inches DR 12pt Socket - 27mm', 1, 2, '', 1),
(305, 0, 2, 2, '2019-06-26 09:56:57', '3/4 inches DR 12pt Socket - 30mm', 1, 2, '', 1),
(306, 0, 2, 2, '2019-06-26 10:34:09', '3/4 inches DR 12pt Socket - 32mm', 1, 2, '', 1),
(307, 0, 2, 2, '2019-06-26 16:25:27', '3/4 inches DR 12pt Socket - 36mm', 1, 2, '', 1),
(308, 0, 2, 2, '2019-06-26 16:33:23', '3/4 inches DR 12pt Socket - 41mm', 1, 2, '', 1),
(309, 0, 2, 2, '2019-06-26 16:34:03', '3/4 inches DR 12pt Socket - 42mm', 1, 2, '', 1),
(310, 0, 2, 2, '2019-06-26 16:36:11', '3/4 inches DR 12pt Socket - 46mm', 1, 2, '', 1),
(311, 0, 2, 2, '2019-06-26 16:36:42', '3/4 inches DR 12pt Socket - 46mm', 1, 2, '', 1),
(312, 0, 2, 2, '2019-06-26 16:37:35', '3/4 inches DR 12pt Socket - 50mm', 1, 2, '', 1),
(313, 0, 2, 2, '2019-06-26 16:38:26', '3/4 inches DR 12pt Socket - 55mm', 1, 2, '', 1),
(314, 0, 2, 2, '2019-06-26 16:39:23', '3/4 inches DR 12pt Socket - 55mm', 1, 2, '', 1),
(315, 0, 2, 2, '2019-06-26 16:39:56', '3/4 inches DR 12pt Socket - 55mm', 1, 2, '', 1),
(316, 0, 2, 2, '2019-06-26 16:40:32', '3/4 inches DR 12pt Socket - 56mm', 1, 2, '', 1),
(317, 0, 2, 2, '2019-06-26 16:41:14', '3/4 inches DR 12pt Socket - 61mm', 1, 2, '', 1),
(318, 0, 2, 2, '2019-06-27 09:24:14', '1 inches DR 6pt Socket - 60mm', 1, 2, '', 1),
(319, 0, 2, 2, '2019-06-27 09:25:26', '1 inches DR 6pt Socket - 60mm', 1, 2, '', 1),
(320, 0, 2, 2, '2019-06-27 10:42:38', '1 inches DR 12pt Socket - 35mm ', 1, 2, '', 1),
(321, 0, 2, 2, '2019-06-27 10:43:23', '1 inches DR 12pt Socket - 36mm', 1, 2, '', 1),
(322, 0, 2, 2, '2019-06-27 10:46:21', '1 inches DR 12pt Socket - 54mm', 1, 2, '', 1),
(323, 0, 2, 2, '2019-06-27 10:48:49', '1 inches DR 12pt Socket - 56mm', 1, 2, '', 1),
(324, 0, 2, 2, '2019-06-27 10:50:46', '1 inches DR 12pt Socket - 67mm', 1, 2, '', 1),
(325, 0, 2, 2, '2019-06-27 10:59:39', '1 inches DR 12pt Socket - 67mm', 1, 2, '', 1),
(326, 0, 2, 2, '2019-06-27 11:01:43', '1/2 inches DR 12pt Impact Socket - 8mm', 1, 2, '', 1),
(327, 0, 2, 2, '2019-06-27 11:02:38', '1/2 inches DR 12pt Impact Socket - 11mm', 1, 2, '', 1),
(328, 0, 2, 2, '2019-06-27 11:03:16', '1/2 inches DR 12pt Impact Socket - 14mm', 1, 2, '', 1),
(329, 0, 2, 2, '2019-06-27 11:13:03', '1/2 inches DR 12pt Impact Socket - 16mm', 1, 2, '', 1),
(330, 0, 2, 2, '2019-06-27 11:18:55', '1/2 inches DR 12pt Impact Socket - 17mm', 1, 2, '', 1),
(331, 0, 2, 2, '2019-06-27 11:19:54', '1/2 inches DR 12pt Impact Socket - 18mm', 1, 2, '', 1),
(332, 0, 2, 2, '2019-06-27 11:21:42', '1/2 inches DR 12pt Impact Socket - 20mm', 1, 2, '', 1),
(333, 0, 2, 2, '2019-06-27 11:22:50', '1/2 inches DR 12pt Impact Socket - 21mm', 1, 2, '', 1),
(334, 0, 2, 2, '2019-06-27 11:23:41', '1/2 inches DR 12pt Impact Socket - 22mm', 1, 2, '', 1),
(335, 0, 2, 2, '2019-06-27 11:26:07', '1/2 inches DR 12pt Impact Socket - 23mm', 1, 2, '', 1),
(336, 0, 2, 2, '2019-06-27 11:28:05', '1/2 inches DR 12pt Impact Socket - 23mm', 1, 2, '', 1),
(337, 0, 2, 2, '2019-06-27 11:28:49', '1/2 inches DR 12pt Impact Socket - 27mm', 1, 2, '', 1),
(338, 0, 2, 2, '2019-06-27 11:29:27', '1/2 inches DR 12pt Impact Socket - 27mm', 1, 2, '', 1),
(339, 0, 2, 2, '2019-06-27 11:30:08', '1/2 inches DR 12pt Impact Socket - 30mm', 1, 2, '', 1),
(340, 0, 2, 14, '2019-06-27 11:30:51', '1/2 inches DR 12pt Impact Socket - 32mm', 1, 2, '', 1),
(341, 0, 2, 2, '2019-06-27 11:31:42', '1/2 inches DR 12pt Impact Socket - 32mm', 1, 2, '', 1),
(342, 0, 2, 2, '2019-06-28 13:58:20', '3/4 inches DR 6pt Impact Socket - 43mm', 1, 2, '', 1),
(343, 0, 2, 2, '2019-06-28 13:58:58', '3/4 inches DR 6pt Impact Socket - 48mm', 1, 2, '', 1),
(344, 0, 2, 2, '2019-06-28 13:59:39', '3/4 inches DR 6pt Impact Socket - 57mm', 1, 2, '', 1),
(345, 0, 2, 2, '2019-06-28 14:00:22', '1 inches DR 6pt Impact Socket - 38mm', 1, 2, '', 1),
(346, 0, 2, 2, '2019-06-28 14:01:07', '1 inches DR 6pt Impact Socket - 41mm', 1, 2, '', 1),
(347, 0, 2, 2, '2019-06-28 14:01:47', '1 inches DR 6pt Impact Socket - 41mm', 1, 2, '', 1),
(348, 0, 2, 2, '2019-06-28 14:04:18', '1 inches DR 6pt Impact Socket - 41mm', 1, 2, '', 1),
(349, 0, 2, 2, '2019-06-28 14:06:50', '1 inches DR 6pt Impact Socket - 45mm', 1, 2, '', 1),
(350, 0, 2, 2, '2019-06-28 14:40:13', '1 inches DR 6pt Impact Socket - 45mm', 1, 2, '', 1),
(351, 0, 2, 2, '2019-06-28 14:41:41', '1 inches DR 6pt Impact Socket - 46mm', 1, 2, '', 1),
(352, 0, 2, 2, '2019-06-28 14:49:01', '1 inches DR 6pt Impact Socket - 47mm', 1, 2, '', 1),
(353, 0, 2, 2, '2019-06-28 14:51:26', '1 inches DR 6pt Impact Socket - 64mm', 1, 2, '', 1),
(354, 0, 2, 2, '2019-07-01 11:41:32', '1/4 inches DR Crowfoot Wrench - 8mm', 1, 2, '', 1),
(355, 0, 2, 2, '2019-07-01 11:45:01', '1/4 inches DR Crowfoot Wrench - 19mm', 1, 2, '', 1),
(356, 0, 2, 2, '2019-07-01 11:45:41', '1/4 inches DR Crowfoot Wrench - 10mm', 1, 2, '', 1),
(357, 0, 2, 2, '2019-07-01 11:46:28', '1/4 inches DR Crowfoot Wrench - 11mm', 1, 2, '', 1),
(358, 0, 2, 2, '2019-07-01 11:47:21', '1/4 inches DR Crowfoot Wrench - 12mm', 1, 2, '', 1),
(359, 0, 2, 2, '2019-07-01 11:48:33', '1/4 inches DR Crowfoot Wrench - 13mm', 1, 2, '', 1),
(360, 0, 2, 2, '2019-07-01 11:51:00', '1/4 inches DR Crowfoot Wrench - 14mm', 1, 2, '', 1),
(361, 0, 2, 2, '2019-07-01 11:52:38', '1/4 inches DR Crowfoot Wrench - 15mm', 1, 2, '', 1),
(362, 0, 2, 2, '2019-07-01 11:58:40', '1/4 inches DR Crowfoot Wrench - 16mm', 1, 2, '', 1),
(363, 0, 2, 2, '2019-07-01 12:00:35', '1/4 inches DR Crowfoot Wrench - 17mm', 1, 2, '', 1),
(364, 0, 2, 2, '2019-07-01 12:01:32', '1/4 inches DR Crowfoot Wrench - 18mm', 1, 2, '', 1),
(365, 0, 2, 2, '2019-07-01 12:02:28', '1/4 inches DR Crowfoot Wrench - 19mm', 1, 2, '', 1),
(367, 0, 2, 2, '2019-07-01 12:05:06', '1/2 inches DR Crowfoot Wrench - 21mm', 1, 2, '', 1),
(368, 0, 2, 2, '2019-07-01 13:52:22', '1/2 inches DR Crowfoot Wrench - 22mm', 1, 2, '', 1),
(369, 0, 2, 2, '2019-07-01 13:53:22', '1/2 inches DR Crowfoot Wrench - 24mm', 1, 2, '', 1),
(370, 0, 2, 2, '2019-07-02 13:56:12', 'Punch, Hallow, 3mm', 1, 2, '', 1),
(371, 0, 2, 2, '2019-07-02 13:56:55', 'Punch, Hallow, 4mm', 1, 2, '', 1),
(372, 0, 2, 2, '2019-07-02 13:57:53', 'Punch, Hallow, 5mm', 1, 2, '', 1),
(373, 0, 2, 2, '2019-07-02 13:58:44', 'Punch, Hallow, 6mm', 1, 2, '', 1),
(374, 0, 2, 2, '2019-07-02 13:59:25', 'Punch, Hallow, 7mm', 1, 2, '', 1),
(375, 0, 2, 2, '2019-07-02 14:00:17', 'Punch, Hallow, 8mm', 1, 2, '', 1),
(376, 0, 2, 2, '2019-07-02 14:01:15', 'Punch, Hallow, 10mm', 1, 2, '', 1),
(377, 0, 2, 2, '2019-07-02 14:08:34', 'Punch, Hallow, 11mm', 1, 2, '', 1),
(378, 0, 2, 2, '2019-07-02 14:09:37', 'Punch, Hallow, 12mm', 1, 2, '', 1),
(379, 0, 2, 2, '2019-07-02 14:10:10', 'Punch, Hallow, 14mm', 1, 2, '', 1),
(380, 0, 2, 2, '2019-07-02 14:10:39', 'Punch, Hallow, 16mm', 1, 2, '', 1),
(381, 0, 2, 2, '2019-07-02 14:11:14', 'Punch, Hallow, 19mm', 1, 2, '', 1),
(382, 0, 2, 2, '2019-07-02 14:36:32', 'Wrench, Combination, 17mm, 12pt', 1, 2, '', 1),
(383, 0, 2, 2, '2019-07-02 15:56:59', 'Wrench, Combination, 17mm, 12pt', 1, 2, '', 1),
(384, 0, 2, 2, '2019-07-02 16:00:56', 'Wrench, Combination, 17mm, 12pt', 1, 2, '', 1),
(385, 0, 2, 2, '2019-07-02 16:01:40', 'Wrench, Combination, 17mm, 12pt', 1, 2, '', 1),
(386, 0, 2, 2, '2019-07-02 16:02:13', 'Wrench, Combination, 29mm, 12pt', 1, 2, '', 1),
(387, 0, 2, 2, '2019-07-03 11:04:41', 'Tap, Hand, M8 x 1.0mm', 1, 1, '', 1),
(388, 0, 2, 2, '2019-07-03 11:55:18', 'Tap, Hand, M10 x 1.0mm', 1, 1, '', 1),
(389, 0, 2, 2, '2019-07-03 13:48:09', 'Tap, Hand, M10 x 1.0mm', 1, 1, '', 1),
(390, 0, 2, 2, '2019-07-03 14:11:51', 'Tap, Hand, M10 x 1.0mm', 1, 1, '', 1),
(391, 0, 2, 2, '2019-07-03 14:22:04', 'Tap, Hand, M10 x 1.5mm', 1, 1, '', 1),
(392, 0, 2, 2, '2019-07-03 14:23:26', 'Tap, Hand, M10 x 1.5mm', 1, 2, '', 1),
(393, 0, 2, 2, '2019-07-03 14:24:03', 'Tap, Hand, M12 x 1.5mm', 1, 1, '', 1),
(394, 0, 2, 2, '2019-07-03 14:24:37', 'Tap, Hand, M12 x 1.5mm', 1, 1, '', 1),
(395, 0, 2, 2, '2019-07-03 14:25:19', 'Tap, Hand, M12 x 1.75mm', 1, 1, '', 1),
(396, 0, 2, 2, '2019-07-03 14:25:55', 'Tap, Hand, M12 x 1.75mm', 2, 2, '', 1),
(397, 0, 2, 2, '2019-07-03 14:26:49', 'Tap, Hand, M13 x 2.0mm', 1, 2, '', 1),
(398, 0, 2, 2, '2019-07-03 14:27:26', 'Tap, Hand, M14 x 1.25mm', 1, 1, '', 1),
(399, 0, 2, 2, '2019-07-03 14:38:54', 'Tap, Hand, M14 x 1.75mm', 1, 2, '', 1),
(400, 0, 2, 2, '2019-07-03 14:39:48', 'Tap, Hand, M14 x 1.75mm', 1, 1, '', 1),
(401, 0, 2, 2, '2019-07-03 14:40:40', 'Tap, Hand, M14 x 2.0mm', 1, 1, '', 1),
(402, 0, 2, 2, '2019-07-03 14:41:19', 'Tap, Hand, M15 x 2.0mm', 1, 1, '', 1),
(403, 0, 2, 2, '2019-07-03 14:41:53', 'Tap, Hand, M15 x 2.0mm', 1, 1, '', 1),
(404, 0, 2, 2, '2019-07-03 14:42:30', 'Tap, Hand, M16 x 1.5mm', 2, 2, '', 1),
(405, 0, 2, 2, '2019-07-03 14:43:01', 'Tap, Hand, M16 x 2.0mm', 1, 1, '', 1),
(406, 0, 2, 2, '2019-07-03 14:43:40', 'Tap, Hand, M16 x 2.0mm', 1, 2, '', 1),
(407, 0, 2, 2, '2019-07-03 14:44:13', 'Tap, Hand, M18 x 1.25mm', 1, 1, '', 1),
(408, 0, 2, 2, '2019-07-03 14:44:47', 'Tap, Hand, M18 x 1.5mm', 1, 1, '', 1),
(409, 0, 2, 2, '2019-07-03 14:45:31', 'Tap, Hand, M18 x 1.75mm', 1, 1, '', 1),
(410, 0, 2, 2, '2019-07-03 14:46:47', 'Tap, Hand, M18 x 2.5mm', 1, 1, '', 1),
(411, 0, 2, 2, '2019-07-03 14:47:25', 'Tap, Hand, M18 x 2.5mm', 1, 2, '', 1),
(412, 0, 2, 2, '2019-07-03 14:48:05', 'Tap, Hand, M20 x 2.0mm', 1, 1, '', 1),
(413, 0, 2, 2, '2019-07-03 14:48:58', 'Tap, Hand, M20 x 2.5mm', 1, 1, '', 1),
(414, 0, 2, 2, '2019-07-03 14:49:45', 'Tap, Hand, M22 x 2.5mm', 1, 1, '', 1),
(415, 0, 2, 2, '2019-07-03 14:50:43', 'Tap, Hand, M24 x 2.0mm', 1, 1, '', 1),
(416, 0, 2, 2, '2019-07-03 14:51:32', 'Tap, Hand, M24 x 2.0mm', 1, 2, '', 1),
(417, 0, 2, 2, '2019-07-03 14:52:02', 'Tap, Hand, M24 x 3.0mm', 1, 1, '', 1),
(418, 0, 2, 2, '2019-07-03 14:52:50', 'Tap, Hand, M24 x 3.0mm', 1, 1, '', 1),
(419, 0, 2, 2, '2019-07-04 10:01:23', 'Tap, Hand, M26 x 1.75mm', 1, 1, '', 1),
(420, 0, 2, 2, '2019-07-04 10:03:33', 'Tap, Hand, M26 x 2.0mm', 1, 1, '', 1),
(421, 0, 2, 2, '2019-07-04 10:04:16', 'Tap, Hand, M26 x 2.00mm', 1, 1, '', 1),
(422, 0, 2, 2, '2019-07-04 10:05:46', 'Tap, Hand, M30 x 2.0mm', 1, 1, '', 1),
(423, 0, 2, 2, '2019-07-05 08:57:22', 'Tap, Hand, M30 x 2.0mm', 1, 1, '', 1),
(424, 0, 2, 2, '2019-07-05 08:58:15', 'Tap, Hand, M30 x 3.5mm', 1, 1, '', 1),
(425, 0, 2, 2, '2019-07-05 09:02:37', 'Tap, Hand, M33 x 2.0mm', 1, 1, '', 1),
(426, 0, 2, 2, '2019-07-05 09:06:48', 'Tap, Hand, M36 x 4.0mm', 1, 1, '', 1),
(427, 0, 2, 2, '2019-07-05 09:11:38', 'Tap, Hand, M36 x 4.0mm', 2, 2, '', 1),
(428, 0, 2, 2, '2019-07-05 09:12:30', 'Tap, Hand, M42 x 2.0mm', 1, 1, '', 1),
(429, 0, 2, 2, '2019-07-05 09:13:45', 'Tap, Hand, 3/16 NC 24', 1, 1, '', 1),
(430, 0, 2, 2, '2019-07-05 09:14:28', 'Tap, Hand, 3/8 NC 16', 1, 1, '', 1),
(431, 0, 2, 2, '2019-07-05 09:15:08', 'Tap, Hand, 5/16 x 18', 2, 2, '', 1),
(432, 0, 2, 2, '2019-07-05 09:16:09', 'Tap, Hand, 1/2 - 13UNC', 1, 1, '', 1),
(433, 0, 2, 2, '2019-07-05 09:16:59', 'Tap, Hand, 1/2 - 13UNC', 1, 1, '', 1),
(434, 0, 2, 2, '2019-07-05 09:18:27', 'Tap, Hand, 3/8', 1, 2, '', 1),
(435, 0, 2, 2, '2019-07-05 09:42:58', 'Tap, Pipe, 10mm x 1.0', 1, 2, '', 1),
(436, 0, 2, 2, '2019-07-05 09:43:53', 'Tap, Pipe, 10mm x 1.5', 1, 2, '', 1),
(437, 0, 2, 2, '2019-07-05 09:44:32', 'Tap, Pipe, 14mm x 1.5', 1, 2, '', 1),
(438, 0, 2, 2, '2019-07-05 09:45:15', 'Tap, Pipe, 27mm x 1.5', 1, 2, '', 1),
(439, 0, 2, 2, '2019-07-05 09:45:48', 'Tap, Pipe, 27mm x 1.5', 1, 2, '', 1),
(440, 0, 2, 2, '2019-07-05 09:46:29', 'Tap, Pipe, 27mm x 1.75', 1, 2, '', 1),
(441, 0, 2, 2, '2019-07-05 09:47:24', 'Tap, Pipe, 34mm x 2.75', 1, 2, '', 1),
(442, 0, 2, 2, '2019-07-05 09:48:43', 'Tap, Pipe, 48mm x 3.0', 1, 2, '', 1),
(443, 0, 2, 2, '2019-07-05 09:49:22', 'Tap, Pipe, 1/2 NPT x 14', 1, 2, '', 1),
(444, 0, 2, 2, '2019-07-05 09:49:54', 'Tap, Pipe, 1/2 NPT x 14', 1, 2, '', 1),
(445, 0, 2, 2, '2019-07-05 09:50:24', 'Tap, Pipe, 3/4 NPT x 14', 1, 2, '', 1),
(446, 0, 2, 2, '2019-07-05 09:51:07', 'Tap, Pipe, 3/8 NPT x 18', 1, 2, '', 1),
(447, 0, 2, 2, '2019-07-05 09:57:07', 'Extractor, Bolt, 25mm', 1, 2, '', 1),
(448, 0, 2, 2, '2019-07-05 09:57:34', 'Extractor, Bolt, 25mm', 1, 2, '', 1),
(449, 0, 2, 2, '2019-07-05 09:58:01', 'Extractor, Bolt, 25mm', 1, 2, '', 1),
(450, 0, 2, 2, '2019-07-05 09:58:36', 'Extractor, Bolt, 32mm', 1, 2, '', 1),
(451, 0, 2, 2, '2019-07-05 09:59:05', 'Extractor, Bolt, 32mm', 1, 2, '', 1),
(452, 0, 2, 2, '2019-07-05 09:59:33', 'Extractor, Bolt, 32mm', 1, 2, '', 1),
(453, 0, 2, 2, '2019-07-05 09:59:55', 'Extractor, Bolt, 33mm', 1, 2, '', 1),
(454, 0, 2, 2, '2019-07-05 14:01:40', 'Wrench, Combination, 19mm, 12pt', 1, 2, '', 1),
(455, 0, 2, 2, '2019-07-05 14:25:53', 'Wrench, Combination, 24mm, 12pt', 1, 2, '', 1),
(456, 0, 2, 2, '2019-07-09 13:41:27', 'Socket, Allen, 6mm', 1, 2, '', 1),
(457, 0, 2, 2, '2019-07-09 13:42:33', 'Socket, Allen, 6mm', 1, 2, '', 1),
(458, 0, 2, 2, '2019-07-09 13:43:03', 'Socket, Allen, 6mm', 1, 2, '', 1),
(459, 0, 2, 2, '2019-07-09 13:43:38', 'Socket, Allen, 12mm', 1, 2, '', 1),
(460, 0, 2, 2, '2019-07-09 13:44:28', 'Socket, Allen, 12mm', 1, 2, '', 1),
(461, 0, 2, 2, '2019-07-09 13:44:55', 'Socket, Allen, 12mm', 1, 2, '', 1),
(462, 0, 2, 2, '2019-07-09 13:48:17', 'Socket, Allen, 13mm', 1, 2, '', 1),
(463, 0, 2, 2, '2019-07-09 13:51:01', 'Socket, Allen, 14mm', 1, 2, '', 1),
(464, 0, 2, 2, '2019-07-09 13:51:51', 'Socket, Allen, 14mm', 1, 2, '', 1),
(465, 0, 2, 2, '2019-07-09 13:52:38', 'Socket, Allen, 14mm', 1, 2, '', 1),
(466, 0, 2, 2, '2019-07-09 13:53:08', 'Socket, Allen, 14mm', 1, 2, '', 1),
(467, 0, 2, 2, '2019-07-09 13:53:50', 'Socket, Allen, 15mm', 1, 2, '', 1),
(468, 0, 2, 2, '2019-07-09 13:54:26', 'Socket, Allen, 17mm', 1, 2, '', 1),
(469, 0, 2, 2, '2019-07-09 13:55:53', 'Socket, Allen, 18mm', 1, 2, '', 1),
(470, 0, 2, 2, '2019-07-09 13:56:34', 'Socket, Allen, 19mm', 1, 2, '', 1),
(471, 0, 2, 2, '2019-07-10 10:04:30', 'Drill Bit, Metal 4mm x 300mm', 1, 2, '', 1),
(472, 0, 2, 2, '2019-07-10 10:05:12', 'Drill Bit, Metal 4mm x 300mm', 1, 2, '', 1),
(473, 0, 2, 2, '2019-07-10 10:05:50', 'Drill Bit, Metal 4mm x 300mm', 1, 2, '', 1),
(474, 0, 2, 2, '2019-07-10 10:06:56', 'Drill Bit, Metal 4mm x 300mm', 1, 2, '', 1),
(475, 0, 2, 2, '2019-07-10 10:07:36', 'Drill Bit, Metal 4mm x 300mm', 1, 2, '', 1),
(476, 0, 2, 2, '2019-07-10 10:32:02', 'Drill Bit, Metal 13mm', 1, 2, '', 1),
(477, 0, 2, 2, '2019-07-10 10:32:51', 'Drill Bit, Metal 13mm', 1, 2, '', 1),
(478, 0, 2, 2, '2019-07-10 10:33:34', 'Drill Bit, Metal 20mm', 1, 2, '', 1),
(479, 0, 2, 2, '2019-07-10 11:07:23', 'Drill Bit, Metal 25mm', 1, 2, '', 1),
(480, 0, 2, 2, '2019-07-10 13:21:16', 'Drill Bit, Metal 25mm', 1, 2, '', 1),
(481, 0, 2, 2, '2019-07-10 13:22:29', 'Drill Bit, Metal 25mm', 1, 2, '', 1),
(482, 0, 2, 2, '2019-07-10 13:23:12', 'Drill Bit, Metal 25mm', 1, 2, '', 1),
(483, 0, 2, 2, '2019-07-10 13:23:40', 'Drill Bit, Metal 25mm', 1, 2, '', 1),
(484, 0, 2, 2, '2019-07-10 13:24:32', 'Drill Bit, Metal 19mm', 1, 2, '', 1),
(485, 0, 2, 2, '2019-07-10 13:25:08', 'Drill Bit, Metal 19mm', 1, 2, '', 1),
(486, 0, 2, 2, '2019-07-10 13:34:02', 'Drill Bit, Metal 22mm', 1, 2, '', 1),
(487, 0, 2, 2, '2019-07-10 13:34:33', 'Drill Bit, Metal 22mm', 1, 2, '', 1),
(488, 0, 2, 2, '2019-07-10 13:49:13', 'Drill Bit, Metal 25mm', 1, 2, '', 1),
(489, 0, 2, 2, '2019-07-10 13:49:43', 'Drill Bit, Metal 25mm', 1, 2, '', 1),
(490, 0, 2, 2, '2019-07-10 14:18:41', 'Hexagon Die, 6mm x 11mm', 1, 2, '', 1),
(491, 0, 2, 2, '2019-07-10 14:19:10', 'Hexagon Die, 8mm x 1.25mm', 1, 2, '', 1),
(492, 0, 2, 2, '2019-07-10 14:19:47', 'Hexagon Die, 10mm x 1.5mm', 1, 2, '', 1),
(493, 0, 2, 2, '2019-07-10 14:20:23', 'Hexagon Die, 14mm x 2.0mm', 1, 2, '', 1),
(494, 0, 2, 2, '2019-07-10 14:20:55', 'Hexagon Die, 12mm x 1.75mm', 1, 2, '', 1),
(495, 0, 2, 2, '2019-07-10 14:22:57', 'Hexagon Die, 16mm x 2.0mm', 1, 2, '', 1),
(496, 0, 2, 2, '2019-07-10 14:37:31', 'Hexagon Die, 20mm x 2.5mm', 1, 2, '', 1),
(497, 0, 2, 2, '2019-07-10 16:29:27', '1/2 inches DR Extension Bar 4 inches', 2, 2, '', 1),
(498, 0, 2, 2, '2019-07-10 16:33:45', '1/2 inches DR Extension Bar 4 inches', 4, 2, '', 1),
(499, 0, 2, 2, '2019-07-11 08:54:24', '1/2 inches DR Extension Bar 8 inches', 3, 2, '', 1),
(500, 0, 2, 2, '2019-07-11 08:56:31', '1/2 inches DR Extension Bar 8 inches', 1, 2, '', 1),
(501, 0, 2, 2, '2019-07-11 08:57:44', '1/2 inches DR Extension Bar 8 inches', 1, 2, '', 1),
(502, 0, 2, 2, '2019-07-11 08:58:36', '3/4 inches DR Extension Bar 1''', 2, 2, '', 1),
(503, 0, 2, 2, '2019-07-11 09:19:07', '3/4 inches DR Extension Bar 1 inches', 2, 2, '', 1),
(504, 0, 2, 2, '2019-07-11 09:22:44', '3/4 inches DR Extension Bar 5 inches', 3, 2, '', 1),
(505, 0, 2, 2, '2019-07-11 09:26:20', '1 inches DR Extension Bar 12 inches', 2, 2, '', 1),
(506, 0, 2, 2, '2019-07-11 10:01:35', '1/2 inches DR Power Handle', 1, 2, '', 1),
(507, 0, 2, 2, '2019-07-11 10:02:40', '1/2 inches DR Power Handle ', 1, 2, '', 1),
(508, 0, 2, 2, '2019-07-11 10:30:39', '1 inches DR Power Handle', 1, 2, '', 1),
(509, 0, 2, 2, '2019-07-11 10:31:15', '3/4 inches DR Ratchet Handle', 1, 2, '', 1),
(510, 0, 2, 2, '2019-07-11 10:32:05', '3/4 inches DR Ratchet Handle', 1, 2, '', 1),
(511, 0, 2, 2, '2019-07-11 10:33:45', '1 inches DR Ratchet Handle', 2, 2, '', 1),
(512, 0, 2, 2, '2019-07-11 12:03:36', '3/4 inches DR Sliding Tee Handle', 2, 2, '', 1),
(513, 0, 2, 2, '2019-07-11 13:37:55', '1/4 inches DR Universal Joint', 1, 2, '', 1),
(514, 0, 2, 2, '2019-07-11 13:38:53', '1/2 inches DR Universal Joint', 2, 2, '', 1),
(515, 0, 2, 2, '2019-07-11 13:39:50', '1/2 inches DR Universal Joint', 1, 2, '', 1),
(516, 0, 2, 2, '2019-07-11 13:44:34', '1/2 inches DR Universal Joint', 1, 2, '', 1),
(517, 0, 2, 2, '2019-07-11 13:55:31', '1 inches DR Universal Joint', 1, 2, '', 1),
(518, 0, 2, 2, '2019-07-11 14:21:41', '3/4 inches DR x 1 inches DR Joint, Reducer', 1, 2, '', 1),
(519, 0, 2, 2, '2019-07-15 13:27:31', 'Snip, Aviation', 2, 2, '', 1),
(520, 37, 2, 2, '2019-07-15 13:34:08', 'Snip, Aviation', 1, 2, '', 1),
(521, 53, 2, 2, '2019-07-15 13:40:20', 'Plier, Locking (Vise Grip)', 2, 2, 'Testing Group', 1),
(522, 0, 2, 2, '2019-07-15 13:51:15', 'Snip, Tin, Scissor 12 inches', 1, 2, '', 1),
(523, 0, 2, 2, '2019-07-15 13:53:10', 'Snip, Tin, Scissor 12 inches', 1, 2, '', 1),
(524, 0, 2, 2, '2019-07-15 13:58:44', 'Tube, Binder, 3/8OD x 15/16R', 1, 2, 'Electrical & Instrumentation', 1),
(525, 0, 2, 2, '2019-07-15 14:01:13', 'Tube, Binder, 1/2OD x 1-1/2R', 1, 2, '', 1),
(526, 0, 2, 2, '2019-07-16 09:20:06', 'Screw, Flat, Driver 6 inches', 1, 2, '', 1),
(527, 0, 2, 2, '2019-07-16 09:56:00', 'Screw, Flat, Driver 8 inches', 1, 2, '', 1),
(528, 50, 2, 2, '2019-07-16 09:58:57', 'Screw, Flat, Driver 10 inches', 1, 2, '', 1),
(529, 1, 2, 2, '2019-07-18 09:07:20', 'Screw, Flat, Driver 10 inches', 1, 2, '', 1),
(530, 17, 2, 2, '2019-07-18 09:13:27', 'Screw, Flat, Driver 10 inches', 1, 2, '', 1),
(531, 29, 2, 2, '2019-07-18 09:14:26', 'Screw, Flat, Driver 10 inches', 1, 2, '', 1),
(532, 58, 2, 2, '2019-07-18 09:15:49', 'Screw, Flat, Driver 12 inches', 1, 2, 'Warehouse', 1),
(533, 0, 2, 2, '2019-07-18 09:25:42', 'Screw, Philip, Driver 6 inches', 1, 2, '', 1),
(534, 50, 2, 2, '2019-07-18 09:26:25', 'Screw, Philip, Driver 10 inches', 1, 2, '', 1),
(535, 1, 2, 2, '2019-07-18 09:46:41', 'Screw, Philip, Driver 10 inches', 1, 2, '', 1),
(536, 17, 2, 2, '2019-07-18 09:48:00', 'Screw, Philip, Driver 10 inches', 1, 2, '', 1),
(537, 29, 2, 2, '2019-07-18 09:50:01', 'Screw, Philip, Driver 10 inches', 1, 2, '', 1),
(538, 58, 2, 2, '2019-07-18 09:51:51', 'Screw, Philip, Driver 10 inches', 1, 2, '', 1),
(539, 50, 2, 2, '2019-07-18 09:58:45', 'Screw, Interchangeable, Driver 8 in 1 (9 way)', 1, 1, '', 1),
(540, 1, 2, 2, '2019-07-18 11:20:41', 'Screw, Interchangeable, Driver 8 in 1 (9 way)', 1, 1, '', 1),
(541, 53, 2, 2, '2019-07-18 11:21:10', 'Screw, Interchangeable, Driver 8 in 1 (9 way)', 1, 1, '', 1),
(542, 17, 2, 2, '2019-07-18 11:21:45', 'Screw, Interchangeable, Driver 8 in 1 (9 way)', 1, 1, '', 1),
(543, 29, 2, 2, '2019-07-18 11:24:44', 'Screw, Interchangeable, Driver 8 in 1 (9 way)', 1, 1, '', 1),
(544, 31, 2, 2, '2019-07-18 11:25:28', 'Screw, Interchangeable, Driver 8 in 1 (9 way)', 1, 1, '', 1),
(545, 29, 2, 2, '2019-07-18 11:30:22', 'Plier, Insulated, Linesman 8 inches', 1, 2, '', 1),
(546, 17, 2, 2, '2019-07-18 13:44:26', 'Plier, Insulated, Linesman 8 inches', 1, 2, '', 1),
(547, 31, 2, 2, '2019-07-18 13:47:24', 'Plier, Insulated, Linesman 8 inches', 1, 2, '', 1),
(548, 50, 2, 2, '2019-07-18 13:47:48', 'Plier, Insulated, Linesman 8 inches', 1, 2, '', 1),
(549, 50, 2, 2, '2019-07-18 14:19:40', 'Plier, Insulated, Long Nose 8 inches', 1, 2, '', 1),
(550, 1, 2, 2, '2019-07-18 14:39:50', 'Plier, Insulated, Long Nose 8 inches', 1, 2, '', 1),
(551, 29, 2, 2, '2019-07-18 14:40:31', 'Plier, Insulated, Long Nose 8 inches', 1, 2, '', 1),
(552, 31, 2, 2, '2019-07-18 14:40:56', 'Plier, Insulated, Long Nose 8 inches', 1, 2, '', 1),
(553, 58, 2, 2, '2019-07-18 15:03:20', 'Plier, Mechanical 6 inches', 1, 2, '', 1),
(554, 0, 2, 2, '2019-07-18 15:06:29', 'Plier, Mechanical 10 inches', 1, 2, '', 1),
(555, 29, 2, 2, '2019-07-18 15:40:25', 'Plier, Crimping 6 inches', 1, 2, '', 1),
(556, 29, 2, 2, '2019-07-18 15:41:50', 'Plier, Mechanical 9 inches', 1, 2, '', 1),
(557, 1, 2, 2, '2019-07-18 15:48:23', 'Plier, Mechanical 9 inches', 1, 2, '', 1),
(558, 0, 2, 2, '2019-07-19 10:05:58', 'Crimper, Wire (6P, 8P, 4P)', 1, 2, '', 1),
(559, 0, 2, 2, '2019-07-19 10:07:41', 'Crimper, Wire (6P, 8P, 4P)', 1, 2, '', 1),
(560, 0, 2, 2, '2019-07-19 10:33:35', 'Crimper, Wire with Scripper (8P - 8C)', 1, 2, '', 1),
(561, 0, 2, 2, '2019-07-19 10:36:03', 'Crimper, Wire with Scripper (8P - 6P)', 1, 2, '', 1),
(562, 0, 2, 2, '2019-07-19 10:42:35', 'Stripper, Wire (AWG)', 1, 2, '', 1),
(563, 0, 2, 2, '2019-07-19 11:33:09', 'Gear Puller 6 inches (Half Moon Bearing - Puller)', 1, 2, '', 1),
(564, 0, 2, 2, '2019-07-19 11:33:54', 'Gear Puller 10 inches (Half Moon Bearing - Puller)', 1, 2, '', 1),
(565, 0, 2, 2, '2019-07-19 11:34:37', 'Adapter, Screw, Tek, Magnetic 8mm', 1, 2, '', 1),
(566, 0, 2, 2, '2019-07-19 11:35:37', 'Adapter, Screw, Tek, Magnetic 8mm', 1, 2, '', 1),
(567, 46, 2, 2, '2019-07-19 11:49:15', 'Riveter, Hand', 3, 2, 'Mechanical Maintenance', 1),
(568, 0, 2, 2, '2019-07-19 11:51:45', 'Carpenter, Saw', 1, 2, '', 1),
(569, 0, 2, 2, '2019-07-19 11:52:28', 'Gun, Grease', 1, 2, '', 1),
(570, 0, 2, 2, '2019-07-19 11:53:40', 'Cleaner, Tip', 1, 1, '', 1),
(571, 53, 2, 2, '2019-07-19 11:57:53', 'File, Half, Round, Fine 10 inches', 3, 2, 'Testing Group', 1),
(572, 0, 2, 2, '2019-07-19 14:16:57', 'Wrench, Torque, Spanner 19mm', 1, 2, '', 1),
(573, 0, 2, 2, '2019-07-19 14:19:45', 'Wrench, Torque, Spanner 19mm', 1, 2, '', 1),
(574, 0, 2, 2, '2019-07-19 14:35:34', '1/2 inches DR Torque Wrench 50mm -250mm', 1, 2, '', 1),
(575, 0, 2, 2, '2019-07-19 14:37:27', '1/2 inches DR Torque Wrench 75mm - 355mm', 1, 2, '', 1),
(576, 0, 2, 2, '2019-07-19 14:39:44', '1/2 inches DR Micro Torque Wrench 60mm - 340mm', 1, 2, '', 1),
(577, 0, 2, 2, '2019-07-19 14:41:32', '1/2 inches DR Micro Torque Wrench 70mm - 400mm', 1, 2, '', 1),
(578, 0, 2, 2, '2019-07-19 14:43:12', '3/4 inches DR Micro Torque Wrench 140mm - 700mm', 1, 2, '', 1),
(579, 17, 2, 2, '2019-07-19 15:54:34', '1/2 inches DR 6pt Socket - 10mm', 1, 2, 'Electrical & Instrumentation', 1),
(580, 17, 2, 2, '2019-07-19 15:55:23', '1/2 inches DR 6pt Socket - 11mm', 1, 2, 'Electrical & Instrumentation', 1),
(581, 17, 2, 2, '2019-07-19 15:57:20', '1/2 inches DR 6pt Socket - 12mm', 1, 2, 'Electrical & Instrumentation', 1),
(582, 17, 2, 2, '2019-07-19 16:02:17', '1/2 inches DR 6pt Socket - 14mm', 1, 2, '', 1),
(583, 17, 2, 2, '2019-07-19 16:09:12', '1/2 inches DR 6pt Socket - 16mm', 1, 2, 'Electrical & Instrumentation', 1),
(584, 17, 2, 2, '2019-07-19 16:10:46', '1/2 inches DR 6pt Socket - 19mm', 1, 2, 'Electrical & Instrumentation', 1),
(585, 0, 2, 2, '2019-07-22 09:57:13', 'Wrench, Box 18mm x 19mm', 1, 2, '', 1),
(586, 0, 2, 2, '2019-07-22 09:59:29', 'Wrench, Box 19mm x 22mm', 1, 2, '', 1),
(587, 0, 2, 2, '2019-07-22 10:46:29', 'Wrench, Adjustable 12 inches', 1, 2, '', 1),
(588, 0, 2, 2, '2019-07-22 10:47:27', 'Wrench, Adjustable 12 inches', 1, 2, '', 1),
(589, 0, 2, 2, '2019-07-22 11:19:12', 'Tap, Hand, M27 x 1.5mm', 1, 1, '', 1),
(590, 0, 2, 2, '2019-07-22 11:24:23', 'Tap, Hand, M27 x 2.0mm', 1, 1, '', 1),
(591, 0, 2, 2, '2019-07-22 11:39:29', 'Twist Drill with 3/4 inches Weldon Shank 18mm x 30mm', 4, 2, '', 1),
(592, 53, 2, 2, '2019-07-22 14:29:25', 'Cutter, Bolt, 18 inches', 1, 2, 'Testing Group', 1),
(593, 53, 2, 2, '2019-07-22 14:34:11', 'Scissor, Tailor, Stainless, #10', 1, 2, 'Testing Group', 1),
(594, 53, 2, 2, '2019-07-22 15:25:55', 'Plier, Locking (Vise Grip), 9 inches', 2, 2, 'Testing Group', 1),
(595, 0, 2, 2, '2019-07-23 13:53:21', 'Thread Die, 27mm x 1.5mm', 1, 2, '', 1),
(596, 0, 2, 2, '2019-07-23 13:54:34', 'Thread Die, 27mm x 2.0mm', 1, 2, '', 1),
(597, 0, 2, 2, '2019-07-23 13:58:07', 'Handle for 1/4 inches DR - 1 inches DR (Hand Tap)', 1, 2, '', 1),
(598, 0, 2, 2, '2019-07-24 13:22:10', 'Mallet, Rubber 65mm x 100mm', 1, 2, '', 1),
(599, 0, 2, 2, '2019-07-24 13:22:58', 'Mallet, Rubber 65mm x 100mm', 1, 2, '', 1),
(600, 0, 2, 2, '2019-07-24 13:43:58', 'Mallet, Rubber 65mm x 100mm', 2, 2, '', 1),
(601, 0, 2, 17, '2019-07-26 14:44:22', 'Micrometer, 0 - 25mm x 0.01mm', 1, 1, '', 1),
(602, 0, 2, 17, '2019-07-26 14:45:33', 'Micrometer, 0 -25mm x 0.01mm', 1, 1, '', 1),
(603, 0, 2, 17, '2019-07-26 14:46:15', 'Micrometer, 0 - 45mm', 1, 1, '', 1),
(604, 0, 2, 17, '2019-07-26 14:47:12', 'Micrometer, 25 - 50mm x 0.01mm', 1, 1, '', 1);
INSERT INTO `et_head` (`et_id`, `accountability_id`, `category_id`, `subcat_id`, `create_date`, `et_desc`, `qty`, `unit_id`, `department`, `user_id`) VALUES
(605, 0, 2, 17, '2019-07-26 14:47:57', 'Micrometer, 50 - 75mm x 0.01mm', 1, 1, '', 1),
(606, 0, 2, 17, '2019-07-26 14:48:59', 'Micrometer, 75 - 100mm x 0.01mm', 1, 2, '', 1),
(607, 0, 2, 17, '2019-07-26 16:00:13', 'Micrometer, 50 - 150mm', 1, 1, '', 1),
(608, 0, 2, 17, '2019-07-27 09:57:49', 'Micrometer, 50 - 150mm x 0.01mm', 1, 1, '', 1),
(609, 0, 2, 17, '2019-07-27 09:59:16', 'Micrometer, 150 - 300mm x 0.01mm', 1, 1, '', 1),
(610, 0, 2, 17, '2019-07-27 10:02:04', 'Micrometer, 150 - 300mm x 0.01mm', 1, 1, '', 1),
(611, 0, 2, 17, '2019-07-27 11:32:00', 'Micrometer, 300 - 400mm x 0.01mm', 1, 1, '', 1),
(612, 0, 2, 17, '2019-07-27 11:32:36', 'Micrometer, 300 - 400mm x 0.01mm', 1, 1, '', 1),
(613, 0, 2, 17, '2019-07-27 11:33:43', 'Micrometer, 400 - 500mm x 0.01mm', 1, 1, '', 1),
(614, 0, 2, 17, '2019-07-27 11:35:50', 'Micrometer, 500 - 600mm x 0.01mm', 1, 1, '', 1),
(615, 0, 2, 17, '2019-07-27 11:36:31', 'Micrometer, 600 - 700mm x 0.01mm', 1, 1, '', 1),
(616, 0, 2, 2, '2019-07-30 10:30:07', 'Wrench, Combination, 17mm, 12pt', 1, 2, '', 1),
(617, 0, 2, 2, '2019-07-30 10:32:04', 'Wrench, Combination, 24mm, 12pt', 1, 2, '', 1),
(618, 0, 2, 2, '2019-07-30 10:32:45', 'Wrench, Combination, 24mm, 12pt', 1, 2, '', 1),
(619, 0, 2, 2, '2019-07-30 10:33:19', 'Wrench, Combination, 24mm, 12pt', 1, 2, '', 1),
(620, 0, 2, 2, '2019-07-30 10:35:33', 'Wrench, Combination, 24mm, 12pt', 1, 2, '', 1),
(621, 0, 2, 2, '2019-07-30 10:36:07', 'Wrench, Combination, 24mm, 12pt', 1, 2, '', 1),
(622, 0, 2, 2, '2019-07-30 10:37:35', 'Wrench, Combination, 1-1/4 inches, 12pt', 1, 2, '', 1),
(623, 0, 2, 2, '2019-07-30 10:38:24', 'Wrench, Combination, 30mm, 12pt', 1, 2, '', 1),
(624, 0, 2, 2, '2019-07-30 10:39:00', 'Wrench, Combination, 32mm, 12pt', 3, 2, '', 1),
(625, 0, 2, 2, '2019-07-30 10:40:18', 'Wrench, Combination, 32mm, 12pt', 1, 2, '', 1),
(626, 0, 2, 2, '2019-07-30 10:40:51', 'Wrench, Combination, 32mm, 12pt', 1, 2, '', 1),
(627, 0, 2, 2, '2019-07-30 10:41:25', 'Wrench, Combination, 36mm, 12pt', 1, 2, '', 1),
(628, 0, 2, 2, '2019-07-30 10:41:57', 'Wrench, Combination, 40mm, 12pt', 1, 2, '', 1),
(629, 0, 2, 2, '2019-07-30 10:42:38', 'Wrench, Combination, 1 1/4, 12pt', 1, 2, '', 1),
(630, 0, 2, 2, '2019-07-30 10:55:39', '1/2 inches DR 12pt Socket - 19mm', 1, 2, '', 1),
(631, 0, 2, 2, '2019-07-30 11:02:23', '1/2 inches DR 12pt Socket - 19mm', 1, 2, '', 1),
(632, 0, 2, 2, '2019-07-30 11:03:01', '1/2 inches DR 12pt Socket - 24mm', 1, 2, '', 1),
(633, 0, 2, 2, '2019-07-30 11:03:46', '3/4 inches DR 12pt Socket - 30mm', 1, 2, '', 1),
(634, 0, 2, 2, '2019-07-30 11:04:20', '3/4 inches DR 12pt Socket - 36mm', 1, 2, '', 1),
(635, 0, 2, 2, '2019-07-30 11:04:51', '3/4 inches DR 12pt Socket - 36mm', 1, 2, '', 1),
(636, 0, 2, 2, '2019-07-30 11:05:17', '1 inches DR 12pt Socket - 55mm', 1, 2, '', 1),
(637, 0, 2, 17, '2019-07-31 11:25:01', 'Gauge, Bore, 50 - 178mm', 1, 1, '', 1),
(638, 0, 2, 17, '2019-07-31 11:25:38', 'Gauge, Bore, 250 - 400mm', 1, 1, '', 1),
(639, 0, 2, 17, '2019-07-31 11:27:02', 'Gauge, Bore, 250 - 400mm', 1, 1, '', 1),
(640, 0, 2, 17, '2019-07-31 11:27:45', 'Gauge, Bore, 18 - 35mm', 1, 1, '', 1),
(641, 0, 2, 17, '2019-07-31 11:38:32', 'Gauge, Bore, 18 - 35mm', 1, 1, '', 1),
(642, 0, 2, 17, '2019-07-31 11:46:45', 'Gauge, Depth, 0.01mm', 1, 1, '', 1),
(643, 17, 2, 17, '2019-08-03 11:55:26', 'Steel Tape, 3 meters ', 1, 2, 'Electrical & Instrumentation', 1),
(644, 29, 2, 17, '2019-08-03 14:26:12', 'Steel Tape, 3 meters', 1, 2, '', 1),
(645, 0, 2, 17, '2019-08-03 14:58:49', 'Meter Stick, wooden', 1, 2, '', 1),
(646, 8, 1, 6, '2019-08-08 10:41:21', 'Safety Shoes, Men, Size: 42', 1, 4, 'Electrical & Instrumentation', 1),
(647, 31, 1, 6, '2019-08-08 10:44:02', 'Safety Shoes, Men, Size: 41', 1, 4, 'Electrical & Instrumentation', 1),
(648, 1, 1, 6, '2019-08-08 10:45:27', 'Safety Shoes, Men. Size: 41', 1, 4, 'Electrical & Instrumentation', 1),
(649, 29, 1, 6, '2019-08-08 10:48:07', 'Safety Shoes, Men, Size: 41', 1, 4, 'Electrical & Instrumentation', 1),
(650, 17, 1, 6, '2019-08-08 10:54:28', 'Safety Shoes, Men, Size: 42 (8)', 1, 4, 'Electrical & Instrumentation', 1),
(651, 47, 1, 6, '2019-08-08 10:55:59', 'Safety Shoes, Men, Size: 40 (7)', 1, 4, 'Testing Group', 1),
(652, 41, 1, 6, '2019-08-08 11:01:10', 'Safety Shoes, Men, Size: 41 (8)', 1, 4, 'Fuel Management', 1),
(653, 28, 1, 6, '2019-08-08 11:04:03', 'Safety Shoes, Men, Size: 41 (8)', 1, 4, 'Warehouse', 1),
(654, 35, 1, 6, '2019-08-08 11:06:20', 'Safety Shoes, Men, Size: 40 (7)', 1, 4, 'Warehouse', 1),
(655, 37, 1, 6, '2019-08-08 11:07:35', 'Safety Shoes, Men, Size: 41 (8)', 1, 4, 'Warehouse', 1),
(656, 42, 1, 6, '2019-08-08 11:09:03', 'Safety Shoes, Men, Size: 41 (8)', 1, 4, 'Warehouse', 1),
(657, 58, 1, 6, '2019-08-08 11:10:41', 'Safety Shoes, Men, Size: 43 (10)', 1, 4, '', 1),
(658, 51, 1, 6, '2019-08-08 11:31:44', 'Safety Shoes, Men, Size: 41 (8)', 1, 4, 'Operations Department', 1),
(659, 40, 1, 6, '2019-08-08 11:32:44', 'Safety Shoes, Men, Size: 41 (8)', 1, 4, 'Operations Department', 1),
(660, 56, 1, 6, '2019-08-08 11:33:50', 'Safety Shoes, Men, Size: 41 (8)', 1, 4, 'Operations Department', 1),
(661, 50, 1, 6, '2019-08-08 11:35:04', 'Safety Shoes, Men, Size: 42 (9)', 1, 4, 'Operations Department', 1),
(662, 55, 1, 6, '2019-08-08 11:37:11', 'Safety Shoes, Men, Size: 42 (9)', 1, 4, 'Operations Department', 1),
(663, 25, 1, 6, '2019-08-08 11:39:04', 'Safety Shoes, Men, Size: 42 (9)', 1, 4, 'Operations Department', 1),
(664, 12, 1, 6, '2019-08-08 11:40:40', 'Safety Shoes, Men, Size: 42 (9)', 1, 4, 'Operations Department', 1),
(665, 26, 1, 6, '2019-08-08 11:41:59', 'Safety Shoes, Men, Size: 41 (8)', 1, 4, 'Operations Department', 1),
(666, 2, 1, 6, '2019-08-08 11:43:13', 'Safety Shoes, Men, Size: 42 (9)', 1, 4, 'Operations Department', 1),
(667, 20, 1, 6, '2019-08-08 11:44:57', 'Safety Shoes, Men, Size: 39 (6)', 1, 4, 'Operations Department', 1),
(668, 52, 1, 6, '2019-08-08 11:45:47', 'Safety Shoes, Men, Size: 45 (12)', 1, 4, 'Operations Department', 1),
(669, 19, 1, 6, '2019-08-08 11:49:41', 'Safety Shoes, Men, Size: 41 (8)', 1, 4, 'Operations Department', 1),
(670, 21, 1, 6, '2019-08-08 11:54:04', 'Safety Shoes, Men, Size: 41 (8)', 1, 4, 'Operations Department', 1),
(671, 34, 1, 6, '2019-08-08 11:55:14', 'Safety Shoes, Men, Size: 40 (7)', 1, 4, 'Admin', 1),
(672, 59, 1, 6, '2019-08-08 11:56:20', 'Safety Shoes, Men, Size: 42 (9)', 1, 4, 'Operations Department', 1),
(673, 48, 1, 6, '2019-08-08 11:57:16', 'Safety Shoes, Men, Size: 41 (8)', 1, 4, '', 1),
(674, 45, 1, 6, '2019-08-08 11:59:15', 'Safety Shoes, Men, Size: 40 (7)', 1, 4, 'Operations Department', 1),
(675, 36, 1, 6, '2019-08-08 12:00:12', 'Safety Shoes, Men, Size: 41 (8)', 1, 4, 'Operations Department', 1),
(676, 24, 1, 6, '2019-08-08 13:27:51', 'Safety Shoes, Men, Size: 40 (7)', 1, 4, 'Admin', 1),
(677, 39, 1, 6, '2019-08-08 13:29:26', 'Safety Shoes, Men, Size: 41 (8)', 1, 4, 'Admin', 1),
(678, 32, 1, 6, '2019-08-08 14:39:55', 'Safety Shoes, Men, Size: 40 (7)', 1, 4, 'IT Department', 1),
(679, 33, 1, 6, '2019-08-08 14:41:28', 'Safety Shoes, Men, Size: 41 (8)', 1, 4, 'IT Department', 1),
(680, 49, 1, 6, '2019-08-08 14:42:41', 'Safety Shoes, Men, Size: 45 (12)', 1, 4, 'Special Projects', 1),
(681, 61, 1, 6, '2019-08-08 14:44:33', 'Safety Shoes, Men, Size: 41 (8)', 1, 4, 'Mechanical Maintenance', 1),
(682, 75, 1, 6, '2019-08-08 14:47:13', 'Safety Shoes, Men, Size: 41 (7)', 1, 4, 'Admin', 1),
(683, 46, 1, 6, '2019-08-09 09:18:08', 'Safety Shoes, Men, Size: 42 (9)', 1, 4, 'Mechanical Maintenance', 1),
(684, 18, 1, 6, '2019-08-09 09:19:36', 'Safety Shoes, Men, Size: 41 (8)', 1, 4, 'Mechanical Maintenance', 1),
(685, 44, 1, 6, '2019-08-09 09:20:44', 'Safety Shoes, Men, Size: 40 (7)', 1, 4, 'Mechanical Maintenance', 1),
(686, 3, 1, 6, '2019-08-09 09:22:16', 'Safety Shoes, Men, Size: 41 (8)', 1, 4, 'Mechanical Maintenance', 1),
(687, 15, 1, 6, '2019-08-09 09:23:59', 'Safety Shoes, Men, Size: 43 (10)', 1, 4, 'Mechanical Maintenance', 1),
(688, 62, 1, 6, '2019-08-09 09:27:06', 'Safety Shoes, Men, Size: 42 (9)', 1, 4, 'Mechanical Maintenance', 1),
(689, 14, 1, 6, '2019-08-09 09:28:42', 'Safety Shoes, Men, Size: 41 (8)', 1, 4, 'Machine Shop & Reconditioning', 1),
(690, 38, 1, 6, '2019-08-09 09:31:24', 'Safety Shoes, Men, Size: 40 (7)', 1, 4, 'Machine Shop & Reconditioning', 1),
(691, 10, 1, 6, '2019-08-09 09:32:24', 'Safety Shoes, Men, Size: 43 (10)', 1, 4, 'Electrical & Instrumentation', 1),
(692, 30, 1, 6, '2019-08-09 09:34:22', 'Safety Shoes, Men, Size: 41 (8)', 1, 4, 'Management', 1),
(693, 76, 1, 6, '2019-08-09 09:36:46', 'Safety Shoes, Men, Size: 41 (8)', 1, 4, 'Testing Group', 1),
(694, 63, 1, 11, '2019-08-09 13:44:01', 'BP Apparatus', 1, 1, 'Admin', 1),
(695, 63, 1, 11, '2019-08-09 13:45:33', 'Ice Bag', 1, 2, 'Admin', 1),
(696, 63, 1, 11, '2019-08-09 13:53:39', 'Medical Oxgen Tank', 1, 5, 'Admin', 1),
(697, 63, 1, 11, '2019-08-09 13:56:14', 'Glucose Meter with Lancing Device', 1, 1, 'Admin', 1),
(698, 63, 1, 11, '2019-08-09 13:58:11', 'Oxygen Flowmeter Regulator with Humidifier', 2, 3, 'Admin', 1),
(699, 63, 1, 11, '2019-08-09 13:59:23', 'Scissors, Surgical', 1, 2, 'Admin', 1),
(700, 63, 1, 11, '2019-08-09 14:01:34', 'First Aid Box, 38cm', 1, 2, 'Admin', 1),
(701, 63, 1, 11, '2019-08-09 14:02:53', 'Digital Thermometer', 1, 2, 'Admin', 1),
(702, 53, 2, 2, '2019-08-13 14:50:17', 'Mallet, Rubber, 70mm', 1, 2, 'Testing Group', 1),
(703, 0, 2, 2, '2019-08-14 09:08:43', 'Tap, Hand, M16 x 1.5mm', 2, 1, '', 1),
(704, 0, 2, 2, '2019-08-14 09:22:44', 'Tap, Hand, M16 x 2.0mm', 1, 1, '', 1),
(705, 0, 2, 2, '2019-08-14 09:25:37', 'Tap, Hand, M16 x 2.0mm', 1, 1, '', 1),
(706, 0, 2, 2, '2019-08-14 09:26:25', 'Tap, Hand, M16 x 2.0mm', 2, 2, '', 1),
(707, 0, 2, 2, '2019-08-14 09:39:19', 'Tap, Hand, M18 x 1.5mm', 1, 1, '', 1),
(708, 0, 2, 2, '2019-08-14 09:40:03', 'Tap, Hand, M18 x 2.5mm', 1, 1, '', 1),
(709, 0, 2, 2, '2019-08-14 09:41:41', 'Tap, Hand, M20 x 2.5mm', 1, 1, '', 1),
(710, 0, 2, 2, '2019-08-14 09:47:23', 'Tap, Hand, M24 x 3.0mm', 1, 1, '', 1),
(711, 0, 2, 2, '2019-08-19 11:04:43', 'Wrench, Box, Halfmoon, 19mm x 22mm, 12pt', 1, 2, '', 1),
(712, 0, 2, 2, '2019-08-19 11:55:19', 'Wrench, Box, 30mm x 32mm, 12pt', 1, 2, '', 1),
(713, 0, 2, 2, '2019-08-19 11:57:18', 'Wrench, Box, 30mm x 32mm, 12pt', 1, 2, '', 1),
(714, 0, 2, 2, '2019-08-19 11:58:16', 'Wrench, Pipe, 12 inches', 1, 2, '', 1),
(715, 1, 2, 2, '2019-08-22 13:33:24', 'Wrench, Allen (1.5mm, 2mm, 2.5mm, 3mm, 4mm, 5mm, 6mm, 8mm, 10mm)', 1, 1, 'Electrical & Instrumentation', 1),
(716, 50, 2, 2, '2019-08-22 13:50:56', 'Wrench, Allen, (1.5mm, 2mm, 2.5mm, 3mm, 4mm, 5mm, 6mm, 8mm, 10mm)', 1, 1, 'Operations Department', 1),
(717, 0, 2, 2, '2019-08-22 13:56:32', 'Die, Stock, Holder for M27 x 1.5mm', 1, 2, '', 1),
(718, 0, 2, 2, '2019-08-22 14:23:22', 'Wrench, Allen (1.5mm, 2mm, 2.5mm, 3mm, 4mm, 5.5mm, 6mm, 8mm, 10mm)', 1, 1, '', 1),
(719, 0, 2, 2, '2019-08-22 14:25:17', 'Wrench, Allen 12mm', 1, 2, '', 1),
(720, 0, 2, 2, '2019-08-22 14:27:28', 'Wrench, Allen 4.5mm', 1, 2, '', 1),
(721, 0, 2, 17, '2019-08-23 11:02:01', 'L-Ruler, 6 inches', 1, 2, '', 1),
(722, 0, 2, 17, '2019-08-23 11:08:06', 'Gauge, Feeler 3 inches', 2, 1, '', 1),
(725, 0, 2, 18, '2019-08-23 14:30:51', '10A Digital Low Resistance Ohmmeter', 1, 3, '', 1),
(726, 0, 2, 18, '2019-08-23 14:44:27', '10KV Insulation Resistance Tester', 1, 1, '', 1),
(727, 17, 2, 18, '2019-08-23 14:54:19', 'True RMS AC/DC Clamp Meter', 1, 1, 'Electrical & Instrumentation', 1),
(728, 0, 2, 18, '2019-08-23 15:39:35', 'Deadweight Calibration Tester', 1, 1, '', 1),
(729, 0, 2, 18, '2019-08-23 15:40:33', 'Deadweight Calibration Tester', 1, 1, '', 1),
(730, 57, 1, 13, '2019-08-28 16:46:57', 'Stapler, No. 35 with Remover', 1, 2, 'Progen', 1),
(731, 54, 1, 12, '2019-08-29 11:18:53', 'UPS, 650VA', 1, 3, 'Admin', 1),
(732, 23, 1, 12, '2019-08-29 11:26:25', 'UPS, 650VA', 1, 3, 'Purchasing Department', 1),
(733, 4, 1, 12, '2019-08-29 11:30:20', 'UPS, 650VA', 1, 3, 'Trading', 1),
(734, 39, 1, 12, '2019-08-29 11:44:11', 'UPS, 650VA', 1, 3, 'Admin', 1),
(735, 6, 1, 12, '2019-08-29 11:45:23', 'UPS, 650VA', 1, 3, 'Fuel Management', 1),
(736, 0, 2, 2, '2019-08-29 15:48:09', '1/2 inches DR Extension Bar 24 inches', 1, 2, '', 1),
(737, 0, 2, 2, '2019-08-29 15:49:29', '1/2 inches DR Sliding Tee Handle', 1, 2, '', 1),
(738, 0, 2, 2, '2019-08-29 15:50:10', '1/2 inches DR Ratchet Handle', 1, 2, '', 1),
(739, 0, 2, 2, '2019-08-29 15:51:38', '3/4 inches DR Ratchet Handle', 1, 2, '', 1),
(740, 0, 2, 2, '2019-08-29 15:57:26', '3/4 inches DR Sliding Tee Handle', 1, 2, '', 1),
(741, 0, 2, 2, '2019-08-29 15:58:16', '1 inches DR Sliding Tee Handle', 1, 2, '', 1),
(742, 0, 2, 2, '2019-08-29 15:58:52', '1 inches DR Sliding Tee Handle', 1, 2, '', 1),
(743, 0, 2, 2, '2019-08-30 09:46:28', '1 inches DR 6pt Socket - 30mm', 1, 2, '', 1),
(744, 0, 2, 2, '2019-08-30 13:29:40', 'Wrench, Combination, 18mm, 12pt', 1, 2, '', 1),
(745, 47, 2, 2, '2019-08-30 15:45:37', 'Plier, Electrical, 8 inches', 1, 2, 'Testing Group', 1),
(746, 0, 2, 2, '2019-09-06 09:18:51', 'Wrench, Combination, 16mm, 12pt', 1, 2, '', 1),
(747, 0, 2, 2, '2019-09-06 09:46:41', 'Wrench, Combination, 21mm, 12pt', 1, 2, '', 1),
(748, 0, 2, 2, '2019-09-07 11:04:50', 'Wrench, Combination, 30mm, 12pt', 1, 2, '', 1),
(749, 0, 2, 2, '2019-09-07 13:32:59', 'Wrench, Combination, 24mm, 12pt', 1, 2, '', 1),
(750, 0, 2, 2, '2019-09-07 13:33:27', 'Wrench, Combination, 24mm, 12pt', 1, 2, '', 1),
(751, 0, 2, 2, '2019-09-11 09:28:40', 'Wrench, Allen 14mm', 1, 2, '', 1),
(752, 0, 2, 2, '2019-09-11 09:30:43', 'Wrench, Allen 17mm', 1, 2, '', 1),
(753, 0, 2, 2, '2019-09-11 09:31:36', 'Wrench, Allen 19mm', 1, 2, '', 1),
(754, 0, 2, 2, '2019-09-11 10:04:56', 'Wrench, Allen 5.5mm', 1, 2, '', 1),
(755, 0, 2, 2, '2019-09-13 09:49:49', '1/2 inches DR 12pt Impact Socket - 32mm', 1, 2, '', 1),
(756, 0, 2, 2, '2019-09-14 10:55:34', 'Tap, Hand, M12 x 1.75mm', 1, 1, '', 1),
(757, 0, 2, 2, '2019-09-16 13:35:13', '1/2 inches DR 12 pt Socket - 19mm', 1, 2, '', 1),
(758, 0, 2, 2, '2019-09-16 13:57:21', '1/2 inches DR 12pt Socket - 23mm', 2, 2, '', 1),
(759, 0, 2, 2, '2019-09-18 09:44:33', 'Threader, Pipe (1/2 inches, 3/4 inches, 1 inches, 1-1/4 inches, 1-1/2 inches, 2 inches)', 1, 1, '', 1),
(760, 0, 2, 2, '2019-09-18 09:45:28', 'Igniter (for Oxygen and Acetylene)', 2, 2, '', 1),
(761, 53, 2, 2, '2019-09-18 09:48:11', 'Cutting Outfit', 1, 1, 'Testing Group', 1),
(762, 0, 2, 2, '2019-09-18 09:59:25', 'Sprayer, Tank (Manual)', 2, 2, '', 1),
(763, 43, 2, 2, '2019-09-18 10:01:43', 'Rake, Metal (Wood Handle)', 1, 2, 'Admin', 1),
(764, 43, 2, 2, '2019-09-18 10:02:25', 'Shovel', 2, 2, 'Admin', 1),
(765, 43, 2, 2, '2019-09-18 10:03:45', 'Bolo', 2, 2, 'Admin', 1),
(766, 0, 2, 2, '2019-09-19 10:05:09', 'Wrench, Combination/Spanner, 17mm, 12pt', 4, 2, '', 1),
(767, 0, 2, 2, '2019-09-19 10:37:35', 'Wrench, Combination/Spanner 19mm, 12pt', 4, 2, '', 1),
(768, 0, 2, 2, '2019-09-19 10:52:17', 'Prunning Shear, Straight, 8 inches', 2, 2, '', 1),
(769, 53, 2, 2, '2019-09-19 11:04:48', 'Mallet, Plastic 30mm', 2, 2, 'Testing Group', 1),
(770, 53, 2, 2, '2019-09-19 11:18:55', 'Mallet, Dead Blow, 2Lbs', 1, 2, 'Testing Group', 1),
(771, 54, 2, 2, '2019-09-19 11:23:43', 'Adapter, Tek Screw, Magnetic 8mm', 2, 2, 'Admin', 1),
(772, 17, 2, 2, '2019-09-19 11:31:41', 'Hole Saw Drill Bit, 25mm', 1, 2, 'Electrical & Instrumentation', 1),
(773, 54, 2, 2, '2019-09-19 11:48:32', 'Hole Saw Set, 3pcs (Arbor 3/8 inch Shank, Flat Bit 7/8 inch, Hole Saw 2-1/2 inches)', 1, 1, 'Admin', 1),
(774, 17, 2, 2, '2019-09-19 11:58:55', 'Hole Saw Drill Bit, 3/4 inches', 1, 2, 'Electrical & Instrumentation', 1),
(775, 0, 2, 2, '2019-09-19 12:00:27', 'Ladder, Folded,  Fiber Glass (Red)', 1, 2, '', 1),
(776, 0, 2, 2, '2019-09-19 12:01:40', 'Ladder,  A-frame, Aluminum', 1, 2, '', 1),
(777, 53, 2, 2, '2019-09-19 12:05:49', 'Engine Cleaning Gun / Spray Gun, Long Nozzle', 1, 2, 'Testing Group', 1),
(778, 53, 2, 2, '2019-09-19 12:16:29', 'Gun, Spray', 1, 3, 'Testing Group', 1),
(779, 53, 2, 17, '2019-09-19 14:27:05', 'T-Bore Hole, Telescoping Precision', 1, 1, 'Testing Group', 1),
(780, 0, 2, 17, '2019-09-19 14:28:49', 'Gauge, Screw Pitch 0.5 - 27 x 0.6 - 28', 3, 1, '', 1),
(781, 0, 2, 17, '2019-09-19 14:29:57', 'Gauge, Screw Pitch 12 - 20 x 27 - 40', 3, 1, '', 1),
(782, 37, 2, 17, '2019-09-19 14:54:18', 'Steel Tape, 5 meters', 1, 2, 'Warehouse', 1),
(783, 35, 2, 17, '2019-09-19 14:55:35', 'Steel Tape, 5 meters', 1, 2, 'Warehouse', 1),
(784, 0, 2, 17, '2019-09-19 15:10:13', 'Meter Stick, Wooden', 3, 2, '', 1),
(785, 0, 2, 17, '2019-09-19 15:18:27', 'Level Bar, Magnetic, 24 inches', 1, 2, '', 1),
(786, 0, 2, 17, '2019-09-19 15:20:18', 'Weighing Scale, 60kg x 200g', 1, 3, '', 1),
(787, 46, 2, 14, '2019-09-19 15:31:54', 'Grinder, Angle 4 inches', 1, 3, 'Mechanical Maintenance', 1),
(788, 46, 2, 14, '2019-09-19 15:33:25', 'Grinder, Angle 7 inches', 1, 3, 'Mechanical Maintenance', 1),
(789, 0, 2, 14, '2019-09-19 15:34:54', 'Haird Dryer/Blower', 1, 3, '', 1),
(790, 0, 1, 12, '2019-09-24 16:07:13', 'Wireless Mouse', 1, 2, '', 1),
(791, 0, 1, 12, '2019-09-24 16:25:16', 'Laptop Core i3 14 inches', 1, 3, '', 1),
(792, 0, 1, 12, '2019-09-24 16:30:59', 'Laptop Charger', 1, 2, '', 1),
(793, 0, 1, 12, '2019-09-26 13:51:23', 'Wired Mouse', 1, 2, '', 1),
(794, 0, 1, 12, '2019-09-26 13:57:37', 'Laptop i3 16 inches', 1, 3, '', 1),
(795, 0, 1, 12, '2019-09-26 13:58:46', 'Laptop Charger', 1, 2, '', 1),
(796, 0, 1, 3, '2019-09-26 14:50:30', 'sample', 1, 2, '', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `et_set`
--

INSERT INTO `et_set` (`set_id`, `set_name`, `set_price`, `set_serial_no`) VALUES
(1, 'Laptop', '14062.50', ''),
(2, 'Hallo', '0.00', ''),
(3, 'Hallow Punch 3mm-19mm', '0.00', ''),
(4, 'Crowfoot Wrench 8mm-24mm', '0.00', ''),
(5, 'Laptop', '23000.00', ''),
(6, 'Desktop 1', '16000.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
`location_id` int(11) NOT NULL,
  `location_name` varchar(100) DEFAULT NULL,
  `location_prefix` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location_name`, `location_prefix`) VALUES
(1, 'Bacolod', 'CENPRI-B'),
(2, 'Bago', 'CENPRI-S'),
(3, 'Sta. Isabel Power Coop.', 'SIPC'),
(4, 'Calapan Power Generation Corp.', 'CPGC');

-- --------------------------------------------------------

--
-- Table structure for table `physical_condition`
--

CREATE TABLE IF NOT EXISTS `physical_condition` (
`physical_id` int(11) NOT NULL,
  `condition_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `physical_condition`
--

INSERT INTO `physical_condition` (`physical_id`, `condition_name`) VALUES
(1, 'Good'),
(2, 'Needs Cleaning'),
(3, 'Old - But usable'),
(4, 'Worn out - But usable'),
(5, 'Partially Damage - But usable');

-- --------------------------------------------------------

--
-- Table structure for table `placement`
--

CREATE TABLE IF NOT EXISTS `placement` (
`placement_id` int(11) NOT NULL,
  `placement_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `placement`
--

INSERT INTO `placement` (`placement_id`, `placement_name`) VALUES
(1, 'Warehouse Room 1'),
(2, 'Warehouse Room 2'),
(3, 'Warehouse Room 3'),
(4, 'Warehouse - Extn A'),
(5, 'Warehouse - Extn B'),
(6, 'Warehouse - Building'),
(7, 'Maintenance Department'),
(8, 'Electrical Department'),
(9, 'Tank Farm'),
(10, 'Progen Warehouse'),
(11, 'Admin Office'),
(12, 'Control Room'),
(13, 'Switchgear Room 1'),
(14, 'Switchgear Room 2');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `repair_details`
--

INSERT INTO `repair_details` (`repair_id`, `ed_id`, `repair_date`, `repair_price`, `jo_no`, `supplier`, `assessment`, `received_by`, `remarks`, `create_date`, `user_id`, `saved`, `unsaved`) VALUES
(1, 13, '2019-09-26', '1200.00', '1111', 'Computer Slutions', 1, 16, '', '2019-09-26 14:23:21', 1, 1, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returned_series`
--

INSERT INTO `returned_series` (`series_id`, `prefix`, `series`) VALUES
(1, '-2019-07', 1001),
(2, '-2019-06', 1001),
(5, 'BS-2019-07', 1002),
(6, 'BS-2019-07', 1003),
(7, 'BCD-2019-09', 1001),
(8, 'BCD-2017-09', 1001),
(9, 'BS-2019-09', 1004),
(10, 'BS-2019-09', 1005),
(11, 'BS-2019-09', 9);

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_details`
--

INSERT INTO `return_details` (`rd_id`, `return_id`, `et_id`, `ed_id`, `date_issued`, `return_remarks`) VALUES
(1, 1, 506, 523, '', ''),
(2, 2, 395, 393, '', ''),
(9, 3, 559, 581, '', ''),
(10, 3, 560, 582, '', ''),
(11, 3, 561, 583, '', ''),
(12, 4, 524, 546, '', ''),
(13, 4, 525, 547, '', ''),
(14, 4, 541, 562, '2018-11-23', ''),
(15, 4, 644, 678, '2018-11-23', ''),
(16, 5, 790, 845, '2019-09-25', NULL),
(17, 6, 791, 846, '2019-09-25', NULL),
(18, 6, 792, 847, '2019-09-25', NULL),
(19, 7, 49, 47, '2018-11-28', NULL),
(20, 7, 791, 846, '2019-09-26', NULL),
(21, 7, 792, 847, '2019-09-26', NULL),
(22, 7, 793, 848, '2019-09-26', NULL),
(23, 8, 13, 13, '', NULL),
(24, 9, 790, 845, '', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_head`
--

INSERT INTO `return_head` (`return_id`, `ars_no`, `atf_no`, `return_date`, `accountability_id`, `received_by`, `return_remarks`, `create_date`) VALUES
(1, '-2019-07-1001', '-2019-1001', '2019-07-05', 0, 16, 'The drive joint broken. ', '2019-07-11 11:55:32'),
(2, '-2019-06-1001', '-2019-1002', '2019-06-25', 0, 16, 'The thread is already flatten.', '2019-07-22 13:46:16'),
(3, 'BS-2019-07-1002', 'BS-2019-1005', '2019-07-19', 33, 16, 'All items returned in good condition.', '2019-07-30 14:37:25'),
(4, 'BS-2019-07-1003', 'BS-2019-1006', '2019-07-17', 8, 16, 'All items returned in Good Condition.', '2019-08-06 15:17:47'),
(5, 'BCD-2019-09-1001', 'BCD-2019-1007', '2019-09-25', 78, 16, '', '2019-09-25 11:28:49'),
(6, 'BCD-2017-09-1001', 'BCD-2019-1008', '2017-09-25', 78, 16, '', '2019-09-25 11:30:15'),
(7, 'BS-2019-09-1004', 'BS-2019-1009', '2019-09-26', 16, 5, '', '2019-09-26 14:03:33'),
(8, 'BS-2019-09-1005', 'BS-2019-1010', '2019-09-26', 22, 13, 'Sample', '2019-09-26 14:21:33'),
(9, 'BS-2019-09-1006', 'BS-2019-1011', '2019-09-26', 35, 16, 'sample', '2019-09-26 14:30:19');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcat_id`, `category_id`, `subcat_name`, `subcat_prefix`, `location`, `subcat_desc`) VALUES
(1, 1, 'Transportation Equipment', 'FFE-TRA', 'BS', 'Vehicles, Innova, Crosswind, Pickup, Fortuner, Forklift, Boomtruck, etc.'),
(2, 2, 'Hand Tools', 'TOO-HAN', 'BS', 'Handsaw, Tin snips, Wood Chisel, Axe, Screwdriver, Hammer, Pliers, etc.'),
(3, 1, 'Communication Equipment', 'FFE-COME', 'BS', 'Radio Handset, Radio Power Supply, Radio Repeater, Radio Antenna, Microphone with Cord for ICOM Motorola Radius'),
(4, 1, 'Office Furnitures', 'FFE-FUR', 'BS', 'Office Chair, Office Table, Book Shelves, Filing Cabinets, Computer Table, Conference Table and Chairs, Table Top Glass, Cubicle, Office Partitions, Office Drawers'),
(5, 1, 'Office Equipment', 'FFE-EQU', 'BS', 'Cellphones, Telephones, Printers, Scanners, Fax Machine, Overhead Projector,  Projector Screen, Photocopier, Hard Disk, USB, External Hard Drive, Recorder, Safety Vault, Standby Generator, Digital and Video Camera, Audio System for the Board Room, Microphone w/ Speaker,  Telephone System (PABX), Air Conditioning Unit, CCTV Camera, IP/Surveillance Camera, Industrial Fan, Air Cooler, Ceiling Fan, Electric Fan, Exhaust Fan, Television'),
(6, 1, 'Personal Protective Equipment', 'FFE-PPE', 'BS', 'Hard Hat, Safety Goggles, Harness, Safety Shoes, Boots, Chemical Mask, Welding Mask, Ear Plugs, Ear Muffs'),
(7, 1, 'Safety and Security Equipment', 'FFE-SSE', 'BS', 'Data Cabinet, Fire Extinguisher, Eye Wash and Face Shower, Emergency Light, Flash Light, Alarms, Caution Board, Warning Triangle or Cone, Biometric, Automatic Lock Door (Door Access),  Fire Hose,  Illuminated Fire Exit Sign'),
(8, 1, 'Appliance', 'FFE-APP', 'BS', 'Gas Stove, Refrigerator,  CD/DVD Player, Blender & Juicers, Coffee Maker,  Rice Cooker, Toaster, Electric Airpot, Electric Kettle, Electric Stove, Electric/Gas Oven, Food Warmer/Steamer, Gas Stove, Microwave Oven, Water Dispenser, Dryer, Flat Iron, Hair Dryer, Steam Iron, Vacuum Cleaner, Washing Machine, etc.'),
(9, 1, 'Staffhouse Furnitures and Supplies', 'FFE-STA', 'BS', 'Dining Table and Chairs, Sofa, Beds, Clothes Cabinet, Mattress, Pillows, Pillow Case, Bed Sheets, Blanket, etc.'),
(10, 1, 'Housewares', 'FFE-HOU', 'BS', 'Bowl, Cups and Saucers, Drinking Glass, Mug, Pitcher, Plate, Spoon and Fork, Food Keeper, Dipper, Pail, Trash Bin'),
(11, 1, 'Medical Equipment', 'FFE-MED', 'BS', 'Glucometer, ( Glucose Meter, One Touch Ultra 2 ), Digital Blood Pressure Apparatus, Aneroid Blood Pressure Apparatus, Stethoscope, Weighing Scale, First Aid Equipment, Oxygen for First Aid, etc.'),
(12, 1, 'Computer Equipment', 'FFE-COMP', 'BS', 'Routers, Monitor, Laptops, UPS, Wifi Adapter, Keyboard, Mouse, Speaker, Headset, AVR, CPU, etc.'),
(13, 1, 'Office Supplies', 'FFE-SUP', 'BS', 'Staplers, Calculators, Punchers, Scissor, Tape Dispenser, Filing Tray, Document Keeper, Clip Board, Binders, Books, Cutter, Tape Dispenser, Sharpener, Laptop Charger, Laptop  Battery, etc'),
(14, 2, 'Power Tools', 'TOO-POW', 'BS', 'Angle Grinder, Hand Drill, Chipping Hammer, Electric Blower, Heat Gun, Circular Saw'),
(15, 2, 'Labelling Tools', 'TOO-LABE', 'BS', 'Engraver, Letter Puncher Stamp, Number Puncher Stamp, Brady Printer'),
(16, 2, 'Lifting Tools', 'TOO-LIFT', 'BS', 'Pallet Truck, Shackle, Nylon Sling, Nylon Rope, Hydraulic Jack, etc.'),
(17, 2, 'Measuring Tools', 'TOO-MEA', 'BS', 'Leveling Tool, Ruler, Meter Stick, Weighing Scale, Steel Tape, L-Square, Micrometer, Bore Gauge, Caliper'),
(18, 2, 'Testing Equipment', 'TOO-TES', 'BS', 'Insulation Tester, PH Meter, Infrared Thermometer, Tester Calibration, etc.'),
(19, 3, 'Sam sub cat', 'SAM-CAT', 'BCD', 'Sub Category Sample description'),
(20, 4, 'Sample 1', 'SAM-1', 'BCD', 'mouse, charger');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`unit_id`, `unit_name`) VALUES
(1, 'set/s'),
(2, 'pc/s'),
(3, 'unit/s'),
(4, 'pair'),
(5, 'cyl/s');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fullname`, `username`, `password`) VALUES
(1, 'Hennelen Tanan', 'admin', 'admin');

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
MODIFY `asset_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=851;
--
-- AUTO_INCREMENT for table `atf_series`
--
ALTER TABLE `atf_series`
MODIFY `atf_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `borrow_details`
--
ALTER TABLE `borrow_details`
MODIFY `bd_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `damage_info`
--
ALTER TABLE `damage_info`
MODIFY `damage_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `damage_series`
--
ALTER TABLE `damage_series`
MODIFY `ds_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `employee_inclusion`
--
ALTER TABLE `employee_inclusion`
MODIFY `ei_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `employee_series`
--
ALTER TABLE `employee_series`
MODIFY `empser_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `et_details`
--
ALTER TABLE `et_details`
MODIFY `ed_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=851;
--
-- AUTO_INCREMENT for table `et_head`
--
ALTER TABLE `et_head`
MODIFY `et_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=797;
--
-- AUTO_INCREMENT for table `et_info`
--
ALTER TABLE `et_info`
MODIFY `et_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `et_set`
--
ALTER TABLE `et_set`
MODIFY `set_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `physical_condition`
--
ALTER TABLE `physical_condition`
MODIFY `physical_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `placement`
--
ALTER TABLE `placement`
MODIFY `placement_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `rack`
--
ALTER TABLE `rack`
MODIFY `rack_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `repair_details`
--
ALTER TABLE `repair_details`
MODIFY `repair_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `returned_et`
--
ALTER TABLE `returned_et`
MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `returned_series`
--
ALTER TABLE `returned_series`
MODIFY `series_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `return_details`
--
ALTER TABLE `return_details`
MODIFY `rd_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `return_head`
--
ALTER TABLE `return_head`
MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
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
MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
