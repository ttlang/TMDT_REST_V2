CREATE DATABASE  IF NOT EXISTS `tmdt` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tmdt`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: tmdt
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bai_hoc`
--

DROP TABLE IF EXISTS `bai_hoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bai_hoc` (
  `ma_bai_hoc` varchar(50) NOT NULL,
  `tieu_de` varchar(100) DEFAULT NULL,
  `noi_dung` text,
  `ma_chuong_muc` varchar(50) DEFAULT NULL,
  `luot_xem` int(11) DEFAULT '0',
  PRIMARY KEY (`ma_bai_hoc`),
  KEY `fk_bai_hoc_chuong_muc_idx` (`ma_chuong_muc`),
  CONSTRAINT `fk_bai_hoc_chuong_muc` FOREIGN KEY (`ma_chuong_muc`) REFERENCES `chuong_muc` (`ma_chuong_muc`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bai_hoc`
--

LOCK TABLES `bai_hoc` WRITE;
/*!40000 ALTER TABLE `bai_hoc` DISABLE KEYS */;
INSERT INTO `bai_hoc` VALUES ('KH1CH1BH1','Giới thiệu về hệ điều hành android','Giúp người học có cái nhìn tổng quan về hệ điều hành andoroid.','KH1CH1',10),('KH1CH1BH2','Cấu hình máy tính & Hướng dẫn download và cài đặt Android Studio phiên bản mới nhất','hướng dẫn người dùng cấu hình và cài đặt môi trường lập trình','KH1CH1',100),('KH1CH1BH3','Tìm hiểu cấu trúc thư mục trong android','Cung cấp kiến trúc và của ứng dụng android','KH1CH1',2000),('KH1CH1BH4','Chạy ứng dụng Android đầu tiên','Khởi chạy ứng dụng đầu tiên với android','KH1CH1',123),('KH1CH1BH5','Tổng quan về Layout và View trong android','Tổng quan về các thành phần đầu tiên của android','KH1CH1',123123),('KH1CH2BH6','Hướng dẫn sử dụng LinearLayout','Giúp học viên sử dụng thành thạo LinearLayout trong android','KH1CH2',302);
/*!40000 ALTER TABLE `bai_hoc` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger tg_ma_bai_hoc_insert
before insert on bai_hoc for each row
begin 
declare v_new_ma_bai_hoc varchar(50) default null;

select concat(new.ma_chuong_muc,concat('BH',(select 1+(select count(*) from bai_hoc)))) into v_new_ma_bai_hoc from dual;

/*
 if ma_nguoi_dung ton tai thi lay ma nguoi dung cuoi cung + 1
*/
if (select exists (select 1 from bai_hoc b where b.ma_bai_hoc =v_new_ma_bai_hoc)) then

		select concat(new.ma_chuong_muc,concat('BH',(select substring(b.ma_bai_hoc from char_length(b.ma_bai_hoc)) +1 from 
        
        bai_hoc b order by b.ma_bai_hoc desc limit 1)))into v_new_ma_bai_hoc from dual;
    end if	;
set new.ma_bai_hoc=v_new_ma_bai_hoc;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `binh_luan`
--

DROP TABLE IF EXISTS `binh_luan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `binh_luan` (
  `ma_binh_luan` varchar(50) NOT NULL,
  `ma_bai_hoc` varchar(50) DEFAULT NULL,
  `ma_nguoi_dung` varchar(50) DEFAULT NULL,
  `noi_dung` text,
  `thoi_gian_binh_luan` datetime DEFAULT NULL,
  `trang_thai` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`ma_binh_luan`),
  KEY `fk_binh_luan_bai_hoc_idx` (`ma_bai_hoc`),
  KEY `fk_binh_luan_nguoi_dung_idx` (`ma_nguoi_dung`),
  CONSTRAINT `fk_binh_luan_bai_hoc` FOREIGN KEY (`ma_bai_hoc`) REFERENCES `bai_hoc` (`ma_bai_hoc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_binh_luan_nguoi_dung` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binh_luan`
--

LOCK TABLES `binh_luan` WRITE;
/*!40000 ALTER TABLE `binh_luan` DISABLE KEYS */;
INSERT INTO `binh_luan` VALUES ('KH1CH1BH1CM1','KH1CH1BH1','ND1','bài học rất tốt','2017-11-29 15:21:18',1),('KH1CH1BH3CM2','KH1CH1BH3','ND2','bài học rất hay','2017-11-29 15:22:21',1),('KH1CH2BH6CM3','KH1CH2BH6','ND3','bài học rất chất lượng','2017-11-29 15:25:07',1);
/*!40000 ALTER TABLE `binh_luan` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger tg_ma_binh_luan_insert
before insert on binh_luan for each row
begin 
declare v_new_ma_binh_luan varchar(50) default null;

select concat(new.ma_bai_hoc,concat('CM',(select 1+(select count(*) from binh_luan)))) into v_new_ma_binh_luan from dual;

/*
 neu ma_nguoi_dung ton tai thi lay ma nguoi dung cuoi cung + 1
*/
if (select exists (select 1 from binh_luan b where b.ma_binh_luan =v_new_ma_binh_luan)) then

		select concat(new.ma_bai_hoc,concat('CM',(select substring(b.ma_binh_luan from char_length(b.ma_binh_luan)) +1 from 
        
        binh_luan b order by b.ma_binh_luan desc limit 1)))into v_new_ma_binh_luan from dual;
    end if	;
set new.ma_binh_luan=v_new_ma_binh_luan;
set new.thoi_gian_binh_luan = now();

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `chu_de`
--

DROP TABLE IF EXISTS `chu_de`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chu_de` (
  `ma_chu_de` varchar(50) NOT NULL,
  `tieu_de` varchar(100) DEFAULT NULL,
  `mo_ta` text,
  `trang_thai` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ma_chu_de`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chu_de`
--

LOCK TABLES `chu_de` WRITE;
/*!40000 ALTER TABLE `chu_de` DISABLE KEYS */;
INSERT INTO `chu_de` VALUES ('CD1','Lập trình căn bản','Lập trình căn bản cung cấp các khóa học cho các học viên với các kiến thức căn bản nhất',1),('CD2','Lập trình di động','Lập trình di động cung cấp các khóa học trên các nền tảng di động như android, IOS, Windowphone',1);
/*!40000 ALTER TABLE `chu_de` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger tg_ch_de_insert
before insert on chu_de for each row
begin 
declare v_new_ma_chu_de varchar(50) default null;
select concat('CD',(select 1+(select count(*) from chu_de))) into v_new_ma_chu_de from dual;
/*
 if ma_nguoi_dung ton tai thi lay ma nguoi dung cuoi cung + 1
*/
if (select exists (select 1 from chu_de c where c.ma_chu_de =v_new_ma_chu_de)) then
		select (select substring(c.ma_chu_de from 3) +1 from chu_de c order by c.ma_chu_de desc limit 1) into v_new_ma_chu_de from dual;
    end if	;
set new.ma_chu_de=v_new_ma_chu_de;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `chuong_muc`
--

DROP TABLE IF EXISTS `chuong_muc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chuong_muc` (
  `ma_chuong_muc` varchar(50) NOT NULL,
  `ma_khoa_hoc` varchar(50) DEFAULT NULL,
  `tieu_de` varchar(200) DEFAULT NULL,
  `noi_dung` varchar(200) DEFAULT NULL,
  `tom_tat` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ma_chuong_muc`),
  KEY `fk_chuong_muc_khoa_hoc_idx` (`ma_khoa_hoc`),
  CONSTRAINT `fk_chuong_muc_khoa_hoc` FOREIGN KEY (`ma_khoa_hoc`) REFERENCES `khoa_hoc` (`ma_khoa_hoc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuong_muc`
--

LOCK TABLES `chuong_muc` WRITE;
/*!40000 ALTER TABLE `chuong_muc` DISABLE KEYS */;
INSERT INTO `chuong_muc` VALUES ('KH1CH1','KH1','Tổng quan về Android','Cung cấp cái nhìn tổng quan về android','Cung cấp cái nhìn tổng quan về android'),('KH1CH2','KH1','Hệ thống Layout và View trong android','Hệ thống Layout và View trong android','Hệ thống Layout và View trong android'),('KH1CH3','KH1','Tương tác giao diện và cơ sở dữ liệu','Tương tác giao diện và cơ sở dữ liệu','Tương tác giao diện và cơ sở dữ liệu'),('KH1CH4','KH1','Đa tiến trình trong Android','Đa tiến trình trong Android','Đa tiến trình trong Android');
/*!40000 ALTER TABLE `chuong_muc` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger tg_ma_chuong_muc_insert
before insert on chuong_muc for each row
begin 
declare v_new_ma_chuong_muc varchar(50) default null;

select concat(new.ma_khoa_hoc,concat('CH',(select 1+(select count(*) from chuong_muc)))) into v_new_ma_chuong_muc from dual;

/*
 if ma_nguoi_dung ton tai thi lay ma nguoi dung cuoi cung + 1
*/
if (select exists (select 1 from chuong_muc c where c.ma_chuong_muc =v_new_ma_chuong_muc)) then

		select concat(new.ma_khoa_hoc,concat('CH',(select substring(n.ma_chuong_muc from char_length(n.ma_chuong_muc)) +1 from 
        
        chuong_muc n order by n.ma_chuong_muc desc limit 1)))into v_new_ma_chuong_muc from dual;
    end if	;
set new.ma_chuong_muc=v_new_ma_chuong_muc;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `dang_ky_khoa_hoc`
--

DROP TABLE IF EXISTS `dang_ky_khoa_hoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dang_ky_khoa_hoc` (
  `ma_khoa_hoc` varchar(50) NOT NULL,
  `ma_nguoi_dung` varchar(50) DEFAULT NULL,
  `ngay_dang_ky` datetime DEFAULT NULL,
  PRIMARY KEY (`ma_khoa_hoc`),
  KEY `fk_dang_ki_khoa_hoc_nguoi_dung_idx` (`ma_nguoi_dung`),
  CONSTRAINT `fk_dang_ki_khoa_hoc` FOREIGN KEY (`ma_khoa_hoc`) REFERENCES `khoa_hoc` (`ma_khoa_hoc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_dang_ki_khoa_hoc_nguoi_dung` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dang_ky_khoa_hoc`
--

LOCK TABLES `dang_ky_khoa_hoc` WRITE;
/*!40000 ALTER TABLE `dang_ky_khoa_hoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `dang_ky_khoa_hoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dang_ky_xem_sau`
--

DROP TABLE IF EXISTS `dang_ky_xem_sau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dang_ky_xem_sau` (
  `ma_nguoi_dung` varchar(50) NOT NULL,
  `ma_khoa_hoc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ma_nguoi_dung`),
  KEY `fk_dang_ky_xem_sau_khoa_hoc_idx` (`ma_khoa_hoc`),
  CONSTRAINT `fk_dang_ki_xem_sau_nguoi_dung` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_dang_ky_xem_sau_khoa_hoc` FOREIGN KEY (`ma_khoa_hoc`) REFERENCES `khoa_hoc` (`ma_khoa_hoc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dang_ky_xem_sau`
--

LOCK TABLES `dang_ky_xem_sau` WRITE;
/*!40000 ALTER TABLE `dang_ky_xem_sau` DISABLE KEYS */;
/*!40000 ALTER TABLE `dang_ky_xem_sau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dinh_kem_bai_hoc`
--

DROP TABLE IF EXISTS `dinh_kem_bai_hoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dinh_kem_bai_hoc` (
  `ma_dinh_kem_bai_hoc` varchar(50) NOT NULL,
  `ma_bai_hoc` varchar(50) DEFAULT NULL,
  `noi_dung` text,
  `ngay_them` datetime DEFAULT NULL,
  PRIMARY KEY (`ma_dinh_kem_bai_hoc`),
  KEY `fk_dinh_kem_bai_hoc_bai_hoc_idx` (`ma_bai_hoc`),
  CONSTRAINT `fk_dinh_kem_bai_hoc_bai_hoc` FOREIGN KEY (`ma_bai_hoc`) REFERENCES `bai_hoc` (`ma_bai_hoc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dinh_kem_bai_hoc`
--

LOCK TABLES `dinh_kem_bai_hoc` WRITE;
/*!40000 ALTER TABLE `dinh_kem_bai_hoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `dinh_kem_bai_hoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hinh_thuc_giao_dich`
--

DROP TABLE IF EXISTS `hinh_thuc_giao_dich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hinh_thuc_giao_dich` (
  `ma_hinh_thuc_giao_dich` varchar(50) NOT NULL,
  `ten_hinh_thuc_giao_dich` varchar(100) DEFAULT NULL,
  `mo_ta` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ma_hinh_thuc_giao_dich`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hinh_thuc_giao_dich`
--

LOCK TABLES `hinh_thuc_giao_dich` WRITE;
/*!40000 ALTER TABLE `hinh_thuc_giao_dich` DISABLE KEYS */;
/*!40000 ALTER TABLE `hinh_thuc_giao_dich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khoa_hoc`
--

DROP TABLE IF EXISTS `khoa_hoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `khoa_hoc` (
  `ma_khoa_hoc` varchar(50) NOT NULL,
  `tieu_de` varchar(200) DEFAULT NULL,
  `mo_ta` text,
  `ma_nguoi_dung` varchar(50) DEFAULT NULL COMMENT 'mã người dùng tạo ra khóa học',
  `ngay_tao` datetime DEFAULT NULL,
  `don_gia` int(11) DEFAULT NULL,
  `ma_loai_khoa_hoc` varchar(50) DEFAULT NULL,
  `id_admin_duyet` varchar(50) DEFAULT NULL COMMENT 'mã admin duyệt khóa học',
  `ma_chu_de` varchar(50) DEFAULT NULL,
  `trang_thai` int(11) DEFAULT '0' COMMENT '0:chua duyet 1:duyet 2:khac',
  `ngay_duyet` datetime DEFAULT NULL,
  `luot_truy_cap` int(11) DEFAULT '0',
  `anh_dai_dien` varchar(200) DEFAULT NULL,
  `chi_tiet_khoa_hoc` text,
  PRIMARY KEY (`ma_khoa_hoc`),
  KEY `fk_khoa_hoc_chu_de_idx` (`ma_chu_de`),
  KEY `fk_khoa_hoc_loai_khoa_hoc_idx` (`ma_loai_khoa_hoc`),
  KEY `fk_khoa_hoc_nguoi_dung_idx` (`ma_nguoi_dung`),
  KEY `fk_khoa_hoc_nguoi_dung_duyet_idx` (`id_admin_duyet`),
  CONSTRAINT `fk_khoa_hoc_chu_de` FOREIGN KEY (`ma_chu_de`) REFERENCES `chu_de` (`ma_chu_de`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_khoa_hoc_loai_khoa_hoc` FOREIGN KEY (`ma_loai_khoa_hoc`) REFERENCES `loai_khoa_hoc` (`ma_loai_khoa_hoc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_khoa_hoc_nguoi_dung` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_khoa_hoc_nguoi_dung_duyet` FOREIGN KEY (`id_admin_duyet`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khoa_hoc`
--

LOCK TABLES `khoa_hoc` WRITE;
/*!40000 ALTER TABLE `khoa_hoc` DISABLE KEYS */;
INSERT INTO `khoa_hoc` VALUES ('KH1','Lập trình Android cơ bản','Lập trình Android từ căn bản đến nâng cao','ND1','2017-11-24 23:53:35',500000,'CO','ND2','CD2',1,'2017-11-25 23:53:35',200,'https://drive.google.com/open?id=0B27mfRY62YKZWFUyME44WjdiUTg','<p>Ngày nay thị phần của các thiết bị chạy hệ điều hành Android đã vượt qua các thiết bị chạy hệ điều khác , để trở thành hệ điều hành được mọi người yêu thích nhất, nhưng để góp phần vào sự phát triển cũng như sự thành công của hệ điều hành Android phải kể đến các ứng dụng mà nó mang lại cho cuộc sống hằng ngày của chúng ta. Bạn chưa từng ngủ dậy muộn nhờ ứng dụng báo thức, với Google Map bạn không còn phải ngại ngùng khi phải hỏi đường người khác hay bạn thư giản với những bản nhạc Ballad ngọt ngào. Có khi nào bạn đã tự hỏi họ đã làm những ứng dụng đó như thế nào chưa ?, có khi nào bạn đã từng ao ước làm cho mình một ứng dụng để có thể khoe với bạn bè hoặc phục vụ cho cộng đồng với nhãn hiệu make by me chưa ? , hoặc bạn muốn làm để phục vụ cho công ty. Nếu bạn đã nghĩ đến những điều đó và muốn thực hiện nó những lại không biết phải bắt đầu từ đâu không biết nên làm thế nào hoặc đối với những bạn tự tim hiểu rào cản ngôn ngữ luôn là trở ngại lớn đối với các bạn.</p>'),('KH2','Cấu trúc dữ liệu & giải thuật','Cấu trúc dữ liệu & giải thuật qua ví dụ kinh điển - C++ nền tảng, nâng cao, phỏng vấn xin việc','ND2','2017-11-29 15:51:52',1600000,'CO','ND2','CD1',0,NULL,0,'https://drive.google.com/open?id=0B27mfRY62YKZWFUyME44WjdiUTg','<div class=\"GTKH\">\r <ul>\r<li><strong>Giới thiệu về Cấu trúc dữ liệu và thuật toán:</strong></li>\r </ul>\r \r <p>Thực hiện một đề án tin học là chuyển bài toán thực tế thành bài toán có thể giải quyết trên máy tính. Một bài toán thực tế bất kỳ đều bao gồm các đối tượng dữ liệu và các yêu cầu xử lý trên những đối tượng đó. Vì thế, để xây dựng một mô hình tin học phản ánh được bài toán thực tế cần chú trọng đến hai vấn đề :</p>\r \r <ul>\r 	<li><strong>Tổ chức biểu diễn các đối tượng thực tế :</strong></li>\r </ul>\r \r <p>Các thành phần dữ liệu thực tế đa dạng, phong phú và thường chứa đựng những quan hệ nào đó với nhau, do đó trong mô hình tin học của bài toán, cần phải tổ chức , xây dựng các cấu trúc thích hợp nhất sao cho vừa có thể phản ánh chính xác các dữ liệu thực tế này, vừa có thể dễ dàng dùng máy tính để xử lý. Công việc này được gọi là xây dựng <strong><em>cấu trúc dữ liệu</em> </strong>cho bài toán.</p>\r \r <ul>\r 	<li><strong>Xây dựng các thao tác xử lý dữ liệu:</strong></li>\r </ul>\r \r <p>Từ những yêu cầu xử lý thực tế, cần tìm ra các giải thuật tương ứng để xác định trình tự các thao tác máy tính phải thi hành để cho ra kết quả mong muốn, đây là bước xây dựng <strong><em>giải thuật </em></strong>cho bài toán. Tuy nhiên khi giải quyết một bài toán trên máy tính, chúng ta thường có khuynh hướng chỉ chú trọng đến việc xây dựng giải thuật mà quên đi tầm quan trọng của việc tổ chức dữ liệu trong bài toán. Giải thuật phản ánh các phép xử lý , còn đối tượng xử lý của giải thuật lại là dữ liệu, chính dữ liệu chứa đựng các thông tin cần thiết để thực hiện giải thuật. Để xác định được giải thuật phù hợp cần phải biết nó tác động đến loại dữ liệu nào (ví dụ để làm nhuyễn các hạt đậu , người ta dùng cách xay chứ không băm bằng dao, vì đậu sẽ văng ra ngoài) và khi chọn lựa cấu trúc dữ liệu cũng cần phải hiểu rõ những thao tác nào sẽ tác động đến nó (ví dụ để biểu diễn các điểm số của sinh viên người ta dùng số thực thay vì chuỗi ký tự vì còn phải thực hiện thao tác tính trung bình từ những điểm số đó). Như vậy trong một đề án tin học, giải thuật và cấu trúc dữ liệu có mối quan hệ chặt chẽ với nhau, được thể hiện qua công thức :</p>\r \r <h3 align=\"center\"><span style=\"color: #ff0000;\"><strong>Cấu trúc dữ liệu + Giải thuật = Chương trình</strong></span></h3>\r \r <p>Với một cấu trúc dữ liệu đã chọn, sẽ có những giải thuật tương ứng, phù hợp. Khi cấu trúc dữ liệu thay đổi thường giải thuật cũng phải thay đổi theo để tránh việc xử lý gượng ép, thiếu tự nhiên trên một cấu trúc không phù hợp. Hơn nữa, một cấu trúc dữ liệu tốt sẽ giúp giải thuật xử lý trên đó có thể phát huy tác dụng tốt hơn, vừa đáp ứng nhanh vừa tiết kiệm vật tư, giải thuật cũng dễ hiễu và đơn giản hơn.</p>\r \r <ul>\r 	<li>Đây là khoá học rất nền tảng và là bước đệm để các bạn tiến sâu hơn trong nghề nghiệp lập trình của mình. Các bạn học tốt môn này, các bạn nắm được các tư duy thuật toản, tư duy giải thuật, các bạn sẽ là một lập trình viên giỏi. Các tư duy này giúp bạn vận dụng để giải quyết các công việc, các bài toán, các nghiệp vụ trong tất cả phần mềm sau này</li>\r 	<li>Việc học Cấu trúc dữ liệu và Thuật toán giúp bạn có một cái nhìn chuyên sâu, tối ưu hoá được nhiều vấn đề trong lập trình. Việc tối ưu hoá là cực kì quan trọng để các bạn xây dựng các phần mềm chạy nhanh, hiệu quả.</li>\r 	<li>Trong hầu hết các bài <strong><span style=\"color: #ff0000;\">PHỎNG VẤN</span></strong> để tuyển chọn người tài, các công ty đều kiểm tra khả năng xử lý và tư duy của các bạn thông qua các trường hợp từ môn học này. Một lập trình nhanh nhạy, một ứng cử viên sáng giá cho một vị trí tại công ty phụ thuộc vào khả năng bạn xử lý các vấn đề, tư duy giải quyết vấn đề dựa vào các thuật toán, thuật giải và tối ưu chương trình.</li>\r 	<li>Khoá học được trình bày rất chi tiết với hầu hết các thuật toán và giải thuật thường gặp trong thực tế qua nhiều ví dụ minh hoạ dễ hiểu và vận dụng</li>\r 	<li>Các thuật toán được trình bày, minh hoạ trực quan qua hệ thống <a href=\"http://algo.myclass.vn\" target=\"_blank\">http://algo.myclass.vn</a>&nbsp;để các bạn học một cách dễ hiểu nhất.</li>\r 	<li><strong>CẤU TRÚC DỮ LIỆU VÀ THUẬT TOÁN LUÔN CẦN THIẾT TRONG SUỐT CUỘC ĐỜI CỦA MỘT LẬP TRÌNH VIÊN (VÍ DỤ CÁC THUẬT TOÁN CŨNG CÓ TRONG PHỎNG VẤN CỦA GOOGLE :&nbsp;<a href=\"https://grouplens.org/blog/preparing-for-a-google-technical-interview/)\" target=\"_blank\">https://grouplens.org/blog/preparing-for-a-google-technical-interview/)</a></strong></li>\r </ul>\r \r <p><span style=\"font-weight: bold; color: rgb(0, 128, 0);\">***** ĐẶC BIỆT HƠN CẢ, TÔI CŨNG SẼ BÀN SÂU VỀ CÁC ƯU NHƯỢC ĐIỂM, CẢI TIẾN CÁC THUẬT TOÁN, <span style=\"color: #ff0000;\">BÀN LUẬN VỀ CÁC VẤN ĐỀ</span> TRONG CUỐN SÁCH CỰC KÌ NỔI TIẾNG VỀ CẤU TRÚC DỮ LIỆU VÀ THUẬT TOÁN:</span>&nbsp;<span style=\"color: #ff0000;\"><strong>\"Data Structures and Algorithms Made Easy: Data Structure and Algorithmic Puzzles by Karumanchi, Narasimha\" - xuất bản năm 2011 với gần 90.000 lượt xuất bản khắp thế giới.</strong></span></p>\r \r <p><span style=\"font-weight: bold; color: rgb(0, 128, 0);\">Rất nhiều công ty nổi tiếng sử dụng các Problem trong này để làm câu hỏi phỏng vấn các ứng cử viên của mình.</span>&nbsp;<strong><a href=\"https://www.amazon.com/Data-Structures-Algorithms-Made-Easy/dp/B00RKQJP0I/ref=sr_1_9?s=books&amp;ie=UTF8&amp;qid=1486571115&amp;sr=1-9&amp;keywords=Data+Structures+and+Algorithms+Made+Easy\" target=\"_blank\">Link sách trên Amazon</a></strong><img alt=\"cau truc du lieu va giai thuat - myclass.vn\" class=\"aligncenter\" height=\"499\" src=\"https://images-na.ssl-images-amazon.com/images/I/51RiQhVgO9L._SX384_BO1,204,203,200_.jpg\" width=\"386\"></p>\r         </div>');
/*!40000 ALTER TABLE `khoa_hoc` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger tg_khoa_hoc_insert
before insert on tmdt.khoa_hoc for each row
begin 
declare v_new_ma_khoa_hoc varchar(50) default null;
select concat('KH',(select 1+(select count(*) from khoa_hoc))) into v_new_ma_khoa_hoc from dual;
/*
 if ma_nguoi_dung ton tai thi lay ma nguoi dung cuoi cung + 1
*/
if (select exists (select 1 from khoa_hoc k where k.ma_khoa_hoc =v_new_ma_khoa_hoc)) then
		select concat('KH',(select substring(n.ma_khoa_hoc from 3) +1 from 
       khoa_hoc k order by k.ma_khoa_hoc desc limit 1) )into v_new_ma_khoa_hoc from dual;
    end if	;
set new.ma_khoa_hoc=v_new_ma_khoa_hoc;
set new.ngay_tao = now();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `lich_su_giao_dich`
--

DROP TABLE IF EXISTS `lich_su_giao_dich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lich_su_giao_dich` (
  `ma_lich_su_giao_dich` varchar(50) NOT NULL,
  `ngay_giao_dich` datetime DEFAULT NULL,
  `no` int(11) DEFAULT NULL,
  `ma_hinh_thuc_giao_dich` varchar(50) DEFAULT NULL,
  `co` int(11) DEFAULT NULL,
  `ma_nguoi_dung` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ma_lich_su_giao_dich`),
  KEY `fk_lich_su_giao_dich_hinh_thuc_giao_dich_idx` (`ma_hinh_thuc_giao_dich`),
  KEY `fk_lich_su_giao_dich_nguoi_dung_idx` (`ma_nguoi_dung`),
  CONSTRAINT `fk_lich_su_giao_dich_hinh_thuc_giao_dich` FOREIGN KEY (`ma_hinh_thuc_giao_dich`) REFERENCES `hinh_thuc_giao_dich` (`ma_hinh_thuc_giao_dich`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lich_su_giao_dich_nguoi_dung` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lich_su_giao_dich`
--

LOCK TABLES `lich_su_giao_dich` WRITE;
/*!40000 ALTER TABLE `lich_su_giao_dich` DISABLE KEYS */;
/*!40000 ALTER TABLE `lich_su_giao_dich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai_khoa_hoc`
--

DROP TABLE IF EXISTS `loai_khoa_hoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loai_khoa_hoc` (
  `ma_loai_khoa_hoc` varchar(50) NOT NULL,
  `tieu_de` varchar(200) NOT NULL,
  `mo_ta` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ma_loai_khoa_hoc`),
  UNIQUE KEY `ma_loai_khoa_hoc_UNIQUE` (`ma_loai_khoa_hoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai_khoa_hoc`
--

LOCK TABLES `loai_khoa_hoc` WRITE;
/*!40000 ALTER TABLE `loai_khoa_hoc` DISABLE KEYS */;
INSERT INTO `loai_khoa_hoc` VALUES ('CO','Thương mại hóa','Khóa học mang hình thức thương mại'),('NCO','Phi thương mại','khóa học miễn phí');
/*!40000 ALTER TABLE `loai_khoa_hoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoi_dung`
--

DROP TABLE IF EXISTS `nguoi_dung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nguoi_dung` (
  `ma_nguoi_dung` varchar(50) NOT NULL,
  `ten_nguoi_dung` varchar(100) DEFAULT NULL,
  `ngay_dang_ky` datetime DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `anh_dai_dien` varchar(2000) DEFAULT NULL,
  `mat_khau` varchar(100) NOT NULL,
  `diem` int(11) DEFAULT '0',
  `trang_thai` int(5) DEFAULT '0',
  `dia_chi` varchar(2000) DEFAULT NULL,
  `sdt` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ma_nguoi_dung`),
  UNIQUE KEY `ma_nguoi_dung_UNIQUE` (`ma_nguoi_dung`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoi_dung`
--

LOCK TABLES `nguoi_dung` WRITE;
/*!40000 ALTER TABLE `nguoi_dung` DISABLE KEYS */;
INSERT INTO `nguoi_dung` VALUES ('ND1','Trương Tam Lang','2017-11-24 23:53:35','lang.tt16@gmail.com','https://drive.google.com/open?id=0B27mfRY62YKZRDNxWWZHdl9aUjA','$2a$10$P5YxtTn4ZwL6ftpn2/XGbOaxxDiDas9k4wZHxFpTc.3eKLxwCEQyS',0,1,'Đồng Tháp','01642222992'),('ND2','Nguyễn Tấn Phát','2017-11-24 23:53:35','cnttk40@gmail.com','https://drive.google.com/open?id=0B27mfRY62YKZRDNxWWZHdl9aUjA','$2a$10$mfu0SBSVE0s9erldFAP.0.BZJ4KXCO3ML0d5hnPj3SNLEKoA1S4Oq',0,1,'Bến Tre','01642222992'),('ND3','Trần Văn Thắng','2017-11-29 13:56:36','ttlang162@gmail.com','https://drive.google.com/open?id=0B27mfRY62YKZRDNxWWZHdl9aUjA','$2a$10$yLPN1Dh.qNR02TxGqr3e2ecaGih5vFdGTwSe2bfRIT3malj./Hw8C',0,1,'Thủ Đức','01642222992'),('ND4','Nguyễn Tấn Phát','2017-11-29 13:56:36','ttlang163@gmail.com','https://drive.google.com/open?id=0B27mfRY62YKZRDNxWWZHdl9aUjA','$2a$10$/SmRzPfUedG4sfJQ8eoHNesnug3gnqazrIyW9gXoeqeEpDIGAtTAC',0,0,'HCM','01642222992');
/*!40000 ALTER TABLE `nguoi_dung` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger tg_ma_nguoi_dung_insert
before insert on tmdt.nguoi_dung for each row
begin 
declare v_new_ma_nguoi_dung varchar(50) default null;
select concat('ND',(select 1+(select count(*) from nguoi_dung))) into v_new_ma_nguoi_dung from dual;
/*
 if ma_nguoi_dung ton tai thi lay ma nguoi dung cuoi cung + 1
*/
if (select exists (select 1 from nguoi_dung n where n.ma_nguoi_dung =v_new_ma_nguoi_dung)) then
		select concat('ND',(select substring(n.ma_nguoi_dung from 3) +1 from 
        nguoi_dung n order by n.ma_nguoi_dung desc limit 1) )into v_new_ma_nguoi_dung from dual;
    end if	;
set new.ma_nguoi_dung=v_new_ma_nguoi_dung;
set new.ngay_dang_ky = now();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger tg_nguoi_dung_add_quyen_truy_cap 
after insert on tmdt.nguoi_dung for each row 
begin
	insert into quyen_truy_cap value (new.ma_nguoi_dung,1);
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger tg_nguoi_dung_add_ngay_cap_nhat_mk 
 after insert  on tmdt.nguoi_dung for each row
 begin
	insert into nguoi_dung_cn(ma_nguoi_dung,ngay_cap_nhat_mk) values (new.ma_nguoi_dung,now());
 end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger tg_nguoi_dung_add_ngay_cap_nhat_mk_update
after update on tmdt.nguoi_dung for each row
begin
if new.mat_khau <> old.mat_khau then
	insert into nguoi_dung_cn(ma_nguoi_dung,ngay_cap_nhat_mk) values (new.ma_nguoi_dung,now());
end if ;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `nguoi_dung_cn`
--

DROP TABLE IF EXISTS `nguoi_dung_cn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nguoi_dung_cn` (
  `ma_nguoi_dung` varchar(50) NOT NULL,
  `key_reset` varchar(200) DEFAULT NULL,
  `ngay_cap_nhat_mk` datetime DEFAULT NULL,
  UNIQUE KEY `key_reset_UNIQUE` (`key_reset`),
  KEY `fk_nguoi_dung` (`ma_nguoi_dung`),
  CONSTRAINT `fk_nguoi_dung` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoi_dung_cn`
--

LOCK TABLES `nguoi_dung_cn` WRITE;
/*!40000 ALTER TABLE `nguoi_dung_cn` DISABLE KEYS */;
INSERT INTO `nguoi_dung_cn` VALUES ('ND1',NULL,'2017-11-25 11:27:49'),('ND1',NULL,'2017-11-25 11:28:44'),('ND2',NULL,'2017-11-27 08:10:32'),('ND2',NULL,'2017-11-27 08:10:32'),('ND1',NULL,'2017-11-28 01:02:20'),('ND1','8J/KJVtO3x6IQUolNbJ/3g_L9/BLLHJ/nfimQdNQmKN5g_nO0d8K+IHoXOYTzfik8ImA',NULL),('ND1','8J/KJVtO3x6IQUolNbJ/3g_L9/BLLHJ/nfimQdNQmKN5g_dwmESMjsmXF6AFM2oo5i9Q',NULL),('ND3',NULL,'2017-11-28 12:02:37'),('ND1',NULL,'2017-11-28 12:58:24'),('ND1',NULL,'2017-11-28 13:18:57'),('ND1',NULL,'2017-11-28 13:31:05'),('ND4',NULL,'2017-11-29 13:56:36');
/*!40000 ALTER TABLE `nguoi_dung_cn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quyen`
--

DROP TABLE IF EXISTS `quyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quyen` (
  `ma_quyen` int(11) NOT NULL AUTO_INCREMENT,
  `ten_quyen` varchar(100) NOT NULL,
  PRIMARY KEY (`ma_quyen`),
  UNIQUE KEY `ma_quyen_UNIQUE` (`ma_quyen`),
  UNIQUE KEY `ten_quyen_UNIQUE` (`ten_quyen`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quyen`
--

LOCK TABLES `quyen` WRITE;
/*!40000 ALTER TABLE `quyen` DISABLE KEYS */;
INSERT INTO `quyen` VALUES (2,'ROLE_ADMIN'),(1,'ROLE_USER');
/*!40000 ALTER TABLE `quyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quyen_truy_cap`
--

DROP TABLE IF EXISTS `quyen_truy_cap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quyen_truy_cap` (
  `ma_nguoi_dung` varchar(50) NOT NULL,
  `ma_quyen` int(11) NOT NULL,
  PRIMARY KEY (`ma_nguoi_dung`,`ma_quyen`),
  KEY `fk_quyen_truy_cap_quyen_idx` (`ma_quyen`),
  CONSTRAINT `fk_quyen_truy_cap_nguoi_dung` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_quyen_truy_cap_quyen` FOREIGN KEY (`ma_quyen`) REFERENCES `quyen` (`ma_quyen`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quyen_truy_cap`
--

LOCK TABLES `quyen_truy_cap` WRITE;
/*!40000 ALTER TABLE `quyen_truy_cap` DISABLE KEYS */;
INSERT INTO `quyen_truy_cap` VALUES ('ND1',1),('ND2',1),('ND3',1),('ND4',1),('ND1',2);
/*!40000 ALTER TABLE `quyen_truy_cap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'tmdt'
--
/*!50003 DROP PROCEDURE IF EXISTS `change_mat_khau_nguoi_dung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_mat_khau_nguoi_dung`(IN p_ma_nguoi_dung varchar(50), IN p_mat_khau_moi varchar(100),OUT result integer)
begin
update nguoi_dung set mat_khau =p_mat_khau_moi where ma_nguoi_dung =p_ma_nguoi_dung;
select row_count() into result from dual;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `change_trang_thai_nguoi_dung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_trang_thai_nguoi_dung`(IN p_ma_nguoi_dung varchar(50),IN p_trang_thai_moi integer, OUT result integer)
begin
	update nguoi_dung set trang_thai = p_trang_thai_moi where ma_nguoi_dung =p_ma_nguoi_dung;
    select row_count() into result from dual;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_nguoi_dung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_nguoi_dung`(IN p_ten_nguoi_dung varchar(100), IN p_email varchar(100), IN p_mat_khau varchar(100),out result integer)
begin
	insert into nguoi_dung(ten_nguoi_dung,email,mat_khau) values (p_ten_nguoi_dung,p_email,p_mat_khau);
    
    select row_count() into result from dual;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_key_reset_by_ma_nguoi_dung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_key_reset_by_ma_nguoi_dung`(IN p_ma_nguoi_dung varchar(50))
begin 
	select n.key_reset from nguoi_dung_cn n where n.ma_nguoi_dung =p_ma_nguoi_dung  and n.key_reset is not null;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_ngay_cap_nhat_mk_by_ma_nguoi_dung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_ngay_cap_nhat_mk_by_ma_nguoi_dung`(IN p_ma_nguoi_dung varchar(50))
begin
	select n.ngay_cap_nhat_mk from nguoi_dung_cn n where n.ma_nguoi_dung=p_ma_nguoi_dung order by n.ngay_cap_nhat_mk desc limit 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_nguoi_dung_by_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_nguoi_dung_by_email`(IN p_email varchar(50))
begin
	select * from nguoi_dung n where n.email =p_email;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_nguoi_dung_by_ma_nguoi_dung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_nguoi_dung_by_ma_nguoi_dung`(IN p_ma_nguoi_dung varchar(50))
begin
	select * from nguoi_dung n where n.ma_nguoi_dung =p_ma_nguoi_dung;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_nguoi_dung_quyen_by_ma_nguoi_dung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_nguoi_dung_quyen_by_ma_nguoi_dung`(IN p_ma_nguoi_dung  varchar(50) )
BEGIN

select q2.* from nguoi_dung n inner join quyen_truy_cap q 
on n.ma_nguoi_dung=q.ma_nguoi_dung inner join quyen q2 on 
q.ma_quyen=q2.ma_quyen where n.ma_nguoi_dung=p_ma_nguoi_dung;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove_key_reset` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remove_key_reset`(IN p_ma_nguoi_dung varchar(50), IN p_key_reset varchar(200),OUT result integer)
begin 
	delete from nguoi_dung_cn where ma_nguoi_dung = p_ma_nguoi_dung and key_reset =p_key_reset;
    select row_count() into result from dual;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `save_key_reset` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `save_key_reset`(IN p_ma_nguoi_dung varchar(50), IN p_key_reset varchar(200),OUT result integer)
begin
insert into nguoi_dung_cn(ma_nguoi_dung,key_reset) values(p_ma_nguoi_dung,p_key_reset);
select row_count() into result from dual;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-02 12:05:21
