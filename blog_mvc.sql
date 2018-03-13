-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th3 12, 2018 lúc 04:37 PM
-- Phiên bản máy phục vụ: 10.0.34-MariaDB-0ubuntu0.16.04.1
-- Phiên bản PHP: 7.2.3-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blog_mvc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `status`) VALUES
(2, 'Công Nghệ', 1),
(3, 'Bóng Đá', 1),
(4, 'Tản Mạn', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`comment_id`, `email`, `content`, `post_id`, `datetime`) VALUES
(1, 'sanggait1996@gmail.com', 'bai viet qua do', 1, '2018-03-12 02:33:45'),
(2, 'sanggait1996@gmail.com', 'bai viet qua do', 1, '2018-03-12 02:35:06'),
(3, 'sanggait1996@gmail.com', 'binh thuong thoi', 1, '2018-03-12 02:36:04'),
(4, 'sangoscar2606@yahoo.com', 'shfodhfdshfdshfdsf\r\n', 1, '2018-03-12 02:43:01'),
(5, 'sangoscar2606@yahoo.com', 'ggggggggggggggggggggggggg\r\n', 1, '2018-03-12 02:44:51'),
(6, 'sang1996@gmail.com', 'cccccccccccccccccc\r\n', 2, '2018-03-12 02:49:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email`, `phone_number`, `message`) VALUES
(1, 'sang', 'sang@gmail.com', '0123456789', 'làm sao để trở thành một lâp trình viên chuyên nghiệp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `images` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `content`, `datetime`, `status`, `user_id`, `category_id`, `images`) VALUES
(1, 'Bộ tranh vẽ đội tuyển U23 Việt Nam bằng bút chì gây sốt', 'Một họa sĩ trẻ ở Đà Nẵng vừa vẽ lại toàn bộ chân dung của đội tuyển U-23 Việt Nam trong bộ tranh có tên "Cảm xúc U23 Việt Nam".', '"Cảm xúc U23 Việt Nam” là cái tên mà tác giả của bộ tranh - anh Phạm Bảo Hòa (quê ở Quảng Bình, hiện làm thiết kế cho một công ty tại Đà Nẵng) đặt cho album anh vẽ chân dung về các cầu thủ U23 Việt Nam.\r\n\r\nBảo Hòa cho biết anh là người đam mê thể thao, đặc biệt là bóng đá nên luôn cổ vũ hết mình cho đội tuyển Việt nam. Với thành tích vừa qua của U23 Việt Nam, anh quyết tâm vẽ chân dung các cầu thủ và HLV như một lời tri ân với tinh thần của cả đội.\r\n\r\nNhững nét vẽ đầu tiên mà anh Bảo Hòa là vẽ chân dung của HLV Park Hang-seo ngay sau vòng bảng, khi U23 xuất sắc thắng Iraq, giành tấm vé vào bán kết. Bảo Hòa nói thêm rằng anh yêu thích cả đội bóng vì bóng đá là môn thể thao của cả tập thể nhưng hai cầu thủ anh ấn tượng nhất là Quang Hải và thủ môn Bùi Tiến Dũng. Sau bức tranh về HLV Park, anh đã vẽ tiếp chân dung của hai cầu thủ này.\r\n\r\n“Càng vào trong thấy cả đội đá càng hay, quá cảm xúc nên tôi quyết định vẽ nguyên cả đội. Xưa tới giờ tôi chưa xem trận banh nào kịch tính và cảm xúc thế, trận đá với Iraq đó” - anh Hòa chia sẻ.\r\n\r\nRồi cứ thế anh vẽ hết người này đến người khác. Mỗi bức tranh, anh Hòa mất khoảng 1-2 giờ đồng hồ, có hôm vẽ đến khuya vì đi làm về muộn. Cảm hứng để anh vẽ những bức chân dung sống động là anh vừa xem trận đấu đang diễn ra vừa vẽ để thể hiện được thần thái của mỗi cầu thủ.\r\n\r\nTác giả bộ tranh tiết lộ vì thời gian gấp nên anh mới vẽ được toàn bộ cầu thủ thi đấu chính thức của U23 Việt Nam và một số cầu thủ dự bị. Anh Hòa cho hay các cầu thủ còn lại của đội U23 Việt Nam như Trọng Đại, Thái Quý, Châu Ngọc Quang và Đặng Ngọc Tuấn anh đang lên kế hoạch vẽ trong thời gian tới...\r\n\r\nDưới đây là chân dung bằng chì các cầu thủ U23 Việt Nam qua nét vẽ của anh Phạm Bảo Hòa:', '2018-01-31 15:42:02', 1, 7, 3, NULL),
(2, 'Tottenham - Rochdale: Hat-trick 12 phút, siêu đại tiệc 7 bàn', '(Video bóng đá, kết quả bóng đá, Tottenham - Rochdale, đá lại vòng 5 FA Cup) Giống với trận "lượt đi", cuộc tái đấu giữa hai đội tại Wembley khiến người hâm mộ ngây ngất với quá nhiều bàn thắng.\r\n\r\n', 'Harry Kane và Dele Alli được nghỉ ngơi chờ trận đấu cuối tuần gặp Huddersfield tại Premier League. Thế nhưng những cầu thủ thay thế đã làm quá tốt nhiệm vụ. Llorente đã chứng minh giá trị khi vẫn là "trọng pháo" trước khung thành đối phương.\r\n\r\nRochdale tiếp tục gây bất ngờ khi chơi giằng co trong hiệp 1, Son Heung-Min mở tỷ số phút 23 nhưng đến phút 31 đội khách đã kịp gỡ hòa. Tuy nhiên bước sang hiệp 2, thế trận hoàn toàn khác biệt bởi phong độ chói sáng của Llorente. Chỉ trong vòng 12 phút, tiền đạo người Tây Ban Nha đã lập cú hat-trick nâng tỷ số lên 4-1.\r\n\r\nSau đó, Rochdale thực sự vỡ trận. Họ để Tottenham thoải mái bắn phá. Son Heung-Min có thêm một bàn thắng trước khi cầu thủ trẻ vào sân thay người Kyle Walker-Peters ấn định thắng lợi 6-1 ở phút bù giờ thứ 3.\r\n\r\nVới kết quả này, Tottenham đã giành vé vào tứ kết FA Cup, đối đầu Swansea trên sân khách ngày 17/03 tới đây.\r\n\r\nChung cuộc: Tottenham 6-1 Rochdale (H1: 1-1)\r\n\r\nGhi bàn:\r\n\r\nTottenham: Son Heung-Min (23\', 65\'), Llorente (47\', 53\', 59\'), Walker-Peters (90\'+3\')\r\n\r\nRochdale: Humphrys (31\')\r\n\r\nĐội hình ra sân\r\n\r\nTottenham: Vorm, Foyth, Trippier, Rose, Dier, Winks, Sissoko, Lamela, Son Heung-Min, Moura, Llorente\r\n\r\nRochdale: Lillis, McNulty, Delaney, McGahey, Done, Rafferty, Camps, Kitchung, Cannon, Henderson, Humphrys', '2018-03-01 02:10:35', 1, 7, 3, 'bongda.jpg'),
(3, 'Arsenal - Man City: Phạt đền hỏng ăn, ác mộng kinh hoàng', '(Video bóng đá, kết quả bóng đá Arsenal - Man City, vòng 28 Ngoại hạng Anh) Quả phạt đền hỏng ăn đã nhấn chìm cả đội vào cơn ác mộng.\r\n            \r\n            ', 'Arsenal nhập cuộc tưng bừng khí thế. Với bộ tứ tấn công, "Pháo thủ" liên tục bắn phá khung thành Ederson. Thế nhưng Man City mới là đội có niềm vui mở điểm. Từ một pha tăng tốc của Sane, Bernando nhận bóng rồi xử lý quá khéo léo hạ gục Cech.\r\n\r\nNhận bàn thua sớm, Arsenal say đòn và tiếp tục đẩy cao đội hình. Man City đặc biệt ưa thích thế trận này và liên tiếp tung đòn trừng phạt. Từ phút 28 đến 33, lần lượt David Silva rồi Sane đều nổ súng với những cú đá cận thành khá dễ dàng.\r\n\r\nBước sang hiệp 2, Arsenal cố gắng duy trì sức ép. Những nỗ lực của đội chủ nhà đã được đền đáp với quả phạt đền phút 53. Thế nhưng Aubameyang đã quá căng thẳng, để Ederson đoán được ý đồ sút và cản phá thành công.\r\n\r\nSau tình huống đó, tinh thần của Arsenal xuống dốc. Họ thi đấu vật vờ đến hết trận. Man City cũng không muốn "xuống tay" nên tỷ số 3-0 được giữ nguyên. Với chiến thắng này, thầy trò Guardiola có 75 điểm sau 28 trận, Arsenal đã kém tốp 4 đến 10 điểm.', '2018-03-01 21:13:39', 1, 7, 3, 'man-cty.jpg'),
(4, 'a', 'b\r\n            \r\n            ', 'adbc', '2018-03-03 00:11:01', 1, 6, 2, ''),
(5, 'Lộ giá bán và cấu hình bộ đôi Sony Xperia XZ2 và Xperia XZ2 Compact', 'Hai chiếc điện thoại thông minh cao cấp của Sony sẽ rẻ hơn nhiều so với các sản phẩm sắp tới của Samsung, Galaxy S9 và S9 Plus.\r\n            \r\n            ', 'Mô hình Xperia XZ2 đắt nhất trong số hai chiếc điện thoại sắp tới của Sony, được trang bị màn hình lớn 5,7 inch với lớp phủ thủy tinh Corning Gorilla 5 và tỷ lệ màn hình 18: 9. Chiếc điện thoại này sẽ được trang bị bộ vi xử lý Qualcomm Snapdragon 845, bộ nhớ RAM 4 GB và bộ nhớ trong 64 GB.\r\n\r\nLộ giá bán và cấu hình bộ đôi Sony Xperia XZ2 và Xperia XZ2 Compact - 1\r\n\r\nSony Xperia XZ2 và Xperia XZ2 Compact lộ diện\r\n\r\nMô hình rẻ hơn và nhỏ hơn nhiều, Xperia XZ2 Compact, sẽ sở hữu một phần cứng tương tự, nhưng với màn hình 5 inch với độ phân giải FHD + và được bảo vệ bởi kính cường lực Gorilla Glass 5. Ngoài ra, cả hai chiếc điện thoại thông minh Xperia của Sony đều không có jack cắm âm thanh 3.5mm, cảm biến vân tay đã di chuyển về phía sau. Ngoài kích thước, hai điện thoại này dường như không nhiều sự khác biệt.\r\n\r\nXperia XZ2 sẽ có giá tương đương 799 Euro (22,3 triệu đồng), trong khi Xperia XZ2 Compact chỉ có giá 599 Euro (16,7 triệu đồng). Cả hai thiết bị Sony Xperia đều dự kiến ​​sẽ được ra mắt vào ngày 6/3 tới.', '2018-03-03 00:58:54', 1, 6, 2, 'sony-XZ2.jpg'),
(59, 'Arsenal 3-0 Watford: Tự tin tái đấu Milan', 'on', 'Oezil bắt đầu mở máy\r\nThắng lợi vẻ vang ngay trên đất Italia trước Milan giữa tuần qua không chỉ đưa Arsenal đặt một vào vòng tứ kết Europa League, mà quan trọng hơn cả là nó mang sự tự tin trở lại với Pháo thủ. Trước một đối thủ không hề dễ chơi, nhưng ngay từ phút thứ 3, Arsenal đã tung được đòn phủ đầu chất lượng.\r\n\r\nMesut Oezil chọc khe để Pierre-Emerick Aubameyang đối mặt thủ thành Karnezis, nhưng cú sút của Aubameyang chỉ suýt nữa đi qua khe giữa 2 chân của thủ môn đối phương. Tuy nhiên, chỉ vỏn vẹn 5 phút sau, một đường chuyền tuyệt vời từ chấm đá phạt trực tiếp của Oezil đã được Shkodran Mustafi cụ thể hóa thành bàn thắng. Sau 2 đường kiến tạo thành bàn trước Milan, Oezil lại tiếp tục tạo ra một bàn thắng nữa để chứng minh anh đã tìm lại được cảm giác chơi bóng tốt nhất.\r\n\r\n\r\n\r\nTuy nhiên, Watford cũng rất nhanh chóng chứng minh họ tuyệt đối không phải đối thủ dễ bị bắt nạt. Phút 12, cú sút chìm, căng ngay trong vòng cấm địa của Abdoulaye Doucoure lẽ ra đã biến thành bàn thắng nếu không có pha đổ người tuyệt vời của Petr Cech. Sóng gió cũng từ thời điểm đó nổi lên nhiều hơn trước khung thành Cech, nhưng thủ thành người CH Czech đã chơi xuất sắc ngoài mong đợi.\r\n\r\nArsenal chấm dứt mạch trận toàn thua\r\nSự chắc chắn của Cech là tiền đề để Arsenal mạnh dạn dâng cao đội hình thường xuyên hơn, và rốt cuộc những cơn sóng ngầm dồn dập cũng đánh chìm Watford. Phút 59, Henrikh Mkhitaryan chọc khe rất thông minh để Aubameyang băng xuống, vượt qua cả thủ thành đối phương và ghi bàn vào lưới trống.\r\n\r\n\r\n\r\nArsenal suýt chút nữa bị gỡ một bàn khi Maitland-Niles vụng về phạm lỗi trong vòng cấm biếu Watford một quả penalty. Đáng tiếc, trên chấm 11m, Troy Deeney lại không chiến thắng được Cech.\r\n\r\nBị dẫn 2 bàn, đá trên sân khách lại còn ném đi quả 11m, Watford gần như suy sụp hoàn toàn tinh thần sau cú đá hỏng ăn của Deeney. Sự chán nản phải trả giá bằng bàn thua thứ 3 phút 77. Người lập công là Mkhitaryan. Như vậy, cùng với đường kiến tạo giúp Aubameyang ghi bàn, trận đấu với Watford đánh dấu lần đầu tiên kể từ khi khoác áo Arsenal, Mkhitaryan vừa ghi bàn vừa kiến tạo/trận tại Premier League.\r\n\r\n\r\n\r\nArsenal kết thúc màn nghênh đón Watford bằng thắng lợi dễ dàng để chấm dứt chuỗi 3 trận thua liên tiếp tại Premier League. Đây cũng là trận đấu mà thủ thành Cech chơi cực tốt sau một giai đoạn dài bị chỉ trích. Nhờ Cech, Arsenal rốt cuộc cũng chấm dứt chuỗi 11 trận Premier League liên tiếp không giữ sạch lưới (lần đầu tiên kể từ năm 2002).\r\n\r\nĐáng tiếc, chiến thắng dù có vang dội đến vậy cũng không thể cứu được Arsenal trong cuộc đua Top 4. Họ vẫn cách ngôi thứ 5 do Chelsea nắm giữ tới 8 điểm. Giờ đây, cách khả thi nhất để Pháo thủ có mặt tại Champions League mùa tới là vô địch Europa League. Và để vô địch thì Pháo thủ phải vượt qua Milan giữa tuần này.\r\n\r\nĐỘI HÌNH THI ĐẤU\r\nArsenal: Cech; Maitland-Niles, Mustafi, Holding; Kolasinac, Elneny, Xhaka, Mkhitaryan (Wilshere, 78’); Oezil, Iwobi (Welbeck, 66’), Aubameyang.\r\nWatford: Karnezis; Femenia (Hughes, 62’), Prodl, Mariappa, Holebas; Doucoure, Capoue; Janmaat (Britos, 82’), Pereyra (Okaka, 67’), Richarlison; Deeney.\r\n\r\nLần đầu của Petr Cech\r\nCản phá thành công cú đá penalty của Troy Deeney, Petr Cech lần đầu tiên kể từ khi khoác áo Arsenal cứu được một quả 11m. Nếu tính cả sự nghiệp thì đây là lần đầu kể từ năm 2011, Cech cản được penalty. Cú 11m gần nhất mà Cech đẩy được đến từ tháng 2/2011, thời còn khoác áo Chelsea. Trước cú đổ người thành công ở trận này, Cech đối mặt với 16 quả penalty và không đẩy được lần nào.', '2018-03-12 02:41:16', 1, 7, 3, NULL),
(60, 'aaaâ', 'on', 'cccccc', '2018-03-12 02:49:55', 1, 7, 4, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '1',
  `adress` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `email`, `password`, `fullname`, `role`, `status`, `adress`) VALUES
(4, 'abc@gmail.com', '202cb962ac59075b964b07152d234b70', 'sang', 0, 1, ''),
(5, 'thien@gmail.com', '202cb962ac59075b964b07152d234b70', 'Tống Văn Thiện', 0, 1, 'Cẩm Thành'),
(6, 'admin@admin.com', '202cb962ac59075b964b07152d234b70', 'Admin', 0, 0, '401 Cây Trâm,Gò Vấp,Tp.HCM'),
(7, 'sang@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'sang', 0, 0, 'bien hoa'),
(8, 'sanggait1996@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'sang', 0, 1, 'bien hoa'),
(9, 'sang123@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'sang', 3, 1, 'bien hoa');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `FK_post_idx` (`post_id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `FK_user_idx` (`user_id`),
  ADD KEY `FK_category_idx` (`category_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
