-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2016 at 07:19 AM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cosmetic`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`, `parent`) VALUES
(1, 'Nước hoa cao cấp', 0),
(2, 'Nước hoa pháp', 1),
(3, 'Nước hoa thái lan', 1),
(4, 'Sửa rửa mặt', 0),
(9, 'Nước hoa USA', 1),
(10, 'Sửa rửa mặt thái', 4),
(12, 'Sửa rửa mặt nam', 4),
(13, 'Chăm sóc da', 0),
(14, 'Sửa rửa mặt dành cho nữ', 4),
(19, 'Sửa rửa mặt cho nam', 1),
(15, 'Kem trắng da ban đêm', 13),
(17, 'Kem đa chức năng', 13),
(18, 'Kem dưỡng', 13);

-- --------------------------------------------------------

--
-- Table structure for table `contactinfor`
--

CREATE TABLE IF NOT EXISTS `contactinfor` (
  `contactId` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contactinfor`
--

INSERT INTO `contactinfor` (`contactId`, `email`, `message`, `name`, `phone`) VALUES
(1, 'vn262.kt@gmail.com', 'dsdsd', 'dsdsd', 21212);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `orderid` int(11) NOT NULL,
  `address` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `total` varchar(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `Productname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `totalMoney` double NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orderid`, `address`, `phone`, `total`, `date`, `email`, `Productname`, `totalMoney`, `price`) VALUES
(1, 'sâsas', '212121', '2', '2016-03-16 12:02:25', 'vn262.kt@gmail.com', '', 0, 0),
(3, 'dsds', '212121', '1', '2016-03-17 08:34:32', 'dsd@gmail.com', '', 0, 0),
(4, '', '', '1', '2016-03-17 11:14:25', '', 'nuoc', 3400, 2000),
(5, 'dsdsds', '32323', '1', '2016-03-17 11:23:34', 'dsd@gmail.com', 'Nước hoa Thái Lan Esxense', 3400, 2000),
(6, 'assbbbb', '32323', '3', '2016-03-17 12:22:59', 'dsd@gmail.com', 'Kem trị nám 30g trắng da', 503900, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE IF NOT EXISTS `orderdetail` (
  `orderDetail_id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`orderDetail_id`, `orderid`, `product_id`, `price`, `name`, `quantity`) VALUES
(18, 1, 43, 32323, 'dsdsd', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `ProductDetail` mediumtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `description`, `image`, `name`, `price`, `ProductDetail`) VALUES
(17, 2, 'Chanel đã cho ra đời 1 loại sản phẩm mới vào mùa xuân 2010 . Sản phẩm được mang tên là " Chance eau tendre " ', 'image/nuochoaphap/nuochoaChanel.jpg', 'Nước hoa Chanel Chance', 3000, 'Mùi hương đặc trưng\r\nBưởi, hương hoa lài, hổ phách, iris, gỗ tuyết tùng và xạ hương trắng.\r\nPhong cách\r\nNgọt ngào , tươi trẻ\r\nNhóm hương\r\nfruity – Floral\r\nCách sử dụng\r\n- Xịt vào cổ tay, cổ hay những vùng cơ thể cử động nhiều.\r\n- Không nên xịt vào áo quần sáng màu vì có thể tạo vết ố.'),
(16, 9, 'Nước Hoa Hồng Tomato Whitening Toner Skinfood được chiết xuất từ tinh chất cà chua', 'image/nuochoaUS/hoahongCachua.jpg', 'Nước Hoa Hồng Cà Chua Tomato', 3000, 'Nước Hoa Hồng Tomato Whitening Toner Skinfood được chiết xuất từ tinh chất cà chua Lycopene, vitamin, khoáng chất và đặc biệt là arbutin - một trong những tác nhân có tác dụng nhất để điều trị chứng tăng sắc tố da và hiện tượng da tiết ra chất nhờn.\r\n\r\ngiúp se khít lỗ chân lông, cân bằng lại độ ẩm và độ pH cần thiết, đồng thời còn giúp tạo bước đệm giúp các sản phẩm dưỡng tiếp theo thẩm thấu vào da một cách hiệu quả nhất.\r\n\r\nHướng Dẫn Sử Dụng:\r\nBước 1: Làm ướt mặt và thoa lên mặt một lượng kem vừa đủ.\r\n \r\nBước 2: Massage đều da mặt và vỗ nhẹ để làn da hấp thụ dưỡng chất.\r\n(Dùng bông tẩy trang nếu vùng đó bài tiết quá nhiều, sau đó mới massage da mặt)\r\nSử dụng hàng ngày, 2 lần/ngày và sử dụng các sản phẩm kết hợp khác như serum/essence - emulsion - cream ( nếu có ) để đạt được hiệu quả dưỡng và đặc trị tối ưu nhất!'),
(19, 17, 'Sở hữu một làn da khỏe mạnh, tươi trẻ và rạng rỡ cùng bộ sản phẩm chăm sóc đặc biệt giúp làm sáng da', 'image/duong/chamsoc.png', 'Bộ Optimals dành cho da \r\n', 10000, 'MÔ TẢ\r\nSở hữu một làn da khỏe mạnh, tươi trẻ và rạng rỡ cùng bộ sản phẩm chăm sóc đặc biệt giúp làm sáng da, cung cấp độ ẩm cho những vùng da khô và cân bằng vùng chữ T (trán, cằm, mũi). Chứa các hợp chất làm sáng da có nguồn gốc thực vật được kiểm nghiệm da liễu cho độ an toàn tối đa. Bộ sản phẩm bao gồm: sửa rữa mặt, tinh chất dưỡng da, kem dưỡng da vùng mắt và kem dưỡng da ngày/đêm.'),
(33, 1, 'Nước hoa cao cấp với hương thơm sang trọng cùng chiết xuất hoa cam Ý & hương gỗ tượng trưng cho niềm đam mê bất tận vào nghệ thuật sống đẹp. 50ml', 'image/product/10583145_636036793178025_79888392_n.jpg', 'Giordani Gold Essenza', 130000, 'CÁCH SỬ DỤNG\r\n"HDSD: Xịt trực tiếp lên da. Tránh xịt lên vải và trang sức. Khuyến cáo: Tránh xa tầm tay trẻ em. Bảo quản: Nơi khô ráo, thoáng mát. Tránh ánh nắng trực tiếp. Để xa nguồn lửa hoặc nhiệt độ cao, không xịt gần mắt."|\r\n"HDSD: Xịt trực tiếp lên da. Tránh xịt lên vải và trang sức. Khuyến cáo: Tránh xa tầm tay trẻ em. Bảo quản: Nơi khô ráo, thoáng mát. Tránh ánh nắng trực tiếp. Để xa nguồn lửa hoặc nhiệt độ cao, không xịt gần mắt."\r\n'),
(32, 14, 'Sữa rửa mặt giúp loại bỏ tế bào chết và các tác nhân gây ra mụn đầu đen. 150ml', 'image/product/1341811051-giai-phap-giup-giau-lo-chan-long-to--2-.jpg', 'SẢN PHẨM GRINIF QUEEN ', 120000, 'Bộ sản phẩm dưỡng ẩm mới đặc biệt áp dụng sự cải tiến vượt trội của công nghệ Hydro Ion Mineral Water chứa 6 loại khoáng chất thiết yếu cho da Kẽm, Magie, Magan, Natri, Canxi, Kali và công nghệ độc quyền Biogene dưỡng ẩm tối ưu, tạo hàng rào bảo vệ duy trì độ ẩm thiết yếu cho làn da. '),
(34, 14, 'Sữa rửa mặt Multi Cleanser 4 trong 1 gồm: tẩy trang, làm sạch lớp kem chống nắng, tẩy tế bào chết, làm sạch da với chiết xuất từ Enzymes đu đủ và hệ thống hạt microcellulose nhẹ nhàng làm sạch da bằng cách lấy đi các tế bào chết và bụi bẩn sâu trong da', 'image/product/chatluongtot.jpg', 'Sản phẩm dưỡng ẩm du lịch ', 150000, 'Bộ sản phẩm dưỡng ẩm mới đặc biệt áp dụng sự cải tiến vượt trội của công nghệ Hydro Ion Mineral Water chứa 6 loại khoáng chất thiết yếu cho da Kẽm, Magie, Magan, Natri, Canxi, Kali và công nghệ độc quyền Biogene dưỡng ẩm tối ưu, tạo hàng rào bảo vệ duy trì độ ẩm thiết yếu cho làn da. \r\nBộ dưỡng trắng du lịch với kích thước vừa đủ, nhỏ gọn, xinh xắn tiện dụng gồm 6 sản phẩm:\r\n1. Multi Cleanser – Sữa rửa mặt đa năng (30ml)\r\nSữa rửa mặt Multi Cleanser 4 trong 1 gồm: tẩy trang, làm sạch lớp kem chống nắng, tẩy tế bào chết, làm sạch da với chiết xuất từ Enzymes đu đủ và hệ thống hạt microcellulose nhẹ nhàng làm sạch da bằng cách lấy đi các tế bào chết và bụi bẩn sâu trong da.\r\n2. Power essential skin refiner light – Nước cân bằng da ( 50ml)\r\nVới chiết xuất từ tảo biển Bio Dusali, bông hoa cotton và gừng tươi Power Essential Skin Refiner Light giúp loại bỏ các tạp chất trong các lỗ chân lông, loại bỏ chất sừng và cung cấp năng lượng cho một làn da tươi sáng trông thấy.\r\n3. Balancing emulsion light – Nhũ tương dưỡng ẩm (50ml)\r\nNhũ tương cực kỳ mềm mại và thân thiện với da giúp cho da thư giãn, làm sáng và thoáng sạch da với chiết xuất từ tảo biển Bio Dusali, Niacinamide và rễ củ gừng giúp cân bằng và hiệu chỉnh sắc da, kiểm soát hoạt động của tuyến bã nhờn. Mang lại một làn da sáng, sạch và sẵn sàng hấp thu dưỡng chất ở bước kế tiếp.'),
(35, 15, 'Mặt nạ trắng da tinh khiết “Avif Pure whitening Mask”  với thành phần chính Niacinamide, là một trong những thành phần trắng da an toàn và hiệu quả', 'image/product/201210100033_6_forever.jpg', 'Mặt nạ AVIF PURE', 800000, 'Mặt nạ trắng da tinh khiết “Avif Pure whitening Mask”  với thành phần chính Niacinamide, là một trong những thành phần trắng da an toàn và hiệu quả được  chấp nhận bởi Cục quản lý thực phẩm và dược phẩm Hàn Quốc (KFDA). Bên cạnh đó, sản phẩm còn chứa rất nhiều thành phần tự nhiên với chiết xuất thảo mộc Hàn Quốc nuôi dưỡng làn da khỏe đẹp mịn màng\r\n- Chất liệu làm từ chất liệu tensile, được biết như  loại chất liệu tốt nhất sử dụng cho sản phẩm mặt nạ \r\n- Mùi hương: dịu nhẹ, tạo cảm giác thư giãn, dễ chịu trong suốt thời gian sử dụng mặt nạ\r\n- Essence: tất cả thành phần trong công thức essence có nguồn gốc và được phát triển tại Hàn Quốc.\r\nĐây là công thức của sản phẩm được người tiêu dùng ưa chuộng và rất thành công tại thị trường Hàn Quốc\r\n- Niacinamide là một dẫn xuất của Vitamin B3, có khả năng cải thiện sắc tố da, giúp da trắng sáng hiệu quả, phù hợp sử dụng cho tất cả các loại da. Khác với cơ chế hoạt động của các chất làm trắng da khác, Niacinamide không ức chế hoạt động hay giết chết các tế bào sản sinh ra sắc tố melanin. Niaciamide chỉ giúp ức chế không cho melanin di chuyển và hiện diện lên trên bề mặt da. Do đó, Niacinamide hiện được coi là một trong những thành phần làm trắng da an toàn nhất trên thị trường.\r\n- Bên cạnh tác dụng trắng da, công thức essence còn giàu các dưỡng chất từ chiết xuất thảo mộc thiên nhiên Hàn\r\nQuốc, có tác dụng dưỡng ẩm nuôi dưỡng làn da,  giúp làn da khỏe đẹp mịn màng.'),
(36, 12, 'Sữa rửa mặt Lucid Cooling All In Cleansing Foam 60ml', 'image/product/My-pham-Colway-Natural-Collagen-Tonic-Face-Toner-125ml-nuoc-hoa-hong-nuoc-can-bang-da (1).jpg', 'Bộ Kit du lịch ', 3232, 'Sữa rửa mặt Lucid Cooling All In Cleansing Foam 60ml\r\n- Gel tấy tế bào chết Elaine 50ml\r\n- Gel nha đam Joelle 50ml\r\n- Kem chống nắng Devona 50ml\r\n- Quà tặng : túi nhựa thời trang có thể đổi màu\r\n '),
(37, 17, '\r\nColor :  Free\r\nSize:  30+100ml\r\n \r\nKem CC đa chức năng Sophia - Platinum Sophia Snail and Stem Whitening plus Wrinkle Capsule CC Cream SPF35/PA+++', 'image/product/Kem-Sap-Chong-Nang-Light-Veil-Sun-Balm-2-1.jpg', 'Kem CC đa chức năng', 12112, 'Sản phẩm rất hiệu quả cho việc chăm sóc nuôi dưỡng da mỗi ngày.\r\n-  Giá cả phù hợp với nhiều khách hàng tiêu dùng cũng như chủ thẩm mỹ viện.\r\n-          Đặc biệt từ khi có bộ sản phẩm chuyên nghiệp, thật tiện lợi cho việc chăm sóc khách hàng hàng tuần.\r\nđây cũng là một cách giúp cho TMV Kiều Phương luôn dữ cho mình lượng khách hàng ổn định.\r\nCòn trên góc độ chuyên môn, khi mà việc chăm sóc nuôi dưỡng da được coi trọng ngay từ đầu thì mỗi chị em phụ nữ chúng ta không phải lo âu cho làn da của mình bị xấu đi vì những lý do mà chính ta có thế kiểm soát được.'),
(38, 18, '\r\nColor :  như hình\r\nSize:  set 2\r\n\r\n[Hiệu quả tuyệt vời] Tinh chất dưỡng da Manyo Factory Galactomyces niacin Rich Essence 50ml', 'image/product/images.jpg', 'Tinh chất dưỡng da', 200000, 'Một sản phẩm kết hợp giữa toner và essence”\r\n(1)   Vào những ngày nắng nóng như thế này, việc chăm sóc làn da nhiều dầu và mồ hôi càng đơn giản thì càng tốt. (2) Galactomyces, kết hợp cả toner và essence, chính là sản phẩm dưỡng da thông minh mà bạn cần. (3) Chỉ cần đôt một chút sản phẩm lên mu bàn tay rồi nhẹ nhàng thoa lên mặt. Lớp chất lỏng mềm dịu như nước không hề tạo cảm giác dính nhờn khó chịu mà trái lại, giúp cho làn da trở nên mềm mại chỉ trong giây lát. Vốn được làm từ các loại men tự nhiên nên sản phẩm này sẽ bám lâu trên da nhưng không hề gây cảm giác khó chịu.\r\n(1)   Có thể bôi trực tiếp Galactomyces lên da mặt hoặc sử dụng bông tẩy trang để thấm đều sản phẩm lên bề mặt da. (2) Đầu hút thông minh không chỉ giúp lấy một lượng sử dụng vừa phải mà còn được thiết kế để giữ cho chất lỏng không bị chảy ra ngoài. Bao bì sản phẩm được thiết kê đẹp, bên ngoài vỏ hộp, các thành phần nguyên liệu và cách sử dụng được giải thích cụ thể. Hiện tại đang là giai đoạn “hot” của sản phẩm này nên số lượng yêu cầu đặt hàng rất nhiều.'),
(39, 14, 'Nguyên liệu: Korea, Đóng gói& PP tại Việt Nam\r\nSữa Rửa Mặt Hạt Mơ_120g', 'image/product/my-pham-ohui-nuoc-lam-mem-da-co-the.jpg', 'Sữa rửa mặt hạt mơ', 30000, 'Công dụng:\r\nĐược chiết xuất từ hạt quả mơ và thành phần tạo trắng, có tác dụng làm cho da không bị khô, loại bỏ tế bào chết, các chất bẩn, mụn cám, mụn đầu đen trên da, đồng thời có tác dụng tái sinh và làm cho da mịn màng, mềm mại.\r\nCách dùng:\r\nLàm ướt da, cho một lượng vừa đủ vào lòng bàn tay, thoa và massage nhẹ lên mặt khoảng 2 phút. Sau đó rửa lại với nước sạch.'),
(40, 17, 'Gel trị mụn Vedette cho bạn một liệu pháp trị mụn toàn diện và hiệu quả bằng cách kết hợp nhiều tác nhân kháng mụn như acid salicylic,  resorcinol, sulfur, tinh dầu hoa cúc', 'image/product/phuc-hoi-da-yeu-J19-64.jpg', 'Gel trị mụn tận gốc', 21212, '\r\nColor :  Free\r\nSize:  18g\r\nGel trị mụn Vedette cho bạn một liệu pháp trị mụn toàn diện và hiệu quả bằng cách kết hợp nhiều tác nhân kháng mụn như acid salicylic,  resorcinol, sulfur, tinh dầu hoa cúc (bisabolol)  có tác dụng diệt khuẩn gây mụn, xoa dịu vùng da sưng viêm, loại bỏ tế bào chết, giúp nhân mụn và bã nhờn thoát ra dễ dàng. Vitamin E ngăn ngừa mụn xuất hiện trở lại bằng cách tăng cường sức đề kháng cho da.  Bên cạnh đó, vitamin B3, B5 giúp se lỗ chân lông, giữ ẩm, tái tạo da, làm mờ sẹo do mụn gây ra.\r\nHướng dẫn sử dụng:\r\n1. Rửa mặt sạch và lau khô với khăn mềm.\r\n2. Lấy một lượng gel vừa đủ cho lên đầu ngón tay. Thoa nhẹ nhàng lên vùng bị mụn.\r\n3. Giữ nguyên gel trên mặt, không rửa lại.\r\nNên dùng mỗi ngày 2 lần sáng và tối trước khi đi ngủ.\r\n '),
(42, 18, 'Kem trỊ nám 30g trắng da ban đêm Sakura whitening night cream[Sakura] Kem trỊ nám 30g trắng da ban đêm Sakura whitening night cream', 'image/product/xls_1404394573_tintuca0548b60ab1262063519290a8a7a1fe3_48.jpg', 'Kem trị nám 30g trắng da', 500000, 'Kem trị nám trắng da ban đêm Sakura Crystal Whitening Night Cream với chiết xuất thành phần tự nhiên kết hợp hoạt chất đặc biệt, được đánh giá là dòng sản phẩm chuyên trị nám da hiệu quả hiện nay, với khả năng làm mờ thâm nám, đánh bật nám da vượt bậc, dưỡng da sáng màu đồng thời tái tạo, làm tươi mới, trẻ hóa làn da chỉ trong thời gian ngắn.Giữa năm 2015, thương hiệu Sakura tiếp tục nghiên cứu, ứng dụng công nghệ làm sáng da chuyên sâu, cho ra mắt dòng sản phẩm kem giúp giảm nám dưỡng trắng chống nắng ban ngày mới Sakura Absolute Perfect UV Protection Day Cream SPF45 với khả năng bảo vệ da tối đa, tăng cường dưỡng chất giúp da sáng khỏe, phục hồi nhanh chóng, mờ thậm sạm chỉ trong thời gian ngắn.'),
(43, 18, 'Kem trị bọng mắt Sana được sản xuất hoàn toàn từ thiên nhiên', 'image/product/10583145_636036793178025_79888392_n.jpg', 'Kem trị bọng mắt Sana ', 32000, 'Tác dụng của kem trị bọng mắt Sana Nhật Bản  Kem mắt Sana được sản xuất hoàn toàn từ thiên nhiên, nên dễ dàng thấm sâu vào các tế bào bên trong da, bảo vệ các tế bào da và biểu bì chống lại các yếu tố làm lão hóa vùng mắt, xóa mờ các vết nhăn, vết chân chim, bọng mắt, sưng húp mí mắt. Kem trị bọng mắt Sana được chiết  xuất từ tinh chất mầm đậu nành Isoflavone cung cấp những dưỡng chất cần thiết cho da đồng thời làm mờ đi những vết thâm đen quanh mắt nhanh chóng.'),
(44, 17, 'Gel dưỡng đa năng chiết xuất từ 92% lô hội là dòng sản phẩm làm mềm và bổ sung độ ẩm cho làn da, giúp làm dịu và bảo vệ làn da nhạy cảm, dễ bị kích ứng, cho làn da luôn mềm mại và mịn màng với đầy đủ độ ẩm, ', 'image/kemduong/kemduongDN.png', 'Gel dưỡng đa năng 300ml', 500, 'công dụng rất đặc biệt khác để sử dụng:\r\n1. Dùng như nước hoa hồng dạng gel giúp se khít lỗ chân lông\r\n3. Dùng như gel bôi trơn cạo râu tránh bị trầy da\r\n4. Dùng như gel dưỡng tóc vào mùa hè tránh việc sấy tóc làm mất nước: nên bôi phía đuôi tóc để tránh bết tóc\r\n5. Dùng như kem dưỡng và giúp thư giãn mắt: làm ướt bông tẩy trang, thấm gel rồi đắp lên mắt giúp (tránh để trực tiếp vào mắt)\r\n6. Dùng như kem dưỡng móng: tạo độ ẩm cho móng và độ bám màu\r\n7. Dùng như kem dưỡng thể cung cấp nước: tránh cho da bị mất nước khi dùng cơ thể ở quá lâu trong điều kiện khô, lạnh\r\n8. Dùng như kem làm dịu làn da bị cháy sau khi đi nắng hoặc tắm biển: sau khi đi nắng hoặc tắm biển, da bị sạm, rát, đỏ...thoa lên da để làm dịu da ngay lập tức'),
(45, 3, 'Dòng Miss Me: mùi hương gây thương nhớ đến người đối diện, 1 chút dịu dàng, 1 chút bí ẩn. Mùi gần giống với hãng Lancome.', 'image/NuocHoaTHai/NHthailan.jpg', 'Nước hoa Thái Lan Esxense', 2000, ' -  Có thể sử dụng khi đi chơi với bạn bè, người yêu, hoặc đám tiệc cũng đẹp - Mình làm việc trong môi trường văn phòng, sử dụng 2 dòng Sexy và Miss me, cả ngày mà trên áo mình vẫn còn hương thơm. Đến nổi, chưa giặt áo, đến ngày hôm sau vẫn còn thơm');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `password`, `role`, `username`) VALUES
(3, 'abc123', 1, 'ngoan1@gmail.com'),
(4, 'abc123', 1, 'ngoan123@gmail.com'),
(5, 'abc123', 1, 'ngoan12345@gmail.com'),
(6, 'abc123', 2, 'ngoan1221@gmail.com'),
(7, 'abcde1234', 1, 'admin@gmail.com'),
(8, 'abc123', 0, 'ngoan123@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contactinfor`
--
ALTER TABLE `contactinfor`
  ADD PRIMARY KEY (`contactId`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`orderDetail_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `contactinfor`
--
ALTER TABLE `contactinfor`
  MODIFY `contactId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `orderDetail_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
