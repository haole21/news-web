-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2024 at 02:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SLUG` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `PARENT` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`ID`, `NAME`, `SLUG`, `PARENT`) VALUES
(1, 'Thời sự ', 'Thoi-Su', 0),
(2, 'Góc nhìn', 'Goc-Nhin', 0),
(3, 'Thế Giới', 'The-Gioi', 0),
(4, 'Khoa Học', 'Khoa-Hoc', 0),
(5, 'Gỉai Trí', 'Giai-Tri', 0);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `EXCERTP` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `CONTENT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMAGE` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `CATEGORY` int(11) NOT NULL,
  `FEATURED` int(11) NOT NULL,
  `VIEWS` int(11) NOT NULL,
  `CREATE_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATE_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `AUTHOR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`ID`, `TITLE`, `EXCERTP`, `CONTENT`, `IMAGE`, `CATEGORY`, `FEATURED`, `VIEWS`, `CREATE_AT`, `UPDATE_AT`, `AUTHOR`) VALUES
(1, 'Hôm nay Quốc hội thảo luận về kinh tế xã hội, thi hành Hiến pháp', 'Ngày 26/10, đại biểu Quốc hội thảo luận kết quả phát triển kinh tế xã hội năm 2024, kế hoạch 2025 và tình hình thi hành Hiến pháp, điều chỉnh quy hoạch.', 'Báo cáo với Quốc hội, Thủ tướng Phạm Minh Chính cho biết năm qua, an sinh xã hội được bảo đảm. Lương cơ sở, lương hưu, bảo hiểm xã hội, trợ cấp ưu đãi người có công, trợ cấp xã hội tăng cao từ ngày 1/7. Mặt trận Tổ quốc Việt Nam đã vận động và tiếp nhận trên 2.150 tỷ đồng hỗ trợ người dân bị ảnh hưởng bởi cơn bão số 3 Yagi.\r\n\r\nLực lượng lao động, tỷ lệ lao động có việc làm tăng; thu nhập bình quân người lao động đạt khoảng 7,6 triệu đồng. Chính phủ tập trung cắt giảm thủ tục hành chính, tạo môi trường đầu tư kinh doanh lành mạnh, thuận lợi. Công tác đấu tranh phòng, chống các loại tội phạm đạt kết quả tích cực; triển khai toàn diện các giải pháp bảo đảm an toàn giao thông; phòng, chống cháy nổ.\r\n\r\nTuy nhiên, người đứng đầu Chính phủ nhìn nhận thể chế, pháp luật còn nhiều vướng mắc; tình trạng nợ đọng văn bản còn nhiều. Việc phân cấp, phân quyền bất cập, vẫn tập trung nhiều ở Trung ương, vẫn còn tình trạng \"chưa đúng vai thuộc bài\". Chất lượng nguồn nhân lực chưa đáp ứng yêu cầu, đặc biệt trong các ngành công nghệ cao. Đời sống của một bộ phận người dân còn khó khăn.\r\n\r\nBước sang năm 2025, Thủ tướng cho biết sẽ đẩy nhanh giải ngân vốn đầu tư công ngay từ đầu năm, nhất là các chương trình, dự án, công trình quan trọng quốc gia; tăng cường xúc tiến thương mại; đa dạng hóa chuỗi cung ứng, chuỗi sản xuất và thị trường xuất, nhập khẩu.\r\n\r\nChính phủ cũng đẩy mạnh phát triển các ngành công nghiệp, dịch vụ phụ trợ; triển khai hiệu quả Chiến lược phát triển công nghiệp bán dẫn; cơ cấu lại ngành nông nghiệp theo hướng hiệu quả, bền vững, tích hợp đa giá trị. Đề án đào tạo 50.000 kỹ sư bán dẫn và nguồn nhân lực phục vụ phát triển công nghệ cao sẽ được triển khai; đồng thời phát huy hiệu quả hệ sinh thái, Trung tâm Đổi mới sáng tạo quốc gia.\r\n\r\nĐến hết năm 2025, Chính phủ đặt mục tiêu xóa toàn bộ nhà tạm, nhà dột nát và hoàn thành trên 100.000 căn nhà ở xã hội; mở rộng độ bao phủ bảo hiểm xã hội, bảo hiểm thất nghiệp. Cơ quan chức năng sẽ đề ra các biện pháp chủ động ứng phó với biến đổi khí hậu, phòng, chống thiên tai, tăng cường quản lý tài nguyên, bảo vệ môi trường, thúc đẩy phát triển xanh; triển khai đề án cảnh báo sớm sạt lở đất, lũ quét khu vực miền núi, trung du.\r\n\r\n<img src = https://i1-vnexpress.vnecdn.net/2024/10/25/DJI-20241010094254-0082-D-7441-1729865699.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=TNobt_R1nAxIBQL03SWA2g .\r\nBất động sản ở TP Thủ Đức, TP HCM. Ảnh: Quỳnh Trần\r\n\r\nỦy ban Kinh tế của Quốc hội đề nghị Chính phủ đổi mới mô hình tăng trưởng; tận dụng tối đa cơ hội phát triển kinh tế số; nâng cao chất lượng lao động, năng suất lao động xã hội; phát triển và ứng dụng khoa học công nghệ.\r\n\r\nChính sách tài khóa cần được điều chỉnh phù hợp, hiệu quả hơn trong năm 2025 để thích ứng với những thách thức của toàn cầu. Bộ, ngành địa phương tăng cường kỷ luật, kỷ cương tài chính - ngân sách nhà nước; triệt để tiết kiệm chi, nhất là chi thường xuyên để dành cho đầu tư phát triển; kiểm soát bội chi, nợ công trong giới hạn an toàn.\r\n\r\nỦy ban cũng đề nghị Chính phủ tăng cường hỗ trợ doanh nghiệp đang gặp khó khăn, tạo điều kiện thuận lợi cho doanh nghiệp tư nhân phát triển; xử lý dứt điểm các vấn đề tồn đọng kéo dài cho các dự án đất đai; sớm hoàn thành cổ phần hóa, nâng cao hiệu quả hoạt động của doanh nghiệp nhà nước.\r\n\r\n\"Cần có giải pháp ngăn chặn xu hướng suy giảm của thị trường bất động sản kết hợp với kiểm soát tốt hơn số lượng nhà ở đang được xây dựng mới, khắc phục tình trạng mất cân đối cung - cầu\", báo cáo thẩm tra nêu.\r\n\r\nNgoài nội dung trên, các đại biểu cũng thảo luận về tình hình thi hành Hiến pháp; thi hành luật, nghị quyết của Quốc hội; chủ trương điều chỉnh Quy hoạch sử dụng đất quốc gia thời kỳ 2021-2030, tầm nhìn đến năm 2050; chủ trương đầu tư bổ sung vốn nhà nước tại Ngân hàng Thương mại cổ phần Ngoại thương Việt Nam.', 'thoisu.png\r\n', 1, 1, 221, '2024-10-26 02:28:34', '2024-10-26 02:28:34', 1),
(2, '\'Co kéo\' điện mặt trời', 'Chủ một doanh nghiệp làm hàng xuất khẩu nói chuyện với tôi: “Không có điện mặt trời thì họ không mua”.', 'Doanh nghiệp này nằm ở một tỉnh phía Bắc, có hàng nghìn công nhân, sản xuất nhiều mặt hàng xuất khẩu sang các nước EU và Mỹ.\n\nĐối tác mua hàng của họ đã có yêu cầu chính thức về việc nhà máy phải sử dụng năng lượng tái tạo thì mới tiếp tục làm ăn trong các năm tiếp theo. Tỷ lệ năng lượng tái tạo sẽ phải nâng dần qua từng năm.\n\nĐể có thể đáp ứng yêu cầu của khách hàng, các nhà máy như vậy có hai lựa chọn: một là mua điện trực tiếp của một dự án điện tái tạo; hai là lắp các tấm pin mặt trời ngay trên mái nhà xưởng.\n\nPhương án thứ nhất chỉ cho phép áp dụng với những nhà máy lớn. Nghị định về cơ chế mua bán điện trực tiếp (DPPA) mới được ban hành yêu cầu nhà máy phải thuộc diện khách hàng lớn, tiêu thụ điện trung bình 200.000 kWh/tháng. Theo tổng kết của Bộ Công Thương, chỉ có hơn 7.000 khách hàng sử dụng điện đáp ứng được điều kiện này.\n\nRất nhiều nhà máy đang tham gia vào chuỗi cung ứng xuất hàng sang các nước phát triển không thể đáp ứng. Những nhà máy này chỉ có thể lựa chọn lắp đặt điện mặt trời trên mái nhà, nhưng giải pháp này lại đang phải đợi chính sách, và những thảo luận chính sách lại dường như đang chệch hướng. Nhiều vướng mắc đang không được thảo luận giải quyết.\n\nThứ nhất, các tấm pin mặt trời trên mái nhà xưởng, theo tính toán, chỉ có thể đáp ứng được khoảng 20% nhu cầu năng lượng. Con số này có thể thỏa mãn khách hàng nước ngoài trong những năm đầu, nhưng vẫn sẽ cần thêm các nguồn năng lượng tái tạo trong những năm tiếp theo.\n\nThứ hai là vướng mắc từ quy hoạch. Quy hoạch điện VIII có những điểm gây bối rối khi nói về điện mặt trời mái nhà tự sản tự tiêu. \"Từ nay đến năm 2030, công suất các nguồn điện loại hình này ước tính tăng thêm 2.600 MW. Loại hình nguồn điện này được ưu tiên phát triển không giới hạn công suất...\". Một doanh nhân đọc xong hỏi tôi: \"Vậy rốt cục là điện mặt trời mái nhà sẽ bị giới hạn tăng thêm 2.600 MW hay không giới hạn công suất?\"\n\nDoanh nghiệp đương nhiên muốn không giới hạn công suất, nhưng Bộ Công Thương không nghĩ vậy. Kế hoạch thực hiện quy hoạch điện VIII đã chốt cứng công suất điện mặt trời mái nhà tăng thêm là 2.600 MW, đồng thời phân bổ con số này cho 63 tỉnh thành, tỉnh được nhiều nhất là 229 MW.\n\nMức phân bổ này dường như quá nhỏ so với nhu cầu của các doanh nghiệp. Một khu công nghiệp ở Hải Phòng cho biết: \"Hải Phòng được 107 MW. Nhưng khảo sát lượt đầu tại các khu công nghiệp cho thấy nhu cầu không dưới 400 MW\". Nếu chỉ được lắp 107 MW, nhiều doanh nghiệp của Hải Phòng sẽ phải từ bỏ việc xuất hàng sang các nước phát triển. Chuyện không riêng gì Hải Phòng, doanh nghiệp tại địa phương khác cũng đang lo lắng, nhất là tại các vùng kinh tế trọng điểm như Đồng bằng sông Hồng và Đông Nam Bộ.\n\nNhưng không chỉ dừng lại ở Quy hoạch điện lực, Quy hoạch tổng thể quốc gia cũng được Bộ Công Thương viện dẫn để nói về phát triển điện mặt trời. Trong Tờ trình dự thảo Nghị định điện mặt trời mái nhà, Bộ Công Thương cho rằng \"điện mặt trời mái nhà vùng đồng bằng sông Hồng, vùng Đông Nam Bộ không được phát triển\". Lý do là Quy hoạch tổng thể quốc gia không định hướng phát triển năng lượng tái tạo tại hai vùng này như định hướng tại các vùng khác trên cả nước.\n\nMột chuyên gia về quy hoạch nói với tôi: \"Như vậy thì sẽ không được mở quán phở vì không có quy hoạch phở\". Nhưng pháp luật đã nghiêm cấm hành vi \"thực hiện không đúng quy hoạch\", và nhiều cán bộ đã bị truy cứu vì lý do này.\n\nThứ ba là vướng mắc về cơ chế đầu tư lắp đặt pin mặt trời.\n\nCác doanh nghiệp sản xuất hàng xuất khẩu thường không có sẵn nhân lực, kinh nghiệm cũng như nguồn vốn để đầu tư lắp pin mặt trời trên mái. Trong khi đó, trên thị trường có sẵn nhiều doanh nghiệp chuyên về điện mặt trời (tạm gọi là các công ty solar) sẵn sàng hợp tác. Cơ chế hợp tác là công ty solar sẽ đầu tư toàn bộ hệ thống tấm pin, chịu trách nhiệm vận hành, bảo trì. Điện sản xuất ra sẽ được nhà máy sử dụng và trả tiền cho bên solar theo lượng điện năng.\n\nBộ Công Thương cho rằng việc này không phù hợp với chủ trương phát triển điện mặt trời mái nhà, vì đây là hành vi mua bán điện, không đúng với tinh thần chỉ cho phép điện tự sản tự tiêu.\n\nTôi mới trao đổi với vị doanh nhân ở đầu bài về quá trình thảo luận chính sách này. Rất nhiều ý kiến tập trung vào việc cho phép bán điện lên lưới với mức giá bao nhiêu. Từ chỗ quy định không cho bán lên lưới, giá 0 đồng, dự thảo đã tiến đến cho bán 20% công suất với giá trung bình của năm trước.\n\nAnh than: \"Chúng tôi không quan tâm đến việc đó. Cái chúng tôi quan tâm là phải được làm đã, để còn duy trì đơn hàng. Không được làm thì nhà máy đóng cửa\".\n\nTôi nói: \"Nhưng nếu được trả thêm chút tiền thì vẫn tốt hơn chứ?\"\n\nAnh nghĩ một lúc rồi lắc đầu: \"Chưa chắc. Trả tiền như vậy thì đối tượng được hưởng lợi nhất là điện mặt trời trên mái nhà dân, chứ không phải nhà xưởng. Nếu nhà dân lắp nhiều điện mặt trời, thì phần công suất còn lại trong quy hoạch dành cho nhà xưởng sẽ ít đi\".\n\nĐiện mặt trời vốn là loại hình năng lượng không ổn định. Nếu phát triển quá nhiều sẽ tác động tiêu cực đến hệ thống điện quốc gia. Nhiều quốc gia khác phát triển quá mạnh điện mặt trời phải đối mặt với tình trạng điện áp trồi sụt, các chi phí phát điện, truyền tải và phân phối đều tăng. Do đó, tỷ trọng của điện mặt trời trong tổng thể nguồn điện là có giới hạn.\n\nKhi đã bị giới hạn như vậy, thì có lẽ nên tập trung nguồn điện này cho nơi cần nhất, chính là các nhà máy làm hàng xuất khẩu.\n\nMột tập đoàn toàn cầu chuyên mua hàng từ Việt Nam cũng cho biết họ bắt đầu phải thăm dò nhà cung cấp từ Bangladesh. Nếu điện mặt trời vẫn tắc ở Việt Nam, lượng đặt hàng từ Bangladesh cho các năm sau sẽ tăng lên.\n\nChủ một doanh nghiệp solar mới đây chia sẻ với tôi dự định \"sang Campuchia làm ăn\". Đó là một doanh nghiệp có nhân lực và biết cách huy động tài chính. Họ không thể ngồi chờ chính sách mà buộc phải tìm cách giải quyết việc làm cho nhân viên của mình.\n\nVị đó nói: \"Tiền phải chạy, tiền không chờ chính sách\".', '', 2, 0, 331, '2024-10-26 02:31:49', '2024-10-26 02:31:49', 2),
(3, '\r\nThế giớiQuân sựThứ bảy, 26/10/2024, 09:24 (GMT+7)\r\nSyria tuyên bố chặn loạt tên lửa Israel', 'Truyền thông Syria nói Israel không kích các mục tiêu quân sự ở miền trung và nam nước này, tuyên bố đánh chặn được một số tên lửa.', '\r\nThế giớiQuân sựThứ bảy, 26/10/2024, 09:24 (GMT+7)\r\nSyria tuyên bố chặn loạt tên lửa Israel\r\nTruyền thông Syria nói Israel không kích các mục tiêu quân sự ở miền trung và nam nước này, tuyên bố đánh chặn được một số tên lửa bão.\r\n\r\n\"Israel đã thực hiện đòn không kích bằng loạt tên lửa phóng từ vùng trời Cao nguyên Golan và lãnh thổ Lebanon, nhắm mục tiêu vào những căn cứ quân sự ở miền trung và miền nam đất nước lúc 2h hôm nay\", hãng thông tấn Syria SANA dẫn nguồn tin quân sự nước này cho hay.\r\n\r\nNguồn tin thêm rằng phòng không Syria đã đánh chặn một số tên lửa Israel và giới chức đang đánh giá thiệt hại sau cuộc tấn công. Truyền thông Syria nói rằng một số vụ nổ đã xảy ra ở khu vực thủ đô Damascus và thành phố miền tây Homs.\r\n\r\n<img src = \"https://i1-vnexpress.vnecdn.net/2024/10/26/Syrian-Air-Defence-4008-1729909386.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=eIDSdNAFxkWhXjqcKTi8wg\">\r\nXe bệ phóng và nạp đạn của tổ hợp Buk-M2E Syria sau khi đánh trả cuộc không kích của Mỹ - Anh tháng 4/2018. Ảnh: SANA\r\n\r\n\r\n\r\nLực lượng Phòng vệ Israel (IDF) chưa bình luận về thông tin.\r\n\r\nIDF rạng sáng 26/10 tuyên bố tiến hành \"đòn tấn công chính xác\" vào mục tiêu quân sự ở Iran, nhằm đáp trả những chiến dịch của Tehran trong nhiều tháng qua. Chưa rõ sự việc này có liên quan đến cuộc tập kích Syria hay không.\r\n\r\nQuân đội Israel từng thực hiện hàng trăm đợt không kích nhằm vào Syria từ khi chiến sự tại quốc gia Trung Đông bùng phát năm 2011. Các vụ tập kích chủ yếu nhắm vào những nhóm dân quân thân Iran, trong đó có Hezbollah, song đôi khi họ cũng tấn công vị trí quân chính phủ Syria.\r\n<img src = \"https://i1-vnexpress.vnecdn.net/2024/10/26/5563187178137268509a-Syria-296-8478-6456-1729906076.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=vUcdMEpixu1yNitnsUUN5w\">\r\nVị trí Israel và Syria. Đồ họa: AP\r\n\r\n\r\nGiới chức Israel hiếm khi lên tiếng về các đòn tập kích ở Syria, nhưng từng nhiều lần tuyên bố không để \"kẻ địch không đội trời chung\" Iran tăng cường hiện diện tại nước này.\r\n\r\nTần suất các vụ không kích nhằm vào Syria của quân đội Israel gia tăng từ khi xung đột Gaza bùng phát vào đầu tháng 10/2023. Truyền thông Syria cho biết Tel Aviv ngày 24/10 oanh tạc thủ đô Damascus và địa điểm quân sự gần thành phố Homs, khiến một binh sĩ nước này thiệt mạng.', 'thegioi1.jpg\r\nthegioi2.jpg', 3, 1, 441, '2024-10-26 02:40:44', '2024-10-26 02:40:44', 3),
(4, 'Công nghệ trồng cây trong bóng tối', 'Mỹ - Điện nông có tiềm năng giải quyết nhiều vấn đề kém hiệu quả của nông nghiệp truyền thống như đòi hỏi lượng nước, phân bón và đất lớn để trồng hoa màu.', '\r\nMỹ-Điện nông có tiềm năng giải quyết nhiều vấn đề kém hiệu quả của nông nghiệp truyền thống như đòi hỏi lượng nước, phân bón và đất lớn để trồng hoa màu.\r\n <img src =\"https://i1-vnexpress.vnecdn.net/2024/10/24/VNE-Tech-3822-1729767812.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=WD99o0lVj7u-naswC5iqfw\">\r\nNguyên mẫu điện nông của nhóm nghiên cứu. Ảnh: Feng Jiao\r\n\r\n\r\n\r\nCác kỹ sư sinh học đề xuất một phương pháp sản xuất thực phẩm mới táo bạo có thể thay đổi đáng kể ngành nông nghiệp, giúp trồng trọt trở nên hiệu quả, bền vững và dễ điều chỉnh hơn đối với những môi trường như vũ trụ. Với tên gọi \"điện nông\", hệ thống này sẽ thay thế quang hợp truyền thống (quá trình chỉ biến đổi khoảng 1% năng lượng ánh sáng hấp thụ được thành năng lượng hóa học ở cây trồng) bằng phản ứng biến đổi hiệu quả carbon dioxide (CO2) thành phân tử hữu cơ mà cây trồng có thể sử dụng như thức ăn, Interesting Engineering hôm 23/10 đưa tin.\r\n\r\n\"Do điện nông không phụ thuộc vào điều kiện khí hậu và cung cấp hiệu quả lớn hơn trồng trọt truyền thống, nó có thể đóng vai trò như một phương pháp hữu ích để sản xuất thực phẩm bổ sung khi cần\", tác giả nghiên cứu Feng Jiao chia sẻ. \"Trong tình hình biến đổi khí hậu toàn cầu đang ảnh hưởng tới nông nghiệp, những công nghệ sản xuất thực phẩm tiên tiến đang trở nên ngày càng quan trọng để ổn định thị trường thực phẩm và hỗ trợ dân số tăng lên\".\r\n\r\nQuang hợp, quá trình cho phép sự sống tồn tại trên Trái Đất thông qua biến đổi ánh sáng Mặt Trời thành năng lượng hóa học ở thực vật, cực kỳ kém hiệu quả. Theo các nhà nghiên cứu, chỉ có một phần nhỏ ánh sáng Mặt Trời mà cây hấp thụ (khoảng 1%) được biến đổi thành năng lượng có thể sử dụng. Trong khi nhu cầu thực phẩm gia tăng, đất trồng trọt hạn chế và khủng hoảng khí hậu đang đến gần, nâng cao độ hiệu quả này là vấn đề thiết yếu.\r\n\r\nỞ điện nông, các tấm pin quang điện sẽ được sử dụng để cung cấp năng lượng cho phản ứng hóa học giữa CO2 và nước, tạo ra acetate, một phân tử liên quan tới axit acetic (thành phần chính trong dấm). Cây trồng sẽ được biến đổi gene để sử dụng acetate như một nguồn năng lượng cơ bản thay vì phụ thuộc vào quang hợp. Nếu hệ thống này được ứng dụng ở quy mô lớn, nó có thể giảm 94% diện tích đất cần thiết cho nông nghiệp, theo ước tính của nhóm nghiên cứu.\r\n\r\nRobert Jinkerson, kỹ sư sinh vật học ở Đại học California, Riverside, đồng tác giả nghiên cứu, đánh giá công nghệ này là một bước tiến lớn. \"Nếu không cần trồng cây với ánh sáng Mặt Trời nữa, chúng ta có thể tách khỏi môi trường và trồng thực phẩm ở môi trường kiểm soát trong nhà\", ông nói.\r\n\r\nCông nghệ trên có thể chuyển hướng canh tác sang những trang trại thẳng đứng nhiều tầng trong nhà, nơi năng lượng mặt trời được khai thác bên ngoài tòa nhà để thúc đẩy cây trồng phát triển bên trong. Theo Jiao, phiên bản điện nông hiện nay đạt hiệu suất biến đổi năng lượng khoảng 4%, cao gấp 4 lần quang hợp. Do đó, lượng khí thải CO2 gắn liền với sản xuất thực phẩm trở nên nhỏ hơn nhiều.\r\n\r\nPhương pháp có tiềm năng giải quyết một số vấn đề tồn đọng của nông nghiệp truyền thống như đòi hỏi lượng nước, phân bón và đất đai lớn để trồng hoa màu. Điện nông sẽ sản xuất thực phẩm trong môi trường kiểm soát, cho phép quản lý tài nguyên chính xác hơn và giảm tác động môi trường của trồng trọt. Ngoài ra, phương pháp có thể giảm thiểu tác động của biến đổi khí hậu thông qua tách rời sản xuất thực phẩm với các mô hình thời tiết và thay đổi theo mùa.\r\n\r\nĐể đạt mục tiêu, nhóm nghiên cứu phát triển cây trồng biến đổi gene để \"ăn\" acetate. Thực vật tự nhiên có quy trình trao đổi chất giúp chúng phân hủy thức ăn lưu trữ ở hạt trong thời gian nảy mầm. Quy trình này bị ngưng lại ngay khi thực vật bắt đầu sử dụng quang hợp. Nhóm kỹ sư sinh học hướng tới tái kích hoạt quy trình ở cây đã lớn để chúng có thể sử dụng acetate như một nguồn năng lượng. Dù nghiên cứu ban đầu tập trung vào cà chua và rau diếp, nhóm nghiên cứu lên kế hoạch mở rộng sang hoa màu giàu calo như cây sắn, khoai lang và ngũ cốc. Dù nghiên cứu vẫn ở giai đoạn đầu, các tổ chức khác như nấm, nấm men và tảo trong tự nhiên đã sử dụng acetate làm nguồn năng lượng. Điều này có nghĩa công nghệ có thể ứng dụng thương mại cho những tổ chức này sớm hơn nhiều.', 'khoahoc.jpg', 4, 1, 441, '2024-10-26 02:40:44', '2024-10-26 02:40:44', 4),
(5, '\'Ngày xưa có một chuyện tình\' - ký ức tình đầu edited', 'Phim \"Ngày xưa có một chuyện tình\" tái hiện mối tình tay ba trong truyện Nguyễn Nhật Ánh bằng lối kể, hình ảnh giàu chất thơ.', ' Bài tiết lộ một phần nội dung phim\r\n\r\n<video controls>\r\n	<source src=\"https://video.vnexpress.net/embed/v_407208\">\r\n</video>\r\n\r\nLấy bối cảnh miền Trung cuối thập niên 1980 - đầu những năm 2000, phim khắc họa tình yêu, tình bạn của bộ ba nhân vật Miền (Ngọc Xuân), Vinh (Avin Lu), Phúc (Nhật Hoàng) từ thời niên thiếu đến lúc trưởng thành.\r\n\r\nSo với truyện gốc - từng là ấn phẩm ăn khách năm 2016, phim không thay đổi nhiều trong cách kể chuyện. Đạo diễn Trịnh Đình Lê Minh giữ trình tự diễn biến đan xen giữa hiện tại và quá khứ, mở màn với cảnh Phúc trở về quê nhà sau nhiều năm tha hương. Dòng ký ức dần tua ngược về những năm tháng Phúc \"đuôi tôm\" và Vinh \"còm\" là bạn thân dưới mái trường nghèo. Họ từng bị phạt quỳ dưới trụ cờ vì đánh nhau trong trường, chịu những trận roi khi bẻ trộm ngô nướng, làm cháy một góc rẫy.\r\n\r\nNhưng lên cấp ba, đôi bạn cùng thích một cô gái. Vinh \"còm\" yêu đơn phương Miền song ánh mắt cô chỉ hướng về phía Phúc - chàng trai rắn rỏi, mạnh mẽ. Họ trải qua những cung bậc phức tạp, đứng trước lựa chọn giành lấy hạnh phúc cá nhân hay gìn giữ tình bạn chân thành, non nớt của tuổi mới lớn.\r\n<img src =\"https://i1-giaitri.vnecdn.net/2024/10/24/ngay-xua-co-mot-chuyen-tinh-re-3484-8024-1729771061.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=YLmWknLlaHqGH0weNJO3Gw\">\r\nNgọc Xuân - nhân vật Miền - lần đầu chạm ngõ điện ảnh với vai chính. Ảnh: Thanh Hạnh\r\n\r\n\r\nVề tổng thể, tác phẩm có lối dẫn chuyện nhịp nhàng, thủ pháp ghi hình duy mỹ. Trịnh Đình Lê Minh gặp thách thức khi chuyển thể một cuốn truyện được kể từ góc độ của cả ba nhân vật. Đạo diễn chọn điểm nhìn từ Vinh, Phúc lẫn Miền, thỉnh thoảng để họ tự thuật lại câu chuyện. Từ đó, khán giả có cơ hội hiểu hơn về hoàn cảnh từng người, đồng cảm hoặc phản đối trước những lựa chọn của họ.\r\n\r\nỞ hồi đầu - thời niên thiếu, phim tạo cảm giác chậm rãi, có phần dông dài khi dẫn nhập vào câu chuyện. Bước sang hồi hai, phim lôi cuốn hơn với những cảm xúc yêu đương chớm nở, giằng co nội tâm của mối tình tay ba. Ở nhiều khung hình, đạo diễn không dùng thoại, để ngôn ngữ điện ảnh cất tiếng, như cách Vinh ngẩn ngơ nhìn Miền đang say sưa đọc sách, bàn chân của Phúc và Miền khẽ chạm nhau trong làn nước suối trong veo.\r\n\r\nĐạo diễn đưa vào phim nhiều câu văn \"đinh\" trong truyện gốc, như \"Tình bạn là mảnh đất phù hợp nhất để tình yêu gieo xuống hạt giống của mình...\". Ngoài ra, anh có những biến tấu trong kịch bản, nhấn nhá ở cách quay để tạo dấu ấn cá nhân. Câu chuyện về người cha say xỉn của Miền được giản lược để khắc họa rõ hơn hành trình trưởng thành về tâm lý. Nghề nghiệp, hoàn cảnh một số nhân vật được thay đổi, phù hợp với diễn biến.\r\n\r\nHai cảnh \"nóng\" trong tác phẩm cũng là thử nghiệm táo bạo của Trịnh Đình Lê Minh. Trong truyện, Nguyễn Nhật Ánh lần đầu miêu tả cảnh nam nữ gần gũi, đồng thời đi vào các tình tiết nhạy cảm hơn nhiều cuốn trước đó. Lên màn ảnh, đạo diễn chọn lối quay giàu ẩn ý. Nếu cảnh giữa Phúc và Miền diễn ra trong đêm mưa bão, dự báo tương lai bất trắc, phân đoạn của Vinh và Miền lại nhẹ nhàng, vỗ về, xoa dịu nỗi đau cho nhau.\r\n\r\nKhâu cảnh trí, mỹ thuật của phim được chăm chút. Dự án quay phần lớn ở Phú Yên, với hình ảnh nhóm nhân vật đạp xe bên ruộng lúa chín, dưới ánh hoàng hôn, trao nụ hôn đầu giữa rừng suối. Ngôi làng Phô Thị trong truyện hiện lên thanh bình qua dãy tường vàng, ngói phủ rêu. Nhà sản xuất trồng 3.600 cây ngô để phục vụ các góc đại cảnh bằng fly-cam. Nhiều chi tiết cho thấy sự chuẩn bị kỹ lưỡng, như tủ sách cũ, ố vàng ở nhà ông giáo Dưỡng (nghệ sĩ Tấn Thi) - ông nội của Phúc, poster phim nhựa Vị đắng tình yêu nổi tiếng một thời.\r\n\r\n<video controls>\r\n	<source src=\"https://video.vnexpress.net/embed/v_405011\">\r\n</video>\r\nBối cảnh thập niên 1990 của phim. Video: CJ\r\n\r\nDàn gương mặt chính diễn tự nhiên, tạo hình gần gũi. Avin Lu gợi hình dung về một Vinh \"còm\" si tình, ánh mắt luôn đau đáu vì người thương, khiến nhiều khán giả liên tưởng đến Ngạn của Trần Nghĩa trong Mắt biếc (2019). Ngược lại, Phúc của Đỗ Nhật Hoàng gây ấn tượng bởi vẻ nam tính, lanh lợi, có phần trải đời. Lần đầu đóng điện ảnh, Ngọc Xuân chiếm cảm tình người xem với nét đẹp trong trẻo, lối diễn đào sâu nội tâm. Ngoại hình các diễn viên ban đầu khá đứng tuổi khi đóng học sinh phổ thông, nhưng dần hợp vai hơn trong giai đoạn trưởng thành.\r\n\r\nXem suất chiếu sớm, đạo diễn Lý Minh Thắng cho biết thích cảm giác chậm rãi, từ tốn mà phim mang lại. Luân Nguyễn - tác giả sách về điện ảnh - đánh giá cao Trịnh Đình Lê Minh ở cách xây dựng nhân vật và kết nối họ với khán giả, sự ăn ý của dàn diễn viên.\r\n\r\nÂm nhạc đôi lúc vang lên thay nỗi lòng, trở thành người dẫn chuyện. Số lượng ca khúc không nhiều nhưng được sắp xếp một cách ngụ ý. Tình tính tang - Avin Lu sáng tác, trình bày - là khúc tình si Vinh giữ kín trong lòng. Chất giọng của ca sĩ indie Tùng trong Xa (Chờ đến mùa gió) gợi màu sắc hoài niệm. Có một chuyện tình (Phan Mạnh Quỳnh) gói gọn niềm vui, nỗi đau của Vinh, Phúc, Miền từ lúc ấu thơ đến khi làm cha, mẹ.\r\n\r\n  <video controls>\r\n	<source src=\"https://video.vnexpress.net/embed/v_407500\">\r\n</video>\r\nMV lyric \"Có một chuyện tình\". Video: CJ\r\n\r\nỞ đoạn kết, trước khi các nhân vật đưa ra một quyết định then chốt, đạo diễn để họ độc thoại nội tâm. Nhiều khán giả cho rằng thủ pháp này khiến phim mất đi tính điện ảnh - vốn chú trọng kỹ thuật \"show, don\'t tell\" (chỉ thể hiện, không kể lể). Trịnh Đình Lê Minh cho biết các đoạn tâm sự này cũng xuất hiện trong truyện gốc, do đó anh muốn để bộ ba tự nói lên nỗi lòng. \"Tôi hy vọng cách họ bộc bạch về việc ra đi hay ở lại, kết hợp hiệu ứng hình ảnh lẫn âm nhạc, đem đến cảm xúc cho người xem\", anh nói.\r\n\r\n', 'giaitri.jpg', 5, 1, 552, '2024-10-26 02:50:28', '2024-10-26 02:50:28', 5),
(7, '[Ông Trump lại dọa bỏ tù quan chức bầu cử]', '[Trump tiếp tục đe dọa sẽ khiến những quan chức bầu cử và cử tri mà ông cho là \"gian lận\" phải lĩnh án tù dài nếu ông tái đắc cử.\r\n\r\n]', '[Trump tiếp tục đe dọa sẽ khiến những quan chức bầu cử và cử tri mà ông cho là \"gian lận\" phải lĩnh án tù dài nếu ông tái đắc cử.\r\n\r\n\"Tôi và nhiều luật sư đang theo dõi chặt chẽ tính liêm chính của cuộc bầu cử năm nay. Khi tôi thắng cử, những người gian lận bầu cử sẽ bị truy tố theo mức cao nhất của luật pháp, sẽ có các án tù dài hạn\", cựu tổng thống Mỹ Donald Trump viết trong bài đăng ngày 25/10 trên mạng xã hội Truth Social.\r\n\r\nÔng Trump cho hay biện pháp này sẽ áp dụng với cả các \"luật sư, nhà hoạt động chính trị, nhà tài trợ, cử tri bất hợp pháp và quan chức bầu cử tham nhũng\". \"Họ sẽ bị truy nã, bắt và truy tố ở mức độ chưa từng thấy\", ông Trump nói thêm.\r\n\r\nCựu tổng thống Mỹ Donald Trump trong sự kiện vận động tranh cử ở Las Vegas, Nevada, ngày 24/10. Ảnh: AFP\r\n\r\nCựu tổng thống Mỹ Donald Trump trong sự kiện vận động tranh cử ở Las Vegas, Nevada, ngày 24/10. Ảnh: AFP\r\n\r\nĐây là lời đe dọa mới nhất của ông Trump nhắm vào các quan chức bầu cử và cử tri, dấu hiệu cho thấy cựu tổng thống sẽ biến hệ thống tư pháp Mỹ thành \"vũ khí\" chống lại những người mà ông coi là \"gian lận\".\r\n\r\nÔng Trump đã nhiều lần đưa ra những cáo buộc về gian lận sau khi thất bại trước ứng viên đảng Dân chủ Joe Biden trong cuộc bầu cử tổng thống năm 2020. Toàn bộ thẩm phán trong các phiên tòa thụ lý những cáo buộc gian lận này, trong đó có cả những thẩm phán được Trump bổ nhiệm, đều bác bỏ tuyên bố ông đưa ra.\r\n\r\nHồi đầu tháng 9, ông Trump cũng đưa ra lời đe dọa tương tự nhắm vào các quan chức, nhân viên bầu cử. Ông ngày 24/10 còn tuyên bố sẽ sa thải công tố viên liên bang Jack Smith, người phụ trách hai cuộc điều tra nhằm vào ông, và tự ân xá bản thân nếu đắc cử nhiệm kỳ hai.\r\n\r\nCuộc bầu cử tổng thống Mỹ đang đến giai đoạn nước rút. Kết quả khảo sát mới nhất cho thấy ông Trump dẫn trước ứng viên đảng dân chủ Kamala Harris hai điểm phần trăm trên toàn quốc, chưa đầy hai tuần trước ngày bầu cử.\r\n\r\nỨng viên hai đảng đang tích cực vận động ở các bang chiến trường để tìm cách giành được mọi lá phiếu có thể. Trong cuộc đua được đánh giá là rất sít sao này, chỉ số ít phiếu bầu cũng có thể quyết định người chiến thắng.]', '[thegioi1.jpg]', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `NAME`) VALUES
(1, 'Sơn Hà'),
(2, 'Nguyễn Minh Đức'),
(3, 'Phạm Giang'),
(4, 'An Khang'),
(5, 'Mai Nhật');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
