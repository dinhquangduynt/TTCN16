-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 06, 2019 lúc 04:52 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thuctapcongnhan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `maad` int(11) NOT NULL,
  `tendangnhap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`maad`, `tendangnhap`, `matkhau`, `hoten`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `machitiethoadon` int(11) NOT NULL,
  `mahoadon` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `tensp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(20) NOT NULL,
  `dongia` int(50) NOT NULL,
  `thanhtien` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`machitiethoadon`, `mahoadon`, `masp`, `tensp`, `hinhanh`, `soluong`, `dongia`, `thanhtien`) VALUES
(19, 40, 1, 'arduino due r3', 'arduino_due_r3_medium.jpg', 1, 430000, 430000),
(20, 40, 22, 'Nguồn MP1520D(15V20A)', 'nguon_da_nang.jpg', 1, 3000000, 3000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `madanhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`madanhmuc`, `tendanhmuc`) VALUES
(1, 'ARDUINO'),
(2, 'IC'),
(3, 'NGUON-PIN-ACQUY'),
(4, 'CONECTOR');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahoadon` int(11) NOT NULL,
  `makhachhang` int(11) NOT NULL,
  `tenkhachhang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` int(50) NOT NULL,
  `diachigiaohang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaylap` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghichu` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ptthanhtoan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tongtien` int(100) NOT NULL,
  `tinhtrang` bit(1) NOT NULL,
  `dathanhtoan` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`mahoadon`, `makhachhang`, `tenkhachhang`, `sdt`, `diachigiaohang`, `email`, `ngaylap`, `ghichu`, `ptthanhtoan`, `tongtien`, `tinhtrang`, `dathanhtoan`) VALUES
(40, 9, 'Nguyễn Văn Mạnh', 964475217, 'Liên Chiểu, Liên Chiểu', 'manh3698@gmail.com', '2019/12/06', 'ok', 'Thanh toán khi nhận hàng', 3430000, b'0', b'0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makhachhang` int(11) NOT NULL,
  `tendangnhap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` bit(1) DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`makhachhang`, `tendangnhap`, `matkhau`, `hoten`, `gioitinh`, `email`, `sdt`, `diachi`) VALUES
(9, 'manh', 'c4ca4238a0b923820dcc509a6f75849b', 'Nguyễn Văn Mạnh', b'1', 'manh3698@gmail.com', '0964475217', 'Liên Chiểu'),
(10, 'duy', 'c4ca4238a0b923820dcc509a6f75849b', 'Đinh Quang Duy', b'1', 'manh3698@gmail.com', '0964475217', 'Liên Chiểu'),
(11, 'cuong', 'c4ca4238a0b923820dcc509a6f75849b', 'Hoàng Văn Cường', b'1', 'cuongke2702@gmail.com', '0356260947', 'Liên Chiểu'),
(12, 'all', 'c4ca4238a0b923820dcc509a6f75849b', 'Nguyễn Văn All', b'1', 'manh3698@gmail.com', '0964475217', 'Liên Chiểu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `malienhe` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaylienhe` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phanhoi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(11) NOT NULL,
  `madanhmuc` int(11) DEFAULT NULL,
  `tensp` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `giatien` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `hinhanh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spmoi` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spmuanhieu` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linhkiencoban` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaythem` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `madanhmuc`, `tensp`, `mota`, `giatien`, `soluong`, `hinhanh`, `spmoi`, `spmuanhieu`, `linhkiencoban`, `ngaythem`) VALUES
(1, 1, 'arduino due r3', '- Vi điều khiển: ATmega328P(8bits)\r\n- Điện áp hoạt động: 5V \r\n- Tần số hoạt động: 16 MHz \r\n- Điện áp đầu vào khuyên dùng: 7VDC - 12VDC \r\n- Điện áp vào giới hạn: 6-20V DC Số chân Digital I/O 14 (6 chân hardware PWM) \r\n- Số chân Analog 6 (độ phân giải 10bit) \r\n- Dòng tối đa trên mỗi chân I/O 30 mA \r\n- Dòng ra tối đa: (5V) 500 mA \r\n- Dòng ra tối đa: (3.3V) 50 mA \r\n- Bộ nhớ flash 32 KB (ATmega328) với 0.5KB dùng bởi bootloader \r\n- SRAM 2 KB (ATmega328) \r\n- EEPROM 1 KB (ATmega328) \r\n- Clock Speed : 16 MHz', '430000', 1, 'arduino_due_r3_medium.jpg', '1', '', '', '2019/11/01'),
(2, 1, 'arduino uno r3', '. Vi điều khiển: ATmega328P(8bits)\r\n. Điện áp hoạt động: 5V\r\n. Tần số hoạt động: 16 MHz\r\n. Điện áp đầu vào khuyên dùng: 7VDC - \r\n  12VDC\r\n. Điện áp vào giới hạn: 6-20V DC\r\n  Số chân Digital I/O 14 (6 chân \r\n  hardware PWM)\r\n. Số chân Analog 6 (độ phân giải 10bit)\r\n. Dòng tối đa trên mỗi chân I/O 30 mA\r\n. Dòng ra tối đa: (5V) 500 mA\r\n. Dòng ra tối đa: (3.3V) 50 mA\r\n. Bộ nhớ flash 32 KB (ATmega328) với \r\n  0.5KB dùng bởi bootloader\r\n. SRAM 2 KB (ATmega328)\r\n. EEPROM 1 KB (ATmega328)\r\n. Clock Speed : 16 MHz', '100000', 1, 'arduino_uno_r3.jpg', '0', '1', '0', '25/10/2019'),
(3, 2, '74HC', 'ic 74hc rất tốt,khuyến khích mua.thích thì mua không thích thì mua', '6000', 1, '74hc.png', '0', '1', '0', '25/10/2019'),
(4, 1, 'arduino', '', '1000', 10, 'arduino_uno_r3.jpg', '0', '1', '0', '2019/10/30'),
(5, 1, 'ARDUINO ENTHERNET-W5100', '-Arduino Ethernet Shield sử dụng chip W5100 cho tốc độ và khả năng kết nối ổn định nhất, bộ thư viện đi kèm và phần cứng với cách kết nối dễ dàng khiến cho việc kết vối Arduino với Ethernet đơn giản hơn bao giờ hết, thích hợp để làm các ứng dụng điều khiển thiết bị qua Ethernet, Ethernet Controller.\r\n-Thông số kỹ thuật :\r\n  +Điện áp hoạt động: 5V\r\n  +Chip W1500 với bộ nhớ đệm 16kB\r\n  +Tốc độ kết nối: 10/100Mb\r\n  +Kết nối với mạch Arduino qua cổng SPI\r\n  +Thư viện và code mẫu có trong chương trình Arduino', '205000', 10, 'arduino_ethernet_w5100_board_medium.jpg', NULL, NULL, '1', '25/10/2019'),
(6, 1, 'ARDUINO LEONARDO R3', 'Arduino Leonardo sử dụng Vi điều khiển ATmega32u4 có phần cứng Hardware USB tích hợp và được lập trình để module này có thể giả lập COM Port và nhiều chức năng khác, nếu bạn đang có nhu cầu làm các ứng dụng liên quan đến USB hay cần 2 cổng COM trên 1 board Arduino thì Leonardo chính là 1 lựa chọn sáng giá.\r\n\r\nThông số kỹ thuật:\r\n\r\nVi điều khiển: ATmega32u4\r\nĐiện áp hoạt động: 5V\r\nĐiện thế khi cấp nguồn ngoài: khuyên dùng 7-9V, các bạn không nên cấp 12V vì đã nhiều khách hàng phản ánh khi cấp 12V IC ổn áp rất dễ chết\r\nSố chân Digital: 20\r\nSố kênh PWM: 7\r\nSố kênh vào Analog: 12\r\nBộ nhớ Flash: 32 KB (ATmega32u4), 4KB sử dụng cho Bootloader.\r\nSRAM: 2.5 KB (ATmega32u4)\r\nEEPROM: 1 KB (ATmega32u4)\r\nXung clock: 16 MHz', '265000', 10, 'arduino_leonardo_r3_medium.jpg', '', '', '1', '12/11/2019'),
(7, 1, 'ARDUINO MEGA PROTOSHIELD', 'Arduino MEGA Protoshield V3.0 tương thích với Arduino Mega, dễ dàng thiết kế mạch theo ý muốn. Có thể hàn trực tiếp linh kiện lên board hoặc dùng testboard nhỏ để test nhanh chóng với mạch mà không phải hàn. Board có mở rộng thêm các chân cắm I/O', '95000', 10, 'arduino_mega_protoshield_v3.0_medium.jpg', '', '', '', '12/11/2019'),
(8, 1, 'ARDUINO MEGA2560', '- Nguồn Cổng : USB A-B Sử dụng làm cổng nạp và dùng nguồn 5v DC cắm trực tiếp vào\r\nmáy tính để nạp.\r\n- Nguồn ngoài ( giắc tròn DC) : 7 - 9V , Các bạn không nên cấp 12V vì đã nhiều người\r\ndùng phản ánh cấp 12V rất nóng và dễ chết IC ổn áp.\r\n- Số chân Digital: 54 (15 chân PWM)\r\n- Số chân Analog: 16\r\n- Giao tiếp UART : 4 bộ UART\r\n- Giao tiếp SPI : 1 bộ ( chân 50 -> 53 ) dùng với thư viện SPI của Arduino\r\n- Giao tiếp I2C : 1 bộ\r\n- Ngắt ngoài : 6 chân\r\n- Bộ nhớ Flash: 256 KB, 8KB sử dụng cho Bootloader\r\n- SRAM: 8 KB\r\n- EEPROM: 4 KB\r\n- Xung clock: 16 MHz', '190000', 10, 'arduino_mega2560_dung_ch340g_medium.jpg', '0', '1', '0', '12/11/2019'),
(9, 1, 'ARDUINO NANO CH340', '- Điện Áp Chuẩn Đầu USB : 5V DC \r\n- Điện Áp Vào : 7 - 12v DC ( Chân Vin ) \r\n- Khuyến cáo dùng nguồn 5 - 9V DC. \r\n- Dòng Tiêu Thụ : 10mA. \r\n- Dòng Out/IO : 40mA \r\n- Dòng điện Cho Chân 3.3V: 50 mA. \r\n- Vi điều khiển: ATmega328 \r\n- Thạch Anh 16MHz \r\n- Ngõ I/O: 14 (of which 6 provide PWM output). \r\n- Ngõ vào ADC: 6. \r\n- Bộ nhớ flash: 32 KB (ATmega328) trong đó 0.5 KB dùng bootloader. \r\n- SRAM: 2 KB (ATmega328). \r\n- EEPROM: 1 KB (ATmega328). \r\n- Chip Driver CH340.', '75000', 10, 'arduino_nano_ch340.jpg', '1', '0', '0', '12/11/2019'),
(10, 1, 'ARDUINO NANO v3.0', 'Vi điều khiển Atmega328 AU.\r\nIC giao tiếp FT232.\r\nĐiện áp hoạt động 5VDC.\r\nMức điện áp giao tiếp GPIO  TTL5VDC.\r\nDòng GPIO  40mA.\r\nSố chân Digital 16 chân  có 6 chân PWM>\r\nSố chân Analog 8 chân.\r\nFlash Memory : 32KB.\r\nSRAM 2KB.\r\nEEPROM 1KB.\r\nClock speed 16 Mhz.\r\nLed báo nguồn.\r\nKích thước 18x 43 mm.', '120000', 10, 'arduino_nano_v3.0.jpg', '0', '1', '0', '12/11/2019'),
(11, 1, 'ARDUINO SENSOR SHIELD', 'Arduino sensor Shield V5.0 giúp cho việc giao tiếp giữa Arduino Uno với các module ngoại vi như cảm biến, động cơ, rơ le,... trở lên thuận tiện và dễ dàng hơn, các dây kết nối không bị chồng chéo, giúp nâng cao sự gọn gàng và tính thẩm mỹ cho việc kết nối.\r\n\r\nGiao tiếp I2C\r\nGiao tiếp module Bluetooth\r\nGiao tiếp module SD card\r\nGiao tiếp với module không dây RF APC220\r\nGiao tiếp cảm biến siêu âm\r\nGiao tiếp LCD 12864 LCD cả nối tiếp và song song', '30000', 10, 'arduino_sensor_shield_v5.0.jpg', '1', '0', '0', '12/11/2019'),
(12, 1, 'KIT ATTINY85', 'kit arduino này không có mô tả', '60000', 10, 'kit_attiny85.jpg', '1', '0', '0', '12/11/2019'),
(13, 2, 'IC 74LS27P DIP14', ' - Vcc: 5V DC\r\n\r\n - Điện áp vào tích cực mức cao: 2V\r\n\r\n - Điện áp vào tích cực mức thấp: 0.8V\r\n\r\n - Dòng điện đầu vào: -0.36mA - 0.1mA \r\n\r\n - Dòng điện đầu ra: -0.4mA - 8mA\r\n\r\n - Điện áp đầu ra: 0.35 V - 3.4 V', '10000', 10, '74ls.png', '0', '0', '0', '12/11/2019'),
(14, 2, 'IC CD4067 SOP24', 'KHông có giới thiệu cho sản phẩm này', '10000', 10, 'cd.png', '0', '0', '0', '12/11/2019'),
(15, 2, 'IC PL2303 SSOP-28', 'Không có mô tả cho sản phẩm này', '12000', 10, 'ic_giaotiep_mang.png', '0', '0', '0', '12/11/2019'),
(16, 2, 'IC LM386 DIP8', 'Chưa có mô tả cho sản phẩm này', '12000', 10, 'icaudio.png', '0', '0', '0', '12/11/2019'),
(17, 2, 'IC MCP2551-I/SN SOIC8', 'Không có mô tả cho sản phẩm này', '24000', 10, 'iccan.png', '0', '0', '0', '12/11/2019'),
(18, 2, 'L298 3A DIP Chân Cắm', 'Không có mô tả cho sản phẩm này', '32000', 10, 'icdriver.jpg', '0', '0', '0', '12/11/2019'),
(19, 2, 'IC DS1307 DIP8', '-Type : Clock/Clender\r\n-Memory size : 56B\r\n-....', '7000', 10, 'icrealtime.png', '0', '0', '0', '12/11/2019'),
(20, 3, 'Nguồn AC-DC Mini 24V150mA', 'Nguồn AC-DC Mini 24V 150mA\r\n- Chuyển đổi điện áp Ac sang DC\r\n- Điện áp vào 85 ~ 265 VAC\r\n- Điện áp ra 24VDC\r\n- Dòng điện ra 150mA\r\n- Hiệu suất 80%\r\n- Tần số 50/60Hz\r\n- Kích thước 30x20x17.5mm\r\n( Khuyến cáo sử dụng nguồn khoảng 2/3 công suất để đảm bảo sản phẩm được bền. Sử dụng nguồn thời gian 24/24 chỉ nên sử dụng khoảng 30 - 40% công suất ).', '45000', 10, 'ac_to_dc.jpg', '0', '0', '0', '12/11/2019'),
(21, 3, 'Nguồn Adapter 24V0.75A K300329', '- Điện áp vào: AC100-240V ( 50-60HZ)\r\n- Điện áp ra: DC24V 750mA\r\n- Dòng kéo: 1A\r\n- Đầu Jack Vào: AC\r\n- Dầu Jack Ra: 2.54-3P\r\n- Thứ Tự Đầu Ra: (1)+24V;(2) EN (nối +24V); (3) GND .\r\n- Nguồn Đạt Hiệu Suất 90%, nếu dùng 24/24 chỉ dùng công suất 2/3 để nguồn ổn định.\r\n- Nguồn có chế độ bảo vệ quá tải, chập mạch (Cầu chì nhiệt khi bị chập, phải rút nguồn ra 2-3 phút mới dùng tiếp)\r\n- Chân \"EN\" kích dương nguồn mới hoạt động, nếu sử dụng lấy tải, chỉ cần nối chập EN với +24V', '70000', 10, 'adapter.jpg', '0', '0', '0', '12/11/2019'),
(22, 3, 'Nguồn MP1520D(15V20A)', 'Điện áp ra : 0 đến 15 V (có thể điều chỉnh)\r\nDòng điện ra : 0 đến 20 A (có thể điều chỉnh)\r\nĐiện áp vào : 220 V / 50 Hz \r\nĐộ chính xác : điện áp: 0,1 V; dòng điện: 0,1 A (± 1%)\r\nỔn định điện thế : ≤ 0,2%\r\nỔn định dòng : ≤ 0,5%\r\nỔn định tải : ≤ 0,5%\r\nlàm mát : quạt\r\n* Bảo vệ:\r\nOVP (bảo vệ quá áp)\r\nOCP (bảo vệ chống quá tải của bất kỳ đầu ra)\r\nOTP (bảo vệ quá nhiệt)\r\nOPP (bảo vệ quá tải cho tổng công suất trên tất cả các kênh)\r\nPWM (Pulse Width Modulation)\r\n* Đặc điểm chung :\r\nMàu : trắng\r\nHiển thị : màn hình 4LED\r\nNhiệt độ hoạt động : 0 ° C - 40 ° C\r\nKích thước : 285 mm x 200 mm x 150 m', '3000000', 2, 'nguon_da_nang.jpg', '0', '0', '0', '12/11/2019'),
(23, 3, 'Module BOOST DC-DC Mini 5-28V', ' - Điện áp đầu vào: 2V - 24V DC\r\n\r\n - Điện áp đầu ra: 5V - 28V DC (ổn định ở 26V)\r\n\r\n - Dòng điện đầu ra: 2A (Cực đại)\r\n\r\n - Hiệu suất: 94%\r\n\r\n - Kích thước: 30 * 17 * 14 mm', '25000', 10, 'dc_to_dc.jpg', '0', '0', '0', '12/11/2019'),
(24, 3, 'Nguồn Đối Xứng 4 Đầu Ra', '- Điện Áp Vào: AC110-220V\r\n- Bốn đầu ra:  +5V  ~  4A\r\n                    +12V  ~  1A\r\n                    +24V  ~  1A\r\n                    -12V   ~  0.5A\r\nLưu Ý:\r\n   -  Khuyến cáo sử dụng nguồn khoảng 2/3 công suất để đảm bảo sản phẩm được bền.\r\nSử dụng nguồn thời gian 24/24 chỉ nên sử dụng khoảng 30 - 40% công suất.\r\n   -  Khuyến cáo quý khách không sử dụng vào mục đích sạc Acquy.\r\n   -  Khuyến cáo lắp đặt nguồn nơi thoáng mát để bảo vệ nguồn.', '450000', 2, 'nguon_doi_xung.jpg', '0', '0', '0', '12/11/2019'),
(25, 3, 'Pin 9V (Loại Thường)', '- Pin 9V\r\n- Hình dáng Vuông.\r\n- Màu đen', '9000', 100, 'pin 9V nor.png', '0', '0', '0', '12/11/2019'),
(26, 3, 'Pin 9V LucKy TĐ', 'Viên pin 9V lucky TĐ Heavy Duty Battery\r\n\r\nPin không chứa Hg & cd, Không độc hại.\r\nThích hợp cho phần lớn các thiết bị hoạt động tiêu thụ ít điện năng.\r\nLoại pin khá thông dụng có thể sử dụng được cho nhiều loại sản phẩm, thiết bị như đồ chơi, đèn pin, điều khiển, máy quay, micro, đồng hồ đo...\r\nPin với nguồn điện ổn định giúp bảo vệ các sản phẩm, thiết bị an toàn hơn.\r\nKích thước pin (mm): 26.5(L) x 17.5(W) x 48.5(H)', '9000', 100, 'pin 9v.png', '0', '0', '0', '12/11/2019'),
(27, 3, 'Pin 12V 23A', 'Không có mô tả', '7500', 10, 'pin 12v 32A.png', '0', '0', '0', '12/11/2019'),
(28, 3, 'Pin 12V 27A', 'Không có mô tả', '7500', 50, 'pin 12v.jpg', '0', '0', '0', '12/11/2019'),
(29, 4, '4P-ZH1.25-F-40CM Cáp 1 Đầu Cái', 'Dây bus 1.25mm 4Pins, 1 đầu cái, dài 40cm', '6000', 100, 'cap_1_dau_cai.png', '0', '0', '0', '12/11/2019'),
(30, 4, '4P-ZH1.25-FF-15CM Cáp Cái-Cái', 'Dây bus 1.25mm 4Pin, 2 đầu Cái-Cái, dài 15CM', '6500', 50, 'cap_cai_cai.png', '0', '0', '0', '12/11/2019'),
(31, 4, '4P-ZH1.25-MM-15CM Cáp Đực-Đực', 'Dây bus 1.25mm 4Pin, 2 đầu đực-đực, dài', '6500', 50, 'cap_duc_duc.png', '0', '0', '0', '12/11/2019'),
(32, 4, '4P-ZH1.25-MF-15CM Cáp Đực-Cái', 'Dây bus 1.25mm 4Pin, 2 đầu đực-cái, dài 15CM', '6500', 50, 'cap_duc_cai.png', '0', '0', '0', '12/11/2019'),
(33, 4, 'Cổng Micro USB2.0 Type B ', 'Product:Micro USB Type B Connectors\r\nGender:Female\r\nStandard:USB 2.0\r\nTermination Style:SMD/SMT\r\nNumber of Contacts:5 Contact\r\nNumber of Ports:1 Port\r\nCurrent Rating:1 A\r\nMounting Angle:Straight\r\nMounting Style:MID-Mount\r\nIP Rating:-\r\nPackaging:Cut Tape\r\nPackaging:MouseReel\r\nPackaging:Reel\r\nContact Plating:Gold \r\nSeries:ZX \r\nType:Type B \r\nVoltage Rating:30 VAC \r\nBrand:Hirose Connector \r\nContact Material:Copper Alloy \r\nFlammability Rating:UL 94 V-0 \r\nInsulator Color:Black \r\nShell Plating:Tin \r\nMaximum Operating Temperature:+ 85 C \r\nMinimum Operating Temperature:- 30 C \r\nProduct Type:USB Connectors \r\nFactory Pack Quantity:1500 \r\nSubcategory:USB Connectors \r\nPart # Aliases:CL0242-0024-7-30 \r\nUnit Weight:260 mg', '1800', 100, 'micro usb2.0 type B.png', '0', '0', '0', '12/11/2019'),
(34, 4, 'Jack đồng dùng cho loa', 'Tính năng\r\n - Jack Đấu Loa Đôi - Jack Bắp Chuối Đôi (mạ đồng) là một loại jack audio có đường kính lỗ cắm là 4mm, giúp việc chuyển âm thanh qua loa 1 cách dễ dàng.\r\n\r\n - Dàn âm thanh thì có rất nhiều thiết bị: Loa, Ampli, Dây cap ... Đặc biệt loa và ampli là 2 thiết bị giúp cho âm thanh sống động, có độ vang, âm sắc sâu ... Và để kết nối loa được ta cần đến Jack đấu loa.\r\n\r\n - Chúng ta có thể kết nối với loa bằng đấu trực tiếp bằng dây âm thanh vào đầu jack loa đôi.\r\n\r\nTHông số kỹ thuật :\r\n\r\n - Chất liệu: Vỏ nhựa cách điện, phần kết nối được mạ đồng. ', '25000', 50, 'jackdong.png', '0', '0', '0', '12/11/2019');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`maad`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`machitiethoadon`),
  ADD KEY `mahoadon` (`mahoadon`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`madanhmuc`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahoadon`,`makhachhang`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makhachhang`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`malienhe`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `madanhmuc` (`madanhmuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `maad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `machitiethoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `madanhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makhachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `malienhe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`mahoadon`) REFERENCES `hoadon` (`mahoadon`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`madanhmuc`) REFERENCES `danhmuc` (`madanhmuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
