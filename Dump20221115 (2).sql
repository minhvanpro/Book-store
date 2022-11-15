-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: sportshop
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bookshop_address`
--

DROP TABLE IF EXISTS `bookshop_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address_detail` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `district_id` int DEFAULT NULL,
  `district_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `province_id` int DEFAULT NULL,
  `province_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ward_code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ward_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_address`
--

LOCK TABLES `bookshop_address` WRITE;
/*!40000 ALTER TABLE `bookshop_address` DISABLE KEYS */;
INSERT INTO `bookshop_address` VALUES (1,'107/26A quang trung p10 quận gò vấp',1461,'Quận Gò Vấp',202,'Hồ Chí Minh','21306','Phường 10');
/*!40000 ALTER TABLE `bookshop_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_admin`
--

DROP TABLE IF EXISTS `bookshop_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_admin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9kgbq11peqsh8p0irvog52q9f` (`user_id`),
  CONSTRAINT `FK9kgbq11peqsh8p0irvog52q9f` FOREIGN KEY (`user_id`) REFERENCES `bookshop_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_admin`
--

LOCK TABLES `bookshop_admin` WRITE;
/*!40000 ALTER TABLE `bookshop_admin` DISABLE KEYS */;
INSERT INTO `bookshop_admin` VALUES (4,1),(5,3),(6,4),(7,5);
/*!40000 ALTER TABLE `bookshop_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_author`
--

DROP TABLE IF EXISTS `bookshop_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_author` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modified_by` bigint DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `admin_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2h7uim1xh56hj8vlewxsoqwcu` (`admin_id`),
  CONSTRAINT `FK2h7uim1xh56hj8vlewxsoqwcu` FOREIGN KEY (`admin_id`) REFERENCES `bookshop_admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_author`
--

LOCK TABLES `bookshop_author` WRITE;
/*!40000 ALTER TABLE `bookshop_author` DISABLE KEYS */;
INSERT INTO `bookshop_author` VALUES (1,'2022-11-10 00:00:00.000000','Hồ Anh Thái','Ho-Anh-Thai',NULL,NULL,4),(2,'2022-11-10 00:00:00.000000','Nguyễn Vĩnh Nguyên','Nguyen-Vinh-Nguyen',NULL,NULL,4),(3,'2022-11-10 00:00:00.000000','Nguyễn Trương Quý','Nguyen-Truong-Quy',NULL,NULL,4),(4,'2022-11-10 00:00:00.000000','Đỗ Bích Thúy','Do-Bich-Thuy',NULL,NULL,4),(5,'2022-11-10 00:00:00.000000','Nguyễn Mai Chi','Nguyen-Mai-Chi',NULL,NULL,4),(6,'2022-11-10 00:00:00.000000','Diệp Tử','Diep-Tu',NULL,NULL,4),(7,'2022-11-10 00:00:00.000000','Đồng Hoa','Dong-Hoa',NULL,NULL,4),(8,'2022-11-10 00:00:00.000000','Phan Việt','Phan-Viet',NULL,NULL,4),(9,'2022-11-10 00:00:00.000000','Anh Khang','Anh-Khang',NULL,NULL,4),(10,'2022-11-10 00:00:00.000000','Chu Ngọc','Chu-Ngoc',NULL,NULL,4);
/*!40000 ALTER TABLE `bookshop_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_book`
--

DROP TABLE IF EXISTS `bookshop_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_book` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `height` int DEFAULT NULL,
  `modified_by` bigint DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `pages` bigint DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `price_original` decimal(19,2) DEFAULT NULL,
  `public_year` datetime(6) DEFAULT NULL,
  `selled` bigint DEFAULT NULL,
  `star` double DEFAULT NULL,
  `total` bigint DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `width` int DEFAULT NULL,
  `admin_id` bigint DEFAULT NULL,
  `author_id` bigint DEFAULT NULL,
  `public_company_id` bigint DEFAULT NULL,
  `rating_id` bigint DEFAULT NULL,
  `sale_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3sthn313napq2nxmpfs5jhuem` (`admin_id`),
  KEY `FKr8jtc2t8bglfbuwu978rtwdan` (`author_id`),
  KEY `FKi4whx5geqbkiwinytchk8t6b` (`public_company_id`),
  KEY `FK33wa9m7koud19o2lmlnwpn3ts` (`rating_id`),
  KEY `FKlkxf03h68re0etpp4srmnfc83` (`sale_id`),
  CONSTRAINT `FK33wa9m7koud19o2lmlnwpn3ts` FOREIGN KEY (`rating_id`) REFERENCES `bookshop_rating` (`id`),
  CONSTRAINT `FK3sthn313napq2nxmpfs5jhuem` FOREIGN KEY (`admin_id`) REFERENCES `bookshop_admin` (`id`),
  CONSTRAINT `FKi4whx5geqbkiwinytchk8t6b` FOREIGN KEY (`public_company_id`) REFERENCES `bookshop_public_company` (`id`),
  CONSTRAINT `FKlkxf03h68re0etpp4srmnfc83` FOREIGN KEY (`sale_id`) REFERENCES `bookshop_sale` (`id`),
  CONSTRAINT `FKr8jtc2t8bglfbuwu978rtwdan` FOREIGN KEY (`author_id`) REFERENCES `bookshop_author` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_book`
--

LOCK TABLES `bookshop_book` WRITE;
/*!40000 ALTER TABLE `bookshop_book` DISABLE KEYS */;
INSERT INTO `bookshop_book` VALUES (1,'2022-11-20 00:00:00.000000','mật ngọt hôn nhân','mat-ngot-hon-nhan','Lần thứ hai gặp mặt, là ông nội anh rắp tâm tìm trăm phương ngàn kế cho thằng cháu trai gặp được cô cháu dâu tương lai để vun đắp tình cảm một chút. Hai người gặp lại thoáng xao động nhưng vẫn tỏ vẻ không quen biết nhau. Phó lão gia chỉ còn biết ngậm ngùi bất mãn với sự lạnh nhạt giữa hai người',20,NULL,'2022-11-12 10:26:01.718000',100,90000.00,100000.00,'2004-11-10 00:00:00.000000',50,4.5,20,'popular',1.5,10,4,1,6,1,1),(2,'2022-11-20 00:00:00.000000','Truyện tranh Manga Dr. Stone','truyen-tranh-manga-dr-stone','Nhân vật chính của bộ truyện này là Taiju và bạn thân của Senku cả 2 thoát khỏi trạng thái hóa thạch và bắt đầu hồi sinh thế giới sau khi thế giới bị hóa đá.\nCó thể đề tài sơ khai về loài người không mấy mới mẻ nhưng bởi sự tinh tế của tác giả đã lồng ghép các kiến thức về hóa học, toán học, lịch sử, thiên văn học để tạo nên sự hấp dẫn cho bộ truyên này.',20,NULL,'2022-11-12 09:13:48.337000',100,180000.00,200000.00,'2005-11-10 00:00:00.000000',50,4.5,20,'popular',1.5,10,4,4,7,2,1),(3,'2022-11-20 00:00:00.000000','Truyện tranh Kimetsu no Yaiba','truyen-tranh-kimetsu-no-yaiba','Kamado Tanjirou là cậu bé thông minh, tốt bụng, cuộc sống của cậu bên gia đình sẽ rất hạnh phúc nếu không bị một con quỷ sát hại và chỉ có Kamado Tanjirou cùng em gái của mình còn sống sót.',20,NULL,'2022-11-12 09:13:48.359000',100,126000.00,140000.00,'2019-04-10 00:00:00.000000',50,4.5,20,'popular',1.5,10,4,4,7,3,1),(4,'2022-11-20 00:00:00.000000','Truyện tranh Yakusoku no Neverland','truyen-tranh-yakusoku-no-Neverland','Miền đất hứa kể về câu chuyện của những đứa trẻ mồ côi cố gắng chạy thoát khỏi 1 ngôi trại để bảo toàn mạng sống khỏi lũ quái vật máu lạnh.',20,NULL,'2022-11-12 09:13:48.382000',100,126000.00,140000.00,'2016-08-10 00:00:00.000000',50,4.5,20,'popular',1.5,10,4,4,6,4,1),(5,'2022-11-20 00:00:00.000000','The Seven Deadly Sins','the-seven-deadly-sins','Sau biến cố về hành động phản bội của nhóm Thất Đại Tội, họ bị truy lùng khắp vương quốc và phải sống ẩn dật một thời gian dài. Tuy nhiên liệu bọn họ có thực sự là kẻ chủ mưu gây ra vụ thảm sát đẫm máu năm xưa, hay còn có ẩn tình gì khác?',20,NULL,'2022-11-12 09:13:48.400000',120,117000.00,130000.00,'2017-05-10 00:00:00.000000',50,4.5,20,'popular',1.5,10,4,4,6,5,1),(6,'2022-11-20 00:00:00.000000','Truyện tranh MANGA ROMANCE','truyen-tranh-manga-romance','Kaguya-sama wa Kokurasetai – Tensai-tachi no Renai Zunousen là câu chuyện kể về Kaguya Shinomiya và Miyuki Shirogane cùng là thành viên của hội học sinh học viện Shuchi’in, được xem như là những thiên tài giữa các thiên tài.',20,NULL,'2022-11-12 09:13:48.419000',140,108000.00,120000.00,'2018-03-15 00:00:00.000000',50,4.5,20,'popular',1.5,10,4,4,6,6,1),(7,'2022-11-20 00:00:00.000000','Truyện tranh sự trổi dậy của khiên hiệp sĩ','truyen-tranh-su-troi-day-cua-khien-hiep-si','Kaguya-sama wa Kokurasetai – Tensai-tachi no Renai Zunousen là câu chuyện kể về Kaguya Shinomiya và Miyuki Shirogane cùng là thành viên của hội học sinh học viện Shuchi’in, được xem như là những thiên tài giữa các thiên tài.',20,NULL,NULL,140,120000.00,120000.00,'2015-03-14 00:00:00.000000',50,4.5,20,'popular',1.5,10,4,4,6,7,NULL),(10,'2022-11-20 00:00:00.000000','Attack on Titan','attack-on-titan','Đại chiến Titan là một loạt truyện Manga tại Nhật Bản. Câu chuyện lấy bối cảnh hàng trăm năm trước khi những sinh vật khổng lồ gọi là Titan xuất hiện khiến thế giới loài người bị giệt vong.',20,NULL,NULL,120,150000.00,150000.00,'2019-03-14 00:00:00.000000',50,4.5,20,'popular',1.5,10,4,4,6,8,NULL),(11,'2022-11-20 00:00:00.000000','One punch man','one-punch-man','Câu chuyện diễn ra tại thành phố Z của Nhật Bản tại thời điểm thế giới đầy những quái vật bí ẩn với sức mạnh ghê ghớm đã xuất hiện và gây ra biết bao nhiêu thảm họa.',20,NULL,NULL,120,180000.00,180000.00,'2019-03-14 00:00:00.000000',50,4.5,20,'popular',1.5,10,4,5,6,9,NULL),(12,'2022-11-20 00:00:00.000000','Last game','last-game','Đây là bộ truyện về tình cảm học đường cực kỳ đáng yêu và lãng mạn khiến bao con tim thổn thức khi học.',20,NULL,NULL,120,180000.00,180000.00,'2014-07-19 00:00:00.000000',50,4.5,20,'trend',1.5,10,4,8,6,10,NULL),(13,'2022-11-20 00:00:00.000000','Điểm Đến Cuộc Đời','diem-den-cuoc-doi','Điểm Đến Cuộc Đời - Đồng Hành Với Người Cận Tử Và Những Bài Học Cho Cuộc Sống Điểm đến của cuộc đời kể lại một hành trình không thể nào quên cùng những người cận tử',20,NULL,NULL,159,257000.00,257000.00,'2021-09-10 00:00:00.000000',150,4.7,20,'trend',1.5,10,4,9,6,11,NULL),(14,'2022-11-20 00:00:00.000000','Xa Ngoài Kia Nơi Loài Tôm Hát ','xa-ngoai-kia-la-noi-loai-tom-hat','rong nhiều năm, những tin đồn về \'Cô gái đầm lầy\' đã ám ảnh Barkley Cove, một thị trấn yên tĩnh trên bờ biển Bắc Carolina. ',22,NULL,NULL,120,140000.00,140000.00,'2021-09-25 00:00:00.000000',110,4.8,20,'trend',1.5,10,4,3,6,12,NULL),(15,'2022-11-20 00:00:00.000000','Hồi Ức Không Tên ','hoi-uc-khong-ten','Hồi ức không tên là một trong những series light novel tiêu biểu của Dengeki Shin Bungei – thương hiệu dành riêng cho những dòng light novel Fantasy/Sci-fi nặng đô của Dengeki Bunko',22,NULL,NULL,100,150000.00,150000.00,'2021-09-30 00:00:00.000000',111,4,20,'trend',1.5,10,4,2,6,13,NULL),(16,'2022-11-21 00:00:00.000000','Thế Nào Và Tại Sao','the-nao-va-tai-sao','SÁCH KHÁM PHÁ - THẾ NÀO VÀ TẠI SAO - THỜI KỲ ĐỒ ĐÁ VÀ NHỮNG CÔNG TRÌNH HÙNG VĨTrong hành trình khám phá Thế giới',20,NULL,NULL,200,81000.00,81000.00,'2022-01-30 00:00:00.000000',1121,4.5,20,'trend',1.5,10,4,9,6,14,NULL),(17,'2022-11-21 00:00:00.000000','Quốc Gia Khởi Nghiệp','quoc-gia-khoi-nghiep','Quốc Gia Khởi Nghiệp - Câu Chuyện Về Nền Kinh Tế Thần Kỳ Của Israel (Tái Bản)Là câu chuyện viết về sự phát triển thần kỳ của nền kinh tế Israel từ lúc lập quốc cho đến khi trở thành quốc gia có nền công nghệ hàng đầu thế giới.',25,NULL,NULL,250,710000.00,710000.00,'2022-02-09 00:00:00.000000',121,4.6,20,'trend',1.5,10,4,7,6,15,NULL),(18,'2022-11-21 00:00:00.000000','Khát Vọng Việt','khat-vong-viet','tác giả Đỗ Cao Bảo và thế hệ của anh sinh ra và lớn lên trong những năm tháng chiến tranh gian khổ, trưởng thành đúng giai đoạn nghèo khó của đất nước.',28,NULL,NULL,320,710000.00,710000.00,'2022-04-10 00:00:00.000000',101,4.7,20,'trend',1.5,10,4,8,6,16,NULL),(19,'2022-11-21 00:00:00.000000','Những Bậc Thầy Đổi Mới','nhung-bac-thay-doi-moi','Một cuộc phiêu lưu mới mẻ, hấp dẫn, sâu sắc vào trái tim và tâm trí của những nhà lãnh đạo đầy cảm hứng, tin tưởng vào tiềm năng đổi mới vô hạn của con người và chứng minh rằng với sự thực hành đúng đắn',26,NULL,NULL,210,210000.00,210000.00,'2022-05-10 00:00:00.000000',131,4.5,20,'trend',1.5,10,4,1,6,17,NULL),(20,'2022-11-21 00:00:00.000000','Quản Lý Rủi Ro','quan-li-rui-ro','Rủi ro từ lâu đã là một yếu tố quan trọng mà bất cứ doanh nghiệp nào cũng phải xem xét và đề phòng. ',22,NULL,NULL,320,310000.00,310000.00,'2022-06-10 00:00:00.000000',151,4.6,20,'trend',1.5,10,4,1,6,18,NULL),(21,'2022-11-21 00:00:00.000000','Kiếm tìm Sự Hoàn Hảo','kiem-tim-su-hoan-hao','Kiếm Tìm Sự Hoàn Hảo - Phương Phát Quản Trị Những Doanh Nghiệp Thành Công Nhất Nước Mỹ Kiếm Tìm Sự Hoàn Hảo là cuốn sách viết về kinh doanh hay nhất mọi thời đại, không thể thiếu trong các trường kinh doanh, trên bàn làm việc của các doanh nhân ',28,NULL,'2022-11-11 21:48:44.596000',600,810000.00,810000.00,'2021-01-10 00:00:00.000000',1202,4.3,18,'popular',1.5,10,4,2,6,19,NULL),(22,'2022-11-21 00:00:00.000000','Phát triển khả năng lãnh đạo','phat-trien-kha-nang-lanh-dao','Phẩm chất của nhà lãnh đạo – Lãnh đạo không phải là một câu lạc bộ dành riêng cho những người sinh ra để chỉ huy. Muốn làm một nhà lãnh đạo, bạn phải có những phẩm chất được lĩnh hội và trau dồi qua thời gian. Kết hợp những phẩm chất đó với khát vọng và quyết tâm, thì không điều gì có thể ngăn bạn trở thành một nhà lãnh đạo.',28,NULL,NULL,570,770000.00,770000.00,'2021-07-10 00:00:00.000000',190,4.2,20,'popular',1.5,10,4,5,6,20,NULL),(23,'2022-11-20 00:00:00.000000','One Piece','One-Piece','Đây là bộ manga xoay quanh chàng trai Monkey D. Luffy, chàng trai ngô nghê pha chút hài hước đến từ vùng biển East Blue. Luffy đã thành lập Băng hải tặc Mũ rơm cùng với những người bạn mà anh đã cứu giúp. Trên con tàu Going Merry, họ đã cùng nhau đi qua vô vàn thử thách để tìm kiếm One Piece - kho báu danh giá.',20,NULL,'2022-11-12 09:13:48.487000',100,22500.00,25000.00,'2005-11-10 00:00:00.000000',50,4.5,20,'popular',1.5,10,4,5,7,21,1),(24,'2022-11-20 00:00:00.000000','One Piece','One-Piece','Đây là bộ manga xoay quanh chàng trai Monkey D. Luffy, chàng trai ngô nghê pha chút hài hước đến từ vùng biển East Blue. Luffy đã thành lập Băng hải tặc Mũ rơm cùng với những người bạn mà anh đã cứu giúp. Trên con tàu Going Merry, họ đã cùng nhau đi qua vô vàn thử thách để tìm kiếm One Piece - kho báu danh giá.',20,NULL,NULL,100,25000.00,25000.00,'2005-11-10 00:00:00.000000',50,4.5,20,'popular',1.5,10,4,5,7,21,NULL),(25,'2022-11-20 00:00:00.000000','Akira','Akira','Akira là bộ manga có nội dung xoay quanh đề tài hậu tận thế. Năm 1992, cột mốc bắt đầu cho Thế chiến lần 3, một loại bom mới được chế tạo ra với sức công phá khủng khiếp đã thử nghiệm ngay trên thủ đô nước Nhật - Neo-Tokyo. Thành phố nhỏ vỡ vụn, hàng trăm ngàn người thiệt mạng và không biết bao nhiêu nhà cửa bị đổ nát, và hậu quả để lại là nhiều năm sau đó thành phố vẫn chưa khôi phục được. Tetsuo, nhân vật chính của bộ manga, khi tình cờ dạo quanh những đống đổ nát đã vô tình bị hút vào một cuộc thí nghiệm tâm linh bí ẩn do chính phủ thực hiện. Chính anh cũng không biết mình sắp đối diện với một thứ sức mạnh vô cùng đáng sợ, thứ đang là mục tiêu của những tổ chức khủng bố, thứ mang tên Akira,...',20,NULL,NULL,100,30000.00,30000.00,'2005-11-10 00:00:00.000000',50,4.5,20,'popular',1.5,10,4,6,7,22,NULL),(26,'2022-11-20 00:00:00.000000','Attack on Titan','Attack-on-Titan','Truyện được xây dựng với sự tưởng tượng của tác giả về một thế giới giả tưởng, với cách kể đan xen giữa quá khứ và hiện tại khơi gợi sự tò mò nơi người đọc. Ở thế giới đó, người nắm quyền lực cao nhất là những người khổng lồ Titan. Con người lúc ấy bé nhỏ và yếu ớt vô cùng, họ phải làm những bức tường thành để ngăn chặn Titan. Nhưng rồi một ngày nọ, một Titan bất ngờ xuất hiện, phá nát tường thành và đem lại nỗi sợ hãi kinh hoàng cho loài người. Nhóm ba người bạn trẻ Eren, Armin và Mikasa quyết tâm lên đường mặc bao nguy hiểm để tìm ra chân tướng sự việc…',20,NULL,NULL,100,28000.00,28000.00,'2005-11-10 00:00:00.000000',50,4.5,20,'popular',1.5,10,4,3,7,23,NULL),(27,'2022-11-20 00:00:00.000000','Bleach','Bleach','Cái thiện và cái ác là những đề tài phổ biến trong các tác phẩm truyện tranh, nhưng để diễn tả ranh giới và những bài học xung quanh hai thái cực đối lập này thì Bleach chính là một kiệt tác. Nhân vật chính trong bộ truyện này là Kurosachi Ichigo. Một cách vô cùng tình cờ tựa như sự sắp đặt của số phận, Ichigo bỗng nhiên biến thành thần chết. Và ở cương vị mới này, anh đã giúp bạn bè và những người thân yêu của mình vượt qua muôn vàn thử thách hiểm nguy. Và họ cũng chính là những người luôn sát cánh bên anh, cùng anh vượt qua gian khó.',20,NULL,NULL,100,26000.00,26000.00,'2005-11-10 00:00:00.000000',50,4.5,20,'popular',1.5,10,4,2,7,24,NULL),(28,'2022-11-20 00:00:00.000000','Detective Conan','Detective-Conan','Đây là tập truyện manga lấy bối cảnh Nhật Bản hiện đại với nhân vật chính là Shinichi Kudo - thám tử lừng danh trung học. Trong một lần phá án, cậu bị bọn Tổ chức áo đen phát giác và cho uống thuốc teo nhỏ. Từ đó, Shinichi xuất hiện dưới hình dạng chú bé Edogawa Conan 6 tuổi nhưng trí não và khả năng phá án thiên tài vẫn không thay đổi. Tá túc tại nhà cô bạn gái Ran Mori, Conan đã tham gia phá rất nhiều vụ án bí ẩn và dần dần vạch trần chân tướng Tổ chức áo đen…',20,NULL,NULL,100,20000.00,20000.00,'2005-11-10 00:00:00.000000',50,4.5,20,'popular',1.5,10,4,8,7,25,NULL),(29,'2022-11-20 00:00:00.000000','Death Note','Death-Note','Death Note chính là bộ manga kể lại một sự tình cờ như thế. Một học sinh cấp 3 tên Light Yagami ngẫu nhiên nhặt được một quyển sổ tử thần (Death Note). Đó là quyển sổ vạn năng, có khả năng giết chết người nào bị ghi tên lên đó. Light đã lợi dụng đặc điểm này của quyển sổ, đặt cho mình bí danh Kira và lần lượt ghi tên vào sổ những kẻ mà theo hắn là độc ác, âm mưu tạo một cuộc tàn sát thế giới.',20,NULL,NULL,100,21000.00,21000.00,'2005-11-10 00:00:00.000000',50,4.5,20,'popular',1.5,10,4,9,7,26,NULL),(30,'2022-11-20 00:00:00.000000','Kimetsu no Yaiba','Kimetsu-no-Yaiba','Truyện lấy bối cảnh nước Nhật thời kỳ Taisho, khi mà khắp nơi mọi người đang bàn tán về một loài quỷ ăn thịt người ẩn náu trong rừng. Từ già trẻ lớn bé, không ai dám bén mảng ra khỏi nhà từ lúc trời nhá nhem tối vì nỗi khiếp sợ với lũ quỷ này. Nhân vật chính của truyện là cậu bé Kamado Tanjiro tốt bụng, nghĩa hiệp, con của một gia đình tiều phu nghèo sống trên núi. Một ngày nọ, lũ quỷ xông đến tàn sát cả nhà, chừa lại cậu và em gái Kazuo. Nhưng rồi sau đó Kazuo sau đó cũng bị biến thành quỷ. Quá đau khổ và thương em gái, Kazuo quyết định phải tiêu diệt quỷ, trả thù cho cả nhà.',20,NULL,NULL,100,23000.00,23000.00,'2005-11-10 00:00:00.000000',50,4.5,20,'popular',1.5,10,4,9,7,27,NULL),(31,'2022-11-20 00:00:00.000000','Naruto','Naruto','Để ngăn chặn Cửu Vỹ Hồ Ly tấn công vào làng Lá, cha của Naruto đã dùng cấm thuật phong ấn nó chính con trai mình - Naruto để bảo vệ cả làng. Sau khi ngăn chặn được Cửu Vỹ, cả cha mà mẹ Naruto đều đã hy sinh. Naruto lớn lên trong hoàn cành người trong làng hắt hủi và xa lánh cậu. Bản thân cậu cũng chẳng biết trong mình tồn tại con quái vật ấy. Mặc dù bị những người xung quanh xa lánh, Naruto luôn mang trong mình ý chí quyết tâm cùng tinh thần lạc quan, vui vẻ. Trong hành trình học hỏi để hoàn thành giấc mơ trở thành Hokage của làng, cậu mới biết sự thật về bản thân và những câu chuyện ly kỳ bắt đầu xảy ra từ đây.',20,NULL,NULL,100,26000.00,26000.00,'2005-11-10 00:00:00.000000',50,4.5,20,'popular',1.5,10,4,1,7,28,NULL),(32,'2022-11-20 00:00:00.000000','Siêu quậy Teipei','Sieu-quay-Teipei','Cốt truyện xoay quanh Teppei, một cậu bé theo cha lên núi tìm kho báu và sống suốt thời thơ ấu trong thiên nhiên hoang dã; vì thế mà khi trở về thành phố, cậu hơi lập dị và gây rắc rối thường xuyên từ khi nhập học do quen với cuộc sống tự do. Tuy nhiên, do sống trong nơi hoang dã từ nhỏ nên Teppei có khả năng hơn hẳn người bình thường trong thể thao, cậu chú ý đến môn kendo và bắt đầu luyện tập thường xuyên để trở thành kiếm thủ giỏi nhất.',20,NULL,NULL,100,26000.00,26000.00,'2005-11-10 00:00:00.000000',50,4.5,20,'popular',1.5,10,4,4,7,29,NULL),(33,'2022-11-20 00:00:00.000000','Captain Tsubasa','Captain-Tsubasa','Nhân vật chính là một cậu bé thần đồng của bóng đá Nhật Bản có tên Oozora Tsubasa. Bằng tài năng của mình, Tsubasa đã truyền cảm hứng đam mê với trái bóng đến những cậu bạn thời tiểu học của mình. Trải qua thời gian Tsubasa trở thành đội trưởng của đội tuyển trẻ và sau đó là Đội tuyển bóng đá quốc gia Nhật Bản. Bộ truyện sau khi ra mắt công chúng đã được đón nhận nồng nhiệt và tạo nên một cơn sốt về các tác phẩm manga, anime lấy đề tài bóng đá.',20,NULL,NULL,100,20000.00,20000.00,'2005-11-10 00:00:00.000000',50,4.5,20,'popular',1.5,10,4,7,7,30,NULL);
/*!40000 ALTER TABLE `bookshop_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_book_images`
--

DROP TABLE IF EXISTS `bookshop_book_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_book_images` (
  `book_id` bigint NOT NULL,
  `images` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  KEY `FKm015guooa01yi32quk9j3unt3` (`book_id`),
  CONSTRAINT `FKm015guooa01yi32quk9j3unt3` FOREIGN KEY (`book_id`) REFERENCES `bookshop_book` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_book_images`
--

LOCK TABLES `bookshop_book_images` WRITE;
/*!40000 ALTER TABLE `bookshop_book_images` DISABLE KEYS */;
INSERT INTO `bookshop_book_images` VALUES (1,'https://truyenhayy.com/wp-content/themes/novel/timthumb.php?src=https://i0.wp.com/truyenhayy.com/wp-content/uploads/2022/09/mat-ngot-hon-nhan.jpg&h=322&w=215&q=100'),(2,'https://trungvietlaptop.com/nhung-bo-truyen-tranh-hay-nhat/imager_1_28970_700.jpg'),(3,'https://trungvietlaptop.com/nhung-bo-truyen-tranh-hay-nhat/imager_4_28970_700.jpg'),(4,'https://trungvietlaptop.com/nhung-bo-truyen-tranh-hay-nhat/imager_6_28970_700.jpg'),(5,'https://aztruyen.com/cover/the-seven-deadly-sins-su-cuu-roi-264760849.jpg'),(6,'https://truyenkinhdien.com/wp-content/uploads/2022/05/kaguya-sama-love-is-war-564x846.jpg'),(7,'https://sttruyen.com/storage/thumb/su-troi-day-cua-khien-hiep-si_766e32a1eeb59ea94db33ddf0c4247f1.jpg'),(10,'https://truyenvn.vip/wp-content/uploads/2020/07/dai-chien-titan.jpg'),(11,'https://i.truyenvua.com/ebook/190x247/onepunch-man_1552232163.jpg?gf=hdfgdfg&mobile=2'),(12,'https://images8.intercomics.club/vnstory/b0/5f/b05f1a5d7ee7e56478055c447a744bdf.jpeg'),(13,'https://www.vinabook.com/images/thumbnails/product/240x/373467_p96606mscreenshot20220919110338.jpg'),(14,'https://www.vinabook.com/images/thumbnails/product/240x/363703_p92799mscreenshot20220906162711.jpg'),(15,'https://www.vinabook.com/images/thumbnails/product/240x/375205_p97068mhuktba.jpg'),(16,'https://www.vinabook.com/images/thumbnails/product/240x/375261_p97080m8935210302281.jpg'),(17,'https://www.vinabook.com/images/thumbnails/product/240x/368585_p94838mqucgiakhinghip.jpg'),(18,'https://www.vinabook.com/images/thumbnails/product/240x/368557_p94825mz30909815342433873a0ffa66637722310ed63426c63291.jpg'),(19,'https://www.vinabook.com/images/thumbnails/product/240x/373990_p96758m8935235234147.jpg'),(20,'https://www.vinabook.com/images/thumbnails/product/240x/373855_p96720m8935251419023.jpg'),(21,'https://www.vinabook.com/images/thumbnails/product/240x/373539_p96629m8935251418019.jpg'),(22,'https://www.vinabook.com/images/thumbnails/product/240x/372806_p96464mphattrienkynanglanhdaooutline.jpg'),(23,'https://file.hstatic.net/200000122283/file/one_piece_9dd124974dc24684ba461665c4b27c5c_grande.jpg'),(23,'https://file.hstatic.net/200000122283/file/one_piece_9dd124974dc24684ba461665c4b27c5c_grande.jpg'),(24,'https://file.hstatic.net/200000122283/file/akira_9526e9a4a8b3428f9c67aa9d3ebd716b_grande.jpg'),(26,'https://file.hstatic.net/200000122283/file/attack_on_titan_c8aa7f2ae99a48f59e6e2813b8f971b3_grande.jpg'),(27,'https://file.hstatic.net/200000122283/file/bleach_4ca583a9320143a88783da198dca6c52_grande.jpg'),(28,'https://file.hstatic.net/200000122283/file/detective_conan__tham_tu_lung_danh_conan__5ce554a77fad4146898e7cd379f59eab_grande.jpg'),(29,'https://file.hstatic.net/200000122283/file/death_note__quyen_so_tu_than__5a57a45a9c9648f8bbcbe66a513b71e5_grande.jpg'),(30,'https://file.hstatic.net/200000122283/file/demon_slayer_kimetsu_no_yaiba__thanh_guom_diet_quy__853198b1021746c99324b768ff4542f8_grande.jpg'),(31,'https://file.hstatic.net/200000122283/file/naruto_3a94a8ad70f3465ca0b3d4cb981f79c3_grande.jpg'),(32,'https://file.hstatic.net/200000122283/file/sieu_quay_teipei_f485f02f3aee4751a68adfd31f821ad4_grande.png'),(33,'https://file.hstatic.net/200000122283/file/captain_tsubasa__doi_truong_tsubasa__4f62a4afb7a64123a8deb62f262a937e_grande.png');
/*!40000 ALTER TABLE `bookshop_book_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_cart`
--

DROP TABLE IF EXISTS `bookshop_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `total` int DEFAULT NULL,
  `book_id` bigint DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdrd2wprb275x2jn60ltt3cebx` (`book_id`),
  KEY `FKto7raho8ug9f39g428cpcqpsf` (`customer_id`),
  CONSTRAINT `FKdrd2wprb275x2jn60ltt3cebx` FOREIGN KEY (`book_id`) REFERENCES `bookshop_book` (`id`),
  CONSTRAINT `FKto7raho8ug9f39g428cpcqpsf` FOREIGN KEY (`customer_id`) REFERENCES `bookshop_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_cart`
--

LOCK TABLES `bookshop_cart` WRITE;
/*!40000 ALTER TABLE `bookshop_cart` DISABLE KEYS */;
INSERT INTO `bookshop_cart` VALUES (2,1,1,2);
/*!40000 ALTER TABLE `bookshop_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_category`
--

DROP TABLE IF EXISTS `bookshop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modified_by` bigint DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `admin_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKq2ahekx07paqgxlgg5diccx1y` (`admin_id`),
  CONSTRAINT `FKq2ahekx07paqgxlgg5diccx1y` FOREIGN KEY (`admin_id`) REFERENCES `bookshop_admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_category`
--

LOCK TABLES `bookshop_category` WRITE;
/*!40000 ALTER TABLE `bookshop_category` DISABLE KEYS */;
INSERT INTO `bookshop_category` VALUES (1,'2022-11-05 00:00:00.000000','hài hước','hai-huoc',NULL,NULL,4),(2,'2022-11-06 00:00:00.000000','hành động','hanh-dong',NULL,NULL,4),(3,'2022-11-07 00:00:00.000000','viễn tưởng','vien-tuong',NULL,NULL,4),(4,'2022-11-08 00:00:00.000000','khoa học','khoa-hoc',NULL,NULL,4),(5,'2022-11-09 00:00:00.000000','cổ tích','co-tich',NULL,NULL,4),(6,'2022-11-05 00:00:00.000000','trinh thám','trinh-thám',NULL,NULL,4),(7,'2022-11-05 00:00:00.000000','ma','ma',NULL,NULL,4),(8,'2022-11-05 00:00:00.000000','động vật','dong-vat',NULL,NULL,4),(9,'2022-11-10 00:00:00.000000','truyện dài','truyen-dai',NULL,NULL,4),(10,'2022-11-20 00:00:00.000000','địa lý','dia-ly',NULL,NULL,4);
/*!40000 ALTER TABLE `bookshop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_category_book`
--

DROP TABLE IF EXISTS `bookshop_category_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_category_book` (
  `book_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  KEY `FKeht4hqk6bb1gapgw2po3lvfga` (`category_id`),
  KEY `FKo5r08h2et5ll566sgs0hxjshy` (`book_id`),
  CONSTRAINT `FKeht4hqk6bb1gapgw2po3lvfga` FOREIGN KEY (`category_id`) REFERENCES `bookshop_category` (`id`),
  CONSTRAINT `FKo5r08h2et5ll566sgs0hxjshy` FOREIGN KEY (`book_id`) REFERENCES `bookshop_book` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_category_book`
--

LOCK TABLES `bookshop_category_book` WRITE;
/*!40000 ALTER TABLE `bookshop_category_book` DISABLE KEYS */;
INSERT INTO `bookshop_category_book` VALUES (2,3),(3,3),(4,6),(5,7),(6,9),(7,2),(10,6),(11,3),(12,1),(13,4),(14,8),(15,3),(16,6),(17,4),(18,5),(19,10),(20,4),(21,4),(22,9),(23,9),(24,3),(25,9),(26,3),(27,4),(28,9),(29,2),(30,2),(31,9),(32,9),(33,3),(1,1),(1,4);
/*!40000 ALTER TABLE `bookshop_category_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_customer`
--

DROP TABLE IF EXISTS `bookshop_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3jwb0hi0xivf6mo0jox3w4egs` (`user_id`),
  CONSTRAINT `FK3jwb0hi0xivf6mo0jox3w4egs` FOREIGN KEY (`user_id`) REFERENCES `bookshop_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_customer`
--

LOCK TABLES `bookshop_customer` WRITE;
/*!40000 ALTER TABLE `bookshop_customer` DISABLE KEYS */;
INSERT INTO `bookshop_customer` VALUES (1,2),(2,6);
/*!40000 ALTER TABLE `bookshop_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_image`
--

DROP TABLE IF EXISTS `bookshop_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_image`
--

LOCK TABLES `bookshop_image` WRITE;
/*!40000 ALTER TABLE `bookshop_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookshop_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_order`
--

DROP TABLE IF EXISTS `bookshop_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `reason_cancel` text COLLATE utf8_bin,
  `shipping_cost` decimal(19,2) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_bin DEFAULT 'PENDING',
  `total_money` decimal(19,2) DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2batdav9qytv2opafcrsv42p1` (`customer_id`),
  CONSTRAINT `FK2batdav9qytv2opafcrsv42p1` FOREIGN KEY (`customer_id`) REFERENCES `bookshop_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_order`
--

LOCK TABLES `bookshop_order` WRITE;
/*!40000 ALTER TABLE `bookshop_order` DISABLE KEYS */;
INSERT INTO `bookshop_order` VALUES (1,'2022-11-11 21:48:44.163000','2022-11-11 21:49:08.829000',NULL,21000.00,'CONFIRMED',831000.00,2);
/*!40000 ALTER TABLE `bookshop_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_order_detail`
--

DROP TABLE IF EXISTS `bookshop_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_order_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `discount` double DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `total` int DEFAULT NULL,
  `total_money` decimal(19,2) DEFAULT NULL,
  `book_id` bigint DEFAULT NULL,
  `bill_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKob08sx8iperqnack50d3hwsqr` (`book_id`),
  KEY `FKpyxuqdgw3e0l0tyd38fy2rewq` (`bill_id`),
  CONSTRAINT `FKob08sx8iperqnack50d3hwsqr` FOREIGN KEY (`book_id`) REFERENCES `bookshop_book` (`id`),
  CONSTRAINT `FKpyxuqdgw3e0l0tyd38fy2rewq` FOREIGN KEY (`bill_id`) REFERENCES `bookshop_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_order_detail`
--

LOCK TABLES `bookshop_order_detail` WRITE;
/*!40000 ALTER TABLE `bookshop_order_detail` DISABLE KEYS */;
INSERT INTO `bookshop_order_detail` VALUES (1,NULL,810000.00,1,810000.00,21,1);
/*!40000 ALTER TABLE `bookshop_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_public_company`
--

DROP TABLE IF EXISTS `bookshop_public_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_public_company` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modified_by` bigint DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `admin_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkw0wssqkae9dalcjpca9x05v9` (`admin_id`),
  CONSTRAINT `FKkw0wssqkae9dalcjpca9x05v9` FOREIGN KEY (`admin_id`) REFERENCES `bookshop_admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_public_company`
--

LOCK TABLES `bookshop_public_company` WRITE;
/*!40000 ALTER TABLE `bookshop_public_company` DISABLE KEYS */;
INSERT INTO `bookshop_public_company` VALUES (6,'2022-11-10 00:00:00.000000','nhà xuất bản trẻ','nha-xuat-ban-tre',NULL,NULL,4),(7,'2022-11-10 00:00:00.000000','nhà xuất kim đồng','nha-xuat-kim-dong',NULL,NULL,4),(8,'2022-11-10 00:00:00.000000','nhà xuất bản tổng hợp hồ chí minh','nha-xuat-ban-tong-hop-ho-chi-minh',NULL,NULL,4),(9,'2022-11-10 00:00:00.000000','nhà xuất bản phụ nữ việt nam','nha-xuat-ban-phu-nu-viet-nam',NULL,NULL,4),(10,'2022-11-10 00:00:00.000000','nhà xuất bản lao động','nha-xuat-ban-lao-dong',NULL,NULL,4);
/*!40000 ALTER TABLE `bookshop_public_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_rating`
--

DROP TABLE IF EXISTS `bookshop_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_rating` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rating_list` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `rating_star` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_rating`
--

LOCK TABLES `bookshop_rating` WRITE;
/*!40000 ALTER TABLE `bookshop_rating` DISABLE KEYS */;
INSERT INTO `bookshop_rating` VALUES (1,'0,0,0,0,0',0),(2,'0,0,0,0,0',0),(3,'0,0,0,0,0',0),(4,'0,0,0,0,0',0),(5,'0,0,0,0,0',0),(6,'0,0,0,0,0',0),(7,'0,0,0,0,0',0),(8,'0,0,0,0,0',0),(9,'0,0,0,0,0',0),(10,'0,0,0,0,0',0),(11,'0,0,0,0,0',0),(12,'0,0,0,0,0',0),(13,'0,0,0,0,0',0),(14,'0,0,0,0,0',0),(15,'0,0,0,0,0',0),(16,'0,0,0,0,0',0),(17,'0,0,0,0,0',0),(18,'0,0,0,0,0',0),(19,'0,0,0,0,0',0),(20,'0,0,0,0,0',0),(21,'0,0,0,0,0',0),(22,'0,0,0,0,0',0),(23,'0,0,0,0,0',0),(24,'0,0,0,0,0',0),(25,'0,0,0,0,0',0),(26,'0,0,0,0,0',0),(27,'0,0,0,0,0',0),(28,'0,0,0,0,0',0),(29,'0,0,0,0,0',0),(30,'0,0,0,0,0',0);
/*!40000 ALTER TABLE `bookshop_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_reviews`
--

DROP TABLE IF EXISTS `bookshop_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_reviews` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_bin,
  `create_date` datetime(6) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `star` int DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `book_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6b7khrg5a5aexjcm2nrejill1` (`book_id`),
  KEY `FK8mjpme5017g5hm2qb7sdlbdk8` (`user_id`),
  CONSTRAINT `FK6b7khrg5a5aexjcm2nrejill1` FOREIGN KEY (`book_id`) REFERENCES `bookshop_book` (`id`),
  CONSTRAINT `FK8mjpme5017g5hm2qb7sdlbdk8` FOREIGN KEY (`user_id`) REFERENCES `bookshop_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_reviews`
--

LOCK TABLES `bookshop_reviews` WRITE;
/*!40000 ALTER TABLE `bookshop_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookshop_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_reviews_images`
--

DROP TABLE IF EXISTS `bookshop_reviews_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_reviews_images` (
  `reviews_id` bigint NOT NULL,
  `images` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  KEY `FKn2rpkjiiamxweo6e1orttonyd` (`reviews_id`),
  CONSTRAINT `FKn2rpkjiiamxweo6e1orttonyd` FOREIGN KEY (`reviews_id`) REFERENCES `bookshop_reviews` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_reviews_images`
--

LOCK TABLES `bookshop_reviews_images` WRITE;
/*!40000 ALTER TABLE `bookshop_reviews_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookshop_reviews_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_role`
--

DROP TABLE IF EXISTS `bookshop_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKjx8rswfra4todmoatknw8umwc` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_role`
--

LOCK TABLES `bookshop_role` WRITE;
/*!40000 ALTER TABLE `bookshop_role` DISABLE KEYS */;
INSERT INTO `bookshop_role` VALUES (1,'2022-11-10 00:00:00.000000','khách hàng','khach-hang','ROLE_CUSTOMER'),(2,'2022-11-10 00:00:00.000000','quản trị toàn quyền','quan-tri-toan-quyen','ROLE_ADMIN_FULL'),(3,'2022-11-10 00:00:00.000000','quản trị sản phẩm','quan-tri-san-pham','ROLE_ADMIN_PRODUCT'),(4,'2022-11-10 00:00:00.000000','quản trị đơn hàng','quan-tri-don-hang','ADMIN_ORDER'),(5,'2022-11-10 00:00:00.000000','quản trị giới thiệu','quan-tri-gioi-thieu','ADMIN_REVIEWS');
/*!40000 ALTER TABLE `bookshop_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_sale`
--

DROP TABLE IF EXISTS `bookshop_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_sale` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `end_time` datetime(6) DEFAULT NULL,
  `modified_by` bigint DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `admin_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKk4686eeq7meyrq70ryeuwbmjd` (`admin_id`),
  CONSTRAINT `FKk4686eeq7meyrq70ryeuwbmjd` FOREIGN KEY (`admin_id`) REFERENCES `bookshop_admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_sale`
--

LOCK TABLES `bookshop_sale` WRITE;
/*!40000 ALTER TABLE `bookshop_sale` DISABLE KEYS */;
INSERT INTO `bookshop_sale` VALUES (1,'2022-11-12 09:13:48.004000','Khuyến mãi tháng 11','khuyen-mai-thang-11','https://res.cloudinary.com/truongdaihocsupham/image/upload/v1668219228/bookStore/file_oriiri.jpg',10,'2022-11-30 00:30:00.000000',NULL,'2022-11-12 09:13:48.004000','2022-11-12 09:12:00.000000',NULL);
/*!40000 ALTER TABLE `bookshop_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_user`
--

DROP TABLE IF EXISTS `bookshop_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK787ehmqd872js61xxmwgdptij` (`email`),
  KEY `FKnggo5qy4jcikk16wkuv7aptec` (`address_id`),
  CONSTRAINT `FKnggo5qy4jcikk16wkuv7aptec` FOREIGN KEY (`address_id`) REFERENCES `bookshop_address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_user`
--

LOCK TABLES `bookshop_user` WRITE;
/*!40000 ALTER TABLE `bookshop_user` DISABLE KEYS */;
INSERT INTO `bookshop_user` VALUES (1,'2022-11-10 00:00:00.000000','adminfull123@gmail.com','Huỳnh Bảo lộc','$2a$10$198ZxNYzEFLhwMMaOiE1reuBmjwMC7MJoY7kUWPgdqpSdpnTKl6Fa','0337041207',NULL,NULL,'2022-11-11 17:33:44.966000','admin',NULL),(2,'2022-11-10 00:00:00.000000','customer123@gmail.com','khách hàng','$2a$10$198ZxNYzEFLhwMMaOiE1reuBmjwMC7MJoY7kUWPgdqpSdpnTKl6Fa','0906946302',NULL,NULL,NULL,'customer',NULL),(3,'2022-11-10 00:00:00.000000','adminproduct123@gmail.com','quản trị sản phẩm','$2a$10$198ZxNYzEFLhwMMaOiE1reuBmjwMC7MJoY7kUWPgdqpSdpnTKl6Fa','0909909090',NULL,NULL,NULL,'admin',NULL),(4,'2022-11-10 00:00:00.000000','adminorder123@gmail.com','quản trị đơn hàng','$2a$10$198ZxNYzEFLhwMMaOiE1reuBmjwMC7MJoY7kUWPgdqpSdpnTKl6Fa','0778561789',NULL,NULL,NULL,'admin',NULL),(5,'2022-11-10 00:00:00.000000','adminreview123@gmail.com','quản trị giới thiệu','$2a$10$198ZxNYzEFLhwMMaOiE1reuBmjwMC7MJoY7kUWPgdqpSdpnTKl6Fa','0908982134',NULL,NULL,NULL,'admin',NULL),(6,'2022-11-11 17:35:41.766000','baoloc131201@gmail.com','Bảo Lộc Huỳnh',NULL,'0906946302','google','105632843681609687441','2022-11-11 21:37:42.330000','customer',1);
/*!40000 ALTER TABLE `bookshop_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_user_role`
--

DROP TABLE IF EXISTS `bookshop_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_user_role` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKsm019m0b0vd1iyht97yikqp7i` (`role_id`),
  CONSTRAINT `FK5if8p64dw2tfgic0m2tlunqrc` FOREIGN KEY (`user_id`) REFERENCES `bookshop_user` (`id`),
  CONSTRAINT `FKsm019m0b0vd1iyht97yikqp7i` FOREIGN KEY (`role_id`) REFERENCES `bookshop_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_user_role`
--

LOCK TABLES `bookshop_user_role` WRITE;
/*!40000 ALTER TABLE `bookshop_user_role` DISABLE KEYS */;
INSERT INTO `bookshop_user_role` VALUES (2,1),(6,1),(1,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `bookshop_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_verification_token`
--

DROP TABLE IF EXISTS `bookshop_verification_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop_verification_token` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `expiration_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKi2o7mb579nvx0f9gp4apwdqdq` (`code`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_verification_token`
--

LOCK TABLES `bookshop_verification_token` WRITE;
/*!40000 ALTER TABLE `bookshop_verification_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookshop_verification_token` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-15 11:22:36
