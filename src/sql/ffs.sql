-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 07:05 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ffs`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `staffCode` varchar(10) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`staffCode`, `pass`, `status`) VALUES
('1234', '123', 0),
('2345', '123', 0),
('6942', '123', 1),
('6943', '12345', 1),
('6944', '123', 1),
('6945', '123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `billdetail`
--

CREATE TABLE `billdetail` (
  `billCode` varchar(20) NOT NULL,
  `productCode` varchar(10) NOT NULL,
  `productNote` varchar(100) DEFAULT NULL,
  `amountProduct` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billdetail`
--

INSERT INTO `billdetail` (`billCode`, `productCode`, `productNote`, `amountProduct`, `price`) VALUES
('2023051852442', 'A72R', 'A72R', 3, 60000),
('2023051995479', 'B01R', 'B01R', 1, 37000),
('2023051136747', 'B02R', 'B02R', 1, 49000),
('2023051166170', 'B05R', 'B05R', 1, 69000),
('2023051233764', 'B05R', 'B05R', 3, 69000),
('2023051128850', 'B06R', 'B06R', 2, 89000),
('2023051272269', 'B06R', 'B06R', 1, 89000),
('2023051287931', 'B06R', 'B06R', 1, 89000),
('2023051378959', 'B06R', 'B06R', 1, 89000),
('2023051929012', 'B06R', 'B06R', 1, 89000),
('2023052200288', 'B06R', 'B06R', 1, 89000),
('2023051187361', 'C09E', 'C09E', 1, 389000),
('2023051287931', 'D01L', 'D01L', 1, 29000),
('2023051287931', 'D01M', 'D01M', 1, 22000),
('2023052287277', 'D05E', 'D05E', 1, 20000),
('2023051166170', 'D06E', 'D06E', 1, 22000),
('2023051166170', 'F01L', 'F01L', 1, 39000),
('2023052287277', 'F01L', 'F01L', 1, 39000),
('2023051287931', 'F01M', 'F01M', 1, 29000),
('2023051128850', 'I01E', 'I01E', 1, 10000),
('2023051378959', 'I01E', 'I01E', 1, 10000),
('2023052132016', 'I01E', 'I01E', 10, 10000),
('2023051166170', 'I02E', 'I02E', 1, 29000),
('2023051378959', 'I02E', 'I02E', 1, 29000),
('2023051128850', 'I04E', 'I04E', 1, 39000),
('2023051174111', 'I04E', 'I04E', 1, 39000),
('2023052287277', 'I04E', 'I04E', 1, 39000),
('2023051168559', 'N06R', 'N06R', 1, 49000),
('2023051110503', 'N20E', 'N20E', 1, 121000),
('2023052287277', 'N20E', 'N20E', 1, 121000),
('2023051174111', 'R02E', 'R02E', 1, 69000),
('2023051287931', 'S01E', 'S01E', 1, 35000),
('2023051378959', 'S01E', 'S01E', 1, 35000),
('2023051161471', 'W06E', 'W06E', 1, 125000),
('2023051179151', 'W06E', 'W06E', 1, 125000),
('2023051287931', 'W06E', 'W06E', 1, 125000),
('2023051161471', 'W10E', 'W10E', 1, 176000),
('2023051287931', 'W10E', 'W10E', 1, 176000),
('2023052125906', 'W10E', 'W10E', 1, 176000),
('2023052200288', 'W10E', 'W10E', 1, 176000);

-- --------------------------------------------------------

--
-- Table structure for table `billdetail2`
--

CREATE TABLE `billdetail2` (
  `billCode` varchar(20) NOT NULL,
  `comboCode` varchar(10) NOT NULL,
  `productNote` varchar(100) DEFAULT NULL,
  `amoutCombo` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billdetail2`
--

INSERT INTO `billdetail2` (`billCode`, `comboCode`, `productNote`, `amoutCombo`, `price`) VALUES
('2023051128850', 'B06L', '', 1, 114000),
('2023051136747', 'B02L', '', 1, 84000),
('2023051154353', 'B06L', '', 1, 114000),
('2023051169659', 'C02L', '', 1, 107000),
('2023051169659', 'C02M', '', 1, 92000),
('2023051169659', 'R03R', '', 2, 49000),
('2023051174111', 'R01R', '', 1, 39000),
('2023051198351', 'B01L', '', 1, 114000),
('2023051272269', 'B06L', '', 1, 114000),
('2023051272269', 'B06M', '', 1, 99000),
('2023051287931', 'B06L', '', 1, 114000),
('2023051287931', 'B06M', '', 1, 99000),
('2023051378959', 'B06L', '', 1, 114000),
('2023051929012', 'B06L', '', 1, 114000),
('2023051929012', 'C02L', '', 3, 107000),
('2023051995479', 'B01L', '', 1, 114000),
('2023051995479', 'B01M', '', 1, 99000);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `billCode` varchar(20) NOT NULL,
  `date` datetime NOT NULL,
  `totalNumber` int(11) NOT NULL,
  `totalPrice` int(11) NOT NULL,
  `promoCode` varchar(10) DEFAULT NULL,
  `billStatus` varchar(20) NOT NULL,
  `location` varchar(50) NOT NULL,
  `staffCode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`billCode`, `date`, `totalNumber`, `totalPrice`, `promoCode`, `billStatus`, `location`, `staffCode`) VALUES
('2023051110503', '2023-05-11 15:47:54', 1, 121000, NULL, 'Eat In', 'Order Kiost Host', NULL),
('2023051128850', '2023-05-11 16:15:24', 5, 341000, NULL, 'Take Out', 'Order Kiost Host', NULL),
('2023051136747', '2023-05-11 00:00:00', 2, 133000, NULL, 'Eat In', 'Order Kiost Host', NULL),
('2023051154353', '2023-05-11 16:08:37', 1, 114000, NULL, 'Eat In', 'Order Kiost Host', NULL),
('2023051161471', '2023-05-11 15:57:52', 2, 301000, NULL, 'Eat In', 'Order Kiost Host', NULL),
('2023051166170', '2023-05-11 00:00:00', 4, 159000, NULL, 'Eat In', 'Order Kiost Host', NULL),
('2023051168559', '2023-05-11 15:54:09', 1, 49000, NULL, 'Eat In', 'Order Kiost Host', NULL),
('2023051169659', '2023-05-11 21:58:03', 4, 297000, NULL, 'Take Out', 'Order Kiost Host', NULL),
('2023051174111', '2023-05-11 16:27:52', 3, 147000, NULL, 'Eat In', 'Order Kiost Host', NULL),
('2023051179151', '2023-05-11 16:58:19', 1, 125000, NULL, 'Eat In', 'Order Kiost Host', NULL),
('2023051187361', '2023-05-11 19:57:37', 1, 389000, NULL, 'Take Out', 'Order Kiost Host', NULL),
('2023051198351', '2023-05-11 00:00:00', 1, 114000, NULL, 'Take Out', 'Order Kiost Host', NULL),
('2023051233764', '2023-05-12 22:35:24', 3, 207000, NULL, 'Eat In', 'Order Kiost Host', NULL),
('2023051272269', '2023-05-12 08:05:54', 3, 302000, NULL, 'Eat In', 'Order Kiost Host', NULL),
('2023051287931', '2023-05-12 10:12:31', 9, 718000, NULL, 'Eat In', 'Order Counter', '6942'),
('2023051378959', '2023-05-13 14:20:54', 5, 277000, NULL, 'Take Out', 'Order Kiost Host', NULL),
('2023051852442', '2023-05-18 21:59:01', 3, 180000, NULL, 'Eat In', 'Order Kiost Host', NULL),
('2023051929012', '2023-05-19 13:53:41', 5, 524000, NULL, 'Take Out', 'Order Kiost Host', NULL),
('2023051995479', '2023-05-19 10:38:52', 3, 250000, NULL, 'Eat In', 'Order Kiost Host', NULL),
('2023052125906', '2023-05-21 15:08:22', 1, 176000, NULL, 'Eat In', 'Order Kiost Host', NULL),
('2023052132016', '2023-05-21 12:05:48', 10, 100000, NULL, 'Eat In', 'Order Kiost Host', NULL),
('2023052200288', '2023-05-22 02:24:16', 2, 265000, NULL, 'Eat In', 'Order Counter', '6944'),
('2023052287277', '2023-05-22 02:33:54', 4, 219000, NULL, 'Take Out', 'Order Kiost Host', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `combo`
--

CREATE TABLE `combo` (
  `comboCode` varchar(10) NOT NULL,
  `comboName` varchar(100) NOT NULL,
  `comboPrice` int(11) NOT NULL,
  `numberOfProduct` int(11) NOT NULL,
  `comboImage` varchar(100) NOT NULL,
  `groupCode` varchar(10) NOT NULL,
  `inMenu` tinyint(1) NOT NULL,
  `inSys` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `combo`
--

INSERT INTO `combo` (`comboCode`, `comboName`, `comboPrice`, `numberOfProduct`, `comboImage`, `groupCode`, `inMenu`, `inSys`) VALUES
('B01L', 'Combo Big Mac cỡ lớn/Large EVM Big Mac', 114000, 3, './img-combo/EVM-bigmac.png', '2111', 1, 1),
('B01M', 'Combo Big Mac cỡ vừa/Medium EVM Big Mac', 99000, 3, './img-combo/EVM-bigmac.png', '2111', 1, 1),
('B02L', 'Combo Bò phô mai đặc biệt cỡ lớn/Large EVM Cheeseburger Deluxe ', 84000, 3, './img-combo/EVM-cheeseburger-deluxe.png', '2112', 1, 1),
('B02M', 'Combo Bò phô mai đặc biệt cỡ vừa/Medium EVM Cheeseburger Deluxe ', 69000, 3, './img-combo/EVM-cheeseburger-deluxe.png', '2112', 1, 1),
('B03L', 'Combo Bò phô mai 2 lớp cỡ lớn/Larger EVM Double Cheeseburger', 94000, 3, './img-combo/EVM-double-cheeseburger.png', '2113', 1, 1),
('B03M', 'Combo Bò phô mai 2 lớp cỡ vừa/Medium EVM Double Cheeseburger', 79000, 3, './img-combo/EVM-double-cheeseburger.png', '2113', 1, 1),
('B04L', 'Combo Bò hoàng gia đặc biệt cỡ lớn/Large EVM Royal Deluxe ', 114000, 3, './img-combo/EVM-mcroyal-deluxe.png', '2114', 1, 1),
('B04M', 'Combo Bò hoàng gia đặc biệt cỡ vừa/Medium EVM Royal Deluxe ', 99000, 3, './img-combo/EVM-mcroyal-deluxe.png', '2114', 1, 1),
('B05L', 'Combo Gà phô mai đặc biệt cỡ lớn/Large EVM Chicken Deluxe', 104000, 3, './img-combo/EVM-mcchicken-deluxe.png', '2121', 1, 1),
('B05M', 'Combo Gà phô mai đặc biệt cỡ vừa/Medium EVM Chicken Deluxe', 89000, 3, './img-combo/EVM-mcchicken-deluxe.png', '2121', 1, 1),
('B06L', 'Combo Gà thượng hạng giòn cay cỡ lớn/Large EVM Spicy Deluxe', 114000, 3, './img-combo/EVM-mcspicy-deluxe.png', '2122', 1, 1),
('B06M', 'Combo Gà thượng hạng giòn cay cỡ vừa/Medium EVM Spicy Deluxe', 99000, 3, './img-combo/EVM-mcspicy-deluxe.png', '2122', 1, 1),
('B07L', 'Combo Gà sốt Mayo cỡ lớn/Large EVM Chicken Mayo ', 94000, 3, './img-combo/EVM-mcchicken-mayo.png', '2123', 1, 1),
('B07M', 'Combo Gà sốt Mayo cỡ vừa/ Medium EVM Chicken Mayo', 79000, 3, './img-combo/EVM-mcchicken-mayo.png', '2123', 1, 1),
('B08L', 'Combo Phi lê cá tuyết cỡ lớn/Large EVM Filet O Fish', 84000, 3, './img-combo/EVM-filet-o-fish.png', '2124', 1, 1),
('B08M', 'Combo Phi lê cá tuyết cỡ vừa/Medium EVM Filet O Fish', 69000, 3, './img-combo/EVM-filet-o-fish.png', '2124', 1, 1),
('C02L', 'Combo 2 miếng gà rán cỡ lớn/Large EVM 2 BIC', 107000, 3, './img-combo/EVM-2chicken.png', '122', 1, 1),
('C02M', 'Combo 2 miếng gà rán cỡ vừa/Medium EVM 1 BIC', 92000, 3, './img-combo/EVM-2chicken.png', '122', 1, 1),
('R01R', 'Cơm gà rán 1 miếng kèm nước/BIC 1 Rice', 39000, 2, './img-combo/1pc-rice.png', '122', 1, 1),
('R03R', 'Cơm gà rán mắm tỏi kèm nước/BIC GFS Rice ', 49000, 2, './img-combo/1pc-gfs-rice.png', '122', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `combodetail`
--

CREATE TABLE `combodetail` (
  `comboCode` varchar(10) NOT NULL,
  `productCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `combodetail`
--

INSERT INTO `combodetail` (`comboCode`, `productCode`) VALUES
('B01L', 'B01R'),
('B01M', 'B01R'),
('B02L', 'B02R'),
('B02M', 'B02R'),
('B03L', 'B03R'),
('B03M', 'B03R'),
('B04L', 'B04R'),
('B04M', 'B04R'),
('B05L', 'B05R'),
('B05M', 'B05R'),
('B06L', 'B06R'),
('B06M', 'B06R'),
('B07L', 'B07R'),
('B07M', 'B07R'),
('B08L', 'B08R'),
('B08M', 'B08R'),
('C02L', 'C02R'),
('C02M', 'C02R'),
('B01L', 'D01L'),
('B07L', 'D01L'),
('C02L', 'D01L'),
('B01M', 'D01M'),
('B02L', 'D01M'),
('B02M', 'D01M'),
('B03L', 'D01M'),
('B03M', 'D01M'),
('B04L', 'D01M'),
('B04M', 'D01M'),
('B05L', 'D01M'),
('B05M', 'D01M'),
('B06L', 'D01M'),
('B06M', 'D01M'),
('B07M', 'D01M'),
('B08L', 'D01M'),
('B08M', 'D01M'),
('C02M', 'D01M'),
('R01R', 'D01R'),
('R03R', 'D01R'),
('B01L', 'F01L'),
('B07L', 'F01L'),
('C02L', 'F01L'),
('B01M', 'F01M'),
('B02L', 'F01M'),
('B02M', 'F01M'),
('B03L', 'F01M'),
('B03M', 'F01M'),
('B04L', 'F01M'),
('B04M', 'F01M'),
('B05L', 'F01M'),
('B05M', 'F01M'),
('B06L', 'F01M'),
('B06M', 'F01M'),
('B07M', 'F01M'),
('B08L', 'F01M'),
('B08M', 'F01M'),
('C02M', 'F01M'),
('R01R', 'R01E'),
('R03R', 'R01E');

-- --------------------------------------------------------

--
-- Table structure for table `duty`
--

CREATE TABLE `duty` (
  `dutyCode` varchar(10) NOT NULL,
  `dutyName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `duty`
--

INSERT INTO `duty` (`dutyCode`, `dutyName`) VALUES
('DUTY01', 'Admin'),
('DUTY02', 'Manager'),
('DUTY03', 'Crew Trainer'),
('DUTY04', 'Crew'),
('DUTY05', 'Guest'),
('DUTY52', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `dutyhasfunc`
--

CREATE TABLE `dutyhasfunc` (
  `dutyCode` varchar(10) NOT NULL,
  `functionCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dutyhasfunc`
--

INSERT INTO `dutyhasfunc` (`dutyCode`, `functionCode`) VALUES
('DUTY01', 'FUNC01'),
('DUTY01', 'FUNC02'),
('DUTY01', 'FUNC03'),
('DUTY01', 'FUNC04'),
('DUTY01', 'FUNC05'),
('DUTY01', 'FUNC06'),
('DUTY01', 'FUNC07'),
('DUTY01', 'FUNC09'),
('DUTY02', 'FUNC01'),
('DUTY02', 'FUNC02'),
('DUTY02', 'FUNC04'),
('DUTY02', 'FUNC05'),
('DUTY02', 'FUNC07'),
('DUTY03', 'FUNC01'),
('DUTY03', 'FUNC02'),
('DUTY03', 'FUNC05'),
('DUTY04', 'FUNC01'),
('DUTY04', 'FUNC06'),
('DUTY05', 'FUNC01'),
('DUTY52', 'FUNC01'),
('DUTY52', 'FUNC02'),
('DUTY52', 'FUNC03');

-- --------------------------------------------------------

--
-- Table structure for table `functions`
--

CREATE TABLE `functions` (
  `functionCode` varchar(10) NOT NULL,
  `functionName` varchar(50) NOT NULL,
  `functionIcon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `functions`
--

INSERT INTO `functions` (`functionCode`, `functionName`, `functionIcon`) VALUES
('FUNC01', 'Gọi món', './icon/order.png'),
('FUNC02', 'Quản lý nhân viên', './icon/staff.png'),
('FUNC03', 'Quản lý Menu', './icon/menu.png'),
('FUNC04', 'Nhập hàng', './icon/packing.png'),
('FUNC05', 'Thống kê', './icon/turnover.png'),
('FUNC06', 'Quản lý đơn hàng', './icon/bill.png'),
('FUNC07', 'Phân quyền', './icon/duty.png'),
('FUNC09', 'Quản lý tài khoản', './icon/account.png');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `groupCode` varchar(10) NOT NULL,
  `groupName` varchar(50) NOT NULL,
  `groupIcon` varchar(100) NOT NULL,
  `IN_groupCode` varchar(10) DEFAULT NULL,
  `inMenu` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`groupCode`, `groupName`, `groupIcon`, `IN_groupCode`, `inMenu`) VALUES
('01', 'Burger', './img-group/Burger.png', NULL, 1),
('02', 'Gà rán da giòn', './img-group/FriedChicken.png', NULL, 1),
('03', 'Món ăn nhẹ', './img-group/FrenchFries.png', NULL, 1),
('04', 'Thức uống & tráng miệng', './img-group/Soda.png', NULL, 1),
('045', 'Burger Tôm', './img-group/red-fish-burger.jpg', '01', 0),
('111', 'Burger Bò', './img-group/BeefBurger.png', '01', 1),
('112', 'Burger Gà & Cá', './img-group/ChickenFishBurger.png', '01', 1),
('121', 'Phần lẻ', './img-group/OnlyChicken.png', '02', 1),
('122', 'Phần ăn 1 người', './img-group/EVM.png', '02', 1),
('123', 'Gà Wings', './img-group/wings.png', '02', 1),
('124', 'Gà Nuggets', './img-group/chicken-nuggets.png', '02', 1),
('131', 'Khoai tây chiên', './img-group/french-fries.png', '03', 1),
('141', 'Thức uống', './img-group/drink.png', '04', 1),
('142', 'Tráng miệng', './img-group/dessert.png', '04', 1),
('2111', 'Burger Big Mac', './img-group/bigmac.png', '111', 1),
('2112', 'Burger Bò phô mai đặc biệt', './img-group/cheese-burger-deluxe.png', '111', 1),
('2113', 'Burger Bò phô mai 2 lớp', './img-group/double-cheese-burger.png', '111', 1),
('2114', 'Burger Bò Hoàng Gia Đặc Biệt', './img-group/mcroyal-deluxe.png', '111', 1),
('2121', 'Burger Gà phô mai đặc biệt', './img-group/mcchicken-deluxe.png', '112', 1),
('2122', 'Burger Gà thượng hạng giòn cay ', './img-group/mcspicy-deluxe.png', '112', 1),
('2123', 'Burger Gà sốt Mayo đặc biệt', './img-group/mcchicken-mayo.png', '112', 1),
('2124', 'Burger Phile cá Tuyết', './img-group/filet-o-fish.png', '112', 1),
('2411', 'Coca-Cola', './img-group/Coca-cola.png', '141', 1),
('2412', 'Fanta', './img-group/Fanta.png', '141', 1),
('2413', 'Sprite', './img-group/Sprite.png', '141', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `ingredientCode` varchar(10) NOT NULL,
  `ingredientName` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `cost` int(255) NOT NULL DEFAULT 10000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`ingredientCode`, `ingredientName`, `amount`, `cost`) VALUES
('IN001', 'Vỏ bánh lớn', 0, 10000),
('IN002', 'Vỏ bánh nhỏ', 1, 10000),
('IN003', 'Thịt bò', 6, 10000),
('IN004', 'Cơm', 3, 10000),
('IN005', 'Thịt gà', 2, 10000),
('IN006', 'Thịt gà cay', 14, 10000),
('IN007', 'Phi lê cá Tuyết', 5, 10000),
('IN008', 'Rau xà lách', 5, 10000),
('IN009', 'Cà chua', 13, 10000),
('IN010', 'Dưa chua', 4, 10000),
('IN011', 'Hành tây', 3, 10000),
('IN012', 'Ớt chuông', 6, 10000),
('IN013', 'Phô mai lát', 2, 10000),
('IN014', 'Tương cà', 3, 10000),
('IN015', 'Sốt Mustard', 0, 10000),
('IN016', 'Sốt Mayonnaise', 3, 10000),
('IN017', 'Gà miếng', 0, 10000),
('IN018', 'Gà viên', 0, 10000),
('IN019', 'Cánh gà cắt khúc', 0, 10000),
('IN020', 'Kem', 0, 10000),
('IN021', 'Sốt chocolate', 0, 10000),
('IN022', 'Sốt dâu', 0, 10000),
('IN023', 'Vụn Oreo', 0, 10000),
('IN024', 'Khoai tây', 0, 10000),
('IN025', 'Muối', 0, 10000),
('IN026', 'Coca Cola', 0, 10000),
('IN027', 'Fanta', 0, 10000),
('IN028', 'Sprite', 0, 10000),
('IN029', 'Đá', 0, 10000),
('IN030', 'Sốt mắm tỏi', 0, 10000),
('IN031', 'Bắp', 0, 10000),
('IN032', 'Milo hộp', 0, 10000),
('IN033', 'Sữa tươi hộp', 0, 10000),
('IN034', 'Nước suối đóng chai', 0, 10000),
('IN035', 'Bánh ốc quế', 0, 10000),
('IN036', 'aaa', 10, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `productdetail`
--

CREATE TABLE `productdetail` (
  `productCode` varchar(10) NOT NULL,
  `ingredientCode` varchar(10) NOT NULL,
  `recipe` varchar(30) NOT NULL,
  `toChange` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productdetail`
--

INSERT INTO `productdetail` (`productCode`, `ingredientCode`, `recipe`, `toChange`) VALUES
('B01R', 'IN001', '3 miếng', 0),
('B01R', 'IN003', '2 miếng', 0),
('B01R', 'IN008', '10 gram', 1),
('B01R', 'IN010', '3 lát', 1),
('B01R', 'IN011', '10 gram', 1),
('B01R', 'IN013', '1 lát', 1),
('B01R', 'IN015', '10gram', 1),
('B02R', 'IN001', '2 miếng', 0),
('B02R', 'IN003', '1 miếng', 0),
('B02R', 'IN008', '10 gram', 1),
('B02R', 'IN009', '2 lát', 1),
('B02R', 'IN011', '10 gram', 1),
('B02R', 'IN013', '1 lát', 1),
('B02R', 'IN014', '10 gram', 1),
('B02R', 'IN015', '10 gram', 1),
('B03R', 'IN001', '2 miếng', 0),
('B03R', 'IN003', '2 miếng', 0),
('B03R', 'IN010', '3 lát', 1),
('B03R', 'IN011', '10 gram', 1),
('B03R', 'IN013', '2 lát', 1),
('B03R', 'IN014', '10 gram', 1),
('B03R', 'IN015', '10 gram', 1),
('B04R', 'IN001', '2 miếng', 0),
('B04R', 'IN003', '1 miếng', 0),
('B04R', 'IN008', '10 gram', 1),
('B04R', 'IN009', '2 lát', 1),
('B04R', 'IN010', '3 lát', 1),
('B04R', 'IN011', '10 gram', 1),
('B04R', 'IN013', '1 lát', 1),
('B04R', 'IN014', '10 gram', 1),
('B04R', 'IN015', '10 gram', 1),
('B05R', 'IN001', '2 miếng', 0),
('B05R', 'IN005', '1 miếng', 0),
('B05R', 'IN008', '10 gram', 1),
('B05R', 'IN009', '2 lát', 1),
('B05R', 'IN013', '1 lát', 1),
('B05R', 'IN016', '10 gram', 1),
('B06R', 'IN001', '2 miếng', 0),
('B06R', 'IN006', '1 miếng', 0),
('B06R', 'IN008', '10 gram', 1),
('B06R', 'IN009', '2 lát', 1),
('B06R', 'IN016', '10 gram', 1),
('B07R', 'IN002', '2 miếng', 0),
('B07R', 'IN005', '1 miếng', 0),
('B07R', 'IN008', '10 gram', 1),
('B07R', 'IN016', '10 gram', 1),
('B08R', 'IN002', '2 miếng', 0),
('B08R', 'IN007', '1 miếng', 0),
('B08R', 'IN008', '10 gram', 1),
('B08R', 'IN013', '1 lát', 1),
('B08R', 'IN016', '10 gram', 1),
('C01E', 'IN017', '1 miếng', 0),
('C02R', 'IN017', '2 miếng', 0),
('C03E', 'IN017', '3 miếng', 0),
('C04E', 'IN017', '4 miếng', 0),
('C05E', 'IN017', '5 miếng', 0),
('C09E', 'IN017', '9 miếng', 0),
('D01L', 'IN026', '600 ml', 0),
('D01L', 'IN029', '10 gram', 1),
('D01M', 'IN026', '400 ml', 0),
('D01M', 'IN029', '10 gram', 1),
('D01R', 'IN026', '300 ml', 0),
('D01R', 'IN029', '10 gram', 1),
('D02L', 'IN027', '600 ml', 0),
('D02L', 'IN029', '10 gram', 1),
('D02M', 'IN027', '400 ml', 0),
('D02M', 'IN029', '10 gram', 1),
('D02R', 'IN027', '300 ml', 0),
('D02R', 'IN029', '10 gram', 1),
('D03L', 'IN028', '600 ml', 0),
('D03L', 'IN029', '10 gram', 1),
('D03M', 'IN028', '400 ml', 0),
('D03M', 'IN029', '10 gram', 1),
('D03R', 'IN028', '300 ml', 0),
('D03R', 'IN029', '10 gram', 1),
('D04E', 'IN032', '1 hộp', 0),
('D05E', 'IN033', '1 hộp', 0),
('D06E', 'IN034', '1 chai', 0),
('F01L', 'IN024', '150 gram', 0),
('F01L', 'IN025', '4 gram', 1),
('F01M', 'IN024', '95 gram', 0),
('F01M', 'IN025', '3 gram', 1),
('F01R', 'IN024', '75 gram', 0),
('F01R', 'IN025', '2 gram', 1),
('I01E', 'IN020', '2.5 vòng', 0),
('I01E', 'IN035', '1 cái', 0),
('I02E', 'IN020', '4.5 vòng', 0),
('I02E', 'IN021', '30 ml', 1),
('I03E', 'IN020', '4.5 vòng', 0),
('I03E', 'IN022', '30 ml', 1),
('I04E', 'IN020', '4.5 vòng', 0),
('I04E', 'IN023', '30 gram', 1),
('N06R', 'IN018', '6 viên', 0),
('N09E', 'IN018', '9 viên', 0),
('N20E', 'IN018', '20 viên', 0),
('R01E', 'IN004', '1 chén', 0),
('R01E', 'IN017', '1 miếng', 0),
('R02E', 'IN004', '1 chén', 0),
('R02E', 'IN017', '2 miếng', 0),
('R03E', 'IN004', '1 chén', 0),
('R03E', 'IN017', '1 miếng', 0),
('R03E', 'IN030', '10 gram', 1),
('S01E', 'IN008', '100 gram', 0),
('S01E', 'IN009', '4 lát', 0),
('S01E', 'IN016', '10 gram', 1),
('S01E', 'IN031', '50 gram', 0),
('S02E', 'IN031', '200 gram', 0),
('W03R', 'IN019', '3 miếng', 0),
('W06E', 'IN019', '6 miếng', 0),
('W10E', 'IN019', '10 miếng', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productCode` varchar(10) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `productPrice` int(11) NOT NULL,
  `productSize` char(1) DEFAULT NULL,
  `productImage` varchar(100) NOT NULL,
  `groupCode` varchar(10) DEFAULT NULL,
  `inMenu` tinyint(1) NOT NULL DEFAULT 0,
  `inSys` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productCode`, `productName`, `productPrice`, `productSize`, `productImage`, `groupCode`, `inMenu`, `inSys`) VALUES
('A72R', 'Burger Cá hồi/Fish Burger', 60000, 'R', './img-product/red-fish-burger.jpg', '112', 1, 0),
('B01R', 'Burger Big Mac (Bánh lẻ)/Bic Mac', 37000, 'R', './img-product/bigmac.png', '2111', 1, 1),
('B02R', 'Burger Bò phô mai đặc biệt (Bánh lẻ)/Cheeseburger Deluxe', 49000, 'R', './img-product/cheese-burger-deluxe.png', '2112', 1, 1),
('B03R', 'Burger Bò phô mai 2 lớp (Bánh lẻ)/Double Cheeseburger', 65000, 'R', './img-product/double-cheese-burger.png', '2113', 1, 1),
('B04R', 'Burger Bò hoàng gia đặc biệt (Bánh lẻ)/Royal Deluxe', 89000, 'R', './img-product/mcroyal-deluxe.png', '2114', 1, 1),
('B05R', 'Burger Gà phô mai đặc biệt (Bánh lẻ)/Chicken Deluxe', 69000, 'R', './img-product/mcchicken-deluxe.png', '2121', 1, 1),
('B06R', 'Burger Gà thượng hạng giòn cay (Bánh lẻ)/Spicy Deluxe', 89000, 'R', './img-product/mcspicy-deluxe.png', '2122', 1, 1),
('B07R', 'Burger Gà sốt Mayo đặc biệt (Bánh lẻ)/Chicken Mayo', 59000, 'R', './img-product/mcchicken-mayo.png', '2123', 1, 1),
('B08R', 'Burger Phile cá Tuyết (Bánh lẻ)/Filet O Fish', 56000, 'R', './img-product/filet-o-fish.png', '2124', 1, 1),
('C01E', '1 miếng gà rán/Fried Chicken', 17000, 'E', './img-product/1-chicken.png', '121', 1, 1),
('C02R', '2 miếng gà rán/2 Fried Chicken', 74000, 'E', './img-product/1-chicken.png', '121', 0, 1),
('C03E', '3 miếng gà rán/3 Fried Chicken', 101000, 'E', './img-product/3-chicken.png', '121', 1, 1),
('C04E', '4 miếng gà rán/4 Fried Chicken', 141000, 'E', './img-product/1-chicken.png', '121', 0, 1),
('C05E', '5 miếng gà rán/5 Fried Chicken', 176000, 'E', './img-product/5-chicken.png', '121', 1, 1),
('C09E', '9 miếng gà rán/9 Fried Chicken', 389000, 'E', './img-product/9-chicken.png', '121', 1, 1),
('D01L', 'Coca-cola cỡ lớn/Large Coca-cola', 29000, 'L', './img-product/coca-cola.png', '2411', 1, 1),
('D01M', 'Coca-cola cỡ vừa/Medium Coca-Cola', 22000, 'M', './img-product/coca-cola.png', '2411', 1, 1),
('D01R', 'Coca-cola cỡ nhỏ/Regular Coca-Cola', 17000, 'R', './img-product/coca-cola.png', '2411', 1, 1),
('D02L', 'Fanta cỡ lớn/Large Fanta', 29000, 'L', './img-product/fanta.png', '2412', 1, 1),
('D02M', 'Fanta cỡ vừa/Medium Fanta', 22000, 'M', './img-product/fanta.png', '2412', 1, 1),
('D02R', 'Fanta cỡ nhỏ/Regular Fanta', 17000, 'R', './img-product/fanta.png', '2412', 1, 1),
('D03L', 'Sprite cỡ lớn/Large Sprite', 29000, 'L', './img-product/sprite.png', '2413', 1, 1),
('D03M', 'Sprite cỡ vừa/Medium Sprite', 22000, 'M', './img-product/sprite.png', '2413', 1, 1),
('D03R', 'Sprite cỡ nhỏ/Regular Sprite', 17000, 'R', './img-product/sprite.png', '2413', 1, 1),
('D04E', 'Milo', 20000, 'E', './img-product/milo.png', '141', 1, 1),
('D05E', 'Sữa tươi', 20000, 'E', './img-product/milk.png', '141', 1, 1),
('D06E', 'Nước suối/Both Water', 22000, 'E', './img-product/both-water.png', '141', 1, 1),
('F01L', 'Khoai tây chiên cỡ lớn/Larger Fries', 39000, 'L', './img-product/large-fries.png', '131', 1, 1),
('F01M', 'Khoai tây chiên cỡ vừa/Medium Fries', 29000, 'M', './img-product/medium-fries.png', '131', 1, 1),
('F01R', 'Khoai tây chiên cỡ nhỏ/Regular Fries', 19000, 'R', './img-product/regular-fries.png', '131', 1, 1),
('I01E', 'Kem ốc quế/Cone', 10000, 'E', './img-product/cone.png', '142', 1, 1),
('I02E', 'Kem Chocolate Sundae/Chocolate Sundae', 29000, 'E', './img-product/choc-sun.png', '142', 1, 1),
('I03E', 'Kem Dâu Sundae/Strawberry Sundae', 29000, 'E', './img-product/straw-sun.png', '142', 1, 1),
('I04E', 'Kem Xay Oreo/Oreo Flurry', 39000, 'E', './img-product/oreo-mcflurry.png', '142', 1, 1),
('N06R', '6 gà Nuggets/6 Nuggets', 49000, 'R', './img-product/6-nuggets.png', '124', 1, 1),
('N09E', '9 gà Nuggets/ 9 Nuggets', 69000, 'E', './img-product/9-nuggets.png', '124', 1, 1),
('N20E', '20 gà Nuggets/ 20 Nuggets', 121000, 'E', './img-product/20-nuggets.png', '124', 1, 1),
('R01E', 'Cơm gà rán 1 miếng/BIC 1 Rice', 29000, 'E', './img-combo/1pc-rice.png', '122', 0, 1),
('R02E', 'Cơm gà rán 2 miếng/BIC 2 Rice', 69000, 'E', './img-product/2pc-rice.png', '122', 1, 1),
('R03E', 'Cơm gà rán mắm tỏi/BIC GFS Rice', 39000, 'E', './img-combo/1pc-gfs-rice.png', '122', 0, 1),
('S01E', 'Salad lắc/Shake Salad', 35000, 'E', './img-product/salad.png', '03', 1, 1),
('S02E', 'Bắp ngọt/Sweet Corn', 22000, 'E', './img-product/sweet-corn.png', '03', 1, 1),
('W03R', '3 miếng gà Wings/3 Wings', 69000, 'R', './img-product/3-wings.png', '123', 1, 1),
('W06E', '6 miếng gà Wings/6 Wings', 125000, 'E', './img-product/6-wings.png', '123', 1, 1),
('W10E', '10 miếng gà Wings/10 Wings', 176000, 'E', './img-product/10-wings.png', '123', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `promoCode` varchar(10) NOT NULL,
  `promoGenre` varchar(100) DEFAULT NULL,
  `productCode` varchar(10) DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `dueDate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`promoCode`, `promoGenre`, `productCode`, `discount`, `dueDate`) VALUES
('P667942', '1', 'F01M', 0, 1),
('P667943', '1', NULL, 0.2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `receiptdetail`
--

CREATE TABLE `receiptdetail` (
  `receiptCode` varchar(10) NOT NULL,
  `ingredientCode` varchar(10) NOT NULL,
  `amoutInReceipt` float NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receiptdetail`
--

INSERT INTO `receiptdetail` (`receiptCode`, `ingredientCode`, `amoutInReceipt`, `price`) VALUES
('2023052347', 'IN002', 1, 10000),
('2023052347', 'IN003', 4, 40000),
('2023052347', 'IN004', 3, 30000),
('2023052390', 'IN005', 2, 20000),
('2023052390', 'IN006', 6, 60000),
('2023052393', 'IN006', 4, 40000),
('2023052347', 'IN007', 3, 30000),
('2023052390', 'IN007', 1, 10000),
('2023052390', 'IN008', 5, 50000),
('2023052347', 'IN009', 4, 40000),
('2023052390', 'IN009', 5, 50000),
('2023052393', 'IN009', 2, 20000),
('2023052390', 'IN010', 1, 10000),
('2023052393', 'IN010', 2, 20000),
('2023052393', 'IN011', 3, 30000),
('2023052347', 'IN012', 5, 50000),
('2023052347', 'IN014', 2, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `receiptCode` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `totalPrice` float NOT NULL,
  `staffId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`receiptCode`, `date`, `totalPrice`, `staffId`) VALUES
('2023052347', '2023-05-23', 220000, '6942'),
('2023052390', '2023-05-23', 200000, '6942'),
('2023052393', '2023-05-23', 110000, '6942');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `numberPhone` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `birthday` date NOT NULL,
  `dutyCode` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `email`, `numberPhone`, `address`, `birthday`, `dutyCode`, `status`) VALUES
('1234', 'eeee', '123@gmail.com', '0944444444', '1243', '0001-01-01', 'DUTY04', 0),
('2345', 'sssssss', '123@gmail.com', '0916921132', 'abc', '0014-01-10', 'DUTY04', 1),
('5678', 'abc', 'abc@gmail.com', '0363855850', 'ggg', '2003-05-20', 'DUTY52', 0),
('6942', 'Nguyễn Ngọc Sang', 'nngocsang38@gmail.com', '0916921132', 'Quận 8', '2003-08-21', 'DUTY01', 0),
('6943', 'Nguyễn Ngọc Sang', 'nngocsan48@gmail.com', '0919999999', 'Quận 12', '2003-08-21', 'DUTY02', 0),
('6944', 'Nguyễn Ngọc Sang', 'nngoc8@gmail.com', '0916921132', 'Quận 8', '2003-08-21', 'DUTY03', 0),
('6945', 'Nguyễn Ngọc Sang', 'nsang38@gmail.com', '0916921132', 'Quận 8', '2003-08-21', 'DUTY04', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`staffCode`);

--
-- Indexes for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`productCode`,`billCode`),
  ADD KEY `billCode` (`billCode`);

--
-- Indexes for table `billdetail2`
--
ALTER TABLE `billdetail2`
  ADD PRIMARY KEY (`billCode`,`comboCode`),
  ADD KEY `comboCode` (`comboCode`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`billCode`),
  ADD KEY `promoCode` (`promoCode`),
  ADD KEY `staffCode` (`staffCode`);

--
-- Indexes for table `combo`
--
ALTER TABLE `combo`
  ADD PRIMARY KEY (`comboCode`),
  ADD KEY `groupCode` (`groupCode`);

--
-- Indexes for table `combodetail`
--
ALTER TABLE `combodetail`
  ADD PRIMARY KEY (`productCode`,`comboCode`),
  ADD KEY `comboCode` (`comboCode`);

--
-- Indexes for table `duty`
--
ALTER TABLE `duty`
  ADD PRIMARY KEY (`dutyCode`);

--
-- Indexes for table `dutyhasfunc`
--
ALTER TABLE `dutyhasfunc`
  ADD PRIMARY KEY (`dutyCode`,`functionCode`),
  ADD KEY `functionCode` (`functionCode`);

--
-- Indexes for table `functions`
--
ALTER TABLE `functions`
  ADD PRIMARY KEY (`functionCode`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`groupCode`),
  ADD KEY `IN_groupCode` (`IN_groupCode`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`ingredientCode`);

--
-- Indexes for table `productdetail`
--
ALTER TABLE `productdetail`
  ADD PRIMARY KEY (`productCode`,`ingredientCode`),
  ADD KEY `ingredientCode` (`ingredientCode`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productCode`),
  ADD KEY `groupCode` (`groupCode`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`promoCode`),
  ADD KEY `productCode` (`productCode`);

--
-- Indexes for table `receiptdetail`
--
ALTER TABLE `receiptdetail`
  ADD PRIMARY KEY (`ingredientCode`,`receiptCode`),
  ADD KEY `receiptCode` (`receiptCode`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`receiptCode`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dutyCode` (`dutyCode`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`staffCode`) REFERENCES `staff` (`id`);

--
-- Constraints for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD CONSTRAINT `billdetail_ibfk_1` FOREIGN KEY (`productCode`) REFERENCES `products` (`productCode`),
  ADD CONSTRAINT `billdetail_ibfk_2` FOREIGN KEY (`billCode`) REFERENCES `bills` (`billCode`);

--
-- Constraints for table `billdetail2`
--
ALTER TABLE `billdetail2`
  ADD CONSTRAINT `billdetail2_ibfk_1` FOREIGN KEY (`billCode`) REFERENCES `bills` (`billCode`),
  ADD CONSTRAINT `billdetail2_ibfk_2` FOREIGN KEY (`comboCode`) REFERENCES `combo` (`comboCode`);

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`promoCode`) REFERENCES `promotions` (`promoCode`),
  ADD CONSTRAINT `bills_ibfk_2` FOREIGN KEY (`staffCode`) REFERENCES `staff` (`id`);

--
-- Constraints for table `combo`
--
ALTER TABLE `combo`
  ADD CONSTRAINT `combo_ibfk_1` FOREIGN KEY (`groupCode`) REFERENCES `groups` (`groupCode`);

--
-- Constraints for table `combodetail`
--
ALTER TABLE `combodetail`
  ADD CONSTRAINT `combodetail_ibfk_1` FOREIGN KEY (`productCode`) REFERENCES `products` (`productCode`),
  ADD CONSTRAINT `combodetail_ibfk_2` FOREIGN KEY (`comboCode`) REFERENCES `combo` (`comboCode`);

--
-- Constraints for table `dutyhasfunc`
--
ALTER TABLE `dutyhasfunc`
  ADD CONSTRAINT `dutyHasFunc_ibfk_1` FOREIGN KEY (`dutyCode`) REFERENCES `duty` (`dutyCode`),
  ADD CONSTRAINT `dutyHasFunc_ibfk_2` FOREIGN KEY (`functionCode`) REFERENCES `functions` (`functionCode`);

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`IN_groupCode`) REFERENCES `groups` (`groupCode`);

--
-- Constraints for table `productdetail`
--
ALTER TABLE `productdetail`
  ADD CONSTRAINT `productdetail_ibfk_1` FOREIGN KEY (`productCode`) REFERENCES `products` (`productCode`),
  ADD CONSTRAINT `productdetail_ibfk_2` FOREIGN KEY (`ingredientCode`) REFERENCES `ingredient` (`ingredientCode`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`groupCode`) REFERENCES `groups` (`groupCode`);

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_ibfk_1` FOREIGN KEY (`productCode`) REFERENCES `products` (`productCode`);

--
-- Constraints for table `receiptdetail`
--
ALTER TABLE `receiptdetail`
  ADD CONSTRAINT `receiptdetail_ibfk_1` FOREIGN KEY (`ingredientCode`) REFERENCES `ingredient` (`ingredientCode`),
  ADD CONSTRAINT `receiptdetail_ibfk_2` FOREIGN KEY (`receiptCode`) REFERENCES `receipts` (`receiptCode`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`dutyCode`) REFERENCES `duty` (`dutyCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
