-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 27, 2024 lúc 05:41 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `9_project_k71`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_hoi`
--

CREATE TABLE `cau_hoi` (
  `ma_cau_hoi` int(11) NOT NULL,
  `ten_cau_hoi` varchar(2000) NOT NULL,
  `anh_cau_hoi` varchar(255) DEFAULT NULL,
  `dap_an` varchar(255) NOT NULL,
  `dap_an_dung` varchar(255) NOT NULL,
  `tac_gia` int(11) NOT NULL,
  `phan_loai` int(1) NOT NULL,
  `trang_thai` int(1) NOT NULL COMMENT '0-Chưa duyệt\r\n1-Đã duyệt',
  `ma_chuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cau_hoi`
--

INSERT INTO `cau_hoi` (`ma_cau_hoi`, `ten_cau_hoi`, `anh_cau_hoi`, `dap_an`, `dap_an_dung`, `tac_gia`, `phan_loai`, `trang_thai`, `ma_chuong`) VALUES
(15, 'Đoạn code sau thiếu gì ', '1(1).png', '', 'get', 2, 1, 1, 1),
(16, 'thẻ ul có mấy loại ?', '', '', '3', 2, 1, 1, 1),
(17, 'Thẻ ul có mấy loại ?', '', '1.2.3.4', '3', 2, 2, 1, 1),
(18, 'test ?', '', '1.2.3.4', '3', 2, 0, 1, 1),
(19, 'Các thuộc tính của thẻ input là :', '', 'type.name.readonly.value', 'type.name.readonly.value', 2, 0, 1, 1),
(20, 'admin', '', '', '1', 1, 1, 1, 1),
(22, '3', '', '33.3.3', '3', 2, 0, 1, 1),
(24, 'Các thuộc tính của thẻ input là :', '', '', '1', 1, 1, 1, 55),
(25, 'test', '', '', '1', 6, 1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuong`
--

CREATE TABLE `chuong` (
  `ma_chuong` int(11) NOT NULL,
  `ten_chuong` varchar(255) NOT NULL,
  `ma_mon` int(11) NOT NULL,
  `trang_thai` int(1) NOT NULL,
  `trang_thai_hoan_thanh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chuong`
--

INSERT INTO `chuong` (`ma_chuong`, `ten_chuong`, `ma_mon`, `trang_thai`, `trang_thai_hoan_thanh`) VALUES
(1, 'Chương 1: Giới thiệu chung', 1, 0, ',1'),
(2, 'Chương 2: PHP cơ bản', 1, 0, ',1'),
(3, 'Chương 3: Hàm và thao tác với file trong PHP', 1, 0, ',1'),
(4, 'Chương 4: Lập trình hướng đối tượng trong PHP', 1, 0, ',1'),
(40, 'Chương 1: Giới thiệu chung', 2, 0, NULL),
(41, 'Chương 2: ', 2, 0, NULL),
(42, 'Chương 1: Giới thiệu chung', 3, 0, NULL),
(44, 'Chương 1: Giới thiệu chung', 30, 0, NULL),
(51, 'hạ ngu', 36, 0, NULL),
(52, 'Thi giữa kì', 1, 0, NULL),
(53, 'Chương 1 : Kết nối Router', 4, 0, NULL),
(55, 'Chương 1 : Test', 54, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `duyet_clb`
--

CREATE TABLE `duyet_clb` (
  `ma_duyet` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `ma_khoa_hien_tai` varchar(255) NOT NULL,
  `ma_khoa_them` varchar(255) NOT NULL,
  `trang_thai` int(1) NOT NULL COMMENT '0-chưa duyệt\r\n1- đã duyệt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `duyet_clb`
--

INSERT INTO `duyet_clb` (`ma_duyet`, `id_user`, `ma_khoa_hien_tai`, `ma_khoa_them`, `trang_thai`) VALUES
(1, 2, '1,2', '2', 1),
(2, 2, '1,3', '3', 1),
(3, 2, '1,4', '4', 1),
(4, 2, '1,4,10', '10', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoc_lieu`
--

CREATE TABLE `hoc_lieu` (
  `ma_hoc_lieu` int(11) NOT NULL,
  `ten_hoc_lieu` varchar(255) NOT NULL,
  `phan_loai` int(1) NOT NULL COMMENT '1- quizz\r\n0-học liệu',
  `trang_thai` int(1) NOT NULL COMMENT '0-Chưa duyệt\r\n1-Đã duyệt',
  `ma_chuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoc_lieu`
--

INSERT INTO `hoc_lieu` (`ma_hoc_lieu`, `ten_hoc_lieu`, `phan_loai`, `trang_thai`, `ma_chuong`) VALUES
(1, '     Ngôn ngữ PHP', 0, 0, 1),
(5, '      Bài giảng về biểu thức và toán tử', 0, 0, 1),
(6, 'TKB MÔN CHUNG KÌ 2 NĂM HỌC 23-24.pdf', 0, 0, 2),
(7, 'TKB MÔN CHUNG KÌ 2 NĂM HỌC 23-24.pdf', 0, 0, 4),
(8, '      Bài giảng về mảng và chuỗi', 0, 0, 1),
(9, '     Ôn tập chương 1 ', 0, 0, 1),
(10, 'cac-dang-bai-tap-tich-phan-toan-12-knttvcs.pdf', 0, 1, 55);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `ma_khoa` int(11) NOT NULL,
  `ten_khoa` varchar(255) NOT NULL,
  `trang_thai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`ma_khoa`, `ten_khoa`, `trang_thai`) VALUES
(1, 'Công Nghệ Thông Tin', 0),
(2, 'Toán', 1),
(3, 'Vật Lý', 0),
(4, 'Hóa Học', 0),
(8, 'Giáo Dục Mầm Non', 0),
(9, 'Tâm Lý Học', 0),
(10, 'Sinh Học', 0),
(63, '1', 0),
(67, '2', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lich_su`
--

CREATE TABLE `lich_su` (
  `id_lich_su` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `diem` double NOT NULL DEFAULT current_timestamp(),
  `time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_luyen_tap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lich_su`
--

INSERT INTO `lich_su` (`id_lich_su`, `id_user`, `diem`, `time`, `id_luyen_tap`) VALUES
(1, 2, 10, '2024-01-13 00:27:13', 1),
(2, 2, 10, '2024-01-13 00:50:08', 1),
(3, 2, 1, '2024-01-13 00:54:32', 1),
(4, 2, 2, '2024-01-13 00:54:55', 1),
(5, 1, 9, '2024-01-13 23:49:33', 1),
(6, 1, 0, '2024-01-13 23:50:01', 1),
(7, 2, 9, '2024-01-14 00:43:34', 1),
(8, 2, 8, '2024-01-14 00:44:15', 1),
(9, 2, 10, '2024-01-14 00:48:11', 1),
(10, 6, 0, '2024-10-09 23:07:25', 1),
(11, 1, 0, '2024-11-07 02:01:50', 1),
(12, 1, 0, '2024-12-13 02:07:06', 1),
(13, 6, 0, '2024-12-13 03:00:36', 1),
(14, 6, 0, '2024-12-13 03:05:53', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luyentap`
--

CREATE TABLE `luyentap` (
  `id_luyen_tap` int(11) NOT NULL,
  `tieu_de` varchar(255) NOT NULL,
  `thoi_gian` int(11) NOT NULL,
  `ma_chuong` int(11) NOT NULL,
  `so_cau` int(50) NOT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `luyentap`
--

INSERT INTO `luyentap` (`id_luyen_tap`, `tieu_de`, `thoi_gian`, `ma_chuong`, `so_cau`, `trang_thai`) VALUES
(1, 'Bài kiểm tra 1 ', 1, 1, 10, 0),
(2, 'Bài kiểm tra 2 ', 10, 2, 10, 0),
(3, 'Bài kiểm tra 3', 10, 51, 10, 0),
(4, 'Bài kiểm tra 4', 10, 4, 10, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luyen_qiuz`
--

CREATE TABLE `luyen_qiuz` (
  `id_luyen_tap_chi_tiet` int(11) NOT NULL,
  `id_luyen_tap` int(11) NOT NULL,
  `id_qiuz` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `luyen_qiuz`
--

INSERT INTO `luyen_qiuz` (`id_luyen_tap_chi_tiet`, `id_luyen_tap`, `id_qiuz`) VALUES
(163, 1, 10),
(164, 1, 11),
(165, 1, 5),
(166, 1, 2),
(167, 1, 43),
(168, 1, 4),
(169, 1, 6),
(170, 1, 12),
(171, 1, 1),
(172, 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mon_hoc`
--

CREATE TABLE `mon_hoc` (
  `ma_mon` int(11) NOT NULL,
  `ten_mon` varchar(255) NOT NULL,
  `ma_khoa` int(11) NOT NULL,
  `trang_thai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mon_hoc`
--

INSERT INTO `mon_hoc` (`ma_mon`, `ten_mon`, `ma_khoa`, `trang_thai`) VALUES
(1, 'Công Nghệ Web', 1, 0),
(2, 'Nền Tảng Phát Triển Web', 1, 0),
(3, 'Nhập Môn KHMT', 1, 1),
(4, 'Quản Trị Mạng', 1, 0),
(10, 'Vật lý đại cương', 3, 0),
(29, 'Toán Cao Cấp', 2, 0),
(30, 'Hóa Học Đại Cương', 4, 0),
(34, 'Giáo Dục Trẻ 0-2 Tuổi', 8, 0),
(35, 'Tâm Lý Học Con Người', 9, 0),
(36, 'Thế Giới Thực Vật', 10, 0),
(54, 'test', 63, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qiuz`
--

CREATE TABLE `qiuz` (
  `id_qiuz` int(11) NOT NULL,
  `cau_hoi` varchar(255) NOT NULL,
  `cau_tra_loi` varchar(255) NOT NULL,
  `ma_chuong` int(11) NOT NULL,
  `phan_loai` int(11) NOT NULL,
  `cau_tra_loi_true` varchar(100) NOT NULL,
  `anh_cau_hoi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `qiuz`
--

INSERT INTO `qiuz` (`id_qiuz`, `cau_hoi`, `cau_tra_loi`, `ma_chuong`, `phan_loai`, `cau_tra_loi_true`, `anh_cau_hoi`) VALUES
(1, 'Thẻ ul có mấy loại', '1.2.3.4.5 ', 1, 1, '3', ''),
(2, 'có mấy loại hàm sắp xếp mảng trong C++', '1.2.3.4', 1, 1, '3', ''),
(3, 'Đây là danh sách dạng gì ', 'Có thứ tự.Không thứ tự.Tăng dần.Giảm dần', 1, 1, 'Có thứ tự', '2.jpg'),
(4, 'cout << \"1,2,3,4,5\" đoạn code này in ra mấy giá trị ', '1.2.3.4.5.6', 1, 1, '5', ''),
(5, 'Có mấy loại mảng ', '1.2.3.4.5.6', 1, 1, '3', ''),
(6, 'Kết quả của đoạn code sau là gì', '', 1, 2, '24 24 42', '3.jpg'),
(7, 'Đâu là phần tử HTML tạo ra một danh sách đầu mục bởi dấu chấm?', '<list> .<ul>.<dl>.<ol>', 1, 1, '<ul>', ''),
(8, 'Câu hỏi: Trong HTML, đặt một phần tử để hiển thị một khối văn bản có thể cuộn được, thẻ nào được sử dụng', '<scroll>.<overflow>.<scrollable>.<div>', 1, 2, '<div>', ''),
(9, 'Điền từ đúng: thuộc tính Float được sử dụng để chuyển ______  và định dạng nội dung một phần tử, ví dụ, chuyển một ______ sang góc trái hoặc phải so với chữ trong không gian bao quanh nó', '', 1, 2, 'Vị trí,Hình ảnh', ''),
(10, 'có mấy loại hàm', '1.2.3.4.5.6', 1, 1, '3', ''),
(11, 'phương thức gửi dữ liệu lên sever là phương thức nào', 'post.get.method.form', 1, 1, 'post', ''),
(12, 'Các thuộc tính của thẻ input là:', 'type.name.readonly.value.placeholder', 1, 0, 'type.name.readonly.value', ''),
(13, 'Có mấy loại danh sách được sử dụng phổ biến  trong html ', '1.2.3.4.5.6', 1, 1, '3', ''),
(15, 'Selector gồm', 'Selector độc lập.Selector quan hệ.Selector đa hệ.Selector một hệ', 1, 0, 'Selector độc lập.Selector quan hệ', ''),
(16, 'Đoạn code sau thiếu gì ?', '', 1, 2, 'get', '1.png'),
(42, 'Thẻ ul có mấy loại', '1.2.3.4.5', 1, 2, '3', '3.jpg'),
(43, 'Thẻ ul có mấy loại', '1.2.3.4.5', 1, 2, '3', '3.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `msv` varchar(11) NOT NULL,
  `ten_sv` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ma_khoa` varchar(255) NOT NULL,
  `gioi_tinh` int(1) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `role` int(1) NOT NULL COMMENT '0-Admin\r\n1-User',
  `image` varchar(255) DEFAULT NULL,
  `resettoken` varchar(50) NOT NULL,
  `resettokenexp` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `msv`, `ten_sv`, `email`, `ma_khoa`, `gioi_tinh`, `mat_khau`, `role`, `image`, `resettoken`, `resettokenexp`) VALUES
(1, 'admin', 'Admin', 'parkchoahyun@gmail.com', '1', 0, 'c4ca4238a0b923820dcc509a6f75849b', 0, NULL, '', '0000-00-00'),
(2, '1', 'Hải', 'svegeto18@gmail.com', '1,4,8,10,8', 0, 'c81e728d9d4c2f636f067f89cc14862c', 1, NULL, '5267da494578e42d0132b5f59ec99259', '2024-01-06'),
(4, '11', 'Thùy Dương', 'parkchoahuyn@gmail.com', '1', 0, 'a87ff679a2f3e71d9181a67b7542122c', 1, NULL, '5008e70457b56852c52f7f5a33e15cf0', '2024-01-06'),
(5, '14141', 'Hồng Hải', 'haihung171@gmail.com', '1', 0, 'c4ca4238a0b923820dcc509a6f75849b', 1, NULL, 'b8fa9b6f7dad7ecb25aaec41d75349cd', '2024-01-05'),
(6, '111', 'Hải Nguyễn', '1@gmail.com', '1', 0, 'c4ca4238a0b923820dcc509a6f75849b', 1, NULL, '', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_answers`
--

CREATE TABLE `user_answers` (
  `id_user_answer` int(11) NOT NULL,
  `id_luyen_tap` int(11) NOT NULL,
  `id_qiuz` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `cau_tra_loi` text NOT NULL,
  `so_lan_tra_loi_sai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_answers`
--

INSERT INTO `user_answers` (`id_user_answer`, `id_luyen_tap`, `id_qiuz`, `id_user`, `cau_tra_loi`, `so_lan_tra_loi_sai`) VALUES
(1, 1, 1, 2, '[\"3\"]', 0),
(2, 1, 16, 2, '[\"get\"]', 0),
(3, 1, 6, 2, '[\"24 24 42\"]', 0),
(4, 1, 2, 2, '[\"3\"]', 0),
(5, 1, 3, 2, '[\"Có thứ tự\"]', 0),
(6, 1, 13, 2, '[\"3\"]', 0),
(7, 1, 4, 2, '[\"5\"]', 0),
(8, 1, 5, 2, '[\"3\"]', 0),
(9, 1, 9, 2, '[\"Vị trí,Hình ảnh\"]', 0),
(10, 1, 7, 2, '[\"<ul>\"]', 0),
(11, 1, 1, 2, '[\"3\"]', 0),
(12, 1, 16, 2, '[\"get\"]', 0),
(13, 1, 6, 2, '[\"24 24 42\"]', 0),
(14, 1, 2, 2, '[\"3\"]', 0),
(15, 1, 3, 2, '[\"Có thứ tự\"]', 0),
(16, 1, 13, 2, '[\"3\"]', 0),
(17, 1, 4, 2, '[\"5\"]', 0),
(18, 1, 5, 2, '[\"3\"]', 0),
(19, 1, 9, 2, '[\"Vị trí,Hình ảnh\"]', 0),
(20, 1, 7, 2, '[\"<ul>\"]', 0),
(21, 1, 6, 2, '[\"1\"]', 1),
(22, 1, 11, 2, '[\"post\"]', 0),
(23, 1, 7, 2, '[\"<list> \"]', 1),
(24, 1, 8, 2, '[\"1\"]', 1),
(25, 1, 10, 2, '[\"1\"]', 1),
(26, 1, 9, 2, '[\"1\"]', 1),
(27, 1, 12, 2, '[\"type\"]', 0),
(28, 1, 15, 2, '[\"Selector độc lập\"]', 0),
(29, 1, 5, 2, '[\"1\"]', 1),
(30, 1, 1, 2, '[\"1\"]', 1),
(31, 1, 3, 2, '[\"Có thứ tự\"]', 0),
(32, 1, 4, 2, '[\"1\"]', 1),
(33, 1, 10, 2, '[\"1\"]', 1),
(34, 1, 7, 2, '[\"<list> \"]', 1),
(35, 1, 12, 2, '[\"type\"]', 0),
(36, 1, 11, 2, '[\"post\"]', 0),
(37, 1, 16, 2, '[\"1\"]', 1),
(38, 1, 15, 2, '[\"Selector độc lập\"]', 0),
(39, 1, 1, 2, '[\"1\"]', 1),
(40, 1, 6, 2, '[\"1\"]', 1),
(41, 1, 6, 1, '[\"24 24 42\"]', 0),
(42, 1, 11, 1, '[\"post\"]', 0),
(43, 1, 3, 1, '[\"Có thứ tự\"]', 0),
(44, 1, 8, 1, '[\"<div>\"]', 0),
(45, 1, 1, 1, '[\"3\"]', 0),
(46, 1, 10, 1, '[\"3\"]', 0),
(47, 1, 4, 1, '[\"5\"]', 0),
(48, 1, 15, 1, '[\"Selector độc lập\",\"Selector quan hệ\",\"Selector đa hệ\"]', 1),
(49, 1, 13, 1, '[\"3\"]', 0),
(50, 1, 2, 1, '[\"3\"]', 0),
(51, 1, 8, 1, '[\"1\"]', 1),
(52, 1, 10, 1, '[\"1\"]', 1),
(53, 1, 13, 1, '[\"1\"]', 1),
(54, 1, 2, 1, '[\"1\"]', 1),
(55, 1, 9, 1, '[\"vị trí, hình ảnh\"]', 1),
(56, 1, 6, 1, '[\"1\"]', 1),
(57, 1, 12, 1, '[\"type\"]', 0),
(58, 1, 16, 1, '[\"1\"]', 1),
(59, 1, 15, 1, '[\"Selector độc lập\"]', 0),
(60, 1, 4, 1, '[\"1\"]', 1),
(61, 1, 13, 2, '[\"3\"]', 0),
(62, 1, 7, 2, '[\"<ul>\"]', 0),
(63, 1, 12, 2, '[\"type\",\"name\",\"readonly\",\"value\"]', 0),
(64, 1, 8, 2, '[\"<div>\"]', 0),
(65, 1, 4, 2, '[\"5\"]', 0),
(66, 1, 11, 2, '[\"post\"]', 0),
(67, 1, 10, 2, '[\"3\"]', 0),
(68, 1, 6, 2, '[\"24 24 42\"]', 0),
(69, 1, 15, 2, '[\"Selector độc lập\",\"Selector quan hệ\",\"Selector đa hệ\"]', 1),
(70, 1, 3, 2, '[\"Có thứ tự\"]', 0),
(71, 1, 1, 2, '[\"3\"]', 0),
(72, 1, 4, 2, '[\"5\"]', 0),
(73, 1, 15, 2, '[\"Selector độc lập\",\"Selector quan hệ\",\"Selector đa hệ\"]', 1),
(74, 1, 8, 2, '[\"<div>\"]', 0),
(75, 1, 13, 2, '[\"3\"]', 0),
(76, 1, 11, 2, '[\"post\"]', 0),
(77, 1, 7, 2, '[\"<list> \"]', 1),
(78, 1, 3, 2, '[\"Có thứ tự\"]', 0),
(79, 1, 12, 2, '[\"type\",\"name\",\"readonly\",\"value\"]', 0),
(80, 1, 16, 2, '[\"get\"]', 0),
(81, 1, 2, 2, '[\"3\"]', 0),
(82, 1, 5, 2, '[\"3\"]', 0),
(83, 1, 1, 2, '[\"3\"]', 0),
(84, 1, 4, 2, '[\"5\"]', 0),
(85, 1, 13, 2, '[\"3\"]', 0),
(86, 1, 8, 2, '[\"<div>\"]', 0),
(87, 1, 12, 2, '[\"type\",\"name\",\"readonly\",\"value\"]', 0),
(88, 1, 10, 2, '[\"3\"]', 0),
(89, 1, 3, 2, '[\"Có thứ tự\"]', 0),
(90, 1, 6, 2, '[\"24 24 42\"]', 0),
(91, 1, 8, 6, '[\"\"]', 1),
(92, 1, 16, 6, '[\"\"]', 1),
(93, 1, 9, 6, '[\"\"]', 1),
(94, 1, 8, 1, '[\"\"]', 1),
(95, 1, 9, 1, '[\"\"]', 1),
(96, 1, 6, 1, '[\"\"]', 1),
(97, 1, 6, 6, '[\"\"]', 1),
(98, 1, 9, 6, '[\"\"]', 1),
(99, 1, 42, 6, '[\"\"]', 1),
(100, 1, 16, 6, '[\"\"]', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cau_hoi`
--
ALTER TABLE `cau_hoi`
  ADD PRIMARY KEY (`ma_cau_hoi`),
  ADD KEY `tac_gia` (`tac_gia`),
  ADD KEY `cau_hoi_ibfk_1` (`ma_chuong`);

--
-- Chỉ mục cho bảng `chuong`
--
ALTER TABLE `chuong`
  ADD PRIMARY KEY (`ma_chuong`),
  ADD KEY `ma_mon` (`ma_mon`);

--
-- Chỉ mục cho bảng `duyet_clb`
--
ALTER TABLE `duyet_clb`
  ADD PRIMARY KEY (`ma_duyet`),
  ADD KEY `msv` (`id_user`);

--
-- Chỉ mục cho bảng `hoc_lieu`
--
ALTER TABLE `hoc_lieu`
  ADD PRIMARY KEY (`ma_hoc_lieu`),
  ADD KEY `ma_chuong` (`ma_chuong`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`ma_khoa`);

--
-- Chỉ mục cho bảng `lich_su`
--
ALTER TABLE `lich_su`
  ADD PRIMARY KEY (`id_lich_su`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_luyen_tap` (`id_luyen_tap`);

--
-- Chỉ mục cho bảng `luyentap`
--
ALTER TABLE `luyentap`
  ADD PRIMARY KEY (`id_luyen_tap`),
  ADD KEY `ma_chuong` (`ma_chuong`);

--
-- Chỉ mục cho bảng `luyen_qiuz`
--
ALTER TABLE `luyen_qiuz`
  ADD PRIMARY KEY (`id_luyen_tap_chi_tiet`),
  ADD KEY `id_luyen_tap` (`id_luyen_tap`),
  ADD KEY `id_qiuz` (`id_qiuz`);

--
-- Chỉ mục cho bảng `mon_hoc`
--
ALTER TABLE `mon_hoc`
  ADD PRIMARY KEY (`ma_mon`),
  ADD KEY `ma_khoa` (`ma_khoa`);

--
-- Chỉ mục cho bảng `qiuz`
--
ALTER TABLE `qiuz`
  ADD PRIMARY KEY (`id_qiuz`),
  ADD KEY `FR_qiuz` (`ma_chuong`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_khoa` (`ma_khoa`);

--
-- Chỉ mục cho bảng `user_answers`
--
ALTER TABLE `user_answers`
  ADD PRIMARY KEY (`id_user_answer`),
  ADD KEY `id_luyen_tap` (`id_luyen_tap`),
  ADD KEY `id_qiuz` (`id_qiuz`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cau_hoi`
--
ALTER TABLE `cau_hoi`
  MODIFY `ma_cau_hoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `chuong`
--
ALTER TABLE `chuong`
  MODIFY `ma_chuong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `duyet_clb`
--
ALTER TABLE `duyet_clb`
  MODIFY `ma_duyet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `hoc_lieu`
--
ALTER TABLE `hoc_lieu`
  MODIFY `ma_hoc_lieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `khoa`
--
ALTER TABLE `khoa`
  MODIFY `ma_khoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `lich_su`
--
ALTER TABLE `lich_su`
  MODIFY `id_lich_su` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `luyentap`
--
ALTER TABLE `luyentap`
  MODIFY `id_luyen_tap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `luyen_qiuz`
--
ALTER TABLE `luyen_qiuz`
  MODIFY `id_luyen_tap_chi_tiet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT cho bảng `mon_hoc`
--
ALTER TABLE `mon_hoc`
  MODIFY `ma_mon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `qiuz`
--
ALTER TABLE `qiuz`
  MODIFY `id_qiuz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `user_answers`
--
ALTER TABLE `user_answers`
  MODIFY `id_user_answer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cau_hoi`
--
ALTER TABLE `cau_hoi`
  ADD CONSTRAINT `cau_hoi_ibfk_1` FOREIGN KEY (`ma_chuong`) REFERENCES `chuong` (`ma_chuong`),
  ADD CONSTRAINT `cau_hoi_ibfk_2` FOREIGN KEY (`tac_gia`) REFERENCES `user` (`id_user`);

--
-- Các ràng buộc cho bảng `chuong`
--
ALTER TABLE `chuong`
  ADD CONSTRAINT `chuong_ibfk_1` FOREIGN KEY (`ma_mon`) REFERENCES `mon_hoc` (`ma_mon`);

--
-- Các ràng buộc cho bảng `duyet_clb`
--
ALTER TABLE `duyet_clb`
  ADD CONSTRAINT `duyet_clb_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Các ràng buộc cho bảng `hoc_lieu`
--
ALTER TABLE `hoc_lieu`
  ADD CONSTRAINT `hoc_lieu_ibfk_1` FOREIGN KEY (`ma_chuong`) REFERENCES `chuong` (`ma_chuong`);

--
-- Các ràng buộc cho bảng `lich_su`
--
ALTER TABLE `lich_su`
  ADD CONSTRAINT `lich_su_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `lich_su_ibfk_3` FOREIGN KEY (`id_luyen_tap`) REFERENCES `luyentap` (`id_luyen_tap`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `luyentap`
--
ALTER TABLE `luyentap`
  ADD CONSTRAINT `luyentap_ibfk_1` FOREIGN KEY (`ma_chuong`) REFERENCES `chuong` (`ma_chuong`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `luyen_qiuz`
--
ALTER TABLE `luyen_qiuz`
  ADD CONSTRAINT `luyen_qiuz_ibfk_1` FOREIGN KEY (`id_luyen_tap`) REFERENCES `luyentap` (`id_luyen_tap`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `luyen_qiuz_ibfk_2` FOREIGN KEY (`id_qiuz`) REFERENCES `qiuz` (`id_qiuz`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `mon_hoc`
--
ALTER TABLE `mon_hoc`
  ADD CONSTRAINT `mon_hoc_ibfk_1` FOREIGN KEY (`ma_khoa`) REFERENCES `khoa` (`ma_khoa`);

--
-- Các ràng buộc cho bảng `qiuz`
--
ALTER TABLE `qiuz`
  ADD CONSTRAINT `qiuz_ibfk_1` FOREIGN KEY (`ma_chuong`) REFERENCES `chuong` (`ma_chuong`);

--
-- Các ràng buộc cho bảng `user_answers`
--
ALTER TABLE `user_answers`
  ADD CONSTRAINT `user_answers_ibfk_1` FOREIGN KEY (`id_luyen_tap`) REFERENCES `luyentap` (`id_luyen_tap`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `user_answers_ibfk_2` FOREIGN KEY (`id_qiuz`) REFERENCES `qiuz` (`id_qiuz`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `user_answers_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
