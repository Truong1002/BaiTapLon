-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 13, 2023 lúc 09:34 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bandienthoai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `matkhau` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `ten`, `matkhau`) VALUES
(1, 'admin', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_khachhang` int(11) NOT NULL,
  `code_cart` int(11) NOT NULL,
  `sdt` varchar(12) NOT NULL,
  `dc` varchar(100) NOT NULL,
  `ngaydat` date NOT NULL,
  `ngaynhan` date DEFAULT NULL,
  `thanhtoan` varchar(50) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_khachhang`, `code_cart`, `sdt`, `dc`, `ngaydat`, `ngaynhan`, `thanhtoan`, `trangthai`) VALUES
(4, 515, '01266787', 'Thái Nguyên', '2023-06-12', '2023-06-12', 'Chuyển khoản', 3),
(4, 6194, '01266787', 'Thái Nguyên', '2023-06-12', NULL, 'Chuyển khoản', 2),
(4, 7142, '01266787', 'Thái Nguyên', '2023-06-12', NULL, 'Chuyển khoản', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_info`
--

CREATE TABLE `tbl_cart_info` (
  `id_cart_infor` int(11) NOT NULL,
  `code_cart` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `sl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_info`
--

INSERT INTO `tbl_cart_info` (`id_cart_infor`, `code_cart`, `id_sp`, `sl`) VALUES
(71, 7142, 4, 1),
(72, 7142, 7, 25),
(73, 515, 8, 1),
(74, 515, 13, 1),
(75, 6194, 9, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_khachhang` int(11) NOT NULL,
  `tentaikhoan` varchar(20) NOT NULL,
  `hoten` varchar(30) NOT NULL,
  `sodienthoai` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `matkhau` varchar(20) NOT NULL,
  `diachi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_khachhang`, `tentaikhoan`, `hoten`, `sodienthoai`, `email`, `matkhau`, `diachi`) VALUES
(4, 'duonga6', 'Dương', '01266787', 'shen@gmail.com', '1', 'Thái Nguyên'),
(5, 'duonga7', 'Dương kakaa', '01266787', 'shenmurai1st@gmail.com', '1', '					TN			'),
(7, 'sadasd', 'ok', '123', 'duong02.daiviet.thienkhoi@gmai', '1', 'bb');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hangsp`
--

CREATE TABLE `tbl_hangsp` (
  `id_hangsp` int(11) NOT NULL,
  `tenhangsp` varchar(30) DEFAULT NULL,
  `stt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_hangsp`
--

INSERT INTO `tbl_hangsp` (`id_hangsp`, `tenhangsp`, `stt`) VALUES
(1, 'Samsung', 1),
(2, 'IPhone', 2),
(3, 'OPPO', 3),
(4, 'Vsmart', 4),
(5, 'Xiaomi', 5),
(6, 'LG', 6),
(7, 'Lenovo', 7),
(8, 'OnePlus', 11),
(9, 'Realme', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_mucgia`
--

CREATE TABLE `tbl_mucgia` (
  `id_mucgia` int(11) NOT NULL,
  `mucgia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_mucgia`
--

INSERT INTO `tbl_mucgia` (`id_mucgia`, `mucgia`) VALUES
(11, 0),
(2, 6),
(3, 10),
(5, 20),
(6, 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sp` int(11) NOT NULL,
  `ma_sp` varchar(50) NOT NULL,
  `ten_sp` varchar(50) NOT NULL,
  `id_hangsp` int(11) DEFAULT NULL,
  `gia` int(15) NOT NULL,
  `hinhanh` varchar(150) NOT NULL,
  `kt_mh` float NOT NULL,
  `camera` varchar(200) NOT NULL,
  `chipset` varchar(30) NOT NULL,
  `ram` int(11) NOT NULL,
  `rom` int(11) NOT NULL,
  `pin` int(11) NOT NULL,
  `sim` varchar(30) NOT NULL,
  `heDH` varchar(20) NOT NULL,
  `mota` varchar(1000) NOT NULL,
  `soluong` int(11) NOT NULL,
  `daban` int(11) NOT NULL DEFAULT 0,
  `trangthai` int(11) NOT NULL,
  `time_rammat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sp`, `ma_sp`, `ten_sp`, `id_hangsp`, `gia`, `hinhanh`, `kt_mh`, `camera`, `chipset`, `ram`, `rom`, `pin`, `sim`, `heDH`, `mota`, `soluong`, `daban`, `trangthai`, `time_rammat`) VALUES
(4, 'ip_14_prm', 'IPhone 14 Pro Max', 2, 18000000, '1685802465_1_251_1.webp', 6.7, 'Camera chính: 48 MP, f/1.8, 24mm, 1.22µm, PDAF, OIS Camera góc siêu rộng: 12 MP, f/2.2, 13mm, 120˚, 1.4µm, PDAF Camera tele: 12 MP, f/2.8, 77mm (telephoto), PDAF, OIS, 3x optical zoom Cảm biến độ sâu ', 'Apple A16', 6, 128, 4323, '2 SIM (nano‑SIM và eSIM)', 'IOS 16', 'iPhone 14 Pro Max là mẫu flagship nổi bật nhất của Apple trong lần trở lại năm 2022 với nhiều cải tiến về công nghệ cũng như vẻ ngoài cao cấp, sang chảnh hợp với gu thẩm mỹ đại chúng. Những chiếc điện thoại đến từ nhà Táo Khuyết nhận được rất nhiều sự kỳ vọng của thị trường ngay từ khi chưa ra mắt', 10, 0, 1, '2023-05-01'),
(7, '', 'iPhone 14 128GB', 2, 19190000, '1685751856_3_51_1_7.webp', 6.1, 'Camera góc rộng: 12MPCamera góc siêu rộng: 12MP12MP, ƒ/1.9', 'Apple A15', 6, 128, 3279, '2 SIM (nano‑SIM và eSIM)', 'iOS 16', 'Theo đúng như dự kiến, đêm 8/9/2022 Apple đã chính thức giới thiệu sesier iPhone mới đến với người tiêu dùng. Mẫu điện thoại iPhone 14 mới ra mắt vẫn giữ được mức giá so với iPhone 13 trước đó nhưng vẫn có nhiều nâng cấp khác biệt. Điện thoại sở hữu màn hình Retina XDR OLED kích thước 6.1 inch cùng độ sáng vượt trội lên đến 1200 nits. Máy cũng sẽ được trang bị camera kép 12 MP phía sau cùng cảm biến điểm ảnh lớn, đạt 1.9 micron giúp cải thiện khả năng chụp thiếu sáng. Mẫu iPhone 14 mới cũng mang trong mình con chip Apple A15 Bionic phiên bản 5 nhân mang lại hiệu suất vượt trội.', 25, 0, 1, '2022-06-06'),
(8, '', 'iPhone 14 Pro 128GB', 2, 18700000, '1685802027_1_252.webp', 6.1, 'Camera chính: 48 MP, f/1.8, 24mm, OISCamera góc siêu rộng: 12 MP, f/2.2, 120˚, 1.4µmCamera tele: 12 MP, f/2.8, PDAF, OIS, 3x optical zoomCảm biến độ sâu TOF 3D LiDAR', 'Apple A16', 6, 128, 3200, '2 SIM (nano‑SIM và eSIM)', 'iOS 16', 'iPhone 14 Pro sở hữu màn hình Dynamic Island cùng công nghệ Super Retina XDR mang lại trải nghiệm hình ảnh ấn tượng. Camera trên iPhone 14 Pro cũng được nâng cấp lên đến 48MP với nhiều công nghệ chụp mang lại hình ảnh chuẩn nhiếp ảnh gia. Hiệu năng iPhone 14 Pro cũng mạnh mẽ với con chip hàng đầu Apple A16 Bionic giúp các thao tác diễn ra nhanh chóng, bộ nhớ RAM 6GB mang lại đa nhiệm mượt mà và ổn định trong mọi tác vụ.', 31, 1, 1, '2022-11-15'),
(9, '', 'iPhone 12 Pro Max 128GB', 2, 19200000, '1685751878_iphone-14-pro-max-den-thumb-600x600.jpg', 6.7, 'Camera chính: 12 MP, f/1.6, 26mm, 1.4µm, dual pixel PDAF, OISCamera tele: 12 MP, f/2.0, 52mm, 1/3.4', 'Apple A14', 6, 128, 3825, '2 SIM (nano‑SIM và eSIM)', 'iOS 14.1', 'Cứ mỗi năm, đến dạo cuối tháng 8 và gần đầu tháng 9 thì mọi thông tin sôi sục mới về chiếc iPhone mới lại xuất hiện. Apple năm nay lại ra thêm một chiếc iPhone mới với tên gọi mới là iPhone 12 Pro Max, đây là một dòng điện thoại mới và mạnh mẽ nhất của nhà Apple năm nay. Mời bạn tham khảo thêm một số mô tả sản phẩm bên dưới để bạn có thể ra quyết định mua sắm.', 12, 0, 1, '2021-03-09'),
(10, '', 'iPhone 12 64GB', 2, 14900000, '1685751888_iphone-14-storage-select-202209-6-1inch-y889.webp', 6.1, '12 MP, f/1.6, 26mm (wide), 1.4µm, dual pixel PDAF, OIS12 MP, f/2.4, 120˚, 13mm (ultrawide), 1/3.6', 'Apple A14', 4, 64, 3215, '2 SIM (nano‑SIM và eSIM)', 'iOS 14.1', 'Dù Apple vừa giới thiệu dòng điện thoại iPhone 13 series tuy nhiên iPhone 12 vẫn đang là một trong những sự lựa chọn hàng đầu ở thời điểm hiện tại. Chiếc flagship năm 2020 của \"Táo khuyết\" đang nhận được rất nhiều sự quan tâm của người dùng bởi mức giá dễ tiếp cận hơn so với thời điểm ra mắt, đồng thời được trang bị cấu hình, màn hình, camera ấn tượng trong tầm giá.', 18, 0, 1, '2022-07-04'),
(11, '', 'iPhone 12 Pro 256GB', 2, 19000000, '1685751898_4_187_1.webp', 6.1, '12 MP, f/1.6, 26mm (wide), 1.4µm, dual pixel PDAF, OIS12 MP, f/2.0, 52mm (telephoto), 1/3.4', 'Apple A14 ', 6, 256, 3245, ' 2 SIM (nano‑SIM và eSIM)', 'iOS 14.1', 'Mẫu iPhone 2020 mới nhất của Apple được thiết kế khung viền vuông sang trọng được nhiều người dùng yêu thích. Trong đó, phiên bản iPhone 12 Pro 256GB chính hãng VNA hứa hẹn là một trong những sự lựa chọn lý tưởng.', 14, 0, 1, '2020-06-24'),
(12, '', 'iPhone 11 64GB', 2, 10350000, '1685751907_0007808_iphone-14-pro-max-128gb.png', 6.1, 'Camera kép 12MP:- Camera góc rộng: ƒ/1.8 aperture- Camera siêu rộng: ƒ/2.4 aperture', 'A13', 4, 64, 3110, ' Nano-SIM + eSIM', 'iOS 13', 'iPhone 11 sở hữu hiệu năng khá mạnh mẽ, ổn định trong thời gian dài nhờ được trang bị chipset A13 Bionic. Màn hình LCD 6.1 inch sắc nét cùng chất lượng hiển thị Full HD của máy cho trải nghiệm hình ảnh mượt mà và có độ tương phản cao. Hệ thống camera hiện đại được tích hợp những tính năng công nghệ mới kết hợp với viên Pin dung lượng 3110mAh, giúp nâng cao trải nghiệm của người dùng.', 25, 0, 1, '2020-01-07'),
(13, '', 'iPhone 11 128GB', 2, 12080000, '1685752465_1685737959_sp1.jpg', 6.1, 'Camera kép 12MP:- Camera góc rộng: ƒ/1.8 aperture- Camera siêu rộng: ƒ/2.4 aperture', 'A13', 4, 128, 3110, 'Nano-SIM + eSIM', 'iOS 13', 'iP 11 128GB giá bao nhiêu là điều được nhiều iFan và các tín đồ công nghệ quan tâm. Từ thời điểm ra mắt cho đến nay, giá bán đã giảm sâu xuống còn khoảng hơn 12 triệu đồng, nhờ đó khách hàng có thể dễ dàng sở hữu. Tham khảo bảng giá iPhone 11 128GB chi tiết sau đây nhé!', 22, 1, 1, '2021-01-04'),
(15, 'SS_ZFlip_4', 'Samsung Galaxy Z Flip4 128GB', 1, 16990000, '1685809080_ss_ZF4.webp', 6.7, 'Camera trước : 10 MP, f/2.4 Camera sau : Camera góc rộng: 12 MP, f/1.8, PDAF, OIS Camera góc siêu rộng: 12 MP, f/2.2, 123˚', 'Snapdragon 8+ Gen 1 8 nhân', 8, 128, 3700, '2 SIM (nano‑SIM và eSIM)', 'Android 12', 'Tiếp tục là một mẫu smartphone màn hình gập độc đáo, đầy lôi cuốn và mới mẻ từ hãng công nghệ Hàn Quốc, dự kiến sẽ có tên là Samsung Galaxy Z Flip 4 với nhiều nâng cấp. Đây hứa hẹn sẽ là một siêu phẩm bùng nổ trong thời gian tới và thu hút được sự quan tâm của đông đảo người dùng với nhiều cải tiến từ ngoại hình, camera, bộ vi xử lý và viên pin được nâng cấp.', 10, 2, 1, '2022-02-08'),
(16, 'SS_ZFold4', 'Samsung Galaxy Z Fold4', 1, 31990000, '1685809600_ss_ZFold4.webp', 7.6, 'Camera sau  Camera chính: 50MP, f/1.8 Camera góc siêu rộng: 12MP, f/2.2 Camera tele: 10MP, f/2.4 (3x zoom) Camera trước  10MP (bên ngoài) + 4MP (dưới màn hình)', 'Snapdragon 8 Plus Gen 1', 12, 256, 4400, '2 SIM (nano‑SIM và eSIM)', 'Android 12', 'sự xuất hiện của điện thoại gập mới Samsung Galaxy Z Fold 4 lại càng hấp dẫn nhiều người dùng hơn khi sở hữu thiết kế gập màn hình mới cùng với những cải tiến cho trải nghiệm nhân đôi. Samsung Galaxy Fold 4 được cho là sẽ có nhiều điểm đổi mới, cải tiến về mặt thiết kế, hiệu năng và nhiều tính năng hấp dẫn khác so với thế hệ trước đó. Nhờ vậy, người dùng lại có thêm các trải nghiệm mới mẻ trong quá trình sử dụng siêu phẩm. Sau đây là những đánh giá chi tiết về sản phẩm dựa trên các thông tin rò rỉ trong thời gian gần đây!', 20, 7, 1, '2022-08-22'),
(17, 'SS_ZFold3', 'Samsung Galaxy Z Fold3 5G', 1, 22990000, '1685810314_ss_Fold3_5G.webp', 7.6, 'Camera sau  Camera góc rộng: 12 MP, f/1.8, Dual Pixel PDAF, OIS Camera tele: 12 MP, f/2.4, PDAF, OIS, 2x Zoom quang học Camera góc siêu rộng: 12 MP, f/2.2 Camera màn hình phụ: 10MP, f/2.2 Camera trước', 'Snapdragon 888 5G (5 nm)', 12, 256, 4400, '2 SIM (nano‑SIM và eSIM)', 'Android 11', 'Phiên bản Samsung Galaxy Z Fold3 lần này được ra mắt với độ hoàn thiện cao về thiết kế và hiệu năng. Mang đến cho người dùng một trải nghiệm cực kỳ thú vị hơn.Màn hình 7.6 inch 120Hz, màn hình phụ 6.2 inch\r\nĐiểm nổi bật nhất trên chiếc laptop này đó là hệ thống màn hình được trang bị. Cũng giống như thế hệ Fold 2 trước lần này Samsung Fold 3 cũng được trang bị một màn hình chính và một màn hình phụ rất tiện lợi.', 15, 8, 1, '2021-08-19'),
(18, 'SS_GLXs23_Ultra', 'Samsung Galaxy S23 Ultra 256GB', 1, 26990000, '1685891072_SS_23Unltra.webp', 6.8, 'Camera sau  Siêu rộng: 12MP F2.2 (Dual Pixel AF) Chính: 200MP F1.7 OIS ±3° (Super Quad Pixel AF) Tele 1: 10MP F4.9 (10X, Dual Pixel AF) OIS, Tele 2: 10MP F2.4 (3X, Dual Pixel AF) OIS Thu phóng chuẩn k', 'Snapdragon 8 Gen 2 (4 nm)', 8, 256, 5000, '2 Nano SIM hoặc 1 Nano + 1 eSI', 'Android', 'Sau sự đổ bộ thành công của Samsung Galaxy S22 những chiếc điện thoại dòng Flagship tiếp theo - Điện thoại Samsung Galaxy S23 Ultra là đối tượng được Samfans hết mực săn đón. Kiểu dáng thanh lịch sang chảnh kết hợp với những bước đột phá trong công nghệ đã kiến tạo nên siêu phẩm Flagship nhà Samsung.', 22, 10, 1, '2023-02-02'),
(19, 'SS_GLXs22_Ultra', 'Samsung Galaxy S22 Ultra (12GB - 256GB)', 1, 21290000, '1685891256_SS_22Ultra.webp', 6.8, 'Camera sau  108 MP, f/1.8 góc rộng 10 MP, f/4.9 10 MP, f/2.4 12 MP, f/2.2 góc siêu rộng Camera trước  40 MP, f/2.2', 'Snapdragon 8 Gen 1 (4 nm)', 12, 256, 5000, '2 Nano SIM hoặc 1 Nano + 1 eSI', 'Android 12, One UI 4', 'Điện thoại Samsung S22 Ultra phiên bản RAM 12GB cho cảm giác siêu mượt mà khi mở và đóng ứng dụng, đi kèm bộ nhớ trong 256GB cho bạn thoải mái lưu trữ những khung hình, thước phim chất lượng cao. Vi xử lý Qualcomm Snapdragon 8 Gen 1 hứa hẹn mang đến hiệu năng tuyệt đỉnh, xử lý mượt mà mọi tác vụ.', 10, 2, 1, '2022-07-12'),
(20, 'SS_GLX_A54', 'Samsung Galaxy A54 5G 8GB 128GB', 1, 9490000, '1685891653_SS_A54.webp', 6.4, 'Camera sau  Camera góc rộng: 50 MP, f/1.8, PDAF, OIS Camera góc siêu rộng: 12MP, f/2.2, 123˚, 1.12µm Camera macro: 5MP, f/2.4 Camera trước  Camera góc rộng: 32 MP, f/2.2, 26mm, 1/2.8\", 0.8µm', 'Exynos 1380 (5 nm)', 8, 128, 5000, '22 SIM (Nano-SIM)', 'Android 13', 'amsung Galaxy A54 5G có những điểm đột phá mới như: màn hình Super AMOLED 6.4 inch tràn viền vô cực Infinity-O, độ sáng đến 1000nits, tần số quét lên đến 120Hz. Samsung A54 cũng sở hữu cụm 3 camera phân giải cao 50.0 MP + 12.0 MP + 5.0 MP với tính năng ổn định kỹ thuật số và Auto-framing kết hợp chống rung OIS.', 10, 2, 1, '2023-03-10'),
(21, 'SS_GLX_A14', 'Samsung Galaxy A14 4G', 1, 3990000, '1685891785_SS_A14.webp', 6.6, 'Camera sau  Chính 50 MP & Phụ 5 MP, 2 MP Camera trước  13MP', 'Exynos 850 8 nhân', 4, 128, 5000, '22 SIM (Nano-SIM)', 'Android 13', 'Samsung Galaxy A14 4G có màn hình rộng 6.6 inch, tần số quét 60Hz, cụm camera 50MP+5MP+2MP và camera selfie 13MP. Dung lượng pin của máy lên đến 5.000 mAh, sử dụng cả ngày dài, khi gần cạn pin nhanh chóng nạp đầy thông qua củ sạc đi kèm. Nhờ vậy, người dùng có thể dễ dàng lướt web, đắm mình trong thế giới giải trí hay tận hưởng khoảnh khắc vui vẻ bên cạnh người thân, gia đình. ', 10, 5, 1, '2023-02-02'),
(22, 'SS_GLX_S23Plus', 'Samsung Galaxy S23 Plus 8GB 512GB', 1, 26990000, '1685891964_SS_S23_Plus.webp', 6.8, 'Camera sau  Camera chính góc rộng: 50 MP, f/1.8, Dual Pixel PDAF, OIS Camera tele: 10 MP, f/2, 3x optical zoom Camera góc siêu rộng:12 MP, f/2.2 Camera trước  12MP, f/2.2', 'Snapdragon 8 Gen 2 (4 nm)', 8, 256, 4700, '2 Nano SIM hoặc 1 Nano + 1 eSI', 'Android 13', 'ắt trọn khoảnh khắc đêm - Camera lên đến 50MP, zoom xa rõ nét, vi xử lí AI, công nghệ ảnh siêu chi tiết\r\nHiệu năng vượt trội - Snapdragon 8 Gen 2 8 nhân mạnh mẽ, RAM 8GB\r\nThời gian sử dụng không giới hạn - Pin 4700mAh sử dụng, sạc nhanh, tối ưu hoá thời gian sử dụng\r\nThiết kế bền bỉ, thân thiện - Màu sắc lấy cảm hứng từ thiên nhiên, chất liệu kính và lớp phim phủ PET tái chế', 12, 2, 1, '2023-02-04'),
(23, 'SS_GLX_S21_FE', 'Samsung Galaxy S21 FE 8GB 128GB', 1, 12490000, '1685892218_SS_S21_Fe.webp', 6.4, 'Samsung Galaxy S21 FE 8GB 128GB', 'Exynos 2100 (5 nm)', 8, 256, 4500, '22 SIM (Nano-SIM)', 'Android 12', 'Thiết kế cao cấp - Vẻ đẹp tinh tế cùng nhiều màu sắc thời thượng\r\nTrọn vẹn từng khung hình - Màn hình 6.4\"\", độ sáng cao cùng tần số quét 120Hz\r\nSắc nét từng khung hình - Bộ ba camera 12MP, hỗ trợ quay video 4K, chống rung điện từ EIS\r\nMượt mà mọi tác vụ - Chip Exynos 2100 tiến trình 5nm mạnh mẽ\r\nSamsung Galaxy S21 FE (8GB - 128GB) được cung cấp sức mạnh bởi con chip xử lý Exynos 2100 \"cây nhà lá vườn\" kết hợp với 8GB RAM mang đến hiệu suất hoạt động mạnh mẽ cùng bộ nhớ trong 128GB giúp người dùng có thể thoải mái lưu trữ hình ảnh, video dữ liệu.', 12, 4, 1, '2022-01-04'),
(24, 'SS_GLX_A73', 'Samsung Galaxy A73 128GB', 1, 9490000, '1685892398_SS_A73.webp', 6.7, 'Camera sau  Camera chính: 108 MP, f/1.8, PDAF, OIS Camera gó siêu rộng: 12 MP, f/2.2 Camera macro: 5 MP, f/2.4 Camera chân dung: 5 MP, f/2.4 Camera trước  32 MP, f/2.2', 'Snapdragon 778G 5G 8 nhân', 8, 128, 5000, '22 SIM (Nano-SIM)', 'Android 12', 'Camera chất lượng, bắt trọn từng khoảng khắc - Cụm 4 camera với cảm biến chính lên đến 108 MP\r\nThưởng thức không gian giải trí cực đỉnh - Màn hình lớn 6.7 inch, độ phân giải Full HD+, 120Hz mượt mà\r\nCấu hình Galaxy A73 5G được nâng cấp mạnh với chip Snapdragon 778G, RAM lên đến 8 GB\r\nChiến game thoải mái không lo gián đoạn - Viên pin lớn 5000 mAh, hỗ trợ sạc nhanh 25 W\r\nNếu nhu cầu lưu trữ của bạn cao hơn thì có thể tham khảo ngay Samsung A73 phiên bản 256GB bộ nhớ trong đang được phân phối độc quyền tại hệ thống CellphoneS với mức giá chênh lệch không quá nhiều so với bản 128GB.', 12, 3, 1, '2022-02-14'),
(25, 'ip_14_Plus', 'iPhone 14 Plus 128GB | Chính hãng VN/A', 2, 215900000, '1685946485_IP_14Plus.webp', 6.7, 'Camera sau  Camera chính: 12MP, 26 mm, ƒ/1.5 Camera góc siêu rộng: 12MP, 13 mm, ƒ/2.4, 120° Camera trước  12MP khẩu độ f/1.9, Autofocus', 'Apple A15 Bionic', 6, 128, 4325, '2 SIM (nano‑SIM và eSIM)', 'iOS 16', 'iPhone 14 Plus sở hữu màn hình Super Retina XDR OLED thiết kế tai thỏ, kích thước 6.7 inch, kết hợp công nghệ True Tone, HDR, Haptic Touch, Không chỉ vậy, sản phẩm còn trang bị chip A15 Bionic mạnh mẽ, RAM 6GB, bộ nhớ trong 128GB và chạy trên hệ điều hành iOS 16. Camera kép 12MP cải thiện khả năng chụp thiếu sáng, camera trước True Depth 12MP tự động lấy nét. Xem thêm chi tiết với thông tin sau đây!', 12, 4, 1, '2022-09-08'),
(26, 'ip_13_prm', 'iPhone 14 Plus sở hữu màn hình Super Retina XDR OL', 2, 26990000, '1685946654_ip_13prm.webp', 6.7, 'Camera sau  Camera góc rộng: 12MP, ƒ/1.5 Camera góc siêu rộng: 12MP, ƒ/1.8 Camera tele : 12MP, /2.8 Camera trước  12MP, ƒ/2.2', 'Apple A15', 6, 256, 4325, '2 SIM (nano‑SIM và eSIM)', 'iOS 15', 'iPhone 13 Pro Max 256GB được đánh giá là một trong những dòng iPhone có khả năng chụp ảnh siêu ấn tượng cùng với camera góc siêu rộng mang đến khả năng chụp ảnh thiếu sáng một cách đặc biệt. Không những thế, mà dòng iPhone này còn được đánh giá là có dung lượng bộ nhớ tốt, đáp ứng được đầy đủ các công việc hằng ngày\r\nXem thêm thông tin iPhone 13 Pro Max 512GB thiết kế đẳng cấp, mang lại trải nghiệm vượt trội cho người dùng', 20, 8, 1, '2023-01-23'),
(27, 'RM_C55', 'Realme C55 6GB 128GB', 9, 4090000, '1685948905_RM_C55.webp', 6.72, 'Camera sau  Camera chính 64 MP Camera phụ 2 MP Camera trước  8 MP, f/2.0', 'Helio G88', 6, 128, 5000, '2 SIM (Nano-SIM)', 'Android 13', 'Realme C55 có màn hình 6.72 inch, full HD, độ phân giải sắc nét, bộ nhớ lưu trữ của điện thoại lớn 6GB+128GB. Thương hiệu này chạy hệ điều hành quen thuộc Android 12, các tác vụ nhanh nhạy và mượt mà hơn. Con chip set được trang bị là Mediatek Helio G88 giúp các tác vụ ổn định hơn trong thời gian dài.', 10, 2, 1, '2022-02-09'),
(28, 'RM_10', 'realme 10 8GB 256GB', 9, 6390000, '1685949107_rm_10.webp', 6.4, 'Camera sau  Camera chính AI: 50MP, f/1.8 Camera chân dung: 2MP, f/2.4 Camera trước  16 MP, f/2.5', 'Helio G99 (6nm)', 8, 256, 5000, '2 SIM (Nano-SIM)', 'Android 12, Realme U', 'Realme 10 là sản phẩm mới tiếp theo mà Realme sở hữu một thiết kế sang trọng cùng cấu hình mạnh mẽ. Cụ thể, điện thoại Realme 10 được trang bị màn hình 6.4 inch với tấm nền Super AMOLED, tần số quét 90Hz mang lại hiển thị sống động, chuyển động mượt mà. Cấu hình điện thoại cũng ấn tượng với con chip Helio G99, bộ nhớ RAM lớn cùng viên pin 5000mAh cho thời gian sử dụng lâu dài.', 12, 4, 1, '2022-07-05'),
(29, 'RM_8', 'realme 8 5G', 9, 6290000, '1685949222_RM_8.webp', 6.5, 'Camera sau  Chính 48 MP & Phụ 2 MP, 2 MP Camera trước  16 MP, f/2.5, 1/3.0\", 1.0µm', 'MediaTek Dimensity 700 5G 8 nh', 8, 128, 5000, '2 SIM (Nano-SIM)', 'Android 11, Realme U', 'Điện thoại Realme 8 5G - Smartphone pin \"trâu\" hỗ trợ mạng 5G\r\nLinh hoạt, thời thượng và mạnh mẽ ở mọi yếu tố, Realme 8 5G không chỉ là bản nâng cấp đáng chú ý từ Realme 8, mà còn là chiếc smartphone hỗ trợ 5G với giá rẻ dành cho tất cả người dùng công nghệ hiện nay.', 12, 3, 1, '2021-06-05'),
(30, 'RM_9', 'realme 9 Pro Plus', 9, 5690000, '1685949362_RM_9.webp', 6.4, 'Camera sau  Camera chính: 50MP, f/1.8 Camera macro: 2MP, f/2.4 Camera góc rộng: 8MP, 119°, f/2.2 Camera trước  16MP, f/2.4', 'MediaTek Dimensity 920 5G', 8, 128, 4500, '2 SIM (Nano-SIM)', 'UI 3.0, Android 12', 'Realme là hãng điện thoại Trung Quốc nổi tiếng với các sản phẩm giá rẻ và tầm trung chất lượng. Mới đây hãng tiếp tục cho ra mắt sản phẩm mới mang tên Realme 9 Pro Plus. Mẫu điện thoại tầm trung này với thiết kế độc đáo, hiệu năng ổn định hứa hẹn là một sản phẩm đáng để trải nghiệm. Ngoài ra, bạn cũng có thể tham khảo thêm Realme 9 Pro với hệ thống camera, cấu hình ấn tượng cùng mức giá hấp dẫn.', 13, 4, 1, '2022-01-04'),
(31, 'RM_9_pro', 'realme 9 Pro', 9, 4590000, '1685950128_RM_9pro.webp', 6.6, 'Camera sau  Camera chính: 64MP, f/1.79 Camera góc rộng: 8MP, f/2.2 Camera macro: 2MP, f/2.4 Camera trước  16MP', 'Qualcomm Snapdragon 695 5G', 8, 128, 5000, '2 SIM (Nano-SIM)', 'Android 12, UI 3.0', 'Điện thoại Realme 9 Pro - Ấn tượng từ thiết kế đến hiệu năng\r\nTiếp theo Realme 9 thì hãng lại chuẩn bị cho ra mắt một phiên bản nâng cấp mang tên Realme 9 Pro với thiết kế ấn tượng cùng hàng loạt những trang bị độc đáo. Sản phẩm đã làm cho các Fan hâm bộ đứng ngồi không yên để chờ đón sự xuất hiện của chúng. Dưới đây là thông tin chi tiết về mẫu smartphone độc đáo này.', 12, 3, 1, '2022-07-07'),
(32, 'RM_9i', 'realme 9i 4GB 64GB', 9, 3590000, '1685950255_RM_9i.webp', 6.6, 'Camera sau  Camera chính: 50 MP, f/1.8, PDAF Camera macro: 2 MP, f/2.4 Camera chân dung: 2 MP, f/2.4 Camera trước  16 MP, f/2.1', 'Qualcomm SM6225 Snapdragon 680', 4, 64, 5000, '2 SIM (Nano-SIM)', 'Android 12, Realme U', 'Hiệu năng vượt trội - Chip Qualcomm Snapdragon 680 6nm, RAM 4GB\r\nBền bỉ cả ngày dài - Viên lớn 5000mAh, Sạc nhanh Dart 33W\r\nTrải nghiệm màn hình mượt mà, rõ nét - Kích thước siêu lớn 6,6\" cùng tần số quét 90Hz\r\nBắt trọn từng khung ảnh - Bộ 3 camera đẳng cấp 50MP ưu việt', 12, 3, 1, '2021-06-05'),
(33, 'RM_C55_6GB', 'realme C55 6GB 128GB', 9, 4090000, '1685950373_RM_C55.webp', 6.72, 'Camera sau  Camera chính 64 MP Camera phụ 2 MP Camera trước  8 MP, f/2.0', 'Helio G88', 6, 128, 5000, '2 SIM (Nano-SIM)', 'Android 13', 'Realme C55 có màn hình 6.72 inch, full HD, độ phân giải sắc nét, bộ nhớ lưu trữ của điện thoại lớn 6GB+128GB. Thương hiệu này chạy hệ điều hành quen thuộc Android 12, các tác vụ nhanh nhạy và mượt mà hơn. Con chip set được trang bị là Mediatek Helio G88 giúp các tác vụ ổn định hơn trong thời gian dài.', 12, 4, 1, '2022-04-07'),
(34, 'RM_C33', 'realme C33 4GB 64GB', 9, 3090000, '1685950543_RM_C33.webp', 6.5, 'Camera sau  Chính 50 MP & Phụ 0.3 MP Camera trước  5 MP', 'Unisoc T612', 4, 64, 5000, '2 SIM (Nano-SIM)', 'Android 12', 'Realme C33 là sản phẩm mới được gia nhập với dòng Realme C series, chiếc điện thoại mới này có màn hình rộng 6.5 inch, màn hình sở hữu tấm nền IPS LCD, độ phân giải HD+. Vi xử lý Unisoc T612 cùng hệ điều hành Android 12 dung lượng pin 5.000 mAh', 12, 3, 1, '2021-11-05'),
(35, 'RM_C30s', 'realme C30s 4GB 64GB', 9, 2590000, '1685950757_RM_C30s.webp', 6.5, 'Camera sau  8MP Camera trước  5MP', 'Unisoc SC9863A1', 4, 64, 5000, '2 SIM (Nano-SIM)', 'realme UI Go Edition', 'Thương hiệu đến từ ông lớn nhà Realme đã giúp model điện thoại Realme C30s sở hữu nhiều đặc điểm nổi bật như màn hình thiết kế chi tiết sắc nét. Ngoài ra, nếu bạn đang tìm kiếm một dòng điện thoại tầm trung và xem phim tốt, nghe nhạc hay, chơi game mượt thì Realme C30s chính là một trong những lựa chọn không nên bỏ qua. Thêm nữa, model C30s này còn đi kèm viên pin lớn đến 5000mAh. Vì vậy, bạn sẽ thoải mái sử dụng mà không cảm thấy lo lắng vì hết pin nữa đó. ', 12, 3, 1, '2021-10-09'),
(36, 'RM_C25Y', 'Realme C25Y', 9, 4590000, '1685950922_RM_C25Y.webp', 6.5, 'Camera sau  Camera góc rộng: 50 MP, f/1.8, PDAF Camera cận cảnh: 2 MP, f/2.4 Camera cảm biến độ sâu: 2 MP, f/2.4 Camera trước  8 MP, f/2.0', 'Spreadtrum T610 8 nhân', 4, 128, 5000, '2 SIM (Nano-SIM)', 'Android 11, Realme U', 'Realme liên tục khiến người dùng ấn tượng với những mẫu smartphone giá rẻ, độc đáo. Trong lần ra mắt này, Realme mang đến thị trường thiết kế mang tên Realme C25Y. Điểm nổi bật nhất đó chính là pin lớn, sạc nhanh và có ba camera sau. Điện thoại Realme nàyhắc chắn sẽ mang đến cho người dùng những trải nghiệm ấn tượng vượt trội so với mức giá thành.', 10, 0, 1, '2023-06-15'),
(37, 'OP_Reno8T', 'OPPO Reno8 T 5G (8GB - 128GB)', 3, 9690000, '1685962918_OP_R8T.webp', 6.7, 'Camera sau  Chính 108 MP & Phụ 2 MP, 2 MP Camera trước  32 MP', 'Snapdragon 695 5G 8 nhân', 16, 128, 4800, '2 SIM (Nano-SIM)', 'Coloros 13', 'OPPO Reno8 T sở hữu hiệu năng mạnh mẽ, trang bị bộ vi xử lý thế hệ mới Snapdragon 695, tấm nền AMOLED 6.7 inch, màn hình 1 tỉ màu mang lại chất lượng hình ảnh siêu sắc nét và sống động tới từng chi tiết.', 16, 3, 1, '2023-01-09'),
(38, 'OP_Find_N2Flip', 'OPPO Find N2 Flip', 3, 19990000, '1685963037_OP_N2_Flip.webp', 6.8, 'Camera sau  Camera góc rộng: 50MP, f/1.8, 23mm, PDAF Camera góc siêu rộng 8MP, f/2.2, 112˚ Camera trước  Camera góc rộng: 32MP, f/2.4, 22mm, AF', 'MediaTek 9000+ (4nm)', 8, 256, 4300, '2 SIM (Nano-SIM)', 'Android 13', 'OPPO Find N2 Flip có kích thước 3.26 inch ở màn hình ngoài và bên trong là 6.8 inch, đặc biệt là GẬP KHÔNG NÊP GẤP và công nghệ hình ảnh chuyên nghiệp - MariSilicon X. Ngoài ra smartphone sẽ được vận hành bởi con chip Dimensity 9000+, kèm dung lượng pin 4.300 mAh và sạc siêu nhanh Super VOOC 44W.', 12, 2, 1, '2022-09-16'),
(39, 'OP_Reno8', 'OPPO Reno8', 3, 7490000, '1686235921_OP_R8.webp', 6.4, 'Camera sau  Camera chính: 64MP, f/1.7 Camera Marco: 2MP, f/3.3 Bokeh: 2MP, f/2.4 Camera trước  32MP, f/2.4', 'Qualcomm Snapdragon 680', 8, 256, 4500, '2 SIM (Nano-SIM)', 'Android 12', 'OPPO Reno8 - chuyên gia chụp ảnh chân dung hàng đầu nhờ sự kết hợp giữa cảm biến cao cấp Sony IMX709 (camera trước) và IMX766 (camera sau) với ống kính Micro30x. Ngoài ra, phiên bản Reno 8 mang lại cho người dùng khả năng cân bằng cuộc sống theo khung giờ 8 tiếng giúp làm việc hiệu quả và nghỉ ngơi đầy đủ. Hiệu năng mà OPPO Reno 8 sở hữu 8GB RAM, 256GB bộ nhớ trong đi cùng với vi xử lý MediaTek Dimensity 1300 giúp tối ưu các tác vụ hiệu quả cùng hiệu năng chơi game đỉnh cao.', 12, 2, 1, '0000-00-00'),
(40, 'OP_A77s', 'OPPO A77s', 3, 6290000, '1686299893_OP_A77s.webp', 6.56, 'Camera sau  Camera góc rộng: 50 MP, f/1.8, PDAF Camera chân dung: 2 MP, f/2.4 Camera trước  8 MP, f/2.0', 'Chipset  Snapdragon 680 4G', 8, 128, 5000, '2 SIM (Nano-SIM)', 'Android 12', 'OPPO A77s là chiếc smartphone tầm trung được trang bị hệ điều hành Android 12, bộ nhớ ROM 128GB cùng bộ nhớ RAM 8GB. A77s còn mang đến khả năng xử lý đỉnh cao nhờ Chipset Snapdragon 680 4G, màn hình 6.56 inches với tần số quét 90Hz.', 12, 4, 1, '2022-06-09'),
(41, 'OP_Reno7', 'OPPO Reno7 4G (8GB - 128GB)', 3, 6350000, '1686300023_OP_R7.webp', 6.43, 'Camera sau  Camera chính: 64MP, f/1.7; FOV 79°; ống kính 6P; AF Microscope: 2MP, f/3.3 Đơn sắc: 2MP, f/2.4 Camera trước  32MP, f/2.4; FOV 85°', 'sSnapdragon™ 680', 8, 128, 4500, '2 SIM (Nano-SIM)', 'Android 11, ColorOS ', 'Oppo Reno7 quay trở lại ấn tượng với thiết kế đẹp mắt và những cải tiến nổi bật. Không những toả sáng với diện mạo bắt mắt, smartphone còn mang đến trải nghiệm ổn định ấn tượng hơn với chipset của Snapdragon 680, RAM 8 GB cùng bộ nhớ trong 128 GB. Cạnh đó,sự thay đổi của camera với độ phân giải lên đến 64 MP và nâng cấp nhiều ống kính hơn cũng mang đến những hình ảnh chất lượng hơn.', 20, 6, 1, '2022-05-09'),
(42, 'OP_R8_5G', 'OPPO Reno8 5G 8GB 256GB', 3, 12490000, '1686300147_OP_R8_5G.webp', 6.4, 'Camera sau  Camera chính: 50 MP, f/1.8 Camera phụ: 8 MP f/2.4 Camera Marco: 2 MP f/2.2 Camera trước  32 MP, f/2.4', 'MediaTek Dimensity 1300 8 nhân', 8, 256, 4500, '2 SIM (Nano-SIM)', 'Android 12', 'Oppo Reno8 5G sở hữu con chip MediaTek Dimensity 1300 5G cùng dung lượng RAM lên đến 8GB mang đến hiệu suất xử lý vô cùng mạnh mẽ. Với camera chính 50MP cùng hai cảm biến phụ ở mặt lưng, smartphone sẽ giúp bạn lưu lại những bức ảnh sắc nét. Thiết bị cũng thu hút sự chú ý bởi màn hình 6.43 inch AMOLED có độ phân giải Full HD+.', 10, 4, 1, '2022-07-10'),
(43, 'OP_A55', 'OPPO A55', 3, 3490000, '1686300308_OP_A55.webp', 6.5, 'Camera sau  Camera góc rộng: 50 MP, f/2.2, 25mm 1/3.06\", 1.12µm, PDAF Camera cận cảnh: 2 MP, f/2.4 Camera xóa phông: 2 MP, f/2.4 Camera trước  16 MP, f/2.0', 'MediaTek Helio G35', 4, 64, 5000, '2 SIM (Nano-SIM)', 'Android 11, ColorOS ', 'OPPO A55 không chỉ sở hữu thiết kế trẻ trung, thời lượng sử dụng ấn tượng với viên pin 5000mAh mà còn đồng thời sở hữu một cấu hình ở mức khá ổn với chipset MediaTek Helio G35, màn hình IPS LCD hiển thị đẹp mắt. Đặc biệt, mẫu điện thoại tầm trung giá rẻ của OPPO này còn sở hữu cụm camera chất lượng để đáp ứng nhu cầu sống ảo của người dùng trẻ.', 10, 2, 1, '2022-03-07'),
(44, 'OP_A57', 'OPPO A57', 3, 4050000, '1686300417_OP_A57.webp', 6.56, 'Camera sau  Camera gốc rộng: 13 MP, f/2.2, AF Camera cảm biến độ sâu: 2 MP, f/2.4 Camera trước  Camera gốc rộng: 8 MP, f/2.0', 'MediaTek Helio G35', 4, 64, 5000, '2 SIM (Nano-SIM)', 'ColorOS 12.1, nền tả', 'OPPO A57 không chỉ sở hữu thiết kế trẻ trung, thời lượng sử dụng ấn tượng mà còn đồng thời sở hữu một cấu hình ở mức khá ổn, màn hình hiển thị đẹp mắt. Đặc biệt, mẫu điện thoại tầm trung giá rẻ của OPPO này còn sở hữu cụm camera chất lượng để đáp ứng nhu cầu sống ảo của người dùng trẻ.', 20, 4, 1, '2022-05-08'),
(45, 'OP_Reno6', 'OPPO Reno6 Z 5G', 3, 6790000, '1686300547_OP_R6z.webp', 6.43, 'Camera sau  Camera chính 64MP: f/1.7, FOV 79°, ống kính 6P Camera góc siêu rộng 8MP : f/2.2, FOV 119°, ống kính 5P Camera Cận Cảnh 2MP: f/2.4, FOV 88°, ống kính 3P Camera trước  32MP (f/2.4), FOV 85°,', 'MediaTek Dimensity 800U 5G 8 n', 8, 128, 4310, '2 SIM (Nano-SIM)', 'ColorOS 11.3, nền tả', 'Tiếp nối sự thành công của Reno5 Series, Oppo tiếp tục mang đến cho người dùng dòng sản phẩm mới mang tên Oppo Reno6 với nhiều nâng cấp đáng giá. Trong series lần này, người dùng sẽ thấy vô cùng ngạc nhiên khi xuất hiện tới 4 phiên bản. Sự có mặt của Oppo Reno6 Z 5G trong lần ra mắt này sẽ thu hút được đông đảo người chú ý bởi hiệu năng cực đỉnh để mang đến những trải nghiệm đỉnh cao.', 10, 2, 1, '2022-09-05'),
(46, 'OP_Reno8z', 'OPPO Reno8 Z', 3, 7890000, '1686300698_OP_R8z.webp', 6.43, 'Camera sau  Camera chính: 64MP, f/1.7 Camera Mono+Depth: 2MP , f/2.4 Camera Marco: 2MP , f/2.4 Camera trước  16 MP, f/2.4', 'Qualcomm Snapdragon 695 5G', 8, 256, 4500, '2 SIM (Nano-SIM)', 'Android 12', 'OPPO Reno8 Z - chuyên gia chụp ảnh chân dung hàng đầu nhờ sự kết hợp giữa cảm biến cao cấp Sony IMX709(camera trước) và IMX766(camera sau) với ống kính Micro30x. Ngoài ra, phiên bản Reno 8 mang lại cho người dùng khả năng cân bằng cuộc sống theo khung giờ 8 tiếng giúp làm việc hiệu quả và nghỉ ngơi đầy đủ. Hiệu năng mà OPPO Reno 8 Z sở hữu 8GB RAM, 256GB bộ nhớ trong đi cùng với vi xử lý Qualcomm Snapdragon 695 5G giúp tối ưu các tác vụ hiệu quả cùng hiệu năng chơi game đỉnh cao.', 12, 3, 1, '2022-02-09'),
(47, 'OP_R8_Pro', 'OPPO Reno8 Pro 5G 12GB 256GB', 3, 17990000, '1686300863_OP_R8_Pro.webp', 6.7, 'Camera sau  Camera gốc rộng: 50 MP, f/1.8, PDAF Camera gốc siêu rộng: 8 MP, f/2.2, 120˚ Camera Macro: 2 MP, f/2.4 Camera trước  Camera gốc rộng: 32 MP, f/2.4', 'MediaTek Dimensity 8100 Max 8 ', 12, 256, 4500, '2 SIM (Nano-SIM)', 'MediaTek Dimensity 8', 'Điện thoại OPPO Reno8 Pro được trang bị chip kép cho hiệu năng vượt trội. Trong đó chip MediaTek Dimensity 8100-Max được sản xuất trên tiến trình 5nm với 8 nhân giúp hiệu năng được cải thiện vượt trội tới 12% CPU và 29% GPU, hiệu suất năng lượng cải thiện 50%. Con chip mạnh mã được chứng minh khi đo điểm hiệu năng Antutu Benchmark lên tới 827.026.', 12, 4, 1, '2023-01-11'),
(48, 'OP_Reno7z', 'OPPO Reno7 Z (5G)', 3, 7390000, '1686300963_OP_R7z.webp', 6.43, 'Camera sau  Camera chính: 64 MP, f/1.7; FOV 79°; ống kính 6P; AF Đơn sắc:2 MP, f/2.4; FOV 89°; ống kính 3P; FF Cận cảnh:2 MP, f/2.4; FOV 89°; ống kính 3P; FF Camera trước  16MP, f/2.4; FOV 79°; ống kí', 'Snapdragon 695 5G 8 nhân', 8, 128, 4500, '2 SIM (Nano-SIM)', 'Snapdragon 695 5G 8 ', 'Điện thoại OPPO Reno7 Z 5G mang đến cho bạn khung ảnh giải trí chất lượng cao với màn hình 6.43 inch công nghệ AMOLED. Màn hình có thiết kế gần như trọn mặt trước cùng nốt chấm ở góc trái màn hình, với vị trí chấm này là nơi hiện diện của camera selfie trên máy. Đáng chú ý là viền bezel và cằm màn hình đã được thu gọn hơn so với mẫu Reno 7 thường, qua đó giúp mở rộng tỷ lệ hiển thị và tạo hình ảnh thêm sống động.', 12, 4, 1, '2021-08-28'),
(49, 'OP_Reno7_pro', 'OPPO Reno 7 Pro', 3, 11990000, '1686301071_OP_R7Pro.webp', 6.5, 'Camera sau  Camera góc rộng: 50MP (IMX766) Camera góc siêu rộng: 8MP (IMX355) Camera macro: 2MP (OmniVision OV02B10) Camera trước  32 MP, f/2.4', 'MediaTek Dimensity 1200 Max 8 ', 12, 128, 4500, '2 SIM (Nano-SIM)', 'Android 11, ColorOS ', 'Điện thoại OPPO Reno7 Pro là mẫu điện thoại mới thuộc dòng OPPO Reno với thiết kế cùng hiệu năng vượt trội. Điện thoại OPPO Reno7 Pro sở hữu màu sắc với hiệu ứng đẹp mắt, khung viền vuông vức. Máy được trang bị màn hình 6,5 inch cùng tần số quét 90Hz mang lại những trải nghiệm hình ảnh mượt mà. Hiệu năng điện thoại đáp ứng mọi nhu câu sử dụng với con chip MediaTek 1200-MAX cùng viên pin 4500 mah hỗ trợ sạc nhanh công suất 65W', 10, 3, 1, '2022-11-22'),
(50, 'OP_A76', 'OPPO A76', 3, 4990000, '1686301190_OP_A76.webp', 6.56, 'Camera sau  Camera chính: 13MP，f/2.2, FOV 80°, ống kính 5P, AF Xoá phông: 2MP, f/2.4, FOV 89.1°, ống kính 3P+IR, FF Camera trước  8MP, f/2.0; FOV: 79°; ống kính: 5P', 'Snapdragon 680 4G (6 nm)', 6, 128, 5000, '2 SIM (Nano-SIM)', 'Android 11, ColorOS ', 'OPPO A76 - phiên bản kế nhiệm của OPPO A74, thuộc dòng A giá rẻ của OPPO được ra mắt tại Việt Nam đầu tháng 3 năm 2022.', 12, 3, 1, '2022-03-06'),
(51, 'OP_A96', 'OPPO A96', 3, 5990000, '1686301281_OP_A96.webp', 6.59, 'Camera sau  Camera Chính: 50MP, f/1.8, FOV 77°, ống kính 5P, AF Camera Bokeh: 2MP, f/2.4, FOV 88.8°, ống kính 3P, FF Camera trước  16 MP, f/2.4', 'Snapdragon 680 8 nhân', 8, 128, 5000, '2 SIM (Nano-SIM)', 'Android 11, ColorOS ', 'Oppo A96 sở hữu màn hình IPS LCD kích thước 6.59 inch với độ phân giải FHD+ sắc nét, thêm vào đó là chipset Snapdragon 680 8 nhân cho hiệu năng ổn định. Không chỉ vậy, sản phẩm còn trang bị cụm camera sau độ phân giải 50MP + 2MP mang đến trải nghiệp chụp ảnh ấn tượng. Ngoài ra, dung lượng pin lên đến 5.000mAh giúp người dùng có thể thoải mái sử dụng trong thời gian dài chỉ với 1 lần sạc.', 10, 4, 1, '2022-04-23'),
(52, 'SS_M14', 'Samsung Galaxy M14 5G 4GB 128GB', 1, 4390000, '1686301502_SS_M14.webp', 6.6, 'Camera sau  Camera góc rộng: 50MP, f/1.8, PDAF Camera macro: 2 MP, f/2.4 Camera đo độ sâu: 2 MP, f/2.4 Camera trước  13 MP, f/2.0', 'Exynos 1330 (5nm)', 4, 128, 6000, '2 SIM (Nano-SIM)', 'Android 13', 'Samsung Galaxy M14 thu hút được sự chú ý của người dùng với thiết kế vuông vức, thời thượng, trang bị chipset nội bộ của Samsung Exynos 1330. Màn hình hiển thị được cấu thành từ tấm nền IPS LCD thế hệ mới, đem lại những trải nghiệm hình ảnh sắc nét, sống động. Cụm camera với độ phân giải có thể đạt 50MP cùng dung lượng pin lên tới 6000mAh, giúp nâng cao hiệu quả sử dụng của người dùng.', 12, 3, 1, '2022-04-13'),
(53, 'SS_GLX_S20_FE', 'Samsung Galaxy S20 FE 256GB', 1, 7490000, '1686301737_SS_S20_FE.webp', 6.5, 'Camera sau  Camera chính: 12 MP, f/1.8 Camera tele: 8 MP, f/2.0, zoom quang 3x Camera góc siêu rộng: 12 MP, f/2.2 Camera trước  32 MP, f/2.0, AF', 'Snapdragon 865', 8, 256, 4500, '2 SIM (Nano-SIM)', 'Android 10, One UI 2', 'Android 10, One UI 2.5', 12, 4, 1, '2022-04-09'),
(54, 'SS_GLX_A53', 'Samsung Galaxy A53 (5G)', 1, 7690000, '1686301899_SS_A53.webp', 6.5, 'Camera sau  Camera chính góc rộng: 64 MP, f/1.8, PDAF, OIS Camera góc siêu rộng: 12 MP, f/2.2, 123˚ Camera macro: 5 MP, f/2.4 Cảm biến độ sâu: 5 MP, f/2.4 Camera trước  32 MP, f/2.2', 'Exynos 1280 8 nhân', 8, 128, 5000, '2 SIM (Nano-SIM)', 'Android 12', 'Năm 2023, Samsung Galaxy A53 ra mắt với màn hình Super AMOLED 6.4 inch tràn viền vô cực Infinity-O, độ sáng đến 1000nits, tần số quét lên đến 120Hz. Kèm với đó là cụm 3 camera phân giải cao 50.0 MP + 12.0 MP + 5.0 MP với tính năng ổn định kỹ thuật số và Auto-framing kết hợp chống rung OIS.', 10, 5, 1, '2023-02-05'),
(55, 'SS_GLX_A13', 'Samsung Galaxy A13 (4G)', 1, 3590000, '1686302023_SS_A13.webp', 6.6, 'Camera sau  50MP + 5MP + 2MP + 2MP Camera trước  8MP, f/2.2', 'Exynos 850 8 nhân', 4, 128, 5000, '2 SIM (Nano-SIM)', 'Android 12', 'Samsung A13 có màn hình 6.6 inch, với công nghệ TFT LCD, càng tăng cảm giác ấn tượng khi sử dụng, với cụm camera sắc nét, 50 MP với camera sau và camera trước là 8MP, thỏa sức với đam mê chụp ảnh của bản thân. Dung lượng điện thoại là 4GB+ 128Gb, xem phim, lướt web nhiều giờ liền. Dung lượng pin của điện thoại lên đến 5.000 mAh, sử dụng phục vụ nhu cầu cá nhân khác nhau.', 13, 5, 1, '2022-06-05'),
(56, 'SS_GLX_S23', 'Samsung Galaxy S23 8GB 256GB', 1, 20490000, '1686302164_SS_S23.webp', 6.1, 'Camera sau  Chính 50 MP & Phụ 12 MP, 10 MP Camera trước  12MP, f/2.2', 'Snapdragon 8 Gen 2', 8, 256, 3900, '2 Nano-SIM + eSIM', 'Android', 'Samsung S23 là phiên bản điện thoại cao cấp của Samsung. Galaxy S23 8GB 256GB Sở hữu diện mạo tinh tế mới mẻ đi đầu xu hướng, bên cạnh đó là màn hình chất lượng, hiệu năng mạnh mẽ và cụm camera siêu chất sẽ mang tới những trải nghiệm ấn tượng cho người dùng ngay từ lần chạm đầu tiên.', 15, 4, 1, '2023-01-14'),
(57, 'Xiao_Note12', 'Xiaomi Redmi Note 12', 5, 4590000, '1686320749_Xiao_Note12.webp', 6.67, 'Camera sau  Camera chính: 50MP, f/1.8 Camera góc rộng: 8MP, f/2.2 Camera Macro: 2MP, f/2.4 Camera trước  13MP, f/2.45', 'Qualcomm Snapdragon 685', 4, 128, 5000, '2 SIM (Nano-SIM)', 'Android 12', 'Xiaomi Redmi Note 12 sở hữu màn hình Super AMOLED với tần số quét 120Hz giúp trải nghiệm chạm vuốt diễn ra mượt mà, camera AI 50MP chất lượng. Bên cạnh đó, điện thoại sẽ được chạy trên con chip Qualcomm Snapdragon 685 kết hợp với card đồ họa GPU Qualcomm Adreno 610 mang lại trải nghiệm dùng ổn định. Điện thoại Xiaomi Redmi Note 12 mang lại thời gian sử dụng vượt trội với viên pin 5000mAh cùng sạc nhanh công suất 33W.', 12, 4, 1, '2022-04-21'),
(58, 'Xiao_12T', 'Xiaomi 12T 8GB 128GB', 5, 9690000, '1686320866_Xiao_12T.webp', 6.67, 'Camera sau  108MP + 8MP + 2MP Camera trước  20MP', 'MediaTek Dimensity 8100 Ultra', 8, 128, 5000, '2 SIM (Nano-SIM)', 'Android 12, MIUI 13', 'Xiaomi 12T là sản phẩm được nhiều tín đồ công nghệ đánh giá cao với màn hình AMOLED 6.67 inch độ phân giải cao, tần số quét 120Hz, chip MediaTek Dimensity 8100-Ultra, RAM 8GB và bộ nhớ trong 128GB. Thêm vào đó camera chính 108MP hỗ trợ chống rung OIS và sạc nhanh 120W cho trải nghiệm sử dụng cực chất. ', 16, 6, 1, '2022-07-03'),
(59, 'Xiao_Note12_Pro', 'Xiaomi Redmi Note 12 Pro 5G', 5, 8990000, '1686320958_Xiao_Note12_pro.webp', 6.67, 'Camera sau  Camera góc rộng: 50MP, f/1.9, PDAF, OIS Camera góc siêu rộng: 8 MP, f/1.9, 119˚ Camera macro: 2 MP, f/2.4 Camera trước  Camera góc rộng: 16 MP', 'MediaTek Dimensity 1080 8 nhân', 8, 256, 5000, '2 SIM (Nano-SIM)', 'Android 12', 'Xiaomi Redmi Note 12 Pro sở hữu cấu hình vượt trội gồm chip MediaTek Dimensity 1080, hệ thống ba camera với cảm biến chính 50MP và mạng 5G. Ngoài ra, màn hình Note 12 Pro 5G có kích thước khá lớn khoảng 6.67 inch, tấm nền AMOLED, tần số quét 120Hz khiến chiếc điện thoại nổi bật trong tầm giá dưới 8 triệu.', 12, 5, 1, '2022-07-09'),
(60, 'Xiao_Note12S', 'Xiaomi Redmi Note 12S', 5, 6190000, '1686321055_Xiao_Note12s.webp', 6.43, 'Camera sau  Camera chính: 108MP, f/1.89 Camera góc siêu rộng: 8MP, f/2.2, FOV 118° Camera cận cảnh: 2MP, f/2.4 Camera trước  16MP, f/2.45', 'MediaTek Helio G96', 8, 256, 5000, '2 SIM (Nano-SIM)', 'Android 13', 'Xiaomi Redmi Note 12S sở hữu màn hình 6.43 inch, tấm nền AMOLED, tần số quét 90Hz. Điện thoại còn sở hữu camera chính 108MP cùng hiệu năng vượt trội với con chip MediaTek Helio G96, RAM 8GB. Về thời lượng sử dụng, điện thoại Xiaomi này được trang bị viên pin dung lượng pin 5.020 mAh, hỗ trợ sạc nhanh 33W.', 16, 3, 1, '2022-09-18'),
(61, 'Xiao_13', 'Xiaomi 13 8GB 256GB', 5, 17490000, '1686321196_Xiao_13.webp', 6.36, 'Camera sau  Camera chính: 50MP, f/1.8, HyperOIS Camera tele của Leica: 10MP, f/2.0, OIS Camera góc siêu rộng Leica: 12MP, f/2.2, Camera trước  Camera selfie trong màn hình 32MP, f/2.0', 'Chip Snapdragon® 8 thế hệ thứ ', 8, 256, 4500, '2 SIM (Nano-SIM)', 'MIUI 14, Android 13', 'Xiaomi 13 là sản phẩm mới được trang bị màn hình OLED kích thước 6.36 inch cùng tần số quét lên đến 120Hz. Bên trong Xiaomi 13 là con chip Snapdragon 8 Gen 2 mới nhất cùng bộ nhớ RAM 8GB vượt trội. Điện thoại cũng đáp ứng tốt khả năng nhiếp ảnh với camera Leica 50MP.', 13, 3, 1, '2023-03-02'),
(62, 'XIao_Note12_Pro4G', 'Xiaomi Redmi Note 12 Pro 4G 8GB 256GB', 5, 7490000, '1686321352_Xiao_Note12_Pro_4G.webp', 6.67, 'Camera sau  Camera chính: 108MP, f/1.9, 1/1.52\" Camera góc siêu rộng: 8MP, f/2.2, FOV 120° Camera cận cảnh: 2MP, f/2.4 Camera chiều sâu: 2MP, f/2.4 Camera trước  16MP, f/2.45', 'Qualcomm SM7150 Snapdragon 732', 8, 256, 5000, '2 SIM (Nano-SIM)', 'MIUI 13 dựa trên And', 'Xiaomi Redmi Note 12 Pro 4G là mẫu điện thoại tầm trung mới của hãng Xiaomi vừa được ra mắt vào tháng 4 năm 2023. Mẫu điện thoại Xiaomi mới này được trang bị màn hình 6.67 inch cùng tần số quét tới 120Hz giúp các chuyển động mượt mà, đặc biệt trong các trận chiến game. Xiaomi Redmi Note 12 Pro 4G cũng sẽ hoạt động ổn định với con chip Snapdragon® 732G cùng bộ nhớ RAM 6GB. Điện thoại cũng đáp ứng tốt nhu cầu nhiếp ảnh của người dùng với cụm bốn camera sau, trong đó ống kính chính sở hữu độ phân giải tới 50MP.', 10, 2, 1, '2023-01-07'),
(63, 'Xiao_13_Lite', 'Xiaomi 13 Lite', 5, 9790000, '1686321663_Xiao_13_Lite.webp', 6.55, 'Camera sau  Camera chính: 50 MP, f/1.8, PDAF Camera góc siêu rộng: 8 MP, f/2.2, 119˚ Camera macro: 2 MP, f/2.4 Camera trước  Camera góc siêu rộng: 32 MP, f/2.4 Camera cảm chân dung: 8 MP', 'Chip Snapdragon 7 Gen 1 (4 nm)', 8, 256, 4500, '2 SIM (Nano-SIM)', 'Android 12, MIUI 14', 'Xiaomi 13 Lite nổi bật nhờ cấu hình mạnh với chip Snapdragon 7 Gen 1, RAM 8GB LPDDR4x, ROM 256 GB. Ngoài ra, Mi 13 Lite còn sở hữu màn hình Full HD+ AMOLED 6.55 inch, tần số quét 120 Hz, phần khuyết đục lỗ chứa 2 camera selfie 32 MP', 12, 3, 1, '2022-12-31'),
(64, 'Xiao_Note11_Pro', 'Xiaomi Redmi Note 11 Pro', 5, 5790000, '1686321779_Xiao_Note11.webp', 6.66, 'Camera sau  Camera góc rộng: 108 MP, f/1.9, PDAF Camera góc siêu rộng: 8 MP Camera Tele: 2 MP, f/2.4 Camera chân dung: 2MP f/2.4 Camera trước  16MP f/2.4', 'MediaTek Helio G96', 8, 128, 5000, '2 SIM (Nano-SIM)', 'Android 11, MIUI 12.', 'Xiaomi Redmi Note 11 Pro là sản phẩm smartphone giá rẻ của thương hiệu Xiaomi. Điện thoại sở hữu màn hình AMOLED kích thước 6.67 inch cùng độ phân giải FHD+ giúp các chi tiết hiển thị rõ nét. Bên cạnh đó, thiết bị còn được trang bị con chip MediaTek Helio G96 cùng bộ nhớ RAM 8GB giúp mang lại khả năng hoạt động ổn định và mượt mà.', 12, 2, 1, '2022-11-09'),
(65, 'Xiao_12T_Pro', 'Xiaomi 12T Pro', 5, 14690000, '1686321899_Xiao_12T_Pro.webp', 6.67, 'Camera sau  200MP + 8MP + 2MP Camera trước  20MP', 'Snapdragon 8+ Gen 1 (4 nm)', 12, 256, 5000, '2 SIM (Nano-SIM)', 'MIUMIUI 13, Android ', 'Xiaomi Mi 12T Pro sở hữu vi xử lý Snapdragon 8 Gen 1+ mạnh mẽ, RAM 12GB + Bộ nhớ trong 256GB cho không gian lưu trữ thoải mái. Thêm vào đó, cụm camera cảm biến 200MP cùng camera selfie 20MP cho ảnh chụp, video chi tiết, sắc nét. Không chỉ vậy, màn hình AMOLED DotDisplay độ phân giải FHD+ với tần số quét 120Hz mang đến hình ảnh rực rỡ, sống động.', 15, 3, 1, '2023-01-01'),
(66, 'Xiao_13_Pro', 'Xiaomi 13 Pro 12GB 256GB', 5, 23490000, '1686322017_Xiao_13_Pro.webp', 6.73, 'Camera sau  Camera chính Leica: 50MP, f/1.9, Hyper, OISIMX989 Camera tele Leica: 50MP, f/2.0, 75mm, thOIS Camera góc siêu rộng: 50MP, 115° FOV, f/2.2 Camera trước  32MP, f/2.0', 'Chip Snapdragon® 8 Gen 2', 12, 256, 4820, '2 SIM (Nano-SIM)', 'Android 13', 'Xiaomi 13 Pro là mẫu flagship mới sở hữu màn hình OLED 6.7 inch cùng tần số quét lên tới 120 Hz. Điện thoại sở hữu một cấu hình vượt trội với con chip Snapdragon gen 2 thế hệ mới, viên pin 4800 mAh hỗ trợ sạc nhanh công suất 120W. Camera máy mang lại cho người dùng khả năng nhiếp ảnh chuyên nghiệp với cụm camera Leica 50MP.', 10, 3, 1, '2023-03-11'),
(67, 'Xiao_12_Pro(5G)', 'Xiaomi 12 Pro (5G)', 5, 14490000, '1686322143_Xiao_12_Pro.webp', 6.73, 'Camera sau  Camera góc rộng: 50 MP, f/1.9, Dual Pixel PDAF, OIS Camera tele: 50 MP, f/1.9, PDAF, 2x optical zoom Camera góc siêu rộng: 50 MP, f/2.2, 115˚ Camera trước  32 MP', 'Qualcomm SM8450 Snapdragon 8 G', 12, 256, 4600, '2 SIM (Nano-SIM)', 'Qualcomm SM8450 Snap', 'Điện thoại Xiaomi 12 Pro 5G sở hữu một thiết kế hoàn toàn khác biệt so với Xiaomi Mi 11 trước đó. Đường nét tinh tế, mượt mà, cầm mượt mịn trên tay, mặt sau là cụm camera được sắp xếp lại, mang lại điểm nhấn riêng.', 12, 3, 1, '2023-02-05'),
(68, 'Xiao_Mi11', 'Xiaomi Mi 11 Lite 5G', 5, 7490000, '1686322272_Xiao_Mi11.webp', 6.55, 'Camera sau  Camera chính: 64 MP, f/1.8 Camera góc rộng: 8 MP, f/2.2, 119˚ Camera cận cảnh: 5 MP, f/2.4 Camera trước  20 MP, f/2.5', 'Snapdragon 780G (5 nm)', 8, 128, 4250, '2 SIM (Nano-SIM)', 'Android 11, MIUI 12', 'Xiaomi Mi 11 Lite phiên bản 5G có vẻ ngoài khá bắt mắt với màn hình tràn viền, mang đến cho người dùng kích thước màn hình lớn hơn, không gian hiển thị thoải mái. Camera selfie dạng đục lỗ ở góc trên bên trái màn hình, vừa tiết kiệm diện tích, vừa tạo cho smartphone vẻ đẹp sang trọng, cao cấp hơn với màn hình 90Hz.', 10, 1, 1, '2022-07-11'),
(69, 'Xiao_Poco_F4', 'Xiaomi Poco F4', 5, 7790000, '1686322424_Xiao_Poco_F4.webp', 6.67, 'Camera sau  Camera góc rộng: 64MP Camera góc siêu rộng: 8MP Camera macro: 2MP Camera trước  20MP, f/2.45', 'Snapdragon 870', 6, 128, 4500, '2 SIM (Nano-SIM)', 'MIUI 13', 'Xiaomi Poco F4 sản phẩm làm nhiều tính đồ công nghệ mong chờ, với thiết kế và hiệu năng nổi bật, mang sự đặt biệt của thương hiệu điện thoại Xiaomi. Poco 4 đã được hoàn thiện trong quá trình sản xuất và đưa ra thị trường sau một thời gian dài, chắc chắn sẽ không khiến người dùng thất vọng về cả giá tiền và chất lượng mà máy mang lại.', 12, 2, 1, '2022-08-09'),
(70, 'Xiao_11', 'Xiaomi 11 Lite 5G NE', 5, 6990000, '1686323628_Xiao_11.webp', 6.55, 'Camera sau  Camera chính: 64MP, f/1.79, 6P Camera góc siêu rộng: 8MP, f/2.2 Camera tele: 5MP, f/2.4, Contrast AF (3cm-7cm) Camera trước  20MP, f/2.24', 'Snapdragon™ 778G', 8, 128, 4250, '2 SIM (Nano-SIM)', 'Mui', 'MIUI 12.5, Android 11\r\n', 12, 2, 1, '2022-05-08'),
(71, 'Xiao_Note11_ProPlus', 'Xiaomi Redmi Note 11 Pro Plus 5G', 5, 8590000, '1686323890_Xiao_Note11_Pro.webp', 6.67, 'Camera sau  Camera góc rộng: 108 MP, f/1.8, PDAF Camera góc siêu rộng: 8 MP, f/2,2, FOV 120° Camera macro: 2 MP, f/2.4 Camera trước  16 MP', 'MediaTek Dimensity 920 5G (6 n', 8, 256, 4500, '2 SIM (Nano-SIM)', 'Android 11, MIUI 12.', 'Redmi Note 11 Pro Plus chính là mẫu smartphone tầm trung tiếp theo được Xiaomi cho ra mắt với giá hấp dẫn cùng với thiết kế mới tinh tế, cấu hình mạnh mẽ và cụm camera chất lượng cao cho trải nghiệm nhiếp ảnh đầy hứa hẹn.', 18, 4, 1, '2023-06-04'),
(72, 'One_Nord_CE', 'OnePlus Nord CE 3 Lite', 8, 5990000, '1686324167_One_Nord_C3.webp', 6.72, 'Camera sau  Camera góc rộng:108 MP, f/1.7, PDAF Camera macro: 2 MP, f/2.4 Camera cảm biến độ sâu: 2 MP, f/2.4 Camera trước  Camera góc rộng:16 MP, f/2.4', 'Snapdragon 695 5G', 8, 256, 5000, '2 SIM (Nano-SIM)', 'Android 13', 'OnePlus Nord CE 3 Lite 5G trang bị màn hình lớn 6.72 inch, độ phân giải lên đến 2400 x 1080 pixel, nhiều màu sắc khác nhau, giúp bạn dễ dàng lựa chọn. Cụm camera của điện thoại vô cùng sắc nét: camera sau 108 MP + 2 MP + 2MP, camera trước 16MP. Bên cạnh đó, chiếc điện thoại Oneplus sở hữu con chipset mạnh mẽ, kết hợp với dung lượng 6GB+128GB và viên pin lên đến 5.000 mAh, đáp ứng nhu cầu khác nhau của khách hàn', 10, 2, 1, '2023-01-13'),
(73, 'One_11', 'OnePlus 11 16GB 256GB', 8, 19690000, '1686324245_One_11.webp', 6.7, 'Camera sau  Camera góc rộng: 50MP, Laser AF, OIS Camera tele: 32MP, PDAF, OIS, zoom quang 2x Camera góc siêu rộng: 48MP, AF Camera trước  Camera góc rộng: 16 MP, ƒ/2.45 hỗ trợ EIS', 'Snapdragon 8 Gen 2 (4 nm)', 16, 258, 5000, '2 SIM (Nano-SIM)', 'OxygenOS trên nền tả', 'OnePlus 11 có thiết kế sang trọng, hiệu năng mạnh mẽ từ chip Snapdragon 8 Gen 2 và OxygenOS 13, màn hình Super Fluid AMOLED 120Hz 2K cùng sạc nhanh Super VOOC 100W. OnePlus 11 sẽ là lựa chọn hoàn hảo, hỗ trợ người dùng xử lý công việc một cách hiệu quả và đáp ứng nhiều nhu cầu khác nhau của người dùng.', 12, 3, 1, '2023-04-04'),
(74, 'One_10T', 'Oneplus 10T 5G 16GB 256GB', 8, 15990000, '1686324409_One_10T.webp', 6.7, 'Camera sau  Camera góc rộng: 50 MP, OIS Camera góc siêu rộng: 8MP Camera macro: 2 MP, f/2.4 Camera trước  Camera góc rộng: 16 MP, f/2.4', 'Camera sau  Camera góc rộng: 5', 16, 256, 48000, '2 SIM (Nano-SIM)', 'Android 12, OxygenOS', 'Điện thoại OnePlus 10T hứa hẹn sẽ mang đến một diện mạo ấn tượng mới cho các fan của dòng smartphone OnePlus. Hãng vẫn áp dụng ngôn ngữ thiết kế 3D bo tròn mặt lưng từ đời Pro lên sản phẩm OnePlus 10T, giúp chiếc máy giữ được vẻ sang trọng hấp dẫn. Ngoài ra, OnePlus 10T còn thay đổi với chất liệu nhựa cứng kết hợp kính cường lực bền tạo nên phong cách đặc trưng cho máy.', 20, 5, 1, '2023-01-14'),
(75, 'One_10T_8G', 'Oneplus 10T 5G 8GB 128GB', 8, 13990000, '1686324640_One_10T_8GB.webp', 6.7, 'Camera sau  Camera góc rộng: 50 MP, OIS Camera góc siêu rộng: 8MP Camera macro: 2 MP, f/2.4 Camera trước  Camera góc rộng: 16 MP, f/2.4', 'Qualcomm SM8450 Snapdragon 8+ ', 8, 128, 4800, '2 SIM (Nano-SIM)', 'Android 12, OxygenOS', 'Oneplus 10T 5G 8GB 128GB là một trong những chiếc flagship được nhiều bạn mong chờ nhất hiện nay nhờ được trang bị bộ cấu hình ấn tượng. Chiếc điện thoại Oneplus đi kèm với con chip Snapdragon 8+ gen 1, dung lượng RAM 8GB, công suất sạc nhanh 150W cùng nhiều tính năng tiên tiến giúp những trải nghiệm chiến game vô cùng mượt mà.', 12, 3, 1, '2023-02-04'),
(76, 'One_8T', 'OnePlus 8T 5G', 8, 10990000, '1686324730_One_8T.webp', 6.55, 'Camera sau  Chính 48 MP & Phụ 16 MP, 5 MP, 2 MP Camera trước  16 MP', 'Snapdragon 865', 12, 256, 4500, '2 SIM (Nano-SIM)', 'Android 11', 'OnePlus 8T 5G là chiếc flagship mới nhất của OnePlus. Máy gây ấn tượng với người dùng không chỉ bởi cấu hình mạnh mẽ mà còn là tốc độ sạc siêu nhanh. Chắc chắn đây là mẫu điện thoại mà rất nhiều người mong muốn có thể sở hữu.', 10, 3, 1, '2022-12-06'),
(77, 'One_Ace', 'OnePlus Ace 2V', 8, 7900000, '1686324864_One_Ace.webp', 6.74, 'Camera sau  Camera góc rộng: 50MP, f/1.8, 24mm, 1/1.56\", 1.0µm, PDAF, OIS Camera góc siêu rộng: 8 MP, f/2.2, 16mm, 120˚, 1/4.0\", 1.12µm Camera macro: 2MP, f/2.4 Camera trước  Camera góc rộng: 16MP, f/', 'Snapdragon 8+ Gen 1 (4 nm)', 12, 256, 5000, '2 SIM (Nano-SIM)', 'Android 13', 'Là phiên bản tối giản của chiếc OnePlus Ace V2 ra mắt đầu năm nay, OnePlus Ace 2V sẽ được tân trang lại và sở hữu một thiết kế hoàn toàn mới. Đi kèm thiết kế mới là sự thay đổi về bộ vi xử cũng như tối giản cấu hình về một lựa chọn duy nhất. ', 12, 1, 1, '2022-11-03'),
(78, 'Leno_Y70', 'Lenovo Legion Y70 ', 7, 7950000, '1686325553_Leno_Y70.webp', 6.67, 'Camera sau: 50 MP, (góc rộng), PDAF, OIS 13 MP, 120˚ (góc siêu rộng), AF 2 MP, f/2.4, (đo chiều sâu) Quay phim: 8K@30fps, 4K@30/60fps, 1080p@30/60/240fps, gyro-EIS . Camera sau : 16MP', 'Snapdragon 8 Gen 2 (4 nm)', 8, 128, 5100, '2 SIM (Nano-SIM)', 'Android 12, ZUI 14', 'Chiếc máy có thiết kế mỏng nhẹ với trọng lượng chỉ 209g nhưng mang hiệu suất cực kỳ mạnh mẽ nhờ con chip Snapdragon 8+ Gen 1. Bên cạnh đó, màn hình của Legion Y70 cũng được sử dụng tấm nền OLED cao cấp, hệ thống 3 camera phía sau với độ phân giải cảm biến chính 50 MP, hỗ trợ công nghệ chống rung quang học OIS.', 12, 2, 1, '2022-08-09'),
(79, 'Leno_Y90', 'Lenovo Legion Y90', 7, 10950000, '1686325764_Leno_Y90.webp', 6.92, 'Camera sau  Siêu rộng: 12MP F2.2 (Dual Pixel AF) Chính: 200MP F1.7 OIS ±3° (Super Quad Pixel AF) Tele 1: 10MP F4.9 (10X, Dual Pixel AF) OIS, Tele 2: 10MP F2.4 (3X, Dual Pixel AF) OIS Thu phóng chuẩn k', 'Snapdragon 8 Gen 2 (4 nm)', 18, 640, 5600, '2 SIM (Nano-SIM)', 'Android 12, ZUI 13', 'Với Lenovo Legion Y90 chúng ta sẽ tiếp tục được chiêm ngưỡng một siêu phẩm hiệu năng khi là một trong những dòng gaming phone trang bị chip Snapdragon 8 Gen 1 mạnh mẽ nhất của Qualcomm ở thời điểm hiện tại. Mẫu gaming phone thế hệ tiếp theo của Lenovo sẽ được trang bị màn hình 6.92 inches E4 AMOLED cùng tần số quét 144Hz và tần số lấy mẫu cảm ứng 720Hz khá tương đồng so với Legion 2 Pro đã ra mắt từ trước đó.', 12, 3, 1, '2022-08-28'),
(80, 'Leno_2_Pro', 'Lenovo Legion 2 Pro', 7, 10250000, '1686326290_Leno_2_Pro.webp', 6.92, 'Camera sau  Chính 50 MP & Phụ 5 MP, 2 MP Camera trước  13MP', 'Snapdragon 888 5G 8 nhân', 16, 256, 5500, '2 SIM (Nano-SIM)', 'Android 11, Legion O', 'Gaming Phone sở hữu con chip mạnh mẽ nhất Thế Giới thời điểm hiện tại là Snapdragon 888 với tiến trình 5nm cho ra 1 hiệu năng khủng khiếp và tiết kiệm điện năng tuyệt vời. Lenovo Legion 2 Pro còn có đa nhiệm mượt mà với RAM khủng ở cả 2 phiên bản 12-16GB. Với siêu Gaming Phone này của Lenovo thì người dùng có thể chơi được tất cả các tựa game trên di động với cấu hình cao nhất và trải nghiệm tốt nhất.', 12, 3, 1, '2023-03-14');
INSERT INTO `tbl_sanpham` (`id_sp`, `ma_sp`, `ten_sp`, `id_hangsp`, `gia`, `hinhanh`, `kt_mh`, `camera`, `chipset`, `ram`, `rom`, `pin`, `sim`, `heDH`, `mota`, `soluong`, `daban`, `trangthai`, `time_rammat`) VALUES
(81, 'Leno_Pro', 'Lenovo Legion Pro(Duel)', 7, 11950000, '1686326404_Leno_Pro.webp', 6.65, 'Camera sau  Camera góc rộng: 50 MP, OIS Camera góc siêu rộng: 8MP Camera macro: 2 MP, f/2.4 Camera trước  Camera góc rộng: 16 MP, f/2.4', 'snapdragon 865+ (7nm+)', 12, 256, 5000, '2 SIM (Nano-SIM)', 'Android 10, Legion O', 'Lenovo Legion Pro là điện thoại thuộc dòng Legion chuyên chơi Game. Lenovo Legion Pro cũng chính là điện thoại được trang bị chip Snapdragon 865+ đầu tiên trên thế giới và có thiết kế cụm camera pop-up ở cạnh bên.\r\n', 12, 3, 1, '2022-11-26'),
(82, 'Leno_Z5', 'Lenovo_Z5', 7, 2790000, '1686327041_Leno_Z5.jpg', 6.2, '16+8MP', 'SDM636 Snapdragon 636', 6, 64, 3300, '2 SIM (Nano-SIM)', 'Android', 'Đây là dòng điện thoại tối ưu của Lenovo', 5, 1, 1, '2021-08-09'),
(83, 'LG_Velvet', 'LG Velvet 5G 8Gb/128Gb ', 6, 5490000, '1686327183_LG_Velvet.webp', 7.9, '48 MP, f/1.8, 26mm (wide), 1/2.0\", 0.8µm, PDAF 8 MP, f/2.2, 120˚, 15mm (ultrawide), 1/4.0\", 1.12µm 5 MP, f/2.4, (depth)', 'SM7250 Snapdragon 765G 5G', 6, 128, 4300, '2 SIM (Nano-SIM)', 'Android 10', '', 12, 2, 1, '2022-08-09'),
(84, 'LG_ThinQ', 'LG V50 ThinQ 5G', 6, 5990000, '1686327852_LG_ThinQ.webp', 6.5, '12 MP, 27mm (wide), f/1.5, 1/2.55\", 1.4µm, dual pixel PDAF, 3-axis OIS 12 MP, 52mm (telephoto), f/2.4, 1/3.4\", 1.0µm, 2x optical zoom, PDAF, OIS 16 MP, 16mm (ultrawide), f/1.9, 1/3.1\", 1.0µm, no AF', 'Snapdragon 855 (7 nm)', 6, 128, 4500, '2 SIM (Nano-SIM)', 'Android', '', 12, 3, 1, '2023-06-03'),
(85, 'LG_G8', 'LG G8 ThinQ', 6, 4570000, '1686327934_LG_G8.webp', 6.5, 'Camera sau  Chính 50 MP & Phụ 5 MP, 2 MP Camera trước  13MP', 'Snapdragon 8 Gen 2 (4 nm)', 8, 128, 4325, '2 SIM (Nano-SIM)', 'Android 12', '', 12, 4, 1, '2022-07-09'),
(86, 'LG_V40', 'LG V40 ThinQ ', 6, 6900000, '1686328007_LG_V40.webp', 6.7, 'Camera sau  Chính 50 MP & Phụ 5 MP, 2 MP Camera trước  13MP', 'Qualcomm Snapdragon 695', 8, 128, 4500, '2 SIM (Nano-SIM)', 'Android', '', 4, 1, 1, '2022-08-09'),
(87, 'Vs_Aris', 'Vsmart Aris 8GB 128GB', 4, 3999000, '1686328297_Vsmat_Aris.webp', 6.4, '64MP + 8MP + 8MP + 2MP', 'Snapdragon 730 8 nhân', 8, 128, 4500, '', 'Android 10, VOS 3.0', 'ạn đang tìm cho mình một chiếc điện thoại có nằm phân khúc cận cao cấp có khả năng đa nhiệm cao để có thể hỗ trợ bạn trong công việc cũng như học tập. Chiếc điện thoại Vsmart Aris 8GB 128GB là thiết bị giúp bạn thực hiện điều đó bởi sở hữu bộ nhớ RAM 8GB.', 12, 2, 1, '2021-12-19'),
(88, 'Vs_Star', 'Vsmart Star', 4, 2290000, '1686328426_Vs_Star.jpg', 5.7, '8+2Mp', 'Qualcomm Snapdragon 215', 2, 16, 3900, '2 SIM (Nano-SIM)', 'Android', '', 3, 1, 1, '2021-07-09'),
(89, 'ip_13', 'iPhone 13 128GB ', 2, 16690000, '1686330861_Ip_13.webp', 6.1, 'Camera góc rộng: 12MP, f/1.6 Camera góc siêu rộng: 12MP, ƒ/2.4', 'Apple A15', 4, 128, 3420, '2 Nano-SIM + eSIM', 'iOS 15', 'Về kích thước, iPhone 13 sẽ có 4 phiên bản khác nhau và kích thước không đổi so với series iPhone 12 hiện tại. Nếu iPhone 12 có sự thay đổi trong thiết kế từ góc cạnh bo tròn (Thiết kế được duy trì từ thời iPhone 6 đến iPhone 11 Pro Max) sang thiết kế vuông vắn (đã từng có mặt trên iPhone 4 đến iPhone 5S, SE).', 12, 1, 1, '2021-01-08'),
(90, 'ip_13_prm', 'iPhone 13 Pro Max', 2, 24700000, '1686331046_ip_13prm.webp', 6.7, 'Camera góc rộng: 12MP, ƒ/1.5 Camera góc siêu rộng: 12MP, ƒ/1.8 Camera tele : 12MP, /2.8', 'Apple A15', 6, 128, 4325, '2 Nano-SIM + eSIM', 'iOS 15', 'iPhone 12 ra mắt cách đây chưa lâu, thì những tin đồn mới nhất về iPhone 13 Pro Max đã khiến bao tín đồ công nghệ ngóng chờ. Cụm camera được nâng cấp, màu sắc mới, đặc biệt là màn hình 120Hz với phần notch được làm nhỏ gọn hơn chính là những điểm làm cho thu hút mọi sự chú ý trong năm nay.', 12, 3, 1, '2022-03-11'),
(91, 'ip_12_128GB', 'iPhone 12 128GB |  VN/A', 2, 15700000, '1686331192_ip_12_128.webp', 6.1, '12 MP, f/1.6, 26mm (wide), 1.4µm, dual pixel PDAF, OIS 12 MP, f/2.4, 120˚, 13mm (ultrawide), 1/3.6\"', 'Apple A14 Bionic (5 nm)', 4, 128, 4325, '2 Nano-SIM + eSIM', 'iOS 14.1', 'iPhone 12 hiện nay là cái tên “sốt xình xịch” bởi đây là một trong 4 siêu phẩm vừa được ra mắt của Apple với những đột phá về cả thiết kế lẫn cấu hình. Phiên bản Apple iPhone 12 128GB chính là một trong những chiếc iPhone được săn đón nhất bởi dung lượng bộ nhớ khủng, cho phép bạn thoải mái với vô vàn ứng dụng.', 12, 4, 1, '2022-08-27'),
(92, 'ip_se', 'iPhone SE 2022 | VN/A', 2, 10390000, '1686331448_ip_se.webp', 4.7, 'Camera góc rộng: 12MP, ƒ/1.8', 'Chip A15 Bionic 6 nhân', 4, 64, 2018, '2 SIM (nano‑SIM và eSIM)', 'iOS 15', 'Nếu các thế hệ trước đó được Apple trang bị khung nhôm hoặc khung thép không gỉ thì tới SE 2022, máy được Apple trang bị khung nhôm không chứa Carbon. Đây là thế hệ iPhone đầu tiên của Apple được trang khung viền này.', 15, 2, 1, '2022-05-10'),
(93, 'ip_11', 'iPhone 11 64GB ', 2, 10350000, '1686331549_ip_11.webp', 6.1, 'Camera kép 12MP: - Camera góc rộng: ƒ/1.8 aperture - Camera siêu rộng: ƒ/2.4 aperture', 'A13 Bionic', 4, 64, 3100, '2 SIM (nano‑SIM và eSIM)', 'iOS 13', 'iPhone 11 sở hữu hiệu năng khá mạnh mẽ, ổn định trong thời gian dài nhờ được trang bị chipset A13 Bionic. Màn hình LCD 6.1 inch sắc nét cùng chất lượng hiển thị Full HD của máy cho trải nghiệm hình ảnh mượt mà và có độ tương phản cao. Hệ thống camera hiện đại được tích hợp những tính năng công nghệ mới kết hợp với viên Pin dung lượng 3110mAh, giúp nâng cao trải nghiệm của người dùng.', 12, 3, 1, '2022-04-01'),
(94, 'RM_C21Y', 'realme C21Y 4GB 64GB', 9, 2990000, '1686479191_RM_C21Y.webp', 6.5, 'Camera sau  Chính 13 MP & Phụ 2 MP, 2 MP Camera trước  5 MP', 'Spreadtrum T610 8 nhân', 4, 64, 5000, '2 SIM (Nano-SIM)', 'Android 11', 'realme C21Y là dòng điện thoại tầm trung phù hợp cho những người dùng đơn giản và không cầu kì. Giá cả phù hợp cho mọi người đều có thể dùng được', 12, 2, 1, '2021-12-11'),
(95, 'RM_GT_NEO5', 'realme GT Neo 5', 9, 9950000, '1686479321_RM_GT_neo5.webp', 6.7, 'Camera sau  Camera chính Sony IMX 890 OIS: 50MP, f/1.88 Camera góc siêu rộng: 8MP, 112° Camera tele: 2MP, f/3.3 Camera trước  Camera góc rộng: 16MP, f/2.45', 'Chip Snapdragon® 8+ 5G', 16, 256, 5000, '2 SIM (Nano-SIM)', 'Android 13', 'Điện thoại Realme GT Neo 5 được trang bị con chip cao cấp Qualcomm Snapdragon 8+ Gen 1 được sản xuất trên tiến trình 6 nm cùng GPU Adreno 730, máy cũng sở hữu bộ nhớ RAM 16GB ấn tượng cùng bộ nhớ lưu trữ 256GB. Điện thoại sở hữu màn hình kích thước 6.74 inches cùng tấm nền AMOLED, tần số quét 144Hz, cùng với đó là bộ ba camera sau chất lượng (Camera chính 50MP, camera siêu rộng 8MP và camera microscope 2MP), phía trước là camera selfie 16MP.', 15, 4, 1, '2023-01-11'),
(96, 'RM_10_Pro', 'realme 10 Pro Plus', 9, 5990000, '1686479443_RM_10_Plus.webp', 6.7, 'Camera sau  Camera góc rộng: 108 MP, PDAF, OIS Camera góc siêu rộng: 8MP Camera góc sâu: 2MP, f/2.4 Camera trước  Camera góc rộng: 16MP, f/2.4, 27mm, 1 / 3.09 \", 1.0µm', 'MediaTek Dimensity 1080 (6 nm)', 6, 64, 5000, '2 SIM (Nano-SIM)', 'Android 12', 'Realme 10 Pro Plus phiên bản điện thoại Realme cao cấp nhất thuộc dòng sản phẩm Realme 10 Series sắp được ra mắt trong tháng 11 2022, sẽ được tích hợp các công nghệ đột phá mới như màn hình AMOLED 6.7 inch với các cạnh cong và tốc độ lấy mẫu lên đến 2160Hz, chip Dimensity 1080 mạnh mẽ, 8GB/12GB RAM cùng công nghệ sạc nhanh 67W.', 12, 3, 1, '2022-08-15'),
(97, 'RM_GT3', 'Realme GT3', 9, 14990000, '1686480158_RM_GT3.webp', 6.74, 'Camera sau  Camera góc rộng: 50MP, f/1.9, 24mm, 1/1.56\", 1.0µm, PDAF, OIS Camera góc siêu rộng: 8MP, f/2.2, 16mm, 112˚, 1/4.0\", 1.12µm Microscope: 2 MP, f/3.3, 20mm', 'Qualcomm SM8475 Snapdragon 8+ ', 8, 128, 4600, '2 SIM (Nano-SIM)', 'Android 13', 'Realme GT3 được trang bị con chip Snapdragon 8+ Gen 1 mang lại hiệu năng mạnh mẽ cùng với bộ nhớ RAM 8GB đa nhiệm ổn định và viên pin 4600 mAh hỗ trợ sạc nhanh công suất 240W cho thời gian sử dụng nhiều giờ cùng thời gian sạc pin nhanh chóng. Máy được trang bị camera chính 50MP hỗ trợ chụp ảnh cùng quay phim rõ nét. Điện thoại thông minh Realme mới này sẽ được ra mắt vào tháng 3 năm 2023.  ', 14, 4, 1, '2024-03-11'),
(98, 'RM_C51', 'Realme C51', 9, 6990000, '1686480412_RM_C51.webp', 6.5, '13 MP + 2 MP + 2 MP', 'Unisoc SC9863A1', 3, 32, 6000, '2 SIM (Nano-SIM)', 'realme UI Go Edition', 'Với thiết kế hiện đại, cao cấp, sẽ rất khó để bạn nhận ra được Realme C51 là mẫu thuộc phân khúc giá rẻ. Điện thoại sở hữu màn hình kích thước 6.5 inch cùng tấm nền IPS LCD giúp mang lại trải nghiệm hiển thị sống động. Bên cạnh đó máy còn mang lại trải nghiệm dùng mượt mà với con chip Unisoc SC9863A1 cùng bộ nhớ RAM 2GB.\r\n\r\n', 12, 2, 1, '2022-03-16'),
(99, 'ip_14_prm', 'Redmi K40s', 5, 48000000, '1686580619_3_51_1_7.webp', 6.67, 'Camera chính: 48 MP, f/1.8, 24mm, 1.22µm, PDAF, OIS Camera góc siêu rộng: 12 MP, f/2.2, 13mm, 120˚, 1.4µm, PDAF Camera tele: 12 MP, f/2.8, 77mm (telephoto), PDAF, OIS, 3x optical zoom Cảm biến độ sâu ', 'Snapdragon 870', 6, 128, 4323, ' 2 SIM (nano‑SIM và eSIM)', 'Android 11', 'a', 22, 0, 1, '2023-06-06');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`code_cart`),
  ADD KEY `id_khachhang` (`id_khachhang`);

--
-- Chỉ mục cho bảng `tbl_cart_info`
--
ALTER TABLE `tbl_cart_info`
  ADD PRIMARY KEY (`id_cart_infor`),
  ADD KEY `code_cart` (`code_cart`,`id_sp`),
  ADD KEY `id_sp` (`id_sp`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_khachhang`);

--
-- Chỉ mục cho bảng `tbl_hangsp`
--
ALTER TABLE `tbl_hangsp`
  ADD PRIMARY KEY (`id_hangsp`);

--
-- Chỉ mục cho bảng `tbl_mucgia`
--
ALTER TABLE `tbl_mucgia`
  ADD PRIMARY KEY (`id_mucgia`),
  ADD UNIQUE KEY `mucgia` (`mucgia`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sp`),
  ADD KEY `id_hangsp` (`id_hangsp`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_info`
--
ALTER TABLE `tbl_cart_info`
  MODIFY `id_cart_infor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_hangsp`
--
ALTER TABLE `tbl_hangsp`
  MODIFY `id_hangsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_mucgia`
--
ALTER TABLE `tbl_mucgia`
  MODIFY `id_mucgia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`id_khachhang`) REFERENCES `tbl_dangky` (`id_khachhang`);

--
-- Các ràng buộc cho bảng `tbl_cart_info`
--
ALTER TABLE `tbl_cart_info`
  ADD CONSTRAINT `tbl_cart_info_ibfk_1` FOREIGN KEY (`code_cart`) REFERENCES `tbl_cart` (`code_cart`),
  ADD CONSTRAINT `tbl_cart_info_ibfk_2` FOREIGN KEY (`id_sp`) REFERENCES `tbl_sanpham` (`id_sp`);

--
-- Các ràng buộc cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD CONSTRAINT `tbl_sanpham_ibfk_1` FOREIGN KEY (`id_hangsp`) REFERENCES `tbl_hangsp` (`id_hangsp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
