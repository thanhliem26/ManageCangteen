-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 07, 2021 lúc 06:12 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cangtinms`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account_admin`
--

CREATE TABLE `account_admin` (
  `id` int(11) NOT NULL,
  `accountadmin` varchar(40) DEFAULT NULL,
  `passwordadmin` varchar(32) NOT NULL,
  `nameadmin` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `account_admin`
--

INSERT INTO `account_admin` (`id`, `accountadmin`, `passwordadmin`, `nameadmin`) VALUES
(1, 'liem@gmail.com', 'Thanhliem26', 'ThanhLiem'),
(2, 'Conzin@gmail.com', 'cb44f839a193bc118e6314e6dacb0da8', 'Nguyen Van B'),
(3, 'kien@gmail.com', 'Trungkien12', 'TrungKien');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account_client`
--

CREATE TABLE `account_client` (
  `id` int(11) NOT NULL,
  `accounts` varchar(40) DEFAULT NULL,
  `passwords` varchar(33) NOT NULL,
  `nick_name` varchar(55) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(55) NOT NULL,
  `age` varchar(20) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` varchar(25) NOT NULL,
  `codes` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `account_client`
--

INSERT INTO `account_client` (`id`, `accounts`, `passwords`, `nick_name`, `phone`, `address`, `age`, `gender`, `created_at`, `updated_at`, `status`, `codes`) VALUES
(1, 'liem@gmail.com', 'IEPP+bpnLvVxZf1W1gq0bw==', 'ThanhLiem', '0866759002', 'hai minh', '26-12-2002', 'Male', '2021-11-05 10:09:30', '2021-12-01 10:19:48', 'Offline', ''),
(8, 'kien@gmail.com', '0SKX3KljZpELBECiaqqzAw==', 'TrungKien', '0866759002', 'Vĩnh Phúc', '19', 'Male', '2021-11-15 08:38:39', '2021-11-15 08:38:39', 'Offline', '791906'),
(9, 'liem26@gmail.com', '41GnEwjyFAcZ3kFJzxNkAg==', 'ThanhLiem', '0866759002', 'hai minh', '26', 'Female', '2021-11-15 08:46:23', '2021-11-18 08:55:57', 'Offline', ''),
(11, 'tung12@gmail.com', 'QUgZ2X3Wi/xX+RDRqCtPNA==', 'ThanhTung', '0828345234', 'hà nội', '26-11-2002', 'Other', '2021-11-20 09:57:10', '2021-11-27 11:46:26', 'Offline', ''),
(12, 'xuyen@gmail.com', 'hCfM15ehUH5NdBQweWWbsw==', 'nguyenxuyen', '045756875685', 'hải minh', '11-11-2021', 'Male', '2021-11-27 11:40:22', '2021-12-01 10:34:26', 'Offline', ''),
(13, 'phamvanliem26122002@gmail.com', 'IEPP+bpnLvVxZf1W1gq0bw==', 'ThanhLiem', '0866759002', 'Hải Minh - Hải Hậu - Nam Định', '16-12-2021', 'Nam', '2021-12-05 09:07:34', '2021-12-05 09:07:34', 'Offline', '52630'),
(14, 'dominhtam0711@gmail.com', 'Qd0A184P8855eRMVJ469PQ==', 'MinhTam', '02384957234', 'Thái BÌnh', '23-12-2021', 'Nam', '2021-12-05 09:46:34', '2021-12-05 09:46:34', 'Offline', '562507');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `tab` int(11) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `times` time DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `book`
--

INSERT INTO `book` (`id`, `tab`, `note`, `created_at`, `times`, `name`, `phone`) VALUES
(52, 1, 'đi một mình', '2021-12-09', '10:30:00', 'liem', '0454568345346345'),
(54, 1, 'đi một mình', '2021-12-02', '10:30:00', 'liem', '0454568345346345'),
(55, 1, 'ádf', '2021-12-09', '14:45:00', 'liem', '23452345'),
(56, 2, 'ádf', '2021-12-18', '06:45:00', 'liem', '0855759002');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `CategoryID` int(11) NOT NULL,
  `NameC` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`CategoryID`, `NameC`) VALUES
(1, 'Drink'),
(2, 'Food'),
(3, 'KFC'),
(4, 'Noodle');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaddata`
--

CREATE TABLE `loaddata` (
  `ban` int(11) DEFAULT NULL,
  `food` varchar(50) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `Client_ID` int(11) DEFAULT NULL,
  `tab` int(11) NOT NULL,
  `total_price` varchar(50) DEFAULT NULL,
  `dates` datetime DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`OrderID`, `Client_ID`, `tab`, `total_price`, `dates`, `name`, `phone`, `address`) VALUES
(27, 1, 10, '55000.0', '2021-11-26 07:34:32', 'liem', '0866759002', 'hải minh - hải hậu'),
(28, 1, 9, '25000.0', '2021-11-26 07:38:00', 'kien', '0324346', 'vĩnh phúc'),
(29, 1, 14, '50000.0', '2021-11-26 07:43:01', 'tung', '0243635756', 'hà nội'),
(30, 1, 14, '70000.0', '2021-11-26 07:45:03', 'tam', '0456457456845', 'thái bình'),
(31, 1, 15, '60000.0', '2021-11-26 07:56:58', 'diep', '02346345746', 'hà nội'),
(32, 1, 10, '65000.0', '2021-11-26 08:31:16', 'hoang', '023424363456', 'hải đường'),
(33, 1, 10, '75000.0', '2021-11-27 10:21:24', 'xuyen', '02345346', 'hải minh'),
(34, 1, 15, '50000.0', '2021-11-27 10:24:11', 'liem', '03463457456', 'hải minh'),
(35, 1, 15, '90000.0', '2021-11-29 10:59:23', 'hoang', '02346284', 'hải đường'),
(36, 1, 13, '130000.0', '2021-11-29 10:59:54', 'dien', '02547564567', 'huế'),
(37, 1, 8, '75000.0', '2021-11-29 11:00:31', 'nguyet', '032347294', 'hà nội'),
(38, 1, 11, '100000.0', '2021-11-29 11:01:12', 'thuan', '023463456', 'hải minh'),
(39, 1, 10, '180000.0', '2021-11-29 05:49:23', 'Thành Liêm', '023451743', 'hải minh - hải hậu'),
(40, 1, 14, '90000.0', '2021-11-29 05:54:18', 'Nguyen Xuyen', '02843527304', 'hải minh - hải hậu'),
(41, 1, 15, '55000.0', '2021-11-30 05:25:06', 'Phạm Tuấn', '0234572034', 'Nam định'),
(42, 1, 13, '55000.0', '2021-11-30 05:28:09', 'thanh huyen', '02348572304', 'hà nội'),
(43, 1, 15, '35000.0', '2021-11-30 05:29:10', 'Hồng Hà', '023745234', 'hà nội'),
(44, 1, 10, '55000.0', '2021-12-01 12:18:19', 'ĐInh Hòa', '03272345283', 'Xuân Trường - Nam ĐỊnh'),
(45, 1, 13, '105000.0', '2021-12-01 12:19:28', 'Trung Hiếu', '912382734', 'Hải Minh - Hải Hậu'),
(46, 1, 10, '50000.0', '2021-12-02 05:03:32', 'liem', '12387535234', 'hải iminnh'),
(47, 1, 10, '110000.0', '2021-12-05 09:35:40', 'Đinh Hòa', '032753343435', 'Xuân Trường - Xuân Dục'),
(48, 1, 15, '65000.0', '2021-12-05 09:37:58', 'Thành Long', '023463456', 'xuân dục - xuân trường'),
(49, 1, 9, '55000.0', '2021-12-06 03:48:05', 'Thu Thúy', '234752435', 'Hải Hậu - Nam ĐỊnh'),
(50, 1, 13, '60000.0', '2021-12-06 03:49:33', 'Phạm Khánh', '024785345234', 'Xuân Trường - Nam Định'),
(51, 1, 20, '60000.0', '2021-12-06 03:50:42', 'Kim  Anh', '072983465', 'Hải Hậu - Nam Định'),
(52, 1, 12, '35000.0', '2021-12-06 03:51:38', 'Trần Hoàng', '0237498523', 'Hải Đường - Hải Hậu'),
(53, 1, 6, '40000.0', '2021-12-06 03:52:27', 'Phạm Tuấn', '032452345', 'Hải Hậu - Nam Định'),
(54, 1, 12, '60000.0', '2021-12-06 03:54:26', 'Nguyen Xuyen', '0132652345', 'Hải Minh - Hải Hậu'),
(55, 1, 25, '40000.0', '2021-12-06 03:55:27', 'Thành Liêm', '0803452345', 'Hải Hậu - Nam ĐInh'),
(56, 1, 21, '55000.0', '2021-12-06 03:56:14', 'ĐInh Hòa', '023452345', 'Xuân Dục - Xuân Trường'),
(57, 1, 14, '60000.0', '2021-12-07 12:10:25', 'Nguyen Vân', '0234634645', 'Hải Long - Hải Hậu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Price` float DEFAULT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `OrderID`, `ProductID`, `Price`, `Total`) VALUES
(56, 27, 1, 40000, 2),
(57, 27, 3, 15000, 1),
(58, 28, 3, 0, 1),
(59, 28, 7, 25000, 1),
(60, 29, 1, 0, 1),
(61, 29, 5, 20000, 1),
(62, 29, 3, 30000, 2),
(63, 30, 8, 30000, 1),
(64, 30, 4, 15000, 1),
(65, 30, 7, 25000, 1),
(66, 31, 4, 15000, 1),
(67, 31, 1, 20000, 1),
(68, 31, 7, 25000, 1),
(69, 32, 3, 15000, 1),
(70, 32, 7, 50000, 2),
(71, 33, 1, 20000, 1),
(72, 33, 3, 30000, 2),
(73, 33, 7, 25000, 1),
(74, 34, 6, 20000, 1),
(75, 34, 3, 30000, 2),
(76, 35, 1, 0, 2),
(77, 35, 4, 15000, 1),
(78, 35, 7, 75000, 3),
(79, 36, 5, 20000, 1),
(80, 36, 7, 50000, 2),
(81, 36, 8, 60000, 2),
(82, 37, 5, 20000, 1),
(83, 37, 6, 40000, 2),
(84, 37, 3, 15000, 1),
(85, 38, 5, 40000, 2),
(86, 38, 17, 30000, 1),
(87, 38, 8, 30000, 1),
(88, 39, 6, 20000, 1),
(89, 39, 1, 40000, 2),
(90, 39, 8, 60000, 2),
(91, 39, 2, 60000, 3),
(92, 40, 17, 60000, 2),
(93, 40, 4, 30000, 2),
(94, 41, 5, 0, 1),
(95, 41, 4, 15000, 1),
(96, 41, 5, 40000, 2),
(97, 42, 1, 0, 2),
(98, 42, 2, 40000, 2),
(99, 42, 3, 15000, 1),
(100, 43, 1, 0, 1),
(101, 43, 2, 20000, 1),
(102, 43, 3, 15000, 1),
(103, 44, 7, 0, 1),
(104, 44, 5, 40000, 2),
(105, 44, 3, 15000, 1),
(106, 45, 2, 40000, 2),
(107, 45, 3, 15000, 1),
(108, 45, 7, 50000, 2),
(109, 46, 5, 0, 1),
(110, 46, 7, 50000, 2),
(111, 47, 2, 20000, 1),
(112, 47, 1, 40000, 2),
(113, 47, 3, 30000, 2),
(114, 47, 2, 20000, 1),
(115, 48, 17, 30000, 1),
(116, 48, 2, 20000, 1),
(117, 48, 3, 15000, 1),
(118, 49, 6, 20000, 1),
(119, 49, 3, 15000, 1),
(120, 49, 1, 20000, 1),
(121, 50, 5, 20000, 1),
(122, 50, 7, 25000, 1),
(123, 50, 4, 15000, 1),
(124, 51, 1, 20000, 1),
(125, 51, 3, 15000, 1),
(126, 51, 7, 25000, 1),
(127, 52, 3, 15000, 1),
(128, 52, 1, 20000, 1),
(129, 53, 3, 15000, 1),
(130, 53, 7, 25000, 1),
(131, 54, 3, 15000, 1),
(132, 54, 7, 25000, 1),
(133, 54, 6, 20000, 1),
(134, 55, 3, 15000, 1),
(135, 55, 7, 25000, 1),
(136, 56, 4, 15000, 1),
(137, 56, 6, 20000, 1),
(138, 56, 1, 20000, 1),
(139, 57, 2, 20000, 1),
(140, 57, 3, 15000, 1),
(141, 57, 7, 25000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Price` int(11) NOT NULL,
  `Properties` longtext DEFAULT NULL,
  `ImgLink` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`ProductID`, `Name`, `Price`, `Properties`, `ImgLink`, `quantity`, `CategoryID`, `created_at`, `update_at`) VALUES
(1, 'Cơm sườn', 20000, 'ngon', 'C:\\Users\\ASUS\\Pictures\\iconset\\comsuon.png', 1, 2, '2021-11-05 08:16:22', '2021-11-05 08:16:22'),
(2, 'Cơm tấm', 20000, 'ngon', 'C:\\Users\\ASUS\\Pictures\\iconset\\comtam.png', 28, 2, '2021-11-05 08:16:22', '2021-11-29 05:48:31'),
(3, 'Cocacola', 15000, 'mát', 'C:\\Users\\ASUS\\Pictures\\iconset\\cocacola.png', 26, 1, '2021-11-05 08:16:22', '2021-11-30 05:25:22'),
(4, 'Pepsi', 15000, 'mát', 'C:\\Users\\ASUS\\Pictures\\iconset\\pepsi.png', 18, 1, '2021-11-05 08:16:22', '2021-12-01 10:24:47'),
(5, 'Gà rán', 20000, 'ngon', 'C:\\Users\\ASUS\\Pictures\\iconset\\garan.png', 0, 3, '2021-11-05 08:19:33', '2021-11-05 08:19:33'),
(6, 'Gà miếng', 20000, 'ngon', 'C:\\Users\\ASUS\\Pictures\\iconset\\gamieng.png', 5, 3, '2021-11-05 08:19:34', '2021-11-05 08:19:34'),
(7, 'Phở bò', 25000, 'ngon', 'C:\\Users\\ASUS\\Pictures\\iconset\\phobo.jpg', 34, 4, '2021-11-05 08:19:34', '2021-12-04 09:42:50'),
(8, 'Phở gà', 30000, 'ngon', 'C:\\Users\\ASUS\\Pictures\\iconset\\phoga.jpg', 40, 4, '2021-11-05 08:19:34', '2021-11-30 05:25:39'),
(17, 'Phở lợn', 30000, 'ngon', 'C:\\Users\\ASUS\\Pictures\\pholon.jpg', 39, 4, '2021-11-23 04:08:09', '2021-12-01 10:14:39');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account_admin`
--
ALTER TABLE `account_admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `account_client`
--
ALTER TABLE `account_client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Chỉ mục cho bảng `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `Client_ID` (`Client_ID`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductID` (`ProductID`),
  ADD KEY `order_detail_ibfk_2` (`OrderID`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account_admin`
--
ALTER TABLE `account_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `account_client`
--
ALTER TABLE `account_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Client_ID`) REFERENCES `account_client` (`id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
