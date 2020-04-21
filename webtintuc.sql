-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2020 at 01:06 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtintuc`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `parent_id`) VALUES
(1, 'Thời sự', 0),
(2, 'Thể thao', 0),
(3, 'Gỉải trí', 0),
(4, 'Giáo dục', 0),
(5, 'Đời sống', 0),
(6, 'Bóng đá', 2),
(7, 'Các môn khác', 2),
(8, 'Âm nhạc', 3),
(9, 'Điện ảnh', 3),
(10, 'Sách', 3),
(11, 'Tiếng Anh', 4),
(12, 'Giáo dục 4.0', 4),
(13, 'Tiêu dùng', 5),
(14, 'Gia đình', 5),
(15, 'Sức khỏe', 5);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL,
  `created_by_id` bigint(20) NOT NULL,
  `content` text NOT NULL,
  `creadted_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `content` text NOT NULL,
  `url_img` varchar(200) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-no, 1-yes',
  `category_id` int(20) NOT NULL,
  `views` bigint(20) NOT NULL,
  `likes` bigint(20) NOT NULL,
  `keyword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `content`, `url_img`, `created_date`, `created_by_id`, `tag_id`, `is_featured`, `category_id`, `views`, `likes`, `keyword`) VALUES
(1, 'Dịch bệnh giúp bạn hiểu ra sự thật phũ phàng: Không có tiền, tức là bạn không có quyền lựa chọn', 'Chỉ đến khi thiếu tiền bạn mới thực sự hiểu được sự công bằng cũng như tàn nhẫn của thế giới này. Chỉ đến khi thiếu tiền bạn mới thực sự hiểu được có tiền đồng nghĩa với việc bạn có thêm rất nhiều lựa chọn, còn không có tiền, bạn chỉ có một con đường duy nhất để đi, đó chính là gắng sức mà kiếm tiền.', 'Cuộc sống chính là, bạn không bao giờ biết những điều bất ngờ lúc nào sẽ xảy đến. Giống như dịch Covid-19 chẳng hạn, không ai biết nó sẽ có diễn biến phức tạp tới vậy, cũng không ai biết nó lại gây ảnh hưởng đến tất cả như thế. Nhưng cuộc sống cũng có nghĩa là phải học cách thích nghi. Bất chấp những khó khăn trước mắt, chúng ta luôn thu lại được nhiều điều có ích không chỉ trong thời điểm hiện tại mà cho cả sau này nữa.\r\n\r\nNgay cả việc bị giảm lương, cắt thưởng, hết tiền vì dịch cũng vậy. Từ đây, bạn học thêm được nhiều đạo lý, rút cho mình nhiều kinh nghiệm. Đơn giản như việc, chắc chắn phải biết tiết kiệm tiền. Bởi lẽ, có tiền đồng nghĩa với việc bạn có thêm nhiều quyền lựa chọn khi đứng trước số phận.\r\n\r\nNhớ đợt trước về nhà tôi có nói chuyện với mẹ, mẹ kể: \"Con còn nhớ cô Dương hàng xóm không? Tháng trước cô ấy đi khám phát hiện bị ung thư đấy, giai đoạn cuối rồi\".\r\n\r\nCô Dương là hàng xóm cũ nhà tôi. Trong trí nhớ của tôi, cô là một người rất hiền, rất hòa đồng, hay cười, cũng rất khỏe mạnh, chẳng ai ngờ căn bệnh ung thư quái ác lại rơi vào người cô ấy.\r\n\r\nTheo lời bác sĩ, nếu kiên trì điều trị, cô ấy có thể sống thêm nửa năm đến 1 năm nữa nhưng cô Dương từ chối điều trị, phó mặc cho số phận. Người ngoài khuyên cô đừng từ bỏ hy vọng, cô Dương chỉ đáp một câu: \"Đừng phí tiền, dù sao cũng không chữa khỏi được\".\r\n\r\nMột câu nghe mới xót xa làm sao! Đúng vậy, chữa không khỏi thì chữa để làm gì nữa? Nhưng đằng sau lý do ấy, chẳng qua là vì cô không muốn gia đình phải gánh vác thêm một phần kinh tế mà thôi.\r\n\r\nCon trai cả của cô Dương vừa đính hôn cách đây không lâu. Anh ấy có đặt cọc mua nhà trả góp nhưng vẫn còn nợ một khoản. Nhà gái còn yêu cầu đặt lễ đính hôn rất to. Con trai út của cô thì đang học đại học. Tổng thu nhập của gia đình chi trả những chi tiêu hàng ngày thì vẫn đủ nhưng nếu có tình huống khẩn cấp xảy ra thì hoàn toàn không kịp trở tay.\r\n\r\nMột người phải có dũng khí lớn tới cỡ nào mới có thể bình thản mà nói ra câu từ chối điều trị, từ chối cơ hội được sống thêm một chút thời gian? Nếu như có thể, ai mà chẳng muốn được ở bên những người thân yêu lâu hơn một chút. Nhưng đứng trước hiện thực, không có tiền, tức là bạn không có quyền lựa chọn.\r\n\r\nChỉ đến khi thiếu tiền bạn mới thực sự hiểu được đời người có nhiều điều bất đắc dĩ như thế nào. Chỉ đến khi thiếu tiền, bạn mới thực sự hiểu sự khác biệt một trời một vực giữa \"Có tiền thật tốt\" và \"Nếu có tiền thì tốt rồi\" ra sao.\r\n\r\nTôi rất tâm đắc với một câu nói thế này: \"Tôi yêu tiền, bởi vì tôi chưa từng vì tiền mà chịu khổ nên không biết điểm xấu của tiền là gì, chỉ biết điểm tốt của nó\".\r\n\r\nCó đôi lúc mọi người hay nói tiền là khởi nguồn của mọi tội ác, nói tiền làm người ta biến chất nhưng nói thật, số người vì có tiền mà trở nên xấu xa chỉ là số ít thôi còn số người vì không có tiền mà khổ lại nhiều vô số kể.', NULL, '2020-04-20 18:40:07', 2, 10, 1, 15, 1000, 200, ''),
(2, 'Chính thức: Đại dịch Covid-19 khiến giải bóng đá hấp dẫn nhất thế giới hoãn đến 30/4', 'Buổi họp thứ 2 của các đội bóng và LĐBĐ xứ sở sương mù vừa kết thúc cách đây ít lâu. Đúng với dự đoán của nhiều người, Ngoại hạng Anh chưa thể sớm trở lại.', 'Đại diện của toàn bộ CLB Anh, BTC 4 giải đấu và LĐBĐ (FA) vừa thống nhất quyết định hoãn Ngoại hạng Anh, Championship, League One và League Two đến hết ngày 30/4. FA thậm chí còn nhấn mạnh 30/4 là thời điểm \"sớm nhất có thể\" để mọi thứ trở lại như bình thường trong bối cảnh Covid-19 hoành hành ở xứ sở sương mù.\r\n\r\n\"FA, BTC giải đấu và toàn bộ CLB hiểu rằng đất nước đang trong thời kỳ khó khăn. Chúng tôi luôn ở bên các bệnh nhân, sẵn sàng cùng họ vượt qua giai đoạn này\", trích thông báo mới được FA đăng tải.\r\n\r\n\"Chúng tôi, BTC và CLB, hoàn toàn đồng tâm, nỗ lực đưa các giải đấu trở lại sớm nhất có thể. Nhưng tình hình sức khỏe của cầu thủ và CĐV phải được đặt lên hàng đầu. Theo luật, mọi giải đấu ở Anh phải kết thúc trước ngày 1/6. Tuy nhiên chúng tôi quyết định tạm thời xóa bỏ cột mốc này. Ngoại hạng Anh, Championship, League One và League Two sẽ trở lại sớm nhất vào ngày 30/4\".\r\n\r\nNhư vậy mùa giải 2019-2020 sẽ được tiếp tục, nhưng chậm hơn gần 1 tháng so với kết quả của buổi họp đầu tiên. Vào cuối tuần trước, các CLB và FA đã ngồi với nhau để thảo luận tình hình, tạm thời hoãn Ngoại hạng Anh và 3 giải đấu còn lại đến ngày 3/4. \r\n\r\nTuy nhiên vì virus SARS-CoV-2 vẫn chưa thể bị ngăn chặn triệt để nên viễn cảnh FA buộc lòng phải kéo dài thời gian hoãn đã được CĐV dự đoán từ trước.\r\n\r\nFA cam kết với UEFA trong buổi họp thượng đỉnh hôm thứ 3 vừa rồi về việc sẽ làm mọi cách để kết thúc mùa giải cho đến trước 30/6. Sau cùng, họ chỉ còn đúng 2 tháng để tìm ra nhà vô địch cho 4 giải đấu chuyên nghiệp.\r\n\r\nTrong tương lai, không chỉ FA mà các LĐBĐ nước khác trong khu vực châu Âu cũng sẽ phải họp khẩn để tìm ra giải pháp. Tình hình ở Ý, Tây Ban Nha tệ hơn Anh nên nhiều khả năng còn rất lâu nữa khán giả trên toàn thế giới mới được chứng kiến Cristiano Ronaldo và Lionel Messi thi đấu trở lại.', NULL, '2020-04-20 18:44:35', 2, 2, 1, 6, 2000, 400, '');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(1, 'Thể thao'),
(2, 'Bóng đá'),
(3, 'Tổ ấm'),
(4, 'Sức khỏe'),
(5, 'Hạnh phúc'),
(6, 'Ngôn ngữ'),
(7, 'funny'),
(8, 'Tình cảm'),
(9, 'Học tập'),
(10, 'Thời sự');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(200) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `role` smallint(5) NOT NULL DEFAULT 1 COMMENT '0-admin, 1-normal user',
  `fullname` varchar(500) NOT NULL,
  `dob` date NOT NULL,
  `gender` tinyint(6) NOT NULL COMMENT '1-male, 2-female',
  `email` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `pwd`, `role`, `fullname`, `dob`, `gender`, `email`, `phone`, `address`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0, 'Trần Văn Hiệp', '1997-07-30', 1, 'tranhieptvh@gmail.com', '0985250657', 'Vĩnh Phúc'),
(2, 'tranhieptvh', '580e65a47a052b806804c121b5dedd9d', 1, 'Trần Văn Hiệp', '1997-07-30', 1, 'tranhieptvh@gmail.com', '0985250657', 'Vĩnh Phúc'),
(3, 'hiepdz', '21232f297a57a5a743894a0e4a801fc3', 0, 'Hiệp Trần', '1997-07-30', 1, 'tranhiep@gmail.com', '0123456789', 'Vĩnh Phúc'),
(4, 'huyenamy', '21232f297a57a5a743894a0e4a801fc3', 0, 'Huyền Amy', '1997-09-07', 2, 'huyen@gmail.com', '0987654321', 'Việt Nam'),
(5, 'levi', '8e07dafd13495561db9063ebe4db4b27', 1, 'Levi Ackerman', '1997-01-01', 1, 'levi@gmail.com', '0147852369', 'Japan'),
(6, 'loto', '3aa4724e323fdf0b9adfb1ebb2196a14', 1, 'Lò Thị To', '1997-02-02', 2, 'loto@gmail.com', '1234567890', 'Việt Nam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
