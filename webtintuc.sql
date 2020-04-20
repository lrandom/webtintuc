-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 09:55 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
