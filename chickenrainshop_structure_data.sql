-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2017 at 02:29 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chickenrainshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `info` text NOT NULL,
  `price` int(11) NOT NULL,
  `sale_price` int(11) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `publish_date` date NOT NULL,
  `link_download` varchar(255) NOT NULL,
  `published` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `category_id`, `title`, `slug`, `image`, `info`, `price`, `sale_price`, `publisher`, `publish_date`, `link_download`, `published`, `created`, `modified`) VALUES
(1, 1, 'Ba điểm tinh yếu trên đường tu tập', 'ba-diem-tinh-yeu-tren-duong-tu-tap', '/webroot/files/ki-nang-song/ba-diem-tinh-yeu-tren-duong-tu-tap.jpg', 'Tập sách này là bản Việt dịch từ một bài giảng của Đức Đạt-lai Lạt-ma XIV, được ngài Rajiv Mehrotra - đệ tử của Đức Đạt-lai Lạt-ma - trực tiếp ban cho cùng với 5 bài giảng nữa, kèm theo một văn bản cho phép chuyển dịch tất cả sang Việt ngữ và phát hành ở dạng song ngữ Anh - Việt. "Ba điểm tinh yếu trên đường tu tập" là bài giảng giải chi tiết về ý nghĩa một bài kệ rất nổi tiếng của đại sư Tongskhapa.', 39000, 31000, 'Tôn giáo', '2017-03-01', '', 1, '2017-03-22 00:00:00', '2017-03-28 00:00:00'),
(2, 1, 'Khám phá ngôn ngữ tư duy', 'kham-pha-ngon-ngu-tu-duy', '/webroot/files/ki-nang-song/kham-pha-ngon-ngu-tu-duy.jpg', 'Đằng sau thái độ, hành vi của mỗi chúng ta là cả một “bản đồ thế giới” (map of the world) – chứa đựng những thói quen, niềm tin, giá trị, ký ức,… – định hình nên suy nghĩ, hành động, cách ta nhìn nhận về bản thân, về mọi người và về thế giới xung quanh. Liệu pháp NLP (Neuro Linguistic Programming – Lập trình Ngôn Ngữ Tư duy) giúp thay đổi tận gốc hành vi, tức là thay đổi kiểu suy nghĩ dẫn đến hành vi của mỗi người. Không giống như các phương pháp truyền thống khác, chỉ đơn thuần bảo ta cần phải làm gì, NLP hướng dẫn ta cách làm để đạt được mục tiêu đề ra, để trở thành mẫu người mà mình mong muốn.\r\n\r\nNLP cũng chính là bí quyết làm nên danh tiếng của Anthony Robbins (một trong những diễn giả hàng đầu thế giới hiện nay), “Nữ hoàng Truyền hình” Oprah Winfrey, cựu Tổng thống Mỹ Bill Clinton và nhiều nhân vật tên tuổi khác.', 58000, 46000, 'Tổng hợp TP.HCM', '2017-03-13', '', 1, '2017-03-23 00:00:00', '2017-03-24 00:00:00'),
(3, 1, 'Người thắp sáng tâm hồn', 'nguoi-thap-sang-tam-hon', '/webroot/files/ki-nang-song/nguoi-thap-sang-tam-hon.jpg', 'Có những cuộc gặp gỡ như một định mệnh. Và có những cuốn sách đã làm nên sự thay đổi của cả một đời người. Đó cũng chính là những gì mà các nhân vật trong cuốn sách này đã trải qua.\r\n\r\nTừ một chàng trai gần như mất niềm tin và mất phương hướng trong cuộc sống, Andy đã biến đổi thành một con người khác hẳn, sau cuộc gặp gỡ với Jones – một ông lão giản dị nhưng cũng đầy bí ẩn; chất phác nhưng lại hết sức uyên thâm. Người đàn ông ấy đã âm thầm gieo trồng bao hạt giống niềm tin, nghị lực đến các thế hệ. Và trên hết, ông giúp những người xung quanh hiểu rằng: Cần gây dựng lại mọi thứ với niềm lạc quan trong trái tim mình. Chúng ta có thể mất đi ngôi nhà, nhưng đừng bao giờ để mất đi mái ấm!', 44000, 35000, 'Trẻ', '2017-03-08', '', 1, '2017-03-21 00:00:00', '2017-03-22 00:00:00'),
(4, 2, 'Ánh sáng vô hình', 'anh-sang-vo-hinh', '/webroot/files/van-hoc/anh-sang-vo-hinh.jpg', 'Marie Laure sống cùng cha tại Paris, gần bảo tàng Lịch sử tự nhiên, nơi cha cô làm thợ khóa chính. Khi lên 6 tuổi, Marie Laure bị mù. Cha cô đã dựng một mô hình thu nhỏ hoàn chỉnh về khu phố hai cha con đang sống để cô có thể ghi nhớ bằng cách chạm và lần tìm đường về nhà. Năm Marie Laure 12 tuổi, Đức Quốc xã chiếm giữ Paris, cô cùng cha chạy trốn đến thành phố nằm trong tường thành, Saint-Malo, nơi ông chú thích ẩn dật của cha cô sống trong một ngôi nhà cao ven biển. Hai cha con họ đã mang theo một viên đá quý giá trị nhất và cũng nguy hiểm nhất viện bảo tàng.', 130000, 90000, 'NXB Văn học', '2017-04-23', 'anh-sang-vo-hinh', 1, '2017-04-23 13:53:13', '2017-04-23 13:53:13'),
(5, 2, 'Trời xanh của táo', 'troi-xanh-cua-tao', '/webroot/files/van-hoc/troi-xanh-cua-tao.jpg', 'Trời Xanh của Táo là cuốn nhật ký bằng tranh của một cậu bạn họa sĩ đang là sinh viên trường ĐH Xây dựng. Cuốn sách sẽ đưa bạn trở về với thời ấu thơ với những trò nghịch ngợm quen thuộc của một những thế hệ chưa công nghệ.Khoảng trời xanh ấy có bờ vai của vững chãi của bố, bàn tay mềm mại của mẹ, dáng tần tảo chiều chuộng của bà và tiếng cười của đám bạn. Chỉ với chiếc mo cau và một thằng bạn là bạn đã có một chiếc xe kéo đến mòn mông, thủng quần. Những món đồ chơi được sản xuất từ những nguyên liệu trong vườn, trong nhà và những đứa trẻ ấy chỉ cần một thứ đồ bỏ đi cũng biến thành đạo cụ hoành tráng. Những tháng ngày ấy không âu lo, chẳng muộn phiền, chỉ có tiếng cười trong trẻo, những khuôn mặt nhọ nhem vì nghịch ngợm, mọi thứ đều kỳ diệu và dường như cả thế giới đều là của mình.', 70000, 50000, 'NXB Phụ nữ', '2017-04-23', 'troi-xanh-cua-tao', 1, '2017-04-23 14:01:40', '2017-04-23 14:01:40'),
(6, 2, 'Ông già và biển cả', 'ong-gia-va-bien-ca', '/webroot/files/van-hoc/ong-gia-va-bien-ca.jpg', 'Ông già và biển cả (tên tiếng Anh: The Old Man and the Sea) là một tiểu thuyết ngắn được Ernest Hemingway viết ở Cuba năm 1951 và xuất bản năm 1952. Nó là truyện ngắn dạng viễn tưởng cuối cùng được viết bởi Hemingway. Đây cũng là tác phẩm nổi tiếng và là một trong những đỉnh cao trong sự nghiệp sáng tác của nhà văn Hemingwa. Tác phẩm này đoạt giải Pulitzer cho tác phẩm hư cấu năm 1953. Nó cũng góp phần quan trọng để nhà văn được nhận Giải Nobel văn học năm 1954.', 25000, 20000, 'NXB Văn học', '2017-04-23', 'ong-gia-va-bien-ca', 1, '2017-04-23 14:06:00', '2017-04-23 14:06:00'),
(7, 2, 'Biển đổi thay', 'bien-doi-thay', '/webroot/files/van-hoc/bien-doi-thay.jpg', 'Cuốn sách tuyển tập những truyện ngắn đặc sắc của Hemingway. Ernest Hemingway (1899 - 1961) là nhà văn, nhà báo người Mỹ. Ông từng tham gia chiến đấu trong Chiến tranh thế giới lần thứ Nhất, sau đó ông được biết đến qua "Thế hệ đã mất", nhận được giải thưởng báo chí Pulitzer năm 1953 với tiểu thuyết Ông già và biển cả, và giải Nobel văn học năm 1954. Hemingway để lại ấn tượng sâu sắc đối với bạn đọc qua nguyên lý tảng băng trôi, văn phong của ông được mô tả bởi sự kiệm lời nhưng có nhiều tầng ý nghĩa, phải suy nghĩ thật sâu mới có thể hiểu hết được những gì tác giả gửi gắm. Nhiều tác phẩm của ông hiện nay được coi là những tác phẩm kinh điển của nền văn học Mỹ.', 50000, 40000, 'NXB Văn học', '2017-04-23', 'bien-doi-thay', 1, '2017-04-23 14:09:49', '2017-04-23 14:09:49'),
(8, 2, 'Chuông nguyện hồn ai', 'chuong-nguyen-hon-ai', '/webroot/files/van-hoc/chuong-nguyen-hon-ai.jpg', 'Nhà văn Mỹ lừng danh Ernest Hemingway, tên đầy đủ là Ernest Miller Hemingway, sinh năm 1899 tại Oak Park, bang Illinois, có bố là bác sĩ và mẹ là ca sĩ. E. Hemingway học hành dang dở, chưa qua trung học đã trốn nhà trốn trường bỏ đi kiếm sống, từ làm công ở trang trại, làm túi đấm ở lò quyền Anh đến làm thông tín viên cho tờ “Kansas City Star”… Chiến tranh thế giới thứ nhất (1914-1918) nổ ra, E. Hemingway tình nguyện làm lái xe cứu thương cho Hội Chữ thập đỏ ở vùng Bắc Italy và bị thương tại đó, mở đầu cho hàng trăm vết thương ông mang trên mình khi sống sót bước ra khỏi cuộc chiến.', 100000, 80000, 'NXB Phụ nữ', '2017-04-23', 'chuong-nguyen-hon-ai', 1, '2017-04-23 14:11:32', '2017-04-23 14:11:32'),
(9, 3, 'Nhà đào tạo sành sỏi', 'nha-dao-tao-sanh-soi', '/webroot/files/kinh-te/nha-dao-tao-sanh-soi.jpg', '"Ngày nay chỉ có một thứ không đổi đó chính là...sự thay đổi."\r\n\r\n"Hãy đối mặt với sự thật rằng một nhà lãnh đạo muốn có các nhân viên tốt chỉ có hai sự lựa chọn: hoặc đi thuê hoặc phải đứng ra đào tạo nhân lực."', 70000, 65000, 'NXB Phụ nữ', '2017-04-23', 'nha-dao-tao-sanh-soi', 1, '2017-04-23 14:17:23', '2017-04-23 14:17:23'),
(10, 3, 'Những điều sếp nói và không nói với bạn', 'nhung-dieu-sep-noi-va-khong-noi-voi-ban', '/webroot/files/kinh-te/nhung-dieu-sep-noi-va-khong-noi-voi-ban.jpg', 'Có rất nhiều khó khăn trong việc hiểu được ý nghĩa thực sự ẩn sâu trong lời nói của cấp trên. Phần lớn vấn đề nằm ở chỗ nội dung bên ngoài của lời nói được truyền đạt, nhưng sâu bên trong đó lại tồn tại suy nghĩ thực sự của cấp trên, đó cũng chính là những điều khiến hầu hết các bạn nhân viên lo lắng. Nhưng dù cho chúng ta có thấy khó chịu với những người sếp không nói rõ xem mình muốn cấp dưới làm gì thì thực trạng đó vẫn sẽ không thay đổi. Do vậy, làm những việc trong khả năng của mình chính là biện pháp tốt nhất. Những việc nên làm ở đây là những việc tuy đơn giản nhưng ắt hẳn các bạn sẽ không ngờ đến. Đó chính là hiểu được một cách chính xác ý nghĩa thực sự muốn truyền tải của cấp trên trong những cuộc đối thoại hằng ngày.', 60000, 45000, 'NXB Thế giới', '2017-04-23', 'nhung-dieu-sep-noi-va-khong-noi-voi-ban', 1, '2017-04-23 14:19:45', '2017-04-23 14:19:45'),
(11, 3, 'Một với một là ba', 'mot-voi-mot-la-ba', '/webroot/files/kinh-te/mot-voi-mot-la-ba.jpg', 'Quyển sách đầu tiên của Dave Trott thật sự đã gây "bão" trong giới yêu sáng tạo Việt Nam khi mà bí kíp sống và làm sáng tạo chưa bao giờ được đúc kết một cách đầy thanh thoát và tinh tế như vậy, cộng thêm với lối trình bày ngắt dòng đặc trưng - bắt độc giả đọc chậm theo ý người viết. Chất "tưng tửng", "dị dị", "hài hài" khiến trải nghiệm đọc sách như thể đang xem một show hài độc thoại ấy đã thú hút rất nhiều độc giả ngoài ngành “làm” sáng tạo.', 50000, 40000, 'NXB Thế giới', '2017-04-23', 'mot-voi-mot-la-ba', 1, '2017-04-23 14:23:00', '2017-04-23 14:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `books_writers`
--

CREATE TABLE `books_writers` (
  `book_id` int(11) NOT NULL,
  `writer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books_writers`
--

INSERT INTO `books_writers` (`book_id`, `writer_id`) VALUES
(1, 3),
(2, 1),
(3, 2),
(4, 4),
(5, 4),
(6, 6),
(7, 6),
(8, 6),
(9, 7),
(10, 8),
(11, 9);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `created`) VALUES
(1, 'Kĩ năng sống', 'ki-nang-song', 'Các sách về kĩ năng sống', '2017-03-29 00:00:00'),
(2, 'Văn học', 'van-hoc', 'Các sách về văn học', '2017-03-29 00:00:00'),
(3, 'Kinh tế', 'kinh-te', 'Các sách về kinh tế', '2017-03-29 00:00:00'),
(4, 'Lịch sử', 'lich-su', 'Sách về lịch sử', '2017-03-28 00:00:00'),
(5, 'Giáo khoa', 'giao-khoa', 'Sách giáo khoa', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `percent` float NOT NULL,
  `description` text,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `percent` float NOT NULL,
  `description` text,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_info` text NOT NULL,
  `orders_info` text NOT NULL,
  `payment_info` text NOT NULL,
  `status` int(11) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` char(13) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `biography` text,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `name`, `slug`, `biography`, `created`) VALUES
(1, 'Philip Miller', 'philip-miller', 'Tiểu sử của Philip Miller', '2017-03-28 00:00:00'),
(2, 'Andy Andrews', 'anđy-andrews', 'Tiểu sử của Andy Andrews', '2017-03-14 00:00:00'),
(3, 'Đạt Lai Lạt Ma', 'dat-lai-lat-ma', 'Tiểu sử của Đạt Lai Lạt Ma', '2017-03-23 00:00:00'),
(4, 'Anthony Doerr', 'anthony-doerr', 'Tiểu sử Anthony Doerr', '2017-04-23 13:54:29'),
(5, 'GCT - Apple', 'gct-apple ', 'Tiểu sử GCT - Apple', '2017-04-23 13:59:19'),
(6, 'Ernest Hemingway', 'ernest-hemingway', 'Tiểu sử Ernest Hemingway', '2017-04-23 14:04:04'),
(7, 'Đỗ Huân', 'do-huan', 'Tiểu sử của tác giả Đỗ Huân', '2017-04-23 14:15:28'),
(8, 'Hidehiko', 'hidehiko', 'Tác giả Hidehiko', '2017-04-23 14:20:58'),
(9, 'Dave Trott', 'dave-trott', 'Tiểu sử Dave Trott', '2017-04-23 14:21:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_writers`
--
ALTER TABLE `books_writers`
  ADD PRIMARY KEY (`book_id`,`writer_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
