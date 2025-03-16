-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Mar 16, 2025 alle 23:43
-- Versione del server: 8.0.37-cll-lve
-- Versione PHP: 8.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `h6xt66s7_carico`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `batch_ean`
--

CREATE TABLE `batch_ean` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descrizione` text,
  `totale` int DEFAULT '0',
  `utilizzati` int DEFAULT '0',
  `utente_id` int DEFAULT NULL,
  `creato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `batch_ean`
--

INSERT INTO `batch_ean` (`id`, `nome`, `descrizione`, `totale`, `utilizzati`, `utente_id`, `creato_il`) VALUES
(4, 'Demo EAN 2025-03-15 01:25:10', 'Codici EAN generati automaticamente per test', 100, 0, 4, '2025-03-15 00:25:10');

-- --------------------------------------------------------

--
-- Struttura della tabella `cache_aliquote`
--

CREATE TABLE `cache_aliquote` (
  `id` int NOT NULL,
  `tax_id` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` decimal(5,2) DEFAULT NULL,
  `creato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `cache_aliquote`
--

INSERT INTO `cache_aliquote` (`id`, `tax_id`, `name`, `value`, `creato_il`) VALUES
(1, '5', 'Non imp. art. 8 DPR 633/72', 0.00, '2025-03-15 20:42:46'),
(2, '6', 'Art.1 c.54-89 L.190/2014 Reg. forfettario', 0.00, '2025-03-15 20:42:46'),
(3, '7', 'Fuori campo IVA', 0.00, '2025-03-15 20:42:46'),
(4, '8', 'Reverse Charge', 0.00, '2025-03-15 20:42:46'),
(5, '10', 'Esente Iva', 0.00, '2025-03-15 20:42:46'),
(6, '18', 'Art. 41. Cessioni intracomunitarie non imponibili', 0.00, '2025-03-15 20:42:46'),
(7, '4', 'Aliquota 4%', 4.00, '2025-03-15 20:42:46'),
(8, '2', 'Aliquota 10%', 10.00, '2025-03-15 20:42:46'),
(9, '3', 'Aliquota 22%', 22.00, '2025-03-15 20:42:46');

-- --------------------------------------------------------

--
-- Struttura della tabella `cache_fornitori`
--

CREATE TABLE `cache_fornitori` (
  `id` int NOT NULL,
  `supplier_id` varchar(100) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `creato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `cache_fornitori`
--

INSERT INTO `cache_fornitori` (`id`, `supplier_id`, `business_name`, `nome`, `email`, `creato_il`) VALUES
(1, '1', 'Zeus sport', 'Zeus sport', '', '2025-03-15 16:42:42'),
(2, '2', 'Huang Dongmei', 'Huang Dongmei', '', '2025-03-15 16:42:42'),
(3, '3', 'Angelo Moda di YUAN JI WEN', 'Angelo Moda di YUAN JI WEN', '', '2025-03-15 16:42:42'),
(4, '4', 'YINTAI di Pan Shuqin', 'YINTAI di Pan Shuqin', '', '2025-03-15 16:42:42'),
(5, '5', 'New story', 'New story', '', '2025-03-15 16:42:42'),
(6, '6', 'ANGELO FASHION DI PAN SHOUMAO', 'ANGELO FASHION DI PAN SHOUMAO', '', '2025-03-15 16:42:42'),
(7, '7', 'GUOMEI SU', 'GUOMEI SU', '', '2025-03-15 16:42:42'),
(8, '8', 'NEW WEST STORY S.R.L', 'NEW WEST STORY S.R.L', '', '2025-03-15 16:42:42'),
(9, '9', 'MINGDIAN di Pan Haijao', 'MINGDIAN di Pan Haijao', '', '2025-03-15 16:42:42'),
(10, '10', ' Di & NG di Ding Xiao Yin', ' Di & NG di Ding Xiao Yin', '', '2025-03-15 16:42:42'),
(11, '11', 'HU CAIJU', 'HU CAIJU', '', '2025-03-15 16:42:42'),
(12, '12', 'Amazon Online Italy S.r.l.', 'Amazon Online Italy S.r.l.', '', '2025-03-15 16:42:42'),
(13, '13', 'Laboratorio di Analisi Cliniche Dott.ri Cannella - De Leo Srl', 'Laboratorio di Analisi Cliniche Dott.ri Cannella - De Leo Srl', '', '2025-03-15 16:42:42'),
(14, '14', 'NEW SHIDA SRLS UNIPERSONALE', 'NEW SHIDA SRLS UNIPERSONALE', '', '2025-03-15 16:42:42'),
(15, '15', 'STELLA PELLETTERIA S.R.L.S.', 'STELLA PELLETTERIA S.R.L.S.', '', '2025-03-15 16:42:42'),
(16, '16', 'AL.MA. DISTRIBUZIONE SRL ', 'AL.MA. DISTRIBUZIONE SRL ', '', '2025-03-15 16:42:42'),
(17, '17', 'VIP BIJOUX SAS DI SUN YANGYANG & C.', 'VIP BIJOUX SAS DI SUN YANGYANG & C.', '', '2025-03-15 16:42:42'),
(18, '18', 'LI XIAOYAN', 'LI XIAOYAN', '', '2025-03-15 16:42:42'),
(19, '19', 'test', 'test', '', '2025-03-15 16:42:42'),
(20, '20', 'ACY STYLE S.R.L.S.', 'ACY STYLE S.R.L.S.', '', '2025-03-15 16:42:42'),
(21, '21', 'A.CANGIANIELLO SRL', 'A.CANGIANIELLO SRL', '', '2025-03-15 16:42:42'),
(22, '22', 'DIGITEX S.R.L.S.', 'DIGITEX S.R.L.S.', '', '2025-03-15 16:42:42'),
(23, '23', 'Uniconsul Soc.Coop. ad Uniconsul S.r.L.', 'Uniconsul Soc.Coop. ad Uniconsul S.r.L.', '', '2025-03-15 16:42:42'),
(24, '24', 'D\'Antonio Emilia', 'D\'Antonio Emilia', '', '2025-03-15 16:42:42'),
(25, '25', 'Amazon Services Europe S.à r.l.', 'Amazon Services Europe S.à r.l.', '', '2025-03-15 16:42:42'),
(26, '26', 'JIN CHENGHE', 'JIN CHENGHE', '', '2025-03-15 16:42:42'),
(27, '27', 'DIPA.TEX S.R.L. UNIPERSONALE', 'DIPA.TEX S.R.L. UNIPERSONALE', '', '2025-03-15 16:42:42'),
(28, '28', 'eBay GmbH', 'eBay GmbH', '', '2025-03-15 16:42:42'),
(29, '29', 'Meta Platforms Ireland Limited', 'Meta Platforms Ireland Limited', '', '2025-03-15 16:42:42'),
(30, '30', 'ZHU JIANPING', 'ZHU JIANPING', '', '2025-03-15 16:42:42'),
(31, '31', 'SUIZHU CHEN', 'SUIZHU CHEN', '', '2025-03-15 16:42:42'),
(32, '32', 'GENHUA ZHENG', 'GENHUA ZHENG', '', '2025-03-15 16:42:42'),
(33, '33', 'TONG TONG DI CHEN FENGLIAN', 'TONG TONG DI CHEN FENGLIAN', '', '2025-03-15 16:42:42'),
(34, '34', 'Rossi Web Media di Giovanni Rossi', 'Rossi Web Media di Giovanni Rossi', '', '2025-03-15 16:42:42'),
(35, '35', 'JI XIAOQING', 'JI XIAOQING', '', '2025-03-15 16:42:42'),
(36, '36', 'UMBERTO LIVELLO', 'UMBERTO LIVELLO', '', '2025-03-15 16:42:42'),
(37, '37', 'CALIO\' INFORMATICA  SRL', 'CALIO\' INFORMATICA  SRL', '', '2025-03-15 16:42:42'),
(38, '38', 'JIANWU ZHOU', 'JIANWU ZHOU', '', '2025-03-15 16:42:42'),
(39, '39', 'EUROSTARLED SRLS', 'EUROSTARLED SRLS', '', '2025-03-15 16:42:42'),
(40, '40', 'Enel Energia S.p.A', 'Enel Energia S.p.A', '', '2025-03-15 16:42:42'),
(41, '41', 'Smart Click di Tortora Vincenzo', 'Smart Click di Tortora Vincenzo', '', '2025-03-15 16:42:42'),
(42, '42', 'Bazinga di Giordano Carmine', 'Bazinga di Giordano Carmine', '', '2025-03-15 16:42:42'),
(43, '43', 'ICOMMERCE SRL', 'ICOMMERCE SRL', '', '2025-03-15 16:42:42'),
(44, '44', 'Phoenix srl', 'Phoenix srl', '', '2025-03-15 16:42:42'),
(45, '45', 'La Nuova Persiana di Gerardo Pizzo', 'La Nuova Persiana di Gerardo Pizzo', '', '2025-03-15 16:42:42'),
(46, '46', 'FedEx Express Italy S.r.l.', 'FedEx Express Italy S.r.l.', '', '2025-03-15 16:42:42'),
(47, '47', 'Google Ireland Limited', 'Google Ireland Limited', '', '2025-03-15 16:42:42'),
(48, '48', ' WebAppick', ' WebAppick', '', '2025-03-15 16:42:42'),
(49, '49', 'BAI SHUN INGROSSO DI LIN XINGYUE', 'BAI SHUN INGROSSO DI LIN XINGYUE', '', '2025-03-15 16:42:42'),
(50, '50', 'MAX FASHION SRLS', 'MAX FASHION SRLS', '', '2025-03-15 16:42:42'),
(51, '51', 'VICIDOMINI ANIELLO S.R.L.', 'VICIDOMINI ANIELLO S.R.L.', '', '2025-03-15 16:42:42'),
(52, '52', 'CHENGWEI ZHENG', 'CHENGWEI ZHENG', '', '2025-03-15 16:42:42'),
(53, '53', 'ANTONIO FATTORUSO', 'ANTONIO FATTORUSO', '', '2025-03-15 16:42:42'),
(54, '54', 'AdTribes.io', 'AdTribes.io', '', '2025-03-15 16:42:42'),
(55, '55', 'SHENGQIANG LIN', 'SHENGQIANG LIN', '', '2025-03-15 16:42:42'),
(56, '56', 'JING TAI DI ZHOU XIAODONG', 'JING TAI DI ZHOU XIAODONG', '', '2025-03-15 16:42:42'),
(57, '57', 'LINO MODA UOMO SRLS', 'LINO MODA UOMO SRLS', '', '2025-03-15 16:42:42'),
(58, '58', 'A.PASSARO UOMO SRL', 'A.PASSARO UOMO SRL', '', '2025-03-15 16:42:42'),
(59, '59', 'Shopify International Limited', 'Shopify International Limited', '', '2025-03-15 16:42:42'),
(60, '60', 'NAPPO SHOP DI NAPPO EMILIO', 'NAPPO SHOP DI NAPPO EMILIO', '', '2025-03-15 16:42:42'),
(61, '61', 'SUSANNA di Chen Caili', 'SUSANNA di Chen Caili', 'chencaili@pec.it', '2025-03-15 16:42:42'),
(62, '62', 'Leonardo Pellicciotta', 'Leonardo Pellicciotta', '', '2025-03-15 16:42:42'),
(63, '63', 'GE.MA SRL', 'GE.MA SRL', '', '2025-03-15 16:42:42'),
(64, '64', 'CONFEZIONI HE HUANHAO', 'CONFEZIONI HE HUANHAO', '', '2025-03-15 16:42:42'),
(65, '65', 'VINCENZO GRIMALDI', 'VINCENZO GRIMALDI', '', '2025-03-15 16:42:42'),
(66, '66', 'GENNARO CISALE', 'GENNARO CISALE', '', '2025-03-15 16:42:42'),
(67, '67', 'Vanity Group SRL', 'Vanity Group SRL', '', '2025-03-15 16:42:42'),
(68, '68', 'RWM S.R.L.', 'RWM S.R.L.', '', '2025-03-15 16:42:42'),
(69, '69', 'GORI SpA', 'GORI SpA', 'protocollo@cert.goriacqua.com', '2025-03-15 16:42:42'),
(70, '70', 'Stripe Payments Europe Limited', 'Stripe Payments Europe Limited', '', '2025-03-15 16:42:42'),
(71, '71', 'GS1 Italy', 'GS1 Italy', '', '2025-03-15 16:42:42'),
(72, '72', 'EUREKA PITTURAZIONI DI ROSARIO MOSCA', 'EUREKA PITTURAZIONI DI ROSARIO MOSCA', '', '2025-03-15 16:42:42'),
(73, '73', 'DIMATICA COMPUTER di M. Dello Iacono', 'DIMATICA COMPUTER di M. Dello Iacono', '', '2025-03-15 16:42:42'),
(74, '74', 'XUAN CAI KE JI DI YANG JINXIANG', 'XUAN CAI KE JI DI YANG JINXIANG', '', '2025-03-15 16:42:42'),
(75, '75', 'xia yuankui', 'xia yuankui', '', '2025-03-15 16:42:42'),
(76, '76', 'Ikea Italia Retail Srl', 'Ikea Italia Retail Srl', '', '2025-03-15 16:42:42'),
(77, '77', 'GM IMPIANTI DI MASCOLO GIUSEPPE', 'GM IMPIANTI DI MASCOLO GIUSEPPE', '', '2025-03-15 16:42:42'),
(78, '78', 'Enel Energia S.p.A.', 'Enel Energia S.p.A.', '', '2025-03-15 16:42:42'),
(79, '79', 'BARBA GERARDO SRL', 'BARBA GERARDO SRL', '', '2025-03-15 16:42:42'),
(80, '80', 'MORENA S.R.L.S. ', 'MORENA S.R.L.S. ', '', '2025-03-15 16:42:42'),
(81, '81', 'MeG di Fontanella Anna', 'MeG di Fontanella Anna', '', '2025-03-15 16:42:42'),
(82, '82', 'karumba service srl', 'karumba service srl', '', '2025-03-15 16:42:42'),
(83, '83', 'LA DISPENSA PAGI SRL', 'LA DISPENSA PAGI SRL', '', '2025-03-15 16:42:42'),
(84, '84', 'NEW A.G. FERR DI BUONOCORE A. & C.', 'NEW A.G. FERR DI BUONOCORE A. & C.', '', '2025-03-15 16:42:42'),
(85, '85', 'SOMMA S.R.L.', 'SOMMA S.R.L.', '', '2025-03-15 16:42:42'),
(86, '86', 'SALVATORE STILE', 'SALVATORE STILE', '', '2025-03-15 16:42:42'),
(87, '87', 'ISTITUTO DI VIGILANZA DORIA S.R.L.', 'ISTITUTO DI VIGILANZA DORIA S.R.L.', '', '2025-03-15 16:42:42'),
(88, '88', 'Wirlab Srl', 'Wirlab Srl', '', '2025-03-15 16:42:42'),
(89, '89', 'SiteGround Spain S.L.', 'SiteGround Spain S.L.', '', '2025-03-15 16:42:42'),
(90, '90', 'LAVANDERIA VITOLO GAETANO DI VITOLO SALVATORE E FRANCESCO SNC', 'LAVANDERIA VITOLO GAETANO DI VITOLO SALVATORE E FRANCESCO SNC', '', '2025-03-15 16:42:42'),
(91, '91', 'XIN ZHONG OU di Jiang Linfeng', 'XIN ZHONG OU di Jiang Linfeng', '', '2025-03-15 16:42:42'),
(92, '92', 'DEKE DAI', 'DEKE DAI', '', '2025-03-15 16:42:42'),
(93, '93', 'CHEN XUANYU', 'CHEN XUANYU', '', '2025-03-15 16:42:42'),
(94, '94', 'MONTALBINO GAS SRL', 'MONTALBINO GAS SRL', '', '2025-03-15 16:42:42'),
(95, '95', 'SOFIA SRL UNIPERSONALE', 'SOFIA SRL UNIPERSONALE', '', '2025-03-15 16:42:42'),
(96, '96', 'AdScale', 'AdScale', '', '2025-03-15 16:42:42'),
(97, '97', 'Scalapay Srl', 'Scalapay Srl', '', '2025-03-15 16:42:42'),
(98, '98', 'Mastromedia di Mastrorocco Antonio', 'Mastromedia di Mastrorocco Antonio', '', '2025-03-15 16:42:42'),
(99, '99', 'Abbigliamento di Jin Suqin', 'Abbigliamento di Jin Suqin', '', '2025-03-15 16:42:42'),
(100, '100', 'JIN YONGHE', 'JIN YONGHE', '', '2025-03-15 16:42:42'),
(101, '101', 'REDDOAK S.R.L.', 'REDDOAK S.R.L.', '', '2025-03-15 16:42:42'),
(102, '102', 'ADVIGATOR S.R.L.', 'ADVIGATOR S.R.L.', '', '2025-03-15 16:42:42'),
(103, '103', 'NOVI G. DI NOVI GIOACCHINO E NOVI PAOLO S.N.C.', 'NOVI G. DI NOVI GIOACCHINO E NOVI PAOLO S.N.C.', '', '2025-03-15 16:42:42'),
(104, '104', 'ACCESSORISSIMO DI SU HAIYAN', 'ACCESSORISSIMO DI SU HAIYAN', '', '2025-03-15 16:42:42'),
(105, '105', 'AMBROCASUAL SRL', 'AMBROCASUAL SRL', '', '2025-03-15 16:42:42'),
(106, '106', 'TikTok Information Technologies UK Limited', 'TikTok Information Technologies UK Limited', '', '2025-03-15 16:42:42'),
(107, '107', 'Zalando SE', 'Zalando SE', '', '2025-03-15 16:42:42'),
(108, '108', 'WIRALEX SRL', 'WIRALEX SRL', '', '2025-03-15 16:42:42'),
(109, '109', 'ADM', 'ADM', '', '2025-03-15 16:42:42'),
(110, '110', 'SILVIA SUPERMERCATI SAS DI ILARIA CAPERNA & C.', 'SILVIA SUPERMERCATI SAS DI ILARIA CAPERNA & C.', '', '2025-03-15 16:42:42'),
(111, '111', 'YIN TAI di Peng Xiaofan', 'YIN TAI di Peng Xiaofan', '', '2025-03-15 16:42:42'),
(112, '112', 'Giuseppe Del Sorbo Dottore Commercialista – Revisore Legale', 'Giuseppe Del Sorbo Dottore Commercialista – Revisore Legale', '', '2025-03-15 16:42:42'),
(113, '113', 'YE JIANHUA', 'YE JIANHUA', '', '2025-03-15 16:42:42'),
(114, '114', 'YE JIANHUA', 'YE JIANHUA', '', '2025-03-15 16:42:42'),
(115, '115', 'yang weike', 'yang weike', '', '2025-03-15 16:42:42'),
(116, '116', 'MO\'MATIC S.R.L.S. UNIPERSONALE', 'MO\'MATIC S.R.L.S. UNIPERSONALE', '', '2025-03-15 16:42:42'),
(117, '117', 'F.G. Informatica di Fontanella Gianluigi', 'F.G. Informatica di Fontanella Gianluigi', '', '2025-03-15 16:42:42'),
(118, '118', 'AL.CA.MA.S.A.S. DI CARMELLINO FRANCESCO &C.', 'AL.CA.MA.S.A.S. DI CARMELLINO FRANCESCO &C.', '', '2025-03-15 16:42:42'),
(119, '119', 'car2go Italia S.r.l.', 'car2go Italia S.r.l.', '', '2025-03-15 16:42:42'),
(120, '120', 'ALPINA REAL ESTATE SRL', 'ALPINA REAL ESTATE SRL', '', '2025-03-15 16:42:42'),
(121, '121', 'YUEMEI LIN', 'YUEMEI LIN', '', '2025-03-15 16:42:42'),
(122, '122', 'HAPPY SHOPPING DI ZHANG HONGXIN', 'HAPPY SHOPPING DI ZHANG HONGXIN', '', '2025-03-15 16:42:42'),
(123, '123', 'Mailjet SAS', 'Mailjet SAS', '', '2025-03-15 16:42:42'),
(124, '124', 'INGROSTAR SOCIETA\' A RESPONSABILITA\' LIMITATA SEMPLIFICATA', 'INGROSTAR SOCIETA\' A RESPONSABILITA\' LIMITATA SEMPLIFICATA', '', '2025-03-15 16:42:42'),
(125, '125', 'Eni S.p.a.', 'Eni S.p.a.', '', '2025-03-15 16:42:42'),
(126, '126', 'FANTASY STORE S.R.L.S.', 'FANTASY STORE S.R.L.S.', '', '2025-03-15 16:42:42'),
(127, '127', 'CHENGWEI ZHENG', 'CHENGWEI ZHENG', '', '2025-03-15 16:42:42'),
(128, '128', 'Meta Platforms Ireland Limited', 'Meta Platforms Ireland Limited', '', '2025-03-15 16:42:42'),
(129, '129', 'SOCIETA\' COOPERATIVA ROMANO INTENDE', 'SOCIETA\' COOPERATIVA ROMANO INTENDE', '', '2025-03-15 16:42:42'),
(130, '130', 'LC ADESIVI S.R.L.', 'LC ADESIVI S.R.L.', '', '2025-03-15 16:42:42'),
(131, '131', 'MANAGED SERVER SRL', 'MANAGED SERVER SRL', '', '2025-03-15 16:42:42'),
(132, '132', 'BLUKART di Carmine Palomba', 'BLUKART di Carmine Palomba', '', '2025-03-15 16:42:42'),
(133, '133', 'MU KE DI KE FEILUN', 'MU KE DI KE FEILUN', '', '2025-03-15 16:42:42'),
(134, '134', 'Zalando Payments GmbH', 'Zalando Payments GmbH', '', '2025-03-15 16:42:42'),
(135, '135', 'C.I.F.E.M. Srl', 'C.I.F.E.M. Srl', '', '2025-03-15 16:42:42'),
(136, '136', 'D\'ANDRETTA PIETRO', 'D\'ANDRETTA PIETRO', '', '2025-03-15 16:42:42'),
(137, '137', 'Meta Platforms Ireland Limited', 'Meta Platforms Ireland Limited', '', '2025-03-15 16:42:42'),
(138, '138', 'AWIN AG', 'AWIN AG', '', '2025-03-15 16:42:42'),
(139, '139', 'Amazon EU S.a r.l., Succursale Italiana', 'Amazon EU S.a r.l., Succursale Italiana', '', '2025-03-15 16:42:42'),
(140, '140', 'Cerretti srl', 'Cerretti srl', '', '2025-03-15 16:42:42'),
(141, '141', 'LTSOLUTIONS DI TOSCANO LUCIANO', 'LTSOLUTIONS DI TOSCANO LUCIANO', '', '2025-03-15 16:42:42'),
(142, '142', 'cda srl', 'cda srl', '', '2025-03-15 16:42:42'),
(143, '143', 'Società Cooperativa Omega Service', 'Società Cooperativa Omega Service', '', '2025-03-15 16:42:42'),
(144, '144', 'LA VALLE S.A.S. DI ZACCARIA MARCELLA & C.', 'LA VALLE S.A.S. DI ZACCARIA MARCELLA & C.', '', '2025-03-15 16:42:42'),
(145, '145', 'CDA S.R.L.', 'CDA S.R.L.', '', '2025-03-15 16:42:42'),
(146, '146', 'Wirlab Fibra Srl', 'Wirlab Fibra Srl', '', '2025-03-15 16:42:42'),
(147, '147', 'SAR SERVICE SRL', 'SAR SERVICE SRL', '', '2025-03-15 16:42:42'),
(148, '148', 'GALLO SRL', 'GALLO SRL', '', '2025-03-15 16:42:42'),
(149, '149', 'CHENGWEI ZHENG', 'CHENGWEI ZHENG', '', '2025-03-15 16:42:42'),
(150, '150', 'COMMIND SRL S', 'COMMIND SRL S', '', '2025-03-15 16:42:42'),
(151, '151', 'Fornitore', 'Fornitore', '', '2025-03-15 16:42:42'),
(152, '152', 'PONTEURO SRL DI CERRATO FRANCO', 'PONTEURO SRL DI CERRATO FRANCO', '', '2025-03-15 16:42:42'),
(153, '153', 'Indeed Ireland Operations Ltd', 'Indeed Ireland Operations Ltd', '', '2025-03-15 16:42:42'),
(154, '154', 'Hubitat S.r.l.', 'Hubitat S.r.l.', '', '2025-03-15 16:42:42'),
(155, '155', 'GOOD TRADING S.R.L.S.', 'GOOD TRADING S.R.L.S.', '', '2025-03-15 16:42:42'),
(156, '156', 'LORENZO WOMEN\'S CLOTHING DI XU QINZONG', 'LORENZO WOMEN\'S CLOTHING DI XU QINZONG', '', '2025-03-15 16:42:42'),
(157, '157', 'DING LANFEN', 'DING LANFEN', '', '2025-03-15 16:42:42'),
(158, '158', 'XIAOWA HUANG', 'XIAOWA HUANG', '', '2025-03-15 16:42:42'),
(159, '159', 'ALOHA S.R.L.S.', 'ALOHA S.R.L.S.', '', '2025-03-15 16:42:42'),
(160, '160', 'MASSIMO CINA DI NI YONG', 'MASSIMO CINA DI NI YONG', '', '2025-03-15 16:42:42'),
(161, '161', 'ELESUD SPA', 'ELESUD SPA', '', '2025-03-15 16:42:42'),
(162, '162', 'Zalando Marketing Services GmbH', 'Zalando Marketing Services GmbH', '', '2025-03-15 16:42:42'),
(163, '163', 'Inochi S.r.l.', 'Inochi S.r.l.', '', '2025-03-15 16:42:42'),
(164, '164', 'FUTURO S.R.L.', 'FUTURO S.R.L.', '', '2025-03-15 16:42:42'),
(165, '165', 'PLATA SRL', 'PLATA SRL', '', '2025-03-15 16:42:42'),
(166, '166', 'Sendinblue', 'Sendinblue', '', '2025-03-15 16:42:42'),
(167, '167', 'Jelena Todorovic', 'Jelena Todorovic', '', '2025-03-15 16:42:42'),
(168, '168', 'CHROY FASHION SRLS', 'CHROY FASHION SRLS', '', '2025-03-15 16:42:42'),
(169, '169', 'esposito luigi', 'esposito luigi', '', '2025-03-15 16:42:42'),
(170, '170', 'Rossi Edil di Pasquale Rossi', 'Rossi Edil di Pasquale Rossi', '', '2025-03-15 16:42:42'),
(171, '171', 'LINEA AZZURRA 90 S.R.L.', 'LINEA AZZURRA 90 S.R.L.', '', '2025-03-15 16:42:42'),
(172, '172', 'Wind Tre S.p.A.', 'Wind Tre S.p.A.', '', '2025-03-15 16:42:42'),
(173, '173', 'FAST FASHION S.A.S. DI ABAGNALE MARIA', 'FAST FASHION S.A.S. DI ABAGNALE MARIA', '', '2025-03-15 16:42:42'),
(174, '174', 'MIRA BELLA SRLS', 'MIRA BELLA SRLS', '', '2025-03-15 16:42:42'),
(175, '175', 'SS 23', 'SS 23', '', '2025-03-15 16:42:42'),
(176, '176', 'BAY ABBIGLIAMENTO', 'BAY ABBIGLIAMENTO', '', '2025-03-15 16:42:42'),
(177, '177', 'Gruppo Franzese SRL', 'Gruppo Franzese SRL', 'gruppofranzese@gmail.com', '2025-03-15 16:42:42'),
(178, '178', 'YUMEI LIN', 'YUMEI LIN', '', '2025-03-15 16:42:42'),
(179, '179', 'MINI srl', 'MINI srl', '', '2025-03-15 16:42:42'),
(180, '180', 'HUANG CHANGSHEG', 'HUANG CHANGSHEG', '', '2025-03-15 16:42:42'),
(181, '181', 'YANG WEIKE', 'YANG WEIKE', '', '2025-03-15 16:42:42'),
(182, '182', 'FASHION STYLE SRLS', 'FASHION STYLE SRLS', '', '2025-03-15 16:42:42'),
(183, '183', 'HUI FENG DI WU DEBIAO', 'HUI FENG DI WU DEBIAO', '', '2025-03-15 16:42:42'),
(184, '184', 'Pronto Moda Giovanni S.R.L.U.S.', 'Pronto Moda Giovanni S.R.L.U.S.', '', '2025-03-15 16:42:42'),
(185, '185', 'YE ZHEN', 'YE ZHEN', '', '2025-03-15 16:42:42'),
(186, '186', 'Juxin di Ji Jianzhen', 'Juxin di Ji Jianzhen', '', '2025-03-15 16:42:42'),
(187, '187', 'Huang donping srl', 'Huang donping srl', '', '2025-03-15 16:42:42'),
(188, '188', 'yang jinzhu', 'yang jinzhu', '', '2025-03-15 16:42:42'),
(189, '189', 'OU GUORONG', 'OU GUORONG', '', '2025-03-15 16:42:42'),
(190, '190', 'TENTAZIONE SRLS', 'TENTAZIONE SRLS', '', '2025-03-15 16:42:42'),
(191, '191', 'SU XIUMEI', 'SU XIUMEI', '', '2025-03-15 16:42:42'),
(192, '192', 'Su Xiumei', 'Su Xiumei', '', '2025-03-15 16:42:42'),
(193, '193', 'Sanella srl', 'Sanella srl', '', '2025-03-15 16:42:42'),
(194, '194', 'Troiano Aniello SRL', 'Troiano Aniello SRL', '', '2025-03-15 16:42:42'),
(195, '195', 'YI XING di Hu Dong Li', 'YI XING di Hu Dong Li', '', '2025-03-15 16:42:42'),
(196, '196', 'FIRST STREET S.R.L', 'FIRST STREET S.R.L', '', '2025-03-15 16:42:42'),
(197, '197', 'AURORA S.R.L.', 'AURORA S.R.L.', 'xushilin@libero.it', '2025-03-15 16:42:42'),
(198, '198', 'ZHANG YUZHU', 'ZHANG YUZHU', '', '2025-03-15 16:42:42'),
(199, '199', 'DEDALO PASQUALE', 'DEDALO PASQUALE', '', '2025-03-15 16:42:42'),
(200, '200', 'Default', 'Default', '', '2025-03-15 16:42:42');

-- --------------------------------------------------------

--
-- Struttura della tabella `cache_generi`
--

CREATE TABLE `cache_generi` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `creato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `cache_generi`
--

INSERT INTO `cache_generi` (`id`, `nome`, `creato_il`) VALUES
(1, 'Uomo', '2025-03-15 16:42:45'),
(2, 'Donna', '2025-03-15 16:42:45'),
(3, 'Unisex', '2025-03-15 16:42:45'),
(4, 'Bambino', '2025-03-15 16:42:45'),
(5, 'Bambina', '2025-03-15 16:42:45');

-- --------------------------------------------------------

--
-- Struttura della tabella `cache_marche`
--

CREATE TABLE `cache_marche` (
  `id` int NOT NULL,
  `brand_id` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `creato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `cache_marche`
--

INSERT INTO `cache_marche` (`id`, `brand_id`, `name`, `creato_il`) VALUES
(1, '', 'Benvenuti', '2025-03-15 20:42:46'),
(2, '', 'Ciabalù', '2025-03-15 20:42:46'),
(3, '', 'DARIYA', '2025-03-15 20:42:46'),
(4, '', 'Golden Water', '2025-03-15 20:42:46'),
(5, '', 'Guest Care', '2025-03-15 20:42:46'),
(6, '', 'Nike', '2025-03-15 20:42:46'),
(7, '', 'Trivia', '2025-03-15 20:42:46'),
(8, '', 'Zeus', '2025-03-15 20:42:46');

-- --------------------------------------------------------

--
-- Struttura della tabella `cache_stagioni`
--

CREATE TABLE `cache_stagioni` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `creato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `cache_stagioni`
--

INSERT INTO `cache_stagioni` (`id`, `nome`, `creato_il`) VALUES
(1, 'SS25', '2025-03-15 16:42:46'),
(2, 'FW25', '2025-03-15 16:42:46'),
(3, 'SS26', '2025-03-15 16:42:46'),
(4, 'FW26', '2025-03-15 16:42:46'),
(5, 'Accessori', '2025-03-15 16:42:46');

-- --------------------------------------------------------

--
-- Struttura della tabella `codici_ean`
--

CREATE TABLE `codici_ean` (
  `id` int NOT NULL,
  `ean` varchar(20) NOT NULL,
  `utilizzato` tinyint(1) DEFAULT '0',
  `prodotto_id` int DEFAULT NULL,
  `batch_id` int DEFAULT NULL,
  `creato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `aggiornato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `codici_ean`
--

INSERT INTO `codici_ean` (`id`, `ean`, `utilizzato`, `prodotto_id`, `batch_id`, `creato_il`, `aggiornato_il`) VALUES
(101, '8012345000012', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 22:45:37'),
(102, '8012345000029', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 22:58:06'),
(103, '8012345000036', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:19'),
(104, '8012345000043', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:19'),
(105, '8012345000050', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:19'),
(106, '8012345000067', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:19'),
(107, '8012345000074', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:19'),
(108, '8012345000081', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:19'),
(109, '8012345000098', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:19'),
(110, '8012345000104', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:19'),
(111, '8012345000111', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:19'),
(112, '8012345000128', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:19'),
(113, '8012345000135', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:20'),
(114, '8012345000142', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:20'),
(115, '8012345000159', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:20'),
(116, '8012345000166', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:20'),
(117, '8012345000173', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:20'),
(118, '8012345000180', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:20'),
(119, '8012345000197', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:20'),
(120, '8012345000203', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:20'),
(121, '8012345000210', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:20'),
(122, '8012345000227', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:20'),
(123, '8012345000234', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:21'),
(124, '8012345000241', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:21'),
(125, '8012345000258', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:21'),
(126, '8012345000265', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:21'),
(127, '8012345000272', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:21'),
(128, '8012345000289', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:21'),
(129, '8012345000296', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:21'),
(130, '8012345000302', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:21'),
(131, '8012345000319', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:21'),
(132, '8012345000326', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:21'),
(133, '8012345000333', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:22'),
(134, '8012345000340', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:22'),
(135, '8012345000357', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:22'),
(136, '8012345000364', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:22'),
(137, '8012345000371', 1, NULL, 2, '2025-03-14 22:44:31', '2025-03-14 23:00:22'),
(241, '8012345000388', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:34'),
(242, '8012345000395', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:34'),
(243, '8012345000401', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:34'),
(244, '8012345000418', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:34'),
(245, '8012345000425', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:34'),
(246, '8012345000432', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:34'),
(247, '8012345000449', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:34'),
(248, '8012345000456', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:34'),
(249, '8012345000463', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:34'),
(250, '8012345000470', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:35'),
(251, '8012345000487', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:35'),
(252, '8012345000494', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:35'),
(253, '8012345000500', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:35'),
(254, '8012345000517', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:35'),
(255, '8012345000524', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:35'),
(256, '8012345000531', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:35'),
(257, '8012345000548', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:35'),
(258, '8012345000555', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:35'),
(259, '8012345000562', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:35'),
(260, '8012345000579', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:35'),
(261, '8012345000586', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:36'),
(262, '8012345000593', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:36'),
(263, '8012345000609', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:36'),
(264, '8012345000616', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:36'),
(265, '8012345000623', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:36'),
(266, '8012345000630', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:36'),
(267, '8012345000647', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:36'),
(268, '8012345000654', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:37'),
(269, '8012345000661', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:37'),
(270, '8012345000678', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:37'),
(271, '8012345000685', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 00:25:37'),
(272, '8012345000692', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:34'),
(273, '8012345000708', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:34'),
(274, '8012345000715', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:34'),
(275, '8012345000722', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:34'),
(276, '8012345000739', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:34'),
(277, '8012345000746', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:34'),
(278, '8012345000753', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:34'),
(279, '8012345000760', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:34'),
(280, '8012345000777', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:34'),
(281, '8012345000784', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:34'),
(282, '8012345000791', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:35'),
(283, '8012345000807', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:35'),
(284, '8012345000814', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:35'),
(285, '8012345000821', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:35'),
(286, '8012345000838', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:35'),
(287, '8012345000845', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:36'),
(288, '8012345000852', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:36'),
(289, '8012345000869', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:36'),
(290, '8012345000876', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:36'),
(291, '8012345000883', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:36'),
(292, '8012345000890', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:36'),
(293, '8012345000906', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:36'),
(294, '8012345000913', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:36'),
(295, '8012345000920', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:36'),
(296, '8012345000937', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:36'),
(297, '8012345000944', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:36'),
(298, '8012345000951', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:37'),
(299, '8012345000968', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:37'),
(300, '8012345000975', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:37'),
(301, '8012345000982', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 07:04:19'),
(302, '8012345000999', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 07:04:19'),
(303, '8012345001002', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 07:04:19'),
(304, '8012345001019', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 07:04:19'),
(305, '8012345001026', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 07:04:19'),
(306, '8012345001033', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 07:04:20'),
(307, '8012345001040', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 07:04:20'),
(308, '8012345001057', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 07:04:20'),
(309, '8012345001064', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 07:04:20'),
(310, '8012345001071', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 07:04:20'),
(311, '8012345001088', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 14:18:04'),
(312, '8012345001095', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 14:18:04'),
(313, '8012345001101', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 14:18:04'),
(314, '8012345001118', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 14:18:04'),
(315, '8012345001125', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 14:18:04'),
(316, '8012345001132', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:37'),
(317, '8012345001149', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:37'),
(318, '8012345001156', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:37'),
(319, '8012345001163', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:37'),
(320, '8012345001170', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:38'),
(321, '8012345001187', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:38:38'),
(322, '8012345001194', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 22:39:18'),
(323, '8012345001200', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 14:18:05'),
(324, '8012345001217', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 14:18:05'),
(325, '8012345001224', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 14:18:05'),
(326, '8012345001231', 0, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 12:22:49'),
(327, '8012345001248', 0, NULL, 4, '2025-03-15 00:25:10', '2025-03-16 12:22:49'),
(328, '8012345001255', 1, NULL, 4, '2025-03-15 00:25:10', '2025-03-15 14:18:06'),
(329, '8012345001262', 0, NULL, 4, '2025-03-15 00:25:11', '2025-03-16 12:22:49'),
(330, '8012345001279', 0, NULL, 4, '2025-03-15 00:25:11', '2025-03-16 12:22:49'),
(331, '8012345001286', 0, NULL, 4, '2025-03-15 00:25:11', '2025-03-16 12:22:49'),
(332, '8012345001293', 0, NULL, 4, '2025-03-15 00:25:11', '2025-03-16 12:22:49'),
(333, '8012345001309', 0, NULL, 4, '2025-03-15 00:25:11', '2025-03-16 12:22:49'),
(334, '8012345001316', 0, NULL, 4, '2025-03-15 00:25:11', '2025-03-16 12:22:49'),
(335, '8012345001323', 0, NULL, 4, '2025-03-15 00:25:11', '2025-03-16 12:22:49'),
(336, '8012345001330', 0, NULL, 4, '2025-03-15 00:25:11', '2025-03-16 12:22:49'),
(337, '8012345001347', 0, NULL, 4, '2025-03-15 00:25:11', '2025-03-16 12:22:49'),
(338, '8012345001354', 0, NULL, 4, '2025-03-15 00:25:11', '2025-03-16 12:22:49'),
(339, '8012345001361', 0, NULL, 4, '2025-03-15 00:25:11', '2025-03-16 12:22:49'),
(340, '8012345001378', 0, NULL, 4, '2025-03-15 00:25:11', '2025-03-16 12:22:49');

-- --------------------------------------------------------

--
-- Struttura della tabella `impostazioni_api`
--

CREATE TABLE `impostazioni_api` (
  `id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `api_url` varchar(255) NOT NULL DEFAULT 'https://www.gestionalesmarty.com/titanium/V2/Api/',
  `predefinito` tinyint(1) DEFAULT '0',
  `utente_id` int DEFAULT NULL,
  `creato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `aggiornato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `impostazioni_api`
--

INSERT INTO `impostazioni_api` (`id`, `nome`, `api_key`, `api_url`, `predefinito`, `utente_id`, `creato_il`, `aggiornato_il`) VALUES
(1, 'ciabalu', '2b25889572e70390e5278ed9fef4f7352e8433009ed6fa5012ff1dbed37189d7b546a68d0a62c3346663ea76cd8a5c5190d3afbc37b0a34226fe072593fc5bba', 'https://www.gestionalesmarty.com/titanium/V2/Api/', 1, 3, '2025-03-14 15:48:17', '2025-03-15 20:13:23');

-- --------------------------------------------------------

--
-- Struttura della tabella `log_sincronizzazione`
--

CREATE TABLE `log_sincronizzazione` (
  `id` int NOT NULL,
  `prodotto_id` int DEFAULT NULL,
  `azione` enum('creazione','aggiornamento','eliminazione') NOT NULL,
  `riuscito` tinyint(1) NOT NULL DEFAULT '0',
  `risposta_api` text,
  `utente_id` int DEFAULT NULL,
  `creato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `log_sincronizzazione`
--

INSERT INTO `log_sincronizzazione` (`id`, `prodotto_id`, `azione`, `riuscito`, `risposta_api`, `utente_id`, `creato_il`) VALUES
(1, 20, 'creazione', 1, '{\"id\":7323,\"http_code\":200}', 4, '2025-03-15 00:07:58'),
(2, 18, 'creazione', 1, '{\"id\":7324,\"http_code\":200}', 4, '2025-03-15 13:39:14'),
(3, 22, 'creazione', 1, '{\"id\":7325,\"http_code\":200}', 4, '2025-03-15 14:18:13'),
(4, 23, 'creazione', 1, '{\"id\":102068,\"http_code\":200}', 4, '2025-03-15 14:18:13'),
(5, 24, 'creazione', 1, '{\"id\":102069,\"http_code\":200}', 4, '2025-03-15 14:18:14'),
(6, 25, 'creazione', 1, '{\"id\":102070,\"http_code\":200}', 4, '2025-03-15 14:18:14'),
(7, 26, 'creazione', 1, '{\"id\":102071,\"http_code\":200}', 4, '2025-03-15 14:18:14'),
(8, 27, 'creazione', 1, '{\"id\":102072,\"http_code\":200}', 4, '2025-03-15 14:18:15'),
(9, 28, 'creazione', 1, '{\"id\":102073,\"http_code\":200}', 4, '2025-03-15 14:18:15'),
(10, 29, 'creazione', 1, '{\"id\":102074,\"http_code\":200}', 4, '2025-03-15 14:18:15'),
(11, 30, 'creazione', 1, '{\"id\":102075,\"http_code\":200}', 4, '2025-03-15 14:18:15'),
(12, 31, 'creazione', 1, '{\"id\":102076,\"http_code\":200}', 4, '2025-03-15 14:18:16'),
(13, 32, 'creazione', 1, '{\"id\":102077,\"http_code\":200}', 4, '2025-03-15 14:18:16'),
(14, 33, 'creazione', 1, '{\"id\":102078,\"http_code\":200}', 4, '2025-03-15 14:18:16'),
(15, 34, 'creazione', 1, '{\"id\":102079,\"http_code\":200}', 4, '2025-03-15 14:18:17'),
(16, 35, 'creazione', 1, '{\"id\":102080,\"http_code\":200}', 4, '2025-03-15 14:18:17'),
(17, 36, 'creazione', 1, '{\"id\":102081,\"http_code\":200}', 4, '2025-03-15 14:18:18'),
(18, 37, 'creazione', 1, '{\"id\":102082,\"http_code\":200}', 4, '2025-03-15 14:18:18'),
(19, 38, 'creazione', 1, '{\"id\":102083,\"http_code\":200}', 4, '2025-03-15 14:18:18'),
(20, 39, 'creazione', 1, '{\"id\":102084,\"http_code\":200}', 4, '2025-03-15 14:18:19'),
(21, 40, 'creazione', 1, '{\"id\":102085,\"http_code\":200}', 4, '2025-03-15 14:18:19'),
(22, 41, 'creazione', 1, '{\"id\":102086,\"http_code\":200}', 4, '2025-03-15 14:18:19'),
(23, 42, 'creazione', 1, '{\"id\":102087,\"http_code\":200}', 4, '2025-03-15 14:18:20'),
(24, 43, 'creazione', 1, '{\"id\":102088,\"http_code\":200}', 4, '2025-03-15 14:18:20'),
(25, 44, 'creazione', 1, '{\"id\":102089,\"http_code\":200}', 4, '2025-03-15 14:18:21'),
(26, 45, 'creazione', 1, '{\"id\":102090,\"http_code\":200}', 4, '2025-03-15 14:18:21'),
(27, 46, 'creazione', 1, '{\"id\":102091,\"http_code\":200}', 4, '2025-03-15 14:18:21'),
(28, 47, 'creazione', 1, '{\"id\":102092,\"http_code\":200}', 4, '2025-03-15 14:18:22'),
(29, 48, 'creazione', 1, '{\"id\":102093,\"http_code\":200}', 4, '2025-03-15 14:18:22'),
(30, 49, 'creazione', 1, '{\"id\":102094,\"http_code\":200}', 4, '2025-03-15 14:18:23'),
(31, 50, 'creazione', 1, '{\"id\":102095,\"http_code\":200}', 4, '2025-03-15 14:18:23'),
(32, 51, 'creazione', 1, '{\"id\":102096,\"http_code\":200}', 4, '2025-03-15 14:18:23'),
(33, 52, 'creazione', 1, '{\"id\":7326,\"http_code\":200}', 4, '2025-03-15 14:26:05'),
(34, 53, 'creazione', 1, '{\"id\":102097,\"http_code\":200}', 4, '2025-03-15 14:26:05'),
(35, 54, 'creazione', 1, '{\"id\":102098,\"http_code\":200}', 4, '2025-03-15 14:26:06'),
(36, 55, 'creazione', 1, '{\"id\":102099,\"http_code\":200}', 4, '2025-03-15 14:26:06'),
(37, 56, 'creazione', 1, '{\"id\":102100,\"http_code\":200}', 4, '2025-03-15 14:26:06'),
(38, 57, 'creazione', 1, '{\"id\":102101,\"http_code\":200}', 4, '2025-03-15 14:26:07'),
(39, 58, 'creazione', 1, '{\"id\":102102,\"http_code\":200}', 4, '2025-03-15 14:26:07'),
(40, 59, 'creazione', 1, '{\"id\":102103,\"http_code\":200}', 4, '2025-03-15 14:26:07'),
(41, 60, 'creazione', 1, '{\"id\":102104,\"http_code\":200}', 4, '2025-03-15 14:26:08'),
(42, 61, 'creazione', 1, '{\"id\":102105,\"http_code\":200}', 4, '2025-03-15 14:26:08'),
(43, 62, 'creazione', 1, '{\"id\":102106,\"http_code\":200}', 4, '2025-03-15 14:26:08'),
(44, 63, 'creazione', 1, '{\"id\":102107,\"http_code\":200}', 4, '2025-03-15 14:26:09'),
(45, 64, 'creazione', 1, '{\"id\":102108,\"http_code\":200}', 4, '2025-03-15 14:26:09'),
(46, 65, 'creazione', 1, '{\"id\":102109,\"http_code\":200}', 4, '2025-03-15 14:26:10'),
(47, 66, 'creazione', 1, '{\"id\":102110,\"http_code\":200}', 4, '2025-03-15 14:26:10'),
(48, 67, 'creazione', 1, '{\"id\":102111,\"http_code\":200}', 4, '2025-03-15 14:26:10'),
(49, 68, 'creazione', 1, '{\"id\":102112,\"http_code\":200}', 4, '2025-03-15 14:26:11'),
(50, 69, 'creazione', 1, '{\"id\":102113,\"http_code\":200}', 4, '2025-03-15 14:26:11'),
(51, 70, 'creazione', 1, '{\"id\":102114,\"http_code\":200}', 4, '2025-03-15 14:26:11'),
(52, 71, 'creazione', 1, '{\"id\":102115,\"http_code\":200}', 4, '2025-03-15 14:26:12'),
(53, 72, 'creazione', 1, '{\"id\":102116,\"http_code\":200}', 4, '2025-03-15 14:26:12'),
(54, 73, 'creazione', 1, '{\"id\":102117,\"http_code\":200}', 4, '2025-03-15 14:26:13'),
(55, 74, 'creazione', 1, '{\"id\":102118,\"http_code\":200}', 4, '2025-03-15 14:26:13'),
(56, 75, 'creazione', 1, '{\"id\":102119,\"http_code\":200}', 4, '2025-03-15 14:26:13'),
(57, 76, 'creazione', 1, '{\"id\":102120,\"http_code\":200}', 4, '2025-03-15 14:26:14'),
(58, 77, 'creazione', 1, '{\"id\":102121,\"http_code\":200}', 4, '2025-03-15 14:26:14'),
(59, 78, 'creazione', 1, '{\"id\":102122,\"http_code\":200}', 4, '2025-03-15 14:26:15'),
(60, 79, 'creazione', 1, '{\"id\":102123,\"http_code\":200}', 4, '2025-03-15 14:26:15'),
(61, 80, 'creazione', 1, '{\"id\":102124,\"http_code\":200}', 4, '2025-03-15 14:26:16'),
(62, 81, 'creazione', 1, '{\"id\":102125,\"http_code\":200}', 4, '2025-03-15 14:26:16'),
(63, 82, 'creazione', 1, '{\"id\":102126,\"http_code\":200}', 4, '2025-03-15 14:26:16'),
(64, 83, 'creazione', 1, '{\"id\":102127,\"http_code\":200}', 4, '2025-03-15 14:26:17'),
(65, 84, 'creazione', 1, '{\"id\":102128,\"http_code\":200}', 4, '2025-03-15 14:26:17'),
(66, 85, 'creazione', 1, '{\"id\":102129,\"http_code\":200}', 4, '2025-03-15 14:26:18'),
(67, 86, 'creazione', 1, '{\"id\":102130,\"http_code\":200}', 4, '2025-03-15 14:26:18'),
(68, 87, 'creazione', 1, '{\"id\":7327,\"http_code\":200}', 4, '2025-03-15 14:30:01'),
(69, 92, 'creazione', 0, '{\"success\":false,\"message\":\"Risposta non valida dall\'API: Syntax error\",\"exception\":true}', 4, '2025-03-15 20:39:02'),
(70, 92, 'creazione', 0, '{\"success\":false,\"message\":\"Risposta non valida dall\'API: Syntax error\",\"exception\":true}', 4, '2025-03-15 20:39:07'),
(71, 92, 'creazione', 0, '{\"success\":false,\"message\":\"Risposta non valida dall\'API: Syntax error\",\"exception\":true}', 4, '2025-03-15 20:39:21'),
(72, 129, 'creazione', 0, '{\"success\":false,\"message\":\"Risposta non valida dall\'API: Syntax error\",\"exception\":true}', 4, '2025-03-16 11:32:36'),
(74, 167, 'creazione', 0, '{\"success\":false,\"message\":\"Risposta non valida dall\'API: Syntax error\",\"exception\":true}', 4, '2025-03-16 22:38:46');

-- --------------------------------------------------------

--
-- Struttura della tabella `password_reset`
--

CREATE TABLE `password_reset` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `token` varchar(64) NOT NULL,
  `expires` datetime NOT NULL,
  `utilizzato` tinyint(1) NOT NULL DEFAULT '0',
  `creato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `password_reset`
--

INSERT INTO `password_reset` (`id`, `user_id`, `token`, `expires`, `utilizzato`, `creato_il`) VALUES
(3, 4, '421e34cbd698eb376fe1e9aac061201234c49ad444c650b878a02108b3f5378c', '2025-03-15 00:37:48', 0, '2025-03-14 22:37:48');

-- --------------------------------------------------------

--
-- Struttura della tabella `preset_colori`
--

CREATE TABLE `preset_colori` (
  `id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `colori` text NOT NULL,
  `creato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `aggiornato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `preset_colori`
--

INSERT INTO `preset_colori` (`id`, `nome`, `colori`, `creato_il`, `aggiornato_il`) VALUES
(1, 'base', 'Nero,Bianco,Blu,Rosso,Verde', '2025-03-14 15:06:18', '2025-03-14 15:06:18'),
(2, 'estesi', 'Nero,Bianco,Blu,Rosso,Verde,Giallo,Marrone,Grigio,Rosa,Viola,Arancione', '2025-03-14 15:06:18', '2025-03-14 15:06:18');

-- --------------------------------------------------------

--
-- Struttura della tabella `preset_taglie`
--

CREATE TABLE `preset_taglie` (
  `id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `taglie` text NOT NULL,
  `creato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `aggiornato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `preset_taglie`
--

INSERT INTO `preset_taglie` (`id`, `nome`, `taglie`, `creato_il`, `aggiornato_il`) VALUES
(1, 'abbigliamento_uomo', 'S,M,L,XL,XXL,XXXL,4XL', '2025-03-14 15:06:18', '2025-03-14 15:06:18'),
(2, 'abbigliamento_donna', 'XS,S,M,L,XL,XXL', '2025-03-14 15:06:18', '2025-03-14 15:06:18'),
(3, 'scarpe_uomo', '39,40,41,42,43,44,45', '2025-03-14 15:06:18', '2025-03-14 15:06:18'),
(4, 'scarpe_donna', '35,36,37,38,39,40,41', '2025-03-14 15:06:18', '2025-03-14 15:06:18');

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotti`
--

CREATE TABLE `prodotti` (
  `id` int NOT NULL,
  `sku` varchar(100) NOT NULL,
  `parent_sku` varchar(100) DEFAULT NULL,
  `titolo` varchar(255) NOT NULL,
  `descrizione` text,
  `descrizione_breve` text,
  `tipologia` varchar(50) DEFAULT NULL,
  `genere` varchar(50) DEFAULT NULL,
  `stagione` varchar(50) DEFAULT NULL,
  `taglia` varchar(50) DEFAULT NULL,
  `colore` varchar(50) DEFAULT NULL,
  `ean` varchar(20) DEFAULT NULL,
  `prezzo_acquisto` decimal(10,2) NOT NULL,
  `prezzo_vendita` decimal(10,2) NOT NULL,
  `aliquota_iva` int NOT NULL DEFAULT '22',
  `fornitore` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `smarty_id` int DEFAULT NULL,
  `stato` enum('bozza','pubblicato','errore') DEFAULT 'bozza',
  `messaggio_errore` text,
  `utente_id` int DEFAULT NULL,
  `creato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `aggiornato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `prodotti`
--

INSERT INTO `prodotti` (`id`, `sku`, `parent_sku`, `titolo`, `descrizione`, `descrizione_breve`, `tipologia`, `genere`, `stagione`, `taglia`, `colore`, `ean`, `prezzo_acquisto`, `prezzo_vendita`, `aliquota_iva`, `fornitore`, `marca`, `smarty_id`, `stato`, `messaggio_errore`, `utente_id`, `creato_il`, `aggiornato_il`) VALUES
(18, 'sdadsa', NULL, 'sads', NULL, NULL, 'uomo', 'uomo', 'SS25', NULL, NULL, '8012345000012', 1.00, 9.90, 22, '', 'Ciabalù', 7324, 'pubblicato', NULL, 4, '2025-03-14 22:45:39', '2025-03-15 13:39:14'),
(20, 'sddsa', NULL, 'dsad dsadsa', NULL, NULL, 'uomo', 'uomo', 'SS25', '', '', '', 10.00, 29.90, 22, '', 'Ciabalù', 7323, 'pubblicato', NULL, 4, '2025-03-15 00:07:57', '2025-03-15 00:07:58'),
(22, 'modellouomo-xs-bianco', NULL, 'Ciabalù modellouomo - Bianco - XS', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XS', 'Bianco', '8012345001088', 10.00, 29.90, 22, '', 'Ciabalù', 7325, 'pubblicato', NULL, 4, '2025-03-15 14:18:13', '2025-03-15 14:18:13'),
(23, 'modellouomo-s-bianco', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Bianco - S', NULL, NULL, 'uomo', 'uomo', 'SS25', 'S', 'Bianco', '8012345001095', 10.00, 29.90, 22, '', 'Ciabalù', 102068, 'pubblicato', NULL, 4, '2025-03-15 14:18:13', '2025-03-15 14:18:13'),
(24, 'modellouomo-m-bianco', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Bianco - M', NULL, NULL, 'uomo', 'uomo', 'SS25', 'M', 'Bianco', '8012345001101', 10.00, 29.90, 22, '', 'Ciabalù', 102069, 'pubblicato', NULL, 4, '2025-03-15 14:18:13', '2025-03-15 14:18:14'),
(25, 'modellouomo-l-bianco', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Bianco - L', NULL, NULL, 'uomo', 'uomo', 'SS25', 'L', 'Bianco', '8012345001118', 10.00, 29.90, 22, '', 'Ciabalù', 102070, 'pubblicato', NULL, 4, '2025-03-15 14:18:14', '2025-03-15 14:18:14'),
(26, 'modellouomo-xl-bianco', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Bianco - XL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XL', 'Bianco', '8012345001125', 10.00, 29.90, 22, '', 'Ciabalù', 102071, 'pubblicato', NULL, 4, '2025-03-15 14:18:14', '2025-03-15 14:18:14'),
(27, 'modellouomo-xxl-bianco', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Bianco - XXL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XXL', 'Bianco', '8012345001132', 10.00, 29.90, 22, '', 'Ciabalù', 102072, 'pubblicato', NULL, 4, '2025-03-15 14:18:14', '2025-03-15 14:18:15'),
(28, 'modellouomo-xs-blu', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Blu - XS', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XS', 'Blu', '8012345001149', 10.00, 29.90, 22, '', 'Ciabalù', 102073, 'pubblicato', NULL, 4, '2025-03-15 14:18:15', '2025-03-15 14:18:15'),
(29, 'modellouomo-s-blu', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Blu - S', NULL, NULL, 'uomo', 'uomo', 'SS25', 'S', 'Blu', '8012345001156', 10.00, 29.90, 22, '', 'Ciabalù', 102074, 'pubblicato', NULL, 4, '2025-03-15 14:18:15', '2025-03-15 14:18:15'),
(30, 'modellouomo-m-blu', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Blu - M', NULL, NULL, 'uomo', 'uomo', 'SS25', 'M', 'Blu', '8012345001163', 10.00, 29.90, 22, '', 'Ciabalù', 102075, 'pubblicato', NULL, 4, '2025-03-15 14:18:15', '2025-03-15 14:18:15'),
(31, 'modellouomo-l-blu', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Blu - L', NULL, NULL, 'uomo', 'uomo', 'SS25', 'L', 'Blu', '8012345001170', 10.00, 29.90, 22, '', 'Ciabalù', 102076, 'pubblicato', NULL, 4, '2025-03-15 14:18:15', '2025-03-15 14:18:16'),
(32, 'modellouomo-xl-blu', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Blu - XL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XL', 'Blu', '8012345001187', 10.00, 29.90, 22, '', 'Ciabalù', 102077, 'pubblicato', NULL, 4, '2025-03-15 14:18:16', '2025-03-15 14:18:16'),
(33, 'modellouomo-xxl-blu', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Blu - XXL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XXL', 'Blu', '8012345001194', 10.00, 29.90, 22, '', 'Ciabalù', 102078, 'pubblicato', NULL, 4, '2025-03-15 14:18:16', '2025-03-15 14:18:16'),
(34, 'modellouomo-xs-nero', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Nero - XS', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XS', 'Nero', '8012345001200', 10.00, 29.90, 22, '', 'Ciabalù', 102079, 'pubblicato', NULL, 4, '2025-03-15 14:18:16', '2025-03-15 14:18:17'),
(35, 'modellouomo-s-nero', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Nero - S', NULL, NULL, 'uomo', 'uomo', 'SS25', 'S', 'Nero', '8012345001217', 10.00, 29.90, 22, '', 'Ciabalù', 102080, 'pubblicato', NULL, 4, '2025-03-15 14:18:17', '2025-03-15 14:18:17'),
(36, 'modellouomo-m-nero', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Nero - M', NULL, NULL, 'uomo', 'uomo', 'SS25', 'M', 'Nero', '8012345001224', 10.00, 29.90, 22, '', 'Ciabalù', 102081, 'pubblicato', NULL, 4, '2025-03-15 14:18:17', '2025-03-15 14:18:18'),
(37, 'modellouomo-l-nero', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Nero - L', NULL, NULL, 'uomo', 'uomo', 'SS25', 'L', 'Nero', '8012345001231', 10.00, 29.90, 22, '', 'Ciabalù', 102082, 'pubblicato', NULL, 4, '2025-03-15 14:18:18', '2025-03-15 14:18:18'),
(38, 'modellouomo-xl-nero', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Nero - XL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XL', 'Nero', '8012345001248', 10.00, 29.90, 22, '', 'Ciabalù', 102083, 'pubblicato', NULL, 4, '2025-03-15 14:18:18', '2025-03-15 14:18:18'),
(39, 'modellouomo-xxl-nero', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Nero - XXL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XXL', 'Nero', '8012345001255', 10.00, 29.90, 22, '', 'Ciabalù', 102084, 'pubblicato', NULL, 4, '2025-03-15 14:18:18', '2025-03-15 14:18:19'),
(40, 'modellouomo-xs-rosso', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Rosso - XS', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XS', 'Rosso', '8012345001262', 10.00, 29.90, 22, '', 'Ciabalù', 102085, 'pubblicato', NULL, 4, '2025-03-15 14:18:19', '2025-03-15 14:18:19'),
(41, 'modellouomo-s-rosso', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Rosso - S', NULL, NULL, 'uomo', 'uomo', 'SS25', 'S', 'Rosso', '8012345001279', 10.00, 29.90, 22, '', 'Ciabalù', 102086, 'pubblicato', NULL, 4, '2025-03-15 14:18:19', '2025-03-15 14:18:19'),
(42, 'modellouomo-m-rosso', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Rosso - M', NULL, NULL, 'uomo', 'uomo', 'SS25', 'M', 'Rosso', '8012345001286', 10.00, 29.90, 22, '', 'Ciabalù', 102087, 'pubblicato', NULL, 4, '2025-03-15 14:18:19', '2025-03-15 14:18:20'),
(43, 'modellouomo-l-rosso', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Rosso - L', NULL, NULL, 'uomo', 'uomo', 'SS25', 'L', 'Rosso', '8012345001293', 10.00, 29.90, 22, '', 'Ciabalù', 102088, 'pubblicato', NULL, 4, '2025-03-15 14:18:20', '2025-03-15 14:18:20'),
(44, 'modellouomo-xl-rosso', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Rosso - XL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XL', 'Rosso', '8012345001309', 10.00, 29.90, 22, '', 'Ciabalù', 102089, 'pubblicato', NULL, 4, '2025-03-15 14:18:20', '2025-03-15 14:18:21'),
(45, 'modellouomo-xxl-rosso', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Rosso - XXL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XXL', 'Rosso', '8012345001316', 10.00, 29.90, 22, '', 'Ciabalù', 102090, 'pubblicato', NULL, 4, '2025-03-15 14:18:21', '2025-03-15 14:18:21'),
(46, 'modellouomo-xs-verde', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Verde - XS', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XS', 'Verde', '8012345001323', 10.00, 29.90, 22, '', 'Ciabalù', 102091, 'pubblicato', NULL, 4, '2025-03-15 14:18:21', '2025-03-15 14:18:21'),
(47, 'modellouomo-s-verde', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Verde - S', NULL, NULL, 'uomo', 'uomo', 'SS25', 'S', 'Verde', '8012345001330', 10.00, 29.90, 22, '', 'Ciabalù', 102092, 'pubblicato', NULL, 4, '2025-03-15 14:18:21', '2025-03-15 14:18:22'),
(48, 'modellouomo-m-verde', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Verde - M', NULL, NULL, 'uomo', 'uomo', 'SS25', 'M', 'Verde', '8012345001347', 10.00, 29.90, 22, '', 'Ciabalù', 102093, 'pubblicato', NULL, 4, '2025-03-15 14:18:22', '2025-03-15 14:18:22'),
(49, 'modellouomo-l-verde', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Verde - L', NULL, NULL, 'uomo', 'uomo', 'SS25', 'L', 'Verde', '8012345001354', 10.00, 29.90, 22, '', 'Ciabalù', 102094, 'pubblicato', NULL, 4, '2025-03-15 14:18:22', '2025-03-15 14:18:23'),
(50, 'modellouomo-xl-verde', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Verde - XL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XL', 'Verde', '8012345001361', 10.00, 29.90, 22, '', 'Ciabalù', 102095, 'pubblicato', NULL, 4, '2025-03-15 14:18:23', '2025-03-15 14:18:23'),
(51, 'modellouomo-xxl-verde', 'modellouomo-xs-bianco', 'Ciabalù modellouomo - Verde - XXL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XXL', 'Verde', '8012345001378', 10.00, 29.90, 22, '', 'Ciabalù', 102096, 'pubblicato', NULL, 4, '2025-03-15 14:18:23', '2025-03-15 14:18:23'),
(52, 'modellotripolo-4xl-bianco', NULL, 'Ciabalù modellotripolo - Bianco - 4XL', NULL, NULL, 'uomo', 'uomo', 'SS25', '4XL', 'Bianco', '', 10.00, 29.90, 22, '', 'Ciabalù', 7326, 'pubblicato', NULL, 4, '2025-03-15 14:26:05', '2025-03-15 14:26:05'),
(53, 'modellotripolo-s-bianco', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Bianco - S', NULL, NULL, 'uomo', 'uomo', 'SS25', 'S', 'Bianco', '', 10.00, 29.90, 22, '', 'Ciabalù', 102097, 'pubblicato', NULL, 4, '2025-03-15 14:26:05', '2025-03-15 14:26:05'),
(54, 'modellotripolo-m-bianco', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Bianco - M', NULL, NULL, 'uomo', 'uomo', 'SS25', 'M', 'Bianco', '', 10.00, 29.90, 22, '', 'Ciabalù', 102098, 'pubblicato', NULL, 4, '2025-03-15 14:26:05', '2025-03-15 14:26:06'),
(55, 'modellotripolo-l-bianco', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Bianco - L', NULL, NULL, 'uomo', 'uomo', 'SS25', 'L', 'Bianco', '', 10.00, 29.90, 22, '', 'Ciabalù', 102099, 'pubblicato', NULL, 4, '2025-03-15 14:26:06', '2025-03-15 14:26:06'),
(56, 'modellotripolo-xl-bianco', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Bianco - XL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XL', 'Bianco', '', 10.00, 29.90, 22, '', 'Ciabalù', 102100, 'pubblicato', NULL, 4, '2025-03-15 14:26:06', '2025-03-15 14:26:06'),
(57, 'modellotripolo-xxl-bianco', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Bianco - XXL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XXL', 'Bianco', '', 10.00, 29.90, 22, '', 'Ciabalù', 102101, 'pubblicato', NULL, 4, '2025-03-15 14:26:06', '2025-03-15 14:26:07'),
(58, 'modellotripolo-xxxl-bianco', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Bianco - XXXL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XXXL', 'Bianco', '', 10.00, 29.90, 22, '', 'Ciabalù', 102102, 'pubblicato', NULL, 4, '2025-03-15 14:26:07', '2025-03-15 14:26:07'),
(59, 'modellotripolo-4xl-blu', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Blu - 4XL', NULL, NULL, 'uomo', 'uomo', 'SS25', '4XL', 'Blu', '', 10.00, 29.90, 22, '', 'Ciabalù', 102103, 'pubblicato', NULL, 4, '2025-03-15 14:26:07', '2025-03-15 14:26:07'),
(60, 'modellotripolo-s-blu', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Blu - S', NULL, NULL, 'uomo', 'uomo', 'SS25', 'S', 'Blu', '', 10.00, 29.90, 22, '', 'Ciabalù', 102104, 'pubblicato', NULL, 4, '2025-03-15 14:26:07', '2025-03-15 14:26:08'),
(61, 'modellotripolo-m-blu', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Blu - M', NULL, NULL, 'uomo', 'uomo', 'SS25', 'M', 'Blu', '', 10.00, 29.90, 22, '', 'Ciabalù', 102105, 'pubblicato', NULL, 4, '2025-03-15 14:26:08', '2025-03-15 14:26:08'),
(62, 'modellotripolo-l-blu', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Blu - L', NULL, NULL, 'uomo', 'uomo', 'SS25', 'L', 'Blu', '', 10.00, 29.90, 22, '', 'Ciabalù', 102106, 'pubblicato', NULL, 4, '2025-03-15 14:26:08', '2025-03-15 14:26:08'),
(63, 'modellotripolo-xl-blu', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Blu - XL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XL', 'Blu', '', 10.00, 29.90, 22, '', 'Ciabalù', 102107, 'pubblicato', NULL, 4, '2025-03-15 14:26:08', '2025-03-15 14:26:09'),
(64, 'modellotripolo-xxl-blu', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Blu - XXL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XXL', 'Blu', '', 10.00, 29.90, 22, '', 'Ciabalù', 102108, 'pubblicato', NULL, 4, '2025-03-15 14:26:09', '2025-03-15 14:26:09'),
(65, 'modellotripolo-xxxl-blu', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Blu - XXXL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XXXL', 'Blu', '', 10.00, 29.90, 22, '', 'Ciabalù', 102109, 'pubblicato', NULL, 4, '2025-03-15 14:26:09', '2025-03-15 14:26:10'),
(66, 'modellotripolo-4xl-nero', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Nero - 4XL', NULL, NULL, 'uomo', 'uomo', 'SS25', '4XL', 'Nero', '', 10.00, 29.90, 22, '', 'Ciabalù', 102110, 'pubblicato', NULL, 4, '2025-03-15 14:26:10', '2025-03-15 14:26:10'),
(67, 'modellotripolo-s-nero', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Nero - S', NULL, NULL, 'uomo', 'uomo', 'SS25', 'S', 'Nero', '', 10.00, 29.90, 22, '', 'Ciabalù', 102111, 'pubblicato', NULL, 4, '2025-03-15 14:26:10', '2025-03-15 14:26:10'),
(68, 'modellotripolo-m-nero', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Nero - M', NULL, NULL, 'uomo', 'uomo', 'SS25', 'M', 'Nero', '', 10.00, 29.90, 22, '', 'Ciabalù', 102112, 'pubblicato', NULL, 4, '2025-03-15 14:26:10', '2025-03-15 14:26:11'),
(69, 'modellotripolo-l-nero', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Nero - L', NULL, NULL, 'uomo', 'uomo', 'SS25', 'L', 'Nero', '', 10.00, 29.90, 22, '', 'Ciabalù', 102113, 'pubblicato', NULL, 4, '2025-03-15 14:26:11', '2025-03-15 14:26:11'),
(70, 'modellotripolo-xl-nero', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Nero - XL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XL', 'Nero', '', 10.00, 29.90, 22, '', 'Ciabalù', 102114, 'pubblicato', NULL, 4, '2025-03-15 14:26:11', '2025-03-15 14:26:11'),
(71, 'modellotripolo-xxl-nero', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Nero - XXL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XXL', 'Nero', '', 10.00, 29.90, 22, '', 'Ciabalù', 102115, 'pubblicato', NULL, 4, '2025-03-15 14:26:11', '2025-03-15 14:26:12'),
(72, 'modellotripolo-xxxl-nero', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Nero - XXXL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XXXL', 'Nero', '', 10.00, 29.90, 22, '', 'Ciabalù', 102116, 'pubblicato', NULL, 4, '2025-03-15 14:26:12', '2025-03-15 14:26:12'),
(73, 'modellotripolo-4xl-rosso', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Rosso - 4XL', NULL, NULL, 'uomo', 'uomo', 'SS25', '4XL', 'Rosso', '', 10.00, 29.90, 22, '', 'Ciabalù', 102117, 'pubblicato', NULL, 4, '2025-03-15 14:26:12', '2025-03-15 14:26:13'),
(74, 'modellotripolo-s-rosso', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Rosso - S', NULL, NULL, 'uomo', 'uomo', 'SS25', 'S', 'Rosso', '', 10.00, 29.90, 22, '', 'Ciabalù', 102118, 'pubblicato', NULL, 4, '2025-03-15 14:26:13', '2025-03-15 14:26:13'),
(75, 'modellotripolo-m-rosso', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Rosso - M', NULL, NULL, 'uomo', 'uomo', 'SS25', 'M', 'Rosso', '', 10.00, 29.90, 22, '', 'Ciabalù', 102119, 'pubblicato', NULL, 4, '2025-03-15 14:26:13', '2025-03-15 14:26:13'),
(76, 'modellotripolo-l-rosso', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Rosso - L', NULL, NULL, 'uomo', 'uomo', 'SS25', 'L', 'Rosso', '', 10.00, 29.90, 22, '', 'Ciabalù', 102120, 'pubblicato', NULL, 4, '2025-03-15 14:26:13', '2025-03-15 14:26:14'),
(77, 'modellotripolo-xl-rosso', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Rosso - XL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XL', 'Rosso', '', 10.00, 29.90, 22, '', 'Ciabalù', 102121, 'pubblicato', NULL, 4, '2025-03-15 14:26:14', '2025-03-15 14:26:14'),
(78, 'modellotripolo-xxl-rosso', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Rosso - XXL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XXL', 'Rosso', '', 10.00, 29.90, 22, '', 'Ciabalù', 102122, 'pubblicato', NULL, 4, '2025-03-15 14:26:14', '2025-03-15 14:26:15'),
(79, 'modellotripolo-xxxl-rosso', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Rosso - XXXL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XXXL', 'Rosso', '', 10.00, 29.90, 22, '', 'Ciabalù', 102123, 'pubblicato', NULL, 4, '2025-03-15 14:26:15', '2025-03-15 14:26:15'),
(80, 'modellotripolo-4xl-verde', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Verde - 4XL', NULL, NULL, 'uomo', 'uomo', 'SS25', '4XL', 'Verde', '', 10.00, 29.90, 22, '', 'Ciabalù', 102124, 'pubblicato', NULL, 4, '2025-03-15 14:26:15', '2025-03-15 14:26:16'),
(81, 'modellotripolo-s-verde', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Verde - S', NULL, NULL, 'uomo', 'uomo', 'SS25', 'S', 'Verde', '', 10.00, 29.90, 22, '', 'Ciabalù', 102125, 'pubblicato', NULL, 4, '2025-03-15 14:26:16', '2025-03-15 14:26:16'),
(82, 'modellotripolo-m-verde', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Verde - M', NULL, NULL, 'uomo', 'uomo', 'SS25', 'M', 'Verde', '', 10.00, 29.90, 22, '', 'Ciabalù', 102126, 'pubblicato', NULL, 4, '2025-03-15 14:26:16', '2025-03-15 14:26:16'),
(83, 'modellotripolo-l-verde', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Verde - L', NULL, NULL, 'uomo', 'uomo', 'SS25', 'L', 'Verde', '', 10.00, 29.90, 22, '', 'Ciabalù', 102127, 'pubblicato', NULL, 4, '2025-03-15 14:26:16', '2025-03-15 14:26:17'),
(84, 'modellotripolo-xl-verde', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Verde - XL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XL', 'Verde', '', 10.00, 29.90, 22, '', 'Ciabalù', 102128, 'pubblicato', NULL, 4, '2025-03-15 14:26:17', '2025-03-15 14:26:17'),
(85, 'modellotripolo-xxl-verde', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Verde - XXL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XXL', 'Verde', '', 10.00, 29.90, 22, '', 'Ciabalù', 102129, 'pubblicato', NULL, 4, '2025-03-15 14:26:17', '2025-03-15 14:26:18'),
(86, 'modellotripolo-xxxl-verde', 'modellotripolo-4xl-bianco', 'Ciabalù modellotripolo - Verde - XXXL', NULL, NULL, 'uomo', 'uomo', 'SS25', 'XXXL', 'Verde', '', 10.00, 29.90, 22, '', 'Ciabalù', 102130, 'pubblicato', NULL, 4, '2025-03-15 14:26:18', '2025-03-15 14:26:18'),
(87, 'cravtri', NULL, 'cravtri', NULL, NULL, 'uomo', 'uomo', '', '', '', '8093054831333', 5.00, 9.90, 22, '', 'Ciabalù', 7327, 'pubblicato', NULL, 4, '2025-03-15 14:30:01', '2025-03-15 14:30:01'),
(90, 'ciaojkbkjbji', NULL, 'bvjh bh', NULL, NULL, 'uomo', 'uomo', 'SS25', NULL, NULL, '8054576575921', 6.00, 9.90, 22, 'altro', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 15:23:44', '2025-03-15 15:23:44'),
(91, 'tets', NULL, 'TEST', NULL, NULL, 'accessori', 'bambino', '', NULL, NULL, '', 5.00, 19.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 17:24:18', '2025-03-15 17:24:18'),
(92, 'scarpeuomotest', NULL, 'titolo scarpe uomo', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', NULL, NULL, '8063968077820', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'errore', '{\"success\":false,\"message\":\"Risposta non valida dall\'API: Syntax error\",\"exception\":true}', 4, '2025-03-15 20:38:39', '2025-03-15 20:39:02'),
(93, 'scarpeuomotest-39-bianco', 'scarpeuomotest', 'titolo scarpe uomo - 39 - Bianco', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '39', 'Bianco', '8030536125009', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(94, 'scarpeuomotest-40-bianco', 'scarpeuomotest', 'titolo scarpe uomo - 40 - Bianco', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '40', 'Bianco', '8049360366946', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(95, 'scarpeuomotest-41-bianco', 'scarpeuomotest', 'titolo scarpe uomo - 41 - Bianco', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '41', 'Bianco', '8074165882520', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(96, 'scarpeuomotest-42-bianco', 'scarpeuomotest', 'titolo scarpe uomo - 42 - Bianco', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '42', 'Bianco', '8034883283993', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(97, 'scarpeuomotest-43-bianco', 'scarpeuomotest', 'titolo scarpe uomo - 43 - Bianco', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '43', 'Bianco', '8024425428487', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(98, 'scarpeuomotest-44-bianco', 'scarpeuomotest', 'titolo scarpe uomo - 44 - Bianco', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '44', 'Bianco', '8075456436156', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(99, 'scarpeuomotest-45-bianco', 'scarpeuomotest', 'titolo scarpe uomo - 45 - Bianco', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '45', 'Bianco', '8036469437028', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(100, 'scarpeuomotest-39-blu', 'scarpeuomotest', 'titolo scarpe uomo - 39 - Blu', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '39', 'Blu', '8042938140382', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(101, 'scarpeuomotest-40-blu', 'scarpeuomotest', 'titolo scarpe uomo - 40 - Blu', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '40', 'Blu', '8040287808090', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(102, 'scarpeuomotest-41-blu', 'scarpeuomotest', 'titolo scarpe uomo - 41 - Blu', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '41', 'Blu', '8019630906127', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(103, 'scarpeuomotest-42-blu', 'scarpeuomotest', 'titolo scarpe uomo - 42 - Blu', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '42', 'Blu', '8057525001304', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(104, 'scarpeuomotest-43-blu', 'scarpeuomotest', 'titolo scarpe uomo - 43 - Blu', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '43', 'Blu', '8062780753752', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(105, 'scarpeuomotest-44-blu', 'scarpeuomotest', 'titolo scarpe uomo - 44 - Blu', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '44', 'Blu', '8090625115557', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(106, 'scarpeuomotest-45-blu', 'scarpeuomotest', 'titolo scarpe uomo - 45 - Blu', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '45', 'Blu', '8026599481015', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(107, 'scarpeuomotest-39-nero', 'scarpeuomotest', 'titolo scarpe uomo - 39 - Nero', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '39', 'Nero', '8059442053879', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(108, 'scarpeuomotest-40-nero', 'scarpeuomotest', 'titolo scarpe uomo - 40 - Nero', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '40', 'Nero', '8022534546962', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(109, 'scarpeuomotest-41-nero', 'scarpeuomotest', 'titolo scarpe uomo - 41 - Nero', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '41', 'Nero', '8031779528404', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(110, 'scarpeuomotest-42-nero', 'scarpeuomotest', 'titolo scarpe uomo - 42 - Nero', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '42', 'Nero', '8005111298041', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(111, 'scarpeuomotest-43-nero', 'scarpeuomotest', 'titolo scarpe uomo - 43 - Nero', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '43', 'Nero', '8026936160146', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(112, 'scarpeuomotest-44-nero', 'scarpeuomotest', 'titolo scarpe uomo - 44 - Nero', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '44', 'Nero', '8055461305029', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(113, 'scarpeuomotest-45-nero', 'scarpeuomotest', 'titolo scarpe uomo - 45 - Nero', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '45', 'Nero', '8039889370715', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(114, 'scarpeuomotest-39-rosso', 'scarpeuomotest', 'titolo scarpe uomo - 39 - Rosso', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '39', 'Rosso', '8091648866822', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(115, 'scarpeuomotest-40-rosso', 'scarpeuomotest', 'titolo scarpe uomo - 40 - Rosso', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '40', 'Rosso', '8022830138168', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(116, 'scarpeuomotest-41-rosso', 'scarpeuomotest', 'titolo scarpe uomo - 41 - Rosso', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '41', 'Rosso', '8004334537104', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(117, 'scarpeuomotest-42-rosso', 'scarpeuomotest', 'titolo scarpe uomo - 42 - Rosso', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '42', 'Rosso', '8090195964210', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(118, 'scarpeuomotest-43-rosso', 'scarpeuomotest', 'titolo scarpe uomo - 43 - Rosso', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '43', 'Rosso', '8035126076211', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(119, 'scarpeuomotest-44-rosso', 'scarpeuomotest', 'titolo scarpe uomo - 44 - Rosso', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '44', 'Rosso', '8031740452882', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(120, 'scarpeuomotest-45-rosso', 'scarpeuomotest', 'titolo scarpe uomo - 45 - Rosso', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '45', 'Rosso', '8056995032139', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(121, 'scarpeuomotest-39-verde', 'scarpeuomotest', 'titolo scarpe uomo - 39 - Verde', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '39', 'Verde', '8063774784226', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(122, 'scarpeuomotest-40-verde', 'scarpeuomotest', 'titolo scarpe uomo - 40 - Verde', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '40', 'Verde', '8045250070597', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(123, 'scarpeuomotest-41-verde', 'scarpeuomotest', 'titolo scarpe uomo - 41 - Verde', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '41', 'Verde', '8014833033724', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(124, 'scarpeuomotest-42-verde', 'scarpeuomotest', 'titolo scarpe uomo - 42 - Verde', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '42', 'Verde', '8023830127046', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(125, 'scarpeuomotest-43-verde', 'scarpeuomotest', 'titolo scarpe uomo - 43 - Verde', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '43', 'Verde', '8079375984880', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(126, 'scarpeuomotest-44-verde', 'scarpeuomotest', 'titolo scarpe uomo - 44 - Verde', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '44', 'Verde', '8078074051442', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(127, 'scarpeuomotest-45-verde', 'scarpeuomotest', 'titolo scarpe uomo - 45 - Verde', NULL, NULL, 'scarpe_uomo', 'uomo', 'SS25', '45', 'Verde', '8052230990721', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-15 20:38:39', '2025-03-15 20:38:39'),
(129, 'absdsadasd', NULL, 'fddsf', NULL, NULL, 'accessori', 'unisex', 'SS25', NULL, NULL, '', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'errore', '{\"success\":false,\"message\":\"Risposta non valida dall\'API: Syntax error\",\"exception\":true}', 4, '2025-03-16 11:32:31', '2025-03-16 11:32:36'),
(130, 'absdsadasd-xs-arancione', 'absdsadasd', 'fddsf - XS - Arancione', NULL, NULL, 'accessori', 'unisex', 'SS25', 'XS', 'Arancione', '8012345000692', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(131, 'absdsadasd-s-arancione', 'absdsadasd', 'fddsf - S - Arancione', NULL, NULL, 'accessori', 'unisex', 'SS25', 'S', 'Arancione', '8012345000708', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(132, 'absdsadasd-m-arancione', 'absdsadasd', 'fddsf - M - Arancione', NULL, NULL, 'accessori', 'unisex', 'SS25', 'M', 'Arancione', '8012345000715', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(133, 'absdsadasd-l-arancione', 'absdsadasd', 'fddsf - L - Arancione', NULL, NULL, 'accessori', 'unisex', 'SS25', 'L', 'Arancione', '8012345000722', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(134, 'absdsadasd-xl-arancione', 'absdsadasd', 'fddsf - XL - Arancione', NULL, NULL, 'accessori', 'unisex', 'SS25', 'XL', 'Arancione', '8012345000739', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(135, 'absdsadasd-xxl-arancione', 'absdsadasd', 'fddsf - XXL - Arancione', NULL, NULL, 'accessori', 'unisex', 'SS25', 'XXL', 'Arancione', '8012345000746', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(136, 'absdsadasd-xs-grigio', 'absdsadasd', 'fddsf - XS - Grigio', NULL, NULL, 'accessori', 'unisex', 'SS25', 'XS', 'Grigio', '8012345000753', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(137, 'absdsadasd-s-grigio', 'absdsadasd', 'fddsf - S - Grigio', NULL, NULL, 'accessori', 'unisex', 'SS25', 'S', 'Grigio', '8012345000760', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(138, 'absdsadasd-m-grigio', 'absdsadasd', 'fddsf - M - Grigio', NULL, NULL, 'accessori', 'unisex', 'SS25', 'M', 'Grigio', '8012345000777', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(139, 'absdsadasd-l-grigio', 'absdsadasd', 'fddsf - L - Grigio', NULL, NULL, 'accessori', 'unisex', 'SS25', 'L', 'Grigio', '8012345000784', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(140, 'absdsadasd-xl-grigio', 'absdsadasd', 'fddsf - XL - Grigio', NULL, NULL, 'accessori', 'unisex', 'SS25', 'XL', 'Grigio', '8012345000791', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(141, 'absdsadasd-xxl-grigio', 'absdsadasd', 'fddsf - XXL - Grigio', NULL, NULL, 'accessori', 'unisex', 'SS25', 'XXL', 'Grigio', '8012345000807', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(142, 'absdsadasd-xs-marrone', 'absdsadasd', 'fddsf - XS - Marrone', NULL, NULL, 'accessori', 'unisex', 'SS25', 'XS', 'Marrone', '8012345000814', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(143, 'absdsadasd-s-marrone', 'absdsadasd', 'fddsf - S - Marrone', NULL, NULL, 'accessori', 'unisex', 'SS25', 'S', 'Marrone', '8012345000821', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(144, 'absdsadasd-m-marrone', 'absdsadasd', 'fddsf - M - Marrone', NULL, NULL, 'accessori', 'unisex', 'SS25', 'M', 'Marrone', '8012345000838', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(145, 'absdsadasd-l-marrone', 'absdsadasd', 'fddsf - L - Marrone', NULL, NULL, 'accessori', 'unisex', 'SS25', 'L', 'Marrone', '8012345000845', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(146, 'absdsadasd-xl-marrone', 'absdsadasd', 'fddsf - XL - Marrone', NULL, NULL, 'accessori', 'unisex', 'SS25', 'XL', 'Marrone', '8012345000852', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(147, 'absdsadasd-xxl-marrone', 'absdsadasd', 'fddsf - XXL - Marrone', NULL, NULL, 'accessori', 'unisex', 'SS25', 'XXL', 'Marrone', '8012345000869', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(148, 'absdsadasd-xs-nero', 'absdsadasd', 'fddsf - XS - Nero', NULL, NULL, 'accessori', 'unisex', 'SS25', 'XS', 'Nero', '8012345000876', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(149, 'absdsadasd-s-nero', 'absdsadasd', 'fddsf - S - Nero', NULL, NULL, 'accessori', 'unisex', 'SS25', 'S', 'Nero', '8012345000883', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(150, 'absdsadasd-m-nero', 'absdsadasd', 'fddsf - M - Nero', NULL, NULL, 'accessori', 'unisex', 'SS25', 'M', 'Nero', '8012345000890', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(151, 'absdsadasd-l-nero', 'absdsadasd', 'fddsf - L - Nero', NULL, NULL, 'accessori', 'unisex', 'SS25', 'L', 'Nero', '8012345000906', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(152, 'absdsadasd-xl-nero', 'absdsadasd', 'fddsf - XL - Nero', NULL, NULL, 'accessori', 'unisex', 'SS25', 'XL', 'Nero', '8012345000913', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(153, 'absdsadasd-xxl-nero', 'absdsadasd', 'fddsf - XXL - Nero', NULL, NULL, 'accessori', 'unisex', 'SS25', 'XXL', 'Nero', '8012345000920', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(154, 'absdsadasd-xs-rosa', 'absdsadasd', 'fddsf - XS - Rosa', NULL, NULL, 'accessori', 'unisex', 'SS25', 'XS', 'Rosa', '8012345000937', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(155, 'absdsadasd-s-rosa', 'absdsadasd', 'fddsf - S - Rosa', NULL, NULL, 'accessori', 'unisex', 'SS25', 'S', 'Rosa', '8012345000944', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(156, 'absdsadasd-m-rosa', 'absdsadasd', 'fddsf - M - Rosa', NULL, NULL, 'accessori', 'unisex', 'SS25', 'M', 'Rosa', '8012345000951', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(157, 'absdsadasd-l-rosa', 'absdsadasd', 'fddsf - L - Rosa', NULL, NULL, 'accessori', 'unisex', 'SS25', 'L', 'Rosa', '8012345000968', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(158, 'absdsadasd-xl-rosa', 'absdsadasd', 'fddsf - XL - Rosa', NULL, NULL, 'accessori', 'unisex', 'SS25', 'XL', 'Rosa', '8012345000975', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(159, 'absdsadasd-xxl-rosa', 'absdsadasd', 'fddsf - XXL - Rosa', NULL, NULL, 'accessori', 'unisex', 'SS25', 'XXL', 'Rosa', '8012345001132', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(160, 'absdsadasd-xs-viola', 'absdsadasd', 'fddsf - XS - Viola', NULL, NULL, 'accessori', 'unisex', 'SS25', 'XS', 'Viola', '8012345001149', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(161, 'absdsadasd-s-viola', 'absdsadasd', 'fddsf - S - Viola', NULL, NULL, 'accessori', 'unisex', 'SS25', 'S', 'Viola', '8012345001156', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(162, 'absdsadasd-m-viola', 'absdsadasd', 'fddsf - M - Viola', NULL, NULL, 'accessori', 'unisex', 'SS25', 'M', 'Viola', '8012345001163', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(163, 'absdsadasd-l-viola', 'absdsadasd', 'fddsf - L - Viola', NULL, NULL, 'accessori', 'unisex', 'SS25', 'L', 'Viola', '8012345001170', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(164, 'absdsadasd-xl-viola', 'absdsadasd', 'fddsf - XL - Viola', NULL, NULL, 'accessori', 'unisex', 'SS25', 'XL', 'Viola', '8012345001187', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(165, 'absdsadasd-xxl-viola', 'absdsadasd', 'fddsf - XXL - Viola', NULL, NULL, 'accessori', 'unisex', 'SS25', 'XXL', 'Viola', '8012345001194', 10.00, 39.90, 22, '', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 11:32:31', '2025-03-16 11:32:31'),
(167, 'giovanni', NULL, 'fias sadj', NULL, NULL, 'donna', 'uomo', 'SS25', NULL, NULL, '', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'errore', '{\"success\":false,\"message\":\"Risposta non valida dall\'API: Syntax error\",\"exception\":true}', 4, '2025-03-16 22:38:42', '2025-03-16 22:38:46'),
(168, 'giovanni-39-bianco', 'giovanni', 'fias sadj - 39 - Bianco', NULL, NULL, 'donna', 'uomo', 'SS25', '39', 'Bianco', '8012345000692', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(169, 'giovanni-40-bianco', 'giovanni', 'fias sadj - 40 - Bianco', NULL, NULL, 'donna', 'uomo', 'SS25', '40', 'Bianco', '8012345000708', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(170, 'giovanni-41-bianco', 'giovanni', 'fias sadj - 41 - Bianco', NULL, NULL, 'donna', 'uomo', 'SS25', '41', 'Bianco', '8012345000715', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(171, 'giovanni-42-bianco', 'giovanni', 'fias sadj - 42 - Bianco', NULL, NULL, 'donna', 'uomo', 'SS25', '42', 'Bianco', '8012345000722', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(172, 'giovanni-43-bianco', 'giovanni', 'fias sadj - 43 - Bianco', NULL, NULL, 'donna', 'uomo', 'SS25', '43', 'Bianco', '8012345000739', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(173, 'giovanni-44-bianco', 'giovanni', 'fias sadj - 44 - Bianco', NULL, NULL, 'donna', 'uomo', 'SS25', '44', 'Bianco', '8012345000746', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(174, 'giovanni-45-bianco', 'giovanni', 'fias sadj - 45 - Bianco', NULL, NULL, 'donna', 'uomo', 'SS25', '45', 'Bianco', '8012345000753', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(175, 'giovanni-39-blu', 'giovanni', 'fias sadj - 39 - Blu', NULL, NULL, 'donna', 'uomo', 'SS25', '39', 'Blu', '8012345000760', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(176, 'giovanni-40-blu', 'giovanni', 'fias sadj - 40 - Blu', NULL, NULL, 'donna', 'uomo', 'SS25', '40', 'Blu', '8012345000777', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(177, 'giovanni-41-blu', 'giovanni', 'fias sadj - 41 - Blu', NULL, NULL, 'donna', 'uomo', 'SS25', '41', 'Blu', '8012345000784', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(178, 'giovanni-42-blu', 'giovanni', 'fias sadj - 42 - Blu', NULL, NULL, 'donna', 'uomo', 'SS25', '42', 'Blu', '8012345000791', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(179, 'giovanni-43-blu', 'giovanni', 'fias sadj - 43 - Blu', NULL, NULL, 'donna', 'uomo', 'SS25', '43', 'Blu', '8012345000807', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(180, 'giovanni-44-blu', 'giovanni', 'fias sadj - 44 - Blu', NULL, NULL, 'donna', 'uomo', 'SS25', '44', 'Blu', '8012345000814', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(181, 'giovanni-45-blu', 'giovanni', 'fias sadj - 45 - Blu', NULL, NULL, 'donna', 'uomo', 'SS25', '45', 'Blu', '8012345000821', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(182, 'giovanni-39-nero', 'giovanni', 'fias sadj - 39 - Nero', NULL, NULL, 'donna', 'uomo', 'SS25', '39', 'Nero', '8012345000838', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(183, 'giovanni-40-nero', 'giovanni', 'fias sadj - 40 - Nero', NULL, NULL, 'donna', 'uomo', 'SS25', '40', 'Nero', '8012345000845', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(184, 'giovanni-41-nero', 'giovanni', 'fias sadj - 41 - Nero', NULL, NULL, 'donna', 'uomo', 'SS25', '41', 'Nero', '8012345000852', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(185, 'giovanni-42-nero', 'giovanni', 'fias sadj - 42 - Nero', NULL, NULL, 'donna', 'uomo', 'SS25', '42', 'Nero', '8012345000869', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(186, 'giovanni-43-nero', 'giovanni', 'fias sadj - 43 - Nero', NULL, NULL, 'donna', 'uomo', 'SS25', '43', 'Nero', '8012345000876', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(187, 'giovanni-44-nero', 'giovanni', 'fias sadj - 44 - Nero', NULL, NULL, 'donna', 'uomo', 'SS25', '44', 'Nero', '8012345000883', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(188, 'giovanni-45-nero', 'giovanni', 'fias sadj - 45 - Nero', NULL, NULL, 'donna', 'uomo', 'SS25', '45', 'Nero', '8012345000890', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(189, 'giovanni-39-rosso', 'giovanni', 'fias sadj - 39 - Rosso', NULL, NULL, 'donna', 'uomo', 'SS25', '39', 'Rosso', '8012345000906', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(190, 'giovanni-40-rosso', 'giovanni', 'fias sadj - 40 - Rosso', NULL, NULL, 'donna', 'uomo', 'SS25', '40', 'Rosso', '8012345000913', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(191, 'giovanni-41-rosso', 'giovanni', 'fias sadj - 41 - Rosso', NULL, NULL, 'donna', 'uomo', 'SS25', '41', 'Rosso', '8012345000920', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(192, 'giovanni-42-rosso', 'giovanni', 'fias sadj - 42 - Rosso', NULL, NULL, 'donna', 'uomo', 'SS25', '42', 'Rosso', '8012345000937', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(193, 'giovanni-43-rosso', 'giovanni', 'fias sadj - 43 - Rosso', NULL, NULL, 'donna', 'uomo', 'SS25', '43', 'Rosso', '8012345000944', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(194, 'giovanni-44-rosso', 'giovanni', 'fias sadj - 44 - Rosso', NULL, NULL, 'donna', 'uomo', 'SS25', '44', 'Rosso', '8012345000951', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(195, 'giovanni-45-rosso', 'giovanni', 'fias sadj - 45 - Rosso', NULL, NULL, 'donna', 'uomo', 'SS25', '45', 'Rosso', '8012345000968', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(196, 'giovanni-39-verde', 'giovanni', 'fias sadj - 39 - Verde', NULL, NULL, 'donna', 'uomo', 'SS25', '39', 'Verde', '8012345000975', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(197, 'giovanni-40-verde', 'giovanni', 'fias sadj - 40 - Verde', NULL, NULL, 'donna', 'uomo', 'SS25', '40', 'Verde', '8012345001132', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(198, 'giovanni-41-verde', 'giovanni', 'fias sadj - 41 - Verde', NULL, NULL, 'donna', 'uomo', 'SS25', '41', 'Verde', '8012345001149', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(199, 'giovanni-42-verde', 'giovanni', 'fias sadj - 42 - Verde', NULL, NULL, 'donna', 'uomo', 'SS25', '42', 'Verde', '8012345001156', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(200, 'giovanni-43-verde', 'giovanni', 'fias sadj - 43 - Verde', NULL, NULL, 'donna', 'uomo', 'SS25', '43', 'Verde', '8012345001163', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(201, 'giovanni-44-verde', 'giovanni', 'fias sadj - 44 - Verde', NULL, NULL, 'donna', 'uomo', 'SS25', '44', 'Verde', '8012345001170', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(202, 'giovanni-45-verde', 'giovanni', 'fias sadj - 45 - Verde', NULL, NULL, 'donna', 'uomo', 'SS25', '45', 'Verde', '8012345001187', 10.00, 29.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:38:42', '2025-03-16 22:38:42'),
(204, 'semplice', NULL, 'semplice', NULL, NULL, 'accessori', 'uomo', 'SS25', NULL, NULL, '8012345001194', 5.00, 19.90, 22, 'RWM S.R.L.', 'Ciabalù', NULL, 'bozza', NULL, 4, '2025-03-16 22:39:31', '2025-03-16 22:39:31');

-- --------------------------------------------------------

--
-- Struttura della tabella `tipologie_prodotto`
--

CREATE TABLE `tipologie_prodotto` (
  `id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `moltiplicatore_prezzo` decimal(5,2) NOT NULL,
  `arrotonda_a` decimal(5,2) NOT NULL DEFAULT '9.90',
  `descrizione` text,
  `creato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `aggiornato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `tipologie_prodotto`
--

INSERT INTO `tipologie_prodotto` (`id`, `nome`, `moltiplicatore_prezzo`, `arrotonda_a`, `descrizione`, `creato_il`, `aggiornato_il`) VALUES
(1, 'uomo', 3.00, 9.90, 'Abbigliamento uomo', '2025-03-14 15:06:18', '2025-03-14 15:06:18'),
(2, 'donna', 3.00, 9.90, 'Abbigliamento donna', '2025-03-14 15:06:18', '2025-03-14 15:06:18'),
(3, 'accessori', 4.00, 9.90, 'Accessori vari', '2025-03-14 15:06:18', '2025-03-14 15:06:18'),
(4, 'scarpe_uomo', 3.00, 9.90, 'Scarpe da uomo', '2025-03-14 15:06:18', '2025-03-14 15:06:18'),
(5, 'scarpe_donna', 2.50, 9.90, 'Scarpe da donna', '2025-03-14 15:06:18', '2025-03-14 15:06:18');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nome_completo` varchar(100) DEFAULT NULL,
  `ruolo` enum('admin','editor','viewer') NOT NULL DEFAULT 'editor',
  `ultimo_accesso` datetime DEFAULT NULL,
  `creato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `aggiornato_il` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`id`, `username`, `password`, `email`, `nome_completo`, `ruolo`, `ultimo_accesso`, `creato_il`, `aggiornato_il`) VALUES
(1, 'admin', '$2y$10$YwJzDXkWh4QDkmYhQPtpLOfuUKKMQSGzGfHq3.ATCxPx3HJRLrL1y', 'admin@example.com', 'Amministratore', 'admin', NULL, '2025-03-14 15:06:18', '2025-03-14 15:23:45'),
(2, 'nuovoadmin', '$2y$10$YwJzDXkWh4QDkmYhQPtpLOfuUKKMQSGzGfHq3.ATCxPx3HJRLrL1y', 'nuovo@esempio.com', 'Nuovo Admin', 'admin', NULL, '2025-03-14 15:25:50', '2025-03-14 15:30:28'),
(3, 'directadmin', '$2y$10$4fyWb6lEhb3JRk9i86R0DuYdKdImC8C63iD5l5L6TySvwqYZwfHBG', 'direct@example.com', 'Direct Admin', 'admin', '2025-03-14 20:33:54', '2025-03-14 15:33:42', '2025-03-14 19:33:54'),
(4, 'ciabalu', '$2y$10$TGy5GG1.5YMDwHcLoNotDOjGqCt0gkJCVt06RttHNHSnsoGY/ahGm', 'giovanni@rossiwebmedia.com', 'Giovanni Rossi', 'admin', '2025-03-16 21:40:59', '2025-03-14 15:54:09', '2025-03-16 20:40:59');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `batch_ean`
--
ALTER TABLE `batch_ean`
  ADD PRIMARY KEY (`id`),
  ADD KEY `utente_id` (`utente_id`);

--
-- Indici per le tabelle `cache_aliquote`
--
ALTER TABLE `cache_aliquote`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `cache_fornitori`
--
ALTER TABLE `cache_fornitori`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `cache_generi`
--
ALTER TABLE `cache_generi`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `cache_marche`
--
ALTER TABLE `cache_marche`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `cache_stagioni`
--
ALTER TABLE `cache_stagioni`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `codici_ean`
--
ALTER TABLE `codici_ean`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ean` (`ean`);

--
-- Indici per le tabelle `impostazioni_api`
--
ALTER TABLE `impostazioni_api`
  ADD PRIMARY KEY (`id`),
  ADD KEY `utente_id` (`utente_id`);

--
-- Indici per le tabelle `log_sincronizzazione`
--
ALTER TABLE `log_sincronizzazione`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prodotto_id` (`prodotto_id`),
  ADD KEY `utente_id` (`utente_id`);

--
-- Indici per le tabelle `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indici per le tabelle `preset_colori`
--
ALTER TABLE `preset_colori`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `preset_taglie`
--
ALTER TABLE `preset_taglie`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `prodotti`
--
ALTER TABLE `prodotti`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sku` (`sku`),
  ADD KEY `utente_id` (`utente_id`);

--
-- Indici per le tabelle `tipologie_prodotto`
--
ALTER TABLE `tipologie_prodotto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `batch_ean`
--
ALTER TABLE `batch_ean`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `cache_aliquote`
--
ALTER TABLE `cache_aliquote`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `cache_fornitori`
--
ALTER TABLE `cache_fornitori`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT per la tabella `cache_generi`
--
ALTER TABLE `cache_generi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `cache_marche`
--
ALTER TABLE `cache_marche`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la tabella `cache_stagioni`
--
ALTER TABLE `cache_stagioni`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `codici_ean`
--
ALTER TABLE `codici_ean`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT per la tabella `impostazioni_api`
--
ALTER TABLE `impostazioni_api`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `log_sincronizzazione`
--
ALTER TABLE `log_sincronizzazione`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT per la tabella `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `preset_colori`
--
ALTER TABLE `preset_colori`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `preset_taglie`
--
ALTER TABLE `preset_taglie`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `prodotti`
--
ALTER TABLE `prodotti`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT per la tabella `tipologie_prodotto`
--
ALTER TABLE `tipologie_prodotto`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `batch_ean`
--
ALTER TABLE `batch_ean`
  ADD CONSTRAINT `batch_ean_ibfk_1` FOREIGN KEY (`utente_id`) REFERENCES `utenti` (`id`) ON DELETE SET NULL;

--
-- Limiti per la tabella `impostazioni_api`
--
ALTER TABLE `impostazioni_api`
  ADD CONSTRAINT `impostazioni_api_ibfk_1` FOREIGN KEY (`utente_id`) REFERENCES `utenti` (`id`) ON DELETE SET NULL;

--
-- Limiti per la tabella `log_sincronizzazione`
--
ALTER TABLE `log_sincronizzazione`
  ADD CONSTRAINT `log_sincronizzazione_ibfk_1` FOREIGN KEY (`prodotto_id`) REFERENCES `prodotti` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `log_sincronizzazione_ibfk_2` FOREIGN KEY (`utente_id`) REFERENCES `utenti` (`id`) ON DELETE SET NULL;

--
-- Limiti per la tabella `password_reset`
--
ALTER TABLE `password_reset`
  ADD CONSTRAINT `password_reset_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `utenti` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `prodotti`
--
ALTER TABLE `prodotti`
  ADD CONSTRAINT `prodotti_ibfk_1` FOREIGN KEY (`utente_id`) REFERENCES `utenti` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
