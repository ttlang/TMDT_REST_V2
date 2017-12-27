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
INSERT INTO `bai_hoc` VALUES ('KH1CH1BH1','Giới thiệu về hệ điều hành android','Giúp người học có cái nhìn tổng quan về hệ điều hành andoroid.','KH1CH1',10),('KH1CH1BH2','Cấu hình máy tính & Hướng dẫn download và cài đặt Android Studio phiên bản mới nhất','hướng dẫn người dùng cấu hình và cài đặt môi trường lập trình','KH1CH1',100),('KH1CH1BH3','Tìm hiểu cấu trúc thư mục trong android','Cung cấp kiến trúc và của ứng dụng android','KH1CH1',2000),('KH1CH1BH4','Chạy ứng dụng Android đầu tiên','Khởi chạy ứng dụng đầu tiên với android','KH1CH1',123),('KH1CH1BH5','Tổng quan về Layout và View trong android','Tổng quan về các thành phần đầu tiên của android','KH1CH1',123123),('KH1CH2BH6','Hướng dẫn sử dụng LinearLayout','Giúp học viên sử dụng thành thạo LinearLayout trong android','KH1CH2',302),('KH3CH5BH7','Giới thiệu khóa học','Giới thiệu khóa học','KH3CH5',400),('KH3CH5BH8','Giới thiệu Visual C# 2010 và tạo chương trình Winform đầu tiên','Giới thiệu Visual C# 2010 và tạo chương trình Winform đầu tiên','KH3CH5',700),('KH3CH5BH9','Thuộc tính của form và một số control cơ bản','Thuộc tính của form và một số control cơ bản','KH3CH5',500),('KH3CH6BH10','Kiểu dữ liệu đã tích hợp sẵn (built-in) trong C#','Kiểu dữ liệu đã tích hợp sẵn (built-in) trong C#','KH3CH6',800),('KH3CH6BH11','Biến (variable) trong C#','Biến (variable) trong C#','KH3CH6',700),('KH3CH6BH12','Các toán tử (operator) phổ biến trong C#','Các toán tử (operator) phổ biến trong C#','KH3CH6',466),('KH3CH7BH13','Câu lệnh điều kiện if','Câu lệnh điều kiện if','KH3CH7',560),('KH3CH7BH14','Câu lệnh điều kiện if - else','Câu lệnh điều kiện if - else','KH3CH7',900),('KH3CH7BH15','Câu lệnh điều kiện if - else if','Câu lệnh điều kiện if - else if','KH3CH7',1000),('KH4CH8BH16','Slide bài giảng C/C++ ','Slide bài giảng C/C++ ','KH4CH8',400),('KH4CH8BH17','Source code C/C++ ','Source code C/C++ ','KH4CH8',1200),('KH4CH9BH18','Làm quen với cấu trúc C/C++','Làm quen với cấu trúc C/C++','KH4CH9',400),('KH4CH9BH19','Các bài tập C/C++ cơ bản','Các bài tập C/C++ cơ bản','KH4CH9',700),('KH4CH9BH20','Tìm hiểu cấu trúc if else và switch case','Tìm hiểu cấu trúc if else và switch case','KH4CH9',1400),('KH5CH10BH21',' Giới thiệu công cụ JsBin',' Giới thiệu công cụ JsBin','KH5CH10',400),('KH5CH10BH22','Hướng dẫn cách khai báo biến (Varriable)','Hướng dẫn cách khai báo biến (Varriable)','KH5CH10',500),('KH5CH10BH23',' Hướng dẫn sử dụng thẻ Input ',' Hướng dẫn sử dụng thẻ Input ','KH5CH10',600),('KH6CH11BH24','Cài đặt chương trình và Tạo ứng dụng “Helloworld” đầu tiên','Cài đặt chương trình và Tạo ứng dụng “Helloworld” đầu tiên','KH6CH11',1000),('KH6CH12BH25','Biến và kiểu dữ liệu','Biến và kiểu dữ liệu','KH6CH12',500),('KH6CH12BH26','Toán tử toán học trong Java','Toán tử toán học trong Java','KH6CH12',400),('KH6CH12BH27','Thực hành toán tử điều kiện IF','Thực hành toán tử điều kiện IF','KH6CH12',800);
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
  `ma_binh_luan` int(11) NOT NULL AUTO_INCREMENT,
  `ma_bai_hoc` varchar(50) DEFAULT NULL,
  `ma_nguoi_dung` varchar(50) DEFAULT NULL,
  `noi_dung` text,
  `thoi_gian_binh_luan` datetime DEFAULT NULL,
  PRIMARY KEY (`ma_binh_luan`),
  KEY `fk_binh_luan_bai_hoc_idx` (`ma_bai_hoc`),
  KEY `fk_binh_luan_nguoi_dung_idx` (`ma_nguoi_dung`),
  CONSTRAINT `fk_binh_luan_bai_hoc` FOREIGN KEY (`ma_bai_hoc`) REFERENCES `bai_hoc` (`ma_bai_hoc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_binh_luan_nguoi_dung` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binh_luan`
--

LOCK TABLES `binh_luan` WRITE;
/*!40000 ALTER TABLE `binh_luan` DISABLE KEYS */;
INSERT INTO `binh_luan` VALUES (2,'KH1CH1BH1','ND2','Bài học rất hay','2017-12-26 15:35:41');
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger tg_thoi_gian_binh_luan_insert
before insert on binh_luan for each row
begin 

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
  PRIMARY KEY (`ma_chu_de`),
  FULLTEXT KEY `ft_chu_de_mo_ta_tieu_de` (`tieu_de`,`mo_ta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chu_de`
--

LOCK TABLES `chu_de` WRITE;
/*!40000 ALTER TABLE `chu_de` DISABLE KEYS */;
INSERT INTO `chu_de` VALUES ('CD1','Lập trình căn bản','Lập trình căn bản cung cấp các khóa học cho các học viên với các kiến thức căn bản nhất',0),('CD10','React','Hướng dẫn lập trình React',1),('CD11','Angular','Hướng dẫn lập trình Angular',1),('CD12','Node.js','Hướng dẫn lập trình Node.js',1),('CD13','CSS','Hướng dẫn tạo những trang web kinh ngạc với CSS',1),('CD14','PHP','Hướng dẫn lập trình PHP',1),('CD15','HTML5','Hướng dẫn tạo trang web với HTML5',1),('CD16','Java','Hướng dẫn lập trình Java',1),('CD17','REST API','Hướng dẫn lập trình REST API',1),('CD18','Python','Hướng dẫn lập trình Python',1),('CD19','Unit Testing','Hướng dẫn Unit Testing',1),('CD2','Lập trình di động','Lập trình di động cung cấp các khóa học trên các nền tảng di động như android, IOS, Windowphone',1),('CD20','MySQL','Hướng dẫn lập trình MySQL',1),('CD21','SQL Server','Hướng dẫn lập trình SQL Server',1),('CD22','Oracle SQL','Hướng dẫn lập trình Oracle SQL',1),('CD23','Oracle Certification','Hướng dẫn Oracle Certification',1),('CD24','SQL','Hướng dẫn lập trình SQL',1),('CD25','Xamarin','Hướng dẫn lập trình Xamarin',1),('CD26','SQL','Hướng dẫn lập trình SQL',1),('CD27','C#','Hướng dẫn lập trình C#',1),('CD28','Data Analysis','Hướng dẫn Data Analysis',1),('CD29','Object Oriented Programming','Hướng dẫn lập trình hướng đối tượng',1),('CD3','Lập trình web','Hướng dẫn lập trình web',1),('CD30','Lập trình AngularJS','Lập trình AngularJS',1),('CD31','Đây là test','Đây là test',0),('CD32','Đây là test','Đây là test',0),('CD33','1','1',1),('CD34','1','1',1),('CD35','1','1',1),('CD4','Lập trình game','Hướng dẫn lập trình game',1),('CD5','Lập trình mạng','Hướng dẫn lập trình mạng',1),('CD6','Lập trình nền tảng','Hướng dẫn lập trình nền tảng',1),('CD7','Lập trình phần mềm','Hướng dẫn lập trình phần mềm',1),('CD8','SEO','Hướng dẫn SEO',1),('CD9','JavaScript','Hướng dẫn lập trình JavaScript',1);
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
INSERT INTO `chuong_muc` VALUES ('KH1CH1','KH1','Tổng quan về Android','Cung cấp cái nhìn tổng quan về android','Cung cấp cái nhìn tổng quan về android'),('KH1CH2','KH1','Hệ thống Layout và View trong android','Hệ thống Layout và View trong android','Hệ thống Layout và View trong android'),('KH1CH3','KH1','Tương tác giao diện và cơ sở dữ liệu','Tương tác giao diện và cơ sở dữ liệu','Tương tác giao diện và cơ sở dữ liệu'),('KH1CH4','KH1','Đa tiến trình trong Android','Đa tiến trình trong Android','Đa tiến trình trong Android'),('KH3CH5','KH3','Làm quen với Visual Studio 2010','Làm quen với Visual Studio 2010','Làm quen với Visual Studio 2010'),('KH3CH6','KH3','Kiểu dữ liệu và biến','Kiểu dữ liệu và biến','Kiểu dữ liệu và biến'),('KH3CH7','KH3','Các câu lệnh điều kiện','Các câu lệnh điều kiện','Các câu lệnh điều kiện'),('KH4CH8','KH4','Source code và slide C/C++','Source code và slide C/C++','Source code và slide C/C++'),('KH4CH9','KH4','Làm quen với C/C++','Làm quen với C/C++','Làm quen với C/C++'),('KH5CH10','KH5','Giới thiệu Công Cụ JsBin','Giới thiệu Công Cụ JsBin','Giới thiệu Công Cụ JsBin'),('KH6CH11','KH6','Giới thiệu và cài đặt','Giới thiệu và cài đặt','Giới thiệu và cài đặt'),('KH6CH12','KH6','Làm quen với Java','Làm quen với Java','Làm quen với Java');
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
INSERT INTO `dang_ky_khoa_hoc` VALUES ('KH1','ND1','2017-12-22 15:42:43');
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
  `ma_dinh_kem_bai_hoc` int(11) NOT NULL AUTO_INCREMENT,
  `ma_bai_hoc` varchar(50) DEFAULT NULL,
  `noi_dung` text,
  `ngay_them` datetime DEFAULT NULL,
  PRIMARY KEY (`ma_dinh_kem_bai_hoc`),
  KEY `fk_dinh_kem_bai_hoc_bai_hoc_idx` (`ma_bai_hoc`),
  CONSTRAINT `fk_dinh_kem_bai_hoc_bai_hoc` FOREIGN KEY (`ma_bai_hoc`) REFERENCES `bai_hoc` (`ma_bai_hoc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dinh_kem_bai_hoc`
--

LOCK TABLES `dinh_kem_bai_hoc` WRITE;
/*!40000 ALTER TABLE `dinh_kem_bai_hoc` DISABLE KEYS */;
INSERT INTO `dinh_kem_bai_hoc` VALUES (1,'KH1CH1BH1','https://drive.google.com/open?id=1jYY66NPMAiEwerxafbKFrSsniWJcj0lo','2017-12-19 15:03:43'),(2,'KH1CH1BH2','https://drive.google.com/open?id=1jYY66NPMAiEwerxafbKFrSsniWJcj0lo','2017-12-19 15:03:44'),(3,'KH1CH1BH3','https://drive.google.com/open?id=1jYY66NPMAiEwerxafbKFrSsniWJcj0lo','2017-12-19 15:03:44'),(4,'KH1CH1BH4','https://drive.google.com/open?id=1jYY66NPMAiEwerxafbKFrSsniWJcj0lo','2017-12-19 15:03:44'),(5,'KH1CH1BH5','https://drive.google.com/open?id=1jYY66NPMAiEwerxafbKFrSsniWJcj0lo','2017-12-19 15:03:44'),(6,'KH1CH2BH6','https://drive.google.com/open?id=1jYY66NPMAiEwerxafbKFrSsniWJcj0lo','2017-12-19 15:03:44'),(9,'KH3CH5BH7','https://drive.google.com/file/d/1U-PJRNMY6GYQxFbW87F6RJYy-np-5dw3/view','2017-12-19 15:37:01'),(10,'KH3CH5BH8','https://drive.google.com/file/d/1U-PJRNMY6GYQxFbW87F6RJYy-np-5dw3/view','2017-12-19 15:37:01'),(11,'KH3CH5BH9','https://drive.google.com/file/d/1U-PJRNMY6GYQxFbW87F6RJYy-np-5dw3/view','2017-12-19 15:37:01'),(12,'KH3CH6BH10','https://drive.google.com/file/d/1U-PJRNMY6GYQxFbW87F6RJYy-np-5dw3/view','2017-12-19 15:37:02'),(13,'KH4CH8BH16','https://drive.google.com/file/d/1U-PJRNMY6GYQxFbW87F6RJYy-np-5dw3/view','2017-12-19 15:37:02'),(14,'KH4CH8BH17','https://drive.google.com/file/d/1U-PJRNMY6GYQxFbW87F6RJYy-np-5dw3/view','2017-12-19 15:37:02'),(15,'KH4CH9BH18','https://drive.google.com/uc?id=1uOMrAbYxL-y7qaBdhGH8320S7uGXEKA6','2017-12-20 17:23:47'),(16,'KH4CH9BH19','https://drive.google.com/uc?id=1uOMrAbYxL-y7qaBdhGH8320S7uGXEKA6','2017-12-20 17:23:47'),(17,'KH4CH9BH20','https://drive.google.com/uc?id=1uOMrAbYxL-y7qaBdhGH8320S7uGXEKA6','2017-12-20 17:23:47'),(18,'KH5CH10BH21','https://drive.google.com/uc?id=1uOMrAbYxL-y7qaBdhGH8320S7uGXEKA6','2017-12-20 17:23:47'),(19,'KH5CH10BH21','https://drive.google.com/uc?id=1qGdpMH8Eorl_S-ZdzeFqe4CBwlftj_B7','2017-12-20 17:23:47'),(20,'KH5CH10BH22','https://drive.google.com/uc?id=1qGdpMH8Eorl_S-ZdzeFqe4CBwlftj_B7','2017-12-20 17:23:47'),(25,'KH5CH10BH22','https://drive.google.com/uc?id=1qGdpMH8Eorl_S-ZdzeFqe4CBwlftj_B7','2017-12-20 17:22:02');
/*!40000 ALTER TABLE `dinh_kem_bai_hoc` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger tg_dinh_kem_bai_hoc_ngay_them before insert on dinh_kem_bai_hoc
for each row
begin

set new.ngay_them = now();

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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger tg_dinh_kem_bai_hoc_ngay_them_update before update on dinh_kem_bai_hoc
for each row
begin

	set  new.ngay_them = now() ;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
INSERT INTO `hinh_thuc_giao_dich` VALUES ('DN','donate','donate'),('MKH','mua khóa học','mua khóa học'),('NT','nạp tiền','nạp tiền');
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
INSERT INTO `khoa_hoc` VALUES ('KH1','Lập trình Android','Lập trình Android từ căn bản đến nâng cao','ND1','2017-11-24 23:53:35',200000,'CO','ND2','CD1',1,'2017-11-25 23:53:35',200,'',''),('KH10','Tạo ứng dụng GALLERY trên Android','Hệ điều hành Android hiện nay là một hệ điều hành có số lượng người dùng lớn, với\n các ưu điểm vượt trội của nó. Công nghệ càng phát triển, và dung lượng bộ nhớ trên các thiết bị Android ngày càng được mở rộng để đáp ứng tốt cho người dùng.','ND2','2017-12-09 14:41:16',0,'NCO','ND1','CD2',1,NULL,1700,'https://drive.google.com/open?id=19irqb2vz_7xTxJ4ePfRg3VQER-5ROx02','Sau khi hoàn thành khóa học các bạn có thể nắm được các kiến thức\n về Fragment, Tab, ViewPager, Content Provider… Và ngoài ra các bạn cũng sẽ biết được cách làm một ứng dụng Gallery đơn giản bằng các class trên. Ngoài ra các bạn có thể kết học\n ViewPager và Tab để làm ra một ứng dụng đọc báo hay tin tức chỉ với 1 cái vuốt nhẹ trên màn hình.'),('KH11','Front-End: Cốt lõi thiết kế website với HTML, CSS, JavaScript , Jquery, Responsive, Bootstrap, dàn layout từ Photoshop','Hiện nay, thiết kế website là rất cần thiết cho doanh nghiệp, website mang đến những thông tin cập nhật nhanh nhất về các dịch vụ của doanh nghiệp. Với sự phát triển của cơ sở\n hạ tầng, băng thông mạnh hơn hẳn, các phần mềm cũng dẫn chuyển sang nền tảng web.','ND2','2017-12-09 14:41:16',0,'NCO','ND1','CD3',1,NULL,1300,'https://drive.google.com/open?id=1cE8dHR4FOswwH0INT4S5db06ofMztEUN','Khoá học cũng mang đến cho các bạn những khái niệm cơ bản và quan trọng của các thẻ HTML, CSS, javascript, jquery,…, trong từng bài học, tôi cố gắng trình bày kèm theo nhiều ví dụ trực quan,\n một số layout dạng thực tế để các bạn dễ tiếp cận và vận dụng. Một trong những khái niệm và kỹ thuật quan trọng như boostrap web, responsive web là gì cũng được tôi trình bày và vận dụng trong khoá học này.'),('KH12','Lập trình ASP.NET MVC5 toàn tập qua dự án Web bán hàng','Đây là một trong những đề tài rất hot hiện nay nhờ vào sự hỗ\n trợ mạnh mẽ của Microsoft với ASP.NET cùng với mô hình lập trình kinh điển MVC, mà nay đã được Microsoft tích hợp và nâng cấp thành một framework với phiên bản thứ 5, hỗ trợ rất\n nhiều tính năng và tiện ích cho người lập trình.','ND1','2017-12-09 14:41:17',600000,'CO','ND4','CD3',1,NULL,1000,'https://drive.google.com/open?id=1jYY66NPMAiEwerxafbKFrSsniWJcj0lo','Đây hứa hẹn\n sẽ là một sản phẩm cực kì có lợi cho các bạn học viên khi các bạn đi tìm việc làm. Các bạn sẽ có những sản phẩm thực tế để show cho nhà tuyển dụng để chứng minh khả năng của mình.'),('KH13','Làm dự án thực tế với ASP.NET MVC, WebAPI và AngularJS','Với một khóa học tổng hợp và chuyên sâu các kỹ năng cần thiết để làm\n dự án các bạn được học cả backend với C#, Entity Framework, các design pattern đồng thời cả những kiến thức frontend như Jquery, AngularJs.','ND4','2017-12-09 14:41:17',1000000,'CO','ND2','CD3',1,NULL,1500,'https://drive.google.com/open?id=1NWoNxLYPHp5FzyIQ-X9h1YqtLl21tSEA','Với mong muốn tạo ra giá trị cao nhất cho các bạn khi tham gia khóa học này, mình đã cố gắng đưa những best practices\n vào dự án giúp các bạn dễ dàng thích nghi với môi trường công việc, dễ dàng mở rộng cũng như đáp ứng các nhu cầu khác nhau của khách hàng trong tương lai.'),('KH14','Lập trình php căn bản đến nâng cao - web bán hàng','PHP là một ngôn ngữ kịch bản phía máy chủ nguồn mở  được sử dụng để phát triển\n các trang web. PHP cho sử dụng miễn phí và tương thích với các nền tảng khác nhau bao gồm cả Linux, UNIX, Windows, và Mac OS X.','ND2','2017-12-09 14:41:18',0,'NCO','ND3','CD3',1,NULL,1500,'https://drive.google.com/open?id=1TwIKDlIhA6B918DXYvplEWtueSvq6OvT','Trong khóa học này, bên cạnh cung cấp các kiến thức nền tảng, giảng viên cung cấp đầy đủ các kiến thực lập trình nâng\n cao của PHP. Cuối cùng, giảng viên cũng hướng dẫn đầy đủ các thao tác từ việc thiết kế cơ sở dữ liệu, thiết kế website, chọn template, xử lý bootstrap, responsive web, xây dựng hầu hết các\n tính năng của một website bán hàng theo xu thế hiện nay.'),('KH15','Front-End: Làm dự án thực tế với Angular 2 + Web API - Restful Service','Angular 2 đã phát hành và được nhiều công ty sử dụng. Việc nắm rõ\n Angular 2 giúp bạn thực hiện được các dự án lớn và khả năng tìm được việc làm rất lớn.','ND3','2017-12-09 14:41:18',1200000,'CO','ND1','CD3',1,NULL,2500,'https://drive.google.com/open?id=1xPdwqRs8cQxSqfJPidX6gsCncUWgN2i2','Khóa học Angular 2 sẽ giúp các bạn nắm rõ các kiến thức từ căn bản đến chuyên sâu về Angular. Trong khóa học cũng sử dụng công nghệ Web Service - Web API để các bạn tương tác với backend như một phần của hệ thống.'),('KH16','Lập trình Android nâng cao','Lập trình Android từ căn bản đến nâng cao','ND1','2017-12-12 13:52:25',500000,'CO',NULL,'CD2',0,NULL,0,'https://drive.google.com/open?id=0B27mfRY62YKZWFUyME44WjdiUTg','<p>Ngày nay thị phần của các thiết bị chạy hệ điều hành Android đã vượt qua các thiết bị chạy hệ điều khác , để trở thành hệ điều hành được mọi người yêu thích nhất, nhưng để góp phần vào sự phát triển cũng như sự thành công của hệ điều hành Android phải kể đến các ứng dụng mà nó mang lại cho cuộc sống hằng ngày của chúng ta. Bạn chưa từng ngủ dậy muộn nhờ ứng dụng báo thức, với Google Map bạn không còn phải ngại ngùng khi phải hỏi đường người khác hay bạn thư giản với những bản nhạc Ballad ngọt ngào. Có khi nào bạn đã tự hỏi họ đã làm những ứng dụng đó như thế nào chưa ?, có khi nào bạn đã từng ao ước làm cho mình một ứng dụng để có thể khoe với bạn bè hoặc phục vụ cho cộng đồng với nhãn hiệu make by me chưa ? , hoặc bạn muốn làm để phục vụ cho công ty. Nếu bạn đã nghĩ đến những điều đó và muốn thực hiện nó những lại không biết phải bắt đầu từ đâu không biết nên làm thế nào hoặc đối với những bạn tự tim hiểu rào cản ngôn ngữ luôn là trở ngại lớn đối với các bạn.</p>'),('KH17','Lập trình Android nâng cao','Lập trình Android từ căn bản đến nâng cao','ND1','2017-12-12 14:37:23',500000,'CO',NULL,'CD2',0,NULL,0,'https://drive.google.com/open?id=0B27mfRY62YKZWFUyME44WjdiUTg','<p>Ngày nay thị phần của các thiết bị chạy hệ điều hành Android đã vượt qua các thiết bị chạy hệ điều khác </p>'),('KH18','Lập trình Android nâng cao','<p>Ngày nay thị phần của các thiết bị chạy hệ điều hành Android đã vượt qua các thiết bị chạy hệ điều khác </p>','ND2','2017-12-12 15:20:15',500000,'CO',NULL,'CD2',0,NULL,0,'https://drive.google.com/open?id=0B27mfRY62YKZWFUyME44WjdiUTg','Lập trình Android từ căn bản đến nâng cao'),('KH2','Cấu trúc dữ liệu & giải thuật','Cấu trúc dữ liệu & giải thuật qua ví dụ kinh điển - C++ nền tảng, nâng cao, phỏng vấn xin việc','ND2','2017-11-29 15:51:52',1600000,'CO','ND2','CD1',0,NULL,0,'https://drive.google.com/open?id=0B27mfRY62YKZWFUyME44WjdiUTg','<div class=\"GTKH\">\r <ul>\r<li><strong>Giới thiệu về Cấu trúc dữ liệu và thuật toán:</strong></li>\r </ul>\r \r <p>Thực hiện một đề án tin học là chuyển bài toán thực tế thành bài toán có thể giải quyết trên máy tính. Một bài toán thực tế bất kỳ đều bao gồm các đối tượng dữ liệu và các yêu cầu xử lý trên những đối tượng đó. Vì thế, để xây dựng một mô hình tin học phản ánh được bài toán thực tế cần chú trọng đến hai vấn đề :</p>\r \r <ul>\r 	<li><strong>Tổ chức biểu diễn các đối tượng thực tế :</strong></li>\r </ul>\r \r <p>Các thành phần dữ liệu thực tế đa dạng, phong phú và thường chứa đựng những quan hệ nào đó với nhau, do đó trong mô hình tin học của bài toán, cần phải tổ chức , xây dựng các cấu trúc thích hợp nhất sao cho vừa có thể phản ánh chính xác các dữ liệu thực tế này, vừa có thể dễ dàng dùng máy tính để xử lý. Công việc này được gọi là xây dựng <strong><em>cấu trúc dữ liệu</em> </strong>cho bài toán.</p>\r \r <ul>\r 	<li><strong>Xây dựng các thao tác xử lý dữ liệu:</strong></li>\r </ul>\r \r <p>Từ những yêu cầu xử lý thực tế, cần tìm ra các giải thuật tương ứng để xác định trình tự các thao tác máy tính phải thi hành để cho ra kết quả mong muốn, đây là bước xây dựng <strong><em>giải thuật </em></strong>cho bài toán. Tuy nhiên khi giải quyết một bài toán trên máy tính, chúng ta thường có khuynh hướng chỉ chú trọng đến việc xây dựng giải thuật mà quên đi tầm quan trọng của việc tổ chức dữ liệu trong bài toán. Giải thuật phản ánh các phép xử lý , còn đối tượng xử lý của giải thuật lại là dữ liệu, chính dữ liệu chứa đựng các thông tin cần thiết để thực hiện giải thuật. Để xác định được giải thuật phù hợp cần phải biết nó tác động đến loại dữ liệu nào (ví dụ để làm nhuyễn các hạt đậu , người ta dùng cách xay chứ không băm bằng dao, vì đậu sẽ văng ra ngoài) và khi chọn lựa cấu trúc dữ liệu cũng cần phải hiểu rõ những thao tác nào sẽ tác động đến nó (ví dụ để biểu diễn các điểm số của sinh viên người ta dùng số thực thay vì chuỗi ký tự vì còn phải thực hiện thao tác tính trung bình từ những điểm số đó). Như vậy trong một đề án tin học, giải thuật và cấu trúc dữ liệu có mối quan hệ chặt chẽ với nhau, được thể hiện qua công thức :</p>\r \r <h3 align=\"center\"><span style=\"color: #ff0000;\"><strong>Cấu trúc dữ liệu + Giải thuật = Chương trình</strong></span></h3>\r \r <p>Với một cấu trúc dữ liệu đã chọn, sẽ có những giải thuật tương ứng, phù hợp. Khi cấu trúc dữ liệu thay đổi thường giải thuật cũng phải thay đổi theo để tránh việc xử lý gượng ép, thiếu tự nhiên trên một cấu trúc không phù hợp. Hơn nữa, một cấu trúc dữ liệu tốt sẽ giúp giải thuật xử lý trên đó có thể phát huy tác dụng tốt hơn, vừa đáp ứng nhanh vừa tiết kiệm vật tư, giải thuật cũng dễ hiễu và đơn giản hơn.</p>\r \r <ul>\r 	<li>Đây là khoá học rất nền tảng và là bước đệm để các bạn tiến sâu hơn trong nghề nghiệp lập trình của mình. Các bạn học tốt môn này, các bạn nắm được các tư duy thuật toản, tư duy giải thuật, các bạn sẽ là một lập trình viên giỏi. Các tư duy này giúp bạn vận dụng để giải quyết các công việc, các bài toán, các nghiệp vụ trong tất cả phần mềm sau này</li>\r 	<li>Việc học Cấu trúc dữ liệu và Thuật toán giúp bạn có một cái nhìn chuyên sâu, tối ưu hoá được nhiều vấn đề trong lập trình. Việc tối ưu hoá là cực kì quan trọng để các bạn xây dựng các phần mềm chạy nhanh, hiệu quả.</li>\r 	<li>Trong hầu hết các bài <strong><span style=\"color: #ff0000;\">PHỎNG VẤN</span></strong> để tuyển chọn người tài, các công ty đều kiểm tra khả năng xử lý và tư duy của các bạn thông qua các trường hợp từ môn học này. Một lập trình nhanh nhạy, một ứng cử viên sáng giá cho một vị trí tại công ty phụ thuộc vào khả năng bạn xử lý các vấn đề, tư duy giải quyết vấn đề dựa vào các thuật toán, thuật giải và tối ưu chương trình.</li>\r 	<li>Khoá học được trình bày rất chi tiết với hầu hết các thuật toán và giải thuật thường gặp trong thực tế qua nhiều ví dụ minh hoạ dễ hiểu và vận dụng</li>\r 	<li>Các thuật toán được trình bày, minh hoạ trực quan qua hệ thống <a href=\"http://algo.myclass.vn\" target=\"_blank\">http://algo.myclass.vn</a>&nbsp;để các bạn học một cách dễ hiểu nhất.</li>\r 	<li><strong>CẤU TRÚC DỮ LIỆU VÀ THUẬT TOÁN LUÔN CẦN THIẾT TRONG SUỐT CUỘC ĐỜI CỦA MỘT LẬP TRÌNH VIÊN (VÍ DỤ CÁC THUẬT TOÁN CŨNG CÓ TRONG PHỎNG VẤN CỦA GOOGLE :&nbsp;<a href=\"https://grouplens.org/blog/preparing-for-a-google-technical-interview/)\" target=\"_blank\">https://grouplens.org/blog/preparing-for-a-google-technical-interview/)</a></strong></li>\r </ul>\r \r <p><span style=\"font-weight: bold; color: rgb(0, 128, 0);\">***** ĐẶC BIỆT HƠN CẢ, TÔI CŨNG SẼ BÀN SÂU VỀ CÁC ƯU NHƯỢC ĐIỂM, CẢI TIẾN CÁC THUẬT TOÁN, <span style=\"color: #ff0000;\">BÀN LUẬN VỀ CÁC VẤN ĐỀ</span> TRONG CUỐN SÁCH CỰC KÌ NỔI TIẾNG VỀ CẤU TRÚC DỮ LIỆU VÀ THUẬT TOÁN:</span>&nbsp;<span style=\"color: #ff0000;\"><strong>\"Data Structures and Algorithms Made Easy: Data Structure and Algorithmic Puzzles by Karumanchi, Narasimha\" - xuất bản năm 2011 với gần 90.000 lượt xuất bản khắp thế giới.</strong></span></p>\r \r <p><span style=\"font-weight: bold; color: rgb(0, 128, 0);\">Rất nhiều công ty nổi tiếng sử dụng các Problem trong này để làm câu hỏi phỏng vấn các ứng cử viên của mình.</span>&nbsp;<strong><a href=\"https://www.amazon.com/Data-Structures-Algorithms-Made-Easy/dp/B00RKQJP0I/ref=sr_1_9?s=books&amp;ie=UTF8&amp;qid=1486571115&amp;sr=1-9&amp;keywords=Data+Structures+and+Algorithms+Made+Easy\" target=\"_blank\">Link sách trên Amazon</a></strong><img alt=\"cau truc du lieu va giai thuat - myclass.vn\" class=\"aligncenter\" height=\"499\" src=\"https://images-na.ssl-images-amazon.com/images/I/51RiQhVgO9L._SX384_BO1,204,203,200_.jpg\" width=\"386\"></p>\r         </div>'),('KH3','Lập Trình Visual C# Căn Bản','C# thông dụng ở chỗ \n nó rất dễ học, dễ nắm bắt và với một trình soạn thảo trực quan nó cho phép chúng ta dễ dàng thiết kế giao diện người dùng,\n kiểm tra lỗi.....','ND1','2017-12-09 14:41:13',0,'NCO','ND2','CD1',1,NULL,1200,'https://drive.google.com/file/d/1U-PJRNMY6GYQxFbW87F6RJYy-np-5dw3/view','Để có thể giúp các bạn làm quen với ngôn ngữ C# , ngày hôm nay tôi xin gửi đến các bạn khóa học Lập Trình C# Căn Bản. Mục đích của khóa học giúp cho\n các bạn làm quen với môi trường C# và làm sao để có thể tạo ra một ứng dụng với C#.'),('KH4','Lập trình C/C++ căn bản','Sau khi hoàn thành khóa học lập trình C, C++ căn bản này bạn có thể làm\n quen được với môi trường làm việc của C/C++ và có thể làm những bài toán đơn giản với C/C++ ở mức khó hơn.','ND4','2017-12-09 14:41:13',1000000,'CO','ND2','CD1',1,NULL,500,'https://drive.google.com/open?id=1uOMrAbYxL-y7qaBdhGH8320S7uGXEKA6','Mục tiêu của C++ là tiếp cận những ý tưởng của phương pháp luận hướng đối tượng và trừu tượng dữ liệu. C++\n là một ngôn ngữ lập trình tiến tiến, mạnh trong các ngôn ngữ lập trình hiện nay, nó được sử dụng bởi hàng triệu lập trình viên trên thế giới. Các đặc tính của C ++ cho phép người\n lập trình xây dựng những thư viện phần mềm có chất lượng cao phục vụ những đề án lớn.'),('KH5','Lập Trình JavaScript Cơ Bản','JavaScript là một ngôn ngữ lập trình dựa trên nguyên mẫu với cú pháp phát\n triển từ C. Giống như C, JavaScript có khái niệm từ khóa, do đó, JavaScript gần như không thể được mở rộng.','ND3','2017-12-09 14:41:14',800000,'CO','ND1','CD1',1,NULL,300,'https://drive.google.com/open?id=1qGdpMH8Eorl_S-ZdzeFqe4CBwlftj_B7','Nếu bạn là mới bắt đầu làm quen với JavaScript thì khóa học lập trình Javascript cơ bản này\n sẽ giúp các bạn tìm hiểu về các thao tác , các kiến thức nền tảng về JavaScript.'),('KH6','Lập trình JAVA căn bản','Java không còn là một ngôn ngữ xa lạ với cộng đồng lập trình. Với việc có lợi thế\n khi được sinh ra với tiêu chí “Write Once, Run Anywhere” (WORA) – tức là “Viết một lần, thực thi khắp nơi”','ND2','2017-12-09 14:41:14',1600000,'CO','ND4','CD1',1,NULL,600,'https://drive.google.com/open?id=1EXlrZzARsdz4GKrWmzH9wI0-qrrnpliw','Hòa nhịp vào thế mạnh của Java, khóa học “Lập trình JAVA căn bản” với mục đích cung cấp cho \n các bạn học viên có những kiến thức cơ bản nhất về nguyên lý lập trình bằng ngôn ngữ Java, qua đó giúp các bạn có một nền tảng vững chắc về Java và có thể dùng ngôn\n ngữ này để lập trình với các Engine hay Framework nâng cao.'),('KH7','Lập Trình Android Qua Ứng Dụng OrderFood','Khóa học sẽ giúp bạn hiểu được cách thức xây dựng được ứng dụng\n cũng như cách thức phân tích yêu cầu của khách hàng.','ND3','2017-12-09 14:41:15',0,'NCO','ND4','CD2',1,NULL,600,'https://drive.google.com/open?id=1cohNd-B54V1Q8pszU-Hcqx2nLG0K5wAi','Bạn  có thể biết được quy trình khi viết một ứng dụng nên bắt đầu và kết thúc từ đâu, bạn có thể\n áp dụng những điều đã học cho nhiều ứng dụng khác nhau. Vậy nên các bạn hãy tự tin đăng ký khóa học để có thể làm nên một ứng dụng hoàn chỉnh mang phong cách riêng\n của chính bản thân mình nhé !'),('KH8','App ANDROID giống App Mua sắm LAZADA','Với sự phát triển ngày càng mạnh và được ứng dụng ngày càng nhiều vào \n thực tế của các ứng dụng Android, chính vì điều đó đã làm cho nó trở thành một ngành hot nhất hiện nay và thu hút được nhiều sự quan tâm của các bạn trẻ đam mê lập trình.','ND4','2017-12-09 14:41:15',900000,'CO','ND1','CD2',1,NULL,1000,'https://drive.google.com/open?id=1_9SaNoQ8gBW5byjHQL5wwJygCA9abho3','Thông qua khóa học Lazada này các bạn sẽ nắm bắt được cách vận dụng các kiến thức cơ bản của android\n để hoàn thành ứng dụng, ngoài ra các bạn sẽ còn biết được cách tổ chức code theo mô hình MVP pattern để có thể quản lý code tốt hơn, không những vậy các bạn sẽ nắm bắt được\n cách thức tạo Webservice với cả 2 ngôn ngữ lập trình Web hot nhất hiện nay là PHP và ASP.NET cũng như cách trao đổi dữ liệu của Webservice và ứng dụng Android.'),('KH9','Game Tôm Cua Bầu Cá Android','Các bạn có muốn tự mình làm 1 game bầu cua trên android không nào, với những kiến thức\n căn bản từ các khóa Android Căn Bản, Media Player Trong Android và CSDL','ND2','2017-12-09 14:41:15',800000,'CO','ND3','CD2',1,NULL,1500,'https://drive.google.com/open?id=1ZAJxeJDGXE_FJM111kXOjABqcIPYZK6y','Khi đến với khóa học này các bạn còn có thể  tiếp thu thêm các kiến thức mớic về Handler, Timer,\n CountDown, Animation List và ngoài ra các bạn còn biết dc cách áp dụng các kiến thức cũ đã được học để hoàn chỉnh khả năng của chính mình. Hãy đến với khóa học này và tạo ra\n game bầu cua cho chính mình bạn nhé');
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
  `no` double DEFAULT NULL,
  `ma_hinh_thuc_giao_dich` varchar(50) DEFAULT NULL,
  `co` double DEFAULT NULL,
  `ma_nguoi_dung` varchar(50) DEFAULT NULL,
  `noi_dung_giao_dich` varchar(100) DEFAULT NULL COMMENT 'nội dung giao dịch donate mua khóa học hoặc đổi tiền',
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
INSERT INTO `lich_su_giao_dich` VALUES ('GD1','2017-12-22 15:42:43',1,'DN',0,'ND1','KH1CH1BH1'),('GD2','2017-12-22 15:42:43',0,'DN',1,'ND2','KH1CH1BH1'),('GD3','2017-12-24 16:23:44',0,'DN',1,'ND1','KH1CH1BH1'),('GD4','2017-12-24 16:26:25',0,'DN',1,'ND1','KH1CH1BH1'),('GD5','2017-12-27 16:31:30',0,'NT',660,'ND1','Nạp vào tài khoảnlang.tt16@gmail.com 660.0 điểm');
/*!40000 ALTER TABLE `lich_su_giao_dich` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger tg_lich_su_giao_dich_insert
before insert on lich_su_giao_dich for each row
begin 
declare v_ma_lich_su_giao_dich varchar(50) default null;
select concat('GD',(select 1+(select count(*) from lich_su_giao_dich))) into v_ma_lich_su_giao_dich from dual;
/*
 if ma_nguoi_dung ton tai thi lay ma nguoi dung cuoi cung + 1
*/
if (select exists (select 1 from lich_su_giao_dich l where l.ma_lich_su_giao_dich =v_ma_lich_su_giao_dich)) then
		select (select substring(l.ma_lich_su_giao_dich from 3) +1 from lich_su_giao_dich l order by l.ma_lich_su_giao_dich desc limit 1) into v_ma_lich_su_giao_dich from dual;
    end if	;
set new.ma_lich_su_giao_dich=v_ma_lich_su_giao_dich;
set new.ngay_giao_dich =now();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
  `anh_dai_dien` varchar(2000) DEFAULT 'https://drive.google.com/uc?id=1Fx2VnHBcmjn7RXshIriuZaW8M8rMdadN',
  `mat_khau` varchar(100) NOT NULL,
  `diem` double DEFAULT '0',
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
INSERT INTO `nguoi_dung` VALUES ('ND1','Trương Tam Lang','2017-11-24 23:53:35','lang.tt16@gmail.com','https://drive.google.com/uc?id=0B27mfRY62YKZRDNxWWZHdl9aUjA','$2a$10$XsFlD8/G1odLhxZNNSPrnue3pXMmwKPDwKvResVohO4AU0h34Lon6',660,1,'Đồng Tháp','01642222992'),('ND2','Nguyễn Tấn Phát','2017-11-24 23:53:35','cnttk40@gmail.com','https://drive.google.com/uc?id=0B27mfRY62YKZRDNxWWZHdl9aUjA','$2a$10$7t0DI.Gs2rydJ6cSN7rb0u86WPAt67da6Q9Bs5Ns6.P2clHHwXOFK',0,1,'Bến Tre','01642222992'),('ND3','Trần Văn Thắng','2017-11-29 13:56:36','ttlang162@gmail.com','https://drive.google.com/uc?id=0B27mfRY62YKZRDNxWWZHdl9aUjA','$2a$10$uSUPBtXdmcOkRanQ8g7rGemAFR1e12RYLoXcI9W40.gMzFbXoGljS',0,1,'Thủ Đức','01642222992'),('ND4','Nguyễn Tấn Phát','2017-11-29 13:56:36','ttlang163@gmail.com','https://drive.google.com/uc?id=0B27mfRY62YKZRDNxWWZHdl9aUjA','$2a$10$oLJJJ44IPhPOSqZQd/a5cueZ8jY4IJs3.XUBERlV4ftZ5ziR3ipPO',0,0,'HCM','01642222992');
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
INSERT INTO `nguoi_dung_cn` VALUES ('ND1',NULL,'2017-11-25 11:27:49'),('ND1',NULL,'2017-11-25 11:28:44'),('ND2',NULL,'2017-11-27 08:10:32'),('ND2',NULL,'2017-11-27 08:10:32'),('ND1',NULL,'2017-11-28 01:02:20'),('ND1','8J/KJVtO3x6IQUolNbJ/3g_L9/BLLHJ/nfimQdNQmKN5g_nO0d8K+IHoXOYTzfik8ImA',NULL),('ND1','8J/KJVtO3x6IQUolNbJ/3g_L9/BLLHJ/nfimQdNQmKN5g_dwmESMjsmXF6AFM2oo5i9Q',NULL),('ND3',NULL,'2017-11-28 12:02:37'),('ND1',NULL,'2017-11-28 12:58:24'),('ND1',NULL,'2017-11-28 13:18:57'),('ND1',NULL,'2017-11-28 13:31:05'),('ND4',NULL,'2017-11-29 13:56:36'),('ND1',NULL,'2017-12-13 12:33:21'),('ND2',NULL,'2017-12-13 12:33:22'),('ND3',NULL,'2017-12-13 12:33:22'),('ND4',NULL,'2017-12-13 12:33:22'),('ND2',NULL,'2017-12-13 12:48:47'),('ND3',NULL,'2017-12-13 12:48:47'),('ND4',NULL,'2017-12-13 12:48:47'),('ND1','8J/KJVtO3x6IQUolNbJ/3g_GxsB9yLmRjPC+D/whvC5Wg_eFCE7mVWUVdYhn6d8YX9vQ',NULL);
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
/*!50003 DROP PROCEDURE IF EXISTS `create_chu_de` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_chu_de`(
	in p_tieu_de varchar(100),
	in p_mo_ta text,
	in p_trang_thai tinyint(4),
	out result varchar(50)
)
begin
	insert into chu_de(tieu_de, mo_ta, trang_thai) values(p_tieu_de, p_mo_ta, p_trang_thai);
	select concat('CD',max(convert(substring_index(c.ma_chu_de,'CD',-1),unsigned int))) into result from chu_de c;
   
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_khoa_hoc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_khoa_hoc`(IN p_tieu_de varchar(200),IN p_mo_ta text,IN p_ma_nguoi_dung varchar(50),IN p_don_gia int,
IN p_ma_loai_khoa_hoc varchar(50),IN p_ma_chu_de varchar(50),IN p_anh_dai_dien varchar(200),IN p_chi_tiet_khoa_hoc text)
begin
		declare ma_khoa_hoc varchar(50) default null;
        declare  result_update integer default 0;
		insert into khoa_hoc(tieu_de,mo_ta,ma_nguoi_dung,don_gia,ma_loai_khoa_hoc,ma_chu_de,anh_dai_dien,chi_tiet_khoa_hoc)
        values(p_tieu_de,p_mo_ta,p_ma_nguoi_dung,p_don_gia,p_ma_loai_khoa_hoc,p_ma_chu_de,p_anh_dai_dien,p_chi_tiet_khoa_hoc);
        
        select row_count() into result_update;
			if(result_update>0) then
					select c.ma_khoa_hoc into ma_khoa_hoc from khoa_hoc c order by 
                    (convert(substring_index(c.ma_khoa_hoc,'KH',-1),unsigned int)) desc limit 1; 
                end if;
          select ma_khoa_hoc as courseID from dual;       
        
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
/*!50003 DROP PROCEDURE IF EXISTS `insert_lich_su_giao_dich` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_lich_su_giao_dich`(in  p_ma_hinh_thuc_giao_dich varchar(50),in p_no DOUBLE,
    in p_co DOUBLE,in p_ma_nguoi_dung varchar(50),in p_noi_dung_giao_dich varchar(100),out result varchar(50))
begin 
		insert into lich_su_giao_dich(`ma_hinh_thuc_giao_dich`,`no`,`co`,`ma_nguoi_dung`,`noi_dung_giao_dich`)
        values(p_ma_hinh_thuc_giao_dich,p_no,p_co,p_ma_nguoi_dung,p_noi_dung_giao_dich);
        
	select concat('GD',max(convert(substring_index(l.ma_lich_su_giao_dich,'GD',-1),unsigned int))) into result from lich_su_giao_dich l;
    
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_paging_query` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_paging_query`(IN p_page_number integer,IN p_size integer,out p_sum_page integer,out p_sum_records integer,IN sql_query varchar(255))
begin
declare v_start integer;
declare v_end integer ;
declare v_total_item integer default 0;

set v_start =(((p_page_number - 1) * p_size));
-- set v_end =(v_start+p_size)-1;


-- caculate number of record in table use input
set @qr =concat('select count(*) into @total_item from ( ',sql_query,' ) q');
prepare stmt from  @qr;
execute stmt;
deallocate prepare stmt;  
select @total_item into v_total_item;

-- set value
set p_sum_records=v_total_item;

-- caculate number of pages

if (v_total_item mod p_size =0) then
	set p_sum_page =v_total_item div p_size;
    else
    set p_sum_page =(v_total_item div p_size)+1;
    end if;

-- result of paging
set @qr2 =concat('select * from ( ',sql_query,' ) q  limit ',p_size,' OFFSET ',v_start);
prepare stmt from  @qr2;
execute stmt;
deallocate prepare stmt; 

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_paging_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_paging_table`(IN p_page_number integer,IN p_size integer,out p_sum_page integer,out p_sum_records integer,IN p_table_name varchar(255))
begin
declare v_start integer;
declare v_end integer ;
declare v_total_item integer default 0;

set v_start =(((p_page_number - 1) * p_size));
-- set v_end =(v_start+p_size-1)+1;


-- caculate number of record in table use input
set @qr =concat('select count(*) into @total_item from ',p_table_name,' n where n.trang_thai=1');
prepare stmt from  @qr;
execute stmt;
deallocate prepare stmt;  
select @total_item into v_total_item;

-- set value
set p_sum_records=v_total_item;

-- caculate number of pages

if (v_total_item mod p_size =0) then
	set p_sum_page =v_total_item div p_size;
    else
    set p_sum_page =(v_total_item div p_size)+1;
    end if;

-- result of paging
set @qr2 =concat('select * from ',p_table_name,' n where n.trang_thai=1 limit ',p_size,' OFFSET ',v_start);
prepare stmt from  @qr2;
execute stmt;
deallocate prepare stmt; 

end ;;
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

-- Dump completed on 2017-12-27 16:34:37
