-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: qlphongmach
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `benhnhan`
--

DROP TABLE IF EXISTS `benhnhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benhnhan` (
  `idBN` int NOT NULL AUTO_INCREMENT,
  `tenBN` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diachi` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `emailBN` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idBN`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benhnhan`
--

LOCK TABLES `benhnhan` WRITE;
/*!40000 ALTER TABLE `benhnhan` DISABLE KEYS */;
INSERT INTO `benhnhan` VALUES (1,'Hoàng Hoa Thám','1986-12-13','Nam','Hồ Chí Minh','0914005938','hoatham@gmail.com'),(2,'Nguyễn Văn Nguyên','1986-12-12','Nam','Bạc Liêu','0975611613','nhat@gmail.com'),(3,'Đặng Văn Ngữ','1986-12-12','Nam','Long An','0934197445','ngu@gmail.com'),(4,'Lê Hồng Phong','1986-12-12','Nam','Cà Mau','0938965425','phong@gmail.com'),(5,'Trần Thái Huy','1986-12-12','Nam','Đà Nẵng','0986282607','huy@gmail.com'),(6,'Võ Thị Hồng Nhân','1986-12-12','Nữ','Bình Định','0546121547','kien@gmail.com'),(7,'Võ Thị Tuyết Mai','1986-12-12','Nữ','Hải Dương','0314641247','Mai@gmail.com'),(8,'Phan Thanh Thanh','1986-12-12','Nữ','Hải Phòng','0211478621','phuong@gmail.com'),(9,'Nguyễn Thị Thúy Nga','1986-12-12','Nữ','Long Khánh','0134761311','nga@gmail.com'),(10,'Phan Thị Trúc Ngân','1986-12-12','Nữ','Hà Nội','0348624787','ngan@gmail.com');
/*!40000 ALTER TABLE `benhnhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitiettoathuoc`
--

DROP TABLE IF EXISTS `chitiettoathuoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitiettoathuoc` (
  `idCTTT` int NOT NULL AUTO_INCREMENT,
  `idTT` int DEFAULT NULL,
  `idthuoc` int NOT NULL,
  `dongia` double DEFAULT NULL,
  `soluong` int NOT NULL,
  `cachdung` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idHDKB` int DEFAULT NULL,
  PRIMARY KEY (`idCTTT`),
  KEY `fk_chitiettoathuoc_toathuoc_idx` (`idTT`),
  KEY `fk_chitiettoathuoc_thuoc_idx` (`idthuoc`),
  KEY `fk_chitiettoathuoc_hoadonkhambenh_idx` (`idHDKB`),
  CONSTRAINT `fk_chitiettoathuoc_hoadonkhambenh` FOREIGN KEY (`idHDKB`) REFERENCES `hoadonkhambenh` (`idHDKB`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_chitiettoathuoc_thuoc` FOREIGN KEY (`idthuoc`) REFERENCES `thuoc` (`idthuoc`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_chitiettoathuoc_toathuoc` FOREIGN KEY (`idTT`) REFERENCES `toathuoc` (`idTT`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiettoathuoc`
--

LOCK TABLES `chitiettoathuoc` WRITE;
/*!40000 ALTER TABLE `chitiettoathuoc` DISABLE KEYS */;
INSERT INTO `chitiettoathuoc` VALUES (1,1,1,50000,14,'sau ăn 1 viên',1),(2,2,2,80000,14,'sau ăn 1 viên',2),(3,3,3,50000,28,'Sáng 1, Tối 1, Chiều 1',3),(4,4,4,57000,10,'Sau ăn 2 viên',7),(5,5,5,89000,30,'Trước khi ăn',8),(7,NULL,2,80000,2,'Bôi 2 lần trong ngày',11),(8,NULL,5,89000,2,'sau ăn 1 viên',11);
/*!40000 ALTER TABLE `chitiettoathuoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chucvu`
--

DROP TABLE IF EXISTS `chucvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chucvu` (
  `idchucvu` int NOT NULL AUTO_INCREMENT,
  `tenchucvu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idchucvu`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chucvu`
--

LOCK TABLES `chucvu` WRITE;
/*!40000 ALTER TABLE `chucvu` DISABLE KEYS */;
INSERT INTO `chucvu` VALUES (2,'Bác sỹ'),(3,'Y tá');
/*!40000 ALTER TABLE `chucvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giokham`
--

DROP TABLE IF EXISTS `giokham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giokham` (
  `idgiokham` int NOT NULL AUTO_INCREMENT,
  `giokham` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idgiokham`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giokham`
--

LOCK TABLES `giokham` WRITE;
/*!40000 ALTER TABLE `giokham` DISABLE KEYS */;
INSERT INTO `giokham` VALUES (1,'8 giờ sáng - 10 giờ sáng'),(2,'10 giờ sáng - 12 giờ trưa'),(3,'12 giờ trưa - 2 giờ chiều'),(4,'2 giờ chiều - 4 giờ chiều'),(5,'4 giờ chiều - 6 giờ tối'),(6,'6 giờ tối - 8 giờ tối');
/*!40000 ALTER TABLE `giokham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadonkhambenh`
--

DROP TABLE IF EXISTS `hoadonkhambenh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadonkhambenh` (
  `idHDKB` int NOT NULL AUTO_INCREMENT,
  `tenHDKB` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phieukhambenh_id` int NOT NULL,
  `idNV` int DEFAULT NULL,
  `idBN` int DEFAULT NULL,
  `ngaylapHDKB` date NOT NULL,
  `thanhtien` double NOT NULL,
  PRIMARY KEY (`idHDKB`),
  KEY `fk_hoadonkhambenh_phieukhambenh_idx` (`phieukhambenh_id`),
  KEY `fk_hoadonkhambenh_nhanvien_idx` (`idNV`),
  KEY `fk_hoadonkhambenh_benhnhan_idx` (`idBN`),
  CONSTRAINT `fk_hoadonkhambenh_benhnhan` FOREIGN KEY (`idBN`) REFERENCES `benhnhan` (`idBN`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_hoadonkhambenh_nhanvien` FOREIGN KEY (`idNV`) REFERENCES `nhanvien` (`idNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_hoadonkhambenh_phieukhambenh` FOREIGN KEY (`phieukhambenh_id`) REFERENCES `phieukhambenh` (`idPKB`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadonkhambenh`
--

LOCK TABLES `hoadonkhambenh` WRITE;
/*!40000 ALTER TABLE `hoadonkhambenh` DISABLE KEYS */;
INSERT INTO `hoadonkhambenh` VALUES (1,'hóa đơn 1',1,5,1,'2019-04-03',100000),(2,'hóa đơn 2',2,5,2,'2019-05-10',200000),(3,'hóa đơn 3',3,5,3,'2020-06-13',300000),(7,'hóa đơn 4',4,3,4,'2021-08-03',300000),(8,'hóa đơn 5',5,3,5,'2021-09-03',400000),(11,NULL,3,5,3,'2021-10-14',338000);
/*!40000 ALTER TABLE `hoadonkhambenh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lichkham`
--

DROP TABLE IF EXISTS `lichkham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lichkham` (
  `idLK` int NOT NULL AUTO_INCREMENT,
  `tenLK` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `idNV` int DEFAULT NULL,
  `idBN` int DEFAULT NULL,
  `ghichu` varchar(240) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaydangky` date DEFAULT NULL,
  `idgiokham` int DEFAULT NULL,
  `id` int DEFAULT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idLK`),
  KEY `fk_lichkham_nhanvien_idx` (`idNV`),
  KEY `fk_lichkham_giokham_idx` (`idgiokham`),
  KEY `fk_lichkham_benhnhan_idx` (`idBN`),
  KEY `fk_lichkham_user_idx` (`id`),
  CONSTRAINT `fk_lichkham_benhnhan` FOREIGN KEY (`idBN`) REFERENCES `benhnhan` (`idBN`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lichkham_giokham` FOREIGN KEY (`idgiokham`) REFERENCES `giokham` (`idgiokham`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lichkham_nhanvien` FOREIGN KEY (`idNV`) REFERENCES `nhanvien` (`idNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lichkham_user` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lichkham`
--

LOCK TABLES `lichkham` WRITE;
/*!40000 ALTER TABLE `lichkham` DISABLE KEYS */;
INSERT INTO `lichkham` VALUES (1,'lịch khám 1',5,1,NULL,'2020-10-07',1,19,NULL),(3,'lịch khám 3',5,2,NULL,'2020-11-09',2,20,NULL),(5,'lịch khám 5',8,3,NULL,'2020-10-10',3,21,NULL),(6,'lịch khám 6',5,1,NULL,'2021-01-01',4,19,NULL),(7,'lịch khám 7',4,5,NULL,'2021-03-07',5,NULL,NULL),(8,'lịch khám 8',8,2,NULL,'2021-05-07',6,20,NULL),(10,'lịch khám 10',4,8,NULL,'2021-09-07',2,NULL,NULL),(11,'lịch khám 11',3,9,NULL,'2021-10-01',3,NULL,NULL),(12,'lịch khám 12',3,10,NULL,'2021-10-15',4,NULL,NULL),(16,NULL,1,NULL,NULL,'2021-11-04',1,NULL,'Nguyá»n Tham');
/*!40000 ALTER TABLE `lichkham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lichtruc`
--

DROP TABLE IF EXISTS `lichtruc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lichtruc` (
  `idlichtruc` int NOT NULL AUTO_INCREMENT,
  `ngaytruc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idlichtruc`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lichtruc`
--

LOCK TABLES `lichtruc` WRITE;
/*!40000 ALTER TABLE `lichtruc` DISABLE KEYS */;
INSERT INTO `lichtruc` VALUES (1,'full'),(2,'Thứ 2, Thứ 4'),(3,'Thứ 3, Thứ 5'),(4,'Thứ 6, Thứ 7');
/*!40000 ALTER TABLE `lichtruc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaithuoc`
--

DROP TABLE IF EXISTS `loaithuoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaithuoc` (
  `idloaithuoc` int NOT NULL AUTO_INCREMENT,
  `tenloaithuoc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idloaithuoc`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaithuoc`
--

LOCK TABLES `loaithuoc` WRITE;
/*!40000 ALTER TABLE `loaithuoc` DISABLE KEYS */;
INSERT INTO `loaithuoc` VALUES (7,'Thuốc đau đầu'),(8,'Thuốc rửa mặt'),(9,'Thuốc ho'),(10,'Thuốc sổ mũi'),(11,'Thuốc da liễu');
/*!40000 ALTER TABLE `loaithuoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `idNV` int NOT NULL AUTO_INCREMENT,
  `tenNV` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `diachi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idlichtruc` int DEFAULT NULL,
  `emailNV` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idchucvu` int DEFAULT NULL,
  PRIMARY KEY (`idNV`),
  KEY `fk_nhanvien_chucvu_idx` (`idchucvu`),
  KEY `fk_nhanvien_lichtruc_idx` (`idlichtruc`),
  CONSTRAINT `fk_nhanvien_chucvu` FOREIGN KEY (`idchucvu`) REFERENCES `chucvu` (`idchucvu`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_nhanvien_lichtruc` FOREIGN KEY (`idlichtruc`) REFERENCES `lichtruc` (`idlichtruc`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (1,'Bùi Xuân Hiếu','Nam','2000-05-04','Long Khánh','0336017530',1,'1851010045hieu@ou.edu.vn','https://res.cloudinary.com/djfijumdi/image/upload/v1633594672/QuanLyPhongMachTu/doctor/administrator_3_nw4h6s.png',3),(2,'Nguyễn Tấn Phát','Nam','2000-03-14','Long Khánh','0585243754',1,'1851010096@gmail.com','https://res.cloudinary.com/djfijumdi/image/upload/v1633594672/QuanLyPhongMachTu/doctor/administrator_3_nw4h6s.png',2),(3,'Hoàng Tuấn Thiên','Nam','1999-03-10','Sài gòn','0126945459',2,'thien@gmail.com','https://res.cloudinary.com/djfijumdi/image/upload/v1631068482/QuanLyPhongMachTu/doctor/doctor_3_olgxu6.png',2),(4,'Trần Thủ Độ','Nam','1998-10-12','Phú Yên','0126945455',3,'thudo12@gmail.com','https://res.cloudinary.com/djfijumdi/image/upload/v1631068482/QuanLyPhongMachTu/doctor/doctor_4_cybq3m.png',2),(5,'Võ Kim Yến','Nam','1990-03-12','Bình Dương','0687492125',4,'kimyen@gmail.com','https://res.cloudinary.com/djfijumdi/image/upload/v1633662371/tf3ieepw7g1fesqxcjzi.png',3),(8,'Nguyễn Văn Cao','Nam','1990-10-09','Đồng Nai','0899223114',2,'cao@gmail.com','https://res.cloudinary.com/djfijumdi/image/upload/v1633742027/skhc9j2wcrfhzcjylrw3.png',3),(13,'Trần Thị Hương','Nữ','1992-10-09','Đồng Nai','012238879',2,'huong@gmail.com','https://res.cloudinary.com/djfijumdi/image/upload/v1636121343/QuanLyPhongMachTu/nurse/yta_1_qqzf9n.jpg',3),(14,'Nguyễn Thị Nhân','Nữ','1993-10-09','Đồng Nai','012238879',3,'nhan@gmail.com','https://res.cloudinary.com/djfijumdi/image/upload/v1636121376/QuanLyPhongMachTu/nurse/yta_2_uka7cj.jpg',3),(15,'Cao Thị Hà','Nữ','1993-10-09','Đồng Nai','012238879',1,'ha@gmail.com','https://res.cloudinary.com/djfijumdi/image/upload/v1636121343/QuanLyPhongMachTu/nurse/yta_3_zdourk.png',3);
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieukhambenh`
--

DROP TABLE IF EXISTS `phieukhambenh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieukhambenh` (
  `idPKB` int NOT NULL AUTO_INCREMENT,
  `tenPKB` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenbenhnhan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nhanvien_id` int NOT NULL,
  `trieuchung` varchar(240) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `chandoan` varchar(240) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ghichu` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `hinhanh` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaykham` date DEFAULT NULL,
  `lichhen` date DEFAULT NULL,
  PRIMARY KEY (`idPKB`),
  KEY `fk_phieukhambenh_nhanvien_idx` (`nhanvien_id`),
  CONSTRAINT `fk_phieukhambenh_nhanvien` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`idNV`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieukhambenh`
--

LOCK TABLES `phieukhambenh` WRITE;
/*!40000 ALTER TABLE `phieukhambenh` DISABLE KEYS */;
INSERT INTO `phieukhambenh` VALUES (1,'phiếu khám bênh 1','Hoàng Hoa Thám',3,'đau chân','đau chân','','https://res.cloudinary.com/djfijumdi/image/upload/v1633858700/note_mqa5du.jpg','2018-09-29','2018-10-05'),(2,'phiếu khám bệnh 2','Nguyễn Văn Nguyên',4,'đau bao tử','đau bao tử','','https://res.cloudinary.com/djfijumdi/image/upload/v1633858700/note_mqa5du.jpg','2018-09-30','2018-10-06'),(3,'Phiếu khám bệnh 3','Đặng Văn Ngữ',5,'đau ruột thừa','đau ruột thừa',NULL,'https://res.cloudinary.com/djfijumdi/image/upload/v1633858700/note_mqa5du.jpg','2019-10-01','2019-10-07'),(4,'phiếu khám bệnh 4','Lê Hồng Phong',4,'gãy tay','gãy tay',NULL,'https://res.cloudinary.com/djfijumdi/image/upload/v1633858700/note_mqa5du.jpg','2020-10-02','2020-10-08'),(5,'phiếu khám bệnh 5','Trần Thái Huy',3,'huyết áp cao','huyết áp cao',NULL,'https://res.cloudinary.com/djfijumdi/image/upload/v1633858700/note_mqa5du.jpg','2021-10-03','2021-10-09'),(6,'phiếu khám bệnh 6','Võ Thị Hồng Nhân',3,'đau tim','nhồi máu cơ tim','','https://res.cloudinary.com/djfijumdi/image/upload/v1636120556/c4wwt6jmpk8ns2lqyrga.jpg','2021-10-04','2021-10-11');
/*!40000 ALTER TABLE `phieukhambenh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thuoc`
--

DROP TABLE IF EXISTS `thuoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thuoc` (
  `idthuoc` int NOT NULL AUTO_INCREMENT,
  `tenthuoc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `congdung` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soluongcon` int NOT NULL,
  `dongia` double NOT NULL,
  `ngaysx` date DEFAULT NULL,
  `hansudung` date DEFAULT NULL,
  `nhanvien_id` int DEFAULT NULL,
  `hinhthuoc` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idloaithuoc` int DEFAULT NULL,
  `cachdung` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idthuoc`),
  KEY `fk_thuoc_nhanvien_idx` (`nhanvien_id`),
  KEY `fk_thuoc_loaithuoc_idx` (`idloaithuoc`),
  CONSTRAINT `fk_thuoc_loaithuoc` FOREIGN KEY (`idloaithuoc`) REFERENCES `loaithuoc` (`idloaithuoc`),
  CONSTRAINT `fk_thuoc_nhanvien` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`idNV`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thuoc`
--

LOCK TABLES `thuoc` WRITE;
/*!40000 ALTER TABLE `thuoc` DISABLE KEYS */;
INSERT INTO `thuoc` VALUES (1,'Paracetamol','Trị đau đầu',50,50000,'2021-04-05','2022-04-05',1,'https://res.cloudinary.com/djfijumdi/image/upload/v1631072854/QuanLyPhongMachTu/medicine/ThuocDauDau/panadol_tkomlj.png',7,'sau ăn 1 viên'),(2,'Acerin','Trị mụn',100,80000,'2021-04-05','2022-04-05',2,'https://res.cloudinary.com/djfijumdi/image/upload/v1633576589/pix4kq1cwtyj8529ngbf.png',8,'Bôi 2 lần trong ngày'),(3,'Benzel Dioxit',NULL,50,50000,'2021-04-05','2022-04-05',1,'https://res.cloudinary.com/djfijumdi/image/upload/v1631072854/QuanLyPhongMachTu/medicine/ThuocDauDau/panadol_tkomlj.png',NULL,'sau ăn 1 viên'),(4,'Tomax Genta','Trị viêm da',50,57000,'2021-04-05','2022-04-05',2,'https://res.cloudinary.com/djfijumdi/image/upload/v1631072818/QuanLyPhongMachTu/medicine/ThuocDaLieu/TOMAX_genta_sc4kcb.jpg',11,'Bôi 2 lần trong ngày'),(5,'Prospan','Trị ho',100,89000,'2021-04-05','2022-04-05',1,'https://res.cloudinary.com/djfijumdi/image/upload/v1631072979/QuanLyPhongMachTu/medicine/ThuocHo/prospan_fzvws0.jpg',9,'sau ăn 1 viên'),(6,'Otrivin','Trị sổ mũi',50,8900,'2021-04-05','2022-04-05',2,'https://res.cloudinary.com/djfijumdi/image/upload/v1631073356/QuanLyPhongMachTu/medicine/ThuocSoMui/Otrivin_xvrxvb.jpg',10,'Sáng 1, Tối 1, Chiều 1'),(7,'Lorastad','Trị sổ mũi',150,8000,'2021-04-05','2022-04-05',1,'https://res.cloudinary.com/djfijumdi/image/upload/v1631072744/QuanLyPhongMachTu/medicine/ThuocSoMui/Lorastad_k0xdpr.jpg',10,'Sáng 1, Tối 1, Chiều 1'),(8,'Madica',NULL,100,10000,NULL,NULL,2,'https://res.cloudinary.com/djfijumdi/image/upload/v1631072854/QuanLyPhongMachTu/medicine/ThuocDauDau/panadol_tkomlj.png',NULL,'sau ăn 1 viên'),(9,'Benzen',NULL,50,17000,NULL,NULL,1,'https://res.cloudinary.com/djfijumdi/image/upload/v1631072854/QuanLyPhongMachTu/medicine/ThuocDauDau/panadol_tkomlj.png',NULL,'sau ăn 1 viên'),(10,'Paradol',NULL,100,9000,NULL,NULL,2,'https://res.cloudinary.com/djfijumdi/image/upload/v1631072854/QuanLyPhongMachTu/medicine/ThuocDauDau/panadol_tkomlj.png',NULL,'Sáng 1, Tối 1, Chiều 1'),(13,'Gentrisone','Trị viêm da',3,12000,'2021-10-07','2022-10-07',NULL,'https://res.cloudinary.com/djfijumdi/image/upload/v1633579400/tu8tuhfgxgdw9hpqtjmz.png',11,'Bôi 2 lần trong ngày'),(15,'Dopagan 500','Trị đau đầu',10,500000,'2021-11-06','2022-11-06',NULL,'https://res.cloudinary.com/djfijumdi/image/upload/v1636206050/niauhjphvslwkhetvhvm.jpg',7,NULL);
/*!40000 ALTER TABLE `thuoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toathuoc`
--

DROP TABLE IF EXISTS `toathuoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toathuoc` (
  `idTT` int NOT NULL AUTO_INCREMENT,
  `tenTT` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaylapTT` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thanhtien` double NOT NULL,
  `idNV` int DEFAULT NULL,
  `phieukhambenh_id` int NOT NULL,
  PRIMARY KEY (`idTT`),
  KEY `fk_toathuoc_nhanvien_idx` (`idNV`),
  KEY `fk_toathuoc_phieukhambenh_idx` (`phieukhambenh_id`),
  CONSTRAINT `fk_toathuoc_nhanvien` FOREIGN KEY (`idNV`) REFERENCES `nhanvien` (`idNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_toathuoc_phieukhambenh` FOREIGN KEY (`phieukhambenh_id`) REFERENCES `phieukhambenh` (`idPKB`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toathuoc`
--

LOCK TABLES `toathuoc` WRITE;
/*!40000 ALTER TABLE `toathuoc` DISABLE KEYS */;
INSERT INTO `toathuoc` VALUES (1,'toa thuốc 1','29/9/2021',100000,3,1),(2,'toa thuốc 2','30/9/2021',200000,4,2),(3,'toa thuốc 3','1/10/2021',300000,3,3),(4,'toa thuốc 4','2/10/2021',400000,4,4),(5,'toa thuốc 5','3/10/2021',500000,5,5);
/*!40000 ALTER TABLE `toathuoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(240) NOT NULL,
  `active` bit(1) DEFAULT NULL,
  `user_role` varchar(45) DEFAULT NULL,
  `avatar` varchar(150) DEFAULT NULL,
  `idBN` int DEFAULT NULL,
  `idNV` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_nhanvien_idx` (`idNV`),
  KEY `fk_user_benhnhan_idx` (`idBN`),
  CONSTRAINT `fk_user_benhnhan` FOREIGN KEY (`idBN`) REFERENCES `benhnhan` (`idBN`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_nhanvien` FOREIGN KEY (`idNV`) REFERENCES `nhanvien` (`idNV`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'phat','$2a$10$XRKNumkYjBM5f/YEMLpwx.wNd1FF8ljMlOfGM8R6al6b5NI1cu3jm',_binary '','ROLE_ADMIN',NULL,NULL,NULL),(6,'hieu','$2a$10$n5zGfBuuZOrHagZwQNPSGekswiL8o9NRFkdrUgL2z59zDYhMn1BR.',_binary '','ROLE_ADMIN',NULL,NULL,NULL),(8,'thien','$2a$10$mEtvSICbKTHS0FunwgIi8uqNvtGd/ae38FnfYatPom3Z0THwoniHy',_binary '\0','ROLE_BACSY','https://res.cloudinary.com/djfijumdi/image/upload/v1634043444/rsxax2hho1sdctf4wexh.png',NULL,3),(9,'do','$2a$10$QbFHRfqsZrGmvy0XR6Np8e1N5IOy11jL4cuTidfTcGMS/Evszyeeq',_binary '\0','ROLE_BACSY','https://res.cloudinary.com/djfijumdi/image/upload/v1634043458/gqjyvchappiirlltmo71.png',NULL,4),(10,'yen','$2a$10$u5DKwl/LMwFw2YfOhe/cRu8oufwMlh06R.uccF.5dk/0wZcGcD5qW',_binary '\0','ROLE_YTA','https://res.cloudinary.com/djfijumdi/image/upload/v1634043472/kmbmpjwaddi0neyzstoh.png',NULL,5),(15,'cao','$2a$10$zNbvQKz/FPWKIs4b7jw2M.2EdnzRB3KM/AoO6UfUueGsGY06ZF4pW',NULL,'ROLE_YTA','https://res.cloudinary.com/djfijumdi/image/upload/v1634093463/ny9s5pmgvbthdlueup6i.png',NULL,8),(17,'ngan','$2a$10$8LPc.NRKFxCZYTBJwPutDuxY5BlX3berAPlNoqlD8zYa1y/.0xFBK',NULL,'ROLE_USER','https://res.cloudinary.com/djfijumdi/image/upload/v1634870906/zxgryztno4homqak9com.png',10,NULL),(18,'kim','$2a$10$mpDON.NMvKjlJHnAgVP5EOqjZ9SoyUg4G35PuL1ytrFl/hGaZQvqu',NULL,'ROLE_USER','https://res.cloudinary.com/djfijumdi/image/upload/v1634871098/tv48b2qj5dq5cddxhogg.png',NULL,NULL),(19,'tham','$2a$10$SQ3Xptu9ESYb0ymfV1rvkeo2AIxsir4xyz5WczUCE4Rk7ewSuoJpC',_binary '','ROLE_USER','https://res.cloudinary.com/djfijumdi/image/upload/v1635083752/m1cqapq3fzvfiesagidj.png',1,NULL),(20,'nguyen','$2a$10$wzZ1A70z0bgPzTD9hUee1eDcWGo/uKnzFzaKcv/JZOv3HiTfTXb2W',NULL,'ROLE_USER','https://res.cloudinary.com/djfijumdi/image/upload/v1635086512/gahp8oedwqdbzigs6lum.png',2,NULL),(21,'ngu','$2a$10$Rzv6WMa9XSjNBGkF0PkS/.9zBevka2gGbfl9lF2f59WPLwP7l6W0e',NULL,'ROLE_USER','https://res.cloudinary.com/djfijumdi/image/upload/v1635383312/slis7k9mhnigogyjomav.png',3,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-07 18:53:24
