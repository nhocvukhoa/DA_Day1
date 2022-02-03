-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 03, 2022 lúc 04:18 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlhb_datn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangkyhocbong`
--

CREATE TABLE `dangkyhocbong` (
  `dangky_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_fullname` varchar(255) NOT NULL,
  `user_nganh` varchar(255) NOT NULL,
  `user_lop` varchar(255) NOT NULL,
  `hocbong_id` int(11) NOT NULL,
  `dangky_thoigiandk` datetime NOT NULL,
  `dangky_tinhtrang` int(11) NOT NULL DEFAULT 0,
  `dangky_ketqua` int(11) NOT NULL DEFAULT 0,
  `dangky_nguoiduyet` varchar(255) DEFAULT NULL,
  `dangky_thoigianduyet` varchar(255) DEFAULT NULL,
  `dangky_ghichu` varchar(255) DEFAULT 'Chưa có ghi chú'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dangkyhocbong`
--

INSERT INTO `dangkyhocbong` (`dangky_id`, `user_id`, `user_name`, `user_fullname`, `user_nganh`, `user_lop`, `hocbong_id`, `dangky_thoigiandk`, `dangky_tinhtrang`, `dangky_ketqua`, `dangky_nguoiduyet`, `dangky_thoigianduyet`, `dangky_ghichu`) VALUES
(130, 57, '1811505310102', 'Trần Chí', 'Công nghệ thông tin', '18T1', 21, '2022-01-11 20:09:32', 1, 1, 'Công Đoàn ĐHĐN', '2022-01-16 10:02:08', 'Xuất sắc'),
(132, 57, '1811505310102', 'Trần Chí', 'Công nghệ thông tin', '18T1', 32, '2022-01-11 20:11:15', 1, 1, 'Jesco Asia', '2022-01-11 20:57:17', 'Xuất sắc'),
(133, 56, '1811505310101', 'Nguyễn Ngọc Anh', 'Công nghệ thông tin', '18T1', 32, '2022-01-11 20:14:06', 1, 1, 'Jesco Asia', '2022-01-19 11:03:49', 'Tốt'),
(134, 62, '1811505310107', 'Nguyễn Thành Đạt', 'Công nghệ thông tin', '18T1', 32, '2022-01-11 20:15:59', 1, 1, 'Jesco Asia', '2022-01-11 20:57:15', 'Xuất sắc'),
(135, 66, '1811505310201', 'Đặng Việt Anh', 'Công nghệ thông tin', '18T2', 32, '2022-01-11 20:22:06', 1, 1, 'Jesco Asia', '2022-01-19 11:03:21', 'Tốt'),
(136, 69, '1811505310301', 'Nguyễn Kim An', 'Công nghệ thông tin', '18T3', 32, '2022-01-11 20:24:08', 1, 1, 'Jesco Asia', '2022-01-11 20:57:40', 'Tốt'),
(138, 69, '1811505310301', 'Nguyễn Kim An', 'Công nghệ thông tin', '18T3', 21, '2022-01-11 20:27:20', 1, 1, 'Công Đoàn ĐHĐN', '2022-01-16 10:02:36', 'Tốt'),
(139, 86, '1811504101001', 'Nguyễn Thái Dũng', 'Công nghệ Kỹ thuật Điện tử - Viễn thông (Chuyên ngành Điện tử máy tính - mạng truyền thông)', '18DT1', 32, '2022-01-11 20:37:36', 1, 1, 'Jesco Asia', '2022-01-19 16:03:12', 'Khá'),
(140, 81, '1811504110101', 'Nguyễn An', 'Công nghệ Kỹ thuật Cơ khí (Chuyên ngành Cơ khí chế tạo)', '18C1', 32, '2022-01-11 20:40:36', 1, 1, 'Jesco Asia', '2022-01-11 20:57:30', 'Tốt'),
(141, 78, '1811505120247', 'Trần Văn Toàn', 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)', '18D2', 32, '2022-01-11 20:42:08', 1, 1, 'Jesco Asia', '2022-01-18 23:15:12', 'Tốt'),
(142, 74, '1811505310411', 'Nguyễn Thanh Duy', 'Công nghệ thông tin', '18T4', 32, '2022-01-11 20:44:15', 1, 1, 'Jesco Asia', '2022-01-11 20:57:27', 'Tốt'),
(143, 71, '1811505310309', 'Mai Xuân Duy', 'Công nghệ thông tin', '18T3', 32, '2022-01-11 20:45:31', 1, 1, 'Jesco Asia', '2022-01-19 15:59:17', 'Tốt'),
(154, 56, '1811505310101', 'Nguyễn Ngọc Anh', 'Công nghệ thông tin', '18T1', 30, '2022-01-12 10:33:50', 1, 1, 'ĐH Đà Nẵng', '2022-01-12 11:08:20', 'Tốt'),
(155, 64, '1811505310125', 'Nguyễn Hoàng Long', 'Công nghệ thông tin', '18T1', 30, '2022-01-12 11:17:16', 0, 0, NULL, NULL, 'Khá'),
(156, 65, '1811505310135', 'Võ Quang Nhả', 'Công nghệ thông tin', '18T1', 30, '2022-01-12 11:17:58', 1, 1, 'ĐH Đà Nẵng', '2022-01-12 11:23:03', 'Xuất sắc'),
(157, 80, '1811505120250', 'Lưu Văn Trung', 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)', '18D2', 30, '2022-01-12 11:19:20', 1, 1, 'ĐH Đà Nẵng', '2022-01-12 11:23:00', 'Xuất sắc'),
(158, 77, '1811504210112', 'Phùng Thái Duy', 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)', '18D1', 30, '2022-01-12 11:21:17', 1, 1, 'ĐH Đà Nẵng', '2022-01-12 11:23:45', 'Xuất sắc'),
(159, 74, '1811505310411', 'Nguyễn Thanh Duy', 'Công nghệ thông tin', '18T4', 30, '2022-01-12 11:22:00', 1, 1, 'ĐH Đà Nẵng', '2022-01-12 11:23:25', 'Tốt'),
(160, 56, '1811505310101', 'Nguyễn Ngọc Anh', 'Công nghệ thông tin', '18T1', 29, '2022-01-12 14:18:16', 0, 0, NULL, NULL, 'Chưa có ghi chú'),
(161, 58, '1811505310103', 'Trần Hoàng Chung', 'Công nghệ thông tin', '18T1', 29, '2022-01-12 14:24:10', 0, 0, NULL, NULL, 'Chưa có ghi chú'),
(162, 60, '1811505310105', 'Bùi Vạn Đạt', 'Công nghệ thông tin', '18T1', 29, '2022-01-12 14:26:00', 0, 0, NULL, NULL, 'Chưa có ghi chú'),
(163, 74, '1811505310411', 'Nguyễn Thanh Duy', 'Công nghệ thông tin', '18T4', 29, '2022-01-12 14:32:55', 0, 0, NULL, NULL, 'Chưa có ghi chú'),
(164, 76, '1811504210110', 'Trần Anh Đức', 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)', '18D1', 29, '2022-01-12 14:34:23', 0, 0, NULL, NULL, 'Chưa có ghi chú'),
(165, 79, '1811505120248', 'Phạm Văn Trí', 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)', '18D2', 29, '2022-01-12 14:36:51', 0, 0, NULL, NULL, 'Chưa có ghi chú'),
(166, 85, '1811504210102', 'Mai Văn Ánh', 'Công nghệ Kỹ thuật Ô tô', '18DL1', 29, '2022-01-12 14:38:59', 0, 0, NULL, NULL, 'Chưa có ghi chú'),
(167, 81, '1811504110101', 'Nguyễn An', 'Công nghệ Kỹ thuật Cơ khí (Chuyên ngành Cơ khí chế tạo)', '18C1', 29, '2022-01-12 14:40:38', 0, 0, NULL, NULL, 'Chưa có ghi chú'),
(169, 95, '21115053120101', 'Đặng Văn An', 'Công nghệ thông tin', '21T1', 22, '2022-01-12 15:33:05', 0, 0, NULL, NULL, 'Khá'),
(170, 96, '21115053120102', 'Hoàng Kim Tuấn Anh', 'Công nghệ thông tin', '21T1', 22, '2022-01-12 15:39:49', 0, 0, NULL, NULL, 'Khá'),
(171, 97, '21115053120205', 'Lê Thị Diệp', 'Công nghệ thông tin', '21T2', 22, '2022-01-12 15:46:42', 1, 1, 'Báo Tiền phong', '2022-01-16 10:46:10', 'Tốt'),
(172, 98, '21115053120207', 'Phạm Lê Đông', 'Công nghệ thông tin', '21T2', 22, '2022-01-12 15:47:34', 1, 1, 'Báo Tiền phong', '2022-01-16 10:46:06', 'Tốt'),
(173, 99, '21115051220108', 'Nguyễn Sỹ Đăng', 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)', '21D1', 22, '2022-01-12 15:56:20', 1, 1, 'Báo Tiền phong', '2022-01-16 10:45:52', 'Xuất sắc'),
(174, 100, '21115051220114', 'Nguyễn Gia Ngọc Đức', 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)', '21D1', 22, '2022-01-12 15:59:16', 1, 1, 'Báo Tiền phong', '2022-01-16 10:50:07', 'Tốt'),
(175, 101, '21115072120102', 'Trương Thị Hiền', 'Công nghệ Kỹ thuật Môi trường', '21MT1', 22, '2022-01-12 16:23:49', 1, 1, 'Báo Tiền phong', '2022-01-16 10:46:02', 'Tốt'),
(176, 79, '1811505120248', 'Phạm Văn Trí', 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)', '18D2', 21, '2022-01-12 16:31:32', 0, 0, NULL, NULL, 'Khá'),
(177, 81, '1811504110101', 'Nguyễn An', 'Công nghệ Kỹ thuật Cơ khí (Chuyên ngành Cơ khí chế tạo)', '18C1', 21, '2022-01-12 16:34:51', 0, 0, NULL, NULL, 'Khá'),
(178, 85, '1811504210102', 'Mai Văn Ánh', 'Công nghệ Kỹ thuật Ô tô', '18DL1', 21, '2022-01-12 16:37:38', 0, 0, NULL, NULL, 'Khá'),
(179, 102, '1911504310101', 'Nguyễn Hữu Cang', 'Công nghệ Kỹ thuật Nhiệt', '19N1', 21, '2022-01-12 16:45:37', 0, 0, NULL, NULL, 'Khá'),
(181, 104, '1911507110103', 'Đỗ Thị Ngọc Hằng', 'Công nghệ Vật liệu', '19VL1', 3, '2021-11-01 20:05:32', 1, 1, 'Trường ĐHSPKT', '2022-01-12 22:26:21', 'Tốt'),
(182, 65, '1811505310135', 'Võ Quang Nhả', 'Công nghệ thông tin', '18T1', 3, '2021-11-01 20:08:22', 0, 0, NULL, NULL, 'Khá'),
(183, 105, '2050731200109', 'Hoàng Thị Cẩm Hằng', 'Kỹ thuật Thực phẩm', '20HTP1', 3, '2021-11-02 20:16:52', 1, 1, 'Trường ĐHSPKT', '2022-01-12 22:25:44', 'Xuất sắc'),
(184, 106, '1811505310243', 'Võ Thị Hoàng Thư', 'Công nghệ thông tin', '18T2', 3, '2021-11-02 20:26:49', 1, 1, 'Trường ĐHSPKT', '2022-01-12 22:26:19', 'Tốt'),
(185, 107, '1911505310118', 'Cao Thị Thúy Hằng', 'Công nghệ thông tin', '19T1', 3, '2021-11-03 20:36:39', 1, 1, 'Trường ĐHSPKT', '2022-01-12 22:25:41', 'Xuất sắc'),
(186, 108, '1811504110216', 'Nguyễn Hữu Hùng', 'Công nghệ Kỹ thuật Cơ khí (Chuyên ngành Cơ khí chế tạo)', '18C2', 3, '2021-11-03 20:52:28', 1, 1, 'Trường ĐHSPKT', '2022-01-12 22:26:15', 'Tốt'),
(187, 109, '1911507310111', 'Trần Thị Hoa', 'Kỹ thuật Thực phẩm', '19HTP1', 3, '2021-11-04 20:55:06', 1, 1, 'Trường ĐHSPKT', '2022-01-12 22:26:13', 'Tốt'),
(188, 110, '1811504410165', 'Phạm Văn Việt', 'Công nghệ Kỹ thuật Cơ Điện tử', '18CDT1', 3, '2021-11-05 21:45:19', 1, 1, 'Trường ĐHSPKT', '2022-01-12 22:26:10', 'Tốt'),
(189, 111, '1811505520232', 'Nguyễn Văn Xuân Mỹ', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '18TDH2', 3, '2021-11-05 21:46:57', 1, 1, 'Trường ĐHSPKT', '2022-01-12 22:25:39', 'Xuất sắc'),
(190, 112, '1811507310152', 'Nguyễn Ngọc Vương', 'Kỹ thuật Thực phẩm', '18HTP1', 3, '2021-11-05 21:55:00', 1, 1, 'Trường ĐHSPKT', '2022-01-12 22:25:37', 'Xuất sắc'),
(191, 114, '1811504210129', 'Phạm Duy Pháp', 'Công nghệ Kỹ thuật Ô tô', '18DL1', 3, '2021-11-06 22:06:56', 1, 1, 'Trường ĐHSPKT', '2022-01-12 22:26:08', 'Tốt'),
(192, 116, '1811504310150', 'Từ Hồng Văn', 'Công nghệ Kỹ thuật Nhiệt', '18N1', 3, '2021-11-06 22:10:49', 1, 1, 'Trường ĐHSPKT', '2022-01-12 22:25:34', 'Xuất sắc'),
(193, 117, '1811505310455', 'Phan Diệu Mây', 'Công nghệ thông tin', '18T4', 3, '2021-11-07 23:03:29', 1, 1, 'Trường ĐHSPKT', '2022-01-12 23:17:25', 'Tốt'),
(194, 118, '1811505120230', 'Lưu Hoài Nam', 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)', '18D1', 3, '2021-11-07 23:15:49', 0, 0, NULL, NULL, 'Khá'),
(195, 119, '1811505520231', 'Trần Văn Mới', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '18TDH2', 3, '2021-11-08 10:31:15', 1, 1, 'Phòng CTSV', '2022-01-21 10:21:18', 'Tốt'),
(196, 119, '1811505520231', 'Trần Văn Mới', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '18TDH2', 30, '2022-01-13 11:29:11', 0, 0, NULL, NULL, 'Khá'),
(197, 118, '1811505120230', 'Lưu Hoài Nam', 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)', '18D1', 30, '2022-01-13 11:33:27', 0, 0, NULL, NULL, 'Khá'),
(198, 115, '1811507210102', 'Đỗ Thị Thu Ánh', 'Công nghệ Kỹ thuật Môi trường', '18MT1', 30, '2022-01-13 11:35:24', 0, 0, NULL, NULL, 'Khá'),
(199, 112, '1811507310152', 'Nguyễn Ngọc Vương', 'Kỹ thuật Thực phẩm', '18HTP1', 30, '2022-01-13 11:36:18', 1, 1, 'ĐH Đà Nẵng', '2022-01-23 15:24:13', 'Khá'),
(203, 64, '1811505310125', 'Nguyễn Hoàng Long', 'Công nghệ thông tin', '18T1', 21, '2022-01-13 09:47:41', 1, 1, 'Công Đoàn ĐHĐN', '2022-01-16 10:02:04', 'Xuất sắc'),
(204, 107, '1911505310118', 'Cao Thị Thúy Hằng', 'Công nghệ thông tin', '19T1', 21, '2022-01-13 09:49:43', 1, 1, 'Công Đoàn ĐHĐN', '2022-01-16 10:02:32', 'Tốt'),
(205, 103, '1911504310112', 'Lê Trung Hậu', 'Công nghệ Kỹ thuật Nhiệt', '19N1', 21, '2022-01-13 09:54:03', 1, 1, 'Công Đoàn ĐHĐN', '2022-01-16 10:02:28', 'Tốt'),
(206, 106, '1811505310243', 'Võ Thị Hoàng Thư', 'Công nghệ thông tin', '18T2', 21, '2022-01-13 09:56:34', 1, 1, 'Công Đoàn ĐHĐN', '2022-01-22 22:29:15', 'Tốt'),
(207, 64, '1811505310125', 'Nguyễn Hoàng Long', 'Công nghệ thông tin', '18T1', 32, '2022-01-16 21:49:51', 1, 1, 'Jesco Asia', '2022-01-18 22:34:56', 'Xuất sắc'),
(208, 64, '1811505310125', 'Nguyễn Hoàng Long', 'Công nghệ thông tin', '18T1', 20, '2022-01-18 17:08:51', 1, 1, 'Phòng CTSV', '2022-01-18 17:10:38', 'Đạt'),
(209, 65, '1811505310135', 'Võ Quang Nhả', 'Công nghệ thông tin', '18T1', 20, '2022-01-18 17:28:34', 1, 1, 'Trường ĐHSPKT', '2022-01-18 17:35:41', 'Đạt'),
(210, 66, '1811505310201', 'Đặng Việt Anh', 'Công nghệ thông tin', '18T2', 20, '2022-01-18 18:13:31', 1, 1, 'Phòng CTSV', '2022-01-18 23:28:43', 'Đạt'),
(211, 71, '1811505310309', 'Mai Xuân Duy', 'Công nghệ thông tin', '18T3', 20, '2022-01-18 18:14:33', 1, 1, 'Phòng CTSV', '2022-01-18 23:44:13', 'Đạt'),
(212, 74, '1811505310411', 'Nguyễn Thanh Duy', 'Công nghệ thông tin', '18T4', 20, '2022-01-18 18:22:05', 1, 1, 'Phòng CTSV', '2022-01-18 23:45:40', 'Đạt'),
(213, 64, '1811505310125', 'Nguyễn Hoàng Long', 'Công nghệ thông tin', '18T1', 29, '2022-01-19 09:39:01', 0, 0, NULL, NULL, 'Chưa có ghi chú'),
(214, 64, '1811505310125', 'Nguyễn Hoàng Long', 'Công nghệ thông tin', '18T1', 26, '2022-01-19 09:42:12', 0, 0, NULL, NULL, 'Chưa có ghi chú'),
(215, 63, '1811505310108', 'Trương Minh Đạt', 'Công nghệ thông tin', '18T1', 32, '2022-01-19 10:54:14', 1, 1, 'Jesco Asia', '2022-01-19 11:00:16', 'Xuất sắc'),
(216, 65, '1811505310135', 'Võ Quang Nhả', 'Công nghệ thông tin', '18T1', 32, '2022-01-19 20:10:50', 1, 1, 'Jesco Asia', '2022-01-19 20:29:41', 'Tốt'),
(217, 59, '1811505310104', 'Nguyễn Đình Cường', 'Công nghệ thông tin', '18T1', 32, '2022-01-19 20:36:02', 1, 1, 'Jesco Asia', '2022-01-19 20:36:50', 'Tốt'),
(218, 64, '1811505310125', 'Nguyễn Hoàng Long', 'Công nghệ thông tin', '18T1', 35, '2022-02-01 20:28:04', 0, 0, NULL, NULL, 'Chưa có ghi chú'),
(219, 107, '1911505310118', 'Cao Thị Thúy Hằng', 'Công nghệ thông tin', '19T1', 35, '2022-02-03 18:13:49', 0, 0, NULL, NULL, 'Chưa có ghi chú');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diem`
--

CREATE TABLE `diem` (
  `diem_id` int(11) NOT NULL,
  `diem_hocky` varchar(255) NOT NULL,
  `diem_masv` varchar(255) NOT NULL,
  `diem_tensv` varchar(255) NOT NULL,
  `diem_ngaysinh` varchar(255) NOT NULL,
  `diem_khoa` varchar(255) NOT NULL,
  `diem_nganh` varchar(255) NOT NULL,
  `diem_lop` varchar(255) NOT NULL,
  `diem_tinchi` int(11) NOT NULL,
  `diem_thang4` float NOT NULL,
  `diem_thang10` float NOT NULL,
  `diem_renluyen` int(11) NOT NULL,
  `diem_loaihocluc` varchar(255) NOT NULL,
  `diem_loairenluyen` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `diem`
--

INSERT INTO `diem` (`diem_id`, `diem_hocky`, `diem_masv`, `diem_tensv`, `diem_ngaysinh`, `diem_khoa`, `diem_nganh`, `diem_lop`, `diem_tinchi`, `diem_thang4`, `diem_thang10`, `diem_renluyen`, `diem_loaihocluc`, `diem_loairenluyen`, `user_id`) VALUES
(71, '220', '1811505310001', 'Phạm Ngọc Anh', '2000-10-01 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 17, 3.56, 8.78, 88, 'Giỏi', 'Tốt', NULL),
(72, '220', '1811505310002', 'Trần Chí', '2000-01-20 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 26, 3.73, 8.73, 90, 'Xuất sắc', 'Xuất sắc', NULL),
(73, '220', '1811505310003', 'Trần Hoàng Chung', '2000-03-16 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 23, 3.67, 8.52, 90, 'Xuất sắc', 'Xuất sắc', NULL),
(74, '220', '1811505310004', 'Nguyễn Đình Cường', '2000-09-22 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 26, 3.55, 8.46, 82, 'Giỏi', 'Tốt', NULL),
(75, '220', '1811505310005', 'Bùi Vạn Đạt', '2000-01-16 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 20, 3.6, 8.44, 85, 'Xuất sắc', 'Tốt', NULL),
(76, '220', '1811505310006', 'Cái Quốc Đạt', '2000-09-04 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 22, 3.45, 8.28, 81, 'Giỏi', 'Tốt', NULL),
(77, '220', '1811505310007', 'Nguyễn Thành Đạt', '2000-02-04 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 17, 3.41, 8.26, 84, 'Giỏi', 'Tốt', NULL),
(78, '220', '1811505310008', 'Trương Minh Đạt', '2000-02-27 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 23, 3.48, 8.24, 88, 'Giỏi', 'Tốt', NULL),
(79, '220', '1811505310009', 'Đặng Minh Hiếu', '2000-06-09 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 17, 3.53, 8.22, 88, 'Giỏi', 'Tốt', NULL),
(80, '220', '1811505310112', 'Nguyễn Đăng Khánh Hưng', '2000-01-10 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 16, 3.43, 8.22, 89, 'Giỏi', 'Tốt', NULL),
(81, '220', '1811505310201', 'Đặng Việt Anh', '2000-06-17 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 20, 3.8, 8.86, 90, 'Xuất sắc', 'Xuất sắc', NULL),
(82, '220', '1811505310202', 'Trần Quang Đăng', '2000-02-14 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 19, 3.47, 8.19, 95, 'Giỏi', 'Xuất sắc', NULL),
(83, '220', '1811505310204', 'Nguyễn Đăng Định', '2000-07-08 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 18, 3.78, 8.64, 100, 'Xuất sắc', 'Xuất sắc', NULL),
(84, '220', '1811505310205', 'Nông Ngọc Đức', '2000-01-01 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 19, 3.58, 8.61, 90, 'Giỏi', 'Xuất sắc', NULL),
(85, '220', '1811505310206', 'Dương Thị Thùy Dung', '2000-01-01 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 19, 3.63, 8.53, 86, 'Xuất sắc', 'Tốt', NULL),
(86, '220', '1811505310207', 'Nguyễn Sỹ Dũng', '2000-03-14 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 23, 3.74, 8.68, 81, 'Xuất sắc', 'Tốt', NULL),
(87, '220', '1811505310208', 'Nguyễn Tiến Dũng', '2000-02-22 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 25, 3.56, 8.74, 84, 'Giỏi', 'Tốt', NULL),
(88, '220', '1811505310209', 'Phạm Tấn Dũng', '2000-10-30 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 18, 3.22, 8.03, 85, 'Giỏi', 'Tốt', NULL),
(89, '220', '1811505310210', 'Hà Phước Dưỡng', '2000-09-13 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 24, 3.21, 8.02, 84, 'Giỏi', 'Tốt', NULL),
(90, '220', '1811505310212', 'Trần Nguyễn Phước Duy', '2000-07-27 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 25, 3.04, 7.58, 83, 'Khá', 'Tốt', NULL),
(91, '220', '1811505120101', 'Nguyễn Công Chung', '2000-07-20 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)', '18D1', 22, 3.59, 8.59, 85, 'Giỏi', 'Tốt', NULL),
(92, '220', '1811505120110', 'Trần Anh Đức', '2000-04-08 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)', '18D1', 18, 3.25, 8.07, 82, 'Giỏi', 'Tốt', NULL),
(93, '220', '1811505120112', 'Phùng Thái Duy', '2000-11-23 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)', '18D1', 18, 3.28, 8.1, 84, 'Giỏi', 'Tốt', NULL),
(94, '220', '1811505120113', 'Trần Văn Giỏi', '2000-02-12 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)', '18D1', 19, 3.71, 8.67, 87, 'Xuất sắc', 'Tốt', NULL),
(95, '220', '1811505120114', 'Nguyễn Hữu Hải', '2000-03-27 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)', '18D1', 20, 3.63, 8.53, 86, 'Xuất sắc', 'Tốt', NULL),
(96, '220', '1811505120116', 'Đặng Văn Hoàng', '2000-07-08 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)', '18D1', 23, 3.05, 7.7, 81, 'Khá', 'Tốt', NULL),
(97, '220', '1811505120117', 'Văn Ngọc Hùng', '2000-01-01 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)', '18D1', 23, 3.12, 7.9, 78, 'Khá', 'Khá', NULL),
(98, '220', '1811505120118', 'Võ Ngọc Hưng', '2000-11-29 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)', '18D1', 19, 3.22, 8.03, 85, 'Giỏi', 'Tốt', NULL),
(99, '220', '1811505120122', 'Trương Văn Huy', '2000-07-23 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)', '18D1', 21, 3.21, 8.02, 84, 'Giỏi', 'Tốt', NULL),
(100, '220', '1811505120123', 'Nguyễn Phúc Khang', '2000-11-29 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)', '18D1', 21, 3.04, 7.58, 83, 'Khá', 'Tốt', NULL),
(101, '220', '1811505520102', 'Nguyễn Văn Anh', '2000-04-23 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '18TDH1', 21, 3.88, 9.1, 92, 'Xuất sắc', 'Xuất sắc', NULL),
(102, '220', '1811505520103', 'Nguyễn Quốc Bản', '2000-04-27 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '18TDH1', 19, 3.72, 8.95, 82, 'Xuất sắc', 'Tốt', NULL),
(103, '220', '1811505520104', 'Đoàn Gia Bảo', '2000-02-29 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '18TDH1', 20, 3.57, 8.6, 87, 'Giỏi', 'Tốt', NULL),
(104, '220', '1811505520105', 'Bùi Văn Châu', '2000-07-26 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '18TDH1', 19, 3.23, 8.07, 82, 'Giỏi', 'Tốt', NULL),
(105, '220', '1811505520106', 'Đặng Quang Chiến', '2000-06-03 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '18TDH1', 20, 3.15, 7.8, 82, 'Khá', 'Khá', NULL),
(106, '220', '1811505520107', 'Nguyễn Văn Chiến', '2000-12-05 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '18TDH1', 25, 3.05, 7.7, 82, 'Khá', 'Tốt', NULL),
(107, '220', '1811505520109', 'Nguyễn Trung Chính', '2000-03-29 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '18TDH1', 23, 3.12, 7.9, 83, 'Khá', 'Tốt', NULL),
(108, '220', '1811505520112', 'Nguyễn Thành Đạt', '2000-01-01 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '18TDH1', 19, 3.22, 8.03, 79, 'Giỏi', 'Giỏi', NULL),
(109, '220', '1811505520113', 'Bùi Anh Dũng', '2000-07-23 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '18TDH1', 21, 3.21, 8.02, 87, 'Giỏi', 'Giỏi', NULL),
(110, '220', '1811505520114', 'Đặng Quốc Dũng', '2000-11-29 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '18TDH1', 22, 2.89, 7.2, 77, 'Khá', 'Khá', NULL),
(111, '220', '1911505310101', 'Ngô Hoàng Anh', '2001-08-18 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 20, 3.79, 8.8, 88, 'Xuất sắc', 'Tốt', NULL),
(112, '220', '1911505310102', 'Hồ Thị Vân Anh', '2001-03-11 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 23, 3.42, 8.22, 90, 'Giỏi', 'Xuất sắc', NULL),
(113, '220', '1911505310103', 'Lê Huỳnh Bảo', '2001-04-01 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 23, 3.67, 8.52, 88, 'Xuất sắc', 'Tốt', NULL),
(114, '220', '1911505310105', 'Hồ Thái Bình', '2001-04-20 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 26, 3.65, 8.5, 91, 'Xuất sắc', 'Xuất sắc', NULL),
(115, '220', '1911505310106', 'Nguyễn Bá Cảm', '2001-07-11 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 21, 3.6, 8.44, 85, 'Xuất sắc', 'Tốt', NULL),
(116, '220', '1911505310107', 'Lê Văn Bảo Chung', '2000-09-04 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 22, 3.22, 8, 82, 'Giỏi', 'Tốt', NULL),
(117, '220', '1911505310117', 'Nguyễn Thị Khánh Hạ', '2000-02-04 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 19, 3.1, 7.6, 84, 'Khá', 'Tốt', NULL),
(118, '220', '1911505310118', 'Cao Thị Thúy Hằng', '2000-02-27 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 23, 3.84, 9.01, 100, 'Xuất sắc', 'Xuất sắc', NULL),
(119, '220', '1911505310119', 'Vy Quang Hiệp', '2000-06-09 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 17, 3.06, 7.68, 81, 'Khá', 'Tốt', NULL),
(120, '220', '1911505310120', 'Nguyễn Minh Hiếu', '2000-01-10 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 21, 3.3, 8.1, 89, 'Giỏi', 'Tốt', NULL),
(121, '220', '2050531200101', 'Nguyễn Tiến An', '2002-07-10 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '20T1', 21, 3.78, 8.95, 93, 'Xuất sắc', 'Xuất sắc', NULL),
(122, '220', '2050531200102', 'Huỳnh Đức An', '2002-05-05 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '20T1', 21, 3.2, 8.18, 84, 'Giỏi', 'Tốt', NULL),
(123, '220', '2050531200103', 'Võ Trần Trung Anh', '2002-12-12 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '20T1', 19, 3.36, 8.27, 90, 'Giỏi', 'Xuất sắc', NULL),
(124, '220', '2050531200111', 'Nguyễn Tiến Cường', '2002-12-07 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '20T1', 26, 3.65, 8.5, 91, 'Xuất sắc', 'Xuất sắc', NULL),
(125, '220', '2050531200118', 'Lê Thuận Diệu', '2001-11-17 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '20T1', 18, 3.48, 8.32, 85, 'Giỏi', 'Tốt', NULL),
(126, '220', '2050531200150', 'Lê Đức Hoàng', '2002-02-10 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '20T1', 23, 3.58, 8.35, 85, 'Giỏi', 'Tốt', NULL),
(127, '220', '2050531200157', 'Đinh Văn Huy', '2002-09-10 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '20T1', 19, 3.1, 7.6, 84, 'Khá', 'Tốt', NULL),
(128, '220', '2050531200159', 'Tôn Thất Huy', '2002-10-08 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '20T1', 23, 3.5, 8.3, 81, 'Giỏi', 'Tốt', NULL),
(129, '220', '2050531200154', 'Nông Quốc Hùng', '2002-07-06 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '20T1', 17, 3.06, 7.68, 81, 'Khá', 'Tốt', NULL),
(130, '220', '2050531200156', 'Võ Lê Nhật Huy', '2002-03-16 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '20T1', 21, 3.3, 8.1, 89, 'Giỏi', 'Tốt', NULL),
(131, '220', '1811504110101', 'Nguyễn An', '2000-08-17 00:00:00', 'Cơ khí', 'Công nghệ Kỹ thuật Cơ khí (Chuyên ngành Cơ khí chế tạo)', '18C1', 21, 3.5, 8.5, 92, 'Giỏi', 'Xuất sắc', NULL),
(132, '220', '1811504110103', 'Nguyễn Tuấn Cảnh', '2000-12-17 00:00:00', 'Cơ khí', 'Công nghệ Kỹ thuật Cơ khí (Chuyên ngành Cơ khí chế tạo)', '18C1', 19, 3.47, 8.4, 88, 'Giỏi', 'Tốt', NULL),
(133, '220', '1811504110105', 'Nguyễn Cường', '2000-09-15 00:00:00', 'Cơ khí', 'Công nghệ Kỹ thuật Cơ khí (Chuyên ngành Cơ khí chế tạo)', '18C1', 20, 2.88, 7.3, 81, 'Khá', 'Tốt', NULL),
(134, '220', '1811504110106', 'Nguyễn Xuân Đại', '2000-12-21 00:00:00', 'Cơ khí', 'Công nghệ Kỹ thuật Cơ khí (Chuyên ngành Cơ khí chế tạo)', '18C1', 19, 2.95, 7.5, 82, 'Khá', 'Tốt', NULL),
(135, '220', '1811504110108', 'Nguyễn Ngọc Tiến Đạt', '2000-07-08 00:00:00', 'Cơ khí', 'Công nghệ Kỹ thuật Cơ khí (Chuyên ngành Cơ khí chế tạo)', '18C1', 20, 3.15, 7.8, 82, 'Khá', 'Khá', NULL),
(136, '220', '1811504110109', 'Lâm Quốc Điệp', '2000-11-10 00:00:00', 'Cơ khí', 'Công nghệ Kỹ thuật Cơ khí (Chuyên ngành Cơ khí chế tạo)', '18C1', 25, 3.33, 8.1, 82, 'Giỏi', 'Tốt', NULL),
(137, '220', '1811504110110', 'Trương Quang Diệu', '2000-01-09 00:00:00', 'Cơ khí', 'Công nghệ Kỹ thuật Cơ khí (Chuyên ngành Cơ khí chế tạo)', '18C1', 23, 3.24, 8.05, 83, 'Giỏi', 'Tốt', NULL),
(138, '220', '1811504110111', 'Bạch Hải Dương', '2000-08-12 00:00:00', 'Cơ khí', 'Công nghệ Kỹ thuật Cơ khí (Chuyên ngành Cơ khí chế tạo)', '18C1', 19, 3.62, 8.8, 91, 'Xuất sắc', 'Xuất sắc', NULL),
(139, '220', '1811504110112', 'Phạm Văn Duy', '2000-05-23 00:00:00', 'Cơ khí', 'Công nghệ Kỹ thuật Cơ khí (Chuyên ngành Cơ khí chế tạo)', '18C1', 21, 3.4, 8.2, 85, 'Giỏi', 'Giỏi', NULL),
(140, '220', '1811504110113', 'Trần Khánh Duy', '2000-10-19 00:00:00', 'Cơ khí', 'Công nghệ Kỹ thuật Cơ khí (Chuyên ngành Cơ khí chế tạo)', '18C1', 22, 2.89, 7.2, 77, 'Khá', 'Khá', NULL),
(141, '220', '1811504210101', 'Phạm Văn Hoàng Ân', '2000-07-15 00:00:00', 'Cơ khí', 'Công nghệ Kỹ thuật ô tô', '18DL1', 22, 3.54, 8.7, 85, 'Xuất sắc', 'Tốt', NULL),
(142, '220', '1811504210102', 'Mai Văn Ánh', '2000-10-31 00:00:00', 'Cơ khí', 'Công nghệ Kỹ thuật ô tô', '18DL1', 19, 3.77, 8.9, 91, 'Xuất sắc', 'Xuất sắc', NULL),
(143, '220', '1811504210103', 'Lê Hoàng Bảo', '2000-01-10 00:00:00', 'Cơ khí', 'Công nghệ Kỹ thuật ô tô', '18DL1', 20, 3, 7.55, 81, 'Khá', 'Tốt', NULL),
(144, '220', '1811504210104', 'Châu Ngọc Chí', '2000-08-26 00:00:00', 'Cơ khí', 'Công nghệ Kỹ thuật ô tô', '18DL1', 19, 2.95, 7.5, 82, 'Khá', 'Tốt', NULL),
(145, '220', '1811504210107', 'Nguyễn Văn Cường', '2000-06-05 00:00:00', 'Cơ khí', 'Công nghệ Kỹ thuật ô tô', '18DL1', 20, 3.15, 7.8, 82, 'Khá', 'Khá', NULL),
(146, '220', '1811504210108', 'Hoàng Doanh', '2000-08-26 00:00:00', 'Cơ khí', 'Công nghệ Kỹ thuật ô tô', '18DL1', 25, 3.33, 8.1, 82, 'Giỏi', 'Tốt', NULL),
(147, '220', '1811504210109', 'Lê Văn Đạt', '2000-06-05 00:00:00', 'Cơ khí', 'Công nghệ Kỹ thuật ô tô', '18DL1', 23, 3.24, 8.05, 83, 'Giỏi', 'Tốt', NULL),
(148, '220', '1811504210110', 'Phan Quang Định', '2000-12-01 00:00:00', 'Cơ khí', 'Công nghệ Kỹ thuật ô tô', '18DL1', 19, 3.46, 8.25, 82, 'Giỏi', 'Tốt', NULL),
(149, '220', '1811504210111', 'Lê Huỳnh Đức', '2000-01-04 00:00:00', 'Cơ khí', 'Công nghệ Kỹ thuật ô tô', '18DL1', 19, 3.4, 8.2, 85, 'Giỏi', 'Tốt', NULL),
(150, '220', '1811504210112', 'Lê Văn Hiếu', '2000-10-31 00:00:00', 'Cơ khí', 'Công nghệ Kỹ thuật ô tô', '18DL1', 20, 3.22, 8, 81, 'Giỏi', 'Tốt', NULL),
(151, '220', '1811506120101', 'Nguyễn Thái Bình', '1999-02-27 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật xây dựng', '18XD1', 21, 3, 7.6, 78, 'Khá', 'Khá', NULL),
(152, '220', '1811506120102', 'Nguyễn Văn Cảnh', '2000-07-02 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật xây dựng', '18XD1', 19, 3.61, 8.9, 88, 'Xuất sắc', 'Tốt', NULL),
(153, '220', '1811506120103', 'Huỳnh Văn Chương', '2000-06-20 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật xây dựng', '18XD1', 20, 3.45, 8.3, 81, 'Giỏi', 'Tốt', NULL),
(154, '220', '1811506120105', 'Nguyễn Phúc Đại', '1999-01-11 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật xây dựng', '18XD1', 19, 2.9, 7.5, 82, 'Khá', 'Tốt', NULL),
(155, '220', '1811506120106', 'Lê Tấn Đăng', '2000-03-25 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật xây dựng', '18XD1', 20, 3.56, 8.8, 88, 'Giỏi', 'Tốt', NULL),
(156, '220', '1811506120107', 'Nguyễn Tất Đạt', '2000-01-07 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật xây dựng', '18XD1', 25, 3.33, 8.1, 82, 'Giỏi', 'Tốt', NULL),
(157, '220', '1811506120108', 'Nguyễn Tiến Đạt', '1999-04-10 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật xây dựng', '18XD1', 23, 3.24, 8.05, 83, 'Giỏi', 'Tốt', NULL),
(158, '220', '1811506120109', 'Nguyễn Bá Dương', '2000-01-11 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật xây dựng', '18XD1', 19, 3.23, 8.1, 91, 'Giỏi', 'Xuất sắc', NULL),
(159, '220', '1811506120110', 'Nguyễn Quang Duy', '2000-08-30 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật xây dựng', '18XD1', 21, 3.15, 7.9, 85, 'Khá', 'Tốt', NULL),
(160, '220', '1811506120111', 'Trần Đình Duy', '2000-11-21 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật xây dựng', '18XD1', 22, 2.89, 7.2, 77, 'Khá', 'Khá', NULL),
(161, '220', '1911505510101', 'Đinh Thiên Nhật Anh', '2001-01-01 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '19TDH1', 20, 3.25, 8.01, 83, 'Giỏi', 'Tốt', NULL),
(162, '220', '1911505510102', 'Hoàng Phúc Anh', '2001-10-26 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '19TDH1', 19, 3.55, 8.5, 91, 'Giỏi', 'Xuất sắc', NULL),
(163, '220', '1911505510104', 'Nguyễn Tiến Bằng', '2001-08-21 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '19TDH1', 18, 3.15, 7.9, 85, 'Giỏi', 'Tốt', NULL),
(164, '220', '1911505510106', 'Phạm Đình Cường', '2001-02-12 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '19TDH1', 23, 3.8, 8.9, 88, 'Xuất sắc', 'Tốt', NULL),
(165, '220', '1911505510113', 'Lê Bùi Hải Đăng', '2001-06-22 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '19TDH1', 24, 3.65, 8.45, 88, 'Xuất sắc', 'Tốt', NULL),
(166, '220', '1911505510120', 'Nguyễn Quang Huy', '2001-06-15 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '19TDH1', 21, 3.41, 8.3, 82, 'Giỏi', 'Tốt', NULL),
(167, '220', '1911505510121', 'Phạm Hưng', '2001-11-15 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '19TDH1', 23, 3, 7.5, 83, 'Khá', 'Tốt', NULL),
(168, '220', '1911505510125', 'Nguyễn Trung Long', '2001-11-25 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '19TDH1', 22, 3.2, 8.1, 81, 'Giỏi', 'Giỏi', NULL),
(169, '220', '1911505510128', 'Nguyễn Mộng Phú', '2001-09-09 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '19TDH1', 21, 3.21, 8.02, 87, 'Giỏi', 'Giỏi', NULL),
(170, '220', '1911505510136', 'Hồ Bảo Tín', '2001-03-02 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '19TDH1', 22, 2.89, 7.2, 77, 'Khá', 'Khá', NULL),
(171, '220', '2050551200101', 'Lâm Trần An', '2002-01-13 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '20TDH1', 19, 3.5, 8.4, 85, 'Giỏi', 'Tốt', NULL),
(172, '220', '2050551200103', 'Vũ Nguyễn Thế Anh', '2002-08-27 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '20TDH1', 19, 3.45, 8.3, 88, 'Giỏi', 'Tốt', NULL),
(173, '220', '2050551200106', 'Nguyễn Thu Bảo', '2000-01-04 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '20TDH1', 20, 3.67, 8.5, 85, 'Xuất sắc', 'Tốt', NULL),
(174, '220', '2050551200112', 'Nguyễn Duy Châu', '2002-07-01 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '20TDH1', 20, 3.3, 8.1, 81, 'Giỏi', 'Tốt', NULL),
(175, '220', '2050551200117', 'Lê Phước Duy', '2002-09-06 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '20TDH1', 24, 3.17, 8.08, 88, 'Khá', 'Tốt', NULL),
(176, '220', '2050551200118', 'Trần Xuân Dự', '2002-07-12 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '20TDH1', 22, 3.28, 8.23, 82, 'Giỏi', 'Tốt', NULL),
(177, '220', '2050551200157', 'Trần Nhật Luân', '2001-10-02 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '20TDH1', 23, 3.4, 8.3, 83, 'Giỏi', 'Tốt', NULL),
(178, '220', '2050551200159', 'Nguyễn Phương Nam', '2002-08-16 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '20TDH1', 22, 3.2, 8.1, 81, 'Giỏi', 'Giỏi', NULL),
(179, '220', '2050551200164', 'Hồ Minh Nghĩa', '2002-10-02 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '20TDH1', 21, 3.21, 8.02, 87, 'Giỏi', 'Giỏi', NULL),
(180, '220', '2050551200165', 'Nguyễn Đình Ngọc', '2002-01-27 00:00:00', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa', '20TDH1', 22, 3, 7.9, 89, 'Khá', 'Tốt', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemhoctap`
--

CREATE TABLE `diemhoctap` (
  `diemhoctap_id` int(11) NOT NULL,
  `diemhoctap_hocky` varchar(255) NOT NULL,
  `diemhoctap_msv` varchar(255) NOT NULL,
  `diemhoctap_tensv` varchar(255) NOT NULL,
  `diemhoctap_ngaysinh` varchar(255) NOT NULL,
  `diemhoctap_khoa` varchar(255) NOT NULL,
  `diemhoctap_nganh` varchar(255) NOT NULL,
  `diemhoctap_lop` varchar(255) NOT NULL,
  `diemhoctap_tinchi` int(11) NOT NULL,
  `diemhoctap_thang4` float NOT NULL,
  `diemhoctap_thang10` float NOT NULL,
  `diemhoctap_xeploai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `diemhoctap`
--

INSERT INTO `diemhoctap` (`diemhoctap_id`, `diemhoctap_hocky`, `diemhoctap_msv`, `diemhoctap_tensv`, `diemhoctap_ngaysinh`, `diemhoctap_khoa`, `diemhoctap_nganh`, `diemhoctap_lop`, `diemhoctap_tinchi`, `diemhoctap_thang4`, `diemhoctap_thang10`, `diemhoctap_xeploai`) VALUES
(5, '121', '1811505310001', 'Phạm Ngọc Anh', '2000-10-01 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 17, 3.56, 8.78, 'Giỏi'),
(6, '121', '1811505310002', 'Trần Chí', '2000-01-20 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 26, 3.73, 8.73, 'Xuất sắc'),
(7, '121', '1811505310003', 'Trần Hoàng Chung', '2000-03-16 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 23, 3.67, 8.52, 'Xuất sắc'),
(8, '121', '1811505310004', 'Nguyễn Đình Cường', '2000-09-22 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 26, 3.6, 8.46, 'Xuất sắc'),
(9, '121', '1811505310005', 'Bùi Vạn Đạt', '2000-01-16 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 20, 3.6, 8.44, 'Xuất sắc'),
(10, '121', '1811505310006', 'Cái Quốc Đạt', '2000-09-04 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 22, 3.45, 8.28, 'Giỏi'),
(11, '121', '1811505310007', 'Nguyễn Thành Đạt', '2000-02-04 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 17, 3.41, 8.26, 'Giỏi'),
(12, '121', '1811505310008', 'Trương Minh Đạt', '2000-02-27 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 23, 3.48, 8.24, 'Giỏi'),
(13, '121', '1811505310009', 'Đặng Minh Hiếu', '2000-06-09 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 17, 3.53, 8.22, 'Giỏi'),
(14, '121', '1811505310112', 'Nguyễn Đăng Khánh Hưng', '2000-01-10 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 16, 3.43, 8.22, 'Giỏi'),
(15, '121', '1811505310114', 'Bùi Nguyễn Ngọc Huy', '2000-01-20 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 17, 3.41, 8.17, 'Giỏi'),
(16, '121', '1811505310115', 'Đỗ Lê Huy', '2000-01-25 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 23, 3.33, 8.16, 'Giỏi'),
(17, '121', '1811505310116', 'Nguyễn Ngọc Huy', '2000-06-14 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 15, 3.2, 8.08, 'Giỏi'),
(18, '121', '1811505310117', 'Phạm Minh Khánh', '2000-10-10 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 23, 3.29, 8.05, 'Giỏi'),
(19, '121', '1811505310118', 'Nguyễn Vũ Anh Khoa', '1999-05-26 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 20, 3.2, 8.05, 'Giỏi'),
(20, '121', '1811505310119', 'Võ Tấn Hoàng Không', '1998-10-27 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 22, 3.41, 8.03, 'Giỏi'),
(21, '121', '1811505310121', 'Bạch Trung Kiên', '2000-10-05 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 26, 3.38, 8.01, 'Giỏi'),
(22, '121', '1811505310122', 'Võ Hoàng Lâm', '2000-04-11 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 20, 3.15, 8, 'Khá'),
(23, '121', '1811505310125', 'Nguyễn Hoàng Long', '2000-07-02 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 22, 3.23, 7.99, 'Giỏi'),
(24, '121', '1811505310130', 'Nguyễn Thị Mai', '2000-06-17 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 24, 3.17, 7.95, 'Khá');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemrenluyen`
--

CREATE TABLE `diemrenluyen` (
  `diemrenluyen_id` int(11) NOT NULL,
  `diemrenluyen_hocky` varchar(255) NOT NULL,
  `diemrenluyen_msv` varchar(255) NOT NULL,
  `diemrenluyen_tensv` varchar(255) NOT NULL,
  `diemrenluyen_ngaysinh` varchar(255) NOT NULL,
  `diemrenluyen_khoa` varchar(255) NOT NULL,
  `diemrenluyen_nganh` varchar(255) NOT NULL,
  `diemrenluyen_lop` varchar(255) NOT NULL,
  `diemrenluyen_diem` int(11) NOT NULL,
  `diemrenluyen_xeploai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `diemrenluyen`
--

INSERT INTO `diemrenluyen` (`diemrenluyen_id`, `diemrenluyen_hocky`, `diemrenluyen_msv`, `diemrenluyen_tensv`, `diemrenluyen_ngaysinh`, `diemrenluyen_khoa`, `diemrenluyen_nganh`, `diemrenluyen_lop`, `diemrenluyen_diem`, `diemrenluyen_xeploai`) VALUES
(1, '220', '1811505310001', 'Phạm Ngọc Anh', '2000-10-01 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 81, 'Tốt'),
(2, '220', '1811505310002', 'Trần Chí', '2000-01-20 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 82, 'Tốt'),
(3, '220', '1811505310003', 'Trần Hoàng Chung', '2000-03-16 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 75, 'Khá'),
(4, '220', '1811505310004', 'Nguyễn Đình Cường', '2000-09-22 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 72, 'Khá'),
(5, '220', '1811505310005', 'Bùi Vạn Đạt', '2000-01-16 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 91, 'Xuất sắc'),
(6, '220', '1811505310006', 'Cái Quốc Đạt', '2000-09-04 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 94, 'Xuất sắc'),
(7, '220', '1811505310007', 'Nguyễn Thành Đạt', '2000-02-04 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 88, 'Tốt'),
(8, '220', '1811505310008', 'Trương Minh Đạt', '2000-02-27 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 80, 'Khá'),
(9, '220', '1811505310009', 'Đặng Minh Hiếu', '2000-06-09 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 82, 'Tốt'),
(10, '220', '1811505310112', 'Nguyễn Đăng Khánh Hưng', '2000-01-10 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 85, 'Tốt'),
(11, '220', '1811505310114', 'Bùi Nguyễn Ngọc Huy', '2000-01-20 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 86, 'Tốt'),
(12, '220', '1811505310115', 'Đỗ Lê Huy', '2000-01-25 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 77, 'Khá'),
(13, '220', '1811505310116', 'Nguyễn Ngọc Huy', '2000-06-14 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 75, 'Khá'),
(14, '220', '1811505310117', 'Phạm Minh Khánh', '2000-10-10 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 88, 'Giỏi'),
(15, '220', '1811505310118', 'Nguyễn Vũ Anh Khoa', '1999-05-26 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 91, 'Xuất sắc'),
(16, '220', '1811505310119', 'Võ Tấn Hoàng Không', '1998-10-27 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 99, 'Xuất sắc'),
(17, '220', '1811505310121', 'Bạch Trung Kiên', '2000-10-05 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 89, 'Giỏi'),
(18, '220', '1811505310122', 'Võ Hoàng Lâm', '2000-04-11 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 73, 'Khá'),
(19, '220', '1811505310125', 'Nguyễn Hoàng Long', '2000-07-02 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 91, 'Xuất sắc'),
(20, '220', '1811505310130', 'Nguyễn Thị Mai', '2000-06-17 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 95, 'Xuất sắc'),
(21, '220', '1811505310201', 'Đặng Việt Anh', '2000-06-17 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 91, 'Xuất sắc'),
(22, '220', '1811505310202', 'Trần Quang Đăng', '2000-02-14 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 82, 'Tốt'),
(23, '220', '1811505310204', 'Nguyễn Đăng Định', '2000-07-08 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 75, 'Khá'),
(24, '220', '1811505310205', 'Nông Ngọc Đức', '2000-01-01 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 72, 'Khá'),
(25, '220', '1811505310206', 'Dương Thị Thùy Dung', '2000-03-14 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 85, 'Tốt'),
(26, '220', '1811505310207', 'Nguyễn Sỹ Dũng', '2000-02-22 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 82, 'Tốt'),
(27, '220', '1811505310208', 'Nguyễn Tiến Dũng', '2000-10-30 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 88, 'Tốt'),
(28, '220', '1811505310209', 'Phạm Tấn Dũng', '1998-06-23 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 80, 'Khá'),
(29, '220', '1811505310210', 'Hà Phước Dưỡng', '2000-09-13 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 82, 'Tốt'),
(30, '220', '1811505310212', 'Trần Nguyễn Phước Duy', '2000-07-27 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 85, 'Tốt'),
(111, '220', '1811505310310', 'Nguyễn Kim An', '1997-10-05 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T3', 81, 'Tốt'),
(112, '220', '1811505310304', 'Nguyễn Tấn Bình', '2000-01-16 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T3', 82, 'Tốt'),
(113, '220', '1811505310306', 'Nguyễn Văn Doanh', '2000-03-13 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T3', 75, 'Khá'),
(114, '220', '1811505310307', 'Hoàng Phan Tuấn Dũng', '2000-01-18 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T3', 72, 'Khá'),
(115, '220', '1811505310308', 'Dương Xuân Dưỡng', '2000-02-07 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T3', 81, 'Tốt'),
(116, '220', '1811505310309', 'Mai Xuân Duy', '2000-02-12 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T3', 94, 'Xuất sắc'),
(117, '220', '1811505310311', 'Phạm Phong Hào', '2000-02-10 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T3', 88, 'Tốt'),
(118, '220', '1811505310312', 'Cao Thị Thu Hiền', '2000-10-14 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T3', 80, 'Khá'),
(119, '220', '1811505310314', 'Tăng Thị Diễm Hương', '2000-04-16 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T3', 91, 'Xuất sắc'),
(120, '220', '1811505310115', 'Đỗ Ngọc Quang Huy', '2000-10-01 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T3', 77, 'Khá'),
(121, '220', '1811505310401', 'Bùi Phú Ân', '2000-01-02 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T4', 87, 'Tốt'),
(122, '220', '1811505310402', 'Nguyễn Hoàng Anh', '2000-12-18 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T4', 82, 'Tốt'),
(123, '220', '1811505310403', 'Trương Thanh Bình', '2000-10-20 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T4', 77, 'Khá'),
(124, '220', '1811505310404', 'Đoàn Viết Chính', '2000-10-01 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T4', 72, 'Khá'),
(125, '220', '1811505310405', 'Nguyễn Duy Cường', '2000-09-20 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T4', 81, 'Tốt'),
(126, '220', '1811505310406', 'Lê Quang Đạo', '2000-12-16 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T4', 81, 'Tốt'),
(127, '220', '1811505310407', 'Ngô Lâm Đoon', '2000-12-13 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T4', 88, 'Tốt'),
(128, '220', '1811505310408', 'Bùi Chung Đức', '2000-08-23 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T4', 80, 'Khá'),
(129, '220', '1811505310409', 'Nguyễn Ngọc Mạnh Duy', '2000-09-29 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T4', 86, 'Tốt'),
(130, '220', '1811505310411', 'Nguyễn Thanh Duy', '2000-03-27 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '18T4', 83, 'Tốt'),
(131, '220', '1911505310101', 'Nguyễn Hoàng Anh', '2001-08-18 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 81, 'Tốt'),
(132, '220', '1911505310102', 'Hồ Thị Vân Anh', '2001-03-11 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 82, 'Tốt'),
(133, '220', '1911505310104', 'Lê Huỳnh Bảo', '2001-04-01 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 75, 'Khá'),
(134, '220', '1911505310105', 'Hồ Thái Bình', '2001-04-20 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 72, 'Khá'),
(135, '220', '1911505310106', 'Nguyễn Bá Cảm', '2001-07-11 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 91, 'Xuất sắc'),
(136, '220', '1911505310107', 'Lê Văn Bảo Chung', '2001-02-24 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 94, 'Xuất sắc'),
(137, '220', '1911505310108', 'Ông Văn Chương', '2001-01-02 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 88, 'Tốt'),
(138, '220', '1911505310109', 'Nguyễn Vũ Dũng', '2001-01-03 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 80, 'Khá'),
(139, '220', '1911505310110', 'Ngô Nguyễn Trường Duy', '2001-05-14 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 82, 'Tốt'),
(140, '220', '1911505310111', 'Ngô Nhật Dương', '2001-06-14 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 85, 'Tốt'),
(141, '220', '1911505310201', 'Trịnh Hoàng Duy Anh', '2001-02-19 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T2', 91, 'Xuất sắc'),
(142, '220', '1911505310202', 'Đỗ Hồng Ân', '2001-06-19 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T2', 82, 'Tốt'),
(143, '220', '1911505310204', 'Nguyễn Thanh Cường', '2001-01-11 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T2', 75, 'Khá'),
(144, '220', '1911505310205', 'Lương Văn Chương', '2001-01-11 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T2', 72, 'Khá'),
(145, '220', '1911505310206', 'Văn Ngọc Dũng', '2001-09-30 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T2', 79, 'Khá'),
(146, '220', '1911505310207', 'Trần Đại', '2001-01-11 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T2', 94, 'Xuất sắc'),
(147, '220', '1911505310208', 'Phạm Văn Đông', '2001-08-02 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T2', 88, 'Tốt'),
(148, '220', '1911505310210', 'Nguyễn Xuân Đức', '2001-01-01 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T2', 80, 'Khá'),
(149, '220', '1911505310211', 'Hoàng Thanh Đức', '2001-02-04 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T2', 82, 'Tốt'),
(150, '220', '1911505310212', 'Trần Đình Được', '2001-06-12 00:00:00', 'Điện - Điện tử', 'Công nghệ thông tin', '19T2', 85, 'Tốt'),
(151, '220', '1811505120101', 'Nguyễn Công Chung', '2000-07-20 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện - điện tử', '18D1', 97, 'Xuất sắc'),
(152, '220', '1811505120110', 'Trần Anh Đức', '2000-04-08 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện - điện tử', '18D1', 72, 'Khá'),
(153, '220', '1811505120112', 'Phùng Thái Duy', '2000-11-23 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện - điện tử', '18D1', 85, 'Khá'),
(154, '220', '1811505120113', 'Trần Văn Giỏi', '2000-02-12 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện - điện tử', '18D1', 82, 'Khá'),
(155, '220', '1811505120114', 'Nguyễn Hữu Hải', '2000-03-27 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện - điện tử', '18D1', 82, 'Khá'),
(156, '220', '1811505120116', 'Đặng Văn Hoàng', '2000-07-08 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện - điện tử', '18D1', 91, 'Xuất sắc'),
(157, '220', '1811505120117', 'Văn Ngọc Hùng', '2000-01-01 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện - điện tử', '18D1', 88, 'Tốt'),
(158, '220', '1811505120118', 'Võ Ngọc Hưng', '2000-11-29 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện - điện tử', '18D1', 80, 'Khá'),
(159, '220', '1811505120122', 'Trương Văn Huy', '2000-07-23 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện - điện tử', '18D1', 82, 'Tốt'),
(160, '220', '1811505120123', 'Nguyễn Phúc Khang', '2000-11-29 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện - điện tử', '18D1', 85, 'Tốt'),
(161, '220', '1911505120101', 'Trần Gia Bảo', '2001-02-21 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện - điện tử', '19D1', 81, 'Tốt'),
(162, '220', '1911505120102', 'Trần Mạnh Cường', '2001-06-28 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện - điện tử', '19D1', 82, 'Tốt'),
(163, '220', '1911505120103', 'Tiêu Ngọc Chung', '2001-03-12 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện - điện tử', '19D1', 87, 'Tốt'),
(164, '220', '1911505120104', 'Nguyễn Hữu Đạt', '2001-01-01 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện - điện tử', '19D1', 78, 'Khá'),
(165, '220', '1911505120108', 'Bùi Minh Hoàn', '2001-06-01 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện - điện tử', '19D1', 82, 'Tốt'),
(166, '220', '1911505120109', 'Đặng Bá Đức', '2001-12-05 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện - điện tử', '19D1', 93, 'Xuất sắc'),
(167, '220', '1911505120110', 'Hoàng Minh Hiền', '2001-03-29 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện - điện tử', '19D1', 91, 'Xuất sắc'),
(168, '220', '1911505120115', 'Trần Xuân Hùng', '2001-01-01 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện - điện tử', '19D1', 79, 'Khá'),
(169, '220', '1911505120119', 'Phạm Công Kha', '2000-07-23 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện - điện tử', '19D1', 87, 'Tốt'),
(170, '220', '1911505120121', 'Nguyễn Ngọc Khen', '2000-11-29 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện - điện tử', '19D1', 75, 'Khá'),
(171, '220', '1811505520102', 'Nguyễn Văn Anh', '2000-04-23 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điều khiển và tự động hóa', '18TDH1', 81, 'Tốt'),
(172, '220', '1811505520103', 'Nguyễn Quốc Bản', '2000-04-27 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điều khiển và tự động hóa', '18TDH1', 82, 'Tốt'),
(173, '220', '1811505520104', 'Đoàn Gia Bảo', '2000-02-09 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điều khiển và tự động hóa', '18TDH1', 87, 'Tốt'),
(174, '220', '1811505520105', 'Bùi Văn Châu', '2000-07-26 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điều khiển và tự động hóa', '18TDH1', 78, 'Khá'),
(175, '220', '1811505520106', 'Đặng Quang Chiến', '2000-06-03 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điều khiển và tự động hóa', '18TDH1', 82, 'Tốt'),
(176, '220', '1811505520107', 'Nguyễn Văn Chiến', '2001-12-05 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điều khiển và tự động hóa', '18TDH1', 93, 'Xuất sắc'),
(177, '220', '1811505520109', 'Nguyễn Trung Chính', '2001-03-29 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điều khiển và tự động hóa', '18TDH1', 91, 'Xuất sắc'),
(178, '220', '1811505520112', 'Nguyễn Thành Đạt', '2001-01-01 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điều khiển và tự động hóa', '18TDH1', 79, 'Khá'),
(179, '220', '1811505520113', 'Bùi Anh Dũng', '2000-07-23 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điều khiển và tự động hóa', '18TDH1', 87, 'Tốt'),
(180, '220', '1811505520114', 'Đặng Quốc Dũng', '2000-11-29 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điều khiển và tự động hóa', '18TDH1', 75, 'Khá'),
(181, '220', '1811505410101', 'Trần Công Bảo', '2000-04-23 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện tử, truyền thông', '18DT1', 81, 'Tốt'),
(182, '220', '1811505410103', 'Phan Hoàng Bửu', '2000-04-27 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện tử, truyền thông', '18DT1', 82, 'Tốt'),
(183, '220', '1811505410104', 'Nguyễn Đạo Chính', '2000-02-09 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện tử, truyền thông', '18DT1', 87, 'Tốt'),
(184, '220', '1811505410105', 'Lê Văn Đăng', '2000-07-26 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện tử, truyền thông', '18DT1', 78, 'Khá'),
(185, '220', '1811505410106', 'Trần Hoài Đức', '2000-06-03 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện tử, truyền thông', '18DT1', 82, 'Tốt'),
(186, '220', '1811505410108', 'Nguyễn Ngọc Duy', '2000-12-05 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện tử, truyền thông', '18DT1', 84, 'Tốt'),
(187, '220', '1811505410109', 'Trần Văn Hào', '2000-03-29 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện tử, truyền thông', '18DT1', 89, 'Tốt'),
(188, '220', '1811505410111', 'Phan Phước Hiền', '2000-01-01 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện tử, truyền thông', '18DT1', 79, 'Khá'),
(189, '220', '1811505410112', 'Dương Chí Hiếu', '2000-07-23 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện tử, truyền thông', '18DT1', 87, 'Tốt'),
(190, '220', '181150541013', 'Lê Vũ Hòa', '2000-11-29 00:00:00', 'Điện - Điện tử', 'Công nghệ kỹ thuật điện tử, truyền thông', '18DT1', 75, 'Khá'),
(191, '220', '1811504110101', 'Nguyễn An', '2000-08-17 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật cơ khí', '18C1', 78, 'Khá'),
(192, '220', '1811504110103', 'Nguyễn Tuấn Cảnh', '2000-12-17 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật cơ khí', '18C1', 83, 'Tốt'),
(193, '220', '1811504110105', 'Nguyễn Cường', '2000-09-15 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật cơ khí', '18C1', 75, 'Khá'),
(194, '220', '1811504110106', 'Nguyễn Xuân Đại', '2000-11-21 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật cơ khí', '18C1', 82, 'Tốt'),
(195, '220', '1811504110108', 'Nguyễn Ngọc Tiến Đạt', '2000-07-08 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật cơ khí', '18C1', 79, 'Khá'),
(196, '220', '1811504110109', 'Lâm Quốc Điệp', '2000-11-10 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật cơ khí', '18C1', 94, 'Xuất sắc'),
(197, '220', '1811504110110', 'Trương Quang Diệu', '2000-01-09 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật cơ khí', '18C1', 88, 'Tốt'),
(198, '220', '1811504110111', 'Bạch Hải Dương', '2000-08-12 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật cơ khí', '18C1', 80, 'Khá'),
(199, '220', '1811504110112', 'Phạm Văn Duy', '2000-05-23 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật cơ khí', '18C1', 82, 'Tốt'),
(200, '220', '1811504110113', 'Trần Khánh Duy', '2000-10-19 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật cơ khí', '18C1', 75, 'Khá'),
(201, '220', '1811504210101', 'Phạm Văn Hoàng Ân', '2000-07-15 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật ô tô', '18DL1', 81, 'Tốt'),
(202, '220', '1811504210102', 'Mai Văn Ánh', '2000-10-31 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật ô tô', '18DL1', 82, 'Tốt'),
(203, '220', '1811504210103', 'Lê Hoàng Bảo', '2000-01-10 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật ô tô', '18DL1', 75, 'Khá'),
(204, '220', '1811504210104', 'Châu Ngọc Chí', '2000-08-26 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật ô tô', '18DL1', 72, 'Khá'),
(205, '220', '1811504210107', 'Nguyễn Văn Cường', '2000-06-05 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật ô tô', '18DL1', 79, 'Khá'),
(206, '220', '1811504210108', 'Hoàng Doanh', '2000-08-26 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật ô tô', '18DL1', 94, 'Xuất sắc'),
(207, '220', '1811504210109', 'Lê Văn Đạt', '2000-06-05 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật ô tô', '18DL1', 88, 'Tốt'),
(208, '220', '1811504210110', 'Phan Quang Định', '2000-12-01 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật ô tô', '18DL1', 80, 'Khá'),
(209, '220', '1811504210111', 'Lê Huỳnh Đức', '2000-01-04 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật ô tô', '18DL1', 82, 'Tốt'),
(210, '220', '1811504210112', 'Lê Văn Hiếu', '2000-10-31 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật ô tô', '18DL1', 85, 'Tốt'),
(211, '220', '1811504410101', 'Nguyễn Phạm Thiên Ân', '2000-07-15 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật cơ điện tử', '18CDT1', 81, 'Tốt'),
(212, '220', '1811504410102', 'Nguyễn Ngọc Bảo', '2000-10-31 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật cơ điện tử', '18CDT1', 82, 'Tốt'),
(213, '220', '1811504410103', 'Cao Hữu Chiến', '2000-01-10 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật cơ điện tử', '18CDT1', 75, 'Khá'),
(214, '220', '1811504410104', 'Vy Văn Chính', '2000-08-26 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật cơ điện tử', '18CDT1', 72, 'Khá'),
(215, '220', '1811504410105', 'Đặng Bá Đáng', '2000-06-05 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật cơ điện tử', '18CDT1', 79, 'Khá'),
(216, '220', '1811504410106', 'Phan Thanh Danh', '2000-08-26 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật cơ điện tử', '18CDT1', 94, 'Xuất sắc'),
(217, '220', '1811504410107', 'Ngô Thành Đạt', '2000-06-05 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật cơ điện tử', '18CDT1', 88, 'Tốt'),
(218, '220', '1811504410108', 'Nguyễn Huỳnh Thành Đạt', '2000-12-01 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật cơ điện tử', '18CDT1', 80, 'Khá'),
(219, '220', '1811504410010', 'Triệu Văn Đông', '2000-01-04 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật cơ điện tử', '18CDT1', 82, 'Tốt'),
(220, '220', '1811504410111', 'Nguyễn Ngọc Dũng', '2000-10-31 00:00:00', 'Cơ khí', 'Công nghệ kỹ thuật cơ điện tử', '18CDT1', 85, 'Tốt'),
(221, '220', '1811506120101', 'Nguyễn Thái Bình', '1999-02-27 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật xây dựng', '18XD1', 88, 'Tốt'),
(222, '220', '1811506120102', 'Nguyễn Văn Cảnh', '2000-07-02 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật xây dựng', '18XD1', 78, 'Khá'),
(223, '220', '1811506120103', 'Huỳnh Văn Chương', '2000-06-20 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật xây dựng', '18XD1', 88, 'Tốt'),
(224, '220', '1811506120105', 'Nguyễn Phúc Đại', '1999-01-11 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật xây dựng', '18XD1', 78, 'Khá'),
(225, '220', '1811506120106', 'Lê Tấn Đăng', '2000-03-25 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật xây dựng', '18XD1', 89, 'Tốt'),
(226, '220', '1811506120107', 'Nguyễn Tất Đạt', '2000-01-07 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật xây dựng', '18XD1', 77, 'Khá'),
(227, '220', '1811506120108', 'Nguyễn Tiến Đạt', '1999-04-10 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật xây dựng', '18XD1', 88, 'Tốt'),
(228, '220', '1811506120109', 'Nguyễn Bá Dương', '2000-01-11 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật xây dựng', '18XD1', 80, 'Khá'),
(229, '220', '1811506120110', 'Nguyễn Quang Duy', '2000-08-30 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật xây dựng', '18XD1', 82, 'Tốt'),
(230, '220', '1811506120111', 'Trần Đình Duy', '2000-11-21 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật xây dựng', '18XD1', 85, 'Tốt'),
(231, '220', '1811506310105', 'Nguyễn Gia Duy', '2000-04-24 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật giao thông', '18XC1', 87, 'Tốt'),
(232, '220', '1811506310107', 'Võ Tường Hân', '2000-03-16 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật giao thông', '18XC1', 88, 'Tốt'),
(233, '220', '1811506310109', 'Nguyễn Quốc Huy', '2000-01-28 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật giao thông', '18XC1', 91, 'Xuất sắc'),
(234, '220', '1811506310111', 'Nguyễn Đình Khải', '2000-10-25 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật giao thông', '18XC1', 78, 'Khá'),
(235, '220', '1811506310112', 'Lê Văn Kiệt', '2000-02-20 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật giao thông', '18XC1', 89, 'Tốt'),
(236, '220', '1811506310113', 'Phạm Văn Lâm', '2000-01-04 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật giao thông', '18XC1', 77, 'Khá'),
(237, '220', '181150631014', 'Cao Thành Mẫn', '2000-10-06 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật giao thông', '18XC1', 88, 'Tốt'),
(238, '220', '1811506310115', 'Lê Đức Mạnh', '2000-01-11 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật giao thông', '18XC1', 80, 'Khá'),
(239, '220', '1811506310116', 'Phạm Văn Muộn', '2000-06-26 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật giao thông', '18XC1', 82, 'Tốt'),
(240, '220', '1811506310117', 'Lê Văn Nam', '2000-02-23 00:00:00', 'Kỹ thuật xây dựng', 'Công nghệ kỹ thuật giao thông', '18XC1', 85, 'Tốt'),
(241, '220', '1811514110101', 'Lê Minh Anh', '2000-04-17 00:00:00', 'Sư phạm công nghiệp', 'Sư phạm kỹ thuật công nghiệp', '18SK1', 87, 'Tốt'),
(242, '220', '1811514110102', 'Phạm Văn Bảo', '2000-05-22 00:00:00', 'Sư phạm công nghiệp', 'Sư phạm kỹ thuật công nghiệp', '18SK1', 88, 'Tốt'),
(243, '220', '1811514110103', 'Nguyễn Huy Cường', '2000-09-22 00:00:00', 'Sư phạm công nghiệp', 'Sư phạm kỹ thuật công nghiệp', '18SK1', 91, 'Xuất sắc'),
(244, '220', '1811514110105', 'Huỳnh Thị Mỹ Duyên', '2000-01-20 00:00:00', 'Sư phạm công nghiệp', 'Sư phạm kỹ thuật công nghiệp', '18SK1', 78, 'Khá'),
(245, '220', '1811514110108', 'Lê Hữu Hạ', '2000-02-05 00:00:00', 'Sư phạm công nghiệp', 'Sư phạm kỹ thuật công nghiệp', '18SK1', 89, 'Tốt'),
(246, '220', '1811514110110', 'Nguyễn Huy Hoàng', '2000-12-01 00:00:00', 'Sư phạm công nghiệp', 'Sư phạm kỹ thuật công nghiệp', '18SK1', 77, 'Khá'),
(247, '220', '1811514110112', 'Lương Minh Huy', '2000-08-31 00:00:00', 'Sư phạm công nghiệp', 'Sư phạm kỹ thuật công nghiệp', '18SK1', 88, 'Tốt'),
(248, '220', '1811514110114', 'Trần Quang Khang', '2000-10-13 00:00:00', 'Sư phạm công nghiệp', 'Sư phạm kỹ thuật công nghiệp', '18SK1', 80, 'Khá'),
(249, '220', '1811514110115', 'Nguyễn Anh Khoa', '2000-02-03 00:00:00', 'Sư phạm công nghiệp', 'Sư phạm kỹ thuật công nghiệp', '18SK1', 82, 'Tốt'),
(250, '220', '1811514110116', 'Nguyễn Thị Kiều', '2000-03-26 00:00:00', 'Sư phạm công nghiệp', 'Sư phạm kỹ thuật công nghiệp', '18SK1', 85, 'Tốt'),
(251, '220', '1811507210101', 'Võ Nguyễn Thiện Anh', '2000-09-18 00:00:00', 'Công nghệ Hóa học - Môi trường', 'Công nghệ kỹ thuật môi trường', '18MT1', 91, 'Xuất sắc'),
(252, '220', '1811507210102', 'Đỗ Thị Thu Ánh', '2000-09-26 00:00:00', 'Công nghệ Hóa học - Môi trường', 'Công nghệ kỹ thuật môi trường', '18MT1', 86, 'Tốt'),
(253, '220', '1811507210103', 'Trần Quốc Đạt', '2000-04-12 00:00:00', 'Công nghệ Hóa học - Môi trường', 'Công nghệ kỹ thuật môi trường', '18MT1', 81, 'Tốt'),
(254, '220', '1811507210105', 'Nguyễn Gia Huy', '2000-02-15 00:00:00', 'Công nghệ Hóa học - Môi trường', 'Công nghệ kỹ thuật môi trường', '18MT1', 88, 'Tốt'),
(255, '220', '1811507210107', 'Trần Anh Nhân', '2000-11-17 00:00:00', 'Công nghệ Hóa học - Môi trường', 'Công nghệ kỹ thuật môi trường', '18MT1', 75, 'Khá'),
(256, '220', '1811507210108', 'Nguyễn Thị Linh Phương', '2000-03-13 00:00:00', 'Công nghệ Hóa học - Môi trường', 'Công nghệ kỹ thuật môi trường', '18MT1', 77, 'Khá'),
(257, '220', '1811507210110', 'Huỳnh Văn Sỹ', '2000-01-15 00:00:00', 'Công nghệ Hóa học - Môi trường', 'Công nghệ kỹ thuật môi trường', '18MT1', 88, 'Tốt'),
(258, '220', '1811507210111', 'Hồ Đình Tài', '2000-12-05 00:00:00', 'Công nghệ Hóa học - Môi trường', 'Công nghệ kỹ thuật môi trường', '18MT1', 80, 'Khá'),
(259, '220', '1811507210112', 'Nguyễn Anh Tài', '2000-08-23 00:00:00', 'Công nghệ Hóa học - Môi trường', 'Công nghệ kỹ thuật môi trường', '18MT1', 82, 'Tốt'),
(260, '220', '1811507210113', 'Tạ Thị Vi', '2000-02-14 00:00:00', 'Công nghệ Hóa học - Môi trường', 'Công nghệ kỹ thuật môi trường', '18MT1', 85, 'Tốt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhthucduyet`
--

CREATE TABLE `hinhthucduyet` (
  `hinhthucduyet_id` int(11) NOT NULL,
  `hinhthucduyet_ten` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hinhthucduyet`
--

INSERT INTO `hinhthucduyet` (`hinhthucduyet_id`, `hinhthucduyet_ten`) VALUES
(1, 'Nhà trường duyệt học bổng'),
(2, 'Nhà tài trợ duyệt học bổng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocbong`
--

CREATE TABLE `hocbong` (
  `hocbong_id` int(11) NOT NULL,
  `loaihocbong_id` int(11) DEFAULT NULL,
  `hocky_id` int(11) DEFAULT NULL,
  `hocbong_ten` varchar(255) NOT NULL,
  `hocbong_hinhanh` varchar(255) DEFAULT NULL,
  `hocbong_file` varchar(255) DEFAULT NULL,
  `hocbong_noidung` varchar(1000) NOT NULL,
  `hocbong_thoigianbatdau` date NOT NULL,
  `hocbong_thoigianketthuc` date NOT NULL,
  `hocbong_thoigiandang` datetime DEFAULT NULL,
  `hocbong_kinhphi` varchar(255) NOT NULL,
  `hocbong_tongsoluong` int(11) NOT NULL,
  `hocbong_soluongdadangky` int(11) NOT NULL DEFAULT 0,
  `hocbong_tinhtrang` int(11) NOT NULL,
  `hocbong_nguoiduyet` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `hocbong_ngayduyet` datetime DEFAULT NULL,
  `hocbong_thoigiancapnhat` datetime DEFAULT NULL,
  `hocbong_luotxem` int(255) DEFAULT 0,
  `hinhthucduyet_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hocbong`
--

INSERT INTO `hocbong` (`hocbong_id`, `loaihocbong_id`, `hocky_id`, `hocbong_ten`, `hocbong_hinhanh`, `hocbong_file`, `hocbong_noidung`, `hocbong_thoigianbatdau`, `hocbong_thoigianketthuc`, `hocbong_thoigiandang`, `hocbong_kinhphi`, `hocbong_tongsoluong`, `hocbong_soluongdadangky`, `hocbong_tinhtrang`, `hocbong_nguoiduyet`, `user_id`, `hocbong_ngayduyet`, `hocbong_thoigiancapnhat`, `hocbong_luotxem`, `hinhthucduyet_id`) VALUES
(1, 2, 3, 'Học bổng thử thách UTE năm học 2018-2019', 'UTE-2018-2019-226.jpg', 'https://drive.google.com/drive/folders/1o4JGUFuHnj68PzrI0tDJ_4_mGbLNXyuN?usp=sharing', '<p>Trường Đại học Sư phạm Kỹ thuật Đà Nẵng thông báo về việc triển khai Học bổng Thử thách UTE năm học 2018-2019 với các tiêu chí sau đây:</p><ol><li>Có kết quả năm học từ loại giỏi trở lên</li><li>Số tín chỉ đăng kí từ 18 tín chỉ/học kỳ trở lên</li><li>Điểm kết thúc học phần phải đạt loại C trở lên</li><li>Tích cực tham gia các hoạt động nghiên cứu Khoa học (SRT), Đoàn, Hội</li></ol><p>Hồ sơ gồm:</p><ol><li>Đơn xin học bổng</li><li>Minh chứng bảng điểm học tập trong năm học xét cấp</li><li>Minh chứng bảng điểm rèn luyện trong năm học xét cấp</li><li>Minh chứng tham gia các hoạt động nghiên cứu Khoa học (SRT), Đoàn, Hội</li><li>Bài tự luận viết tay chủ đề: Tại sao bạn chọn học bổng Thử thách UTE và bạn có xứng đáng nhận học bổng hay không?</li><li>Thư giới thiệu của giáo viên chủ nhiệm và 2 giảng viên trực tiếp giảng dạy</li></ol>', '2019-08-15', '2019-08-27', '2019-08-15 07:00:00', '400000000', 20, 0, 1, 'Phòng CTSV', 5, '2019-08-15 07:00:00', '2022-01-11 10:40:33', 92, 1),
(2, 2, 5, 'Học bổng thử thách UTE năm học 2019-2020', 'UTE-2019-20201.jpg', 'https://drive.google.com/drive/folders/1o4JGUFuHnj68PzrI0tDJ_4_mGbLNXyuN?usp=sharing', '<p>Trường Đại học Sư phạm Kỹ thuật Đà Nẵng thông báo về việc triển khai Học bổng Thử thách UTE năm học 2019-2020 với các tiêu chí sau đây:</p><ol><li>Có kết quả năm học từ loại giỏi trở lên</li><li>Số tín chỉ đăng kí từ 18 tín chỉ/học kỳ trở lên</li><li>Điểm kết thúc học phần phải đạt loại C trở lên</li><li>Tích cực tham gia các hoạt động nghiên cứu Khoa học (SRT), Đoàn, Hội</li></ol><p>Hồ sơ gồm:</p><ol><li>Đơn xin học bổng</li><li>Minh chứng bảng điểm học tập trong năm học xét cấp</li><li>Minh chứng bảng điểm rèn luyện trong năm học xét cấp</li><li>Minh chứng tham gia các hoạt động nghiên cứu Khoa học (SRT), Đoàn, Hội</li><li>Bài tự luận viết tay chủ đề: Tại sao bạn chọn học bổng Thử thách UTE và bạn có xứng đáng nhận học bổng hay không?</li><li>Thư giới thiệu của giáo viên chủ nhiệm và 2 giảng viên trực tiếp giảng dạy</li></ol>', '2020-08-15', '2020-08-27', NULL, '400000000', 20, 0, 1, 'Phòng CTSV', 5, '2020-08-15 07:00:00', '2022-01-11 10:41:22', 82, 1),
(3, 2, 7, 'Học bổng thử thách UTE năm học 2020-2021', 'hocbongute47.jpg', 'https://drive.google.com/drive/folders/1o4JGUFuHnj68PzrI0tDJ_4_mGbLNXyuN?usp=sharing', '<p>Trường Đại học Sư phạm Kỹ thuật Đà Nẵng thông báo về việc triển khai Học bổng Thử thách UTE năm học 2020-2021 với các tiêu chí sau đây:</p><ol><li>Có kết quả năm học từ loại giỏi trở lên</li><li>Số tín chỉ đăng kí từ 18 tín chỉ/học kỳ trở lên</li><li>Điểm kết thúc học phần phải đạt loại C trở lên</li><li>Tích cực tham gia các hoạt động nghiên cứu Khoa học (SRT), Đoàn, Hội</li></ol><p>Hồ sơ gồm:</p><ol><li>Đơn xin học bổng</li><li>Minh chứng bảng điểm học tập trong năm học xét cấp</li><li>Minh chứng bảng điểm rèn luyện trong năm học xét cấp</li><li>Minh chứng tham gia các hoạt động nghiên cứu Khoa học (SRT), Đoàn, Hội</li><li>Bài tự luận viết tay chủ đề: Tại sao bạn chọn học bổng Thử thách UTE và bạn có xứng đáng nhận học bổng hay không?</li><li>Thư giới thiệu của giáo viên chủ nhiệm và 2 giảng viên trực tiếp giảng dạy</li></ol>', '2021-10-28', '2022-01-16', '2021-10-28 07:00:00', '400000000', 20, 15, 1, 'Phòng CTSV', 5, '2021-10-28 07:00:00', '2022-01-15 19:51:06', 80, 1),
(17, 1, 4, 'Học bổng khuyến khích học tập học kỳ I năm học 2019-2020', 'spktdn29.png', 'https://drive.google.com/drive/folders/1ZHOToXifhiXYvqK1RvR4_hpG0gyL-8-n', '<p>Trường Đại học Sư phạm Kỹ thuật Đà Nẵng thông báo về Học bổng khuyến khích học tập học kì I năm học 2019-2020. Các sinh viên là cán bộ lớp, cán bộ đoàn có thể nộp các minh chứng để được xem xét cộng điểm thưởng</p>', '2020-04-10', '2020-04-24', '2020-04-10 07:00:00', '1000000000', 300, 0, 1, 'Phòng CTSV', 5, '2020-04-10 08:57:00', '2022-01-10 20:50:34', 10, 1),
(18, 1, 5, 'Học bổng khuyến khích học tập kì II năm học 2019-2020', 'spktdn7.png', 'https://drive.google.com/drive/folders/1ZHOToXifhiXYvqK1RvR4_hpG0gyL-8-n', '<p>Trường Đại học Sư phạm Kỹ thuật Đà Nẵng thông báo về Học bổng khuyến khích học tập học kì II năm học 2019-2020. Các sinh viên là cán bộ lớp, cán bộ đoàn có thể nộp các minh chứng để được xem xét cộng điểm thưởng</p>', '2020-07-07', '2020-07-21', '2020-07-07 14:00:00', '1000000000', 200, 0, 1, 'Phòng CTSV', 5, '2021-07-07 09:25:00', '2022-01-10 20:50:22', 10, 1),
(19, 1, 6, 'Học bổng khuyến khích học tập học kì I năm học 2020-2021', 'spktdn51.png', 'https://drive.google.com/drive/folders/1ZHOToXifhiXYvqK1RvR4_hpG0gyL-8-n', '<p>Trường Đại học Sư phạm Kỹ thuật Đà Nẵng thông báo về học bổng khuyến khích học tập học kì I năm học 2020-2021. Các sinh viên là cán bộ đoàn, cán bộ lớp có thể nộp minh chứng để xem xét cộng điểm thưởng</p>', '2021-03-14', '2021-03-29', '2021-03-14 08:00:00', '1000000000', 200, 0, 1, 'Phòng CTSV', 5, '2021-03-15 09:00:00', '2022-01-10 20:50:10', 9, 1),
(20, 1, 7, 'Học bổng khuyến khích học tập học kỳ II năm học 2020-2021', 'spktdn50.png', 'https://drive.google.com/drive/folders/1ZHOToXifhiXYvqK1RvR4_hpG0gyL-8-n', '<p>Trường Đại học Sư phạm Kỹ thuật Đà Nẵng thông báo về học bổng khuyến khích học tập học kì II năm học 2020-2021. Các sinh viên là cán bộ đoàn, cán bộ lớp có thể nộp minh chứng để xem xét cộng điểm thưởng.</p>', '2021-12-14', '2022-01-23', '2021-12-14 08:30:00', '1000000000', 300, 5, 1, 'Phòng CTSV', 5, '2021-12-14 09:45:00', '2022-01-23 14:48:16', 78, 1),
(21, 3, 7, 'Học bổng dành cho sinh viên có hoàn cảnh khó khăn do Công Đoàn ĐHĐN tài trợ', 'congdoandn94.jpg', 'https://drive.google.com/drive/folders/1qj6cTTHCX9QtMKbLCVEWO1P4FCPQvsaE', '<p>Công đoàn Đại học Đà Nẵng trao 6 suất học bổng, mỗi suất 5 triệu đồng nhằm động viên các em sinh viên có hoàn cảnh khó khăn vươn lên trong học tập dựa theo các tiêu chí sau:</p><ol><li>Sinh viên thuộc hộ nghèo chưa nhận học bổng của tổ chức cá nhân nào trong năm học vừa qua</li><li>Có kết quả học tập trong năm học đạt loại khá trở lên</li></ol><p>Hồ sơ bao gồm</p><ol><li>Đơn xin học bổng (Viết tay)</li><li>Minh chứng hoàn cảnh khó khăn</li><li>Minh chứng có kết quả học tập trong năm đạt loại khá trở lên</li></ol>', '2021-12-28', '2022-01-14', '2021-12-27 08:00:00', '30000000', 6, 10, 1, 'Phòng CTSV', 6, '2021-12-28 22:48:19', '2022-01-22 22:28:36', 105, 2),
(22, 3, 7, 'Học bổng \"Nâng bước tân thủ khoa\" của Báo Tiền phong', 'baotienphong11.jpg', 'https://drive.google.com/drive/folders/1B8SeobvbwtcJ5fAw0e2Rp3RUUdqDcie0', '<p>Báo Tiền Phong - Chi nhánh Đà Nẵng sẽ trao tặng 5 suất học bổng, mỗi suất 10 triệu đồng bổng cho các sinh viên là Thủ khoa hoặc có thứ hạng cao có hoàn cảnh khó khăn trong kỳ tuyển sinh năm 2021 với các tiêu chí như sau:</p><ol><li>Sinh viên có hộ khẩu từ Thừa Thiên Huế trở vào</li><li>Sinh viên có hoàn cảnh khó khăn</li></ol><p>Hồ sơ gồm:</p><ol><li>Minh chứng sổ hộ khẩu</li><li>Giấy xác nhận gia đình có hoàn cảnh khó khăn</li><li>Viết một bức thư bằng tay nói về hoàn cảnh gia đình, nỗ lực của bản thân trong quá trình học tập, đồng thời thể hiện được ước mơ và khát vọng thể hiện của bản thân trong tương lai</li></ol>', '2021-12-30', '2022-01-13', '2021-12-29 18:42:08', '50000000', 5, 7, 1, 'Phòng CTSV', 90, '2021-12-29 15:05:53', '2022-01-13 11:41:27', 127, 2),
(26, 3, 7, 'Học bổng khuyến học của Hội khuyến học Thành phố Đà Nẵng', 'khyenhocdn44.jpg', NULL, '<p>Hội khuyến học Thành phố Đà Nẵng sẽ trao 10 suất học bổng, mỗi suất 2 triệu đồng nhằm hỗ trợ các em có hoàn cảnh khó khăn vươn lên trong học tập. Học bổng bao gồm các tiêu chí như sau:</p><ol><li>Sinh viên có hộ khẩu thường trú tại thành phố Đà Nẵng</li><li>Sinh viên có hoàn cảnh khó khăn</li><li>Có kết quả học tập từ loại Khá trở lên trong học kỳ I vừa qua và chưa nhận bất kỳ học bổng từ đơn vị và cá nhân nào</li></ol><p>Hồ sơ bao gồm:</p><ol><li>Đơn xin học bổng (Viết tay)</li><li>Minh chứng sổ hộ khẩu</li><li>Minh chứng hoàn cảnh khó khăn</li><li>Minh chứng kết quả học tập</li></ol>', '2021-12-30', '2022-01-14', '2021-12-30 10:31:23', '10000000', 5, 1, 1, 'Phòng CTSV', 88, '2021-12-30 10:32:01', '2022-01-19 09:42:56', 70, 2),
(29, 3, 7, 'Học bổng Hessen (CHLB Đức) năm học 2021-2022', 'hessen72.jpg', NULL, '<p>Bộ Khoa học và Nghệ thuật Bang Hessen (CHLB Đức) thông báo về Học bổng Hessen năm học 2021-2022 với 4 suất học bổng, mỗi suất trị giá 13.500.000 đ. Học bổng gồm các tiêu chí như sau:</p><ol><li>Có kết quả học tập học kỳ I năm học 2021-2022 đạt từ 7.5 trở lên tính theo thang 10 (hoặc tương đương đối với thang điểm 4)</li><li>Sinh viên có hoàn cảnh khó khăn và chưa nhận học bổng hoặc các nguồn hỗ trợ tài chính từ các cá nhân, tổ chức trong năm học vừa qua</li><li>Tham gia các hoạt động xã hội</li></ol><p>Hồ sơ bao gồm:</p><ol><li>Minh chứng bảng điểm</li><li>Minh chứng về hoàn cảnh khó khăn</li><li>Minh chứng tham gia các hoạt động xã hội</li></ol>', '2022-01-01', '2022-01-14', '2021-12-31 11:37:14', '5400000', 4, 9, 1, 'Phòng CTSV', 92, '2021-12-31 11:37:48', '2022-01-19 09:40:23', 90, 2),
(30, 3, 8, 'Học bổng Xuân sẻ chia của Đại học Đà Nẵng', 'xuansechia15.jpg', NULL, '<p>Nhằm hỗ trợ sinh viên gặp khó khăn trong Tết Nguyên Đán 2022 sắp tới, Đại học Đà Nẵng sẽ trao 5 suất học bổng, mỗi suất 2 triệu đồng cho sinh viên Đại học Sư phạm Kỹ thuật Đà Nẵng với các tiêu chí sau:</p><ol><li>Sinh viên có hoàn cảnh khó khăn.</li><li>Có điểm học tập từ loại khá trở lên,&nbsp;</li><li>Gia đình chịu ảnh hưởng của bão lũ trong năm 2020</li></ol><p>Hồ sơ bao gồm:</p><ol><li>Đơn xin học bổng viết tay.</li><li>Bảng điểm học tập năm học 2020-2021</li><li>Minh chứng hoàn cảnh khó khăn (hộ nghèo, cận nghèo, mồ côi, …)</li><li>Minh chứng khó khăn do bão lũ (có xác nhận của địa phương)</li></ol>', '2022-01-01', '2022-01-15', '2021-12-31 16:22:12', '10000000', 6, 10, 1, 'Phòng CTSV', 93, '2022-01-06 10:45:11', '2022-01-23 15:14:28', 158, 2),
(32, 3, 7, 'Học bổng Jesco Asia Nhật Bản', 'jesoasia6.jpg', NULL, '<p>Tập đoàn Jesco Asia Nhật Bản - chi nhánh Đà Nẵng thông báo về 10 suất Học bổng Jesco Asia Nhật Bản, mỗi suất 5 triệu đồng &nbsp;dành cho sinh viên có hoàn cảnh khó khăn đạt kết quả tốt trong học tập. Học bổng gồm các tiêu chí như sau:</p><ol><li>Sinh viên có hoàn cảnh khó khăn (Hộ nghèo, cận nghèo, mồ côi…)</li><li>Kết quả học tập đạt loại giỏi trở lên</li><li>Tích cực tham gia các hoạt động xã hội</li></ol><p>Hồ sơ gồm:</p><ol><li>Đơn xin học bổng viết tay</li><li>Bảng điểm năm học 2020-2021</li><li>Minh chứng có hoàn cảnh khó khăn</li><li>Minh chứng tham gia các hoạt động xã hội</li></ol>', '2022-01-11', '2022-01-25', '2022-01-11 14:28:33', '55000000', 14, 14, 1, 'Phòng CTSV', 94, '2022-01-11 14:28:53', '2022-01-19 20:36:19', 67, 2),
(33, 3, 7, 'aaaaaaaaaaaaaaa', '_q4-ykeXOPE44.jpeg', NULL, '<p>aaaa</p>', '2022-01-18', '2022-01-21', '2022-01-13 16:08:04', '10000000', 5, 0, 0, 'Phòng CTSV', 92, '2022-01-13 16:10:36', '2022-01-13 16:16:15', 1, 2),
(35, 3, 7, 'Học bổng Xuân sẻ chia 2022 của Đại học Đà Nẵng (Đợt 2)', 'xuansechia95.jpg', NULL, '<p>Nhằm tiếp tục hỗ trợ sinh viên gặp hoàn cảnh khó khăn trong Tết Nguyên Đán 2022 sắp tới, Đại học Đà Nẵng sẽ trao tặng 5 suất học bổng, mỗi suất 2 triệu đồng với các tiêu chí sau:</p><ol><li>Sinh viên có hoàn cảnh khó khăn</li><li>Có điểm học tập từ loại khá trở lên trong năm học vừa qua</li><li>Gia đình chịu ảnh hưởng của bão lũ trong năm 2021</li></ol><p>Hồ sơ bao gồm:</p><ol><li>Đơn xin học bổng viết tay</li><li>Bảng điểm học tập năm học 2020-2021</li><li>Minh chứng hoàn cảnh khó khăn (hộ nghèo, cận nghèo, mồ côi)</li><li>Minh chứng khó khăn do bão lũ (có xác nhận của địa phương)</li></ol>', '2022-01-21', '2022-02-04', '2022-01-21 14:39:15', '10000000', 5, 2, 1, 'Phòng CTSV', 93, '2022-01-21 14:39:44', NULL, 13, 1),
(36, 3, 7, 'Học bổng dành cho sinh viên có hoàn cảnh khó khăn do Công Đoàn ĐHĐN tài trợ (Đợt 2)', 'congdoandn94.jpg', NULL, '<p>Công đoàn Đại học Đà Nẵng trao 6 suất học bổng, mỗi suất 5 triệu đồng nhằm động viên các em sinh viên có hoàn cảnh khó khăn vươn lên trong học tập dựa theo các tiêu chí sau:</p><ol><li>Sinh viên thuộc hộ nghèo chưa nhận học bổng của tổ chức cá nhân nào trong năm học vừa qua</li><li>Có kết quả học tập trong năm học đạt loại khá trở lên</li></ol><p>Hồ sơ bao gồm</p><ol><li>Đơn xin học bổng (Viết tay)</li><li>Minh chứng hoàn cảnh khó khăn</li><li>Minh chứng có kết quả học tập trong năm đạt loại khá trở lên</li></ol>', '2022-01-24', '2022-02-06', '2022-01-23 17:39:09', '25000000', 5, 0, 0, NULL, 6, NULL, NULL, 0, 2),
(37, 3, 7, 'Học bổng Hessen (CHLB Đức) năm học 2021-2022 (Đợt 2)', 'hessen75.jpg', NULL, '<p>Bộ Khoa học và Nghệ thuật Bang Hessen (CHLB Đức) thông báo về Học bổng Hessen năm học 2021-2022 với 4 suất học bổng, mỗi suất trị giá 13.500.000 đ. Học bổng gồm các tiêu chí như sau:</p><ol><li>Có kết quả học tập học kỳ I năm học 2021-2022 đạt từ 7.5 trở lên tính theo thang 10 (hoặc tương đương đối với thang điểm 4)</li><li>Sinh viên có hoàn cảnh khó khăn và chưa nhận học bổng hoặc các nguồn hỗ trợ tài chính từ các cá nhân, tổ chức trong năm học vừa qua</li><li>Tham gia các hoạt động xã hội</li></ol><p>Hồ sơ bao gồm:</p><ol><li>Minh chứng bảng điểm</li><li>Minh chứng về hoàn cảnh khó khăn</li><li>Minh chứng tham gia các hoạt động xã hội</li></ol>', '2022-01-23', '2022-02-06', '2022-01-23 17:42:28', '54000000', 4, 0, 0, NULL, 92, NULL, NULL, 0, 1),
(38, 3, 7, 'Học bổng khuyến học của Hội khuyến học Thành phố Đà Nẵng (Đợt 2)', 'khyenhocdn51.jpg', NULL, '<p>Hội khuyến học Thành phố Đà Nẵng sẽ trao 10 suất học bổng, mỗi suất 2 triệu đồng nhằm hỗ trợ các em có hoàn cảnh khó khăn vươn lên trong học tập. Học bổng bao gồm các tiêu chí như sau:</p><ol><li>Sinh viên có hộ khẩu thường trú tại thành phố Đà Nẵng</li><li>Sinh viên có hoàn cảnh khó khăn</li><li>Có kết quả học tập từ loại Khá trở lên trong học kỳ I vừa qua và chưa nhận bất kỳ học bổng từ đơn vị và cá nhân nào</li></ol><p>Hồ sơ bao gồm:</p><ol><li>Đơn xin học bổng (Viết tay)</li><li>Minh chứng sổ hộ khẩu</li><li>Minh chứng hoàn cảnh khó khăn</li><li>Minh chứng kết quả học tập</li></ol>', '2022-01-23', '2022-02-06', '2022-01-23 17:44:44', '10000000', 5, 0, 0, NULL, 88, NULL, NULL, 0, 1),
(39, 3, 7, 'Học bổng \"Nâng bước tân thủ khoa\" của Báo Tiền phong (Đợt 2)', 'baotienphong15.jpg', 'https://drive.google.com/drive/folders/1B8SeobvbwtcJ5fAw0e2Rp3RUUdqDcie0', '<p>Báo Tiền Phong - Chi nhánh Đà Nẵng sẽ trao tặng 5 suất học bổng, mỗi suất 10 triệu đồng bổng cho các sinh viên là Thủ khoa hoặc có thứ hạng cao có hoàn cảnh khó khăn trong kỳ tuyển sinh năm 2021 với các tiêu chí như sau:</p><ol><li>Sinh viên có hộ khẩu từ Thừa Thiên Huế trở vào</li><li>Sinh viên có hoàn cảnh khó khăn</li></ol><p>Hồ sơ gồm:</p><ol><li>Minh chứng sổ hộ khẩu</li><li>Giấy xác nhận gia đình có hoàn cảnh khó khăn</li><li>Viết một bức thư bằng tay nói về hoàn cảnh gia đình, nỗ lực của bản thân trong quá trình học tập, đồng thời thể hiện được ước mơ và khát vọng thể hiện của bản thân trong tương lai</li></ol>', '2022-01-23', '2022-02-06', '2022-01-23 18:01:10', '50000000', 5, 0, 0, NULL, 90, NULL, NULL, 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocky`
--

CREATE TABLE `hocky` (
  `hocky_id` int(11) NOT NULL,
  `hocky_ten` varchar(255) NOT NULL,
  `hocky_thoigianbatdau` datetime NOT NULL,
  `hocky_thoigianketthuc` datetime NOT NULL,
  `namhoc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hocky`
--

INSERT INTO `hocky` (`hocky_id`, `hocky_ten`, `hocky_thoigianbatdau`, `hocky_thoigianketthuc`, `namhoc_id`) VALUES
(1, '118', '2018-08-06 07:00:00', '2019-01-12 17:00:00', 1),
(2, '218', '2019-01-14 07:00:00', '2019-06-01 17:00:00', 1),
(3, '119', '2019-08-05 07:00:00', '2020-01-11 17:00:00', 2),
(4, '219', '2020-01-13 07:00:00', '2020-05-30 17:00:00', 2),
(5, '120', '2020-08-03 07:00:00', '2021-01-09 17:00:00', 3),
(6, '220', '2021-01-11 07:00:00', '2021-05-29 17:00:00', 3),
(7, '121', '2021-09-03 07:00:00', '2022-01-08 17:00:00', 4),
(8, '221', '2022-01-11 07:00:00', '2022-05-28 17:00:00', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hosodangky`
--

CREATE TABLE `hosodangky` (
  `hosodangky_id` int(11) NOT NULL,
  `dangky_id` int(11) NOT NULL,
  `tieuchi_id` int(11) NOT NULL,
  `hoso_hinhanh` varchar(255) DEFAULT NULL,
  `hoso_ghichu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hosodangky`
--

INSERT INTO `hosodangky` (`hosodangky_id`, `dangky_id`, `tieuchi_id`, `hoso_hinhanh`, `hoso_ghichu`) VALUES
(191, 130, 11, 'DonXinHocBong58.doc', 'Xuất sắc'),
(192, 130, 13, 'HoanCanhKhoKhan9.doc', 'Xuất sắc'),
(193, 130, 12, 'KetQuaNamHoc29.docx', 'Xuất sắc'),
(197, 132, 11, 'DonXinHocBong36.doc', 'Xuất sắc'),
(198, 132, 1, 'KetQuaNamHoc73.docx', 'Xuất sắc'),
(199, 132, 13, 'HoanCanhKhoKhan69.doc', 'Xuất sắc'),
(200, 132, 18, 'HoatDongXaHoi55.jpg', 'Xuất sắc'),
(201, 133, 11, 'DonXinHocBong45.doc', 'Tốt'),
(202, 133, 1, 'KetQuaNamHoc70.docx', 'Tốt'),
(203, 133, 13, 'HoanCanhKhoKhan0.doc', 'Tốt'),
(204, 133, 18, 'HoatDongXaHoi3.jpg', 'Tốt'),
(205, 134, 11, 'DonXinHocBong34.doc', 'Xuất sắc'),
(206, 134, 1, 'KetQuaNamHoc77.docx', 'Xuất sắc'),
(207, 134, 13, 'HoanCanhKhoKhan25.doc', 'Xuất sắc'),
(208, 134, 18, 'HoatDongXaHoi92.jpg', 'Xuất sắc'),
(209, 135, 11, 'DonXinHocBong98.doc', 'Tốt'),
(210, 135, 1, 'KetQuaNamHoc60.docx', 'Tốt'),
(211, 135, 13, 'HoanCanhKhoKhan82.doc', 'Tốt'),
(212, 135, 18, 'HoatDongXaHoi94.jpg', 'Tốt'),
(214, 136, 1, 'KetQuaNamHoc24.docx', 'Tốt'),
(215, 136, 13, 'HoanCanhKhoKhan11.doc', 'Tốt'),
(216, 136, 18, 'HoatDongXaHoi40.jpg', 'Tốt'),
(220, 138, 11, 'DonXinHocBong78.doc', 'Tốt'),
(221, 138, 13, 'HoanCanhKhoKhan39.doc', 'Tốt'),
(222, 138, 12, 'KetQuaNamHoc28.docx', 'Tốt'),
(223, 139, 11, 'DonXinHocBong53.doc', 'Khá'),
(224, 139, 1, 'KetQuaNamHoc47.docx', 'Khá'),
(225, 139, 13, 'HoanCanhKhoKhan89.doc', 'Khá'),
(226, 139, 18, 'HoatDongXaHoi75.jpg', 'Khá'),
(227, 140, 11, 'DonXinHocBong6.doc', 'Tốt'),
(228, 140, 1, 'KetQuaNamHoc80.docx', 'Tốt'),
(229, 140, 13, 'HoanCanhKhoKhan39.doc', 'Tốt'),
(230, 140, 18, 'HoatDongXaHoi0.jpg', 'Tốt'),
(231, 141, 11, 'DonXinHocBong0.doc', 'Tốt'),
(232, 141, 1, 'KetQuaNamHoc9.docx', 'Tốt'),
(233, 141, 13, 'HoanCanhKhoKhan5.doc', 'Tốt'),
(234, 141, 18, 'HoatDongXaHoi27.jpg', 'Tốt'),
(235, 142, 11, 'DonXinHocBong54.doc', 'Tốt'),
(236, 142, 1, 'KetQuaNamHoc70.docx', 'Tốt'),
(237, 142, 13, 'HoanCanhKhoKhan20.doc', 'Tốt'),
(238, 142, 18, 'HoatDongXaHoi25.jpg', 'Tốt'),
(239, 143, 11, 'DonXinHocBong52.doc', 'Tốt'),
(240, 143, 1, 'KetQuaNamHoc48.docx', 'Tốt'),
(241, 143, 13, 'HoanCanhKhoKhan16.doc', 'Tốt'),
(242, 143, 18, 'HoatDongXaHoi19.jpg', 'Tốt'),
(275, 154, 11, 'DonXinHocBong51.doc', 'Tốt'),
(276, 154, 20, 'KetQuaNamHoc88.docx', 'Tốt'),
(277, 154, 13, 'HoanCanhKhoKhan5.doc', 'Tốt'),
(278, 154, 19, 'HoanCanhKhoKhanBaoLu31.doc', 'Tốt'),
(279, 155, 11, 'DonXinHocBong99.doc', 'Khá'),
(280, 155, 20, 'KetQuaNamHoc21.docx', 'Khá'),
(281, 155, 13, 'HoanCanhKhoKhan12.doc', 'Khá'),
(282, 155, 19, 'HoanCanhKhoKhanBaoLu12.doc', 'Khá'),
(283, 156, 11, 'Đơn xin học bổng41.docx', 'Xuất sắc'),
(284, 156, 20, 'KetQuaNamHoc7.docx', 'Xuất sắc'),
(285, 156, 13, 'HoanCanhKhoKhan7.doc', 'Xuất sắc'),
(286, 156, 19, 'HoanCanhKhoKhanBaoLu40.doc', 'Xuất sắc'),
(287, 157, 11, 'DonXinHocBong6.doc', 'Xuất sắc'),
(288, 157, 20, 'KetQuaNamHoc21.docx', 'Xuất sắc'),
(289, 157, 13, 'HoanCanhKhoKhan86.doc', 'Xuất sắc'),
(290, 157, 19, 'HoanCanhKhoKhanBaoLu18.doc', 'Xuất sắc'),
(291, 158, 11, 'DonXinHocBong14.doc', 'Xuất sắc'),
(292, 158, 20, 'KetQuaNamHoc22.docx', 'Xuất sắc'),
(293, 158, 13, 'HoanCanhKhoKhan2.doc', 'Xuất sắc'),
(294, 158, 19, 'HoanCanhKhoKhanBaoLu34.doc', 'Xuất sắc'),
(295, 159, 11, 'DonXinHocBong20.doc', 'Tốt'),
(296, 159, 20, 'KetQuaNamHoc32.docx', 'Tốt'),
(297, 159, 13, 'HoanCanhKhoKhan82.doc', 'Tốt'),
(298, 159, 19, 'HoanCanhKhoKhanBaoLu35.doc', 'Tốt'),
(299, 160, 22, 'KetQuaNamHoc_Ky1_Hessen47.docx', NULL),
(300, 160, 13, 'HoanCanhKhoKhan26.doc', NULL),
(301, 160, 23, 'HoatDongXaHoi76.jpg', NULL),
(302, 161, 22, 'KetQuaNamHoc_Ky1_Hessen68.docx', NULL),
(303, 161, 13, 'HoanCanhKhoKhan85.doc', NULL),
(304, 161, 23, 'HoatDongXaHoi17.jpg', NULL),
(305, 162, 22, 'KetQuaNamHoc_Ky1_Hessen1.docx', NULL),
(306, 162, 13, 'HoanCanhKhoKhan20.doc', NULL),
(307, 162, 23, 'HoatDongXaHoi39.jpg', NULL),
(308, 163, 22, 'KetQuaNamHoc_Ky1_Hessen63.docx', NULL),
(309, 163, 13, 'HoanCanhKhoKhan71.doc', NULL),
(310, 163, 23, 'HoatDongXaHoi92.jpg', NULL),
(311, 164, 22, 'KetQuaNamHoc_Ky1_Hessen83.docx', NULL),
(312, 164, 13, 'HoanCanhKhoKhan13.doc', NULL),
(313, 164, 23, 'HoatDongXaHoi48.jpg', NULL),
(314, 165, 22, 'KetQuaNamHoc_Ky1_Hessen5.docx', NULL),
(315, 165, 13, 'HoanCanhKhoKhan3.doc', NULL),
(316, 165, 23, 'HoatDongXaHoi1.jpg', NULL),
(317, 166, 22, 'KetQuaNamHoc_Ky1_Hessen4.docx', NULL),
(318, 166, 13, 'HoanCanhKhoKhan48.doc', NULL),
(319, 166, 23, 'HoatDongXaHoi11.jpg', NULL),
(320, 167, 22, 'KetQuaNamHoc_Ky1_Hessen90.docx', NULL),
(321, 167, 13, 'HoanCanhKhoKhan4.doc', NULL),
(322, 167, 23, 'HoatDongXaHoi34.jpg', NULL),
(327, 169, 14, 'SoHoKhau48.docx', 'Khá'),
(328, 169, 13, 'HoanCanhKhoKhan81.doc', 'Khá'),
(329, 169, 15, 'BaiTuLuanVietTay_BaoTienPhong41.docx', 'Khá'),
(330, 170, 14, 'SoHoKhau51.docx', 'Khá'),
(331, 170, 13, 'HoanCanhKhoKhan57.doc', 'Khá'),
(332, 170, 15, 'BaiTuLuanVietTay_BaoTienPhong95.docx', 'Khá'),
(333, 171, 14, 'SoHoKhau69.docx', 'Tốt'),
(334, 171, 13, 'HoanCanhKhoKhan87.doc', 'Tốt'),
(335, 171, 15, 'BaiTuLuanVietTay_BaoTienPhong30.docx', 'Tốt'),
(336, 172, 14, 'SoHoKhau69.docx', 'Tốt'),
(337, 172, 13, 'HoanCanhKhoKhan74.doc', 'Tốt'),
(338, 172, 15, 'BaiTuLuanVietTay_BaoTienPhong85.docx', 'Tốt'),
(339, 173, 14, 'SoHoKhau93.docx', 'Xuất sắc'),
(340, 173, 13, 'HoanCanhKhoKhan3.doc', 'Xuất sắc'),
(341, 173, 15, 'BaiTuLuanVietTay_BaoTienPhong4.docx', 'Xuất sắc'),
(342, 174, 14, 'SoHoKhau86.docx', 'Tốt'),
(343, 174, 13, 'HoanCanhKhoKhan3.doc', 'Tốt'),
(344, 174, 15, 'BaiTuLuanVietTay_BaoTienPhong45.docx', 'Tốt'),
(345, 175, 14, 'SoHoKhau36.docx', 'Tốt'),
(346, 175, 13, 'HoanCanhKhoKhan2.doc', 'Tốt'),
(347, 175, 15, 'BaiTuLuanVietTay_BaoTienPhong38.docx', 'Tốt'),
(348, 176, 11, 'DonXinHocBong0.doc', 'Khá'),
(349, 176, 13, 'HoanCanhKhoKhan31.doc', 'Khá'),
(350, 176, 12, 'KetQuaNamHoc1.docx', 'Khá'),
(351, 177, 11, 'DonXinHocBong24.doc', 'Khá'),
(352, 177, 13, 'HoanCanhKhoKhan57.doc', 'Khá'),
(353, 177, 12, 'KetQuaNamHoc82.docx', 'Khá'),
(354, 178, 11, 'DonXinHocBong43.doc', 'Khá'),
(355, 178, 13, 'HoanCanhKhoKhan38.doc', 'Khá'),
(356, 178, 12, 'KetQuaNamHoc32.docx', 'Khá'),
(357, 179, 11, 'DonXinHocBong90.doc', 'Khá'),
(358, 179, 13, 'HoanCanhKhoKhan72.doc', 'Khá'),
(359, 179, 12, 'KetQuaNamHoc13.docx', 'Khá'),
(361, 181, 16, 'DonxinhocbongUTE38.doc', 'Tốt'),
(362, 181, 20, 'KetQuaNamHoc9.docx', 'Tốt'),
(363, 181, 21, 'DGDRL70.docx', 'Tốt'),
(364, 181, 4, 'ThamGiaNghienCuuKH85.docx', 'Tốt'),
(365, 181, 5, 'BaiTuLuanVietTay_TaiSaoChonHocBong24.docx', 'Tốt'),
(366, 181, 6, 'ThuGioiThieu92.docx', 'Tốt'),
(367, 182, 16, 'DonxinhocbongUTE67.doc', 'Khá'),
(368, 182, 20, 'KetQuaNamHoc59.docx', 'Khá'),
(369, 182, 21, 'DGDRL78.docx', 'Khá'),
(370, 182, 4, 'ThamGiaNghienCuuKH48.docx', 'Khá'),
(371, 182, 5, 'BaiTuLuanVietTay_TaiSaoChonHocBong33.docx', 'Khá'),
(372, 182, 6, 'ThuGioiThieu40.docx', 'Khá'),
(373, 183, 16, 'DonxinhocbongUTE54.doc', 'Xuất sắc'),
(374, 183, 20, 'KetQuaNamHoc71.docx', 'Xuất sắc'),
(375, 183, 21, 'DGDRL40.docx', 'Xuất sắc'),
(376, 183, 4, 'ThamGiaNghienCuuKH61.docx', 'Xuất sắc'),
(377, 183, 5, 'BaiTuLuanVietTay_TaiSaoChonHocBong99.docx', 'Xuất sắc'),
(378, 183, 6, 'ThuGioiThieu16.docx', 'Xuất sắc'),
(379, 184, 16, 'DonxinhocbongUTE5.doc', 'Tốt'),
(380, 184, 20, 'KetQuaNamHoc56.docx', 'Tốt'),
(381, 184, 21, 'DGDRL21.docx', 'Tốt'),
(382, 184, 4, 'ThamGiaNghienCuuKH12.docx', 'Tốt'),
(383, 184, 5, 'BaiTuLuanVietTay_TaiSaoChonHocBong90.docx', 'Tốt'),
(384, 184, 6, 'ThuGioiThieu56.docx', 'Tốt'),
(385, 185, 16, 'DonxinhocbongUTE10.doc', 'Xuất sắc'),
(386, 185, 20, 'KetQuaNamHoc93.docx', 'Xuất sắc'),
(387, 185, 21, 'DGDRL13.docx', 'Xuất sắc'),
(388, 185, 4, 'ThamGiaNghienCuuKH0.docx', 'Xuất sắc'),
(389, 185, 5, 'BaiTuLuanVietTay_TaiSaoChonHocBong97.docx', 'Xuất sắc'),
(390, 185, 6, 'ThuGioiThieu1.docx', 'Xuất sắc'),
(391, 186, 16, 'DonxinhocbongUTE2.doc', 'Tốt'),
(392, 186, 20, 'KetQuaNamHoc6.docx', 'Tốt'),
(393, 186, 21, 'DGDRL84.docx', 'Tốt'),
(394, 186, 4, 'ThamGiaNghienCuuKH49.docx', 'Tốt'),
(395, 186, 5, 'BaiTuLuanVietTay_TaiSaoChonHocBong61.docx', 'Tốt'),
(396, 186, 6, 'ThuGioiThieu47.docx', 'Tốt'),
(397, 187, 16, 'DonxinhocbongUTE19.doc', 'Tốt'),
(398, 187, 20, 'KetQuaNamHoc83.docx', 'Tốt'),
(399, 187, 21, 'DGDRL47.docx', 'Tốt'),
(400, 187, 4, 'ThamGiaNghienCuuKH38.docx', 'Tốt'),
(401, 187, 5, 'BaiTuLuanVietTay_TaiSaoChonHocBong92.docx', 'Tốt'),
(402, 187, 6, 'ThuGioiThieu30.docx', 'Tốt'),
(403, 188, 16, 'DonxinhocbongUTE91.doc', 'Tốt'),
(404, 188, 20, 'KetQuaNamHoc10.docx', 'Tốt'),
(405, 188, 21, 'DGDRL43.docx', 'Tốt'),
(406, 188, 4, 'ThamGiaNghienCuuKH1.docx', 'Tốt'),
(407, 188, 5, 'BaiTuLuanVietTay_TaiSaoChonHocBong23.docx', 'Tốt'),
(408, 188, 6, 'ThuGioiThieu31.docx', 'Tốt'),
(409, 189, 16, 'DonxinhocbongUTE93.doc', 'Xuất sắc'),
(410, 189, 20, 'KetQuaNamHoc51.docx', 'Xuất sắc'),
(411, 189, 21, 'DGDRL59.docx', 'Xuất sắc'),
(412, 189, 4, 'ThamGiaNghienCuuKH83.docx', 'Xuất sắc'),
(413, 189, 5, 'BaiTuLuanVietTay_TaiSaoChonHocBong13.docx', 'Xuất sắc'),
(414, 189, 6, 'ThuGioiThieu3.docx', 'Xuất sắc'),
(415, 190, 16, 'DonxinhocbongUTE0.doc', 'Xuất sắc'),
(416, 190, 20, 'KetQuaNamHoc77.docx', 'Xuất sắc'),
(417, 190, 21, 'DGDRL20.docx', 'Xuất sắc'),
(418, 190, 4, 'ThamGiaNghienCuuKH61.docx', 'Xuất sắc'),
(419, 190, 5, 'BaiTuLuanVietTay_TaiSaoChonHocBong78.docx', 'Xuất sắc'),
(420, 190, 6, 'ThuGioiThieu98.docx', 'Xuất sắc'),
(421, 191, 16, 'DonxinhocbongUTE94.doc', 'Tốt'),
(422, 191, 20, 'KetQuaNamHoc65.docx', 'Tốt'),
(423, 191, 21, 'DGDRL98.docx', 'Tốt'),
(424, 191, 4, 'ThamGiaNghienCuuKH25.docx', 'Tốt'),
(425, 191, 5, 'BaiTuLuanVietTay_TaiSaoChonHocBong6.docx', 'Tốt'),
(426, 191, 6, 'ThuGioiThieu26.docx', 'Tốt'),
(427, 192, 16, 'DonxinhocbongUTE70.doc', 'Xuất sắc'),
(428, 192, 20, 'KetQuaNamHoc37.docx', 'Xuất sắc'),
(429, 192, 21, 'DGDRL57.docx', 'Xuất sắc'),
(430, 192, 4, 'ThamGiaNghienCuuKH55.docx', 'Xuất sắc'),
(431, 192, 5, 'BaiTuLuanVietTay_TaiSaoChonHocBong89.docx', 'Xuất sắc'),
(432, 192, 6, 'ThuGioiThieu70.docx', 'Xuất sắc'),
(433, 193, 16, 'DonxinhocbongUTE37.doc', 'Tốt'),
(434, 193, 20, 'KetQuaNamHoc97.docx', 'Tốt'),
(435, 193, 21, 'DGDRL0.docx', 'Tốt'),
(436, 193, 4, 'ThamGiaNghienCuuKH40.docx', 'Tốt'),
(437, 193, 5, 'BaiTuLuanVietTay_TaiSaoChonHocBong93.docx', 'Tốt'),
(438, 193, 6, 'ThuGioiThieu40.docx', 'Tốt'),
(439, 194, 16, 'DonxinhocbongUTE92.doc', 'Khá'),
(440, 194, 20, 'KetQuaNamHoc13.docx', 'Khá'),
(441, 194, 21, 'DGDRL46.docx', 'Khá'),
(442, 194, 4, 'ThamGiaNghienCuuKH35.docx', 'Khá'),
(443, 194, 5, 'BaiTuLuanVietTay_TaiSaoChonHocBong98.docx', 'Khá'),
(444, 194, 6, 'ThuGioiThieu36.docx', 'Khá'),
(445, 195, 16, 'DonxinhocbongUTE75.doc', 'Tốt'),
(446, 195, 20, 'KetQuaNamHoc63.docx', 'Tốt'),
(447, 195, 21, 'DGDRL99.docx', 'Tốt'),
(448, 195, 4, 'ThamGiaNghienCuuKH13.docx', 'Tốt'),
(449, 195, 5, 'BaiTuLuanVietTay_TaiSaoChonHocBong40.docx', 'Tốt'),
(450, 195, 6, 'ThuGioiThieu21.docx', 'Tốt'),
(451, 196, 11, 'DonxinhocbongUTE14.doc', 'Khá'),
(452, 196, 20, 'KetQuaNamHoc28.docx', 'Khá'),
(453, 196, 13, 'HoanCanhKhoKhan35.doc', 'Khá'),
(454, 196, 19, 'HoanCanhKhoKhanBaoLu32.doc', 'Khá'),
(455, 197, 11, 'DonXinHocBong2.doc', 'Khá'),
(456, 197, 20, 'KetQuaNamHoc33.docx', 'Khá'),
(457, 197, 13, 'HoanCanhKhoKhan21.doc', 'Khá'),
(458, 197, 19, 'HoanCanhKhoKhanBaoLu26.doc', 'Khá'),
(459, 198, 11, 'DonXinHocBong61.doc', 'Khá'),
(460, 198, 20, 'KetQuaNamHoc35.docx', 'Khá'),
(461, 198, 13, 'HoanCanhKhoKhan33.doc', 'Khá'),
(462, 198, 19, 'HoanCanhKhoKhanBaoLu19.doc', 'Khá'),
(463, 199, 11, 'DonXinHocBong6.doc', 'Khá'),
(464, 199, 20, 'KetQuaNamHoc3.docx', 'Khá'),
(465, 199, 13, 'HoanCanhKhoKhan34.doc', 'Khá'),
(466, 199, 19, 'HoanCanhKhoKhanBaoLu14.doc', 'Khá'),
(476, 203, 11, 'DonXinHocBong79.doc', 'Xuất sắc'),
(477, 203, 13, 'HoanCanhKhoKhan91.doc', 'Xuất sắc'),
(478, 203, 12, 'KetQuaNamHoc59.docx', 'Xuất sắc'),
(479, 204, 11, 'DonXinHocBong38.doc', 'Tốt'),
(480, 204, 13, 'HoanCanhKhoKhan7.doc', 'Tốt'),
(481, 204, 12, 'KetQuaNamHoc65.docx', 'Tốt'),
(482, 205, 11, 'DonXinHocBong55.doc', 'Tốt'),
(483, 205, 13, 'HoanCanhKhoKhan63.doc', 'Tốt'),
(484, 205, 12, 'KetQuaNamHoc91.docx', 'Tốt'),
(485, 206, 11, 'DonXinHocBong35.doc', 'Tốt'),
(486, 206, 13, 'HoanCanhKhoKhan73.doc', 'Tốt'),
(487, 206, 12, 'KetQuaNamHoc40.docx', 'Tốt'),
(488, 207, 11, '_q4-ykeXOPE22.jpeg', 'Xuất sắc'),
(489, 207, 1, '1euFcqLsPWA13.jpeg', 'Xuất sắc'),
(490, 207, 13, '2VslRz5G8fo56.jpeg', 'Xuất sắc'),
(491, 207, 18, '2Ka0oKSMxVE0.jpeg', 'Xuất sắc'),
(492, 208, 10, 'GiayXacNhanCanBoLop33.docx', 'Đạt'),
(493, 209, 10, 'GiayXacNhanCanBoDoan22.docx', 'Đạt'),
(494, 210, 10, 'GiayXacNhanCanBoLop24.docx', 'Đạt'),
(495, 211, 10, 'GiayXacNhanCanBoLop20.docx', 'Đạt'),
(496, 212, 10, 'GiayXacNhanCanBoLop40.docx', 'Đạt'),
(497, 213, 22, 'KetQuaNamHoc_Ky1_Hessen99.docx', NULL),
(498, 213, 13, 'HoanCanhKhoKhan79.doc', NULL),
(499, 213, 23, 'HoatDongXaHoi38.jpg', NULL),
(500, 214, 11, 'DonXinHocBong49.doc', NULL),
(501, 214, 8, 'SoHoKhau90.docx', NULL),
(502, 214, 13, 'HoanCanhKhoKhan31.doc', NULL),
(503, 214, 12, 'KetQuaNamHoc_Ky175.docx', NULL),
(504, 215, 11, 'DonXinHocBong80.doc', 'Xuất sắc'),
(505, 215, 1, 'KetQuaNamHoc83.docx', 'Xuất sắc'),
(506, 215, 13, 'HoanCanhKhoKhan95.doc', 'Xuất sắc'),
(507, 215, 18, 'HoatDongXaHoi53.jpg', 'Xuất sắc'),
(508, 216, 11, 'DonXinHocBong51.doc', 'Tốt'),
(509, 216, 1, 'KetQuaNamHoc30.docx', 'Tốt'),
(510, 216, 13, 'HoanCanhKhoKhan64.doc', 'Tốt'),
(511, 216, 18, 'HoatDongXaHoi88.jpg', 'Tốt'),
(512, 217, 11, 'DonXinHocBong11.doc', 'Tốt'),
(513, 217, 1, 'KetQuaNamHoc65.docx', 'Tốt'),
(514, 217, 13, 'HoanCanhKhoKhan82.doc', 'Tốt'),
(515, 217, 18, 'HoatDongXaHoi41.jpg', 'Tốt'),
(516, 218, 11, 'DonXinHocBong97.doc', NULL),
(517, 218, 20, 'KetQuaNamHoc83.docx', NULL),
(518, 218, 13, 'HoanCanhKhoKhan99.doc', NULL),
(519, 218, 19, 'HoanCanhKhoKhanBaoLu66.doc', NULL),
(520, 219, 11, 'DonXinHocBong37.doc', NULL),
(521, 219, 20, 'KetQuaNamHoc2.docx', NULL),
(522, 219, 13, 'HoanCanhKhoKhan86.doc', NULL),
(523, 219, 19, 'HoanCanhKhoKhanBaoLu57.doc', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `khoa_id` int(11) NOT NULL,
  `khoa_ten` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`khoa_id`, `khoa_ten`) VALUES
(1, 'Điện - Điện tử'),
(2, 'Cơ khí'),
(3, 'Kỹ thuật xây dựng'),
(4, 'Sư phạm công nghiệp'),
(9, 'Công nghệ Hóa học - Môi trường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaihocbong`
--

CREATE TABLE `loaihocbong` (
  `loaihocbong_id` int(11) NOT NULL,
  `loaihocbong_ten` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loaihocbong`
--

INSERT INTO `loaihocbong` (`loaihocbong_id`, `loaihocbong_ten`) VALUES
(1, 'Học bổng khuyến khích học tập theo học kì'),
(2, 'Học bổng Thử thách UTE'),
(3, 'Học bổng có nguồn tài trợ từ bên ngoài');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `lop_id` int(11) NOT NULL,
  `nganh_id` int(11) NOT NULL,
  `lop_ten` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`lop_id`, `nganh_id`, `lop_ten`) VALUES
(1, 1, '18T1'),
(2, 1, '18T2'),
(3, 1, '18T3'),
(4, 1, '18T4'),
(5, 2, '18D1'),
(6, 2, '18D2'),
(7, 7, '18C1'),
(10, 2, '18D3'),
(11, 2, '18D4'),
(12, 1, '19T1'),
(13, 1, '19T2'),
(14, 1, '20T1'),
(15, 1, '20T2'),
(16, 2, '19D1'),
(17, 2, '19D2'),
(18, 2, '20D1'),
(19, 1, '20D2'),
(20, 14, '18TDH1'),
(21, 14, '18TDH2'),
(22, 14, '19TDH1'),
(23, 14, '19TDH2'),
(24, 14, '20TDH1'),
(25, 14, '20TDH2'),
(26, 20, '18DT1'),
(27, 20, '18DT2'),
(28, 20, '19DT1'),
(29, 20, '19DT2'),
(30, 20, '20DT1'),
(31, 20, '20DT2'),
(32, 21, '18C1'),
(33, 21, '18C2'),
(34, 21, '19C1'),
(35, 21, '19C2'),
(36, 21, '20C1'),
(37, 21, '20C2'),
(38, 22, '18DL1'),
(39, 22, '18DL2'),
(40, 22, '19DL1'),
(41, 22, '19DL2'),
(42, 22, '20DL1'),
(43, 22, '20DL2'),
(44, 23, '18CDT1'),
(45, 23, '18CDT2'),
(46, 23, '19CDT1'),
(47, 23, '19CDT2'),
(48, 23, '20CDT1'),
(49, 23, '20CDT2'),
(50, 24, '18N1'),
(51, 24, '18N2'),
(52, 24, '19N1'),
(53, 24, '19N2'),
(54, 24, '20N1'),
(55, 24, '20N2'),
(56, 25, '18XD1'),
(57, 25, '18XD2'),
(58, 25, '19XD1'),
(59, 25, '19XD2'),
(60, 25, '20XD1'),
(61, 25, '20XD2'),
(62, 26, '18XC1'),
(63, 26, '18XC2'),
(64, 26, '19XC1'),
(65, 26, '19XC2'),
(66, 26, '20XC1'),
(67, 26, '20XC2'),
(68, 27, '18XH1'),
(69, 27, '18XH2'),
(70, 27, '19XH1'),
(71, 27, '19XH2'),
(72, 27, '20XH1'),
(73, 27, '20XH2'),
(74, 29, '18SK1'),
(75, 29, '19SK1'),
(76, 29, '20SK1'),
(77, 30, '18MT1'),
(78, 30, '18MT2'),
(79, 30, '19MT1'),
(80, 30, '19MT2'),
(81, 30, '20MT1'),
(82, 30, '20MT2'),
(83, 31, '18VL1'),
(84, 31, '18VL2'),
(85, 31, '19VL1'),
(86, 31, '19VL2'),
(87, 31, '20VL1'),
(88, 31, '20VL2'),
(89, 32, '18HTP1'),
(90, 32, '18HTP2'),
(91, 32, '19HTP1'),
(92, 32, '19HTP2'),
(93, 32, '20HTP1'),
(94, 32, '20HTP2'),
(95, 33, '18SU1'),
(96, 33, '19SU1'),
(97, 33, '20SU1'),
(98, 1, '21T1'),
(99, 1, '21T2'),
(100, 2, '21D1'),
(101, 2, '21D2'),
(102, 30, '21MT1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_01_131953_add_column_user_table', 2),
(6, '2021_12_01_133041_edit_column_user_table', 3),
(7, '2021_12_01_133208_edit_column_user_table', 4),
(8, '2021_12_01_134330_update_column_user_table', 5),
(9, '2021_12_02_041932_edit2_column_user_table', 6),
(10, '2021_12_02_130928_edit3_column_user_table', 7),
(11, '2021_12_02_131159_edit4_column_user_table', 8),
(12, '2021_12_03_101545_edit5_column_user_table', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `namhoc`
--

CREATE TABLE `namhoc` (
  `namhoc_id` int(11) NOT NULL,
  `namhoc_ten` varchar(255) NOT NULL,
  `namhoc_thoigianbatdau` datetime NOT NULL,
  `namhoc_thoigianketthuc` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `namhoc`
--

INSERT INTO `namhoc` (`namhoc_id`, `namhoc_ten`, `namhoc_thoigianbatdau`, `namhoc_thoigianketthuc`) VALUES
(1, '2018-2019', '2018-08-06 07:00:00', '2019-06-01 17:00:00'),
(2, '2019-2020', '2019-08-05 07:00:00', '2020-05-30 17:00:00'),
(3, '2020-2021', '2020-08-03 07:00:00', '2021-05-29 17:00:00'),
(4, '2021-2022', '2021-09-03 07:00:00', '2022-05-28 17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganh`
--

CREATE TABLE `nganh` (
  `nganh_id` int(11) NOT NULL,
  `khoa_id` int(11) NOT NULL,
  `nganh_ten` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nganh`
--

INSERT INTO `nganh` (`nganh_id`, `khoa_id`, `nganh_ten`) VALUES
(1, 1, 'Công nghệ thông tin'),
(2, 1, 'Công nghệ Kỹ thuật Điện - Điện tử (Chuyên ngành Kỹ thuật điện tử và Hệ thống cung cấp điện)'),
(14, 1, 'Công nghệ Kỹ thuật Điều khiển và Tự động hóa'),
(20, 1, 'Công nghệ Kỹ thuật Điện tử - Viễn thông (Chuyên ngành Điện tử máy tính - mạng truyền thông)'),
(21, 2, 'Công nghệ Kỹ thuật Cơ khí (Chuyên ngành Cơ khí chế tạo)'),
(22, 2, 'Công nghệ Kỹ thuật Ô tô'),
(23, 2, 'Công nghệ Kỹ thuật Cơ Điện tử'),
(24, 2, 'Công nghệ Kỹ thuật Nhiệt'),
(25, 3, 'Công nghệ Kỹ thuật Xây dựng (Chuyên ngành Xây dựng Dân dụng & Công nghiệp)'),
(26, 3, 'Công nghệ Kỹ thuật Giao thông (Chuyên ngành Xây dựng cầu đường)'),
(27, 3, 'Kỹ thuật Cơ sở hạ tầng (Chuyên ngành Xây dựng hạ tầng đô thị)'),
(28, 3, 'Công nghệ Kỹ thuật Kiến trúc'),
(29, 4, 'Sư phạm Kỹ thuật Công nghiệp'),
(30, 9, 'Công nghệ Kỹ thuật Môi trường'),
(31, 9, 'Công nghệ Vật liệu'),
(32, 9, 'Kỹ thuật Thực phẩm'),
(33, 9, 'Sinh học ứng dụng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhviencanbo`
--

CREATE TABLE `sinhviencanbo` (
  `id` int(11) NOT NULL,
  `hocky` varchar(255) NOT NULL,
  `masinhvien` varchar(255) NOT NULL,
  `tensinhvien` varchar(255) NOT NULL,
  `ngaysinh` date NOT NULL,
  `khoa` varchar(255) NOT NULL,
  `nganh` varchar(255) NOT NULL,
  `lop` varchar(255) NOT NULL,
  `chucvu` varchar(255) NOT NULL,
  `diemthuong` float NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sinhviencanbo`
--

INSERT INTO `sinhviencanbo` (`id`, `hocky`, `masinhvien`, `tensinhvien`, `ngaysinh`, `khoa`, `nganh`, `lop`, `chucvu`, `diemthuong`, `user_id`) VALUES
(87, '220', '1811505310125', 'Nguyễn Hoàng Long', '2000-07-02', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 'Lớp trưởng', 0.3, NULL),
(88, '220', '1811505310135', 'Võ Quang Nhả', '1998-01-07', 'Điện - Điện tử', 'Công nghệ thông tin', '18T1', 'Bí thư Chi đoàn', 0.3, NULL),
(89, '220', '1811505310201', 'Đặng Việt Anh', '2000-06-17', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 'Lớp trưởng', 0.3, NULL),
(90, '220', '1811505310256', 'Nguyễn Thị Diệu Ý', '2000-08-30', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 'Bí thư Chi đoàn', 0.3, NULL),
(91, '220', '1811505310243', 'Võ Thị Hoàng Thư', '2000-03-10', 'Điện - Điện tử', 'Công nghệ thông tin', '18T2', 'Ủy viên Ban chấp hành Hội sinh viên trường', 0.3, NULL),
(92, '220', '1811505310309', 'Mai Xuân Duy', '2000-02-12', 'Điện - Điện tử', 'Công nghệ thông tin', '18T3', 'Lớp trưởng', 0.3, NULL),
(93, '220', '1811505310411', 'Nguyễn Thanh Duy', '2000-03-27', 'Điện - Điện tử', 'Công nghệ thông tin', '18T4', 'Lớp trưởng', 0.3, NULL),
(94, '220', '1811504210101', 'Nguyễn Công Chung', '2000-07-20', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điện - Điện tử', '18D1', 'Lớp trưởng', 0.3, NULL),
(95, '220', '1811504210110', 'Trần Anh Đức', '2000-04-08', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điện - Điện tử', '18D1', 'Lớp phó', 0.2, NULL),
(96, '220', '1811505120247', 'Trần Văn Toàn', '2000-08-08', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điện - Điện tử', '18D2', 'Lớp trưởng', 0.3, NULL),
(97, '220', '1811505120248', 'Trần Văn Trí', '2000-07-12', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điện - Điện tử', '18D2', 'Lớp phó', 0.2, NULL),
(98, '220', '1911505310118', 'Cao Thị Thúy Hằng', '2001-02-09', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 'Bí thư Chi đoàn', 0.3, NULL),
(99, '220', '1911505310105', 'Hồ Thái Bình', '2001-04-20', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 'Lớp trưởng', 0.3, NULL),
(100, '220', '1911505310201', 'Trịnh Hoàng Duy Anh', '2001-02-19', 'Điện - Điện tử', 'Công nghệ thông tin', '19T1', 'Lớp phó', 0.2, NULL),
(101, '220', '1911505120108', 'Nguyễn Hữu Đạt', '2001-05-30', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điện - Điện tử', '19D1', 'Lớp trưởng', 0.3, NULL),
(102, '220', '1911505120119', 'Phạm Công Kha', '2001-02-12', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điện - Điện tử', '19D1', 'Lớp phó', 0.2, NULL),
(103, '220', '2050531200106', 'Phan Thị Hoài Anh', '2002-03-27', 'Điện - Điện tử', 'Công nghệ thông tin', '20T1', 'Lớp trưởng', 0.3, NULL),
(104, '220', '2050531200114', 'Nguyễn Văn Chương', '2002-05-19', 'Điện - Điện tử', 'Công nghệ thông tin', '20T1', 'Lớp phó', 0.2, NULL),
(105, '220', '2050512200113', 'Nguyễn Trung Cường', '2001-09-21', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điện - Điện tử', '20D1', 'Lớp trưởng', 0.3, NULL),
(106, '220', '2050512200122', 'Nguyễn Trần Nhất Duy', '2002-12-26', 'Điện - Điện tử', 'Công nghệ Kỹ thuật Điện - Điện tử', '20D1', 'Lớp phó', 0.2, NULL),
(107, '220', '1811504110101', 'Nguyễn An', '2000-08-17', 'Cơ khí', 'Công nghệ Kỹ thuật Cơ khí', '18C1', 'Lớp trưởng', 0.3, NULL),
(108, '220', '1811504110101', 'Nguyễn Tuấn Cảnh', '2000-12-17', 'Cơ khí', 'Công nghệ Kỹ thuật Cơ khí', '18C1', 'Lớp phó', 0.2, NULL),
(109, '220', '1811504110204', 'Trần Văn Châu', '2000-10-25', 'Cơ khí', 'Công nghệ Kỹ thuật Cơ khí', '18C2', 'Lớp trưởng', 0.3, NULL),
(110, '220', '1811504110208', 'Lê Thành Đạt', '2000-08-11', 'Cơ khí', 'Công nghệ Kỹ thuật Cơ khí', '18C2', 'Lớp phó', 0.2, NULL),
(111, '220', '1911504110108', 'Nguyễn Thanh Hậu', '2001-08-10', 'Cơ khí', 'Công nghệ Kỹ thuật Cơ khí', '19C1', 'Lớp trưởng', 0.3, NULL),
(112, '220', '1911504110110', 'Võ Văn Hoàng', '2001-02-21', 'Cơ khí', 'Công nghệ Kỹ thuật Cơ khí', '19C1', 'Lớp phó', 0.2, NULL),
(113, '220', '2050411200106', 'Nguyễn Minh Bảo', '2002-06-12', 'Cơ khí', 'Công nghệ Kỹ thuật Cơ khí', '20C1', 'Lớp trưởng', 0.3, NULL),
(114, '220', '2050411200107', 'Nguyễn Tài Bằng', '2002-03-18', 'Cơ khí', 'Công nghệ Kỹ thuật Cơ khí', '20C1', 'Lớp phó', 0.2, NULL),
(115, '220', '1811504210118', 'Nguyễn Hữu Lập', '2000-07-12', 'Cơ khí', 'Công nghệ Kỹ thuật ô tô', '18DL1', 'Lớp trưởng', 0.3, NULL),
(116, '220', '1811504210117', 'Nguyễn Văn Linh', '2000-01-17', 'Cơ khí', 'Công nghệ Kỹ thuật ô tô', '18DL1', 'Lớp phó', 0.2, NULL),
(117, '220', '1911504210110', 'Trần Bá Hải', '2001-03-26', 'Cơ khí', 'Công nghệ Kỹ thuật ô tô', '19DL1', 'Lớp trưởng', 0.3, NULL),
(118, '220', '1911504210103', 'Võ Minh Đông', '2001-10-01', 'Cơ khí', 'Công nghệ Kỹ thuật ô tô', '19DL1', 'Lớp phó', 0.2, NULL),
(119, '220', '2050421200115', 'Nguyễn Xuân Dũng', '2002-02-20', 'Cơ khí', 'Công nghệ Kỹ thuật ô tô', '20DL1', 'Lớp trưởng', 0.3, NULL),
(120, '220', '2050421200119', 'Hoàng Văn Chính', '2002-01-28', 'Cơ khí', 'Công nghệ Kỹ thuật ô tô', '20DL1', 'Lớp phó', 0.2, NULL),
(121, '220', '1811506120115', 'Đỗ Bá Hoan', '2000-01-09', 'Kỹ thuật xây dựng', 'Công nghệ Kỹ thuật Xây dựng', '18XD1', 'Lớp trưởng', 0.3, NULL),
(122, '220', '1811506120121', 'Trần Huỳnh', '2000-03-20', 'Kỹ thuật xây dựng', 'Công nghệ Kỹ thuật Xây dựng', '18XD1', 'Lớp phó', 0.2, NULL),
(123, '220', '1911506110109', 'Nguyễn Tấn Đồng', '2001-08-16', 'Kỹ thuật xây dựng', 'Công nghệ Kỹ thuật Xây dựng', '19XD1', 'Lớp trưởng', 0.3, NULL),
(124, '220', '1911506110111', 'Bùi Văn Đức', '2001-04-30', 'Kỹ thuật xây dựng', 'Công nghệ Kỹ thuật Xây dựng', '19XD1', 'Lớp phó', 0.2, NULL),
(125, '220', '2050611200101', 'Lê Cảnh An', '2002-07-18', 'Kỹ thuật xây dựng', 'Công nghệ Kỹ thuật Xây dựng', '20XD1', 'Lớp trưởng', 0.3, NULL),
(126, '220', '2050611200108', 'Phan Chí Luân', '2001-05-13', 'Kỹ thuật xây dựng', 'Công nghệ Kỹ thuật Xây dựng', '20XD1', 'Lớp phó', 0.2, NULL),
(127, '220', '1811506310112', 'Lê Văn Kiệt', '2000-02-20', 'Kỹ thuật xây dựng', 'Công nghệ Kỹ thuật Giao thông', '18XC1', 'Lớp trưởng', 0.3, NULL),
(128, '220', '1811506310114', 'Cao Thành Mẫn', '2000-10-06', 'Kỹ thuật xây dựng', 'Công nghệ Kỹ thuật Giao thông', '18XC1', 'Lớp phó', 0.2, NULL),
(129, '220', '1911506310125', 'Lê Minh Nhật', '2001-03-27', 'Kỹ thuật xây dựng', 'Công nghệ Kỹ thuật Giao thông', '19XC1', 'Lớp trưởng', 0.3, NULL),
(130, '220', '1911506310131', 'Nguyễn Tâm', '2001-04-18', 'Kỹ thuật xây dựng', 'Công nghệ Kỹ thuật Giao thông', '19XC1', 'Lớp phó', 0.2, NULL),
(131, '220', '2050631200112', 'Đinh Công Tri', '2002-07-09', 'Kỹ thuật xây dựng', 'Công nghệ Kỹ thuật Giao thông', '20XC1', 'Lớp trưởng', 0.3, NULL),
(132, '220', '2050631200115', 'Huỳnh Vũ', '2002-02-24', 'Kỹ thuật xây dựng', 'Công nghệ Kỹ thuật Giao thông', '20XC1', 'Lớp phó', 0.2, NULL),
(133, '220', '1811507210105', 'Nguyễn Gia Huy', '2000-02-15', 'Công nghệ Hóa học - Môi trường', 'Công nghệ Kỹ thuật Môi trường', '18MT1', 'Lớp trưởng', 0.3, NULL),
(134, '220', '1811507210108', 'Nguyễn Thị Linh Phương', '2000-03-13', 'Công nghệ Hóa học - Môi trường', 'Công nghệ Kỹ thuật Môi trường', '18MT1', 'Lớp phó', 0.2, NULL),
(135, '220', '1911507210104', 'Phan Văn Giàu', '2001-04-04', 'Công nghệ Hóa học - Môi trường', 'Công nghệ Kỹ thuật Môi trường', '19MT1', 'Lớp trưởng', 0.3, NULL),
(136, '220', '1911507210104', 'Lê Thị Bích Thu', '2001-11-05', 'Công nghệ Hóa học - Môi trường', 'Công nghệ Kỹ thuật Môi trường', '19MT1', 'Lớp phó', 0.2, NULL),
(137, '220', '2050721200103', 'Trần Lê Linh', '2000-01-02', 'Công nghệ Hóa học - Môi trường', 'Công nghệ Kỹ thuật Môi trường', '20MT1', 'Lớp trưởng', 0.3, NULL),
(138, '220', '2050721200106', 'Phạm Đình Tiến', '2001-06-20', 'Công nghệ Hóa học - Môi trường', 'Công nghệ Kỹ thuật Môi trường', '20MT1', 'Lớp phó', 0.2, NULL),
(139, '220', '1811507110104', 'Trần Thị Thu Hồng', '2000-04-28', 'Công nghệ Hóa học - Môi trường', 'Công nghệ Vật liệu', '18VL1', 'Lớp trưởng', 0.3, NULL),
(140, '220', '1811507110113', 'Nguyễn Xuân Sơn Hoàng', '2000-06-01', 'Công nghệ Hóa học - Môi trường', 'Công nghệ Vật liệu', '18VL1', 'Lớp phó', 0.2, NULL),
(141, '220', '1911507110103', 'Đỗ Thị Ngọc Hằng', '2001-09-24', 'Công nghệ Hóa học - Môi trường', 'Công nghệ Vật liệu', '19VL1', 'Lớp trưởng', 0.3, NULL),
(142, '220', '1911507110102', 'Nguyễn Đình Bách', '2001-05-11', 'Công nghệ Hóa học - Môi trường', 'Công nghệ Vật liệu', '19VL1', 'Lớp phó', 0.2, NULL),
(143, '220', '1811514110126', 'Nguyễn Trần Linh Vương', '2000-06-20', 'Sư phạm công nghiệp', 'Sư phạm Kỹ thuật Công nghiệp', '18SK1', 'Lớp trưởng', 0.3, NULL),
(144, '220', '1811514110123', 'Hồ Tấn Trung', '2000-01-02', 'Sư phạm công nghiệp', 'Sư phạm Kỹ thuật Công nghiệp', '18SK1', 'Lớp phó', 0.2, NULL),
(145, '220', '1911514110116', 'Đào Thị Trang', '2001-12-12', 'Sư phạm công nghiệp', 'Sư phạm Kỹ thuật Công nghiệp', '19SK1', 'Lớp trưởng', 0.3, NULL),
(146, '220', '1911514110112', 'Nguyễn Thị Hoàng Linh', '2001-05-16', 'Sư phạm công nghiệp', 'Sư phạm Kỹ thuật Công nghiệp', '19SK1', 'Lớp phó', 0.2, NULL),
(147, '220', '205141100118', 'Phan Chí Luân', '2002-05-13', 'Sư phạm công nghiệp', 'Sư phạm Kỹ thuật Công nghiệp', '20SK1', 'Lớp trưởng', 0.3, NULL),
(148, '220', '205141100111', 'Lê Thị Hoài Thu', '2002-06-24', 'Sư phạm công nghiệp', 'Sư phạm Kỹ thuật Công nghiệp', '20SK1', 'Lớp phó', 0.2, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `slide_id` int(11) NOT NULL,
  `slide_ten` varchar(255) NOT NULL,
  `slide_hinhanh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`slide_id`, `slide_ten`, `slide_hinhanh`) VALUES
(1, 'Slider 1', 'UTE-2018-201950.jpg'),
(2, 'Slider 2', 'khyenhocdn5.jpg'),
(3, 'Slider 3', '4 svdhdn90.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbao`
--

CREATE TABLE `thongbao` (
  `thongbao_id` int(11) NOT NULL,
  `thongbao_ten` varchar(255) NOT NULL,
  `thongbao_mota` varchar(1000) NOT NULL,
  `thongbao_noidung` varchar(1000) NOT NULL,
  `thongbao_file` varchar(1000) DEFAULT NULL,
  `thongbao_thoigiandang` datetime NOT NULL,
  `thongbao_thoigiancapnhat` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thongbao`
--

INSERT INTO `thongbao` (`thongbao_id`, `thongbao_ten`, `thongbao_mota`, `thongbao_noidung`, `thongbao_file`, `thongbao_thoigiandang`, `thongbao_thoigiancapnhat`, `user_id`) VALUES
(2, 'Thông báo về học bổng \"Nâng bước tân thủ khoa\" của báo Tiền Phong', 'Phòng CTSV thông báo về học bổng \"Nâng bước tân thủ khoa\" của báo Tiền Phong', '<p>Trường Đại học Sư phạm kỹ thuật Đà Nẵng đã phối hợp với Báo Tiền phong - Chi nhánh Đà Nẵng triển khai học bổng “Nâng bước thủ khoa” của báo Tiền Phong cho các sinh viên là Thủ khoa hoặc có thứ hạng cao trong kỳ thi tuyển sinh năm học 2021 nhằm khuyến khích động viên các em trong học tập.</p><p>Phòng CTSV thông báo đến toàn thể sinh viên nhà trường về học bổng này, các em chú ý theo dõi và đăng ký &nbsp;theo thời gian quy định.</p><p>Mọi thắc mắc vui lòng liên hệ Cô Thảo (Phòng CTSV).</p>', NULL, '2021-12-10 15:59:13', '2022-01-11 10:53:38', 2),
(3, 'Thông báo Học bổng khuyến học của Hội khuyến học Thành phố Đà Nẵng', 'Phòng CTSV thông báo về Học bổng khuyến học', '<p>Trường Đại học Sư phạm Kỹ thuật Đà Nẵng đã phối hợp với Hội khuyến học Thành phố Đà Nẵng triển khai học bổng Xuân sẻ chia năm 2021-2022 cho các em sinh viên nhà trường có hoàn cảnh khó khăn vươn lên trong học tập.</p><p>Phòng CTSV thông báo đến toàn thể sinh viên nhà trường về học bổng này, các em chú ý theo dõi và đăng ký theo thời gian quy định.</p><p>Mọi thắc mắc vui lòng liên hệ cô Thảo (Phòng CTSV).</p>', NULL, '2021-12-10 16:27:23', '2021-12-31 21:19:17', 2),
(5, 'Thông báo Học bổng Hessen (CHLB Đức) năm học 2021-2022', 'Phòng CTSV thông báo về Học bổng Hessen (CHLB Đức) năm học 2021-2022', '<p>Trường Đại học Sư phạm Kỹ thuật Đà Nẵng đã phối hợp với Bộ Khoa học và Nghệ thuật Bang Hessen (CHLB Đức) triển khai Học bổng Hessen năm 2021-2022.</p><p>Phòng CTSV thông báo đến toàn thể sinh viên nhà trường về học bổng này, các em chú ý theo dõi và đăng ký theo thời gian quy định.</p><p>Mọi thắc mắc vui lòng liên hệ cô Thảo (Phòng CTSV)</p>', NULL, '2021-12-15 10:34:49', '2021-12-31 21:11:40', 2),
(6, 'Thông báo về Học bổng Xuân sẻ chia năm học 2021-2022 của Đại học Đà Nẵng', 'Phòng CTSV thông báo về Học bổng Xuân sẻ chia năm học 2021-2022', '<p>Trường Đại học Sư phạm Kỹ thuật Đà Nẵng đã phối hợp với Đại học Đà Nẵng triển khai học bổng Xuân sẻ chia năm 2021-2022 cho các em sinh viên nhà trường gặp khó khăn trong Tết Nguyên Đán sắp tới nhằm giúp các em có điều kiện để về quê ăn Tết cùng gia đình.&nbsp;</p><p>Phòng CTSV thông báo đến toàn thể sinh viên nhà trường về học bổng này, các em chú ý theo dõi và đăng ký theo thời gian quy định.</p><p>Mọi thắc mắc vui lòng liên hệ cô Thảo (Phòng CTSV)</p>', NULL, '2021-12-31 11:29:18', '2021-12-31 21:02:45', 2),
(9, 'Thông báo Học bổng dành cho sinh viên có hoàn cảnh khó khăn do Công đoàn Đại học Đà Nẵng tài trợ', 'Phòng CTSV thông báo về Học bổng dành cho sinh viên có hoàn cảnh khó khăn', '<p>Trường Đại học Sư phạm Kỹ thuật Đà Nẵng đã phối hợp với Công đoàn Đại học Đà Nẵng triển khai Học bổng dành cho sinh viên có hoàn cảnh khó khăn nhằm động viên các sinh viên vượt khó vươn lên trong học tập.</p><p>Phòng CTSV thông báo đến toàn thể sinh viên nhà trường về học bổng này, các em chú ý theo dõi và đăng ký theo thời gian quy định.</p><p>Mọi thắc mắc vui lòng liên hệ cô Thảo (Phòng CTSV).</p>', '', '2022-01-11 11:03:08', NULL, 2),
(10, 'Thông báo Học bổng Jesco Asia Nhật Bản', 'Phòng CTSV thông báo về học bổng Jesco Asia Nhật Bản', '<p>Trường Đại học Sư phạm kỹ thuật Đà Nẵng đã phối hợp với Tập đoàn Jesco Asia Nhật Bản - chi nhánh Đà Nẵng triển khai Học bổng Jesco Asia Nhật Bản dành cho các sinh viên có hoàn cảnh khó khăn đạt kết quả tốt trong học tập.</p><p>Phòng CTSV thông báo đến toàn thể sinh viên nhà trường về học bổng này, các em chú ý theo dõi và đăng ký theo giời gian quy định.</p><p>Mọi thắc mắc vui lòng liên hệ cô Thảo (Phòng CTSV).</p>', '', '2022-01-11 14:43:29', NULL, 2),
(11, 'Thông báo danh sách sinh viên được nhận học bổng \"Xuân sẻ chia\" của Đại học Đà Nẵng', 'Phòng CTSV thông báo danh sách sinh viên được nhận học bổng \"Xuân sẻ chia\" của Đại học Đà Nẵng', '<p>Phòng CTSV thông báo sinh viên được nhận học bổng “Xuân sẻ chia” của Đại học Đà Nẵng (Xem file đính kèm).</p><p>Sinh viên có trong danh sách nhận học bổng tập trung tại Đại học Đà Nẵng vào lúc 07h00 phút ngày 25/01/2021. Lưu ý, sinh viên phải ăn mặc lịch sự và có mặt đúng giờ theo quy định.</p>', NULL, '2022-01-12 11:47:36', '2022-01-16 10:27:47', 2),
(12, 'Thông báo danh sách sinh viên được nhận Học bổng Thử thách UTE năm học 2020-2021', 'Phòng CTSV thông báo danh sách sinh viên được nhận Học bổng Thử thách UTE năm học 2020-2021', '<p>Phòng CTSV thông báo sinh viên được nhận Học bổng Thử thách UTE năm học 2020-2021 (Xem file đính kèm).</p><p>Sinh viên có tên trong danh sách đến Hội trường B Trường Đại học Sư phạm Kỹ Thuật Đà Nẵng lúc 8h15 ngày 17/01/2022 (Thứ hai) để nhận học bổng Thử thách UTE. Yêu cầu sinh viên mặc trang phục lịch sự.</p>', 'DS_SinhVien_NhanHB_UTE_2020-202150.xlsx', '2022-01-13 11:17:19', NULL, 2),
(13, 'Thông báo danh sách sinh viên được nhận học bổng dành cho sinh viên có hoàn cảnh khó khăn do Công đoàn Đại học Đà Nẵng tài trợ', 'Phòng CTSV thông báo danh sách sinh viên được nhận học bổng dành cho sinh viên có hoàn cảnh khó khăn do Công đoàn Đại học Đà Nẵng tài trợ', '<p>Phòng CTSV thông báo sinh viên được nhận học bổng dành cho sinh viên có hoàn cảnh khó khăn do Công đoàn Đại học Đà Nẵng tài trợ (Xem file đính kèm).</p><p>Sinh viên có trong danh sách nhận học bổng tập trung tại Đại học Đà Nẵng vào lúc 07h00 phút ngày 25/01/2021. Lưu ý, sinh viên phải ăn mặc lịch sự và có mặt đúng giờ theo quy định</p>', 'DS_SinhVien_NhanHB_CongdoanDN_2020-202143.xlsx', '2022-01-16 10:25:57', '2022-01-16 10:59:25', 2),
(14, 'Thông báo danh sách sinh viên được nhận học bổng Nâng bước tân thủ khoa của báo Tiền phong', 'Phòng CTSV thông báo danh sách sinh viên được nhận Học bổng Nâng bước tân thủ khoa của báo Tiền phong', '<p>Phòng CTSV thông báo danh sách sinh viên được nhận Học bổng Nâng bước tân thủ khoa của báo Tiền phong (Xem file đính kèm).</p>', 'DS_SinhVien_NhanHB_TanThuKhoa23.xlsx', '2022-01-16 11:07:31', NULL, 2),
(15, 'Thông báo Học bổng Xuân sẻ chia năm học 2021-2022 (Đợt 2) của Đại học Đà Nẵng', 'Phòng CTSV thông báo về Học bổng Xuân sẻ chia năm học 2021-2022', '<p>Trường Đại học Sư Phạm Đà Nẵng đã phối hợp với Đại học Đà Nẵng triển khai học bổng Xuân sẻ chia năm học 2021-2022 (Đợt 2) nhằm tiếp tục hỗ trợ các em sinh viên nhà trường gặp khó khăn &nbsp;trong Tết Nguyên Đán sắp tới để các em có điều kiện về quê ăn Tết &nbsp;cùng gia đình.&nbsp;</p><p>Phòng CTSV thông báo đến toàn thể sinh viên nhà trường về học bổng này, các em chú ý theo dõi và đăng ký theo thời gian quy định.</p><p>Mọi thắc mắc vui lòng liên hệ cô Thảo (Phòng CTSV) theo số điện thoại &nbsp;0905357464.</p>', '', '2022-01-21 14:54:52', NULL, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tieuchi`
--

CREATE TABLE `tieuchi` (
  `tieuchi_id` int(11) NOT NULL,
  `tieuchi_ten` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tieuchi`
--

INSERT INTO `tieuchi` (`tieuchi_id`, `tieuchi_ten`) VALUES
(1, 'Có kết quả học tập từ loại giỏi trở lên'),
(2, 'Số tín chỉ đăng kí từ 18 tín chỉ/học kỳ trở lên'),
(3, 'Điểm kết thúc học phần phải đạt loại C trở lên'),
(4, 'Tích cực tham gia nghiên cứu khoa học và các hoạt động ngoại khóa, thể hiện vai trò gương mẫu và sức lan tỏa trong học tập sinh hoạt và rèn luyện'),
(5, 'Bài tự luận viết tay chủ đề: Tại sao bạn chọn học bổng thử thách UTE và bạn có xứng đáng nhận học bổng này không?'),
(6, 'Thư giới thiệu của giáo viên chủ nhiệm và 2 giảng viên trực tiếp giảng dạy'),
(8, 'Sinh viên có hộ khẩu thường trú tại thành phố Đà Nẵng'),
(10, 'Sinh viên giữ các chức vụ trong trường'),
(11, 'Đơn xin học bổng (Viết tay)'),
(12, 'Có kết quả học tập từ loại khá trở lên'),
(13, 'Sinh viên có hoàn cảnh khó khăn'),
(14, 'Sinh viên có sổ hộ khẩu từ Thừa Thiên Huế trở vào'),
(15, 'Viết một bức thư bằng tay nói về hoàn cảnh gia đình, nỗ lực của bản thân trong quá trình học tập, đồng thời thể hiện được ước mơ và khát vọng thể hiện của bản thân trong tương lai'),
(16, 'Đơn xin học bổng Thử thách UTE'),
(17, 'Có kết quả học tập học kỳ I năm học 2021-2022 đạt từ 7.5 trở lên tính theo thang 10 (hoặc tương đương đối với thang điểm 4)'),
(18, 'Tham gia các hoạt động xã hội do trường phát động'),
(19, 'Gia đình chịu ảnh hưởng của bão, lũ'),
(20, 'Bảng điểm học tập trong năm học xét cấp'),
(21, 'Bảng điểm rèn luyện trong năm học xét cấp'),
(22, 'Có kết quả học tập học kỳ I năm học 2021-2022 đạt từ 7.5 trở lên tính theo thang 10 (hoặc tương đương đối với thang điểm 4)'),
(23, 'Tham gia các hoạt động xã hội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tieuchihocbong`
--

CREATE TABLE `tieuchihocbong` (
  `id` int(11) NOT NULL,
  `tieuchi_id` int(11) NOT NULL,
  `hocbong_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tieuchihocbong`
--

INSERT INTO `tieuchihocbong` (`id`, `tieuchi_id`, `hocbong_id`) VALUES
(42, 16, 1),
(43, 20, 1),
(44, 21, 1),
(45, 4, 1),
(46, 5, 1),
(47, 6, 1),
(48, 16, 2),
(49, 20, 2),
(50, 21, 2),
(51, 4, 2),
(52, 5, 2),
(53, 6, 2),
(54, 16, 3),
(55, 20, 3),
(56, 21, 3),
(57, 4, 3),
(58, 5, 3),
(59, 6, 3),
(60, 10, 17),
(61, 10, 18),
(62, 10, 19),
(63, 10, 20),
(64, 11, 21),
(65, 13, 21),
(66, 12, 21),
(67, 14, 22),
(68, 13, 22),
(69, 15, 22),
(70, 11, 26),
(71, 8, 26),
(72, 13, 26),
(73, 12, 26),
(74, 11, 30),
(75, 20, 30),
(76, 13, 30),
(77, 19, 30),
(78, 11, 32),
(79, 1, 32),
(80, 13, 32),
(81, 18, 32),
(82, 22, 29),
(83, 13, 29),
(84, 23, 29),
(85, 11, 35),
(86, 20, 35),
(87, 13, 35),
(88, 19, 35);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truycap`
--

CREATE TABLE `truycap` (
  `truycap_id` int(11) NOT NULL,
  `truycap_dangky` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quyen` tinyint(1) DEFAULT 0,
  `lop_id` int(11) DEFAULT NULL,
  `canbo` int(11) DEFAULT NULL,
  `chucdanh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chucvu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngayDuyetTV` datetime DEFAULT NULL,
  `tinhtrang` int(11) NOT NULL,
  `ngaysinh` date DEFAULT NULL,
  `khoa_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `quyen`, `lop_id`, `canbo`, `chucdanh`, `chucvu`, `fullname`, `diachi`, `sdt`, `gioitinh`, `ngayDuyetTV`, `tinhtrang`, `ngaysinh`, `khoa_id`) VALUES
(2, 'admin', 'ctsv@gmail.com', NULL, '$2a$12$1mKwH0uC/rkiFmG2WoT03eFp5hf1GB8a7uvryc39FAk90BkGc4IpC', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'Phòng CTSV', '48 Cao Thắng, Đà Nẵng', '0978645321', NULL, NULL, 1, NULL, NULL),
(3, '500501', 'thvu@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 1, NULL, 1, 'Giảng viên chính Bộ môn Điện tử viễn thông', 'Trưởng Khoa Điện - Điện tử, Trưởng nhóm nghiên cứu và giảng dạy TRT-3C', 'Trần Hoàng Vũ', 'Thành phố Đà Nẵng', '0904966711', 'Nam', NULL, 1, '1980-06-10', 1),
(5, 'spkt', 'spkt@gmail.com', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, '2021-12-15 07:12:48', 3, NULL, 0, NULL, NULL, 'Trường ĐHSPKT', '48 Cao Thắng, Quận Hải Châu, Đà Nẵng', '0965072230', NULL, NULL, 1, NULL, NULL),
(6, 'congdoandn', 'congdoan123@gmail.com', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, '2021-12-02 08:25:58', '2021-12-28 08:53:11', 3, NULL, 0, NULL, NULL, 'Công Đoàn ĐHĐN', 'Phường Thanh Bình,Quận Hải Châu, Thành phố Đà Nẵng', '0965072231', NULL, '2021-12-03 11:23:03', 1, NULL, NULL),
(18, '500502', 'pvphat@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 1, NULL, 1, 'Giảng viên Bộ môn Điện tử viễn thông', 'Phó trưởng Khoa Điện- Điện tử, Phó trưởng bộ môn Điện tử viễn thông', 'Phạm Văn Phát', 'Thành phố Đà Nẵng', '0914250339', 'Nam', '2021-12-13 10:00:00', 1, '1976-10-20', 1),
(23, '500507', 'pduyduong@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 1, NULL, 1, 'Giảng viên Bộ môn Tự động hóa', 'Phó Trưởng Khoa Điện - Điện tử', 'Phạm Duy Dưỡng', 'Thành phố Đà Nẵng', ' 0932132693', 'Nam', '2021-12-23 03:50:33', 1, '1986-08-08', 1),
(24, '500508', 'ptphong@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 1, NULL, 1, 'Giảng viên Bộ môn Tự động hóa', 'Trưởng bộ môn Tự động hóa', 'Phạm Thanh Phong', 'Thành phố Đà Nẵng', '0397870063', 'Nam', '2021-12-23 03:52:42', 1, '1986-09-16', 1),
(27, '500511', 'htmle@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 1, NULL, 1, 'Giảng viên chính Bộ môn Công nghệ thông tin', 'Trưởng Bộ môn Công nghệ thông tin', 'Hoàng Thị Mỹ Lệ', '160/21 Trần Cao Vân, Thành phố Đà Nẵng', '0935280669', 'Nữ', '2021-12-23 04:22:32', 1, '1969-06-28', 1),
(31, '500515', 'hoa03d4@gmail.com', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 1, NULL, 1, 'Giảng viên chính Bộ môn Hệ thống điện', 'Trưởng Bộ môn Hệ thống điện', 'Trương Thị Hoa', 'Thành phố Đà Nẵng', '0962556985', 'Nữ', '2021-12-23 04:35:04', 1, '1985-10-10', 1),
(33, '500517', 'bhthong@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 1, NULL, 1, 'Giảng viên chính Bộ môn Cơ khí chế tạo', 'Phó Trưởng khoa Cơ khí - Chủ tịch Công đoàn BP Khoa ', 'Bùi Hệ Thống', 'Thành phố Đà Nẵng', '0905860781', 'Nam', '2021-12-23 04:46:18', 1, '1983-07-04', 2),
(34, '500518', 'nxbao@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 1, NULL, 1, 'Giảng viên Bộ môn Cơ khí chế tạo', 'Trưởng Bộ môn Cơ khí chế tạo', 'Nguyễn Xuân Bảo', 'Thành phố Đà Nẵng', '0962576985', 'Nam', '2021-12-23 04:49:12', 1, '1985-01-27', 2),
(35, '500519', 'nlcthanh@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 1, NULL, 1, 'Giảng viên chính Bộ môn Cơ khí ô tô', 'Phó trưởng khoa Cơ khí', 'Nguyễn Lê Châu Thành', 'Tổ 38, Hòa Khê, Quận Thanh Khê, Thành phố Đà Nẵng', '0989296540', 'Nam', '2021-12-23 05:32:37', 1, '1978-12-05', 2),
(36, '500520', 'nmtien@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 1, NULL, 1, 'Giảng viên chính Bộ môn Cơ khí ô tô', 'Trưởng bộ môn Cơ khí ô tô', 'Nguyễn Minh Tiến', '19 Phú Lộc 16, Hòa Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', '0941976776', 'Nam', '2021-12-23 05:35:12', 1, '1986-07-06', 2),
(39, '500523', 'htangoc@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 1, NULL, 1, 'Giảng viên chính Bộ môn Cơ Nhiệt - Điện lạnh', 'Trưởng Khoa Cơ khí', 'Hồ Trần Anh Ngọc', 'Thành phố Đà Nẵng', '0903 515 869', 'Nam', '2021-12-23 05:43:28', 1, '1973-03-20', 2),
(40, '500524', 'ncvinh@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 1, NULL, 1, 'Giảng viên chính Bộ môn Cơ Nhiệt - Điện lạnh', 'Trưởng bộ môn Cơ Nhiệt - Điện lạnh', 'Nguyễn Công Vinh', 'Thành phố Đà Nẵng', '0983 744171', 'Nam', '2021-12-23 05:43:28', 1, '1980-04-24', 2),
(42, '500525', 'nphoang@ute.udn.vn ', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 1, NULL, 1, 'Giảng viên Bộ môn CNKT Xây dựng', 'Phó trưởng Khoa Kỹ thuật xây dựng', 'Nguyễn Phú Hoàng', 'K25/4 Châu Văn Liêm, Thành phố Đà Nẵng', '0917981598', 'Nam', '2021-12-23 07:51:25', 1, '1974-01-02', 3),
(43, '500526', 'dvphuc@ute.udn.vn ', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 1, NULL, 1, 'Giảng viên Bộ môn CNKT Xây dựng', 'Phó trưởng Bộ môn CNKT Xây dựng', 'Đoàn Vĩnh Phúc', 'Thành phố Đà Nẵng', '0905059010', 'Nam', '2021-12-23 07:54:48', 1, '1980-06-10', 3),
(44, '500527', 'ntmy@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 1, NULL, 1, 'Giảng viên Bộ môn CNKT Cầu đường', 'Phó trưởng bộ môn CNKT Cầu đường', 'Ngô Thị Mỵ', ' K115/31E Ông ÍCh Khiêm, Thành phố Đà Nẵng', '0982551227', 'Nữ', '2021-12-23 08:00:58', 1, '1983-04-15', 3),
(46, '500529', 'ptvinh@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 1, NULL, 1, 'Giảng viên Bộ môn CNKT Kiến trúc', 'Phó trưởng khoa Kỹ thuật Xây dựng', 'Phan Tiến Vinh', '05 Hải Hồ, Quận Hải Châu, Thành phố Đà Nẵng', '0905091905', 'Nam', '2021-12-23 08:07:23', 1, '1975-06-12', 3),
(48, '500531', 'chiuyen@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 1, NULL, 1, 'Giảng viên Bộ môn Công nghệ hóa học', 'Trưởng bộ môn Công nghệ hóa học', 'Phan Chi Uyên', 'Thành phố Đà Nẵng', '0945782777', 'Nữ', '2021-12-23 08:14:07', 1, '1980-01-01', 9),
(52, '500535', 'nhptrang@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, '0000-00-00 00:00:00', NULL, 1, NULL, 1, 'Giảng viên bộ môn Công nghệ thực phẩm', 'Trưởng bộ môn Công nghệ thực phẩm', 'Nguyễn Hữu Phước Trang', 'Thành phố Đà Nẵng', '0912924254', 'Nữ', '2021-12-23 08:37:36', 1, '1980-01-23', NULL),
(53, '500536', 'ntmphuong@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 1, NULL, 1, 'Giảng viên bộ môn Công nghệ thực phẩm', 'Phó trưởng Khoa Công nghệ Hóa học - Môi trường', 'Ngô Thị Minh Phương', 'Thành phố Đà Nẵng', '0983008732', 'Nữ', '2021-12-23 08:37:36', 1, '1985-10-14', 9),
(55, '500538', 'ndsy@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, '2022-01-19 22:37:07', 1, NULL, 1, 'Giảng viên Khoa Sư phạm Công nghiệp', 'Trưởng Khoa Sư phạm công nghiệp', 'Nguyễn Đức Sỹ', 'Thành phố Đà Nẵng', '0964785541', 'Nam', '2021-12-23 08:48:38', 1, '1980-01-01', 4),
(56, '1811505310101', '1811505310101@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, '2022-01-19 19:37:24', 2, 1, 0, NULL, NULL, 'Nguyễn Ngọc Anh', 'Xã An Phú, Thành phố Pleiku,Tỉnh Gia Lai', '0976892471', 'Nam', '2021-12-23 11:27:42', 1, '2000-10-01', NULL),
(57, '1811505310102', '1811505310102@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 1, 0, NULL, '', 'Trần Chí', '108 Thôn 2, Xã Eaknuec, Krong Păc, Đăk Lăk', '0965754367', 'Nam', '2021-12-23 11:32:24', 1, '2000-01-20', NULL),
(58, '1811505310103', '1811505310103@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 1, 0, NULL, '', 'Trần Hoàng Chung', '18 Võ Thị Sáu, Phường 1, Thành phố Đông Hà, Tỉnh Quảng Trị', '0954789223', 'Nam', '2021-12-23 11:36:52', 1, '2000-03-16', NULL),
(59, '1811505310104', '1811505310104@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 1, 0, NULL, NULL, 'Nguyễn Đình Cường', 'Thị Xã Điện Bàn, Tỉnh Quảng Nam', '0965072230', 'Nam', '2021-12-23 13:56:57', 1, '2000-09-22', NULL),
(60, '1811505310105', '1811505310105@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 1, 0, NULL, NULL, 'Bùi Vạn Đạt', 'Tỉnh Gia Lai', '0965084823', 'Nam', '2021-12-23 13:56:57', 1, '2000-01-16', NULL),
(61, '1811505310106', '1811505310106@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 1, 0, NULL, NULL, 'Cái Quốc Đạt', 'Tỉnh Gia Lai', '0965784633', 'Nam', '2021-12-23 14:05:34', 1, '2000-09-04', NULL),
(62, '1811505310107', '1811505310107@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 1, 0, NULL, NULL, 'Nguyễn Thành Đạt', 'Huyện Anh Sơn, Tỉnh Nghệ An', '0965782334', 'Nam', '2021-12-23 14:05:34', 1, '2000-02-04', NULL),
(63, '1811505310108', '1811505310108@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 1, 0, NULL, NULL, 'Trương Minh Đạt', 'Thôn Ấp Nam, Xã Đại Minh, Huyện Đại Lộc, Tỉnh Quảng Nam', '0978923487', 'Nam', '2021-12-23 14:10:48', 1, '2000-02-27', NULL),
(64, '1811505310125', '1811505310125@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, '2022-01-11 03:17:27', 2, 1, 1, NULL, 'Lớp trưởng 18T1', 'Nguyễn Hoàng Long', 'Xóm 3 Lối 2, Thôn Hiển Lộc, Xã Duy Linh, Huyện Quảng Trạch, Tỉnh Quảng Bình', '0974678933', 'Nam', '2021-12-23 14:10:48', 1, '2000-07-02', NULL),
(65, '1811505310135', '1811505310135@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, '2022-01-10 02:04:12', 2, 1, 1, NULL, 'Bí thư lớp 18T1', 'Võ Quang Nhả', 'Hà Thanh, Gio Châu, Gio Linh, Quảng Trị', '0956792761', 'Nam', '2021-12-23 14:16:48', 1, '1998-01-07', NULL),
(66, '1811505310201', '1811505310201@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, '2022-01-27 09:10:31', 2, 2, 1, NULL, 'Lớp trưởng 18T2', 'Đặng Việt Anh', 'K52/1 Đinh Tiên Hoàng, Thành phố Đà Nẵng', '0965987367', 'Nam', '2021-12-23 14:58:51', 1, '2000-06-17', NULL),
(67, '1811505310202', '1811505310202@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 2, 0, NULL, '', 'Trần Quang Đăng', 'Quận Thanh Khê, Thành phố Đà Nẵng', '0967892571', 'Nam', '2021-12-23 14:58:51', 1, '2000-02-14', NULL),
(68, '1811505310204', '1811505310204@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, '2022-01-27 09:09:40', 2, 2, 0, NULL, NULL, 'Nguyễn Đăng Định', 'Xã Đại Đồng, Huyện Đại Lộc, Tỉnh Quảng Nam', '09657892345', 'Nam', '2021-12-23 15:52:08', 1, '2000-07-08', NULL),
(69, '1811505310301', '1811505310301@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 3, 0, NULL, NULL, 'Nguyễn Kim An', 'Thị trấn Thạnh Mỹ, Huyện Nam Giang, Tỉnh Quảng Nam', '0985782361', 'Nam', '2021-12-23 15:52:08', 1, '1997-10-05', NULL),
(70, '1811505310304', '1811505310304@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 3, 0, NULL, NULL, 'Nguyễn Tấn Bình', 'Tổ 7, Phú Vinh, Xã Tiên Hà, Huyện Tiên Phước, Tỉnh Quảng Nam', '0954782910', 'Nam', '2021-12-23 16:04:15', 1, '2000-01-16', NULL),
(71, '1811505310309', '1811505310309@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 3, 1, NULL, 'Lớp trưởng 18T3', 'Mai Xuân Duy', 'Diên Khánh, Tỉnh Khánh Hòa', '0965789237', 'Nam', '2021-12-23 16:04:15', 1, '2000-02-12', NULL),
(72, '1811505310401', '1811505310401@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, '2022-01-05 05:45:36', 2, 4, 0, NULL, NULL, 'Bùi Phú Ân', 'Thôn Đại An, Xã Đại Lãnh, Huyện Đại Lộc, Tỉnh Quảng Nam', '0965789265', 'Nam', '2021-12-24 02:22:02', 1, '2000-11-02', NULL),
(73, '1811505310402', '1811505310402@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 4, 0, NULL, NULL, 'Nguyễn Hoàng Anh', 'Huyện Đại Lộc, Tỉnh Quảng Nam', '0956782345', 'Nam', '2021-12-24 02:22:02', 1, '2000-12-08', NULL),
(74, '1811505310411', '1811505310411@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 4, 1, NULL, 'Lớp trưởng 18T4', 'Nguyễn Thanh Duy', 'Huyện Sơn Tịnh, Tỉnh Quảng Ngãi', '0965789236', 'Nam', '2021-12-24 03:12:52', 1, '2000-03-27', NULL),
(75, '1811504210101', '1811504210101@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 5, 1, NULL, 'Lớp trưởng 18D1', 'Nguyễn Công Chung', 'Tỉnh Quảng Ngãi', '0977864278', 'Nam', '2021-12-24 03:12:52', 1, '2000-07-20', NULL),
(76, '1811504210110', '1811504210110@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 5, 1, '', 'Lớp phó 18D1', 'Trần Anh Đức', 'Tỉnh Gia Lai', '0975682348', 'Nam', '2021-12-24 03:34:06', 1, '2000-04-08', NULL),
(77, '1811504210112', '1811504210112@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 5, 0, NULL, '', 'Phùng Thái Duy', 'K43/16 Phó Đức Chính, Quận Sơn Trà, Thành phố Đà Nẵng', '0965890238', 'Nam', '2021-12-24 03:49:17', 1, '2000-11-23', NULL),
(78, '1811505120247', '1811505120247@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 6, 1, NULL, 'Lớp trưởng 18D2', 'Trần Văn Toàn', 'Tỉnh Quảng Trị', '0976892371', 'Nam', '2021-12-24 03:49:17', 1, '2000-08-08', NULL),
(79, '1811505120248', '1811505120248@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 6, 0, NULL, NULL, 'Phạm Văn Trí', 'Huyện Duy Xuyên, Tỉnh Quảng Nam', '0965892381', 'Nam', '2021-12-24 03:49:17', 1, '2000-07-12', NULL),
(80, '1811505120250', '1811505120250@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 6, 0, NULL, '', 'Lưu Văn Trung', 'Xã Đại Chánh, Huyện Đại Lộc, Tỉnh Quảng Nam', '0976892371', 'Nam', '2021-12-24 03:57:38', 1, '2000-01-17', NULL),
(81, '1811504110101', '1811504110101@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 32, 1, NULL, 'Lớp trưởng 18C1', 'Nguyễn An', 'Thôn 3, Xã Quảng Điền, Huyện Krong Ana, Tỉnh Đăk Lăk', '0989623711', 'Nam', '2021-12-24 03:57:38', 1, '2000-08-17', NULL),
(82, '1811504110103', '1811504110103@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 7, 1, NULL, 'Lớp phó 18C1', 'Nguyễn Tuấn Cảnh', 'Tỉnh Quảng Ngãi', '0935502571', 'Nam', '2021-12-24 03:57:38', 1, '2000-12-17', NULL),
(83, '1811505410101', '1811505410101@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 26, 1, NULL, 'Lớp trưởng 18DT1', 'Trần Công Bảo', 'Tỉnh Khánh Hòa', '0965892391', 'Nam', '2021-12-24 03:57:38', 1, '2000-10-10', NULL),
(84, '1811505520003', '1811505520003@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 21, 1, NULL, 'Lớp trưởng 18TDH2', 'Trịnh Xuân Vương', '40 Lê Đại Hành, Thành phố Đà Nẵng', '0965082390', 'Nam', '2021-12-24 04:15:27', 1, '2000-04-04', NULL),
(85, '1811504210102', '1811504210102@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 38, 1, NULL, 'Bí thư lớp 18DL1', 'Mai Văn Ánh', '02 Tản Đà, Thị Trấn Phước An, Tỉnh Đăk Lăk', '0965897230', 'Nam', '2021-12-24 04:15:27', 1, '2000-10-31', NULL),
(86, '1811504101001', '1811504101001@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 26, 1, NULL, 'Lớp trưởng 18DT1', 'Nguyễn Thái Dũng', '30 Hà Huy Tập, Thành phố Tam Kỳ, Tỉnh Quảng Nam', '0965892333', 'Nam', '2021-12-24 04:24:53', 1, '2000-09-05', NULL),
(87, '1811504101002', '1811504101002@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 26, 0, NULL, NULL, 'Cù Lê Đại Nghĩa', '20 Nguyễn Công Trứ, Thành phố Đà Nẵng', '0965789233', 'Nam', '2021-12-24 04:24:53', 1, '2000-12-29', NULL),
(88, 'khuyenhocdn', 'khuyenhocdn@gmail.com', NULL, '$2y$10$XPRRfH/.s0mFYhm7iobmRuxQlOE2m/L6uI9xJk4FA1mtx0U3MleUi', NULL, '2021-12-28 09:39:56', '2022-01-19 00:43:56', 3, NULL, 0, NULL, NULL, 'Hội Khuyến học ĐN', '175 Trần Phú, Quận Hải Châu, Thành phố Đà Nẵng', '0965892661', NULL, '2021-12-28 23:40:16', 1, NULL, NULL),
(89, 'aaaa', 'aaa@gmail.com', NULL, '$2y$10$57PrREi5iCg1FSor6pPkTeMIyou9KpLuysTYFw7mQ7RqN1HXtYm0K', NULL, '2021-12-28 20:27:47', '2022-01-19 00:40:41', 3, NULL, 0, NULL, NULL, '123456', 'Hải Châu, Đà Nẵng a', '0965072231', NULL, NULL, 0, NULL, NULL),
(90, 'tienphongdn', 'baotienphongdn@gmal.com', NULL, '$2y$10$wabH1yQbxAmEAaHYckaR7ebgKo.rh81nxpKLo8vizJn7xDD/G2n/.', NULL, '2021-12-28 20:38:51', '2021-12-29 03:39:36', 3, NULL, 0, NULL, NULL, 'Báo Tiền phong', '19 Ngô Gia Tự, Thành phố Đà Nẵng', '0965728199', NULL, '2021-12-29 10:39:36', 1, NULL, NULL),
(92, 'hessen', 'hessen@gmail.com', NULL, '$2y$10$hIajNFAq8bLCnPqQfcXI1.j0WCnUWkPV4GzShytVVqzVuw3WISg.i', NULL, '2021-12-30 20:56:21', '2022-01-14 07:57:38', 3, NULL, 0, NULL, NULL, 'Tổ chức Hessen', 'CHLB Đức', '0965072892', NULL, '2021-12-31 10:56:30', 1, NULL, NULL),
(93, 'daihocdn', 'dhdn@gmail.com', NULL, '$2y$10$fH8YtEfC4ECcSY1pPlHQ2ux4jjUNWuDp/ffjIqFRWB/e2NtFMv.Cq', NULL, '2021-12-31 02:05:01', '2021-12-31 09:05:29', 3, NULL, 0, NULL, NULL, 'ĐH Đà Nẵng', '41 Lê Duẩn, Quận Hải Châu, Thành phố Đà Nẵng', '0935782471', NULL, '2021-12-31 16:05:29', 1, NULL, NULL),
(94, 'jesco', 'hr-admin@jescoasia.com', NULL, '$2y$10$aeKQIBKkZrMnclMjnpdPkOIf4IFTZuKYXz1VaHH7TY2QzKzzmpw92', NULL, '2022-01-11 00:12:04', '2022-01-21 00:16:49', 3, NULL, 0, NULL, NULL, 'Jesco Asia', '16 Lý Thường Kiêt, Phường Thạch Thang, Quận Hải Châu, Thành phố Đà Nẵng', '09363830979', NULL, '2022-01-11 14:12:24', 1, NULL, NULL),
(95, '21115053120101', '21115053120101@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 98, 0, NULL, NULL, 'Đặng Văn An', 'Thôn Liên Tài Năng, Xã Tùng Lộc, Huyện Can Lộc, Tỉnh Hà Tĩnh', '0965782351', 'Nam', '2022-01-12 09:28:21', 1, '2002-01-20', NULL),
(96, '21115053120102', '21115053120102@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 98, 0, NULL, NULL, 'Hoàng Kim Tuấn Anh', 'Đội 3, Thôn Mai Đàn, Xã hải Lâm, Huyện Hải Lăng, Tỉnh Quảng Trị', '0956782987', 'Nam', '2022-01-12 09:28:21', 1, '2003-02-20', NULL),
(97, '21115053120205', '21115053120205@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 99, 0, NULL, NULL, 'Lê Thị Diệp', 'Xã Tiên An, Huyện Tiên Phước, Tỉnh Quảng Nam', '0956782351', 'Nữ', '2022-01-12 09:40:13', 1, '2003-07-20', NULL),
(98, '21115053120207', '21115053120207@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 99, 0, NULL, NULL, 'Phạm Lê Đông', 'Khối 1, Thị trấn Núi Thành, Tỉnh Quảng Nam', '0978256123', 'Nam', '2022-01-12 09:40:13', 1, '2003-05-17', NULL),
(99, '21115051220108', '21115051220108@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 100, 0, NULL, NULL, 'Nguyễn Sỹ Đăng', 'Xã Diễn Tháp, Huyện Diễn Châu, Tỉnh Nghệ An', '0978235116', 'Nam', '2022-01-12 09:48:25', 1, '2003-10-19', NULL),
(100, '21115051220114', '21115051220114@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 100, 0, NULL, NULL, 'Nguyễn Gia Ngọc Đức', 'Xã Tân Liên, Huyện Hướng Hóa, Tỉnh Quảng Trị', '0965782999', 'Nam', '2022-01-12 09:48:25', 1, '2003-01-01', NULL),
(101, '21115072120102', '21115072120102@ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, '2022-01-12 02:23:20', 2, 102, 0, NULL, NULL, 'Trương Thị Hiền', 'Xã Duy Phú, Huyện Duy Xuyên, Tỉnh Quảng Nam', '0965782799', 'Nữ', '2022-01-12 10:20:45', 1, '2003-11-23', NULL),
(102, '1911504310101', '1911504310101@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 52, 1, NULL, 'Lớp trưởng 19N1', 'Nguyễn Hữu Cang', 'Xã Hải Lăng, Huyện Hướng Hóa, Tỉnh Quảng Trị', '0965098721', 'Nam', '2022-01-12 10:39:44', 1, '2001-10-19', NULL),
(103, '1911504310112', '1911504310112@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 52, 0, NULL, NULL, 'Lê Trung Hậu', 'Đà Nẵng', '0978267188', 'Nam', '2022-01-12 10:39:44', 1, '2001-03-02', NULL),
(104, '1911507110103', '1911507110103@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 85, 1, NULL, 'Lớp trưởng 19VL1', 'Đỗ Thị Ngọc Hằng', 'Tỉnh Đăk Lăk', '0978298761', 'Nữ', '2022-01-12 13:55:34', 1, '2001-09-24', NULL),
(105, '2050731200109', '2050731200109@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 93, 0, NULL, NULL, 'Hoàng Thị Cẩm Hằng', 'Thừa Thiên Huế', '', 'Nữ', '2022-01-12 14:14:17', 1, '2001-07-23', NULL),
(106, '1811505310243', '1811505310243@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 2, 1, NULL, 'Ủy viên Ban Chấp hành Hội sinh viên trường', 'Võ Thị Hoàng Thư', 'Huyện Đại Lộc, Tỉnh Quảng Nam', '0976892712', 'Nữ', '2022-01-12 14:19:51', 1, '2000-03-10', NULL),
(107, '1911505310118', '1911505310118@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 12, 1, NULL, 'Bí thư chi đoàn lớp 19T1', 'Cao Thị Thúy Hằng', 'Thành phố Buôn Ma Thuật, Đăk Lăk', '0975789261', 'Nữ', '2022-01-12 14:19:51', 1, '2001-02-09', NULL),
(108, '1811504110216', '1811504110216@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 33, 0, NULL, NULL, 'Nguyễn Hữu Hùng', 'Huyện Can Lộc, Tỉnh Hà Tĩnh', '0976892561', 'Nam', '2022-01-12 14:45:34', 1, '2000-07-04', NULL),
(109, '1911507310111', '1911507310111@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 91, 0, NULL, NULL, 'Trần Thị Hoa', 'Xã Văn Hóa, Huyện Tuyên Hóa, Tỉnh Quảng Bình', '0975892888', 'Nữ', '2022-01-12 14:45:34', 1, '2001-10-25', NULL),
(110, '1811504410165', '1811504410165@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 44, 0, NULL, NULL, 'Phạm Văn Việt', 'Thị xã Điện Bàn, Tỉnh Quảng Nam', '0976892671', 'Nam', '2022-01-12 15:39:24', 1, '2000-04-01', NULL),
(111, '1811505520232', '1811505520232@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 21, 0, NULL, NULL, 'Nguyễn Văn Xuân Mỹ', 'Xã Bình Lãnh, Huyện Thăng Bình, Tỉnh Quảng Nam', '0968928123', 'Nam', '2022-01-12 15:39:24', 1, '1999-08-04', NULL),
(112, '1811507310152', '1811507310152@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 89, 0, NULL, NULL, 'Nguyễn Ngọc Vương', 'Huyện Phù Cát, Tỉnh Bình Định', '0976892788', 'Nam', '2022-01-12 15:49:02', 1, '2000-01-08', NULL),
(114, '1811504210129', '1811504210129@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 38, 0, NULL, NULL, 'Phạm Duy Pháp', 'Xã Quế Phú, Huyện Quế Sơn, Tỉnh Quảng Nam', '0968987612', 'Nam', '2022-01-12 16:01:12', 1, '2000-07-01', NULL),
(115, '1811507210102', '1811507210102@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 77, 0, NULL, NULL, 'Đỗ Thị Thu Ánh', 'Tỉnh Quảng Bình', '0978982761', 'Nữ', '2022-01-12 16:01:12', 1, '2000-09-26', NULL),
(116, '1811504310150', '1811504310150@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 50, 0, NULL, NULL, 'Từ Hồng Văn', 'Huyện Sơn Tịnh, Tỉnh Quảng Ngãi', '0978928172', 'Nam', '2022-01-12 16:07:38', 1, '2000-12-16', NULL),
(117, '1811505310455', '1811505310455@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 4, 1, NULL, 'Lớp trưởng 18T1', 'Phan Diệu Mây', 'Thị xã Điện Bàn, Tỉnh Quảng Nam', '0987267891', 'Nữ', '2022-01-12 16:33:51', 1, '2000-10-16', NULL),
(118, '1811505120230', '1811505120230@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 5, 0, NULL, NULL, 'Lưu Hoài Nam', 'Huyện Thăng Bình, Tỉnh Quảng Nam', '0978908762', 'Nam', '2022-01-12 17:12:30', 1, '1994-12-27', NULL),
(119, '1811505520231', '1811505520231@sv.ute.udn.vn', NULL, '$2y$05$AjmpR6yFHIFsVL15gTjooeJRdbGY04e6pFBFAmBcMzoNhL3NM3LRq', NULL, NULL, NULL, 2, 21, 0, NULL, NULL, 'Trần Văn Mới', 'Phường Trường Xuân, Thành phố Tam Kỳ, Tỉnh Quảng Nam', '0978626152', 'Nam', '2022-01-13 04:26:59', 1, '2000-09-30', NULL),
(122, '1911505310999', '1911505310999@sv.ute.udn.vn', NULL, '$2a$12$1mKwH0uC/rkiFmG2WoT03eFp5hf1GB8a7uvryc39FAk90BkGc4IpC', NULL, '2022-01-19 10:18:00', '2022-01-19 10:18:00', 2, 12, NULL, NULL, NULL, 'Thúy Hằng', 'Huế', '0965072230', 'Nữ', NULL, 1, '2003-12-17', NULL),
(125, '500599', 'khue@ute.udn.vn', NULL, '$2y$10$x3NF.vSocOC1hmCkMG7X1udLK622J.dfSfx35GPZ0PEXZWoqeWs2y', NULL, '2022-01-20 05:06:27', '2022-01-19 22:18:33', 4, NULL, 0, NULL, NULL, 'Nguyễn Vũ Ngọc Khuê', 'Hội An, Quảng Nam', '0984072305', 'Nữ', '2022-01-20 12:06:27', 1, '1990-12-17', 2),
(126, 'ABPDN', 'abpdn@gmail.com', NULL, '$2y$10$b98v/dKoyDaI3CdItcO03.h3NOxGNG4gTYVbvPHESMwPO/xYbUCvi', NULL, '2022-01-21 01:03:36', '2022-01-21 01:03:36', 3, NULL, NULL, NULL, NULL, 'Hội ái hữu Blaise Pascal Đà Nẵng', 'Cộng hòa Pháp', '0987897223', NULL, NULL, 0, NULL, NULL),
(127, 'jfe', 'jssv.info@jssv.com.vn', NULL, '$2y$10$oYSEULpUrnFibkifr8BkCuTK/734lAXpvwaktE5JnLtl6HQ9x30I2', NULL, '2022-01-21 01:08:08', '2022-01-21 01:08:08', 3, NULL, NULL, NULL, NULL, 'Tập đoàn thép JFE Nhật Bản', 'Phường Long Bình, Thành phố Biên Hòa, Tỉnh Đồng Nai', '0946936461', NULL, NULL, 0, NULL, NULL),
(128, 'nganhangshb', 'shbdn@gmail.com', NULL, '$2y$10$8wqxLzkHBOUqEqsuaYLcsOM2z6kUfSyI2dNEVFB8QH47YE2jvednS', NULL, '2022-01-21 01:17:06', '2022-01-21 01:17:06', 3, NULL, NULL, NULL, NULL, 'Ngân hàng SHB Hải Châu', '240 Ông Ích Khiêm, Quận Thanh Khê, Thành phố Đà Nẵng', '0963575859', NULL, NULL, 0, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dangkyhocbong`
--
ALTER TABLE `dangkyhocbong`
  ADD PRIMARY KEY (`dangky_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `hocbong_id` (`hocbong_id`);

--
-- Chỉ mục cho bảng `diem`
--
ALTER TABLE `diem`
  ADD PRIMARY KEY (`diem_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `diemhoctap`
--
ALTER TABLE `diemhoctap`
  ADD PRIMARY KEY (`diemhoctap_id`);

--
-- Chỉ mục cho bảng `diemrenluyen`
--
ALTER TABLE `diemrenluyen`
  ADD PRIMARY KEY (`diemrenluyen_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `hinhthucduyet`
--
ALTER TABLE `hinhthucduyet`
  ADD PRIMARY KEY (`hinhthucduyet_id`);

--
-- Chỉ mục cho bảng `hocbong`
--
ALTER TABLE `hocbong`
  ADD PRIMARY KEY (`hocbong_id`),
  ADD KEY `loaihocbong_id` (`loaihocbong_id`),
  ADD KEY `hocky_id` (`hocky_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `hinhthucduyet_id` (`hinhthucduyet_id`);

--
-- Chỉ mục cho bảng `hocky`
--
ALTER TABLE `hocky`
  ADD PRIMARY KEY (`hocky_id`),
  ADD KEY `namhoc_id` (`namhoc_id`);

--
-- Chỉ mục cho bảng `hosodangky`
--
ALTER TABLE `hosodangky`
  ADD PRIMARY KEY (`hosodangky_id`),
  ADD KEY `dangky_id` (`dangky_id`),
  ADD KEY `tieuchi_id` (`tieuchi_id`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`khoa_id`);

--
-- Chỉ mục cho bảng `loaihocbong`
--
ALTER TABLE `loaihocbong`
  ADD PRIMARY KEY (`loaihocbong_id`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`lop_id`),
  ADD KEY `nganh_id` (`nganh_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `namhoc`
--
ALTER TABLE `namhoc`
  ADD PRIMARY KEY (`namhoc_id`);

--
-- Chỉ mục cho bảng `nganh`
--
ALTER TABLE `nganh`
  ADD PRIMARY KEY (`nganh_id`),
  ADD KEY `khoa_id` (`khoa_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `sinhviencanbo`
--
ALTER TABLE `sinhviencanbo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`slide_id`);

--
-- Chỉ mục cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`thongbao_id`),
  ADD UNIQUE KEY `thongbao_ten` (`thongbao_ten`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `tieuchi`
--
ALTER TABLE `tieuchi`
  ADD PRIMARY KEY (`tieuchi_id`);

--
-- Chỉ mục cho bảng `tieuchihocbong`
--
ALTER TABLE `tieuchihocbong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tieuchi_id` (`tieuchi_id`),
  ADD KEY `hocbong_id` (`hocbong_id`);

--
-- Chỉ mục cho bảng `truycap`
--
ALTER TABLE `truycap`
  ADD PRIMARY KEY (`truycap_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `lop_id` (`lop_id`),
  ADD KEY `khoa_id` (`khoa_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dangkyhocbong`
--
ALTER TABLE `dangkyhocbong`
  MODIFY `dangky_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT cho bảng `diem`
--
ALTER TABLE `diem`
  MODIFY `diem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT cho bảng `diemhoctap`
--
ALTER TABLE `diemhoctap`
  MODIFY `diemhoctap_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `diemrenluyen`
--
ALTER TABLE `diemrenluyen`
  MODIFY `diemrenluyen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hinhthucduyet`
--
ALTER TABLE `hinhthucduyet`
  MODIFY `hinhthucduyet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `hocbong`
--
ALTER TABLE `hocbong`
  MODIFY `hocbong_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `hocky`
--
ALTER TABLE `hocky`
  MODIFY `hocky_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `hosodangky`
--
ALTER TABLE `hosodangky`
  MODIFY `hosodangky_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=524;

--
-- AUTO_INCREMENT cho bảng `khoa`
--
ALTER TABLE `khoa`
  MODIFY `khoa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `loaihocbong`
--
ALTER TABLE `loaihocbong`
  MODIFY `loaihocbong_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `lop`
--
ALTER TABLE `lop`
  MODIFY `lop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `namhoc`
--
ALTER TABLE `namhoc`
  MODIFY `namhoc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nganh`
--
ALTER TABLE `nganh`
  MODIFY `nganh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sinhviencanbo`
--
ALTER TABLE `sinhviencanbo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `thongbao_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tieuchi`
--
ALTER TABLE `tieuchi`
  MODIFY `tieuchi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `tieuchihocbong`
--
ALTER TABLE `tieuchihocbong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `truycap`
--
ALTER TABLE `truycap`
  MODIFY `truycap_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dangkyhocbong`
--
ALTER TABLE `dangkyhocbong`
  ADD CONSTRAINT `dangkyhocbong_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `dangkyhocbong_ibfk_2` FOREIGN KEY (`hocbong_id`) REFERENCES `hocbong` (`hocbong_id`);

--
-- Các ràng buộc cho bảng `diem`
--
ALTER TABLE `diem`
  ADD CONSTRAINT `diem_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `hocbong`
--
ALTER TABLE `hocbong`
  ADD CONSTRAINT `hocbong_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `hocbong_ibfk_2` FOREIGN KEY (`hocky_id`) REFERENCES `hocky` (`hocky_id`),
  ADD CONSTRAINT `hocbong_ibfk_3` FOREIGN KEY (`loaihocbong_id`) REFERENCES `loaihocbong` (`loaihocbong_id`),
  ADD CONSTRAINT `hocbong_ibfk_4` FOREIGN KEY (`hinhthucduyet_id`) REFERENCES `hinhthucduyet` (`hinhthucduyet_id`);

--
-- Các ràng buộc cho bảng `hocky`
--
ALTER TABLE `hocky`
  ADD CONSTRAINT `hocky_ibfk_1` FOREIGN KEY (`namhoc_id`) REFERENCES `namhoc` (`namhoc_id`);

--
-- Các ràng buộc cho bảng `hosodangky`
--
ALTER TABLE `hosodangky`
  ADD CONSTRAINT `hosodangky_ibfk_1` FOREIGN KEY (`dangky_id`) REFERENCES `dangkyhocbong` (`dangky_id`),
  ADD CONSTRAINT `hosodangky_ibfk_2` FOREIGN KEY (`tieuchi_id`) REFERENCES `tieuchi` (`tieuchi_id`);

--
-- Các ràng buộc cho bảng `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `lop_ibfk_1` FOREIGN KEY (`nganh_id`) REFERENCES `nganh` (`nganh_id`);

--
-- Các ràng buộc cho bảng `nganh`
--
ALTER TABLE `nganh`
  ADD CONSTRAINT `nganh_ibfk_1` FOREIGN KEY (`khoa_id`) REFERENCES `khoa` (`khoa_id`);

--
-- Các ràng buộc cho bảng `sinhviencanbo`
--
ALTER TABLE `sinhviencanbo`
  ADD CONSTRAINT `sinhviencanbo_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD CONSTRAINT `thongbao_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `tieuchihocbong`
--
ALTER TABLE `tieuchihocbong`
  ADD CONSTRAINT `tieuchihocbong_ibfk_1` FOREIGN KEY (`tieuchi_id`) REFERENCES `tieuchi` (`tieuchi_id`),
  ADD CONSTRAINT `tieuchihocbong_ibfk_2` FOREIGN KEY (`hocbong_id`) REFERENCES `hocbong` (`hocbong_id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`lop_id`) REFERENCES `lop` (`lop_id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`khoa_id`) REFERENCES `khoa` (`khoa_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
