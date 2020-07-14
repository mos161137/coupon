-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2019 at 05:41 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `picsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessory`
--

CREATE TABLE `accessory` (
  `accessory_id` int(11) NOT NULL,
  `accessory_name` varchar(300) NOT NULL,
  `accessory_price` int(11) NOT NULL,
  `accessory_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accessory`
--

INSERT INTO `accessory` (`accessory_id`, `accessory_name`, `accessory_price`, `accessory_type`) VALUES
(1, 'เครื่องมือ 001', 0, ''),
(2, 'เครื่องมือ 002', 0, ''),
(3, 'เครื่องมือ 003', 0, ''),
(4, 'ทดสอบ', 0, ''),
(5, 'สดายุ', 0, ''),
(6, 'เครื่องมือ 004', 0, ''),
(7, 'เครื่องมือ 005', 0, ''),
(8, 'เครื่องมือ 006', 0, ''),
(9, 'เครื่องมือ 007', 0, ''),
(10, 'เครื่องมือ 008', 0, ''),
(11, 'เครื่องมือ 009', 0, ''),
(12, 'เครื่องมือ 010', 0, ''),
(13, 'เครื่องมือ 0123', 0, ''),
(14, 'เครื่องมือ 0013142', 0, ''),
(15, '', 0, ''),
(16, 'cccc', 0, ''),
(17, 'bbbb', 0, ''),
(18, 'name', 0, ''),
(19, 'age', 0, ''),
(20, 'cars', 0, ''),
(21, 'adadada', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `accessory_com`
--

CREATE TABLE `accessory_com` (
  `accessorycom_id` int(11) NOT NULL,
  `accessorycom_name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accessory_com`
--

INSERT INTO `accessory_com` (`accessorycom_id`, `accessorycom_name`) VALUES
(1, ''),
(2, 'tele'),
(3, 'ais'),
(4, 'dtac'),
(5, 'cccc'),
(6, 'bbbb'),
(7, 'name'),
(8, 'age'),
(9, 'cars'),
(10, 'adadad'),
(11, 'Olympus');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `article_title` varchar(500) NOT NULL,
  `article_detail` varchar(1000) NOT NULL,
  `article_description` mediumtext NOT NULL,
  `article_author` int(11) NOT NULL,
  `article_date` date NOT NULL,
  `article_pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `article_title`, `article_detail`, `article_description`, `article_author`, `article_date`, `article_pic`) VALUES
(1, 'การกำจัดสิ่งปนเปื้อนในน้ำที่เกิดจากกระบวนการผลิตของโรงงานอุตสาหกรรม หรือเกิดจากกิจวัตรประจำวันของประชาชนที่อยู่อาศัยในชุมชนหรือแหล่งที่อยู่อาศัยต่างๆ ให้หมดไป หรือมีปริมาณสิ่งปนเปื้อนในน้ำลดลงจนมีคุณภาพเป็นไปตามมาตรฐานน้ำทิ้งน้ำเสียที่เกิดขึ้นจากแหล่งกำเนิดต่างๆ อาทิ โรงงานอุตสาหกรรมและนิคมอุตสาหกรรม อาคารที่พักอาศัยต่างๆ และพื้นที่เกษตรกรรม จะมีปริมาณสารเคมีหรือสารละลายเข้มข้นผสมอยู่ในปริมาณ ที่แตกต่างกัน  ทั้งนี้ สามารถแบ่งประเภทน้ำเสียตามสารหลักที่ให้ลักษณะเด่นของน้ำเสียเป็น 5 ประเภท ดังนี้', 'ไคทิน (chitin) เป็นคาร์โบไฮเดรต (carbohydrate) ประเภทพอลิแซ็กคาไรด์ (polysaccharide) ท่ีมีสายยาว มีโครงสร้างคล้ายกับเซลลูโลส (cellulose) โมเลกุลของไคทิน เป็นพอลิเมอร์ของ N-acetyl-D-glucosamine ต่อกับด้วยพันธะไกลโคไซด์ (glycosidic bond) แบบ β-1,4 แต่หมู่ hydroxyl (-OH) ที่ตำแหน่ง C2 จะถูกแทนที่ด้วยกลุ่ม acetyl amino (-NHCOCH3)', '<p>ไคทิน (chitin)&nbsp;เป็นคาร์โบไฮเดรต (<a href=\"http://www.foodnetworksolution.com/wiki/word/1097/carbohydrate-%E0%B8%84%E0%B8%B2%E0%B8%A3%E0%B9%8C%E0%B9%82%E0%B8%9A%E0%B9%84%E0%B8%AE%E0%B9%80%E0%B8%94%E0%B8%A3%E0%B8%95\">carbohydrate</a>) ประเภทพอลิแซ็กคาไรด์ (<a href=\"http://www.foodnetworksolution.com/wiki/word/1101/polysaccharide-%E0%B8%9E%E0%B8%AD%E0%B8%A5%E0%B8%B4%E0%B9%81%E0%B8%8B%E0%B8%84%E0%B8%84%E0%B8%B2%E0%B9%84%E0%B8%A3%E0%B8%94%E0%B9%8C\">polysaccharide</a>) ท่ีมีสายยาว มีโครงสร้างคล้ายกับเซลลูโลส (<a href=\"http://www.foodnetworksolution.com/wiki/word/0612/cellulose-%E0%B9%80%E0%B8%8B%E0%B8%A5%E0%B8%A5%E0%B8%B9%E0%B9%82%E0%B8%A5%E0%B8%AA\">cellulose</a>) โมเลกุลของไคทิน เป็นพอลิเมอร์ของ N-acetyl-D-glucosamine ต่อกับด้วยพันธะไกลโคไซด์ (<a href=\"http://www.foodnetworksolution.com/wiki/word/1630/glycosidic-bond-%E0%B8%9E%E0%B8%B1%E0%B8%99%E0%B8%98%E0%B8%B0%E0%B9%84%E0%B8%81%E0%B8%A5%E0%B9%82%E0%B8%84%E0%B8%8B%E0%B8%B4%E0%B8%94%E0%B8%B4%E0%B8%81\">glycosidic bond</a>) แบบ &beta;-1,4 แต่หมู่ hydroxyl (-OH) ที่ตำแหน่ง C2 จะถูกแทนที่ด้วยกลุ่ม acetyl amino (-NHCOCH3)</p>\r\n\r\n<p>ไคทิน เป็นส่วนประกอบ<a href=\"http://www.foodnetworksolution.com/wiki/word/4077/cell-wall-%E0%B8%9C%E0%B8%99%E0%B8%B1%E0%B8%87%E0%B9%80%E0%B8%8B%E0%B8%A5%E0%B8%A5%E0%B9%8C\">ผนังเซลล์</a>ของสัตว์ที่ไม่มีกระดูกสันหลัง เช่น เปลือก<a href=\"http://www.foodnetworksolution.com/wiki/word/0986/shrimp-%E0%B8%81%E0%B8%B8%E0%B9%89%E0%B8%87\">กุ้ง</a>&nbsp;กระดอง<a href=\"http://www.foodnetworksolution.com/wiki/word/1974/crab-%E0%B8%9B%E0%B8%B9\">ปู</a>&nbsp;แกน<a href=\"http://www.foodnetworksolution.com/wiki/word/1973/%E0%B8%9B%E0%B8%A5%E0%B8%B2%E0%B8%AB%E0%B8%A1%E0%B8%B6%E0%B8%81\">ปลาหมึก</a>&nbsp;แมลง ตัวไหม และ<a href=\"http://www.foodnetworksolution.com/wiki/word/4077/cell-wall-%E0%B8%9C%E0%B8%99%E0%B8%B1%E0%B8%87%E0%B9%80%E0%B8%8B%E0%B8%A5%E0%B8%A5%E0%B9%8C\">ผนังเซลล์</a>ของสิ่งมีชีวิตในอาณาจักรฟังไจ (<a href=\"http://www.foodnetworksolution.com/wiki/word/2010/fungi-%E0%B8%9F%E0%B8%B1%E0%B8%87%E0%B9%84%E0%B8%88\">fungi</a>) ได้แก่ รา (<a href=\"http://www.foodnetworksolution.com/wiki/word/0831/mold-%E0%B8%A3%E0%B8%B2\">mold</a>) และยีสต์ (<a href=\"http://www.foodnetworksolution.com/wiki/word/0555/yeast-%E0%B8%A2%E0%B8%B5%E0%B8%AA%E0%B8%95%E0%B9%8C\">yeast</a>)</p>\r\n\r\n<p><img alt=\"chitin\" src=\"http://www.foodnetworksolution.com/uploaded/Chitin.jpg\" style=\"height:281px; width:443px\" /></p>\r\n\r\n<p>ไคทินเป็นวัตถุดิบเพื่อสกัด&nbsp;<a href=\"http://www.foodnetworksolution.com/wiki/word/3706/%E0%B9%84%E0%B8%84%E0%B9%82%E0%B8%95%E0%B8%8B%E0%B8%B2%E0%B8%99\">ไคโทซาน</a>&nbsp;มีสมบัติย่อยสลายได้ง่าย ไม่ก่อให้เกิดอันตรายต่อสิ่งแวดล้อม ละลายได้ดีในสารละลายกรดอินทรีย์เจือจาง และจับกับไอออนของโลหะได้ดี</p>\r\n\r\n<p>การใช้ไคทินในอุตสาหกรรมอาหาร</p>\r\n\r\n<p>ไคทินและไคโทซาน มาใช้ประโยน์ในอุตสาหกรรมอาหาร เช่น</p>\r\n\r\n<ul>\r\n	<li>ใช้ในผลิตภัณฑ์เสริมอาหารเพื่อคุณภาพในการลดไขมันและคอเลสเตอรอล (<a href=\"http://www.foodnetworksolution.com/wiki/word/0236/cholesterol-%E0%B9%82%E0%B8%84%E0%B9%80%E0%B8%A5%E0%B8%AA%E0%B9%80%E0%B8%95%E0%B8%AD%E0%B8%A3%E0%B8%AD%E0%B8%A5\">cholesterol</a>)</li>\r\n	<li>สารให้ความคงตัว (<a href=\"http://www.foodnetworksolution.com/wiki/word/1466/stabilizing-agent-%E0%B8%AA%E0%B8%B2%E0%B8%A3%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%97%E0%B8%B3%E0%B9%83%E0%B8%AB%E0%B9%89%E0%B8%84%E0%B8%87%E0%B8%95%E0%B8%B1%E0%B8%A7\">stabilizing agent</a>)</li>\r\n	<li>สารให้ความข้นหนืด (<a href=\"http://www.foodnetworksolution.com/wiki/word/0530/thickening-agent-thickener\">thickening agent</a>)</li>\r\n	<li>เป็นสารกันเสีย (<a href=\"http://www.foodnetworksolution.com/wiki/word/0447/preservative-%E0%B8%A7%E0%B8%B1%E0%B8%95%E0%B8%96%E0%B8%B8%E0%B8%81%E0%B8%B1%E0%B8%99%E0%B9%80%E0%B8%AA%E0%B8%B5%E0%B8%A2\">preservative</a>) เพื่อป้องกันแบคทีเรีย (<a href=\"http://www.foodnetworksolution.com/wiki/word/0197/%E0%B9%81%E0%B8%9A%E0%B8%84%E0%B8%97%E0%B8%B5%E0%B9%80%E0%B8%A3%E0%B8%B5%E0%B8%A2-bacteria\">bacteria</a>) และรา (<a href=\"http://www.foodnetworksolution.com/wiki/word/0831/mold-%E0%B8%A3%E0%B8%B2\">mold</a>)</li>\r\n	<li>ช่วยในการบำบัดนํ้าเสีย (<a href=\"http://www.foodnetworksolution.com/wiki/word/1458/waste-water-treatment-%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B8%9A%E0%B8%B3%E0%B8%9A%E0%B8%B1%E0%B8%94%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B9%80%E0%B8%AA%E0%B8%B5%E0%B8%A2\">waste water treatment</a>) เป็นสารสร้างตะกอน (<a href=\"http://www.foodnetworksolution.com/wiki/word/0243/coagulant-%E0%B8%AA%E0%B8%B2%E0%B8%A3%E0%B8%AA%E0%B8%A3%E0%B9%89%E0%B8%B2%E0%B8%87%E0%B8%95%E0%B8%B0%E0%B8%81%E0%B8%AD%E0%B8%99-%E0%B8%AA%E0%B8%B2%E0%B8%A3%E0%B8%81%E0%B9%88%E0%B8%AD%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B8%88%E0%B8%B1%E0%B8%9A%E0%B8%81%E0%B9%89%E0%B8%AD%E0%B8%99\">coagulant</a>) เพื่อตกตะกอนโปรตีนและจับโลหะหนัก</li>\r\n	<li>ใช้เป็นสารเคลือบ<a href=\"http://www.foodnetworksolution.com/wiki/word/1665/vegetable-%E0%B8%9C%E0%B8%B1%E0%B8%81\">ผัก</a><a href=\"http://www.foodnetworksolution.com/wiki/word/1662/fruit-%E0%B8%9C%E0%B8%A5%E0%B9%84%E0%B8%A1%E0%B9%89\">ผลไม้</a>เพื่อการยืด<a href=\"http://www.foodnetworksolution.com/wiki/word/0492/shelf-life-%E0%B8%AD%E0%B8%B2%E0%B8%A2%E0%B8%B8%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B9%80%E0%B8%81%E0%B9%87%E0%B8%9A%E0%B8%A3%E0%B8%B1%E0%B8%81%E0%B8%A9%E0%B8%B2\">อายุการเก็บรักษา</a></li>\r\n	<li>การทำให้นํ้าผักและผลไม้ใส (clearification)</li>\r\n	<li>เป็นสารแยกสิ่งเจือปนในกระบวนการผลิตเอนไซม์ (<a href=\"http://www.foodnetworksolution.com/wiki/word/0680/enzyme-%E0%B9%80%E0%B8%AD%E0%B8%99%E0%B9%84%E0%B8%8B%E0%B8%A1%E0%B9%8C\">enzyme</a>) โปรตีน (<a href=\"http://www.foodnetworksolution.com/wiki/word/1189/protein-%E0%B9%82%E0%B8%9B%E0%B8%A3%E0%B8%95%E0%B8%B5%E0%B8%99\">protein</a>) สำหรับงานทางด้านเทคโนโลยีอาหาร เทคโนโลยีชีวภาพ วิศวกรรมชีวเคมี เป็นต้น</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Reference</p>\r\n\r\n<p><a href=\"http://www.nicaonline.com/articles9/site/view_article.asp?idarticle=158\">http://www.nicaonline.com/articles9/site/view_article.asp?idarticle=158</a></p>', 0, '0000-00-00', '1559771299.jpg'),
(2, 'Waste water treatment หมายถึง การบำบัดน้ำเสีย', 'ขั้นตอนในการบำบัดน้ำเสีย  เนื่องจากน้ำเสียมีแหล่งที่มาแตกต่างกันจึงทำให้มีปริมาณและความสกปรกของน้ำเสียแตกต่างกันไปด้วย ในการปรับปรุงคุณภาพของน้ำเสียจำเป็นจะต้องเลือกวิธีการที่เหมาะสม สำหรับกรรมวิธีในการปรับปรุงคุณภาพของน้ำเสียนั้นมีหลายวิธีด้วยกัน ซึ่งจะแบ่งขั้นตอนในการบำบัดออกได้ดังนี้', '<p>Waste water treatment หมายถึง การบำบัดน้ำเสีย</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ขั้นตอนในการบำบัดน้ำเสีย</p>\r\n\r\n<p>เนื่องจากน้ำเสียมีแหล่งที่มาแตกต่างกันจึงทำให้มีปริมาณและความสกปรกของน้ำเสียแตกต่างกันไปด้วย ในการปรับปรุงคุณภาพของน้ำเสียจำเป็นจะต้องเลือกวิธีการที่เหมาะสม สำหรับกรรมวิธีในการปรับปรุงคุณภาพของน้ำเสียนั้นมีหลายวิธีด้วยกัน ซึ่งจะแบ่งขั้นตอนในการบำบัดออกได้ดังนี้</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>การบำบัดน้ำเสียขั้นเตรียมการ (pretreatment)&nbsp;เป็นการกำจัดของแข็งขนาดใหญ่ออก ก่อนที่น้ำเสียจะถูกปล่อยเข้าสู่ระบบบำบัดน้ำเสีย เพื่อป้องกันการอุดตันท่อน้ำเสีย และเพื่อไม่ให้ทำความเสียหายให้แก่เครื่องสูบน้ำ การบำบัดในขั้นนี้ ได้แก่</p>\r\n\r\n<ul>\r\n	<li>การดักด้วยตะแกรง (screening) เป็นการกำจัดของแข็งขนาดใหญ่โดยใช้ตะแกรง ตะแกรงที่ใช้โดยทั่วไปมี 2 ประเภท คือ ตะแกรงหยาบและตะแกรงละเอียด</li>\r\n	<li>การบดตัดเป็นการลดขนาดหรือปริมาตรของแข็งให้เล็กลง ถ้าสิ่งสกปรกที่ลอยมากับน้ำเสียเป็นสิ่งที่เน่าเปื่อยได้ต้องใช้เครื่องบดตัดให้ละเอียด ก่อนแยกออกด้วยการตกตะกอน</li>\r\n	<li>การดักกรวดทราย เป็นการกำจัดพวกกรวดทรายทำให้ตกตะกอนในรางดักกรวดทราย โดยการลดความเร็วน้ำลง</li>\r\n	<li>การกำจัดไขมันและน้ำมันเป็นการกำจัดไขมันและน้ำมันซึ่งมักอยู่ในน้ำเสียที่มาจากครัว โรงอาหาร และโรงงานอุตสาหกรรมอาหารบางชนิด โดยการกักน้ำเสียไว้ในบ่อดักไขมันในช่วงเวลาหนึ่ งเพื่อให้น้ำมันและไขมันลอยตัวขึ้นสู่ผิวน้ำ แล้วใช้เครื่องตักหรือกวาดออกจากบ่อ</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://www.foodnetworksolution.com/uploaded/Activated_SludgeMar.jpg\" style=\"height:506px; width:584px\" /></p>\r\n\r\n<p>การบำบัดน้ำเสียขั้นที่สอง (secondary treatment)&nbsp;เป็นการกำจัดน้ำเสียที่เป็นพวกสารอินทรีย์อยู่ในรูปสารละลายหรืออนุภาคคอลลอยด์ โดยทั่วไปมักจะเรียกการบำบัด ขั้นที่สองนี้ว่า &quot;การบำบัดน้ำเสียด้วยกระบวนการทางชีววิทยา&quot; เนื่องจากเป็นขั้นตอนที่ต้องอาศัยจุลินทรีย์ในการย่อยสลาย หรือทำลายความสกปรกในน้ำเสีย การบำบัดน้ำเสียในปัจจุบันนื้อย่างน้อยจะต้องบำบัดถึงขั้นที่สองนี้ เพื่อให้น้ำเสียที่ผ่านการบำบัดแล้วมีคุณภาพมาตรฐานน้ำทิ้งที่ทางราชการกำหนดไว้&nbsp;การบำบัดน้ำเสียด้วยขบวนการทางชีววิทยาแบ่งเป็น 2 ประเภท ได้แก่</p>\r\n\r\n<ul>\r\n	<li>กระบวนการที่ใช้ออกซิเจน เช่น</li>\r\n</ul>\r\n\r\n<p>- ระบบบ่อเติมอากาศ (<a href=\"http://www.foodnetworksolution.com/wiki/word/0707/aeration-tank-%E0%B8%96%E0%B8%B1%E0%B8%87%E0%B9%80%E0%B8%95%E0%B8%B4%E0%B8%A1%E0%B8%AD%E0%B8%B2%E0%B8%81%E0%B8%B2%E0%B8%A8\">aeration tank</a>)</p>\r\n\r\n<p>- ระบบแคติเวตเตดสลัดจ์ (<a href=\"http://www.foodnetworksolution.com/wiki/word/0574/activated-sludge-process-%E0%B8%81%E0%B8%A3%E0%B8%B0%E0%B8%9A%E0%B8%A7%E0%B8%99%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B9%81%E0%B8%AD%E0%B8%81%E0%B8%97%E0%B8%B4%E0%B9%80%E0%B8%A7%E0%B9%80%E0%B8%95%E0%B9%87%E0%B8%94%E0%B8%AA%E0%B8%A5%E0%B8%B1%E0%B8%94%E0%B8%88%E0%B9%8C\">activated sludge process</a>)</p>\r\n\r\n<p>- ระบบแผ่นหมุนชีวภาพ</p>\r\n\r\n<p>- ลากูน (<a href=\"http://www.foodnetworksolution.com/wiki/word/0387/lagoon-%E0%B8%A5%E0%B8%B2%E0%B8%81%E0%B8%B9%E0%B8%99\">lagoon</a>)</p>\r\n\r\n<ul>\r\n	<li>กระบวนการที่ไม่ใช้ออกซิเจน เช่น ระบบถังกรองไร้อากาศ ระบบถังหมักตะกอน ทั้งนี้ขึ้นอยู่กับชนิดของจุลินทรีย์ ที่ทำหน้าที่ย่อยสลาย</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>การบำบัดน้ำเสียขั้นสูง (advanced treatment)&nbsp;เป็นการบำบัดน้ำเสียที่ผ่านการบำบัดในขั้นที่สองมาแล้ว เพื่อกำจัดสิ่งสกปรกบางอย่างที่ยังเหลืออยู่ เช่น โลหะหนัก หรือเชื้อโรคบางชนิดก่อนจะระบายน้ำทิ้งลงสู่แหล่งน้ำสาธารณะ การบำบัดขั้นนี้มักไม่นิยมปฏิบัติกัน เนื่องจากมีขั้นตอนที่ยุ่งยากและเสียค่าใช้จ่ายสูง นอกจากผู้บำบัดจะมีวัตถุประสงค์ในการนำน้ำที่บำบัดแล้วกลับคืนมาใช้อีกครั้ง</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ที่มา : รวบรวมจาก ฝ่ายสุขาภิบาลโรงงาน กองอนามัยสิ่งแวดล้อม สำนักอนามัย กรุงเทพมหานคร</p>', 0, '0000-00-00', '1559771459.jpg'),
(3, 'ทดสอบ', 'test', '<p><img alt=\"iOS 13 จะมีโหมดชะลอการชาร์จไฟเวลากลางคืน จะไม่ปล่อยเต็มจนกว่าจะใช้งาน\" src=\"https://s.isanook.com/hi/0/rp/r/w700/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL2hpLzAvdWQvMjk1LzE0NzcxODUvYWhyMGNobTZseTl6bG1senl3NXZiMnN1eTI5dGwuanBn.jpg\" /></p>\r\n\r\n<p><a href=\"http://hitech.sanook.com/\" target=\"_blank\"><img alt=\"S! Hitech (Rewrite)\" src=\"https://s.isanook.com/hi/0/uc/1/6489/logo_100x35.jpg\" style=\"height:35px; width:100px\" /></a></p>\r\n\r\n<p>สนับสนุนเนื้อหา</p>\r\n\r\n<p>การชาร์จไฟเวลากลางคืนถือว่าเป็นอีกเรื่องที่อาจจะทำให้แบตเตอรี่เสื่อมได้ง่ายมาก และหลายคนอาจจะไม่เคยรู้และแน่นอนว่าใน&nbsp;<a href=\"http://www.sanook.com/hitech/1477201/\" target=\"_blank\">iOS 13</a>&nbsp;ระบบปฏิบัติการใหม่ล่าสุดของ Apple มีฟีเจอร์แอบซ่อนที่ไม่ได้เปิดเผยใน Keynote</p>\r\n\r\n<p>หนึ่งในนั้นคือการชะลอการชาร์จไฟมือถือโดยจะค้างไว้ที่ 80% โดยมีอัลกอริทึม เรียนรู้ผู้ใช้งานว่าตื่นกี่โมงก่อนที่จะชาร์จไฟให้พร้อมใช้เมื่อเช้านั่นเอง</p>\r\n\r\n<p>โดยปกติแบตเตอรี่มือถือหรือ Tablet มักจะต้องคงปริมาณไว้ที่ 40 &ndash; 80% ถึงจะเป็นช่วงที่ดีที่สุด และมักจะนับจาก 0 &ndash; 100 เท่ากับ 1 รอบการชาร์จ (Cycle) ดังนั้นการรักษารัดับไว้ที่ 80% ถือว่าเป็นเรื่องที่ดี เพราะเป็นการไม่เปลือง Cycle ในการชาร์จไฟ</p>\r\n\r\n<p>แต่ความจริงเทคโนโลยีนี้มือถือ Sony ได้ใช้อยู่แล้วมันคือ Qnovo Adaptive ซึ่งจะชาร์จไฟและรักษาระดับ ปล่อยให้เต็มเมื่อเช้า โดยระบบนี้จะยึดตามเวลานาฬิกา อาจจะไม่มีอัลกอริทึมแบบเดียวกับ Apple แต่ก็ช่วยให้แบตเตอรี่มือถือมีอายุการใช้งานที่ยาวนานขึ้นนั่นเอง</p>', 0, '0000-00-00', '1559803683.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `datatran01`
--

CREATE TABLE `datatran01` (
  `id` int(2) DEFAULT NULL,
  `pic` varchar(168) DEFAULT NULL,
  `name` varchar(38) DEFAULT NULL,
  `name_detail` varchar(593) DEFAULT NULL,
  `colony_detail` varchar(395) DEFAULT NULL,
  `micro_exam` varchar(464) DEFAULT NULL,
  `biochemi` varchar(332) DEFAULT NULL,
  `tos` varchar(19) DEFAULT NULL,
  `staining` varchar(29) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datatran01`
--

INSERT INTO `datatran01` (`id`, `pic`, `name`, `name_detail`, `colony_detail`, `micro_exam`, `biochemi`, `tos`, `staining`) VALUES
(1, 'F1_Fusarium_spp(PIC1).jpgF1_Fusarium_spp(PIC2).jpgF1_Fusarium_spp(PIC3).jpg', 'Fusarium spp.', 'สายพันธุ์ของ Fusarium ส่วนมากเป็นราดิน และมีการแพร่กระจายทั่วโลก บางชนิดเป็นเชื้อก่อโรคในพืช และยังพบว่ามีหลายๆชนิด เป็นเชื้อก่อโรคฉวยโอกาสที่สำคัญในมนุษย์ ซึ่งก่อให้เกิด hyalohyphomycosis (โดยเฉพาะอย่างยิ่งในผู้ที่โดนไฟไหม้ และปลูกถ่ายไขกระดูก)  กระจกตาอักเสบจากเชื้อรา(mycotic keratitis) และ onychomycosis ', 'โคโลนีเติบโตได้รวดเร็ว ประมาณ 4 วัน ให้โคโลนีเป็นปุยฟู(cottony) จนถึง ปุยแบบขนแกะ(wooly) สีพื้นผิวให้สีในช่วง ขาว เหลือง ชมพู ม่วงและแทน หากโคโลนีเป็นสีม่วง อาจสามารถบ่งชี้ว่าเป็น Fusarium ด้านหลังโคโลนีเป็นสีอ่อน แดง ม่วงเข้ม น้ำตาล หรือน้ำเงิน', 'พบสายราใส มีผนังกั้น(septate hyphae) มี microconidia 1-2 เซลล์ สีใส มีขนาดเล็กกว่า macroconidia มีรูปร่างเป็นทรงกระสวย ทรงกลมหรือรูปไข่ ได้Macroconidia เป็นสีใส มีตั้งแต่ 2 เซลล์จนได้หลายเซลล์ มีรูปร่างเป็นพระจันทร์เสี้ยว(sickle cell shaped) โดยเป็นเซลล์เรียวมน conidia ทั้ง 2 ชนิดจะงอกออกมาจาก phialide สามารถพบหรือไม่พบ chlamydospore ได้', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(2, 'F2_Hortaea_werneckii(PIC1).jpg F2_Hortaea_werneckii(PIC2).jpg', 'Hortaea werneckii', 'Hortaea werneckii เป็นเชื้อราที่ย่อยสลายอินทรีย์ พบในดิน ปุ๋ยหมัก ซากพืชและบนไม้ในภูมิภาคเขตร้อนและกึ่งร้อนชื้น และเชื้อรานี้ก่อให้เกิด tinea nigra ในมนุษย์', 'โคโลนีมีการเจริญเติบโตได้ช้า เริ่มต้นโคโลนีมันเยิ้มคล้ายยีสต์ และมีสีดำสว่าง เมื่อแก่ขึ้นจะมีการสร้างสายราอากาศ(aerial hyphae) ให้สีน้ำตาลจนถึงเขียวมะกอกเข้ม', 'พบสายราดำ มีผนังกั้น(black septate hyphae) มีโคนิเดียคล้ายยีสต์จำนวนมาก สีน้ำตาลอ่อน มีผนังกั้น แบ่งตัวเป็น 2 เซลล์ มีรูปร่างเป็นทรงกระบอก(cylindrical shaped) จนถึงเข็ม(spindle-shaped) มักเกาะกลุ่มกันเป็นจำนวนมาก chlamydospore สามารถพบได้', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(3, 'F3_Neoscytalidium_spp.jpg', 'Neoscytalidium spp.', 'เชื้อในสกุลนี้เป็นราดำชั้นสูง(dematiaceous ascomycete) ที่ปกติจะก่อโรคในพืช แต่ปัจจุบันพบว่าสามารถก่อให้เกิดโรค onychomycosis และ dermatomycosis และมีโอกาสค่อนข้างยากในการทำให้เกิดการติดเชื้อแบบทั่วร่างกาย(Systemic infection)', 'โคโลนีเจริญเติบโตได้รวดเร็ว แรกเริ่มโคโลนีมีลักษณะคล้ายขนแมว(fluffy) สีขาว ต่อมากลายเป็นสีเขียวเทา และเมื่อแก่ขึ้นจะค่อยๆกลายเป็นสีดำเข้ม มีการสร้างสายราอากาศโดยจะมีลักษณะที่ค่อนข้างแย่', 'พบ arthroconidia แบบเซลล์เดียวหรือสองเซลล์ต่อกันเป็นสาย(in chain) ตอนอ่อนมีสีใส เมื่อแก่ขึ้นจะมีผนังที่หนา สีน้ำตาล', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(4, 'F4_Histoplasma(PIC1).jpgF4_Histoplasma(PIC2).jpgF4_Histoplasma(PIC3).jpgF4_Histoplasma(PIC4).jpgF4_Histoplasma(PIC5).jpgF4_Histoplasma(PIC6).jpgF4_Histoplasma(PIC7).jpg', 'Histoplasma capsulatum', 'Histoplasmosis เป็นโรคเกี่ยวกับปอดที่ติดเชื้อมาจากชุมชน(community-acquired pulmonary infectios disease) โดยมีสาเหตุมาจาก สิ่งแวดล้อมมี microconidia เช่น ดินมีการสูดดมละอองของ microconidia เข้าไป เปลี่ยนแปลงเป็น yeast form ในปอด ต่อมาทำให้เกิดอาการติดเชื้อ มีอาการทางคลินิกคล้ายไข้หวัดใหญ่ หรือ ปอดบวม', 'เติบโตได้ช้าที่ 25-30 °C ใช้เวลา 2-4 สัปดาห์ จึงจะพบเห็นลักษณะโคโลนี เมื่อเพาะเลี้ยงที่ 25°C โคโลนีมีลักษณะเป็นปุยนุ่น(fluffy) สีขาว เมื่อเวลาผ่านไปจะเปลี่ยนแปลง กลายเป็นสีน้ำตาลจนถึงสีเหลืองแกมเทาเมื่อเพาะเลี้ยงที่ 37 °C ที่มีอาหารเลี้ยงเชื้อ สามารถปรากฏลักษณะเป็น โคโลนีหยิก ชื้น ซึ่งคล้ายกับยีสต์ และเป็นสีครีม', 'พบเห็น ก้านชูโคนิเดีย(conidiophore) ตั้งฉากกับสายรา และพบโคนิเดียมี 2 แบบ1.Microconidia - โคนิเดียขนาด 4-6 µm ลักษณะกลมจนไปถึงลูกชมพู่(pyriform shape)2.Macroconidia - มีขนาดใหญ่ ประมาณ 8-18 µm กลม มีผนังหนารอบๆ macroconidia โดยจะเห็นหนามรอบๆ เซลล์ คล้ายซี่เกวียน เรียก tuberculated Macroconidia', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(5, 'F5_T_marneffei(PIC1).jpgF5_T_marneffei(PIC2).jpgF5_T_marneffei(PIC3).jpgF5_T_marneffei(PIC4).jpg', 'Talaromyces marneffei', 'แสดงออกมาให้เห็นเป็น ราสองรูป(dimorphic Fungi) โดย รา เติบโตในอาหารเลี้ยงเชื้อที่มีอุณหภูมิต่ำกว่า 30 °Cส่วนยีสต์เติบโตในเนื้อเยื่อที่ยังมีชีวิต หรือ ในอาหารเลี้ยงเชื้อที่อุณหภูมิ 37°Cเชื้อนี้มีแนวโน้มในการก่อโรคได้ในคนปกติ และเกิดขึ้นได้บ่อยในผู้มีภูมิคุ้มกันบกพร่องอย่างมีนัยสำคัญ', 'เมื่อเพาะเลี้ยงที่อุณหภูมิ 25 °C โคโลนีเจริญได้รวดเร็วประมาณ 3 วัน โคโลนีคล้ายหนังกลับด้าน(suede) จนไปถึงปุยนิ่ม(downy) สีขาว โดยที่ปลายหัว conidia ให้สีขาวเหลืองปนเขียว ใต้โคโลนีมีสีน้ำตาลแดงเมื่อเวลาผ่านไป โคโลนีจะกลายเป็นสีเทาอมชมพู ชมพู จนเป็นน้ำตาล', 'พบสายราสีใส มีผนังกั้น(septate hyphae) ก้านชูโคนิเดียสามารถพบเป็น สองแขนง(biverticillate) และแขนงเดียว(monoverticillate) ได้ ที่ส่วนปลายของก้านมี metulae 3-5 อัน ในแต่ละอันมี phialides 3-7 อัน phialide มีลักษณะคล้ายเข็ม(acerose) ไปจนรูปร่างเป็นแจกัน มีการสร้างโคนิเดียแบบ basipetal', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(6, 'F6_Penicillium_spp(PIC1).jpgF6_Penicillium_spp(PIC2).jpgF6_Penicillium_spp(PIC3).jpgF6_Penicillium_spp(PIC4).jpg', 'Penicillium spp.', 'เป็นเชื้อที่เป็นกลุ่มขนาดใหญ่และมีจีนัสที่แพร่หลาย มีหลายสายพันธุ์ที่มีการปนเปื้อนในสารตั้งต้นต่างๆ สารที่พบนั้นเรียกว่า mycotoxin เชื้อก่อโรคในมนุษย์ของกลุ่มนี้พบได้ยาก แต่การติดเชื้อฉวยโอกาสนำไปสู่การเป็น mycotic keratitis, otomycosis และ endocarditis', 'โคโลนีเติบโตได้รวดเร็ว ประมาณ 4 วัน สีโคโลนีจะออกเป็นแนวเฉดสีเขียว บางครั้งสีขาว ชื้น', 'พบราสีใส มีผนังกั้น(septate hyphae) ก้านชูโคนิเดียมีลักษณะเป็นก้านตัน สามารถแตกแขนงหรือไม่ก็ได้ phialides สามารถพบเป็นแบบเดี่ยว แบบกลุ่ม หรือเป็นลักษณะแตกแขนงของ metulae ซึ่งจะปรากฏคล้ายแปรงทาสี(penicillus) โคนิเดียมีลักษณะกลม รี ทรงกระบอกหรือเป็นกระสวย สีใสหรือเขียว มีผนังเรียบหรือขรุขระ', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(7, 'F7_Mucor_spp(PIC1).jpgF7_Mucor_spp(PIC2).jpgF7_Mucor_spp(PIC3).jpg', 'Mucor spp.', 'วงศ์ของ Mucor มีมากกว่า 50 วงศ์ซึ่งมีการแพร่กระจายและมีความสำคัญทางเศรษฐกิจ แต่มีเพียงไม่กี่สายพันธุ์ที่ทนต่อความร้อนและมีความสำคัญทางการแพทย์ จากรายงานพบว่าเชื้อที่สามารถก่อโรคในมนุษย์ประกอบไปด้วย M. circinelloides , M. indicus, M. ramosissimus, M. irregularis และ M. amphibiorum เป็นต้น', 'โคโลนีไม่เจริญเติบโตที่ 37 °Cโคโลนีเจริญได้รวดเร็วประมาณ 2 วัน ให้ลักษณะเป็น ปุยสำลี(cottony) จนถึงขนแมว(fluffy) สีขาวจนถึงเหลือง จากนั้นสามารถกลายเป็นสีเทาดำได้เพราะมีการพัฒนา sporangiospore เกิดขึ้น', 'พบสายราใส ไม่มีผนังกั้น(hyaline with non-septate hyphae) ไม่มี rhizoid มีก้านชูสปอร์เรียก sporangiophore แตกแขนงได้ ส่วนปลายพบถุงสปอร์เรียก sporangium มีลักษณะกลมหรือรี มีขนาดใหญ่ ภายใน sporangium บรรจุสปอร์เรียก sporangiospores เมื่อสปอร์แตก จะเห็นส่วนที่ติดอยู่ปลายก้านชู เรียก collarette', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(8, 'F8_Rhizopus_spp.jpg', 'Rhizopus spp.', 'สายพันธุ์ของ Rhizopus หลักๆ ที่ค้นพบประกอบไปด้วย R. caespitosus, R. delemar, R. homothallicus, R. microsporus, R. arrhizus (R. oryzae).jpeg R. reflexus, R. schipperae และ R. stolonifer ต่อมาได้ค้นพบ R. arrhizus และ R. microspores ซึ่งทั้ง 2 ชนิดนี้เป็นเชื้อก่อโรค mucormycosis ที่สำคัญ โดยคิดเป็นถึงร้อยละ 60% ของเคสทั้งหมด', 'โคโลนีเจริญรวดเร็วประมาณ 2 วัน มีลักษณะเป็นปุยฟู(cottony) สีขาวปนเทา ส่วนด้านหลังเป็นสีใสจนถึงสีขาว เชื้อเจริญได้ที่ได้ที่ 37 °C', 'พบสายราใส ไม่มีผนังกั้น(hyaline with non-septate hyphae) มี rhizoid ที่มีลักษณะคล้ายราก มีก้านชูสปอร์เรียก sporangiophore ไม่มีการแตกแขนง งอกออกจาก rhizoid ตรงตำแหน่งที่เรียกว่า node ส่วนปลายพบถุงสปอร์เรียก sporangium มีลักษณะกลมหรือรี มีขนาดใหญ่ ภายใน sporangium บรรจุสปอร์เรียก sporangiospores เมื่อสปอร์แตก จะหลุดออกหมด ไม่เห็นส่วนที่ติดอยู่ปลายก้านชู เรียก collarette', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(9, 'F9_M_gypseum(PIC1).jpgF9_M_gypseum(PIC2).jpg', 'Microsporum gypseum', 'โคโลนีเจริญเติบโตได้รวดเร็ว ประมาณ 6-10 วัน ลักษณะพื้นผิวบนโคโลนีเป็น ผงแป้ง(powdery) จนถึงเม็ดทราย(granular)', 'สีด้านหน้าโคโลนี สีขาวถึงน้ำตาลอ่อน ใต้โคโลนีมีสีเหลืองจนถึงสีน้ำตาลแดง', 'พบสายราใส มีผนังกั้น(septate hyphae) มี macroconidia จำนวนมาก เป็นรูปกระสวย สมมาตร และปลายมน ผนังบาง ขอบผนังขรุขระ มีประมาณ 3-6 เซลล์microconidia มีขนาดเล็กจำนวนมาก มีลักษณะเป็นกระบอง(club shaped หรือ clavate shaped) และอยู่บนสายราตลอดแนว', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(10, 'F10_M_canis(PIC1).jpgF10_M_canis(PIC2).jpgF10_M_canis(PIC3).jpg', 'Microsporum canis', 'เป็นเชื้อราที่ก่อให้เกิดโรค กลาก(dermatophytosis) โดยแท้จริงแล้วก่อให้เกิดพยาธิสภาพแก่สัตว์ แต่เมื่อมีการพาจากสัตว์สู่มนุษย์ ส่งผลทำให้มนุษย์เกิดพยาธิสภาพได้ โดยจะพบเป็น ringworms (ผื่นสีชมพูแดงที่ลำตัว หรือ คอ) เชื้อรานี้จะไม่แทรกซึมเข้าสู่ภายในผม(ectothrix)', 'โคโลนีเจริญเติบโตได้รวดเร็วประมาณ 6 วัน มีลักษณะแบน แผ่กระจาย ให้สีขาวจนถึงสีครีม บางครั้งที่พื้นผิวจะแสดงให้เห็นร่องการกระจาย(radial groove) ใต้โคโลนีมีสีเหลืองจนถึงสีน้ำตาล', 'พบสายรามีผนังกั้น(septate hyphae) มีทั้ง macroconidia และ microconidiamacroconidia มีรูปป่องตรงกลาง คล้ายกระสวย พบ knob ตรงปลายแบบไม่สมมาตร คล้ายตะขอ(hook) ผนังภายนอกหนา ขรุขระ มีเซลล์ 6-15 เซลล์ ส่วนผนังกั้นภายในเซลล์บางmicroconidia สามารถพบได้ มีลักษณะคล้ายกระบอง(clavate shaped) จนถึงรูปทรงกระบอก(pyriform shaped) แต่พบได้ยาก', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(11, 'F11_T_rubrum.jpg', 'Trichophyton rubrum', 'เชื้อชนิดนี้เป็นเชื้อราที่ก่อโรคในคน แต่มีบางชนิดที่สามารถก่อโรคในสัตว์ได้(anthropophilic fungus) มักก่อให้เกิดการติดเชื้อเรื้อรังที่ผิวหนัง เล็บและหนังศรีษะ สามารถพบ granulomatous lesion ได้ในคนไข้บางคน เมื่อตรวจดูภายใต้กล้องอาจจะพบ ectothrix หรือ endothrix ก็ได้', 'โคโลนีเจริญได้ช้า ประมาณ 14 วัน ผิวโคโลนีเป็นปุยนิ่ม(downy) จนถึงหนังสัตว์กลับด้าน(suede) สีมีตั้งแต่สีขาวจนถึงครีม และแดงเข้ม ใต้โคโลนีอาจไม่มีสี สีขาวเหลืองจนถึงขาวน้ำตาล หรือแดงแบบไวน์', 'พบสายราใส มีผนังกั้น(hyaline septate hyphae)microconidia มีจำนวนมาก มีลักษณะเป็นหยดน้ำ(tear drop shaped) จนถึงรูปกระสวย แต่หยดน้ำจะพบได้บ่อยที่สุดmacroconidia มีหลายเซลล์ มีผนังบาง พบลักษณะคล้ายดินสอ(pencil shaped หรือ cigar shaped)', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(12, 'F12_T_mentagrophytes(PIC1).jpg F12_T_mentagrophytes(PIC2).jpg F12_T_mentagrophytes(PIC3).jpg', 'Trichophyton mentagrophytes', 'เชื้อราชนิดนี้โดยแท้จริงแล้วก่อให้เกิดพยาธิสภาพแก่สัตว์ แต่เมื่อมีการพาจากสัตว์สู่มนุษย์ ส่งผลทำให้มนุษย์เกิดพยาธิสภาพได้(zoophilic fungus) ก่อให้เกิดอาการอักเสบที่ผิวหนังหรือหนังศรีษะ และจะพบเป็น kerion ที่หนวดหรือที่หนังศรีษะได้', 'โคโลนีเจริญได้ปานกลางประมาณ 7 วัน โคโลนีมีสีขาวจนครีม มีลักษณะเป็นผงแป้ง(powdery) จนไปถึงเม็ดทราย(granular) ส่วนใต้โคโลนีให้สีเหลืองน้ำตาล จนไปถึงแดงน้ำตาล', 'พบสายราใส มีผนังกั้น(hyaline septate hyphae) microconidia สามารถพบเป็นเซลล์เดี่ยวหรือมักจะอยู่รวมกันเป็นกลุ่มได้ มีผนังเรียบ ส่วนใหญ่มีรูปร่างกลม(spherical shaped)macroconidia มีลักษณะหลายเซลล์ ยืดยาว มีรูปร่างเป็น cigar shape และมักพบ spiral hyphae', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(13, 'F13_Epidermophyton_floccosum(PIC1).jpg F13_Epidermophyton_floccosum(PIC2).jpg F13_Epidermophyton_floccosum(PIC3).jpg', 'Epidermophyton floccosum', 'เชื้อชนิดนี้เป็นเชื้อราที่ก่อโรคในคน แต่มีบางชนิดที่สามารถก่อโรคในสัตว์ได้(anthropophilic fungus) บ่อยครั้งมักทำให้เกิด tinea pedis, tinea cruris, tinea corporis และ onychomycosis', 'โคโลนีเติบโตได้รวดเร็วปานกลาง ใช้เวลาประมาณ 10 วัน โคโลนีมีสีขาวขุ่นน้ำตาลอมเขียว หรือ สีคล้ายคากิ นูนและมีการพับที่ตรงกลางโคโลนี ใต้โคโลนีมีสีน้ำตาลอมเหลือง', 'พบสายราใส มีผนังกั้น(hyaline septate hyphae)พบ macroconidia ผนังบาง ผิวเรียบคล้ายใบขนุน(club shaped with rounded ends) พบการงอกของ macroconidia ออกจากสายราโดยตรงไม่พบ microconidia เมื่อโคโลนีแก่ขึ้นจะสามารถมีการพัฒนาเป็น chlamydospores ได้', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(14, 'F14_A_flavus(PIC1).jpgF14_A_flavus(PIC2).jpgF14_A_flavus(PIC3).jpgF14_A_flavus(PIC4).jpg', 'Aspergillus flavus', 'Aspergillus section Flavi มีการผลิต aflatoxins ซึ่ง aflatoxin B1 เป็นสารพิษที่พบมากที่สุดที่เกิดจากการเมตาบอไลท์ทุติยภูมิจากเชื้อรา โดย A. flavus และ A. parasiticus ผลิต aflatoxin เป็นหลัก ในปัจจุบัน A. flavus เป็นเชื้อก่อโรคทางการแพทย์ที่สำคัญ ทั้งในมนุษย์และสัตว์ โดยเชื้อนี้ก่อให้เกิด otitis, keratitis, acute หรือ chronic invasive sinusitis และการติดเชื้อที่ปอดในบุคคลที่มีภูมิคุ้มกันบกพร่อง A. flavus เป็นเชื้อก่อโรคที่พบได้มากในลำดับที่ 2 ที่รองมาจาก A. fumigatus ในการก่อโรค invasive aspergillosis', 'โคโลนีเจริญเติบโตได้รวดเร็วประมาณ 3 วัน เมื่อทำการเลี้ยงบน Czapek Dox agar จะให้โคโลนีเม็ดทราย(granular) แบน และบางครั้งจะเห็นการแผ่กระจาย สีโคโลนีในตอนแรกเป็นสีเหลือง เมื่อเวลาผ่านไปจะเริ่มมีสีที่สว่างขึ้นจนถึงสีเขียวอมเหลือง', 'พบสายราใส มีผนังกั้น(septate hyphae) ก้านชูโคนิเดีย(conidiophore) มีผิวที่ขรุขระ ที่หัวโคนิเดีย(conidial head)มีการแผ่กระจายเป็นรัศมี(radiate) ต่อมาจะมีการจัดเรียงตัวแบบหลวมๆ พบ phialide เป็น 2 ชั้น(biseriate) และสามารถพบ phialide ต่อโดยตรงจากหัวโคนิเดียได้(uniseriate) ลักษณะโคนิเดียเป็นทรงกลม สีเขียวอ่อน มีหนาม มี vesicle ที่เป็นทรงกลม', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(15, 'F15_A_fumigatus(PIC1).jpgF15_A_fumigatus(PIC2).jpgF15_A_fumigatus(PIC3).jpgF15_A_fumigatus(PIC4).jpg', 'Aspergillus fumigatus', 'A. fumigatus เป็นเชื้อก่อโรคในมนุษย์เป็นหลัก และเชื้อกลุ่มนี้ยังมีหลาย complex จากการศึกษาพบว่าสัตว์และมนุษย์อาจเกิดการติดเชื้อได้จากหลายสายพันธุ์ เช่น A. lentulus, A. fumigatiaffinis, A. fumisynnematus และ A. felis', 'โคโลนีเจริญเติบโตได้รวดเร็วประมาณ 3 วัน โคโลนีให้สีเขียวแกมน้ำเงิน มีพื้นผิวที่คล้ายกับหนังกลับด้าน(suede) หรือคล้ายกำมะหยี่', 'พบสายราใส มีผนังกั้น(septate hyphae) มีก้านชูโคนิเดีย(conidiophore)ที่สั้น มีผนังเรียบ ฃมีลักษณะเป็นรูปกรวยปากกว้างที่ปลายของ vesicle(conical shaped) มี phialide ชั้นเดียว ติด 2 ใน 3 บนหัวของ vesicle ในแนวชนานกับแกนของก้านชูโคนิเดีย(columnar conidial head)', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(16, 'F16_A_terreus(PIC1).jpgF16_A_terreus(PIC2).jpgF16_A_terreus(PIC3).jpg', 'Aspergillus terreus', 'Aspergillus terreus ปกติพบในดิน และมีรายงานว่าสามารถเป็นเชื้อก่อโรคทั้งในมนุษย์และสัตว์ได้', 'โคโลนีใช้เวลาในการเจริญเติบโตประมาณ 5 วัน โคโลนีมีลักษณะคล้ายหนังกลับด้านหรือคล้ายกำมะหยี่ มีสีน้ำตาลแดง(cinnamon) จนไปถึงสีเหลืองน้ำตาล ใต้โคโลนีมีสีเหลืองจนถึงสีน้ำตาลเข้ม', 'พบสายราใส มีผนังกั้น(septate hyphae) ก้านชูโคนิเดีย(conidiophore)ใส มีผนังเรียบ มี phialide แตกแขนงเป็น 2 ชั้น(biseriate) ลักษณะของ phialide มีความยาวที่พอๆ กับ metulae phialide มีการเรียงตัวชิดติดกันและติดขนานกับแกนของก้านชูโคนิเดีย(compactly columnar)', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(17, 'F17_A_niger.jpg', 'Aspergillus niger', 'เชื้อชนิดนี้เป็นหนึ่งในเชื้อที่พบได้บ่อยและง่ายในการวิเคราะห์ จำแนกสายพันธุ์ในวงศ์ของ Aspergillus โดยสายพันธุ์นี้มักพบได้บ่อยใน aspergillomas และสามารถก่อให้เกิด otomycosis ได้ด้วย', 'โคโลนีเจริญเติบโตได้รวดเร็วประมาณ 2 วัน โคโลนีมีผิวเป็นเม็ดทราย(granular) มีสีน้ำตาลจนไปถึงสีดำ บางครั้งอาจมีขอบขาว หรือเหลืองที่บริเวณภายนอกสุดได้', 'พบสายราใส มีผนังกั้น(septate hyphae) ก้านชูโคนิเดียใสและจะเป็นสีดำขึ้นเรื่อยๆ ส่วน vesicle มี phialide สีดำ 2 ชั้น(biseriate) ติดรอบหัวของ vesicle มี conidia รูปร่างกลม หยาบ เป็นสีดำ', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(18, 'F18_Acremonium (PIC1).jpgF18_Acremonium (PIC2).jpgF18_Acremonium (PIC3).jpg', 'Acremonium spp.', 'สกุล Acremonium ประกอบไปด้วยหลากหลายสายพันธุ์ แต่ส่วนมากเป็นราที่ย่อยสลายพวกซากพืชที่ตายแล้วและดิน มีหลายสายพันธุ์ เช่น A. recifei และ A. alabamense ที่เป็นเชื้อฉวยโอกาสในมนุษย์และสัตว์ โดยก่อโรค mycetoma, mycotic keratitis และ onychomycosis', 'โคโลนีเจริญเติบโตได้ช้า ลักษณะโคโลเป็นเม็ดแป้ง(powdery) หรืออาจเป็นหนังกลับด้าน(suede) ได้ โคโลนีสามารถมีสีขาว เทา ชมพู โรสหรือสีส้มได้ ใต้โคโลนีมีสีเหลือง บางครั้งโคโลนีมีการอัดแน่นและชื้นได้', 'พบสายราใส มีผนังกั้น(หeptate hyphae) มีก้านชูโคนิเดียที่ยาว เรียว(delicate) คล้ายเส้นผม (hair-in appearance) มีโคนิเดียมักเป็นเซลล์เดียว มีสีใสหรืออาจพบสีในโคนิเดียได้แต่ยาก โคนิเดียกลมจนไปถึงทรงรูปกระบอก หรือเป็นรูปรี (elliptical) มักพบการเกาะกลุ่ม conidia ที่ปลายหัวของแต่ละ phialide', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(19, 'F19_Exophiala_jeanselmei(PIC1).jpgF19_Exophiala_jeanselmei(PIC2).jpgF19_Exophiala_jeanselmei(PIC3).jpgF19_Exophiala_jeanselmei(PIC4).jpg', 'Exophiala jeanselmei', 'Exophiala jeanselmei มีการแพร่กระจายไปทั่วโลก และมีบันทึกว่าเป็นตัวที่ก่อให้เกิด mycetoma และ phaeohyphomycosis ในมนุษย์', 'โคโลนีเจริญเติบโตช้าประมาณ 15 วัน ตอนแรกเริ่มโคโลนีจะมีความนุ่ม มีสีเขียวอมเทาจนไปถึงสีดำ โคโลนีเยิ้มคล้ายกับยีสต์ เมื่อแก่ขึ้นจะมีการยกตัวนูนขึ้น และมีการกระจุกของสายราอากาศ(aerial mycelium) ใต้โคโลนีมีสีเขียวมะกอกจนถึงดำ', 'พบสายราเข้ม มีผนังกั้น(septate hyphae) ที่ส่วนปลายก้านชูโคนิเดีย(annellide) จะมีสีเข้มกว่าสายราส่วนอื่นๆ อีกทั้งพบ budding cell จำนวนมากมีลักษณะเป็นวงรี พบได้ในเชื้อราตัวอ่อน เมื่อแก่ขึ้น budding cell จะมีขนาดใหญ่ เป็นรูปวงรีกว้าง(germinating cells)', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(20, 'F20_Phialophora_verrucosa(PIC1).jpgF20_Phialophora_verrucosa(PIC2).jpgF20_Phialophora_verrucosa(PIC3).jpg', 'Phialophora verrucosa', 'สกุลของ Phialophora มีสมาชิกมากกว่า 40 สายพันธุ์ และส่วนมากพบราในดินหรือในซากไม้เป็นหลัก P. verrucosa เป็นตัวหลักทีก่อให้เกิด chromoblastomycosis อีกทั้งยังมีรายงานว่าสามารถก่อให้เกิด endocarditis, keratitis, และ osteomyelitis', 'โคโลนีเจริญเติบโตได้ช้า เริ่มต้นมีลักษณะโคโลนีเป็นรูปโดม(dome-shaped) ภายหลังจะแบนลง จนคล้ายกำมะหยี่ โคโลนีให้สีน้ำตาลถึงดำ ใต้โคโลนีมีสีน้ำตาลลอมดำ', 'พบสายรามีสีน้ำตาล มีผนังกั้น(brown septate hyphae) มี phialide คล้ายรูปแจกัน(flask shaped) หรือเป็นรูปไข่ที่มีปลายปิดเป็นทรงกรวย มีปากแจกัน ที่เรียกว่า collarette เป็นสีดำ ส่วนโคนิเดียมีสีใส ผนังบาง เป็นวงรีหรือรูปไข่ และบ่อยครั้งจะพบการเกาะกลุ่มอยู่ที่ส่วนหัวของ phialide', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(21, 'F21_Curvularia_spp.jpg', 'Curvularia spp.', 'สกุลของ Curvularia ประกอบไปด้วย 80 กว่าสายพันธุ์ โดยส่วนมากเป็นเชื้อราที่อยู่ในดิน หรือเชื้อก่อโรคในพืช โดยสมาชิกในกลุ่มนี้เดิมชื่อ B. australiensis, B. hawaiiensis และ B. spicifera ต่อมาได้มีการศึกษา phylogenetic จึงทำการจัดจำแนกและย้ายมาสู่สกุล Curvularia', 'โคโลนีเจริญเติบโตได้รวดเร็ว มีลักษณะคล้ายหนังกลับด้านจนถึงปุยนิ่ม(downy) มีสีน้ำตาลอมดำ ใต้โคโลนีมีสีน้ำตาลถึงดำ', 'พบสายราสีดำ มีผนังกั้น(black septate hyphae) ก้านชูโคนิเดีย(condiophore) ตั้งชู ตรง มีผนังกั้น บ่อยครั้งจะมีการงอ(เพื่อเกิดการสร้าง conidia เป็นกระจุก) ส่วนโคนิเดียเป็นรูปไข่ มีความโค้ง และภายในโคนิเดียมีผนังกั้นตามขวาง มีการป่องตรงเซลล์ที่ 2 ถึง 3 มีสีน้ำตาลอมแดงจนถึงสีน้ำตาลมืด โดยปกติโคนิเดียจะมี 3-5 เซลล์', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(22, 'F22_Sporothrix_schenckii(PIC1).jpgF22_Sporothrix_schenckii(PIC2).jpgF22_Sporothrix_schenckii(PIC3).jpgF22_Sporothrix_schenckii(PIC4).jpg', 'Sporothrix schenckii', 'Sporothrix schenckii complex เป็นราสองรูป(dimorphic fungi) และมีการแพร่กระจายไปทั่วโลกโดยเฉพาะอย่างยิ่งในภูมิภาคร้อนชื้น เชื้อราชนิดนี้มักพบในดิน และซากผักผลไม้เป็นหลัก แต่สามารถเป็นเชื้อก่อโรคในมนุษย์ได้Sporotrichosis เป็นโรคติดเชื้อราเรื้อรังที่ส่วนของเนื้อเยื่อผิวหนัง หรือใต้ผิวหนังหรือที่ต่อมน้ำเหลืองซึ่งอยู่บริเวณติดกัน เมื่อมีการติดเชื้อทุติยภูมิ (Secondary infection) สามารถแพร่กระจายไปยัง ข้อ กระดูก', 'เมื่อเลี้ยงที่อุณหภูมิ 25 °C จะเติบโตได้ช้า โคโลนีเรียบเป็นมันคล้ายขี้ผึ้ง(glabrous) ชื้น มีรอยหยิกและรอยพับที่พื้นผิว บาง strain สามารถสร้างสายราอากาศแบบสั้นๆ ได้ และให้สีตั้งแต่สีขาวจนไปถึงครีมหรือไปถึงดำ', 'พบสายราใส มีผนังกั้น(septate hyphae) มีก้านชูโคนิเดียที่ชูขึ้นเป็นมุม มีผนังบาง มีโคนิเดียกระจุกกันเป็นกลุ่มบนสายราโดยเห็นลักษณะเป็นการแตกกอ(sympodial proliferation) บนก้านชูโคนิเดีย ซึ่งเหมือนลักษณะของดอกไม้ โคนิเดียมีลักษณะรี รูปไข่ ยืดยาว สีใส ผนังบาง', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(23, 'F23_Paecilomyces_spp(PIC1).jpg F23_Paecilomyces_spp(PIC2).jpg F23_Paecilomyces_spp(PIC3).jpg', 'Paecilomyces spp.', 'สกุล Paecilomyces สามารถจำแนกออกจากสกุลที่ใกล้เคียงได้นั้นคือ Penicillium โดยที่จะมี phialide ที่เรียวยาว แตกแขนง(slender divergent phialide) และโคโลนีจะไม่สามารถเป็นสีเขียวได้Paecilomyces เป็นราที่พบในสิ่งแวดล้อมได้ และพบว่ามีนัยสำคัญที่สอดคล้องกับการติดเชื้อในมนุษย์ สายพันธุ์ของ Paecilomyces ที่สำคัญประกอบไปด้วย P. variotii และ P. marquandii ก่อให้เกิด mycotic keratitis และ hyalohyphomycosis ในผู้ป่วยที่มีภูมิคุ้มกันบกพร่อง', 'โคโลนีสามารถเจริญเติบโตได้ประมาณ 3 วัน เติบโตได้รวดเร็ว ลักษณะโคโลนีเป็นผงแป้ง(powdery) หรือหนังกลับด้าน(suede) โคโลนีมีสีทอง เขียวทอง เหลืองน้ำตาล สีม่วงหรือสีแทน แต่จะไม่พบสีน้ำเงินหรือสีเขียวน้ำเงินเหมือน Penicillium spp.', 'พบสายราใส มีผนังกั้น(Septate hyphae) phialide มีการป่องออกที่ส่วนฐาน มีความเรียวยาว(tapering) คล้ายกับนิ้วมือ โคนิเดียค่อนข้างรี มีผิวเรียบหรือหยาบ เรียงต่อกันเป็นโซ่ยาว เบนออกจากก้านชูโคนิเดีย', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(24, 'F24_Basidiobolus_meristosporus(PIC1).jpgF24_Basidiobolus_meristosporus(PIC2).jpg', 'Basidiobolus meristosporus', 'Basidiobolus meristosporus มีอยู่ทั่วไปในพืชผักผลไม้ที่เน่าเปื่อย และยังอยู่ในลำไส้เล็กของกบ คางคก จิ้งจกแบบภาวะเกื้อกูล(commensalism) เชื้อราชนิดนี้สามารถพบได้ในภูมิภาคเขตร้อนของแอฟริกาและเอเชีย ซึ่งได้แก่ อินเดีย อินโดนีเซีย และ ออสเตรเลีย', 'โคโลนีเจริญเติบโตได้รวดเร็วปานกลางที่อุณหภูมิ 30 °C มีลักษณะโคโลนีแบน สีเทาอมเหลือง จนถึงสีเทาอมครีม สามารถมีรอยพับได้ เมื่อมี mycelium เติบโต จะพบลักษณะโคโลนีเป็นผงแป้ง(powdery)', 'พบสายราดิน(vegatative hyphae) ขนาดใหญ่ เป็นวงกลมจำนวนมาก มีผนังบาง ส่วน zygospore มีผนังที่หนาซึ่งหากอยู่ติดกันจะคล้ายจะงอยปาก(beak-like appendages) ก้านชูสปอร์มีพื้นด้านล่างบวม มี conidia โดยจะมี primary conidia ลักษณะเป็นทรงกลม เซลล์เดี่ยว อยู่แยกจากก้านชูสปอร์(sporophore) และ secondary (replicative) conidia มีรูปร่างคล้ายกระบอง(clavate shaped) อยู่เป็นเซลล์เดี่ยว และจะถูกปล่อยออกมาจากก้านชูสปอร์ ส่วนปลายของสปอร์มี knob ยื่นออกมา', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(25, 'F25_Cylindrocarpon_spp.jpg', 'Cylindrocarpon spp.', 'สกุล Cylindrocarpon สามารถพบได้ในดิน', 'โคโลนีเจริญเติบโตได้รวดเร็ว มีพื้นผิวคล้ายหนังกลับด้าย(suede) หรือคล้ายขนสัตว์(wooly) โคโลนีมีสีใสหรือสีออกไปทางสว่าง', 'พบสายราใส มีผนังกั้น(septate hyphae) มีก้านชูโคนิเดีย มี phialide กระจุกเป็นช่อ(verticillate phialide) รอบก้านชูโคนิเดีย คล้ายแปรงทาสี(brush-like structure) phialide มีลักษณะเป็นปากแจกัน(collarette) ขนาดเล็กพบ macroconidia ที่มีผนังกั้น 1 เซลล์จนถึงไปหลายเซลล์ ใส รูปร่างตรงหรือโค้ง มีปลายมนแต่ฐานแบนแคบ และพบ microconidia อยู่เป็นเซลล์เรียงเดี่ยว มีสีใส แยกออกจาก macroconidia ได้อย่างชัดเจน อาจพบ chlamydospore ที่มีสีใสจนน้ำตาล อยู่เป็นกลุ่ม ปลาย หรือในสายก็ได้', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(26, 'F26_Conidiobolus_spp(PIC1).jpg F26_Conidiobolus_spp(PIC2).jpg', 'Conidiobolusspp', 'เชื้อในสกุลของ Conidiobolus มีการผลิต primary conidia จำนวนหลายเซลล์ และ secondary (replicative) conidia บนก้านชูโคนิเดียที่ไม่แตกแขนงในส่วนบน ในปัจจุบันสกุลของ Conidiobolus ประกอบไปด้วยมากกว่า 27 สายพันธุ์ แต่จากรายงานพบว่า Conidiobolus coronatus, C. incongruus และ C. lamprauges สามารถก่อให้เกิดการติดเชื้อในมนุษย์และสัตว์ได้', 'โคโลนีเจริญเติบโตได้รวดเร็ว โคโลนีแบน เรียบมันคล้ายขี้ผึ้ง(glabrous) มีสีครีม ต่อมาจะมีรอยพับบนพื้นผิวโคโลนี โคโลนีคล้ายผงแป้ง(powdery) และมีสายราสีขาวบนพื้นผิวจะ เมื่อแก่มากขึ้น โคโลนีจะมีสีแทนจนถึงสีน้ำตาล', 'พบก้านชูโคนิเดียมีการฟอร์มตัวแบบเดี่ยว และมีโคนิเดียที่ส่วนท้ายเป็นทรงกลม เป็นเซลล์เดียว และมีปุ่มยื่นออกมาคล้ายลิ้น(papilla-like appearance) โคนิเดียจะมีลักษณะคล้ายเส้นผมที่เป็นระยางค์ต่อกัน(hair-like appendages) เรียกว่า villae', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(27, 'F27_Exserohilum_spp(PIC1).jpg F27_Exserohilum_spp(PIC2).jpg', 'Exserohilum spp.', 'สกุลของ Exserohilum ประกอบไปด้วยประมาณ 35 สายพันธุ์ และสามารถแบ่งแยกออกจากสกุลของ Bipolaris และ Dreschlera โดย conidia มีลักษณะเป็น truncated hilum มีหลายสายพันธุ์ของ Exserohilum ที่ก่อให้เกิด phaeohyphomycosis ในปี 2014 ได้พบรายงานว่า E. rostratum เกี่ยวข้องกับการระบาดที่ทำให้เกิดการไขสันหลังอักเสบจากเชื้อรา(fungal meningitis)', 'โคโลนีมีผิวหน้าคล้ายหนังกลับด้าน(suede) จนขนปุย(floccose) มีสีเทาจนน้ำตาลอมดำ ใต้โคโลนีมีสีเขียวมะกอกถึงดำ', 'พบโคนิเดียแบบตรงหรืองอ เป็นทรงกระสวยหรือวงรี และมีการฟอร์มตัวของ poroconidia แบบช่อกระจุกยืดยาวไปตรงก้านชูโคนิเดีย โคนิเดียมีลักษณะเป็นท่อน(truncate hilum) มีผนังขรุขระ หนาและมืด', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(28, 'F28_Paracoiothyrium_spp(NOTCOMPLETE).jpg .jpg', 'Paraconiothyrium spp.', 'เชื้อกลุ่มนี้เป็นเชื้อราชั้นสูง(ascomycetes fungi) พบได้ทั่วไปในสภาพแวดล้อมที่มีดินทั่วโลก เชื้อราในสกุลนี้หลายๆสายพันธุ์เป็นเชื้อก่อโรคในพืช และทำให้เกิดความเสียหายต่อเศรษฐกิจทางการเกษตร', 'โคโลนีใช้เวลาในการเจริญเติบโตประมาณ 10 วัน โคโลมีพื้นผิวที่นิ่ม เรียบมันคล้ายขี้ผึ้ง(glabrous) พบสายราไม่มีสี โคโลนีมีสีเหลืองอ่อน จนถึงสีเหลืองน้ำตาล(ochreous) ส่วนสายราอากาศมีสีขาว คล้ายขนแมว(fluffy) ใต้โคโลนีไม่มีสี', 'พบสายราใส มีผนังกั้น(septate hyphae) มีโคนิเดียสีน้ำตาลอมแดง ผนังหนา ภายในมีช่องว่าง ลักษณะโคนิเดียเป็นรูปทรงกระบอก ส่วน phialide มีการยื่นเข้าไปในช่องว่างของ conidia', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(29, 'F29_Syncephalastrum_spp(PIC1).jpg F29_Syncephalastrum_spp(PIC2).jpg F29_Syncephalastrum_spp(PIC3).jpg F29_Syncephalastrum_spp(PIC4).jpg', 'Syncephalastrum spp.', 'Syncephalastrum ประกอบไปด้วยหลายสายพันธุ์ แต่สายพันธุ์ที่พบการก่อโรคในมนุษย์ ได้แก่ Syncephalastrum racemosum เชื้อราชนิดนี้สามารถพบได้ในดิน และมูลสัตว์ ซึ่งพบได้ในภูมิภาคร้อนชื้นและกึ่งร้อนชื้น', 'โคโลนีมีการเจริญเติบโตรวดเร็ว ลักษณะพื้นผิวโคโลนีคล้ายขนแมว(fluffy) หรือปุยสำลี(cottony) สีขาวจนถึงสีเทาสว่าง กลายเป็นสีเทาเข้มขึ้นเมื่อมีการพัฒนา sporangia', 'พบสายราสีน้ำเงิน มีผนังกั้น(blue septate hyphae) มีก้านชูสปอร์ตั้งตรง ลักษณะคล้ายไหล (Stolen-like) ของพืช มีการแตกกิ่งแบบเป็นช่อๆ(sympodial branching) มี merosporangia สีจางๆ ผนังบาง มีจำนวน 5-10 อัน สูงสุด 18 อัน รูปร่างทรงกลมจนไปถึงรูปไข่ พบ merospores ภายในมีผนังบาง', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(30, 'F30_Trichothecium_spp.jpg', 'Trichothecium spp.', 'Trichothecium sppเป็นราสายที่พบในดินและพืชผักที่มีการย่อยสลาย มีการแพร่กระจายไปทั่วโลก ปัจจุบันยังไม่พบรายงานการก่อโรคในมนุษย์และสัตว์', 'โคโลนีเจริญเติบโตได้รวดเร็ว เชื้อราชนิดนี้ไม่สามารถเจริญเติบโตได้ที่อุณหภูมิ 37°C โคโลนีมีลักษณะคล้ายเม็ดทราย(granular) แบน และอาจมีลักษณะคล้ายผงแป้งได้(powdery) สีโคโลนีเริ่มต้นเป็นสีขาว ต่อมากลายเป็นสีชมพูอ่อนจนถึงสีพีช ใต้โคโลนีมีสีอ่อน', 'พบสายราใส มีผนังกั้น(hyaline septate hyphae) มีก้านชูโคนิเดียที่ยาว ไม่แตกแขนง มีโคนิเดีย 2 เซลล์ มีผนังกั้นระหว่างเซลล์ สีใส ผนังบาง มีลักษณะเป็นรูปลูกแพร(pear shaped) หรือรูปกระบอง(club shaped) บ่อยครั้งพบการเรียงตัวของโคนิเดียเป็นกลุ่มตามแนวยาวของ conidiophore ทำให้เกิดการทับกันมีรูปแบบเป็นซิกแซก(zigzag pattern)', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(31, 'F31_Cladosporium_spp(NOTSURE).jpg', 'Cladosporium spp.', 'Cladosporiumสามารถพบได้ทั่วโลก เชื้อราชนิดนี้ทำการเพาะแยกได้มาจาก ดินหรือสสารอินทรีย์ต่างๆ หากสูดดมทางอากาศจะมีโอกาสได้รับเข้าไป เชื้อราชนิดนี้เป็นเชื้อราที่ทนความร้อน และเป็นเชื้อก่อโรคที่แท้จริงในมนุษย์', 'โคโลนีเจริญเติบโตได้ช้า สีโคโลนีเป็นสีเขียวมะกอกอมน้ำตาล จนถึงสีดำอมน้ำตาล แต่บางครั้งสามารถมีสีเทา หรือน้ำตาลได้ ผิวโคโลนีคล้ายหนังกลับด้าน(suede) และจะคล้ายผงแป้ง(powdery) เมื่อเริ่มสร้าง conidia ใต้โคโลนีมีสีเขียวมะกอกอมดำ', 'พบสายรา มีผนังกั้น(septate hyphae) มีก้านชูโคนิเดีย(conidiophore) ที่ตั้งตรงอาจจะแตกแขนงส่วนปลายหรือไม่แตกก็ได้ พบลักษณะโคนิเดียสีดำ จำนวน 1-4 เซลล์ มีผนังบาง มีลักษณะคล้ายโล่(shield-like shaped) สายโคนิเดียจะมีการกระจุกกันเป็นช่อตลอดแนวยาวของก้านชูโคนิเดีย', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(32, 'F32_Curvularia_hawaiiensis(Bipolaris hawaiiensis).jpg', 'Bipolaris spp.', 'Bipolaris เป็นกลุ่มราดำ พบได้ในสิ่งแวดล้อมและสามารถเพาะแยะได้จากเศษซากพืชและดิน เชื้อรากลุ่มนี้มีหลายสายพันธุ์ แต่สายพันธุ์ที่เป็นที่รู้จักและก่อโรคได้แก่ Bipolaris spicifera, Bipolaris australiensis, และ Bipolaris hawaiiensis(ปัจจุบันชื่อ Curvularia hawaiiensis) เชื้อราชนิดนี้สามารถก่อโรค Phaeohyphomycosis ได้', 'โคโลนีเจริญเติบโตได้รวดเร็ว โคโลมีสีขาวจนน้ำตาลอมเทา และจะกลายเป็นสีเขียวมะกอกถึงดำ เมื่อแก่ขึ้น ผิวโคโลนีคล้ายขนสัตว์(wooly)', 'พบสายรามีผนังกั้น สีน้ำตาล(brown septate hyphae) มีก้านชูโคนิเดีย(conidiophore) เป็นสีน้ำตาล แตกแขนง หรือเป็นช่อ พบลักษณะของก้านชูโคนิเดียเป็น zigzag(zigzag-like appearance) มี poroconidia 3-6 เซลล์ เป็นรูปกระสวยถึงทรงกระบอก', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(33, 'F33_T_marneffei_Binaryfission(PIC1).jpg F33_T_marneffei_Binaryfission(PIC2).jpg F33_T_marneffei_Binaryfission(PIC3).jpg F33_T_marneffei_Binaryfission(PIC4).jpg', 'Talaromyces marneffei (Binary Fission)', 'เป็นเชื้อที่มีคุณสมบัติเป็น thermal dimorphism คือมีการเจริญ 2 แบบ แบบแรกเปนการเจริญในอุณหภูมิ ประมาณ 25 องศาเซลเซียส ซึ่งเปนอุณหภูมิที่เชื้อ นี้อาศัยอยูในธรรมชาติแบบอิสระ(saprophytic) แบบที่สองเป็นการเจริญขึ้นในขณะที่ก่อพยาธิสภาพในคน(ที่อุณหภูมิ 37 องศาเซลเซียส)', 'เห็น histiocytes ขยายกว้างออกไปเรื่อย ๆ บริเวณตอนกลางก็จะเกิดเป็นเนื้อตาย เชื้อจะหลุด ออกมา มี neutrophils เข้ามาเกิดเป็นฝีหนองตรง กลาง เชื้อราใน histiocytes เป็นลักษณะคลายยีสต์ รูปร่างกลมหรือรี ขนาดเส้นผ่าศูนย์กลางประมาณ 3 ไมครอน', 'เชื้อราที่อยู่นอกเซลล์จะตัวใหญ่ ยาว กว่าที่อยู่ในเซลล์ มีลักษณะคล้ายไส้กรอก มีผนังกั้นแบ่งกลาง ชัดเจนและเป็นลักษณะจําเพาะซึ่งใช้แยก Talaromyces marneffei จาก Histoplasma capsulaum', NULL, 'Pus', 'gram stain'),
(1, 'B01_Micrococcus_spp(PIC1).jpg B01_Micrococcus_spp(PIC2).jpg', 'Micrococcus', 'Micrococcus สามารถพบเจอได้หลากหลายที่ เช่น ผิวหนังมนุษย์ น้ำ ฝุ่นและดิน เดิมที่แบคทีเรียชนิดนี้เป็นแบคทีเรียที่ไม่มีความอันตรายใด ๆ แต่สามารถพบได้ยากในการก่อให้เกิดการติดเชื้อ ซึ่งบ่อยครั้งมักพบในผู้ป่วยที่มีภูมิคุ้มกันบกพร่อง โดยเฉพาะอย่างยิ่งในคนไข้ HIV เชื้อ Micrococcus หลักๆ ที่สามารถพบได้ประกอบไปด้วย 9 สายพันธุ์ ดังนี้', 'โคโลนีมีลักษณะกลม เนียน อาจมีการนูนออก ขอบเรียบ มีสีโคโลนีออกแนวสีเหลืองทอง หรือ สีแดง บางสายพันธุ์สามารถพบโคโลนีที่มีความหยาบ ผิวด้านได้', 'เป็น gram positive ที่มีรูปร่างเป็น วงกลม(spherical) มักอยู่เป็นคู่(in pairs) , เป็นเซลล์ 4 เซลล์ติดกัน(in tetrads) , หรือเป็นเซลล์รวมตัวกันหลายๆเซลล์(in cluster) ไม่พบการจัดเรียงตัวเป็นสาย มีขนาดประมาณ 0.5 – 2.0 ไมครอน ไม่มี capsule และ spore', 'Catalase – positiveOxidase – weakly positive and/or negativeGlucose fermenterTube coagulase – negativeBacitracin – sensitive', NULL, 'gram stain'),
(2, 'B02_S_aureus(PIC1).jpg B02_S_aureus(PIC2).jpg .jpg', 'Staphylococcus aureus', 'Staphylococcus เป็นจุลินทรีย์ในวงศ์ Micrococcaceae สามารถพบเชื้อนี้ได้ตามผิวหนัง โพรงจมูก เยื่อบุทางเดินหายใจ ทางเดินอาหาร และบาดแผลที่เป็นฝีหนอง รวมถึงในดินฝุ่นละออง สามารถก่อให้เกิดการติดเชื้อจากแบคทีเรียในมนุษย์ได้หลากหลายอย่าง เช่น  bacteremia, infective endocarditis, skin and soft tissue infections osteomyelitis, septic arthritis, prosthetic device infections, pulmonary infections(ปอดบวม และ ถุงลุมโป่งพอง) gastroenteritis, meningitis, toxic shock syndrome(TSS) และ urinary tract infections', 'เชื้อนี้สามารถเจริญได้ที่อุณหภูมิ 6 – 46 °C โดยมีช่วงอุณหภูมิที่เหมาะสมคือ 30 – 37 °C ทนความร้อนถึง 60 °C นาน 30 นาที ลักษณะโคโลนีพบว่ากลม ขอบเรียบ นูน มีสีครีม เหลืองหรือส้มบน Blood agar ให้  -hemolysis', 'เป็น gram positive bacteria มีรูปร่างเป็น cocci มีการจัดเรียงเป็นกลุ่มคล้ายองุ่น(grape-like cluster) แต่อาจะพบเป็นเซลล์เดี่ยว เป็นคู่หรือสายสั้นๆได้ (มักไม่เกิน 4 เซลล์) มีขนาด 0.5 – 1.0 ไมครอน', NULL, NULL, 'gram stain'),
(3, 'B03_S_epidermidis.jpg', 'Staphylococcus epidermidis', 'S. epidermidis เป็น facultative anaerobe โตได้ดีในสภาวะที่มีออกซิเจน เชื้อนี้จะทำการเจริญเติบโตที่ ผิวหนังมนุษย์ และสามารถก่อให้เกิดการติดเชื้อจากโรงพยาบาลได้(hospital-acquired infections) โดยเชื้อชนิดนี้มักจะตรวจพบได้ในน้ำลาย และคราบหินปูนซึ่งมีความสัมพันธ์กับ  periodontitis, acute and chronic pulpitis, dry socket, และ ปากนกกระจอก(angular stomatitis) แบคทีเรียชนิดนี้จัดอยู่ในหมวด Coagulase negative staphylococcus(CoNS)', 'โคโลนีมีสีขาว ผิวเนียน ยกตัวนูน โคโลนีมีความเหนียว ขนาดประมาณ 1-2 ไมครอนบน Blood agar ไม่พบการเกิด hemolysis', 'เป็น gram positive bacteria รูปร่าง cocci มีการจัดเรียงตัวเป็นกลุ่ม 4 ก้อน(in tetrads) หรือเป็นแบบกลุ่ม(in cluster) มีขนาดเซลล์ 0.5 – 1.5 ไมครอน', 'Catalase – positiveOxidase - negativeTube coagulase – negativeornithine decarboxylase(ODC) – negativeNovobiocin – susceptible', 'Blood (Hemoculture)', 'gram stain'),
(4, 'B04_S_saprophyticus.jpg', 'Staphylococcus saprophyticus', 'Staphylococcus saprophyticus', 'โคโลนีสีขาวสว่าง ผิวเรียบ นูน ลักษณะคล้ายครีม(creamy colonies) ไม่พบการเกิด hemolysis บน Blood Agar', 'เป็น gram positive bacteria รูปร่าง cocci มีการจัดเรียงตัวเป็น กลุ่ม(in cluster) คล้ายองุ่น(grape-like appearance) หรือเป็นคู่ (in pairs)', 'Catalase – positiveOxidase - negativeTube coagulase – negativeNovobiocin - resistant', NULL, 'gram stain'),
(5, 'B05_S_lugdunenesis.jpg', 'Staphylococcus lugdunenesis', 'Staphylococcus lugdunensis', 'โคโลนีสีขาว มันวาว กึ่งเงา นูน มีขนาดโคโลนี 1-3 ไมครอน มีกลิ่นคล้ายหญ้าแห้ง(hay-like odor) พบ-hemolysis บน Blood Agarเมื่อโคโลนีแก่ขึ้นจะให้สีเหลืองขาว คล้ายได้', 'เป็น gram positive bacteria รูปร่าง cocci มีการจัดเรียงแบบเป็นกลุ่ม(in cluster)', 'Catalase – positiveOxidase - negativeTube coagulase – negativeNovobiocin - susceptiblepyrrolidonyl arylamidase (PYR) – positiveornithine decarboxylase(ODC) – positive', NULL, 'gram stain'),
(6, 'B06_S_hominis.jpg', 'Staphylococcus hominis', 'เป็นเชื้อแบคทีเรียในกลุ่ม coagulase negative staphylococci(CoNS) โดยปรกติไม่ก่อโรคมนุษย์ แต่จะอาศัยแบบเกื้อกูล(commensalism) บนผิวหนังของมนุษย์และสัตว์ในบางโอกาสก่อให้เกิดการติดเชื้อในคนไข้ที่มีภูมิคุ้มกันบกพร่อง เช่น ผู้ที่ได้รับ chemotherapy เป็นต้น', 'โคโลนีมีขนาดเล็ก มีสีขาว หรือ แทน นูน มันวาว ขนาดประมาณ 1-2 ไมครอน เติบโตได้ดีในสภาวะที่มีอากาศ ไม่พบ hemolysis บน Blood agar อุณหภูมิที่เหมาะสมในการเจริญเติบโต คือ 20-45 °C', 'เป็น gram positive cocci มีขนาดเซลล์ประมาณ 1-1.5 ไมครอน มีการจัดเรียงรูปร่างเป็นเซลล์เดี่ยว(single) หรือเป็นคู่(in pairs) หรือเป็นกลุ่ม(in cluster) ไม่มีการสร้างสปอร์และแคปซูล ไม่มีการเคลื่อนที่', 'Catalase – positiveOxidase - negativeTube coagulase – negativeNovobiocin – resistanceArginine dihydrolase(ADH) – negativeODC - negative', NULL, 'gram stain'),
(7, 'B07_S_haemolyticus.jpg', 'Staphylococcus haemolyticus', 'เป็นแบคทีเรียชนิดหนึ่งในกลุ่ม CoNS พบว่าเป็นส่วนหนึ่งของผิวหนังบนร่างกายมนุษย์ และพบจำนวนมากในส่วนรักแร้ ขาหนีบ และ perineum เป็นที่รู้จักกันว่าเป็นเชื้อฉวยโอกาส ที่ก่อให้เกิดการติดเชื้อทั่วระบบร่างกาย และการติดส่วนใหญ่เกี่ยวข้องกับการสอดใส่อุปกรณ์เครื่องมือทางการแพทย์ อีกทั้งยังมีอุบัติการณ์เชื้อดื้อยา methicillin resistant ที่สูงมากอีกด้วย', 'โคโลนีไม่มีสี หรือ มีสีขาวอมเหลือง ผิวเรียบ มันวาว มีขนาด 5-9 ไมครอน พบ-hemolysis บน Blood Agarเชื้อแบคทีเรียนี้เจริญเติบโตได้ดีในสภาวะที่มีอากาศ มีอุณหภูมิที่เหมาะสมในการเจริญเติบโต อยู่ที่ 34-35 °C', 'เป็น gram positive cocci มีการจัดเรียงเป็น in pair หรือ in cluster ขนาดเซลล์ประมาณ 0.8-1.3 ไมครอน ไม่มีการเคลื่อนที่ ไม่มีสปอร์', 'Catalase – positiveOxidase - negativeTube coagulase – negativeNovobiocin – susceptibleArginine dihydrolase(ADH) – positive', NULL, 'gram stain'),
(8, 'B08_Strep_pyogenes.jpg', 'Streptococcus pyogenes', 'S. pyogenes', 'โคโลนีดูเป็นเมือก ผิวหยาบ ให้-hemolysis ใช้อุณหภูมิ 37 °C ซึ่งเหมาะสมการเจริญเติบโต ไม่สามารถเจริญเติบโตได้ที่ 10°C หรือ 45°C', 'พบ gram positive cocci มีการจัดเรียงตัวเป็น สาย(in chains) อาจจะพบเป็นสายสั้น หรือ สายยาวก็ได้', 'Catalase – negativeOxidase – negativeCapsule – capsulatedCoagulase – negativeCapsule – positiveBacitracin – susceptiblePYR – positive', NULL, 'gram stain'),
(9, 'B09_S_agalactiae(PIC1).jpg B09_S_agalactiae(PIC2).jpg .jpg', 'Streptococcus agalactiae', 'Streptococcus agalactiaeที่เป็น Group B เนื่องจากการแบ่งหมวดหมู่ของ Lancefield เชื้อนี้มี polysaccharide ล้อมรอบ(เป็น capsule) และสามารถแบ่งเป็นหลายๆ serotype ได้ เช่น Ia, Ib, II–IX', 'โคโลนีให้-hemolysis มีสีเหลือง ส้ม หรือแดงอิฐ เรียบ นูน เติบโตได้ที่ 37 °C และไม่เจริญเติบโตที่ 45 °C', 'เป็น gram positive cocci ขนาด 0.6 – 1.2 ไมครอน มีการจัดเรียงตัวเป็นสายยาว(in long chains) ไม่มีการเคลื่อนที่และไม่สร้างสปอร์', 'Catalase – negativeOxidase – negativeCoagulase – negativeCapsule – capsulatedBacitracin - resistantCAMP test – positivePYR – negativeUrease – negative', NULL, 'gram stain'),
(10, 'B10_S_salivarius.jpg', 'Streptococcus salivarius', 'S. salivarius มีการเพิ่มจำนวนของเชื้อที่บริเวณ ช่องปาก(oral cavity) และทางเดินหายใจส่วนบน(upper respiratory tract) เป็นแบคทีเรียที่ไม่ก่อพยาธิสภาพในคนปกติ แต่สามารถก่อให้เกิดการติดเชื้อฉวยโอกาส(opportunistic pathogen) ได้ ซึ่งทำให้เกิดการติดเชื้อในกระแสเลือด(septicemia)', 'พบ-hemolysis หรือ-hemolysis บน Blood Agar โคโลนีมี โคโลนีสีขาวขุ่น หรือสีเทา ผิวเรียบ ขอบนูน', 'เป็น gram positive cocci มีการจัดเรียงตัวเป็น คู่(in pairs) และ สายสั้น(in short chains)', 'Arginine – negativeEsculin – positiveVP – positiveMannitol – negativeSorbitol – negativeUrea – variable', NULL, 'gram stain'),
(11, 'B11_S_mutans(PIC1).jpg B11_S_mutans(PIC2).jpg', 'Streptococcus mutans', 'S. mutans มีถิ่นที่อยู่ที่บริเวณ ปาก คอหอยและลำไส้เล็ก เชื้อแบคทีเรียชนิดนี้เป็นสาเหตุที่ทำให้เกิดคราบหินปูน(tooth decay) อย่างมีนัยสำคัญ โดยส่วนใหญ่เชื้อนี้จะก่อให้เกิดโรคทางช่องปากเป็นหลัก จากการศึกษาพบว่ามีความใกล้เคียงกับสายพันธุ์ Streptococcus sobrinus', 'โคโลนีมีขนาดเล็ก สีขาวอมเทา ผิวหยาบ มีจำนวนมากขึ้นหลังจากผ่านไป 3-4 วัน พบ-hemolysis หรือ-hemolysis ได้ แต่พบ-hemolysis ได้ยาก บาง strains อาจให้โคโลนีผิวเนียน หรือ มีเมือกมันวาวได้(mucoid)', 'เป็น gram positive cocci มีการจัดเรียงตัวเป็น สายขนาดปานกลางจนสายยาว(in medium chains จนถึง long chains) มีขนาดประมาณ 0.5-0.75 ไมครอน', 'Arginine – negativeEsculin – positiveVP – positiveMannitol – positiveSorbitol – positiveUrease – negative', NULL, 'gram stain'),
(12, 'B12_S_pneumoniae(PIC1).jpg B12_S_pneumoniae(PIC2).jpg', 'Streptococcus pneumoniae', 'Streptococcus pneumoniae ก่อโรค Pneumococcal disease ซึ่งทำให้ปรากฏอาการ ปอดบวม(pneumonia) การติดเชื้อที่หู ติดเชื้อที่โพรงจมูก ไขสันหลังอักเสบ และการติดเชื้อในการกระแสเลือดได้ เชื้อนี้ส่วนมากมักก่อโรคในเด็กและวัยสูงอายุ', 'บน Blood Agar พบ-hemolysis โคโลนีมีขนาด 0.5 – 1.25 ไมครอน สีเทา มีเมือก(mucoid) บางครั้งอาจพบลักษณะโคโลนีเป็นสีเขียวเหลืองได้', 'เป็น gram positive cocci มีการจัดเรียงคล้ายเข็ม(lancet shaped) (มีการยืดยาวของ cocci ออกและมีปลายมน) และส่วนมากจะอยู่เป็นคู่(diplococci) บางครั้งอาจจัดเรียงเป็นสายสั้นๆ ได้ ไม่มีการสร้างสปอร์', 'Catalase – negativeMotile – non-motileEthyl hydrocupreine hydrochloride (Optochin) – susceptibleBile solubility – positive', NULL, 'gram stain'),
(13, 'B13_E_faecium.jpg', 'Enterococcus faecium', 'E. faecium เป็นเชื้อก่อโรคในมนุษย์ และส่วนใหญ่การติดเชื้อนี้เกิดจากการติดเชื้อจากโรงพยาบาล(nosocomial infection) ซึ่งสามารถก่อให้ผู้ป่วยมีอาการ ติดเชื้อที่บริเวณแผลผ่าตัด endocarditis และ urinary tract infections ในปัจจุบันพบว่าเชื้อกลุ่มนี้มีอัตราการดื้อยาที่สูง เช่น vancomycin penicillin gentamycin tetracycline erythromycin และ teicoplanin', 'โคโลนีมีสีครีม หรือขาว ขอบเรียบ ผิวเรียบ ไม่พบ hemolysis(-hemolysis) บน Blood agar', 'เป็น gram positive cocci มีการจัดเรียงตัวเป็น คู่(in pair) และบ่อยครั้งมักพบเป็นสายสั้นๆ(in short chains) ไม่พบการสร้างสปอร์', 'Catalase-negativeMotile – non-motilePYR- positiveAcid production from starchBile esculin – positive6.5% NaCl – positiveArabinose – positiveMannitol – positiveMethyl--d-mannopyranoside - negative', NULL, 'gram stain'),
(14, 'B14_E_faecalis(PIC1).jpg B14_E_faecalis(PIC2).jpg , B14_E_faecalis(PIC3).jpg', 'Enterococcus faecalis', 'เชื้อนี้ถูกจัดอยู่ใน  group D Streptococcus  เป็น gram positive ที่อาศัยแบบอิงอาศัย(commensalism) ในระบบทางเดินอาหารและลำไส้ของมนุษย์และสัตว์ เชื้อชนิดนี้สามารถพบได้ในคนที่สุขภาพดี แต่สามารถก่อให้เกิดการติดเชื้อที่สามารถทำให้เสียชีวิตได้ โดยเฉพาะอย่างยิ่งการติดเชื้อจากโรงพยาบาล(nosocomial infection) ซึ่งทำให้เกิดได้รับเชื้อที่มียีนดื้อยาสูงมาก', 'โคโลนีขนาดเล็ก สีเทา มีขนาดประมาณ 1-2 ไมครอน ขอบเรียบ นูน ไม่พบ hemolysis-hemolysis) บน Blood agar', 'เป็น gram positive cocci มีการจัดเรียงตัวเป็น คู่(in pair) และบ่อยครั้งมักพบเป็นสายสั้นๆ(in short chains) ไม่พบการสร้างสปอร์', 'Catalase-negativeMotile – non-motileBile esculin – positive6.5% NaCl – positiveArabinose – negativeMannitol – positiveMannose – positiveMaltose - positive', 'Blood', 'gram stain'),
(15, 'B15_E_gallinarum.jpg', 'Enterococcus gallinarum', 'E. galinarum เป็นเชื้อแบคทีเรียที่ยากจะพบในผู้ใหญ่และยากมากขึ้นในเด็ก เชื้อชนิดนี้มีการก่อโรค urinary tract infection, bacterial endocarditis, และ diverticulitis การติดเชื้อระบบประสาทส่วนกลางสามารถพบได้แต่ยาก', 'โคโลนีกลม ผิวเรียบ ขอบเรียบ พบ-hemolysis บน Horse Blood Agar', 'เป็น gram positive cocci มีการจัดเรียงตัวเป็นสาย(in chains) โดยอาจพบเป็นสายสั้นๆ หรือยาว และสามารถพบเป็นคู่(in pairs) ได้', 'Catalase-negativeMotile – motileBile esculin – positive6.5% NaCl – positiveSorbose – negativePYR – positiveMethyl--d-mannopyranoside - positive', NULL, 'gram stain'),
(16, 'B16_E_avium(PIC1).jpg B16_E_avium(PIC2).jpg', 'Enterococcus avium', 'E. avium มีชื่อเดิมว่า group Q streptococcus เชื้อชนิดนี้ส่วนมากจะพบในนก มีโอกาสยากที่ทำให้เกิดการติดเชื้อในคน ปัจจุบันได้มีรายงานพบการติดเชื้อในกระแสเลือดซึ่งมีจำนวน 9 ราย', 'โคโลนีกลม ผิวเรียบ ขอบเรียบ พบ-hemolysis บน Blood Agar เชื้อแบคทีเรียชนิดนี้ต้องการ Folinic acid ในการเจริญเติบโต เติบโตได้ดีที่ 45 °C และสามารถทนความร้อนได้ถึง 60 °C เป็นเวลา 30 นาที', 'เป็น gram positive cocci มีการจัดเรียงตัวเป็นสาย(in chains) โดยอาจพบเป็นสายสั้นๆ หรือยาว และสามารถพบเป็นคู่(in pairs) ได้', 'Catalase-negativeMotile – motileBile esculin – positive6.5% NaCl – positiveL-arabinose – positiveSorbose – positiveSucrose - negative', NULL, 'gram stain'),
(17, 'B17_Corynebacterium_spp', 'Corynebacterium spp. (diphtheroid)', 'Corynebacterium species เป็นเชื้อที่มีประโยชน์(normal flora) บนร่างกายมนุษย์ โดยสารถพบได้ที่ผิวหนัง เยื่อบุผิว เยื่อเมือกและท่อระบบอาหารและลำไส้เล็ก ถึงแม้ว่าบ่อยครั้งจะถูกจำแนกว่าเป็น สิ่งเจือปนมากับตัวอย่างผู้ป่วย แต่ในบางครั้งเชื้อชนิดนี้สามารถก่อโรคได้ โดยเฉพาะอย่างยิ่งผู้ที่มีภูมิคุ้มกันบกพร่อง', 'โคโลนีมีสีเทา หรือขาว เยิ้ม นูน ขอบโค้ง โคโลนีมีการโปร่งแสงได้ (อาจพบ-hemolysis ได้)', 'เป็น gram positive pleomorphic bacilli', 'Catalase – positiveMotile – non-motileIndole – negativeCAMP test – negativeH2S production – positiveUrease – negative', NULL, 'gram stain'),
(18, 'B18_C_diphtheriae(PIC1).jpg B18_C_diphtheriae(PIC2).jpg .jpg', 'Corynebacterium diphtheriae', 'เป็นเชื้อที่ก่อให้เกิดโรคตอตีบ(diphtheria) โดยจะมีการสร้าง diphtheria toxin ซึ่งเป็นสารสำคัญในการก่อเกิดโรคคอตีบ แต่มีอีก 2 สายพันธุ์ที่สามารถสร้างได้ คือ C. ulcerans และ C. pseudotuberculosis ทั้งนี้สามารถพบเชื้อที่ไม่สร้าง toxin ได้ แต่ก็สามารถก่อโรคได้ หากมีการรุกล้ำเข้าไปยังในร่างกายมนุษย์ โดยจะทำให้เกิด การติดเชื้อในกระแสเลือด กล้ามเนื้อหัวใจอักเสบ ฝีหนองและการติดเชื้อที่กระดูกข้อต่อต่างๆ', 'โคโลนีมีขนาดใหญ่ ประมาณ 2 ไมครอน ผิวเรียบ ค่อนข้างแห้ง บาง strains สามารถให้โซน-hemolysis แบบอ่อนๆ ได้', 'เป็น gram positive pleomorphic bacilli(Irregular) ที่มีรูปร่างตรง หรือโค้งเล็กน้อย คล้ายกระบอง(club shaped) มีการจัดเรียงเป็นเซลล์เดี่ยว(in single) เป็นคู่(in pairs) เป็น “V” form และ palisade หรือมีลักษณะคล้ายอักษรจีน(chinese letters)', 'Catalase – positiveMotile – non-motileIndole – negativeCAMP test – negativeH2S production – positiveUrease – negativeCitrate – negativeMR – positive', NULL, 'gram stain'),
(19, 'B19_E_rhusiopathiae(PIC1).jpg B19_E_rhusiopathiae(PIC2).jpg', 'Erysipelothrix rhusiopathiae', 'Erysipelothrix rhusiopathiae จัดว่าเป็นเชื้อก่อโรคในสัตว์ ทำให้เกิดโรค erysipelas ซึ่งมีผลกระทบในวงกว้างต่อ สุกร เต่า และไก่ไข่ โดยชื่อโรคในสุกรที่เป็นที่รู้จักกันคือ \"diamond skin disease\" เชื้อแบคทีเรียชนิดนี้ก่อให้เกิดการติดเชื้อจากสัตว์สู่คน ก่อให้เกิดโรค erysipeloid', 'โคโลนีมีขนาดเล็ก ประมาณ 0.3-1.5 ไมครอน ผิวเรียน นูน เมื่อเวลาผ่านไปโคโลนีจะใหญ่ขึ้นเรื่อยๆ และมีความมันเยิ้ม(opaque) ไม่พบ-hemolysis และ-hemolysis', 'เป็น gram positive bacteria มีลักษณะตรงหรือโค้งงอเล็กน้อย เป็นแท่งเรียวยาว และมักเห็นเป็น เส้นยาวๆ(long filament) มีการอยู่กันแบบเดี่ยว แบบคู่ หรือแบบกลุ่ม ไม่พบการสร้างสปอร์ ไม่มีแคปซูล', 'Catalase – negativeHippurate hydrolysis – negativeCitrate – negativeVoges-Proskauer – negativeH2S production – positiveNeuraminidase – positive', NULL, 'gram stain'),
(20, 'B20_Listeria_monocytogenes(PIC1).jpg B20_Listeria_monocytogenes(PIC2).jpg', 'Listeria monocytogenes', 'Listeria monocytogenes เป็นเชื้อแบคทีเรียที่ก่อโรค มีบทบาทสำคัญต่อความปลอดภัยของอาหาร(food safety) สามารถพบได้ในสิ่งแวดล้อมทั่วไป เชื้อชนิดนี้สามารถทนทานต่อสภาวะต่างๆ เช่น ในสภาวะที่อาหารเป็นกรด ในอาหารที่มีปริมาณน้ำต่ำๆ เชื้อนี้เป็นสาเหตุในการเกิดโรคอาหารเป็นพิษ(food poisoning) ติดต่อผ่าทางอาหาร ให้เกิดโรคโรคลิสเทอริโอสิส โรคเยื่อหุ้มสมองอักเสบ(meningitis) การติดเชื้อในกระแสเลือด(septicemia) และการแท้ง(abortion)', 'สามารถเจริญเติบโตได้ดีบน Blood Agar Nutrient agar, tryptose และ brain heart infusion agars เมื่อ พบ-hemolysis ได้บน BA เมื่อเพาะเลี้ยงเชื้อไว้ข้ามคืนพบ โคโลนีโปร่งใส มีการยกตัวนูนเล็กน้อย ไม่มีเม็ดสี มีขนาดประมาณ 1-2 มิลลิเมตร มีกลิ่นหวาน คล้ายนมหรือเนย(buttermilk-like smell)', 'พบ gram positive bacilli มีการจัดเรียงเป็นท่อนสั้นๆ(short rod) หรืออาจพบเป็น coccobacilli มีปลายมนบางครั้งสามารถพบ coccoid form ได้ในการเสมียร์ของเนื้อเยื่อที่ติดเชื้อ ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'Catalase – positiveH2S production – negativeCAMP test – positive with S. aureusMR (Methyl Red) – positiveVP (Voges Proskauer) – positiveUrease - negative', NULL, 'gram stain'),
(21, 'B21_Listeria_spp(PIC1).jpg B21_Listeria_spp(PIC2).jpg', 'Listeria spp.', 'Listeria spp. เป็นเชื้ออแกรมบวก รูปร่างเป็นแท่ง มีการใช้ออกซิเจนในกระบวนการสังเคราะห์พลังงาน เชื้อกลุ่มนี้ประกอบไปมากกว่า 20 สายพันธุ์ เช่น  L. aquatica, L. booriae, L. cornellensis, L. costaricensis, L. goaensis, L. fleischmannii, L. floridensis, L. grandensis, L. grayi, L. innocua, L. ivanovii, L. marthii, L. monocytogenes, L. newyorkensis, L. riparia, L. rocourtiae, L. seeligeri, L. thailandensis, L. weihenstephanensis, และ L. welshimeri เชื้อก่อโรคหลักๆ ที่พบในมนุษย์ คือ Listeria monocytogenes ซึ่งก่อให้เกิด Listeriosis เกิดการติดเชื้อในกระแสเลือด และ ไขสันหลังอักเสบ(meningitis) ได้', 'โคโลนีมีสีน้ำเงินอมเทา หรือเห็นเป็นน้ำเงินอมเขียวเมื่อเอียงเข้าหาแสง', 'เป็น gram positive bacilli มีการจัดเรียงเป็น สายสั้นๆ(short rods) หรืออาจพบเป็น coccobacilli พบเซลล์เป็นปลายมน เมื่อแก่มากขึ้น สามารถพบเป็น เส้นสายยาว(long filament) ได้', 'Catalase – positiveOxidase – negativeMR – positiveVoges-Proskauer – positiveIndole – negativeUrease – negative', NULL, 'gram stain'),
(22, 'B22_Bacillus_cereus(PIC1).jpg B22_Bacillus_cereus(PIC2).jpg .jpg', 'Bacillus_cereus', 'เป็นแบคทีเรียในกลุ่ม bacillus ที่สามารถสร้างสารพิษ(toxin) ที่ทนความร้อนได้ สามารถพบเชื้อชนิดนี้ได้ในธรรมชาติในดิน น้ำเชื้อสร้างสปอร์ซึ่งทนความแห้งแล้งได้ดี สปอร์จึงพบได้ทั่วไปในฝุ่น ควัน และ ปะปนมากับอาหารแห้ง เช่น น้ำตาล วัตถุเจือปนอาหาร  โรคที่ก่อให้เกิดหลักๆ ประกอบไปด้วย อาการอาเจียน(emetic Syndrome) และ อาการถ่ายเหลว(diarrhea syndrome)', 'โคโลนีขนาดใหญ่ มันเยิ้ม หรืออาจพบเป็นสีเหลือง ผิวโคโลนีคล้ายเม็ดทราย(granular) โคโลนีแบน พบ strong-hemolysis บน Blood Agar', 'เป็น gram positive bacilli ขนาดประมาณ 1.0-1.2 x 3.0 – 5.0 ไมครอน มี flagella ล้อมรอบเซลล์ พบ spore มีลักษณะเป็นวงรี เมื่อย้อมด้วย malachite green จะเห็นสปอร์ด้านในเป็นสีเขียว ไม่พบ capsule', 'Catalase – positiveOxidase – negativeMR – negativeVoges-Proskauer – positiveNitrate reduction – positiveGelatin hydrolysis – positive', NULL, 'gram stain'),
(23, 'B23_Bacillus_subtilis(PIC1).jpg B24_Bacillus_subtilis(PIC2).jpg', 'Bacillus subtilis', 'เชื้อชนิดนี้เป็นเชื้อแบคทีเรียที่ไม่ก่อโรค(non-pathogenic bacteria) แต่สามารถพบการปนเปื้อนได้ในอาหาร และพบว่าเป็นเชื้อฉวยโอกาสในผู้ที่มีภูมิคุ้มกันบกพร่อง โดยส่วนมากเชื้อชนิดนี้จะมักพบในเมล็ด ผักและผลไม้ ซึ่งช่วยในการทำร้ายเชื้อราได้', 'เมื่อเพาะเลี้ยงบน Nutrient Agar พบลักษณะโคโลนีสีขาวถึงเทา กลม มันเยิ้ม แบน โคโลนีแห้ง มีขนาดปานกลาง', 'เป็น gram positive bacilli ที่สามารถสร้างสปอร์ได้ ไม่มีการสร้างแคปซูลใดๆ', 'Catalase – positiveOxidase – negativeMR – negativeVoges-Proskauer – positiveIndole – negativeUrease – negativeGelatin hydrolysis - positive', NULL, 'gram stain'),
(24, 'B24_N_gonorrhoeae(PIC1).jpg B24_N_gonorrhoeae(PIC2).jpg', 'Neisseria gonorrhoeae', 'เป็นแบคทีเรียที่ไม่มีการสร้างสปอร์ ไม่มีการเคลื่อนที่ สามารถติดต่อได้โดยจากเยื่อบุเมือกต่างๆ(mucouse membrane) โดยส่วนมากมักเกิดการติดต่อจากการมีเพศสัมพันธ์โดยตรง เช่น องคชาติ-ช่องคลอด องคชาติ-ทวารหนัก และองคชาติ-คอหอย ซึ่งก่อให้เกิดการพัฒนาเป็นการติดเชื้อในกระแสเลือด(bacteremia) และกลายเป็น septic arthritis', 'เป็นเชื้อ fastidious microorganism จึงจำเป็นต้องเพาะเลี้ยงใน chocolate agar เติบโตได้ที่ 35-37 °C ที่ 3-10% CO2 และมีความชื้นสัมพัทธ์สูง เมื่อเพาะเลี้ยงเป็นเวลา 48 ชั่วโมง ให้โคโลนีสีขาวอมเทา มันเยิ้ม ยกนูน ผิวเหมือนเม็ดทรายที่ละเอียด และจะเป็นเมือก(mucoid) เมื่อบ่มนานขึ้น', 'เป็น gram negative cocci มีการจัดเรียงเป็นคู่ จึงมักเรียกว่า diplococcic ไม่มีการเคลื่อนที่ ไม่มี flagella ไม่มีการผลิตแคปซูล', 'Catalase – positiveOxidase – positiveH2S Production – negativeNitrate reduction – negativeCTA Glucose (Cysteine trypticase agar containing glucose) – positiveCTA Lactose – negativeCTA Maltose – negativeCTA Mannose – negativeDNase - negative', NULL, 'gram stain'),
(25, 'B25_N_meningitidis(PIC1).jpg , B25_N_meningitidis(PIC2).jpg B25_N_meningitidis(PIC3).jpg', 'Neisseria meningitidis', 'เชื้อนี้เป็นเชื้อก่อโรคในมนุษย์ ทำให้เกิดการติดเชื้อได้ ซึ่งส่วนใหญ่พบว่าการได้รับเชื้อนี้เกิดจากได้รับเชื้อจากบุคคลที่เป็นพาหะมา จากนั้น colonize ที่ nasopharyngeal หากเชื้อสามารถแทรกผ่านเนื้อเยื่อได้ จะสามารถพัฒนาให้เกิดเป็น Meningococcal meningitis', 'โคโลนีใหญ่กว่า gonococci ประมาณ 1 ไมครอน โคโลนีมีผิวเรียบ ชื้น สีขาว ขอบเรียบ', 'เป็น gram negative diplococci ไม่มีการเคลื่อนที่ มี flagella มีการผลิตแคปซูล และพบ pilli', 'Oxidase – positiveH2S Production – negativeNitrate reduction – negativeCTA Glucose (Cysteine trypticase agar containing glucose) – positiveCTA Lactose – negativeCTA Maltose – positiveCTA Mannose – negativeDNase - negative', NULL, 'gram stain'),
(26, 'B26_H_influenzae(PIC1).jpgB26_H_influenzae(PIC2).jpg B26_H_influenzae(PIC3).jpg', 'Haemophilus influenzae', 'เป็น gram negative coccobacilli ก่อโรคในคนทำให้เกิดการติดเชื้อในระบบทางเดินหายใจ การติดเชื้อที่ตา การติดเชื้อและในกระแสเลือดและไขสันหลังอักเสบ(meningitis) เชื้อชนิดมักก่อโรคไขสันหลังอักเสบในเด็กอายุ 2 เดือน ถึง 5 ปี', 'บน Chocolate agar โคโลนีสีอมเทา ผิวเรียบ ขอบโค้ง โปร่งใส มีขนาดประมาณ 0.5-1 ไมครอนหาก strains ใดมีการผลิต capsule จะพบว่าโคโลนีจะมีขนาดใหญ่ และมีเมือก(mucoid) มากกว่าปกติ', 'เป็น gram negative coccobacilli มีขนาดประมาณ 0.3-0.5 ไมครอน ไม่มีการเคลื่อนที่', 'Catalase – positiveOxidase – positiveX factor – negativeV factor – negativeX and V factor – positive', NULL, 'gram stain');
INSERT INTO `datatran01` (`id`, `pic`, `name`, `name_detail`, `colony_detail`, `micro_exam`, `biochemi`, `tos`, `staining`) VALUES
(27, 'B27_C_jejuni(PIC1).jpg B27_C_jejuni(PIC2).jpg , B27_C_jejuni_coccoidform(PIC3).jpgB27_C_jejuni_coccoidform(PIC4).jpg', 'Campylobacter jejuni', 'Campylobacter jejuni เป็นเชื้อที่ก่อโรคในมนุษย์ ทำให้เกิดอาการท้องร่วงและเกิดการป่วยหลายๆอวัยวะ เชื้อชนิดนี้เป็นหนึ่งในเชื้อที่ก่อให้เกิด gastroenteritis มากที่สุดทั่วโลก ในประเทศที่กำลังพัฒนาพบว่าการเสียชีวิตของเด็กเกิดจากการป่วยจากการเกิดท้องร่วงโดย campylobacter หากบุคคลใดที่เกิดการติดเชื้อแล้วมีภูมิคุ้มกันบกพร่องสามารถก่อให้เกิดความผิดปกติเกี่ยวกับระบบประสาท และพัฒมาเป็นโรค Guillain–Barré syndrome', 'โคโลนีมีขนาดเล็ก มีสีขาวอมเทา โคโลนีเป็นเมือก(mucoid) แบนแต่มีขอบที่จัดเรียงตัวไม่ปกติ ไม่มี hemolysis', 'เป็น gram negative bacilli ที่มีรูปร่างเป็นลักษณะโค้ง(curved) คล้ายปีกนก(seagull wing-like) หรือเป็นเกลียว(spiral) ซึ่งดูคล้ายกับ vibrio อีกทั้งสามารถพบลักษณะเซลล์ที่เป็นทรงกลมเรียก coccoid form (เป็นผลมาจากสภาวะแวดล้อมที่ไม่เหมาะสมจึงมีการเปลี่ยนรูปแบบเซลล์)', 'Catalase – positiveOxidase – positiveHippurate hydrolysis – positiveUrease – negativeH2S production - negativeDNase – negativeGlucose – negativeGrowth at 25°C – negativeGrowth at 37°C – positiveGrowth at 42°C – positive', NULL, 'gram stain'),
(28, 'B28_Campylobacter_coli(PIC1).jpg B28_Campylobacter_coli(PIC2).jpg B28_Campylobacter_coli(PIC3).jpg B28_Campylobacter_coli_coccoidform(PIC4).jpg', 'Campylobacter coli', 'เป็นเชื้อก่อโรคที่นำไปสู่การเกิดโรคอาหารเป็นพิษ(food poisoning) ในประเทศที่กำลังพัฒนา เชื้อ C. coli ทำให้เกิด gastroenteritis เพียง 10% เท่านั้น เมื่อเทียบกับ C. jejuni ที่มีอัตราการก่อโรคสูงถึง 90%', 'โคโลนีสีขาวอมเทา หรือค่อนข้างไปทางชมพู มีขนาด 1-2 ไมครอน มี metallic sheen บน Blood Agarไม่มีการเกิด hemolysis บน Blood Agar', 'เป็น gram negative bacilli มีรูปร่างโค้ง(curve) คล้ายปีกนก(seagull wing like) หริอเป็นเกลียวเล็กๆ มี flagella สามารถเคลื่อนที่ได้ อีกทั้งสามารถพบลักษณะเซลล์ที่เป็นทรงกลมเรียก coccoid form (เป็นผลมาจากสภาวะแวดล้อมที่ไม่เหมาะสมจึงมีการเปลี่ยนรูปแบบเซลล์)', 'Catalase – positiveOxidase – positiveHippurate hydrolysis – negativeUrease – negativeH2S production - positiveDNase – negativeGlucose – negativeGrowth at 25°C – negativeGrowth at 37°C – positiveGrowth at 42°C – positive', NULL, 'gram stain'),
(29, 'B29_Legionella_spp(PIC1).jpg B29_Legionella_spp(PIC1).jpg', 'Legionella pneumophila', 'Legionella pneumophila เป็นเชื้อก่อโรคชนิดหลักๆ ในกลุ่มนี้ ก่อให้เกิด Legionnaires\' disease หรือรู้จักกันในชื่อว่า legionellosis อีกทั้งสามารถก่อโรคนอกจากปอด(extrapulmonary disease) ได้แก่ pericarditis และ endocarditis อาการที่คล้ายกับการเป็นไข้หวัดใหญ่ influenza นั้น เรียกว่า Pontiac fever', 'โคโลนีสีเทาขาว มีพื้นผิวคล้ายกับแก้ว(glass-like appearance)เมื่อทำการเลี้ยงบน Buffered Charcoal Yeast Extract (BCYE) Agar ประมาณ 3 วันจะพบลักษณะเป็น pin point colony', 'เป็น gram negative bacilli มีขนาด 2-20 ไมครอน สามารถพบสายยาวๆ(long filamentous) ได้', 'Catalase – positiveUrease – negativeGelatin – liquidNitrate reduction – negativePeroxidase – positiveTweenase – positive', 'sputum', 'gram stain'),
(30, 'B30_V_alginolyticus(PIC1).jpg B30_V_alginolyticus(PIC2).jpg B30_V_alginolyticus(PIC3).jpg', 'Vibrio alginolyticus', 'เป็นเชื้อที่ชอบความเค็ม (halophilic microorganism) สามารถเจริญเติบโตได้ดีใน NaCI สามารถพบเชื้อได้ในพวกอาหารทะเล และสัตว์ทะเลต่างๆ เชื้อชนิดนี้ก่อให้เกิดการติดเชื้อที่หูและบาดแผล จึงปรากฏลักษณะเป็น cellulitis และมีน้ำหนองออกมาจากบาดแผล(seropurulent exudate)', 'เมื่อเพาะเลี้ยงบน Solid media พบว่ามีการเกิด swarming colony และเมื่อเพาะเลี้ยงบน TCBS ให้ผลเป็น sucrose fermenter จึงปรากฏลักษณะโคโลนีสีเหลือง นูน ขอบเรียบ ขนาด 1-3 ไมครอน', 'เป็น gram negative bacilli มีรูปร่างตรง(straight) มี 3-12 polar flagella สามารถเห็น flagella ที่ส่วนท้ายของเซลล์ได้เมื่อเพาะเลี้ยงบนอาหารเลี้ยงเชื้อ และพบการ swarming ได้', 'Catalase – positiveOxidase – positiveIndole – positiveMR – positiveVoges-Proskauer – positiveH2S production – negative0% NaCl – negative1% NaCl – positive3% NaCl – positive6% NaCl – positive8% NaCl – positive10% NaCl – positive', 'stool', 'gram stain'),
(31, 'B31_V_parahaemolyticus(PIC1).jpg B31_V_parahaemolyticus(PIC2).jpg', 'Vibrio parahaemolyticus', 'เป็นแบคทีเรียแกรมลบที่ชอบความเค็ม(halophilic bacteria) สามารถพบได้ในน้ำเค็ม และชายฝั่ง เชื้อชนิดนี้เป็นสาเหตุที่นำไปสู่การเกิด gastroenteritis ในมนุษย์ เนื่องจากการรับประทารผลิตภัณฑ์จากทะเลที่ดิบ ไม่ได้ผ่านการทำให้สุกมา โดยเชื้อนี้จะก่อให้เกิดการติดเชื้อที่บาดแผล ที่หู และสามารถทำให้เกิดการติดเชื้อในกระแสเลือด', 'เมื่อเลี้ยงบน TCBS agar พบว่าเป็น non-sucrose fermenter(NSF) ให้โคโลนีสีเขียวอมฟ้า ขนาดเล็ก นูน ขอบเรียบ', 'เป็น gram negative bacilli สามารถเคลื่อนได้โดย monotrichous flagella ไม่มีการ swarming บน solid media มีการผลิต frimbriae หรือ pilli เกิดขึ้น', 'Catalase – positiveOxidase – positiveIndole – positiveMR – positiveVoges-Proskauer – negativeH2S production – negative0% NaCl – negative1% NaCl – positive3% NaCl – positive6% NaCl – positive8% NaCl – positive10% NaCl – positive', 'stool', 'gram stain'),
(32, 'B32_A_hydrophilia(PIC1).jpg B32_A_hydrophilia(PIC2).jpg', 'Aeromonas hydrophila', 'เป็นเชื้อที่มีการแพร่กระจายทั่วโลก มักพบอยู่ในน้ำจืด น้ำเค็ม และในน้ำสิ่งแวดล้อมต่างๆ สามารถเติบโตในช่วงอุณหภูมิที่กว้าง เชื้อชนิดนี้เป็นเชื้อที่ก่อโรค gastroenteritis ทำให้เกิดอาการท้องร่วง อีกทั้งเชื้อชนิดนี้ยังมีการสร้าง toxin ซึ่งก่อให้เกิดความรุนแรงเพิ่มขึ้น', 'เมื่อเพาะเลี้ยงบน Blood Agar โคโลนีกลม ขนาดใหญ่ ยกสูง มันเยิ้ม พบ-hemolysisเมื่อเพาะเลี้ยงบน MacConkey Agar ให้โคโลนีเป็น non-lactose fermenter(NLF)', 'เป็น gram negative bacilli มีรูปร่างตรง ปรากฏอยู่เป็นเซลล์เดี่ยว หรือคู่ อาจมีสายสั้น(short chains)ด้วยได้', 'Catalase – positiveOxidase – positiveIndole – positiveNitrate reduction – positiveVP – positiveH2S production – positive', 'stool', 'gram stain'),
(33, 'B33_A_caviae(PIC1).jpg B33_A_caviae(PIC2).jpg', 'Aeromonas caviae', 'เป็นเชื้อที่ก่อโรคในมนุษย์ทั้งภายในระบบทางเดินอาหารและนอกระบบทางเดินอาหาร โดยมีอาการตั้งแต่การเกิดอาการท้องเสียฉับพลันจนถึงอาการที่ทำให้ถึงขั้นเสียชีวิตได้ ซึ่งได้แก่ การติดเชื้อในกระแสเลือด แบคทีเรียกินเนื้อ(necrotizing fasciitis) และกล้ามเนื้อเน่าตาย(myonecrosis)', 'เมื่อเพาะเลี้ยงบน Blood Agar โคโลนีกลม เล็ก ขอบเรียบโค้ง ไม่พบ-hemolysisเมื่อเพาะเลี้ยงบน MacConkey Agar ให้โคโลนีเป็น non-lactose fermenter(NLF)', 'เป็น gram negative bacilli มีรูปร่างตรง ปลายมน ปรากฏอยู่เป็นเซลล์เดี่ยว หรือคู่ อาจมีสายสั้น(short chains)ด้วยได้ บางครั้งอาจพบเป็น coccobacilli มีการเคลื่อนที่โดยใช้ polar flagella', 'Catalase – positiveOxidase – positiveIndole – positiveNitrate reduction – positiveVP – negativeH2S production – positiveCitrate ultilitzation - positive', 'stool', 'gram stain'),
(34, 'B34_A_sobria(PIC1).jpg B34_A_sobria(PIC2).jpg', 'Aeromonas sobria', 'เป็นเชื้อที่ก่อโรคในมนุษย์ทั้งภายในระบบทางเดินอาหารและนอกระบบทางเดินอาหาร โดยมีอาการตั้งแต่การเกิดอาการท้องเสียฉับพลันจนถึงอาการที่ทำให้ถึงขั้นเสียชีวิตได้ ซึ่งได้แก่ การติดเชื้อในกระแสเลือด แบคทีเรียกินเนื้อ(necrotizing fasciitis) และกล้ามเนื้อเน่าตาย(myonecrosis)', 'เมื่อเพาะเลี้ยงบน Blood Agar โคโลนีกลม ขนาดใหญ่ ยกสูง มันเยิ้ม พบ-hemolysisเมื่อเพาะเลี้ยงบน MacConkey Agar ให้โคโลนีเป็น non-lactose fermenter(NLF)', 'เป็น gram negative bacilli มีรูปร่างตรง ปรากฏอยู่เป็นเซลล์เดี่ยว หรือคู่ อาจมีสายสั้น(short chains)ด้วยได้', 'Catalase – positiveOxidase – positiveIndole – positiveNitrate reduction – positiveVP – negativeH2S production – positiveCitrate ultilitzation - positive', 'stool', 'gram stain'),
(35, 'B35_MTB(PIC1).jpg B35_MTB(PIC2).jpg', 'Mycobacterium tuberculosis in sputum', 'เป็นเชื้อก่อโรคในวงศ์ Mycobacteriaceae ก่อให้เกิด tuberculosis โดยเชื้อในกลุ่มนี้จะเป็น complex ประกอบไปอีก 9 สมาชิก ได้แก่ M. africanum, M. canetti, M. bovis, M. caprae, M. microti, M. pinnipedii, M. mungi, และ M. orygis การติดต่อเชื้อนี้เกิดจากการได้รับผ่านทางการหายใจละอองเชื้อเข้าไปผ่านเข้าสู่ปอด หากมีภูมิคุ้มกันปกติจะสามารถป้องกันการเกิดพยาธิสภาพได้ แต่ในบุคคลที่ภูมิคุ้มลดลงอาจเสี่ยงต่อการต่อปอด ระบบประสาทส่วนกลาง และระบบอื่นๆ ได้', 'โคโลนีมีการเจริญเติบโตได้ช้า ใช้เวลาในการเจริญเติบโตมากกว่า 7 วัน เมื่อเพาะเลี้ยงบน LJ medium พบว่าโคโลนีแห้ง หยาบ ไม่มีสีโคโลนี', 'เมื่อย้อมสีด้วย Acid fast bacilli หรือ modified Acid fast bacilli เห็นลักษณะเป็น gram negative bacilli ขนาดประมาณ 0.2 มิลลิเมตร ติดสีแดง พื้นหลังติดสีน้ำเงิน', 'niacin test – positivenitrate reduction test – positiveเติบโตบน TCH (thiophene-2-carboxylic acid hydrazide) 10µg/ml – positiveเติบโตบน Pyrazinamidase agar (PZA) 25µg/ml – negativearylsulfatase test (ทดสอบแบบ 3 วัน) – negative', 'sputum', 'AFB'),
(36, 'B36_MTB_Cordformation(PIC1).jpg B36_MTB_Cordformation(PIC2).jpg B36_MTB_Cordformation(PIC3).jpg', 'Mycobacterium tuberculosis in MGIT', NULL, 'เมื่อทำการเพาะเชื้อกลุ่ม Mycobacterium ลงใน liquid media (Mycobacterium Growth Indicator Tube; MGIT) เชื้อกลุ่ม TB complex สามารถเกิดการจัดเรียงเชื้อเป็นลักษณะคล้ายงูขนาดใหญ่(snake-like appearance) เพราะมี cord factor(trehalose dimycolate) เป็น virulence factor ซึ่งทำให้เชื้อชนิดนี้เมื่อเข้าไปในร่างกายคนเกิดการยับยั้งกระบวนการ phagolysosome fuction และก่อให้เกิด granuloma formation ได้อีกด้วย', NULL, NULL, 'Sputum', 'AFB'),
(37, 'B37_S_capitis.jpg', 'Staphylococcus capitis', 'เป็นเชื้อในกลุ่ม CoNS โดยปกติเป็นเชื้อประจำถิ่น(normal flora) ที่ผิวหนัง และมีโอกาสยากในการได้รับเชื้อชนิดนี้จากโรงพยาบาล หากผู้ที่มีภูมิคุ้มกันบกพร่องได้รับเชื้อนี้สามารถทำให้เกิดเยื่อบุหัวใจอักเสบ(endocarditis)', 'โคโลนีมีสีขาวหรือขาวอมเทา ผิวเรียบ ขอบเรียบ มันเยิ้ม(opaque) เมื่อแสงส่องจะแวววาว(glistening) ไม่พบการเกิด-hemolysis', 'เป็น gram positive cocci ขนาด 0.5 – 1.2 ไมครอน มีรูปแบบการเรียงตัวเป็นเซลล์เดี่ยว หรือเป็นคู่(in pairs) เป็นกลุ่ม(in cluster) ไม่พบการสร้างสปอร์', 'Catalase – positiveGlucose fermenterMannose fermenterSucrose fermenterCoagulase – negativeNitrate reduction - variable', 'Blood(Hemoculture)', 'gram stain'),
(38, 'B38_S_caprae(PIC1).jpg B38_S_caprae(PIC2).jpg', 'Staphylococcus caprae', 'เป็นเขื่อกลุ่ม CoNS โดยปกติแบคทีเรียชนิดนี้ไม่ก่ออันตรายใดๆ แต่พบรายงานว่าสามารถรับเชื้อนี้ได้จากการติดเชื้อที่โรงพยาบาล และจากชุมชน โดยอาการส่วนใหญ่จะไม่มีการแสดงออก', 'เมื่อเพาะเลี้ยงเชื้อบน Sheep Blood Agar ให้โคโลนีสีขาว วงกลม ขอบเรียบ นูน ขนาดประมาณ 1-2 ไมครอน บาง strains สามารถพบ-hemolysis', 'เป็น gram positive cocci มีการจัดเรียงเป็นคู่(in pairs) เป็นสาย(in chains) หรือเป็นกลุ่ม(in cluster) ไม่มีการสร้างสปอร์ ไม่เคลื่อนที่', 'Catalase – positiveMannose fermenterMannitol fermenterMaltose fermenterSucrose fermenterNitrate reduction – positivePhosphatase – positiveGelatinase – positiveUrea hydrolysis - positive', 'Blood(Hemoculture)', 'gram stain'),
(39, 'B39_E_coli.jpg', 'Escherichia coli', 'Escherichia coli เป็นแบคทีเรียที่พบได้ในสิ่งแวดล้อม อาหารและลำไส้ของมนุษย์และสัตว์ เชื้อในกลุ่ม E. coli ประกอบไปด้วยหลาย serotype แต่ละ serotype มีการก่อพยาธิสภาพที่แตกต่างกัน โดยพยาธิสภาพหลักๆที่ก่อมักทำให้เกิดอาการท้องร่วง การติดเชื้อที่ระบบปัสสาวะ ระบบทางเดินหายใจและปอดบวมได้', 'เมื่อเพาะเลี้ยงบน Blood Agar พบโคโลขนาดใหญ่ แห้งหรืออาจเป็นมันเยิ้ม กลม สีเทา สามารถพบ-hemolysis ได้เมื่อเพาะเลี้ยงบน MacConkey Agar พบการเกิด Lactose fermenter โคโลนีสีชมพู แบน แห้ง ชื้น ขอบเรียบ', 'เป็น gram negative bacilli ที่มีรูปร่างตรง มีขนาดประมาณ 1,1 – 1.5 x 2.0-6.0 ไมครอน ไม่มีการสร้างสปอร์ มีการเคลื่อนที่โดยใช้ flagella', 'Oxidase – negativeCatalase – positiveIndole – positiveTSI – K/AG or A/AgLIA – negative/positiveNitrate reduction – positiveUrease – negativeCitrate – negative', 'Blood(Hemoculture)', 'gram stain'),
(40, 'B40_K_pneumoniae(PIC1).jpg B40_K_pneumoniae(PIC2).jpg', 'Klebsiella pneumoniae', 'เป็นเชื้อแบคทีเรียแกรมลบที่ก่อให้เกิดการติดเชื้อได้หลากหลายประเภท เช่น ปอดบวม การติดเชื้อในกระแสเลือด การติดเชื้อที่แผลผ่าตัด และไขสันหลังอักเสบ(meningitis) อีกทั้งเชื้อชนิดนี้ยังมีอุบัติการณ์การดื้อยา carbapenems สูง การติดเชื้อนี้ส่วนใหญ่จะเป็นการติดเชื้อจากโรงพยาบาล(nosocomial infection) ผู้ป่วยที่ต้องทำการสอดท่อหายใจ(ventilator) มีโอกาสเสียงสูงที่จะได้รับเชื้อชนิดนี้เข้าไป', 'เมื่อเพาะเลี้ยงบน Blood Agar พบโคโลกลม สีขาวอมเทา มันเยิ้ม มีการยกตัวคล้ายโดม(dome-shaped)เมื่อเพาะเลี้ยงบน MacConkey Agar พบการเกิด Lactose fermenter โคโลนีกลม สีชมพู มันเยิ้ม ขอบเรียบ', 'เป็น gram negative bacilli มีรูปร่างตรง มีแคบซูล ไม่มีการสร้างสปอร์ และไม่มีการเคลื่อนที่', 'Oxidase – negativeCatalase – positiveH2S Production – negativeIndole – negativeMotile – negativeTSI – A/ACitrate – positiveUrease – positiveMR – negativeVP – positive', 'Blood(Hemoculture)', 'gram stain'),
(41, 'B41_P_mirabilis(PIC1).jpg B41_P_mirabilis(PIC2).jpgB41_P_mirabilis(PIC3).jpg B41_P_mirabilis(PIC4).jpg B41_P_mirabilis(PIC5).jpg', 'Proteus mirabilis', 'เป็นเขื้อแบคทีเรียมแกรมลบ ที่สามารถพบ swarming pattern ได้ เชื้อชนิดนี้เป็นสาเหตุหลักที่พบได้บ่อยในการก่อให้เกิดการติดเชื้อในระบบทางเดินปัสสาวะ เช่น กระเพาะปัสสาวะอักเสบ(cystitis) และกรวยไตอักเสบ(pyelonephritis) การติดเชื้อเหล่านี้นำไปสู่การติดเชื้อในกระแสเลือดและนำไปสู่การเกิด urosepsis ตามมา', 'เมื่อเพาะเลี้ยงบน Blood Agar จะมีการพบ swarming colony คล้าย bull-eyesเมื่อเพาะเลี้ยงบน MacConkey Agar พบ Non-lactose fermenter(NLF) โคโลนีสีใส ชนาดใหญ่ นูน ขอบเรียบ อาจได้กลิ่นคาวปลา(fishy odor)', 'เป็น gram negative bacilli ขนาดประมาณ 0.4 – 0.6 x 1.0 – 3.0 ไมครอน มีการเคลื่อนที่โดยอาศัย flagellaหากทำการย้อมแกรมอาจพบ petrichous flagella ล้อมรอบเซลล์ได้ ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'Oxidase – negativeTSI – K/A with H2S productionH2S production – positiveMotile – positiveIndole – positiveMR – positiveVP – negativeCitrate – positiveUrease – positiveSwarming colony บน Blood Agar', '-', 'gram stain'),
(42, 'B42_S_marcences.jpg', 'Serratia marcescens', 'S. marcescens เป็นเชื้อแบคทีเรียแกรมลบ สามารถพบได้ทั่วไปในธรรมชาติ มีการสร้าง pigment ที่อุณหภูมิห้อง เชื้อนี้มีความสัมพันธ์สอดคล้องกับการติดเชื้อในระบบทางเดินปัสสาวะและทางเดินหายใจ เยื่อบุหัวใจอักเสบ กระดูกอักเสบ การติดเชื้อที่บาดแผล การติดเชื้อที่ตาและการติดเชื้อในกระแสเลือด การติดต่อเกิดจากการได้รับ droplet โดยตรง ส่วนมากจะติดต่อจากท่อสายสวนต่างๆ', 'โคโลนีขนาดประมาณ 1-3 ไมครอน สีขาวครีม กลม มันเยิ้ม มีผิวเรียบ ขอบเรียบ บางครั้งสามารถเห็นการสร้าง red pigment บนโคโลนี จึงพบโคโลนีเป็นสีแดงขนาดเล็กๆได้', 'เป็น gram negative bacilli มีรูปร่างตรง ไม่มีการสร้างสปอร์ บาง strains สามารถสร้าง capsule ได้ สามารถเคลื่อนที่ได้ด้วย petrichous flagella', 'Catalase – positiveOxidase – negativeMotile – positiveIndole – negativeH2S production – negativeMR – negativeVP – positiveCitrate - positiveUrease – positiveODC – positiveADH – negative', 'Blood(Hemoculture)', 'gram stain'),
(43, 'B43_P_aeruginosa(PIC1).jpgB43_P_aeruginosa(PIC2).jpgB43_P_aeruginosa(PIC3).jpgB43_P_aeruginosa(PIC4).jpgB43_P_aeruginosa(PIC5).jpg', 'Pseudomonas aeruginosa', 'เป็นเชื้อก่อโรคฉวยโอกาส(opportunistic infection) ทางคลินิกและมีอุบัติการณ์เชื้อดื้อยาสูงมาก เชื้อชนิดนี้มักก่อโรคในผู้ที่ภูมิคุ้มกันบกพร่องได้บ่อยๆ เชื้อชนิดนี้สามารถก่อให้เกิดการติดเชื้อในระบบทางเดินปัสสาวะ ระบบทางเดินหายใจ ผิวหนังอักเสบ กระดูกและข้ออักเสบ การติดเชื้อทั่วระบบ และการติดเชื้อในกระแสเลือดได้', 'เมื่อเพาะเลี้ยงบน Blood Agar พบโคโลนีขนาดใหญ่ แบน พบการเกิด-hemolysis มีการสร้าง pigment จึงสามารถเห็นเป็นสีเขียวน้ำเงินบนโคโลนีได้เมื่อเพาะเลี้ยงบน MacConkey Agar พบ Non-lactose fermenter(NLF) โคโลนีขนาดใหญ่ แบน ขอบเขตไม่ชัดเจน ลักษณะคล้ายเม็ดทราย(granular)', 'เป็น gram negative bacilli สามารถเคลื่อนที่ได้ พบ monotrichous flagella 1-4 อัน อยู่บนหรือท้ายเซลล์', 'Catalase – positiveOxidase – positiveMotile – positiveIndole – negativeTSI – K/N or K/KMR – negativeVP – negativeH2S – negativeGrowth at 42 °C – positiveNitrate reduction - positiveOF glucose – positiveOF lactose – negativeOF maltose – negativeOF mannitol – positivePyocyanin – negativePyoverdin – positive', '-', 'gram stain'),
(44, 'B44_P_putida.jpg', 'Pseudomonas putida', 'เป็นเชื้อจุลชีพที่อยู่ในดินและน้ำ มีบทบาทสำคัญในกระบวนการ bioremediation เชื้อชนิดนี้มีอัตราการก่อโรคที่ต่ำ และยากในการเกิดการติดเชื้อในกระแสเลือด แต่ในปัจจุบันพบว่าเป็นเชื้อที่มีอัตราการดื้อยากลุ่ม carbapenem สูง อีกทั้งทำให้ยากลำบากในการรักษาหากติดเชื้อชนิดนี้ การเกิดพยาธิสภาพของเชื้อกลุ่มนี้ทำให้เกิด เช่น การติดเชื้อที่ปอด เกิดปอดบวม ท่อน้ำดีอักเสบ(cholangitis) และการติดเชื้อในกระแสเลือด', 'เมื่อเพาะเลี้ยงบน MacConkey Agar พบ Non-lactose fermenter(NLF) โคโลนีขนาดใหญ่ แบน ขอบเขตไม่ชัดเจน', 'เป็น gram negative bacilli พบ multitrichous flagella สามารถเคลื่อนที่ได้ ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'Catalase – positiveOxidase – positiveTSI – K/N or K/KNitrate reduction – negativeOF glucose – positiveOF lactose – negativeOF mannitol – negativeOF maltose – negativeUrease – negativePyocyanin – positivePyoverdin – positive', 'Blood(Hemoculture)', 'gram stain'),
(45, 'B45_A_baumanii (PIC1).jpg B45_A_baumanii (PIC2).jpg', 'Acinetobacter baumanii', 'เป็นเชื้อแบคทีเรียก่อโรคฉวยโอกาส โดยพบหลักๆได้จากการติดเชื้อจากโรงพยาบาล เชื้อกลุ่มนี้มีอุบัติการณ์ดื้อยาตั้งแต่ 3 ชนิดขึ้นไป(multidrug resistance) ส่วนมากเชื้อกลุ่มนี้สอดคล้องกับการให้เกิด ventilator associated pneumonia(VAP) การติดเชื้อในกระแสเลือด การติดเชื้อที่แผลและแผลผ่าตัด และไขสันหลังอักเสบ(meningitis)', 'โคโลนีสีขาวขุ่น มันวาว มีเมือก(mucoid) Non-lactose fermenter(NLF) ไม่มีเม็ดสีของโคโลนี ผิวเรียบ ขอบเรียบ', 'เป็น gram negative coccobacilli สามารถพบเห็นอยู่เป็นเซลล์เดี่ยว(single) เป็นคู่(in pairs) หรือเป็นกลุ่ม(in cluster) ได้ ไม่มีการสร้างสปอร์ ไม่มีแคปซูล ไม่มีการเคลื่อนที่', 'Catalase – positiveOxidase – negativeMotile – negativeUrease – variableCitrate – positiveOF glucose – positiveNitrate reduction – negativeArginine hydrolysis – positiveGrowth at 42 °C – positive', 'Blood(Hemoculture)', 'gram stain'),
(46, 'B46_Salmonella_typhi(PIC1).jpg B46_Salmonella_typhi(PIC2).jpg', 'Salmonella typhi', 'เป็นแบคทีเรียแกรมลบที่ก่อให้เกิดโรคไข้ไทฟอยด์(typhoid fever) โดยการติดต่อเกิดจากการรับประทานอาหารหรือน้ำที่ปนเปื้อนเชื้อมา โดยส่วนมากการเกิดพยาธิสภาพของแบคทีเรียชนิดนี้มักจะก่อในเด็กและผู้ใหญ่วัยต้นๆ โดยเฉพาะอย่างยิ่งในที่ที่มีสุขาภิบาลไม่ดี', 'เมื่อเพาะเลี้ยงบน Blood Agar ให้โคโลนีสีขาวจาง ขอบเรียบ ผิวเรียบ ไม่มีการเกิด hemolysisเมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล non-lactose fermenter(NLF) โคโลนีสีใสหรือสีจางๆ มีการผลิต H2S จึงสามารถพบได้ โคโลนีขอบเรียบ ผิวเรียบ มีความมันวาว', 'เป็น gram negative bacilli ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'Catalase – positiveOxidase – negativeTSI – K/A with H2S productionMotile – positiveIndole – negativeH2S production – positiveLIA – negative/positiveNitrate reduction – positiveMR – positiveVP – negativeODC – positiveCitrate – negativeUrease – negative', '-', 'gram stain'),
(47, 'B47_Salmonella_parathyphiA(PIC1).jpgB47_Salmonella_parathyphiA(PIC2).jpg B47_Salmonella_parathyphiA(PIC3).jpg', 'Salmonella paratyphi A', 'เป็นเชื้อแบคทีเรียกลุ่มแกรมลบ ที่ติดต่อจากรับประทานอาหารหรือน้ำที่มีการปนเปื้อนผ่านทางปาก ซึ่งก่อให้เป็นพาหะแบบเรื้อรังที่ไม่แสดงลักษณะอาการ แต่ในประเทศที่กำลังพัฒนาเชื้อนี้มีบทบาทสำคัญเพราะทำให้เกิด enteric fever ซึ่งมีอัตราการเสียชีวิตที่สูง อีกทั้งยังพบว่ามีการดื้อยาปฏิชีวนะอีกด้วย', 'เมื่อเพาะเลี้ยงบน Blood Agar ให้โคโลนีสีขาวจาง ขอบเรียบ ผิวเรียบ ไม่มีการเกิด hemolysisเมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล non-lactose fermenter(NLF) โคโลนีสีใสหรือสีจางๆ ขอบเรียบ ผิวเรียบ มีความมันวาว', 'เป็น gram negative bacilli มี petrichious flagella จึงสามารถเคลื่อนที่ได้ ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'Catalase – positiveOxidase – negativeTSI – K/A with Gas productionMotile – positiveIndole – negativeH2S production – negativeLIA – negative/negativeNitrate reduction – positiveMR – positiveVP – negativeODC – positiveCitrate – negativeUrease - negative', '-', 'gram stain'),
(48, 'B48_S_choleraesuis(PIC1).jpg B48_S_choleraesuis(PIC2).jpg', 'Salmonella choleraesuis', 'เป็นแบคทีเรียกลุ่มแกรมลบ อยู่ในกลุ่ม non-typhoidal species ที่จัดว่าเป็นเชื้อก่อโรค โดยพบได้ทุกหนทุกแห่งทั่วโลก เชื้อนี้ก่อโรค salmonellosis ทำให้เกิดอาการท้องร่วงเฉียบพลัน ในกรณีที่ผู้ป่วยที่ติดเชื้อเป็นผู้ที่มีภูมิคุ้มกันบกพร่องอาจยิ่งส่งเสริมให้เกิดการติดเชื้อในกระแสเลือดได้', 'เมื่อเพาะเลี้ยงบน Blood Agar ให้โคโลนีสีขาวจาง ขอบเรียบ ผิวเรียบ ไม่มีการเกิด hemolysisเมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล non-lactose fermenter(NLF) โคโลนีสีใสหรือสีจางๆ มีการผลิต H2S จึงสามารถพบได้ โคโลนีขอบเรียบ ผิวเรียบ มีความมันวาว', 'เป็น gram negative bacilli ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'Catalase – positiveOxidase – negativeTSI – K/A with Gas production , H2S productionMotile – positiveIndole – negativeH2S production – positiveLIA – negative/positiveNitrate reduction – positiveMR – positiveVP – negativeODC – positiveCitrate – positive', '-', 'gram stain'),
(49, 'B49_Shigella_dysenteriae(PIC1).jpgB49_Shigella_dysenteriae(PIC2).jpg', 'Shigella dysenteriae', 'เป็นเชื้อแบคทีเรียแกรมลบ จัดเป็น shigella subgroup A โดยจะสามารถแบ่งออกได้อีก 12 serotype การรับเชื้อนี้เกิดจากการรับประทานสิ่งปนเปื้อนอุจจาระของผู้ป่วยหรือผู้เป็นพาหะ อีกทั้งเชื้อชนิดนี้มีความสามารถในการสร้าง enterotoxin จึงก่อให้เกิดภาวะรุนแรง และพบว่าทำให้เกิดอัตราป่วยเสียชีวิตสูงขึ้นถึงร้อยละ 20', 'เมื่อเพาะเลี้ยงบน MacConkey Agar พบว่า non-lactose fermenter(NLF) โคโลนีใส ขนาดประมาณ 2 มิลลิเมตร ลักษณะกลม ขอบเรียบ ผิวเรียบมัน ทึบแสง สามารถเห็นเป็น mucoid colony ได้ในบางครั้ง', 'เป็น gram negative bacilli ที่ใม่มีการเคลื่อนที่ ไม่มีการสร้างสปอร์และ ไม่มีแคปซูล', 'Catalase – positiveOxidase – negativeTSI – K/AMotile – negativeIndole – negativeH2S production – negativeLIA – negative/negativeNitrate reduction – positiveMR – positiveVP – negativeODC – negativeCitrate – negativeUrease - negative', '-', 'gram stain'),
(50, 'B50_Shigella_flexneri(PIC1).jpgB50_Shigella_flexneri(PIC2).jpg', 'Shigella flexneri', 'เป็นแบคทีเรียแกรมลบที่ก่อให้เกิดโรคบิดจากแบคทีเรีย(bacterial dysenteries) และ shigellosis เชื้อในกลุ่มนี้อยู่ใน serogroup B ประกอบไปด้วย 6 serotypes โดยหลักๆจะพบในประเทศที่กำลังพัฒนา เชื้อนี้จะทำการบุกรุกไปยัง epithelial cell ที่ลำไส้ใหญ่ก่อให้เกิดการเกิดอักเสบ และเกิดการทำลาย epithelial cell', 'โคโลนีขนาดเล็ก ประมาณ 2-3 มิลลิเมตร กลม นูน ผิวเรียบ โปร่งใส สีเทาหรือไม่มีสี Non-lactose fermenter(NLF) บน MacConkey Agar', 'เป็น gram negative bacilli ที่ใม่มีการเคลื่อนที่ ไม่มีการสร้างสปอร์และ ไม่มีแคปซูล', 'Catalase – positiveOxidase – negativeTSI – K/AMotile – negativeIndole – variableH2S production – negativeLIA – negative/negativeNitrate reduction – positiveMR – positiveVP – negativeODC – negativeCitrate – negativeUrease - negative', '-', 'gram stain'),
(51, 'B51_S_sonnei(PIC1).jpgB51_S_sonnei(PIC2).jpg', 'Shigella sonnei', 'เป็นแบคทีเรียแกรมลบที่ก่อให้เกิดโรคบิดจากแบคทีเรีย(bacterial dysenteries) และ shigellosis โดยหลักๆจะพบในประเทศที่กำลังพัฒนา เชื้อนี้จะทำการบุกรุกไปยัง epithelial cell ที่ลำไส้ใหญ่ก่อให้เกิดการเกิดอักเสบ และเกิดการทำลาย epithelial cell', 'โคโลนีมีขนาดประมาณ 2 มิลลิเมตร ลักษณะกลม ขอบเรียบ ผิวเรียบมัน ไม่มีสี ไม่ทึบแสง เจริญได้ดีบนอาหารเลี้ยงเชื้อ MacConkey agar, SS agar, DHL agar บางครั้งโคโลนีที่พบอาจเป็น mucoid colony', 'เป็น gram negative bacilli ที่ใม่มีการเคลื่อนที่ ไม่มีการสร้างสปอร์และ ไม่มีแคปซูล', 'Catalase – positiveOxidase – negativeTSI – K/AMotile – negativeIndole – negativeH2S production – negativeLIA – negative/negativeNitrate reduction – positiveMR – positiveVP – negativeODC – positiveCitrate – negativeUrease - negative', '-', 'gram stain'),
(52, 'B52_C_freundii(PIC1).jpgB52_C_freundii(PIC2).jpg', 'Citrobacter freundii', 'เป็นเชื้อแบคทีเรียแกรมลบในวงศ์พบได้ในน้ำ ดิน อาหารและลำไส้ในมนุษย์และสัตว์ต่างๆ เชื้อชนิดนี้มีอัตราการก่อโรคที่ต่ำ โดยโรคที่จะเกิดขึ้นได้หากมีการติดเชื้อประกอบไปด้วย การติดเชื้อที่ระบบปัสสาวะ ตับ ท่อน้ำดี ลำไส้เล็ก กระดูก ทางเดินหายใจ เยื่อบุหัวใจ แผลและเนื้อเยื่ออ่อน ไขสันหลังและการติดเชื้อในกระแสเลือด', 'เมื่อเพาะเลี้ยงบน Nutrient Agar โคโลนีขนาดประมาณ 2-4 มิลลิเมตร สีเทา ขอบเรียบ ผิวเรียบ ชื้น อาจจะเห็นเป็นโคโลนีมันเยิ้ม หรือมันวาวก็ได้เมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล Lactose fermenter(LF) โคโลนีสีชมพู มันวาว ขอบเรียบ นูน แต่บางครั้งสามารถให้ผลโคโลนีเป็น non-lactose fermenter(NLF) ได้', 'เป็น gram negative bacilli ขนาด 1.0 x 2.0-6.0 ไมครอน อาจอยู่เป็นเซลล์เดี่ยวหรือเป็นคู่ สามารถเคลื่อนที่ได้โดย petrichous flagella ไม่มีการสร้างสปอร์และแคปซูล', 'Catalase – positiveOxidase – negativeTSI – K/A with H2S production , gas productionMotile – negativeIndole – negativeH2S production – positiveLIA – positive/negativeNitrate reduction – positiveMR – positiveVP – negativeODC – negativeCitrate – positiveUrease - negative', '-', 'gram stain'),
(53, 'B53_Proteus_vulgaris(PIC1).jpgB53_Proteus_vulgaris(PIC2).jpg', 'Proteus vulgaris', 'เป็นเขื้อแบคทีเรียมแกรมลบ ที่สามารถพบ swarming pattern ได้ เชื้อชนิดนี้เป็นสาเหตุหลักที่พบได้บ่อยในการก่อให้เกิดการติดเชื้อที่ได้รับมาจากในชุมชน(community-acquired infection) และการติดเชื้อในระบบทางเดินปัสสาวะ เช่น กระเพาะปัสสาวะอักเสบ(cystitis) และกรวยไตอักเสบ(pyelonephritis) การติดเชื้อเหล่านี้นำไปสู่การติดเชื้อในกระแสเลือดและนำไปสู่การเกิด urosepsis ตามมา อีกทั้งสามารถทำให้เกิดการติดเชื้อที่ระบบทางเดินหายใจในบางครั้ง', 'เมื่อเพาะเลี้ยงบน Blood Agar จะมีการพบ swarming colony คล้าย bull-eyes โคโลนีใส ไม่มีสี ขนาดประมาณ 2-3 มิลลิเมตร ผิววาวเมื่อเพาะเลี้ยงบน MacConkey Agar พบ Non-lactose fermenter(NLF) โคโลนีสีใส ชนาดใหญ่ นูน ขอบเรียบผิวเรียบ', 'เป็น gram negative bacilli ขนาดประมาณ 0.4 – 0.6 x 1.0 – 3.0 ไมครอน มีการจัดเรียงตัวเป็นเซลล์เดี่ยว เป็นคู่(in pairs) หรือเป็นสายสั้นๆ(short chains) มีการเคลื่อนที่โดยอาศัย flagellaหากทำการย้อมแกรมอาจพบ petrichous flagella ล้อมรอบเซลล์ได้ ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'Oxidase – negativeTSI – K/A with H2S productionH2S production – positiveMotile – positiveIndole – negativeMR – positiveVP – negativeCitrate – positiveUrease – positiveODC - positiveSwarming colony บน Blood Agar', '-', 'gram stain'),
(54, 'B54_P_rettgeri(PIC1).jpgB54_P_rettgeri(PIC2).jpg', 'Providencia rettgeri', 'เป็นเชื้อแบคทีเรียแกรมลบที่อยู่ในวงศ์โดยเชื้อในกลุ่มนี้ประกอบไปด้วย, , , , และ และเป็นเชื้อแบคทีเรียที่พบว่าเป็นสาเหตุทำให้เกิดการติดเชื้อทางท่อสายสวนปัสสาวะมากที่สุด โดยเฉพาะอย่างยิ่งในผู้ป่วยสูงอายุที่ต้องใส่ท่อสายสวนเป็นเวลานาน', 'เมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล Non-lactose fermenter(NLF) โคโลนีสีใส ผิวเรียบ ขอบเรียบ มันวาว', 'เป็น gram negative bacilli ไม่มีการสร้างสปอร์และแคปซูล', 'Oxidase – negativeTSI – K/A with gas productionHS production – negativeMotile – positiveIndole – positiveMR – positiveVP – negativeCitrate – positiveUrease – positiveODC – negativeADH - negative', '-', 'gram stain'),
(55, 'B55_M_morganii(PIC1).jpgB55_M_morganii(PIC2).jpg', 'Morganella morganii', 'เป็นเชื้อแบคทีเรียแกรมลบที่โดยปกติพบในสิ่งแวดล้อมและเป็นเชื้อประจำถิ่น(normal flora) ในลำไส้ของมนุษย์ สัตว์เลี้ยงลูกด้วยนม เชื้อชนิดนี้พบได้ไม่บ่อยนักในการก่อให้เกิดการติดเชื้อที่ได้รับจากชุมชน แต่ส่วนมากจะได้รับเชื้อจากหลังผ่าตัดและการติดเชื้อจากโรงพยาบาลเป็นหลัก โดยก่อพยาธิสภาพทำให้เกิดการติดเชื้อในระบบทางเดินปัสสาวะและการติดเชื้อในกระแสเลือด', 'เมื่อเพาะเลี้ยงบน MacConkey Agar ให้ non-lactose fermenter(NLF) โคโลนีใส กลม ขอบเรียบ ผิวเรียบ', 'เป็น gram negative bacilli มีรูปร่างตรง ไม่มีการสร้างสปอร์และแคปซูล', 'Oxidase – negativeTSI – K/A with H2S productionH2S production – variableMotile – positiveIndole – positiveMR – positiveVP – negativeCitrate – negativeUrease – positiveOrnithine decarboxylase(ODC) – negativeArginine dihydrolase(ADH) - negative', '-', 'gram stain'),
(56, 'B56_P_shigelloides(PIC1).jpgB56_P_shigelloides(PIC2).jpg', 'Plesiomonas shigelloides', 'เป็นเชื้อแบคทีเรียกลุ่มแกรมลบ ที่พบได้ในดินและน้ำ เป็นเชื้อที่มีการระบาดและก่อให้เกิดอาการท้องเสีย ท้องร่วมในมนุษย์ โดยเฉพาะอย่างยิ่งการรับประทานอาหารทะเลที่ไม่สุก เชื้อชนิดนี้สามารถเกิดปฏิกิริยาข้ามกลุ่มกับ shigella sonnei ได้อีกด้วย', 'เมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล Non-lactose fermenter(NLF) โคโลนีมีสีอมเทา มันเยิ้ม ขอบเรียบ ผิวเรียบ นูนเมื่อเพาะเลี้ยงบน TCBS agar พบว่าโคโลนีไม่มีการเจริญเติบโต(No Growth)', 'เป็น gram negative bacilli มีรูปร่างตรง ปลายมน ขนาดเซลล์ประมาณ 0.8 – 1.0 ไมครอน', 'Oxidase – positiveTSI – K/AH2S production – negativeMotile – positiveIndole – positiveMR – positiveVP – negativeCitrate – negativeUrease – negativeInositol - positiveOrnithine decarboxylase(ODC) – positiveArginine dihydrolase(ADH) - positive', '-', 'gram stain'),
(57, 'B57_P_stutzeri(PIC1).jpgB57_P_stutzeri(PIC2).jpg', 'Pseudomonas stutzeri', 'เป็นแบคทีเรียกลุ่มแกรมลบที่ไม่มีการหมักน้ำตาล สามารถพบได้ในดิน น้ำ โดยปกติเชื้อนี้จะก่อโรคในคนปกติได้ยาก การก่อโรคส่วนใหญ่จึงเกิดขึ้นในผู้ที่ภูมิคุ้มกันบกพร่องเป็นหลัก', 'สามารถดูและจำแนกโดยการดูจากรูปร่างที่ไม่ปกติ และความทนทาน(consistency)เมื่อเพาะเลี้ยง fresh colony จะพบลักษณะโคโลนีสีน้ำตาลอมแดง ยึดเกาะแน่นบน agar โคโลนีหยิกหรือจิก(wrinkle หรือ pitting colony) มีพื้นผิวที่แข็ง(hard) ผิวแห้ง มีขอบนูนคล้ายสันเขา(ridge shaped) และมีการแตกแขนงที่ขอบโคโลนีเมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล non-lactose fermenter(NLF)', 'เป็น gram negative bacilli สามารถเคลื่อนที่ได้โดยใช้ monotrichous flagella ไม่มีการสร้างสปอร์และแคปซูล', 'Catalase – positiveOxidase – positiveMotile – positiveIndole – negativeTSI – K/N or K/KMR – negativeVP – negativeH2S – negativeGrowth at 42 °C – positiveNitrate reduction - positiveOF glucose – positiveOF lactose – negativeOF maltose – negativeOF sucrose – negativeOF mannitol – positivePyocyanin – negativePyoverdin – positive', '-', 'gram stain'),
(58, 'B58_B_pseudomallei(PIC1).jpgB58_B_pseudomallei(PIC2).jpg', 'Burkholderia pseudomallei', 'เป็นแบคทีเรียแกรมลบ พบได้ทั่วไปในดินและน้ำในแหล่งที่มีการระบาด พบได้บ่อยในภาคอีสาน เชื้อนี้เข้าสู่ร่างกายคนโดยผ่านทางผิวหนังโดยจำไม่เป็นต้องมีรอยขีดข่วน ทำให้สามารถก่อเกิดพยาธิสภาพได้ เช่น sepsis ปอดติดเชื้อเฉียบพลัน(acute pneumonia) การติดเชื้อในระบบทางเดินปัสสาวะ ติดเชื้อในข้อและฝี', 'เมื่อเพาะเลี้ยงบน blood agar มากกว่า 24 ชั่วโมง จะปรากฏโคโลมีสีครีม มันเงา อาจจะแห้งและย่นอย่างไรก็ตามลักษณะที่มองเห็นอาจมีได้หลายลักษณะ และอาจถูกมองข้ามว่าเป็นเชื้อปนเปื้อนเมื่อเพาะเลี้ยงบน MacConkey agar จะมีลักษณะขาวขุ่น มันเงา(non-lactose fermenter)และจะเป็นสีชมพู เหี่ยวย่นภายหลัง 48 ชั่วโมง', 'เป็น gram negative bacilli ที่มีลักษณะจำเพาะคือพบเซลล์ที่มีการติดสีเข้มที่ส่วนหัวและท้าย ปรากฏลักษณะคล้ายเข็มกลัด(safety-pin appearance) มี flagella สามารถเคลื่อนที่ได้ ไม่มีการสร้างสปอร์และแคปซูล', 'Catalase – positiveOxidase – positiveMotile – positiveIndole – negativeTSI – K/N or K/KMR – negativeVP – negativeH2S – negativeGrowth at 42 °C – positiveNitrate reduction – positiveArginine dihydrolase(ADH) - positiveOF glucose – positiveOF lactose – positiveOF maltose – negativeOF sucrose – negativeOF mannitol - negative', '-', 'gram stain'),
(59, 'B59_A_iwoffi(PIC1).jpgB59_A_iwoffi(PIC2).jpg', 'Acinetobacter iwoffi', 'เป็นเชื้อแบคทีเรียที่สามารถพบได้ในดิน น้ำ อาหารแช่แข็ง และสิ่งแวดล้อมในโรงพยาบาล เชื้อนี้มีการ colonize อยู่ที่ผิวหนังและเยื่อเมือกบุผิว โดยส่วนใหญ่เชื้อนี้เป็นเชื้อก่อโรคในโรงพยาบาล(nosocomial infection) ก่อให้เกิดการติดเชื้อและมีอาการ คือ ติดเชื้อในกระแสเลือด ติดเชื้อที่ระบบทางเดินปัสสาวะ ตา ผิวหนัง บาดแผล เยื่อบุหัวใจอักเสบและปอดบวม', 'โคโลนีไม่มีสี กลม ผิวเรียบ ขอบเรียบ มีความมันเยิ้ม(opaque) มีขนาดโคโลนีประมาณ 1.0 – 1.5 มิลลิเมตร', 'เป็น gram negative coccbacilli มีการจัดเรียงเป็นเซลล์เดี่ยว(single) เป็นคู่(in pairs) หรืออาจจะเป็นสาย(in chains) ไม่มีการเคลื่อนที่ ไม่มีการสร้างสปอร์และแคปซูล', 'Catalase – positiveOxidase – negativeMotile – negativeUrease – variableCitrate – negativeOF glucose – negativeNitrate reduction – negativeArginine hydrolysis – positiveGrowth at 42 °C – negative', '-', 'gram stain'),
(60, 'B60_Achromobacter_xylosidans(PIC1).jpgB60_Achromobacter_xylosidans(PIC2).jpg', 'Achromobacter xylosidans', 'เป็นแบคทีเรียแกรมลบ พบได้ทั่วไปในธรรมชาติ เชื้อชนิดนี้จัดว่าเป็นเชื้อก่อโรคฉวยโอกาส(opportunistic infection) สามารถก่อให้เกิดการติดเชื้อในกระแสเลือด โดยเฉพาะอย่างยิ่งในผู้ป่วยที่เป็น cystic fribrosis และ cellulitis ได้', 'เมื่อเพาะเลี้ยงบน Nutrient agar พบว่าโคโลนีเป็นสีขาวอมเทา มีลักษณะกลม มันเยิ้ม(opaque) ผิวเรียบ ขอบเรียบ บางครั้งอาจมีผิวขรุขระได้', 'เป็น gram negative bacilli มีรูปร่างตรง ปลายมน สามารถเคลื่อนที่ได้โดยใช้ petrichous flagella ไม่มีการสร้างสปอร์และแคปซูล', 'Catalase – positiveOxidase – positiveMotile – positiveIndole – negativeTSI – K/N or K/KMR – negativeVP – negativeH2S – negativeNitrate reduction – positiveArginine dihydrolase(ADH) - positiveOF glucose – positiveOF lactose – negativeOF maltose – negativeOF sucrose – negativeOF mannitol - negativeCitrate – positiveUrease – negative', '-', 'gram stain'),
(61, 'B61_V_cholerae_O1(PIC1).jpg', 'Vibrio cholerae', 'เป็นแบคทีเรียแกรมลบ สามารถพบได้ในน้ำจืด ปนเปื้อนในอาหารทะเล ได้แก่ กุ้ง หอย ปู ปลา ปลาหมึกและในสิ่งมีชีวิตในน้ำ เชื้อชนิดนี้ก่อให้เกิดอาการท้องร่วงโดยมีหลายระดับความรุนแรง(ตั้งแต่ cholera gravis , pandemic cholera จนถึงอาการท้องเสียเล็กน้อย) เนื่องจากมีการสร้าง toxin แล้วไปกระตุ้น regulatory protein จนทำให้เกิดพยาธิสภาพที่ผิดปกติตามมา', 'เมื่อเพาะเลี้ยงบน TCBS agar ให้ผล sucrose fermenter(SF) โคโลนีมีสีเหลือง ขนาด 2-4 มิลลิเมตร แบน ผิวเรียบ ขอบเรียบ มันเยิ้ม(opaque)', 'เป็น gram negative bacilli มีรูปร่างตรงหรืออาจโค้งเล็กน้อย หรือคล้ายเครื่องหมายคอมม่า(comma-shaped) ไม่มี lateral flagella บน solid media', 'Catalase – positiveOxidase – positiveIndole – positiveMR – positiveVoges-Proskauer – positiveH2S production – negative0% NaCl – positive1% NaCl – positive3% NaCl – positive6% NaCl – positive8% NaCl – negative10% NaCl – negative', 'stool', 'gram stain');

-- --------------------------------------------------------

--
-- Table structure for table `dd_anesthesia`
--

CREATE TABLE `dd_anesthesia` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dd_anesthesia`
--

INSERT INTO `dd_anesthesia` (`id`, `name`) VALUES
(1, 'Local anesthesia'),
(2, 'Regional anesthesia'),
(3, 'General anesthesia');

-- --------------------------------------------------------

--
-- Table structure for table `dd_anesthesis`
--

CREATE TABLE `dd_anesthesis` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dd_gender`
--

CREATE TABLE `dd_gender` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dd_gender`
--

INSERT INTO `dd_gender` (`id`, `name`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `dd_indication`
--

CREATE TABLE `dd_indication` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dd_indication`
--

INSERT INTO `dd_indication` (`id`, `name`) VALUES
(1, 'indication01');

-- --------------------------------------------------------

--
-- Table structure for table `dd_national`
--

CREATE TABLE `dd_national` (
  `id` int(11) NOT NULL,
  `ct_code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `namethai` varchar(100) NOT NULL,
  `code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dd_national`
--

INSERT INTO `dd_national` (`id`, `ct_code`, `name`, `namethai`, `code`) VALUES
(1, 'THA', 'Thailand', 'ไทย', 'TH'),
(2, 'ABW', 'Aruba', 'อารูบา', 'AW'),
(3, 'AFG', 'Afghanistan', 'อัฟกานิสถาน', 'AF'),
(4, 'AGO', 'Angola', 'แองโกลา', 'AO'),
(5, 'AIA', 'Anguilla', 'แองกวิลลา', 'AI'),
(6, 'ALA', 'Åland', 'โอลันด์', 'AX'),
(7, 'ALB', 'Albania', 'แอลเบเนีย', 'AL'),
(8, 'AND', 'Andorra', 'อันดอร์รา', 'AD'),
(9, 'ARE', 'United Arab Emirates', 'สหรัฐอาหรับเอมิเรตส์\n', 'AE'),
(10, 'ARG', 'Argentina', 'อาร์เจนตินา', 'AR'),
(11, 'ARM', 'Armenia', 'อาร์เมเนีย', 'AM'),
(12, 'ASM', 'American Samoa', 'อเมริกันซามัว', 'AS'),
(13, 'ATA', 'Antarctica', 'ทวิปแอนตาร์กติกา', 'AQ'),
(14, 'ATF', 'French Southern Territories', 'ดินแดนทางตอนใต้ของฝรั่งเศส', 'TF'),
(15, 'ATG', 'Antigua and Barbuda', 'แอนติกาและบาร์บูดา', 'AG'),
(16, 'AUS', 'Australia', 'ออสเตรเลีย', 'AU'),
(17, 'AUT', 'Austria', 'ออสเตรีย', 'AT'),
(18, 'AZE', 'Azerbaijan', 'อาเซอร์ไบจาน', 'AZ'),
(19, 'BDI', 'Burundi', 'บุรุนดี', 'BI'),
(20, 'BEL', 'Belgium', 'เบลเยียม', 'BE'),
(21, 'BEN', 'Benin', 'เบนิน', 'BJ'),
(22, 'BES', 'Bonaire', 'โบแนร์', 'BQ'),
(23, 'BFA', 'Burkina Faso', 'บูร์กินาฟาโซ', 'BF'),
(24, 'BGD', 'Bangladesh', 'บังคลาเทศ', 'BD'),
(25, 'BGR', 'Bulgaria', 'บัลแกเรีย', 'BG'),
(26, 'BHR', 'Bahrain', 'บาห์เรน', 'BH'),
(27, 'BHS', 'Bahamas', 'บาฮามาส', 'BS'),
(28, 'BIH', 'Bosnia and Herzegovina', 'บอสเนียและเฮอร์เซโก\n', 'BA'),
(29, 'BLM', 'Saint Barthélemy', 'Saint Barthélemy', 'BL'),
(30, 'BLR', 'Belarus', 'เบลารุส', 'BY'),
(31, 'BLZ', 'Belize', 'เบลีซ', 'BZ'),
(32, 'BMU', 'Bermuda', 'เบอร์มิวดา', 'BM'),
(33, 'BOL', 'Bolivia', 'โบลิเวีย', 'BO'),
(34, 'BRA', 'Brazil', 'บราซิล', 'BR'),
(35, 'BRB', 'Barbados', 'บาร์เบโดส', 'BB'),
(36, 'BRN', 'Brunei', 'บรูไน', 'BN'),
(37, 'BTN', 'Bhutan', 'ภูฏาน', 'BT'),
(38, 'BVT', 'Bouvet Island', 'เกาะบูเว็ต', 'BV'),
(39, 'BWA', 'Botswana', 'บอตสวานา', 'BW'),
(40, 'CAF', 'Central African Republic', 'สาธารณรัฐแอฟริกากลาง', 'CF'),
(41, 'CAN', 'Canada', 'แคนาดา', 'CA'),
(42, 'CCK', 'Cocos [Keeling] Islands', 'เกาะโคโคส [คีลิง]', 'CC'),
(43, 'CHE', 'Switzerland', 'สวิสเซอร์แลนด์', 'CH'),
(44, 'CHL', 'Chile', 'ชิลี', 'CL'),
(45, 'CHN', 'China', 'จีน', 'CN'),
(46, 'CIV', 'Ivory Coast', 'ไอวอรี่โคสต์', 'CI'),
(47, 'CMR', 'Cameroon', 'แคเมอรูน', 'CM'),
(48, 'COD', 'Democratic Republic of the Congo', 'สาธารณรัฐประชาธิปไตยคองโก', 'CD'),
(49, 'COG', 'Republic of the Congo', 'สาธารณรัฐคองโก', 'CG'),
(50, 'COK', 'Cook Islands', 'หมู่เกาะคุก', 'CK'),
(51, 'COL', 'Colombia', 'โคลอมเบีย', 'CO'),
(52, 'COM', 'Comoros', 'คอโมโรส', 'KM'),
(53, 'CPV', 'Cape Verde', 'เคปเวิร์ด', 'CV'),
(54, 'CRI', 'Costa Rica', 'คอสตาริกา\n', 'CR'),
(55, 'CUB', 'Cuba', 'คิวบา', 'CU'),
(56, 'CUW', 'Curacao', 'คูราเซา\n', 'CW'),
(57, 'CXR', 'Christmas Island', 'เกาะคริสต์มาส', 'CX'),
(58, 'CYM', 'Cayman Islands', 'หมู่เกาะเคย์เเมน', 'KY'),
(59, 'CYP', 'Cyprus', 'ไซปรัส', 'CY'),
(60, 'CZE', 'Czech Republic', 'สาธารณรัฐเช็ก', 'CZ'),
(61, 'DEU', 'Germany', 'เยอรมันนี', 'DE'),
(62, 'DJI', 'Djibouti', 'จิบูตี', 'DJ'),
(63, 'DMA', 'Dominica', 'โดมินิกา', 'DM'),
(64, 'DNK', 'Denmark', 'เดนมาร์ก', 'DK'),
(65, 'DOM', 'Dominican Republic', 'สาธารณรัฐโดมินิกัน\n', 'DO'),
(66, 'DZA', 'Algeria', 'แอลจีเรีย', 'DZ'),
(67, 'ECU', 'Ecuador', 'เอกวาดอร์', 'EC'),
(68, 'EGY', 'Egypt', 'อียิปต์', 'EG'),
(69, 'ERI', 'Eritrea', 'เอริเทรี', 'ER'),
(70, 'ESH', 'Western Sahara', 'ซาฮาร่าตะวันตก', 'EH'),
(71, 'ESP', 'Spain', 'สเปน', 'ES'),
(72, 'EST', 'Estonia', 'เอสโตเนีย', 'EE'),
(73, 'ETH', 'Ethiopia', 'สาธารณรัฐเอธิโอเปีย', 'ET'),
(74, 'FIN', 'Finland', 'ฟินแลนด์', 'FI'),
(75, 'FJI', 'Fiji', 'ฟิจิ', 'FJ'),
(76, 'FLK', 'Falkland Islands', 'หมู่เกาะฟอล์คแลนด์', 'FK'),
(77, 'FRA', 'France', 'ฝรั่งเศส', 'FR'),
(78, 'FRO', 'Faroe Islands', 'หมู่เกาะแฟโร', 'FO'),
(79, 'FSM', 'Micronesia', 'ไมโครนีเซีย', 'FM'),
(80, 'GAB', 'Gabon', 'กาบอง', 'GA'),
(81, 'GBR', 'United Kingdom', 'อังกฤษ (สหราชอาณาจักร)', 'GB'),
(82, 'GEO', 'Georgia', 'จอร์เจีย', 'GE'),
(83, 'GGY', 'Guernsey', 'เกิร์นซีย์', 'GG'),
(84, 'GHA', 'Ghana', 'เกิร์นซีย์', 'GH'),
(85, 'GIB', 'Gibraltar', 'ยิบรอลตา', 'GI'),
(86, 'GIN', 'Guinea', 'กินี', 'GN'),
(87, 'GLP', 'Guadeloupe', 'กัวเดลุฟ', 'GP'),
(88, 'GMB', 'Gambia', 'แกมเบีย', 'GM'),
(89, 'GNB', 'Guinea-Bissau', 'กินีบิสเซา', 'GW'),
(90, 'GNQ', 'Equatorial Guinea', 'อิเควทอเรียลกินี', 'GQ'),
(91, 'GRC', 'Greece', 'กรีซ', 'GR'),
(92, 'GRD', 'Grenada', 'เกรเนดา ', 'GD'),
(93, 'GRL', 'Greenland', 'กรีนแลนด์', 'GL'),
(94, 'GTM', 'Guatemala', 'กัวเตมาลา', 'GT'),
(95, 'GUF', 'French Guiana', 'เฟรนช์เกียนา', 'GF'),
(96, 'GUM', 'Guam', 'เกาะกวม', 'GU'),
(97, 'GUY', 'Guyana', 'กายอานา', 'GY'),
(98, 'HKG', 'Hong Kong', 'ฮ่องกง', 'HK'),
(99, 'HMD', 'Heard Island and McDonald Islands', 'เกาะเฮิร์ดและหมู่เกาะแมคโดนัลด์', 'HM'),
(100, 'HND', 'Honduras', 'ฮอนดูรัส', 'HN'),
(101, 'HRV', 'Croatia', 'โครเอเชีย', 'HR'),
(102, 'HTI', 'Haiti', 'เฮติ', 'HT'),
(103, 'HUN', 'Hungary', 'ฮังการี', 'HU'),
(104, 'IDN', 'Indonesia', 'อินโดนีเซีย', 'ID'),
(105, 'IMN', 'Isle of Man', 'เกาะแมน', 'IM'),
(106, 'IND', 'India', 'อินเดีย', 'IN'),
(107, 'IOT', 'British Indian Ocean Territory', 'หมู่เกาะบริติชเวอร์จิน', 'IO'),
(108, 'IRL', 'Ireland', 'ไอร์แลนด์', 'IE'),
(109, 'IRN', 'Iran', 'อิหร่าน', 'IR'),
(110, 'IRQ', 'Iraq', 'อิรัก', 'IQ'),
(111, 'ISL', 'Iceland', 'ประเทศไอซ์แลนด์', 'IS'),
(112, 'ISR', 'Israel', 'อิสราเอล', 'IL'),
(113, 'ITA', 'Italy', 'อิตาลี', 'IT'),
(114, 'JAM', 'Jamaica', 'เกาะจาเมกา', 'JM'),
(115, 'JEY', 'Jersey', 'นิวเจอร์ซีย์', 'JE'),
(116, 'JOR', 'Jordan', 'จอร์แดน', 'JO'),
(117, 'JPN', 'Japan', 'ญี่ปุ่น', 'JP'),
(118, 'KAZ', 'Kazakhstan', 'คาซัคสถาน', 'KZ'),
(119, 'KEN', 'Kenya', 'เคนย่า', 'KE'),
(120, 'KGZ', 'Kyrgyzstan', 'คีร์กีสถาน', 'KG'),
(121, 'KHM', 'Cambodia', 'กัมพูชา', 'KH'),
(122, 'KIR', 'Kiribati', 'คิริบาส', 'KI'),
(123, 'KNA', 'Saint Kitts and Nevis', 'เซนต์คิตส์และเนวิส', 'KN'),
(124, 'KOR', 'South Korea', 'เกาหลีใต้', 'KR'),
(125, 'KWT', 'Kuwait', 'คูเวต', 'KW'),
(126, 'LAO', 'Laos', 'ลาว', 'LA'),
(127, 'LBN', 'Lebanon', 'เลบานอน', 'LB'),
(128, 'LBR', 'Liberia', 'ประเทศไลบีเรีย', 'LR'),
(129, 'LBY', 'Libya', 'ลิบยา', 'LY'),
(130, 'LCA', 'Saint Lucia', 'เซนต์ลูเซีย', 'LC'),
(131, 'LIE', 'Liechtenstein', 'นสไตน์', 'LI'),
(132, 'LKA', 'Sri Lanka', 'ศรีลังกา', 'LK'),
(133, 'LSO', 'Lesotho', 'เลโซโท', 'LS'),
(134, 'LTU', 'Lithuania', 'ลิธัวเนีย', 'LT'),
(135, 'LUX', 'Luxembourg', 'ลักเซมเบิร์ก', 'LU'),
(136, 'LVA', 'Latvia', 'ลัตเวีย', 'LV'),
(137, 'MAC', 'Macao', 'มาเก๊า', 'MO'),
(138, 'MAF', 'Saint Martin', 'เซนต์มาร์ติน', 'MF'),
(139, 'MAR', 'Morocco', 'โมร็อกโก', 'MA'),
(140, 'MCO', 'Monaco', 'โมนาโก', 'MC'),
(141, 'MDA', 'Moldova', 'มอลโดวา', 'MD'),
(142, 'MDG', 'Madagascar', 'มาดากัสการ์', 'MG'),
(143, 'MDV', 'Maldives', 'มัลดีฟส์', 'MV'),
(144, 'MEX', 'Mexico', 'เม็กซิโก', 'MX'),
(145, 'MHL', 'Marshall Islands', 'หมู่เกาะมาร์แชลล์', 'MH'),
(146, 'MKD', 'Macedonia', 'มาซิโดเนีย', 'MK'),
(147, 'MLI', 'Mali', 'มาลี', 'ML'),
(148, 'MLT', 'Malta', 'เกาะมอลตา', 'MT'),
(149, 'MMR', 'Myanmar [Burma]', 'พม่า', 'MM'),
(150, 'MNE', 'Montenegro', 'มอนเตเนโก', 'ME'),
(151, 'MNG', 'Mongolia', 'มองโกเลีย', 'MN'),
(152, 'MNP', 'Northern Mariana Islands', 'หมู่เกาะนอร์เทิร์นมาเรียนา', 'MP'),
(153, 'MOZ', 'Mozambique', 'โมซัมบิก', 'MZ'),
(154, 'MRT', 'Mauritania', 'มอริเตเนีย', 'MR'),
(155, 'MSR', 'Montserrat', 'มอนต์เซอร์รัต', 'MS'),
(156, 'MTQ', 'Martinique', 'มาร์ตินีก', 'MQ'),
(157, 'MUS', 'Mauritius', 'มอริเชียส', 'MU'),
(158, 'MWI', 'Malawi', 'มาลาวี', 'MW'),
(159, 'MYS', 'Malaysia', 'มาเลเซีย', 'MY'),
(160, 'MYT', 'Mayotte', 'มายอต', 'YT'),
(161, 'NAM', 'Namibia', 'นามิเบีย', 'NA'),
(162, 'NCL', 'New Caledonia', 'นิวแคลิโดเนีย', 'NC'),
(163, 'NER', 'Niger', 'ไนเธอร์', 'NE'),
(164, 'NFK', 'Norfolk Island', 'เกาะนอร์ฟอล์ก', 'NF'),
(165, 'NGA', 'Nigeria', 'ไนจีเรีย', 'NG'),
(166, 'NIC', 'Nicaragua', 'นิการากัว', 'NI'),
(167, 'NIU', 'Niue', 'นีอูเอ', 'NU'),
(168, 'NLD', 'Netherlands', 'เนเธอร์แลนด์', 'NL'),
(169, 'NOR', 'Norway', 'นอร์เวย์', 'NO'),
(170, 'NPL', 'Nepal', 'เนปาล', 'NP'),
(171, 'NRU', 'Nauru', 'นาอูรู', 'NR'),
(172, 'NZL', 'New Zealand', 'นิวซีแลนด์', 'NZ'),
(173, 'OMN', 'Oman', 'โอมาน', 'OM'),
(174, 'PAK', 'Pakistan', 'ปากีสถาน', 'PK'),
(175, 'PAN', 'Panama', 'ปานามา', 'PA'),
(176, 'PCN', 'Pitcairn Islands', 'หมู่เกาะพิตแคร์น', 'PN'),
(177, 'PER', 'Peru', 'เปรู', 'PE'),
(178, 'PHL', 'Philippines', 'ฟิลิปปินส์', 'PH'),
(179, 'PLW', 'Palau', 'ปาเลา', 'PW'),
(180, 'PNG', 'Papua New Guinea', 'ปาปัวนิวกินี', 'PG'),
(181, 'POL', 'Poland', 'โปแลนด์', 'PL'),
(182, 'PRI', 'Puerto Rico', 'เปอร์โตริโก', 'PR'),
(183, 'PRK', 'North Korea', 'เกาหลีเหนือ', 'KP'),
(184, 'PRT', 'Portugal', 'โปรตุเกส', 'PT'),
(185, 'PRY', 'Paraguay', 'ปารากวัย', 'PY'),
(186, 'PSE', 'Palestine', 'ปาเลสไตน์', 'PS'),
(187, 'PYF', 'French Polynesia', 'เฟรนช์โปลินีเซีย', 'PF'),
(188, 'QAT', 'Qatar', 'กาตาร์', 'QA'),
(189, 'REU', 'Réunion', 'เรอูนียง', 'RE'),
(190, 'ROU', 'Romania', 'โรมาเนีย', 'RO'),
(191, 'RUS', 'Russia', 'รัสเซีย', 'RU'),
(192, 'RWA', 'Rwanda', 'รวันดา', 'RW'),
(193, 'SAU', 'Saudi Arabia', 'ซาอุดิอาราเบีย', 'SA'),
(194, 'SDN', 'Sudan', 'ซูดาน', 'SD'),
(195, 'SEN', 'Senegal', 'เซเนกัล', 'SN'),
(196, 'SGP', 'Singapore', 'สิงคโปร์', 'SG'),
(197, 'SGS', 'South Georgia and the South Sandwich Islands', 'หมู่เกาะเซาท์จอร์เจียและหมู่เกาะเซาท์แซนด์วิช', 'GS'),
(198, 'SHN', 'Saint Helena', 'เซนต์เฮเลนา', 'SH'),
(199, 'SJM', 'Svalbard and Jan Mayen', 'สฟาลบาร์และยานไมเอน', 'SJ'),
(200, 'SLB', 'Solomon Islands', 'หมู่เกาะโซโลมอน', 'SB'),
(201, 'SLE', 'Sierra Leone', 'เซียร์ราลีโอน', 'SL'),
(202, 'SLV', 'El Salvador', 'เอลซัลวาดอร์', 'SV'),
(203, 'SMR', 'San Marino', 'ซานมาริโน', 'SM'),
(204, 'SOM', 'Somalia', 'โซมาเลีย', 'SO'),
(205, 'SPM', 'Saint Pierre and Miquelon', 'เซนต์ปิแอร์และมีเกอลง', 'PM'),
(206, 'SRB', 'Serbia', 'เซอร์เบีย', 'RS'),
(207, 'SSD', 'South Sudan', 'ซูดานใต้', 'SS'),
(208, 'STP', 'São Tomé and Príncipe', 'เซาตูเมและปรินซิปี', 'ST'),
(209, 'SUR', 'Suriname', 'ซูรินาเม', 'SR'),
(210, 'SVK', 'Slovakia', 'สโลวะเกีย', 'SK'),
(211, 'SVN', 'Slovenia', 'สโลวีเนีย', 'SI'),
(212, 'SWE', 'Sweden', 'สวีเดน', 'SE'),
(213, 'SWZ', 'Swaziland', 'สวาซิแลนด์', 'SZ'),
(214, 'SXM', 'Sint Maarten', 'เกาะเซนต์มาร์ติน', 'SX'),
(215, 'SYC', 'Seychelles', 'เซเชลส์', 'SC'),
(216, 'SYR', 'Syria', 'ซีเรีย', 'SY'),
(217, 'TCA', 'Turks and Caicos Islands', 'หมู่เกาะเติกส์และหมู่เกาะเคคอส', 'TC'),
(218, 'TCD', 'Chad', 'ชาด', 'TD'),
(219, 'TGO', 'Togo', 'โตโก', 'TG'),
(220, 'TJK', 'Tajikistan', 'ทาจิกิสถาน', 'TJ'),
(221, 'TKL', 'Tokelau', 'โตเกเลา', 'TK'),
(222, 'TKM', 'Turkmenistan', 'เติร์กเมนิสถาน', 'TM'),
(223, 'TLS', 'East Timor', 'ติมอร์ตะวันออก', 'TL'),
(224, 'TON', 'Tonga', 'ตองกา', 'TO'),
(225, 'TTO', 'Trinidad and Tobago', 'ตรินิแดดและโตเบโก', 'TT'),
(226, 'TUN', 'Tunisia', 'ตูนิเซีย', 'TN'),
(227, 'TUR', 'Turkey', 'ตุรกี', 'TR'),
(228, 'TUV', 'Tuvalu', 'ตูวาลู', 'TV'),
(229, 'TWN', 'Taiwan', 'ไต้หวัน', 'TW'),
(230, 'TZA', 'Tanzania', 'แทนซาเนีย', 'TZ'),
(231, 'UGA', 'Uganda', 'ยูกันดา', 'UG'),
(232, 'UKR', 'Ukraine', 'ยูเครน', 'UA'),
(233, 'UMI', 'U.S. Minor Outlying Islands', 'เกาะนอกรีตของสหรัฐฯ', 'UM'),
(234, 'URY', 'Uruguay', 'อุรุกวัย', 'UY'),
(235, 'USA', 'United States', 'สหรัฐอเมริกา', 'US'),
(236, 'UZB', 'Uzbekistan', 'อุซเบกิสถาน', 'UZ'),
(237, 'VAT', 'Vatican City', 'เมืองวาติกัน', 'VA'),
(238, 'VCT', 'Saint Vincent and the Grenadines', 'เซนต์วินเซนต์และเกรนาดีนส์', 'VC'),
(239, 'VEN', 'Venezuela', 'เวเนซุเอลา', 'VE'),
(240, 'VGB', 'British Virgin Islands', 'หมู่เกาะบริติชเวอร์จิน', 'VG'),
(241, 'VIR', 'U.S. Virgin Islands', 'หมู่เกาะเวอร์จินของสหรัฐอเมริกา', 'VI'),
(242, 'VNM', 'Vietnam', 'เวียดนาม', 'VN'),
(243, 'VUT', 'Vanuatu', 'วานูอาตู', 'VU'),
(244, 'WLF', 'Wallis and Futuna', 'วาลลิสและฟุตูนา', 'WF'),
(245, 'WSM', 'Samoa', 'ซามัว', 'WS'),
(246, 'XKX', 'Kosovo', 'โคโซโว', 'XK'),
(247, 'YEM', 'Yemen', 'เยเมน', 'YE'),
(248, 'ZAF', 'South Africa', 'แอฟริกาใต้', 'ZA'),
(249, 'ZMB', 'Zambia', 'แซมเบีย', 'ZM'),
(250, 'ZWE', 'Zimbabwe', 'ประเทศซิมบับเว', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `dd_prefix`
--

CREATE TABLE `dd_prefix` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dd_prefix`
--

INSERT INTO `dd_prefix` (`id`, `name`) VALUES
(1, 'นาย'),
(2, 'นางสาว');

-- --------------------------------------------------------

--
-- Table structure for table `dd_rapid`
--

CREATE TABLE `dd_rapid` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dd_righttotreatment`
--

CREATE TABLE `dd_righttotreatment` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dd_righttotreatment`
--

INSERT INTO `dd_righttotreatment` (`id`, `name`) VALUES
(1, 'ประกันสังคม, ประกันชีวิต'),
(2, 'ข้าราชการ ลูกจ้างประจำ'),
(3, 'ประกันสุขภาพ'),
(4, 'กองทุนผู้ประกันตนคนต่างด้าว'),
(5, 'เงินสด'),
(6, 'อื่น ๆ');

-- --------------------------------------------------------

--
-- Table structure for table `dd_room`
--

CREATE TABLE `dd_room` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dd_room`
--

INSERT INTO `dd_room` (`id`, `name`) VALUES
(1, 'ห้อง 1'),
(2, 'ห้อง 2'),
(3, 'ห้อง 3'),
(4, 'ห้อง ERCP'),
(5, 'ห้องผ่าตัด');

-- --------------------------------------------------------

--
-- Table structure for table `eqa`
--

CREATE TABLE `eqa` (
  `eqa_id` int(11) NOT NULL,
  `eqa_name` varchar(300) DEFAULT NULL,
  `eqa_expire` date DEFAULT NULL,
  `eqa_authur` int(11) DEFAULT NULL,
  `eqa_pic` varchar(200) DEFAULT NULL,
  `eqa_status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eqa`
--

INSERT INTO `eqa` (`eqa_id`, `eqa_name`, `eqa_expire`, `eqa_authur`, `eqa_pic`, `eqa_status`) VALUES
(1, NULL, '2019-05-07', NULL, '1560055221.jpg', 0),
(2, NULL, '2019-05-07', NULL, '1560055221.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hospital_id` int(11) NOT NULL,
  `hospital_name` varchar(300) NOT NULL,
  `hospital_address` varchar(400) NOT NULL,
  `hospital_tel` varchar(200) NOT NULL,
  `hospital_email` varchar(200) NOT NULL,
  `hospital_pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hospital_id`, `hospital_name`, `hospital_address`, `hospital_tel`, `hospital_email`, `hospital_pic`) VALUES
(1, 'โรงพยาบาลมหาราชนครเชียงใหม่', '110 ถนนอินทวโรรส ซอย 2 ตำบล ศรีภูมิ อำเภอเมืองเชียงใหม่ เชียงใหม่ 50200', '053-936150', 'ศูนย์ส่องกล้องส่องทางเดินอาหาร', '1551941958.png');

-- --------------------------------------------------------

--
-- Table structure for table `morphology`
--

CREATE TABLE `morphology` (
  `morphology_id` int(11) NOT NULL,
  `morphology_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `morphology`
--

INSERT INTO `morphology` (`morphology_id`, `morphology_name`) VALUES
(1, 'gram positive cocci'),
(2, 'in pair'),
(3, 'in chain'),
(4, 'in cluster'),
(5, 'gram postive coccobacilli'),
(6, 'gram positive bacilli'),
(7, 'gram negative cocci'),
(8, 'gram negative diplococci'),
(9, 'gram negative coccobacilli'),
(10, 'gram negative bacilli'),
(11, 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `createdate` date DEFAULT NULL,
  `regis_date` varchar(20) DEFAULT NULL,
  `regis_time` varchar(20) DEFAULT NULL,
  `hn` varchar(30) NOT NULL,
  `an` varchar(30) DEFAULT NULL,
  `citizen` varchar(30) DEFAULT NULL,
  `pic` varchar(30) DEFAULT NULL,
  `prefix` varchar(10) DEFAULT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `gender` smallint(6) NOT NULL,
  `nationality` smallint(6) DEFAULT NULL,
  `birthdate` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `emer_name` varchar(100) DEFAULT NULL,
  `emer_tel` varchar(50) DEFAULT NULL,
  `righttotreatment` varchar(100) DEFAULT NULL,
  `allergic` varchar(200) DEFAULT NULL,
  `congenital_disease` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `createdate`, `regis_date`, `regis_time`, `hn`, `an`, `citizen`, `pic`, `prefix`, `firstname`, `lastname`, `gender`, `nationality`, `birthdate`, `phone`, `email`, `emer_name`, `emer_tel`, `righttotreatment`, `allergic`, `congenital_disease`) VALUES
(1, NULL, NULL, NULL, '123456789', '123456', 'ddd', '123456789.png', NULL, 'สุวิชา', 'จันทร์สุรินทร์', 1, 1, '22-08-2530', '0912345678', '-', 'ชัชชาญชณัฐ จิตรัตน์', '0912345678', '2', '-', 'เก๊า'),
(2, NULL, NULL, NULL, '123456789', '123456789', '123456789', '', NULL, 'Test', 'Test', 1, 1, '19-11-2499', '-', '-', '-', '-', '4', '-', '-'),
(3, NULL, NULL, NULL, 'dfd', 'dfdf', 'dfdf', '', NULL, 'dfdf', 'ศรีนาคdd', 1, 16, '01-01-2562', NULL, 'geepoty@gmail.com', 'นุจรี ศรีนาค', NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, 'dfdsf', 'dfdsf', 'dfdfd', '', NULL, 'fdfd', 'fdfdf', 1, 16, '19-11-2543', 'dfdf', 'dfdf', 'fdf', 'dfdfdf', '5', 'dfdf', 'dfdf'),
(5, NULL, NULL, NULL, 'dddddddddd', 'ddddddddd', 'ddddddd', 'dddddddddd.png', NULL, 'ssss', 'sssss', 2, 1, '01-01-2554', '813447063', 'zaadayu@hotmail.com', 'Sadayu Thongloi', 'ddd', '2', 'dd', 'ddd');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `photo_case` varchar(20) DEFAULT NULL,
  `photo_num` int(11) DEFAULT NULL,
  `photo_name` varchar(50) DEFAULT NULL,
  `photo_scope` varchar(20) DEFAULT NULL,
  `photo_datetime` varchar(25) DEFAULT NULL,
  `photo_status` varchar(5) DEFAULT '0',
  `photo_div` int(11) DEFAULT '0',
  `photo_select` int(11) NOT NULL DEFAULT '0',
  `photo_text` varchar(300) DEFAULT NULL,
  `photo_x` varchar(50) DEFAULT NULL,
  `photo_y` varchar(50) DEFAULT NULL,
  `photo_mainpartsub` int(11) DEFAULT NULL,
  `photo_gastrolesion` varchar(400) DEFAULT NULL,
  `photo_additional` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`id`, `photo_case`, `photo_num`, `photo_name`, `photo_scope`, `photo_datetime`, `photo_status`, `photo_div`, `photo_select`, `photo_text`, `photo_x`, `photo_y`, `photo_mainpartsub`, `photo_gastrolesion`, `photo_additional`) VALUES
(10, '1', 1, '1_Scope1_2562_03_07_16_49_53.jpg', '1', '2562-03-07 16:49:53.jpg', '0', 0, 0, NULL, '73.68421052631578', '52.58097165991903', 9, '', NULL),
(41, '1', 2, '1_Scope1_2562_03_07_23_44_08.jpg', '1', '2562-03-07 23:44:08.jpg', '1', 0, 1, NULL, '37.07482993197279', '81.16496598639455', 0, '', NULL),
(42, '1', 3, '1_Scope1_2562_03_07_23_44_11.jpg', '1', '2562-03-07 23:44:11.jpg', '1', 0, 1, NULL, '66.3265306122449', '53.613945578231295', 7, '', NULL),
(45, '2', 1, '2_self_2019_03_19_02_29_2.jpg', 'self', '2019-02-15 00:00:00', '1', 0, 0, NULL, '50.45545307312126', '28.584609607681642', 12, 'Discoloration     Stricture     ', NULL),
(46, '2', 2, '2_self_2019_03_19_02_29_3.jpg', 'self', '2019-02-15 00:00:00', '1', 0, 1, NULL, '23.88467807962437', '29.60595641473327', NULL, NULL, NULL),
(47, '1', 4, '1_Scope1_2562_03_07_23_44_15.mp4', '1', '2562-03-07 23:44:15.mp4', '0', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '1', 5, '1_Scope1_2562_03_07_23_44_08.jpg', '1', '2562-03-07 23:44:08.jpg', '0', 0, 0, NULL, '27.732793522267208', '9.665991902834008', NULL, NULL, NULL),
(52, '5', 1, '5_self_2019_05_05_05_23_2.jpg', 'self', '2019-02-15 00:00:00', '0', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '4', 1, '4_self_2019_05_08_01_25_1.jpg', 'self', '2019-02-15 00:00:00', '1', 0, 1, NULL, '23.12925170068027', '21.06479570780025', 4, 'Hyperemia/vascularity     Edema     ', NULL),
(54, '4', 2, '4_self_2019_05_08_01_26_2.jpg', 'self', '2019-02-15 00:00:00', '0', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '4', 3, '4_self_2019_05_08_01_27_3.jpg', 'self', '2019-02-15 00:00:00', '1', 0, 1, NULL, '17.346938775510203', '82.34420140321916', 8, 'Edema     Discoloration     ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pmi`
--

CREATE TABLE `pmi` (
  `pmi_id` int(11) NOT NULL,
  `pmi_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pmi`
--

INSERT INTO `pmi` (`pmi_id`, `pmi_name`) VALUES
(1, 'Wet Smear'),
(2, '10% KOH'),
(3, 'Gram stain'),
(4, 'Wright s stain'),
(5, 'AFB Mycobacterium spp.'),
(6, 'm-AFB Nocardia spp.'),
(7, 'm-AFB Rhodococcus spp.'),
(8, 'Tzanck smear Herpes Simplex Virus(HSV)'),
(9, 'India Ink Cryptococcus spp.'),
(10, 'Lacto Phenol Cotton Blue(LPCB)'),
(11, 'Histoplasma capsulatum'),
(12, 'Penicillium marneffei'),
(13, 'Penicillium spp.'),
(14, 'Fusarium spp.'),
(15, 'Microsporum gypseum'),
(16, 'Microsporum canis '),
(17, 'Epidermophyton floccosum'),
(18, 'Mucor spp.'),
(19, 'Rhizopus spp.'),
(20, 'Phialophora verrucosa'),
(21, 'Curvularia spp.'),
(22, 'Aspergillus flavus'),
(23, 'Aspergillus fumigatus'),
(24, 'Aspergillus terreus'),
(25, 'Aspergillus niger'),
(26, 'Acremonium spp.'),
(27, 'Exophiala jeanselmei'),
(28, 'Syncephalastrum spp.'),
(29, 'Paecilomyces spp.'),
(30, 'Scytalidium spp.'),
(31, 'Sporothrix spp.'),
(32, 'Hortaea spp.'),
(33, 'Trichophyton rubrum'),
(34, 'Trichophyton mentagophytes'),
(35, 'Trichophyton spp.'),
(36, 'Bipolaris spp.'),
(37, 'Basidiobolus spp.'),
(38, 'Cylindrocarpon spp.'),
(39, 'Paraconiothyrium spp.'),
(40, 'Conidiobolus spp.'),
(41, '10. Auramin O Mycobacterium spp.'),
(42, '11.Gomori methenamine silver stain (GMS stain)'),
(43, '12. Other staining'),
(44, 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `question_id` int(11) NOT NULL,
  `question_title` varchar(400) NOT NULL,
  `question_description` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question_id`, `question_title`, `question_description`) VALUES
(1, 'aaaaaa', ''),
(2, 'bbbbbbb', ''),
(3, 'cccccccc', ''),
(4, 'ddddddd', ''),
(5, 'eeeeeeee', ''),
(6, 'fffffff', ''),
(7, 'hhhhhh', ''),
(8, 'zzzzzzzzz', '');

-- --------------------------------------------------------

--
-- Table structure for table `scope`
--

CREATE TABLE `scope` (
  `scope_id` int(11) NOT NULL,
  `scope_name` varchar(200) NOT NULL,
  `scope_band` varchar(200) NOT NULL,
  `scope_model` varchar(200) NOT NULL,
  `scope_serial` varchar(200) NOT NULL,
  `scope_installdate` varchar(200) DEFAULT NULL,
  `scope_top` int(11) DEFAULT NULL,
  `scope_bottom` int(11) DEFAULT NULL,
  `scope_left` int(11) DEFAULT NULL,
  `scope_rigth` int(11) DEFAULT NULL,
  `scope_comment` varchar(300) DEFAULT NULL,
  `scope_status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scope`
--

INSERT INTO `scope` (`scope_id`, `scope_name`, `scope_band`, `scope_model`, `scope_serial`, `scope_installdate`, `scope_top`, `scope_bottom`, `scope_left`, `scope_rigth`, `scope_comment`, `scope_status`) VALUES
(1, 'Scope 1 (Olym,Colono,592)', 'Olympus', 'PCF-H190DL', '2840592', '20-03-2019', 50, 10, 550, 20, 'Leasing project', 0),
(2, 'Scope 2 (Olym,Gastro,168)', 'Olympus', 'GIF-Q150', '2700168', '0', 50, 10, 550, 20, '', 0),
(3, 'Scope 3 (Olym,Gastro,329)', 'Olympus', 'GIF-HQ190', '2859329', '0', 50, 10, 550, 20, 'Leasing project', 0),
(4, 'Scope 4 (Fuji,Gastro,114)', 'Fujinon', '', '2G391K114', '0', 0, 0, 0, 0, '', 0),
(5, 'Scope 5 (Fuji,Gastro,090)', 'Fujinon', 'EG-580UT', 'U047K090', '0', 0, 0, 0, 0, '', 0),
(6, 'Scope 6 (Olym,Duo,973)', 'Olympus', 'SIF-Q180', '2111973', NULL, 50, 10, 550, 20, NULL, 0),
(7, 'Scope 7 (Olym,Gastro,666)', 'Olympus', 'GIF-XP170N', '2831666', NULL, 50, 10, 550, 20, NULL, 0),
(8, 'Scope 8 (Olym,Colono,109)', 'Olympus', 'CF-VL', '2312109', NULL, 50, 10, 550, 20, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sheet2`
--

CREATE TABLE `sheet2` (
  `id` int(2) DEFAULT NULL,
  `pic` varchar(163) DEFAULT NULL,
  `name` varchar(38) DEFAULT NULL,
  `name_detail` varchar(593) DEFAULT NULL,
  `colony_detail` varchar(395) DEFAULT NULL,
  `micro_exam` varchar(435) DEFAULT NULL,
  `biochemi` varchar(71) DEFAULT NULL,
  `tos` varchar(19) DEFAULT NULL,
  `staining` varchar(29) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sheet2`
--

INSERT INTO `sheet2` (`id`, `pic`, `name`, `name_detail`, `colony_detail`, `micro_exam`, `biochemi`, `tos`, `staining`) VALUES
(1, 'F1_Fusarium_spp(PIC1).jpeg', 'Fusarium spp.', 'สายพันธุ์ของ Fusarium ส่วนมากเป็นราดิน และมีการแพร่กระจายทั่วโลก บางชนิดเป็นเชื้อก่อโรคในพืช และยังพบว่ามีหลายๆชนิด เป็นเชื้อก่อโรคฉวยโอกาสที่สำคัญในมนุษย์ ซึ่งก่อให้เกิด hyalohyphomycosis (โดยเฉพาะอย่างยิ่งในผู้ที่โดนไฟไหม้ และปลูกถ่ายไขกระดูก)  กระจกตาอักเสบจากเชื้อรา(mycotic keratitis) และ onychomycosis ', 'โคโลนีเติบโตได้รวดเร็ว ประมาณ 4 วัน ให้โคโลนีเป็นปุยฟู(cottony) จนถึง ปุยแบบขนแกะ(wooly) สีพื้นผิวให้สีในช่วง ขาว เหลือง ชมพู ม่วงและแทน หากโคโลนีเป็นสีม่วง อาจสามารถบ่งชี้ว่าเป็น Fusarium ด้านหลังโคโลนีเป็นสีอ่อน แดง ม่วงเข้ม น้ำตาล หรือน้ำเงิน', 'พบสายราใส มีผนังกั้น(septate hyphae) มี microconidia 1-2 เซลล์ สีใส มีขนาดเล็กกว่า macroconidia มีรูปร่างเป็นทรงกระสวย ทรงกลมหรือรูปไข่ ได้', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(NULL, 'F1_Fusarium_spp(PIC2).jpeg', NULL, NULL, NULL, 'Macroconidia เป็นสีใส มีตั้งแต่ 2 เซลล์จนได้หลายเซลล์ มีรูปร่างเป็นพระจันทร์เสี้ยว(sickle cell shaped) โดยเป็นเซลล์เรียวมน conidia ทั้ง 2 ชนิดจะงอกออกมาจาก phialide สามารถพบหรือไม่พบ chlamydospore ได้', NULL, NULL, NULL),
(NULL, 'F1_Fusarium_spp(PIC3).jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'F2_Hortaea_werneckii(PIC1).jpeg F2_Hortaea_werneckii(PIC2).jpeg', 'Hortaea werneckii', 'Hortaea werneckii เป็นเชื้อราที่ย่อยสลายอินทรีย์ พบในดิน ปุ๋ยหมัก ซากพืชและบนไม้ในภูมิภาคเขตร้อนและกึ่งร้อนชื้น และเชื้อรานี้ก่อให้เกิด tinea nigra ในมนุษย์', 'โคโลนีมีการเจริญเติบโตได้ช้า เริ่มต้นโคโลนีมันเยิ้มคล้ายยีสต์ และมีสีดำสว่าง เมื่อแก่ขึ้นจะมีการสร้างสายราอากาศ(aerial hyphae) ให้สีน้ำตาลจนถึงเขียวมะกอกเข้ม', 'พบสายราดำ มีผนังกั้น(black septate hyphae) มีโคนิเดียคล้ายยีสต์จำนวนมาก สีน้ำตาลอ่อน มีผนังกั้น แบ่งตัวเป็น 2 เซลล์ มีรูปร่างเป็นทรงกระบอก(cylindrical shaped) จนถึงเข็ม(spindle-shaped) มักเกาะกลุ่มกันเป็นจำนวนมาก chlamydospore สามารถพบได้', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(3, 'F3_Neoscytalidium_spp.jpeg', 'Neoscytalidium spp.', 'เชื้อในสกุลนี้เป็นราดำชั้นสูง(dematiaceous ascomycete) ที่ปกติจะก่อโรคในพืช แต่ปัจจุบันพบว่าสามารถก่อให้เกิดโรค onychomycosis และ dermatomycosis และมีโอกาสค่อนข้างยากในการทำให้เกิดการติดเชื้อแบบทั่วร่างกาย(Systemic infection)', 'โคโลนีเจริญเติบโตได้รวดเร็ว แรกเริ่มโคโลนีมีลักษณะคล้ายขนแมว(fluffy) สีขาว ต่อมากลายเป็นสีเขียวเทา และเมื่อแก่ขึ้นจะค่อยๆกลายเป็นสีดำเข้ม มีการสร้างสายราอากาศโดยจะมีลักษณะที่ค่อนข้างแย่', 'พบ arthroconidia แบบเซลล์เดียวหรือสองเซลล์ต่อกันเป็นสาย(in chain) ตอนอ่อนมีสีใส เมื่อแก่ขึ้นจะมีผนังที่หนา สีน้ำตาล', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(4, 'F4_Histoplasma(PIC1)', 'Histoplasma capsulatum', 'Histoplasmosis เป็นโรคเกี่ยวกับปอดที่ติดเชื้อมาจากชุมชน(community-acquired pulmonary infectios disease) โดยมีสาเหตุมาจาก สิ่งแวดล้อมมี microconidia เช่น ดิน', 'เติบโตได้ช้าที่ 25-30 °C ใช้เวลา 2-4 สัปดาห์ จึงจะพบเห็นลักษณะโคโลนี เมื่อเพาะเลี้ยงที่ 25°C โคโลนีมีลักษณะเป็นปุยนุ่น(fluffy) สีขาว เมื่อเวลาผ่านไปจะเปลี่ยนแปลง กลายเป็นสีน้ำตาลจนถึงสีเหลืองแกมเทา', 'พบเห็น ก้านชูโคนิเดีย(conidiophore) ตั้งฉากกับสายรา และพบโคนิเดียมี 2 แบบ', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(NULL, 'F4_Histoplasma(PIC2)', NULL, 'มีการสูดดมละอองของ microconidia เข้าไป เปลี่ยนแปลงเป็น yeast form ในปอด ต่อมาทำให้เกิดอาการติดเชื้อ มีอาการทางคลินิกคล้ายไข้หวัดใหญ่ หรือ ปอดบวม', 'เมื่อเพาะเลี้ยงที่ 37 °C ที่มีอาหารเลี้ยงเชื้อ สามารถปรากฏลักษณะเป็น โคโลนีหยิก ชื้น ซึ่งคล้ายกับยีสต์ และเป็นสีครีม', NULL, NULL, NULL, NULL),
(NULL, 'F4_Histoplasma(PIC3).jpeg', NULL, NULL, NULL, '1.Microconidia - โคนิเดียขนาด 4-6 µm ลักษณะกลมจนไปถึงลูกชมพู่(pyriform shape)', NULL, NULL, NULL),
(NULL, 'F4_Histoplasma(PIC4).jpeg', NULL, NULL, NULL, '2.Macroconidia - มีขนาดใหญ่ ประมาณ 8-18 µm กลม มีผนังหนารอบๆ macroconidia โดยจะเห็นหนามรอบๆ เซลล์ คล้ายซี่เกวียน เรียก tuberculated Macroconidia', NULL, NULL, NULL),
(NULL, 'F4_Histoplasma(PIC5).jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 'F4_Histoplasma(PIC6).jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 'F4_Histoplasma(PIC7).jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'F5_T_marneffei(PIC1).jpeg', 'Talaromyces marneffei', 'แสดงออกมาให้เห็นเป็น ราสองรูป(dimorphic Fungi) โดย รา เติบโตในอาหารเลี้ยงเชื้อที่มีอุณหภูมิต่ำกว่า 30 °C', 'เมื่อเพาะเลี้ยงที่อุณหภูมิ 25 °C โคโลนีเจริญได้รวดเร็วประมาณ 3 วัน โคโลนีคล้ายหนังกลับด้าน(suede) จนไปถึงปุยนิ่ม(downy) สีขาว โดยที่ปลายหัว conidia ให้สีขาวเหลืองปนเขียว ใต้โคโลนีมีสีน้ำตาลแดง', 'พบสายราสีใส มีผนังกั้น(septate hyphae) ก้านชูโคนิเดียสามารถพบเป็น สองแขนง(biverticillate) และแขนงเดียว(monoverticillate) ได้ ที่ส่วนปลายของก้านมี metulae 3-5 อัน ในแต่ละอันมี phialides 3-7 อัน phialide มีลักษณะคล้ายเข็ม(acerose) ไปจนรูปร่างเป็นแจกัน มีการสร้างโคนิเดียแบบ basipetal', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(NULL, 'F5_T_marneffei(PIC2).jpeg', NULL, 'ส่วนยีสต์เติบโตในเนื้อเยื่อที่ยังมีชีวิต หรือ ในอาหารเลี้ยงเชื้อที่อุณหภูมิ 37°C', 'เมื่อเวลาผ่านไป โคโลนีจะกลายเป็นสีเทาอมชมพู ชมพู จนเป็นน้ำตาล', NULL, NULL, NULL, NULL),
(NULL, 'F5_T_marneffei(PIC3).jpeg', NULL, 'เชื้อนี้มีแนวโน้มในการก่อโรคได้ในคนปกติ และเกิดขึ้นได้บ่อยในผู้มีภูมิคุ้มกันบกพร่องอย่างมีนัยสำคัญ', NULL, NULL, NULL, NULL, NULL),
(NULL, 'F5_T_marneffei(PIC4).jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'F6_Penicillium_spp(PIC1).jpeg', 'Penicillium spp.', 'เป็นเชื้อที่เป็นกลุ่มขนาดใหญ่และมีจีนัสที่แพร่หลาย มีหลายสายพันธุ์ที่มีการปนเปื้อนในสารตั้งต้นต่างๆ สารที่พบนั้นเรียกว่า mycotoxin เชื้อก่อโรคในมนุษย์ของกลุ่มนี้พบได้ยาก แต่การติดเชื้อฉวยโอกาสนำไปสู่การเป็น mycotic keratitis, otomycosis และ endocarditis', 'โคโลนีเติบโตได้รวดเร็ว ประมาณ 4 วัน สีโคโลนีจะออกเป็นแนวเฉดสีเขียว บางครั้งสีขาว ชื้น', 'พบราสีใส มีผนังกั้น(septate hyphae) ก้านชูโคนิเดียมีลักษณะเป็นก้านตัน สามารถแตกแขนงหรือไม่ก็ได้ phialides สามารถพบเป็นแบบเดี่ยว แบบกลุ่ม หรือเป็นลักษณะแตกแขนงของ metulae ซึ่งจะปรากฏคล้ายแปรงทาสี(penicillus) โคนิเดียมีลักษณะกลม รี ทรงกระบอกหรือเป็นกระสวย สีใสหรือเขียว มีผนังเรียบหรือขรุขระ', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(NULL, 'F6_Penicillium_spp(PIC2).jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 'F6_Penicillium_spp(PIC3).jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 'F6_Penicillium_spp(PIC4).jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'F7_Mucor_spp(PIC1).jpeg', 'Mucor spp.', 'วงศ์ของ Mucor มีมากกว่า 50 วงศ์ซึ่งมีการแพร่กระจายและมีความสำคัญทางเศรษฐกิจ แต่มีเพียงไม่กี่สายพันธุ์ที่ทนต่อความร้อนและมีความสำคัญทางการแพทย์ จากรายงานพบว่าเชื้อที่สามารถก่อโรคในมนุษย์ประกอบไปด้วย M. circinelloides , M. indicus, M. ramosissimus, M. irregularis และ M. amphibiorum เป็นต้น', 'โคโลนีไม่เจริญเติบโตที่ 37 °C', 'พบสายราใส ไม่มีผนังกั้น(hyaline with non-septate hyphae) ไม่มี rhizoid มีก้านชูสปอร์เรียก sporangiophore แตกแขนงได้ ส่วนปลายพบถุงสปอร์เรียก sporangium มีลักษณะกลมหรือรี มีขนาดใหญ่ ภายใน sporangium บรรจุสปอร์เรียก sporangiospores เมื่อสปอร์แตก จะเห็นส่วนที่ติดอยู่ปลายก้านชู เรียก collarette', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(NULL, 'F7_Mucor_spp(PIC2).jpeg', NULL, NULL, 'โคโลนีเจริญได้รวดเร็วประมาณ 2 วัน ให้ลักษณะเป็น ปุยสำลี(cottony) จนถึงขนแมว(fluffy) สีขาวจนถึงเหลือง จากนั้นสามารถกลายเป็นสีเทาดำได้เพราะมีการพัฒนา sporangiospore เกิดขึ้น', NULL, NULL, NULL, NULL),
(NULL, 'F7_Mucor_spp(PIC3).jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'F8_Rhizopus_spp.jpeg', 'Rhizopus spp.', 'สายพันธุ์ของ Rhizopus หลักๆ ที่ค้นพบประกอบไปด้วย R. caespitosus, R. delemar, R. homothallicus, R. microsporus, R. arrhizus (R. oryzae).jpeg R. reflexus, R. schipperae และ R. stolonifer ต่อมาได้ค้นพบ R. arrhizus และ R. microspores ซึ่งทั้ง 2 ชนิดนี้เป็นเชื้อก่อโรค mucormycosis ที่สำคัญ โดยคิดเป็นถึงร้อยละ 60% ของเคสทั้งหมด', 'โคโลนีเจริญรวดเร็วประมาณ 2 วัน มีลักษณะเป็นปุยฟู(cottony) สีขาวปนเทา ส่วนด้านหลังเป็นสีใสจนถึงสีขาว เชื้อเจริญได้ที่ได้ที่ 37 °C', 'พบสายราใส ไม่มีผนังกั้น(hyaline with non-septate hyphae) มี rhizoid ที่มีลักษณะคล้ายราก มีก้านชูสปอร์เรียก sporangiophore ไม่มีการแตกแขนง งอกออกจาก rhizoid ตรงตำแหน่งที่เรียกว่า node ส่วนปลายพบถุงสปอร์เรียก sporangium มีลักษณะกลมหรือรี มีขนาดใหญ่ ภายใน sporangium บรรจุสปอร์เรียก sporangiospores เมื่อสปอร์แตก จะหลุดออกหมด ไม่เห็นส่วนที่ติดอยู่ปลายก้านชู เรียก collarette', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(9, 'F9_M_gypseum(PIC1).jpeg', 'Microsporum gypseum', 'โคโลนีเจริญเติบโตได้รวดเร็ว ประมาณ 6-10 วัน ลักษณะพื้นผิวบนโคโลนีเป็น ผงแป้ง(powdery) จนถึงเม็ดทราย(granular)', 'สีด้านหน้าโคโลนี สีขาวถึงน้ำตาลอ่อน ใต้โคโลนีมีสีเหลืองจนถึงสีน้ำตาลแดง', 'พบสายราใส มีผนังกั้น(septate hyphae) มี macroconidia จำนวนมาก เป็นรูปกระสวย สมมาตร และปลายมน ผนังบาง ขอบผนังขรุขระ มีประมาณ 3-6 เซลล์', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(NULL, 'F9_M_gypseum(PIC2).jpeg', NULL, NULL, NULL, 'microconidia มีขนาดเล็กจำนวนมาก มีลักษณะเป็นกระบอง(club shaped หรือ clavate shaped) และอยู่บนสายราตลอดแนว', NULL, NULL, NULL),
(10, 'F10_M_canis(PIC1).jpeg', 'Microsporum canis', 'เป็นเชื้อราที่ก่อให้เกิดโรค กลาก(dermatophytosis) โดยแท้จริงแล้วก่อให้เกิดพยาธิสภาพแก่สัตว์ แต่เมื่อมีการพาจากสัตว์สู่มนุษย์ ส่งผลทำให้มนุษย์เกิดพยาธิสภาพได้ โดยจะพบเป็น ringworms (ผื่นสีชมพูแดงที่ลำตัว หรือ คอ) เชื้อรานี้จะไม่แทรกซึมเข้าสู่ภายในผม(ectothrix)', 'โคโลนีเจริญเติบโตได้รวดเร็วประมาณ 6 วัน มีลักษณะแบน แผ่กระจาย ให้สีขาวจนถึงสีครีม บางครั้งที่พื้นผิวจะแสดงให้เห็นร่องการกระจาย(radial groove) ใต้โคโลนีมีสีเหลืองจนถึงสีน้ำตาล', 'พบสายรามีผนังกั้น(septate hyphae) มีทั้ง macroconidia และ microconidia', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(NULL, 'F10_M_canis(PIC2).jpeg', NULL, NULL, NULL, 'macroconidia มีรูปป่องตรงกลาง คล้ายกระสวย พบ knob ตรงปลายแบบไม่สมมาตร คล้ายตะขอ(hook) ผนังภายนอกหนา ขรุขระ มีเซลล์ 6-15 เซลล์ ส่วนผนังกั้นภายในเซลล์บาง', NULL, NULL, NULL),
(NULL, 'F10_M_canis(PIC3).jpeg', NULL, NULL, NULL, 'microconidia สามารถพบได้ มีลักษณะคล้ายกระบอง(clavate shaped) จนถึงรูปทรงกระบอก(pyriform shaped) แต่พบได้ยาก', NULL, NULL, NULL),
(11, 'F11_T_rubrum.jpeg', 'Trichophyton rubrum', 'เชื้อชนิดนี้เป็นเชื้อราที่ก่อโรคในคน แต่มีบางชนิดที่สามารถก่อโรคในสัตว์ได้(anthropophilic fungus) มักก่อให้เกิดการติดเชื้อเรื้อรังที่ผิวหนัง เล็บและหนังศรีษะ สามารถพบ granulomatous lesion ได้ในคนไข้บางคน เมื่อตรวจดูภายใต้กล้องอาจจะพบ ectothrix หรือ endothrix ก็ได้', 'โคโลนีเจริญได้ช้า ประมาณ 14 วัน ผิวโคโลนีเป็นปุยนิ่ม(downy) จนถึงหนังสัตว์กลับด้าน(suede) สีมีตั้งแต่สีขาวจนถึงครีม และแดงเข้ม ใต้โคโลนีอาจไม่มีสี สีขาวเหลืองจนถึงขาวน้ำตาล หรือแดงแบบไวน์', 'พบสายราใส มีผนังกั้น(hyaline septate hyphae)', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(NULL, NULL, NULL, NULL, NULL, 'microconidia มีจำนวนมาก มีลักษณะเป็นหยดน้ำ(tear drop shaped) จนถึงรูปกระสวย แต่หยดน้ำจะพบได้บ่อยที่สุด', NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, 'macroconidia มีหลายเซลล์ มีผนังบาง พบลักษณะคล้ายดินสอ(pencil shaped หรือ cigar shaped)', NULL, NULL, NULL),
(12, 'F12_T_mentagrophytes(PIC1).jpeg F12_T_mentagrophytes(PIC2).jpeg F12_T_mentagrophytes(PIC3).jpeg', NULL, 'เชื้อราชนิดนี้โดยแท้จริงแล้วก่อให้เกิดพยาธิสภาพแก่สัตว์ แต่เมื่อมีการพาจากสัตว์สู่มนุษย์ ส่งผลทำให้มนุษย์เกิดพยาธิสภาพได้(zoophilic fungus) ก่อให้เกิดอาการอักเสบที่ผิวหนังหรือหนังศรีษะ และจะพบเป็น kerion ที่หนวดหรือที่หนังศรีษะได้', 'โคโลนีเจริญได้ปานกลางประมาณ 7 วัน โคโลนีมีสีขาวจนครีม มีลักษณะเป็นผงแป้ง(powdery) จนไปถึงเม็ดทราย(granular) ส่วนใต้โคโลนีให้สีเหลืองน้ำตาล จนไปถึงแดงน้ำตาล', 'พบสายราใส มีผนังกั้น(hyaline septate hyphae) microconidia สามารถพบเป็นเซลล์เดี่ยวหรือมักจะอยู่รวมกันเป็นกลุ่มได้ มีผนังเรียบ ส่วนใหญ่มีรูปร่างกลม(spherical shaped)', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(NULL, NULL, 'Trichophyton mentagrophytes', NULL, NULL, 'macroconidia มีลักษณะหลายเซลล์ ยืดยาว มีรูปร่างเป็น cigar shape และมักพบ spiral hyphae', NULL, NULL, NULL),
(13, 'F13_Epidermophyton_floccosum(PIC1).jpeg F13_Epidermophyton_floccosum(PIC2).jpeg F13_Epidermophyton_floccosum(PIC3).jpeg', 'Epidermophyton floccosum', 'เชื้อชนิดนี้เป็นเชื้อราที่ก่อโรคในคน แต่มีบางชนิดที่สามารถก่อโรคในสัตว์ได้(anthropophilic fungus) บ่อยครั้งมักทำให้เกิด tinea pedis, tinea cruris, tinea corporis และ onychomycosis', 'โคโลนีเติบโตได้รวดเร็วปานกลาง ใช้เวลาประมาณ 10 วัน โคโลนีมีสีขาวขุ่นน้ำตาลอมเขียว หรือ สีคล้ายคากิ นูนและมีการพับที่ตรงกลางโคโลนี ใต้โคโลนีมีสีน้ำตาลอมเหลือง', 'พบสายราใส มีผนังกั้น(hyaline septate hyphae)', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(NULL, NULL, NULL, NULL, NULL, 'พบ macroconidia ผนังบาง ผิวเรียบคล้ายใบขนุน(club shaped with rounded ends) พบการงอกของ macroconidia ออกจากสายราโดยตรง', NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, 'ไม่พบ microconidia เมื่อโคโลนีแก่ขึ้นจะสามารถมีการพัฒนาเป็น chlamydospores ได้', NULL, NULL, NULL),
(14, 'F14_A_flavus(PIC1).jpeg', 'Aspergillus flavus', 'Aspergillus section Flavi มีการผลิต aflatoxins ซึ่ง aflatoxin B1 เป็นสารพิษที่พบมากที่สุดที่เกิดจากการเมตาบอไลท์ทุติยภูมิจากเชื้อรา โดย A. flavus และ A. parasiticus ผลิต aflatoxin เป็นหลัก ในปัจจุบัน A. flavus เป็นเชื้อก่อโรคทางการแพทย์ที่สำคัญ ทั้งในมนุษย์และสัตว์ โดยเชื้อนี้ก่อให้เกิด otitis, keratitis, acute หรือ chronic invasive sinusitis และการติดเชื้อที่ปอดในบุคคลที่มีภูมิคุ้มกันบกพร่อง A. flavus เป็นเชื้อก่อโรคที่พบได้มากในลำดับที่ 2 ที่รองมาจาก A. fumigatus ในการก่อโรค invasive aspergillosis', 'โคโลนีเจริญเติบโตได้รวดเร็วประมาณ 3 วัน เมื่อทำการเลี้ยงบน Czapek Dox agar จะให้โคโลนีเม็ดทราย(granular) แบน และบางครั้งจะเห็นการแผ่กระจาย สีโคโลนีในตอนแรกเป็นสีเหลือง เมื่อเวลาผ่านไปจะเริ่มมีสีที่สว่างขึ้นจนถึงสีเขียวอมเหลือง', 'พบสายราใส มีผนังกั้น(septate hyphae) ก้านชูโคนิเดีย(conidiophore) มีผิวที่ขรุขระ ที่หัวโคนิเดีย(conidial head)มีการแผ่กระจายเป็นรัศมี(radiate) ต่อมาจะมีการจัดเรียงตัวแบบหลวมๆ พบ phialide เป็น 2 ชั้น(biseriate) และสามารถพบ phialide ต่อโดยตรงจากหัวโคนิเดียได้(uniseriate) ลักษณะโคนิเดียเป็นทรงกลม สีเขียวอ่อน มีหนาม มี vesicle ที่เป็นทรงกลม', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(NULL, 'F14_A_flavus(PIC2).jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 'F14_A_flavus(PIC3).jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 'F14_A_flavus(PIC4).jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'F15_A_fumigatus(PIC1).jpeg', 'Aspergillus fumigatus', 'A. fumigatus เป็นเชื้อก่อโรคในมนุษย์เป็นหลัก และเชื้อกลุ่มนี้ยังมีหลาย complex จากการศึกษาพบว่าสัตว์และมนุษย์อาจเกิดการติดเชื้อได้จากหลายสายพันธุ์ เช่น A. lentulus, A. fumigatiaffinis, A. fumisynnematus และ A. felis', 'โคโลนีเจริญเติบโตได้รวดเร็วประมาณ 3 วัน โคโลนีให้สีเขียวแกมน้ำเงิน มีพื้นผิวที่คล้ายกับหนังกลับด้าน(suede) หรือคล้ายกำมะหยี่', 'พบสายราใส มีผนังกั้น(septate hyphae) มีก้านชูโคนิเดีย(conidiophore)ที่สั้น มีผนังเรียบ ฃมีลักษณะเป็นรูปกรวยปากกว้างที่ปลายของ vesicle(conical shaped) มี phialide ชั้นเดียว ติด 2 ใน 3 บนหัวของ vesicle ในแนวชนานกับแกนของก้านชูโคนิเดีย(columnar conidial head)', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(NULL, 'F15_A_fumigatus(PIC2).jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 'F15_A_fumigatus(PIC3).jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 'F15_A_fumigatus(PIC4).jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'F16_A_terreus(PIC1).jpeg', 'Aspergillus terreus', 'Aspergillus terreus ปกติพบในดิน และมีรายงานว่าสามารถเป็นเชื้อก่อโรคทั้งในมนุษย์และสัตว์ได้', 'โคโลนีใช้เวลาในการเจริญเติบโตประมาณ 5 วัน โคโลนีมีลักษณะคล้ายหนังกลับด้านหรือคล้ายกำมะหยี่ มีสีน้ำตาลแดง(cinnamon) จนไปถึงสีเหลืองน้ำตาล ใต้โคโลนีมีสีเหลืองจนถึงสีน้ำตาลเข้ม', 'พบสายราใส มีผนังกั้น(septate hyphae) ก้านชูโคนิเดีย(conidiophore)ใส มีผนังเรียบ มี phialide แตกแขนงเป็น 2 ชั้น(biseriate) ลักษณะของ phialide มีความยาวที่พอๆ กับ metulae phialide มีการเรียงตัวชิดติดกันและติดขนานกับแกนของก้านชูโคนิเดีย(compactly columnar)', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(NULL, 'F16_A_terreus(PIC2).jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 'F16_A_terreus(PIC3).jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'F17_A_niger.jpeg', 'Aspergillus niger', 'เชื้อชนิดนี้เป็นหนึ่งในเชื้อที่พบได้บ่อยและง่ายในการวิเคราะห์ จำแนกสายพันธุ์ในวงศ์ของ Aspergillus โดยสายพันธุ์นี้มักพบได้บ่อยใน aspergillomas และสามารถก่อให้เกิด otomycosis ได้ด้วย', 'โคโลนีเจริญเติบโตได้รวดเร็วประมาณ 2 วัน โคโลนีมีผิวเป็นเม็ดทราย(granular) มีสีน้ำตาลจนไปถึงสีดำ บางครั้งอาจมีขอบขาว หรือเหลืองที่บริเวณภายนอกสุดได้', 'พบสายราใส มีผนังกั้น(septate hyphae) ก้านชูโคนิเดียใสและจะเป็นสีดำขึ้นเรื่อยๆ ส่วน vesicle มี phialide สีดำ 2 ชั้น(biseriate) ติดรอบหัวของ vesicle มี conidia รูปร่างกลม หยาบ เป็นสีดำ', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(18, 'F18_Acremonium (PIC1)', 'Acremonium spp.', 'สกุล Acremonium ประกอบไปด้วยหลากหลายสายพันธุ์ แต่ส่วนมากเป็นราที่ย่อยสลายพวกซากพืชที่ตายแล้วและดิน มีหลายสายพันธุ์ เช่น A. recifei และ A. alabamense ที่เป็นเชื้อฉวยโอกาสในมนุษย์และสัตว์ โดยก่อโรค mycetoma, mycotic keratitis และ onychomycosis', 'โคโลนีเจริญเติบโตได้ช้า ลักษณะโคโลเป็นเม็ดแป้ง(powdery) หรืออาจเป็นหนังกลับด้าน(suede) ได้ โคโลนีสามารถมีสีขาว เทา ชมพู โรสหรือสีส้มได้ ใต้โคโลนีมีสีเหลือง บางครั้งโคโลนีมีการอัดแน่นและชื้นได้', 'พบสายราใส มีผนังกั้น(หeptate hyphae) มีก้านชูโคนิเดียที่ยาว เรียว(delicate) คล้ายเส้นผม (hair-in appearance) มีโคนิเดียมักเป็นเซลล์เดียว มีสีใสหรืออาจพบสีในโคนิเดียได้แต่ยาก โคนิเดียกลมจนไปถึงทรงรูปกระบอก หรือเป็นรูปรี (elliptical) มักพบการเกาะกลุ่ม conidia ที่ปลายหัวของแต่ละ phialide', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(NULL, 'F18_Acremonium (PIC2)', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 'F18_Acremonium (PIC3).jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'F19_Exophiala_jeanselmei(PIC1)F19_Exophiala_jeanselmei(PIC2)F19_Exophiala_jeanselmei(PIC3)F19_Exophiala_jeanselmei(PIC4).jpeg', 'Exophiala jeanselmei', 'Exophiala jeanselmei มีการแพร่กระจายไปทั่วโลก และมีบันทึกว่าเป็นตัวที่ก่อให้เกิด mycetoma และ phaeohyphomycosis ในมนุษย์', 'โคโลนีเจริญเติบโตช้าประมาณ 15 วัน ตอนแรกเริ่มโคโลนีจะมีความนุ่ม มีสีเขียวอมเทาจนไปถึงสีดำ โคโลนีเยิ้มคล้ายกับยีสต์ เมื่อแก่ขึ้นจะมีการยกตัวนูนขึ้น และมีการกระจุกของสายราอากาศ(aerial mycelium) ใต้โคโลนีมีสีเขียวมะกอกจนถึงดำ', 'พบสายราเข้ม มีผนังกั้น(septate hyphae) ที่ส่วนปลายก้านชูโคนิเดีย(annellide) จะมีสีเข้มกว่าสายราส่วนอื่นๆ อีกทั้งพบ budding cell จำนวนมากมีลักษณะเป็นวงรี พบได้ในเชื้อราตัวอ่อน เมื่อแก่ขึ้น budding cell จะมีขนาดใหญ่ เป็นรูปวงรีกว้าง(germinating cells)', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(20, 'F20_Phialophora_verrucosa(PIC1)F20_Phialophora_verrucosa(PIC2)F20_Phialophora_verrucosa(PIC3)', 'Phialophora verrucosa', 'สกุลของ Phialophora มีสมาชิกมากกว่า 40 สายพันธุ์ และส่วนมากพบราในดินหรือในซากไม้เป็นหลัก P. verrucosa เป็นตัวหลักทีก่อให้เกิด chromoblastomycosis อีกทั้งยังมีรายงานว่าสามารถก่อให้เกิด endocarditis, keratitis, และ osteomyelitis', 'โคโลนีเจริญเติบโตได้ช้า เริ่มต้นมีลักษณะโคโลนีเป็นรูปโดม(dome-shaped) ภายหลังจะแบนลง จนคล้ายกำมะหยี่ โคโลนีให้สีน้ำตาลถึงดำ ใต้โคโลนีมีสีน้ำตาลลอมดำ', 'พบสายรามีสีน้ำตาล มีผนังกั้น(brown septate hyphae) มี phialide คล้ายรูปแจกัน(flask shaped) หรือเป็นรูปไข่ที่มีปลายปิดเป็นทรงกรวย มีปากแจกัน ที่เรียกว่า collarette เป็นสีดำ ส่วนโคนิเดียมีสีใส ผนังบาง เป็นวงรีหรือรูปไข่ และบ่อยครั้งจะพบการเกาะกลุ่มอยู่ที่ส่วนหัวของ phialide', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(21, 'F21_Curvularia_spp.jpeg', 'Curvularia spp.', 'สกุลของ Curvularia ประกอบไปด้วย 80 กว่าสายพันธุ์ โดยส่วนมากเป็นเชื้อราที่อยู่ในดิน หรือเชื้อก่อโรคในพืช โดยสมาชิกในกลุ่มนี้เดิมชื่อ B. australiensis, B. hawaiiensis และ B. spicifera ต่อมาได้มีการศึกษา phylogenetic จึงทำการจัดจำแนกและย้ายมาสู่สกุล Curvularia', 'โคโลนีเจริญเติบโตได้รวดเร็ว มีลักษณะคล้ายหนังกลับด้านจนถึงปุยนิ่ม(downy) มีสีน้ำตาลอมดำ ใต้โคโลนีมีสีน้ำตาลถึงดำ', 'พบสายราสีดำ มีผนังกั้น(black septate hyphae) ก้านชูโคนิเดีย(condiophore) ตั้งชู ตรง มีผนังกั้น บ่อยครั้งจะมีการงอ(เพื่อเกิดการสร้าง conidia เป็นกระจุก) ส่วนโคนิเดียเป็นรูปไข่ มีความโค้ง และภายในโคนิเดียมีผนังกั้นตามขวาง มีการป่องตรงเซลล์ที่ 2 ถึง 3 มีสีน้ำตาลอมแดงจนถึงสีน้ำตาลมืด โดยปกติโคนิเดียจะมี 3-5 เซลล์', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(22, 'F22_Sporothrix_schenckii(PIC1)F22_Sporothrix_schenckii(PIC2)F22_Sporothrix_schenckii(PIC3)F22_Sporothrix_schenckii(PIC4)', 'Sporothrix schenckii', 'Sporothrix schenckii complex เป็นราสองรูป(dimorphic fungi) และมีการแพร่กระจายไปทั่วโลกโดยเฉพาะอย่างยิ่งในภูมิภาคร้อนชื้น เชื้อราชนิดนี้มักพบในดิน และซากผักผลไม้เป็นหลัก แต่สามารถเป็นเชื้อก่อโรคในมนุษย์ได้', 'เมื่อเลี้ยงที่อุณหภูมิ 25 °C จะเติบโตได้ช้า โคโลนีเรียบเป็นมันคล้ายขี้ผึ้ง(glabrous) ชื้น มีรอยหยิกและรอยพับที่พื้นผิว บาง strain สามารถสร้างสายราอากาศแบบสั้นๆ ได้ และให้สีตั้งแต่สีขาวจนไปถึงครีมหรือไปถึงดำ', 'พบสายราใส มีผนังกั้น(septate hyphae) มีก้านชูโคนิเดียที่ชูขึ้นเป็นมุม มีผนังบาง มีโคนิเดียกระจุกกันเป็นกลุ่มบนสายราโดยเห็นลักษณะเป็นการแตกกอ(sympodial proliferation) บนก้านชูโคนิเดีย ซึ่งเหมือนลักษณะของดอกไม้ โคนิเดียมีลักษณะรี รูปไข่ ยืดยาว สีใส ผนังบาง', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(NULL, NULL, NULL, 'Sporotrichosis เป็นโรคติดเชื้อราเรื้อรังที่ส่วนของเนื้อเยื่อผิวหนัง หรือใต้ผิวหนังหรือที่ต่อมน้ำเหลืองซึ่งอยู่บริเวณติดกัน เมื่อมีการติดเชื้อทุติยภูมิ (Secondary infection) สามารถแพร่กระจายไปยัง ข้อ กระดูก', NULL, NULL, NULL, NULL, NULL),
(23, 'F23_Paecilomyces_spp(PIC1).jpeg F23_Paecilomyces_spp(PIC2).jpeg F23_Paecilomyces_spp(PIC3).jpeg', 'Paecilomyces spp.', 'สกุล Paecilomyces สามารถจำแนกออกจากสกุลที่ใกล้เคียงได้นั้นคือ Penicillium โดยที่จะมี phialide ที่เรียวยาว แตกแขนง(slender divergent phialide) และโคโลนีจะไม่สามารถเป็นสีเขียวได้', 'โคโลนีสามารถเจริญเติบโตได้ประมาณ 3 วัน เติบโตได้รวดเร็ว ลักษณะโคโลนีเป็นผงแป้ง(powdery) หรือหนังกลับด้าน(suede) โคโลนีมีสีทอง เขียวทอง เหลืองน้ำตาล สีม่วงหรือสีแทน แต่จะไม่พบสีน้ำเงินหรือสีเขียวน้ำเงินเหมือน Penicillium spp.', 'พบสายราใส มีผนังกั้น(Septate hyphae) phialide มีการป่องออกที่ส่วนฐาน มีความเรียวยาว(tapering) คล้ายกับนิ้วมือ โคนิเดียค่อนข้างรี มีผิวเรียบหรือหยาบ เรียงต่อกันเป็นโซ่ยาว เบนออกจากก้านชูโคนิเดีย', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(NULL, NULL, NULL, 'Paecilomyces เป็นราที่พบในสิ่งแวดล้อมได้ และพบว่ามีนัยสำคัญที่สอดคล้องกับการติดเชื้อในมนุษย์ สายพันธุ์ของ Paecilomyces ที่สำคัญประกอบไปด้วย P. variotii และ P. marquandii ก่อให้เกิด mycotic keratitis และ hyalohyphomycosis ในผู้ป่วยที่มีภูมิคุ้มกันบกพร่อง', NULL, NULL, NULL, NULL, NULL),
(24, 'F24_Basidiobolus_meristosporus(PIC1)F24_Basidiobolus_meristosporus(PIC2).jpeg', 'Basidiobolus meristosporus', 'Basidiobolus meristosporus มีอยู่ทั่วไปในพืชผักผลไม้ที่เน่าเปื่อย และยังอยู่ในลำไส้เล็กของกบ คางคก จิ้งจกแบบภาวะเกื้อกูล(commensalism) เชื้อราชนิดนี้สามารถพบได้ในภูมิภาคเขตร้อนของแอฟริกาและเอเชีย ซึ่งได้แก่ อินเดีย อินโดนีเซีย และ ออสเตรเลีย', 'โคโลนีเจริญเติบโตได้รวดเร็วปานกลางที่อุณหภูมิ 30 °C มีลักษณะโคโลนีแบน สีเทาอมเหลือง จนถึงสีเทาอมครีม สามารถมีรอยพับได้ เมื่อมี mycelium เติบโต จะพบลักษณะโคโลนีเป็นผงแป้ง(powdery)', 'พบสายราดิน(vegatative hyphae) ขนาดใหญ่ เป็นวงกลมจำนวนมาก มีผนังบาง ส่วน zygospore มีผนังที่หนาซึ่งหากอยู่ติดกันจะคล้ายจะงอยปาก(beak-like appendages) ก้านชูสปอร์มีพื้นด้านล่างบวม มี conidia โดยจะมี primary conidia ลักษณะเป็นทรงกลม เซลล์เดี่ยว อยู่แยกจากก้านชูสปอร์(sporophore) และ secondary (replicative) conidia มีรูปร่างคล้ายกระบอง(clavate shaped) อยู่เป็นเซลล์เดี่ยว และจะถูกปล่อยออกมาจากก้านชูสปอร์ ส่วนปลายของสปอร์มี knob ยื่นออกมา', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(25, 'F25_Cylindrocarpon_spp.jpeg', 'Cylindrocarpon spp.', 'สกุล Cylindrocarpon สามารถพบได้ในดิน', 'โคโลนีเจริญเติบโตได้รวดเร็ว มีพื้นผิวคล้ายหนังกลับด้าย(suede) หรือคล้ายขนสัตว์(wooly) โคโลนีมีสีใสหรือสีออกไปทางสว่าง', 'พบสายราใส มีผนังกั้น(septate hyphae) มีก้านชูโคนิเดีย มี phialide กระจุกเป็นช่อ(verticillate phialide) รอบก้านชูโคนิเดีย คล้ายแปรงทาสี(brush-like structure) phialide มีลักษณะเป็นปากแจกัน(collarette) ขนาดเล็ก', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(NULL, NULL, NULL, NULL, NULL, 'พบ macroconidia ที่มีผนังกั้น 1 เซลล์จนถึงไปหลายเซลล์ ใส รูปร่างตรงหรือโค้ง มีปลายมนแต่ฐานแบนแคบ และพบ microconidia อยู่เป็นเซลล์เรียงเดี่ยว มีสีใส แยกออกจาก macroconidia ได้อย่างชัดเจน อาจพบ chlamydospore ที่มีสีใสจนน้ำตาล อยู่เป็นกลุ่ม ปลาย หรือในสายก็ได้', NULL, NULL, NULL),
(26, 'F26_Conidiobolus_spp(PIC1).jpeg F26_Conidiobolus_spp(PIC2).jpeg', 'Conidiobolusspp', 'เชื้อในสกุลของ Conidiobolus มีการผลิต primary conidia จำนวนหลายเซลล์ และ secondary (replicative) conidia บนก้านชูโคนิเดียที่ไม่แตกแขนงในส่วนบน ในปัจจุบันสกุลของ Conidiobolus ประกอบไปด้วยมากกว่า 27 สายพันธุ์ แต่จากรายงานพบว่า Conidiobolus coronatus, C. incongruus และ C. lamprauges สามารถก่อให้เกิดการติดเชื้อในมนุษย์และสัตว์ได้', 'โคโลนีเจริญเติบโตได้รวดเร็ว โคโลนีแบน เรียบมันคล้ายขี้ผึ้ง(glabrous) มีสีครีม ต่อมาจะมีรอยพับบนพื้นผิวโคโลนี โคโลนีคล้ายผงแป้ง(powdery) และมีสายราสีขาวบนพื้นผิวจะ เมื่อแก่มากขึ้น โคโลนีจะมีสีแทนจนถึงสีน้ำตาล', 'พบก้านชูโคนิเดียมีการฟอร์มตัวแบบเดี่ยว และมีโคนิเดียที่ส่วนท้ายเป็นทรงกลม เป็นเซลล์เดียว และมีปุ่มยื่นออกมาคล้ายลิ้น(papilla-like appearance) โคนิเดียจะมีลักษณะคล้ายเส้นผมที่เป็นระยางค์ต่อกัน(hair-like appendages) เรียกว่า villae', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(27, 'F27_Exserohilum_spp(PIC1).jpeg F27_Exserohilum_spp(PIC2).jpeg', 'Exserohilum spp.', 'สกุลของ Exserohilum ประกอบไปด้วยประมาณ 35 สายพันธุ์ และสามารถแบ่งแยกออกจากสกุลของ Bipolaris และ Dreschlera โดย conidia มีลักษณะเป็น truncated hilum มีหลายสายพันธุ์ของ Exserohilum ที่ก่อให้เกิด phaeohyphomycosis ในปี 2014 ได้พบรายงานว่า E. rostratum เกี่ยวข้องกับการระบาดที่ทำให้เกิดการไขสันหลังอักเสบจากเชื้อรา(fungal meningitis)', 'โคโลนีมีผิวหน้าคล้ายหนังกลับด้าน(suede) จนขนปุย(floccose) มีสีเทาจนน้ำตาลอมดำ ใต้โคโลนีมีสีเขียวมะกอกถึงดำ', 'พบโคนิเดียแบบตรงหรืองอ เป็นทรงกระสวยหรือวงรี และมีการฟอร์มตัวของ poroconidia แบบช่อกระจุกยืดยาวไปตรงก้านชูโคนิเดีย โคนิเดียมีลักษณะเป็นท่อน(truncate hilum) มีผนังขรุขระ หนาและมืด', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(28, 'F28_Paracoiothyrium_spp(NOTCOMPLETE) .jpeg', 'Paraconiothyrium spp.', 'เชื้อกลุ่มนี้เป็นเชื้อราชั้นสูง(ascomycetes fungi) พบได้ทั่วไปในสภาพแวดล้อมที่มีดินทั่วโลก เชื้อราในสกุลนี้หลายๆสายพันธุ์เป็นเชื้อก่อโรคในพืช และทำให้เกิดความเสียหายต่อเศรษฐกิจทางการเกษตร', 'โคโลนีใช้เวลาในการเจริญเติบโตประมาณ 10 วัน โคโลมีพื้นผิวที่นิ่ม เรียบมันคล้ายขี้ผึ้ง(glabrous) พบสายราไม่มีสี โคโลนีมีสีเหลืองอ่อน จนถึงสีเหลืองน้ำตาล(ochreous) ส่วนสายราอากาศมีสีขาว คล้ายขนแมว(fluffy) ใต้โคโลนีไม่มีสี', 'พบสายราใส มีผนังกั้น(septate hyphae) มีโคนิเดียสีน้ำตาลอมแดง ผนังหนา ภายในมีช่องว่าง ลักษณะโคนิเดียเป็นรูปทรงกระบอก ส่วน phialide มีการยื่นเข้าไปในช่องว่างของ conidia', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(29, 'F29_Syncephalastrum_spp(PIC1).jpeg F29_Syncephalastrum_spp(PIC2).jpeg F29_Syncephalastrum_spp(PIC3).jpeg F29_Syncephalastrum_spp(PIC4).jpeg', 'Syncephalastrum spp.', 'Syncephalastrum ประกอบไปด้วยหลายสายพันธุ์ แต่สายพันธุ์ที่พบการก่อโรคในมนุษย์ ได้แก่ Syncephalastrum racemosum เชื้อราชนิดนี้สามารถพบได้ในดิน และมูลสัตว์ ซึ่งพบได้ในภูมิภาคร้อนชื้นและกึ่งร้อนชื้น', 'โคโลนีมีการเจริญเติบโตรวดเร็ว ลักษณะพื้นผิวโคโลนีคล้ายขนแมว(fluffy) หรือปุยสำลี(cottony) สีขาวจนถึงสีเทาสว่าง กลายเป็นสีเทาเข้มขึ้นเมื่อมีการพัฒนา sporangia', 'พบสายราสีน้ำเงิน มีผนังกั้น(blue septate hyphae) มีก้านชูสปอร์ตั้งตรง ลักษณะคล้ายไหล (Stolen-like) ของพืช มีการแตกกิ่งแบบเป็นช่อๆ(sympodial branching) มี merosporangia สีจางๆ ผนังบาง มีจำนวน 5-10 อัน สูงสุด 18 อัน รูปร่างทรงกลมจนไปถึงรูปไข่ พบ merospores ภายในมีผนังบาง', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(30, 'F30_Trichothecium_spp.jpeg', 'Trichothecium spp.', 'Trichothecium sppเป็นราสายที่พบในดินและพืชผักที่มีการย่อยสลาย มีการแพร่กระจายไปทั่วโลก ปัจจุบันยังไม่พบรายงานการก่อโรคในมนุษย์และสัตว์', 'โคโลนีเจริญเติบโตได้รวดเร็ว เชื้อราชนิดนี้ไม่สามารถเจริญเติบโตได้ที่อุณหภูมิ 37°C โคโลนีมีลักษณะคล้ายเม็ดทราย(granular) แบน และอาจมีลักษณะคล้ายผงแป้งได้(powdery) สีโคโลนีเริ่มต้นเป็นสีขาว ต่อมากลายเป็นสีชมพูอ่อนจนถึงสีพีช ใต้โคโลนีมีสีอ่อน', 'พบสายราใส มีผนังกั้น(hyaline septate hyphae) มีก้านชูโคนิเดียที่ยาว ไม่แตกแขนง มีโคนิเดีย 2 เซลล์ มีผนังกั้นระหว่างเซลล์ สีใส ผนังบาง มีลักษณะเป็นรูปลูกแพร(pear shaped) หรือรูปกระบอง(club shaped) บ่อยครั้งพบการเรียงตัวของโคนิเดียเป็นกลุ่มตามแนวยาวของ conidiophore ทำให้เกิดการทับกันมีรูปแบบเป็นซิกแซก(zigzag pattern)', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(31, 'F31_Cladosporium_spp(NOTSURE).jpeg', 'Cladosporium spp.', 'Cladosporiumสามารถพบได้ทั่วโลก เชื้อราชนิดนี้ทำการเพาะแยกได้มาจาก ดินหรือสสารอินทรีย์ต่างๆ หากสูดดมทางอากาศจะมีโอกาสได้รับเข้าไป เชื้อราชนิดนี้เป็นเชื้อราที่ทนความร้อน และเป็นเชื้อก่อโรคที่แท้จริงในมนุษย์', 'โคโลนีเจริญเติบโตได้ช้า สีโคโลนีเป็นสีเขียวมะกอกอมน้ำตาล จนถึงสีดำอมน้ำตาล แต่บางครั้งสามารถมีสีเทา หรือน้ำตาลได้ ผิวโคโลนีคล้ายหนังกลับด้าน(suede) และจะคล้ายผงแป้ง(powdery) เมื่อเริ่มสร้าง conidia ใต้โคโลนีมีสีเขียวมะกอกอมดำ', 'พบสายรา มีผนังกั้น(septate hyphae) มีก้านชูโคนิเดีย(conidiophore) ที่ตั้งตรงอาจจะแตกแขนงส่วนปลายหรือไม่แตกก็ได้ พบลักษณะโคนิเดียสีดำ จำนวน 1-4 เซลล์ มีผนังบาง มีลักษณะคล้ายโล่(shield-like shaped) สายโคนิเดียจะมีการกระจุกกันเป็นช่อตลอดแนวยาวของก้านชูโคนิเดีย', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(32, 'F32_Curvularia_hawaiiensis(Bipolaris hawaiiensis).jpeg', 'Bipolaris spp.', 'Bipolaris เป็นกลุ่มราดำ พบได้ในสิ่งแวดล้อมและสามารถเพาะแยะได้จากเศษซากพืชและดิน เชื้อรากลุ่มนี้มีหลายสายพันธุ์ แต่สายพันธุ์ที่เป็นที่รู้จักและก่อโรคได้แก่ Bipolaris spicifera, Bipolaris australiensis, และ Bipolaris hawaiiensis(ปัจจุบันชื่อ Curvularia hawaiiensis) เชื้อราชนิดนี้สามารถก่อโรค Phaeohyphomycosis ได้', 'โคโลนีเจริญเติบโตได้รวดเร็ว โคโลมีสีขาวจนน้ำตาลอมเทา และจะกลายเป็นสีเขียวมะกอกถึงดำ เมื่อแก่ขึ้น ผิวโคโลนีคล้ายขนสัตว์(wooly)', 'พบสายรามีผนังกั้น สีน้ำตาล(brown septate hyphae) มีก้านชูโคนิเดีย(conidiophore) เป็นสีน้ำตาล แตกแขนง หรือเป็นช่อ พบลักษณะของก้านชูโคนิเดียเป็น zigzag(zigzag-like appearance) มี poroconidia 3-6 เซลล์ เป็นรูปกระสวยถึงทรงกระบอก', NULL, '-', 'Lactophenol Cotton Blue(LPCB)'),
(33, 'F33_T_marneffei_Binaryfission(PIC1).jpeg F33_T_marneffei_Binaryfission(PIC2).jpeg F33_T_marneffei_Binaryfission(PIC3).jpeg F33_T_marneffei_Binaryfission(PIC4).jpeg', 'Talaromyces marneffei (Binary Fission)', 'เป็นเชื้อที่มีคุณสมบัติเป็น thermal dimorphism คือมีการเจริญ 2 แบบ แบบแรกเปนการเจริญในอุณหภูมิ ประมาณ 25 องศาเซลเซียส ซึ่งเปนอุณหภูมิที่เชื้อ นี้อาศัยอยูในธรรมชาติแบบอิสระ(saprophytic) แบบที่สองเป็นการเจริญขึ้นในขณะที่ก่อพยาธิสภาพในคน(ที่อุณหภูมิ 37 องศาเซลเซียส)', 'เห็น histiocytes ขยายกว้างออกไปเรื่อย ๆ บริเวณตอนกลางก็จะเกิดเป็นเนื้อตาย เชื้อจะหลุด ออกมา มี neutrophils เข้ามาเกิดเป็นฝีหนองตรง กลาง เชื้อราใน histiocytes เป็นลักษณะคลายยีสต์ รูปร่างกลมหรือรี ขนาดเส้นผ่าศูนย์กลางประมาณ 3 ไมครอน', 'เชื้อราที่อยู่นอกเซลล์จะตัวใหญ่ ยาว กว่าที่อยู่ในเซลล์ มีลักษณะคล้ายไส้กรอก มีผนังกั้นแบ่งกลาง ชัดเจนและเป็นลักษณะจําเพาะซึ่งใช้แยก Talaromyces marneffei จาก Histoplasma capsulaum', NULL, 'Pus', 'gram stain'),
(1, 'B01_Micrococcus_spp(PIC1).jpeg B01_Micrococcus_spp(PIC2).jpeg', 'Micrococcus', 'Micrococcus สามารถพบเจอได้หลากหลายที่ เช่น ผิวหนังมนุษย์ น้ำ ฝุ่นและดิน เดิมที่แบคทีเรียชนิดนี้เป็นแบคทีเรียที่ไม่มีความอันตรายใด ๆ แต่สามารถพบได้ยากในการก่อให้เกิดการติดเชื้อ ซึ่งบ่อยครั้งมักพบในผู้ป่วยที่มีภูมิคุ้มกันบกพร่อง โดยเฉพาะอย่างยิ่งในคนไข้ HIV เชื้อ Micrococcus หลักๆ ที่สามารถพบได้ประกอบไปด้วย 9 สายพันธุ์ ดังนี้', 'โคโลนีมีลักษณะกลม เนียน อาจมีการนูนออก ขอบเรียบ มีสีโคโลนีออกแนวสีเหลืองทอง หรือ สีแดง บางสายพันธุ์สามารถพบโคโลนีที่มีความหยาบ ผิวด้านได้', 'เป็น gram positive ที่มีรูปร่างเป็น วงกลม(spherical) มักอยู่เป็นคู่(in pairs) , เป็นเซลล์ 4 เซลล์ติดกัน(in tetrads) , หรือเป็นเซลล์รวมตัวกันหลายๆเซลล์(in cluster) ไม่พบการจัดเรียงตัวเป็นสาย มีขนาดประมาณ 0.5 – 2.0 ไมครอน ไม่มี capsule และ spore', 'Catalase – positive', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Oxidase – weakly positive and/or negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Glucose fermenter', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Tube coagulase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Bacitracin – sensitive', NULL, NULL),
(2, 'B02_S_aureus(PIC1).jpeg B02_S_aureus(PIC2) .jpeg', 'Staphylococcus aureus', 'Staphylococcus เป็นจุลินทรีย์ในวงศ์ Micrococcaceae สามารถพบเชื้อนี้ได้ตามผิวหนัง โพรงจมูก เยื่อบุทางเดินหายใจ ทางเดินอาหาร และบาดแผลที่เป็นฝีหนอง รวมถึงในดินฝุ่นละออง สามารถก่อให้เกิดการติดเชื้อจากแบคทีเรียในมนุษย์ได้หลากหลายอย่าง เช่น  bacteremia, infective endocarditis, skin and soft tissue infections osteomyelitis, septic arthritis, prosthetic device infections, pulmonary infections(ปอดบวม และ ถุงลุมโป่งพอง) gastroenteritis, meningitis, toxic shock syndrome(TSS) และ urinary tract infections', 'เชื้อนี้สามารถเจริญได้ที่อุณหภูมิ 6 – 46 °C โดยมีช่วงอุณหภูมิที่เหมาะสมคือ 30 – 37 °C ทนความร้อนถึง 60 °C นาน 30 นาที ลักษณะโคโลนีพบว่ากลม ขอบเรียบ นูน มีสีครีม เหลืองหรือส้ม', 'เป็น gram positive bacteria มีรูปร่างเป็น cocci มีการจัดเรียงเป็นกลุ่มคล้ายองุ่น(grape-like cluster) แต่อาจะพบเป็นเซลล์เดี่ยว เป็นคู่หรือสายสั้นๆได้ (มักไม่เกิน 4 เซลล์) มีขนาด 0.5 – 1.0 ไมครอน', NULL, NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, 'บน Blood agar ให้  -hemolysis', NULL, NULL, NULL, NULL),
(3, 'B03_S_epidermidis.jpeg', 'Staphylococcus epidermidis', 'S. epidermidis เป็น facultative anaerobe โตได้ดีในสภาวะที่มีออกซิเจน เชื้อนี้จะทำการเจริญเติบโตที่ ผิวหนังมนุษย์ และสามารถก่อให้เกิดการติดเชื้อจากโรงพยาบาลได้(hospital-acquired infections) โดยเชื้อชนิดนี้มักจะตรวจพบได้ในน้ำลาย และคราบหินปูนซึ่งมีความสัมพันธ์กับ  periodontitis, acute and chronic pulpitis, dry socket, และ ปากนกกระจอก(angular stomatitis) แบคทีเรียชนิดนี้จัดอยู่ในหมวด Coagulase negative staphylococcus(CoNS)', 'โคโลนีมีสีขาว ผิวเนียน ยกตัวนูน โคโลนีมีความเหนียว ขนาดประมาณ 1-2 ไมครอน', 'เป็น gram positive bacteria รูปร่าง cocci มีการจัดเรียงตัวเป็นกลุ่ม 4 ก้อน(in tetrads) หรือเป็นแบบกลุ่ม(in cluster) มีขนาดเซลล์ 0.5 – 1.5 ไมครอน', 'Catalase – positive', 'Blood (Hemoculture)', 'gram stain'),
(NULL, NULL, NULL, NULL, 'บน Blood agar ไม่พบการเกิด hemolysis', NULL, 'Oxidase - negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Tube coagulase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'ornithine decarboxylase(ODC) – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Novobiocin – susceptible', NULL, NULL),
(4, 'B04_S_saprophyticus.jpeg', 'Staphylococcus saprophyticus', 'Staphylococcus saprophyticus', 'โคโลนีสีขาวสว่าง ผิวเรียบ นูน ลักษณะคล้ายครีม(creamy colonies) ไม่พบการเกิด hemolysis บน Blood Agar', 'เป็น gram positive bacteria รูปร่าง cocci มีการจัดเรียงตัวเป็น กลุ่ม(in cluster) คล้ายองุ่น(grape-like appearance) หรือเป็นคู่ (in pairs)', 'Catalase – positive', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Oxidase - negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Tube coagulase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Novobiocin - resistant', NULL, NULL),
(5, 'B05_S_lugdunenesis.jpeg', 'Staphylococcus lugdunenesis', 'Staphylococcus lugdunensis', 'โคโลนีสีขาว มันวาว กึ่งเงา นูน มีขนาดโคโลนี 1-3 ไมครอน มีกลิ่นคล้ายหญ้าแห้ง(hay-like odor) พบ-hemolysis บน Blood Agar', 'เป็น gram positive bacteria รูปร่าง cocci มีการจัดเรียงแบบเป็นกลุ่ม(in cluster)', 'Catalase – positive', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, 'เมื่อโคโลนีแก่ขึ้นจะให้สีเหลืองขาว คล้ายได้', NULL, 'Oxidase - negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Tube coagulase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Novobiocin - susceptible', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'pyrrolidonyl arylamidase (PYR) – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'ornithine decarboxylase(ODC) – positive', NULL, NULL),
(6, 'B06_S_hominis.jpeg', 'Staphylococcus hominis', 'เป็นเชื้อแบคทีเรียในกลุ่ม coagulase negative staphylococci(CoNS) โดยปรกติไม่ก่อโรคมนุษย์ แต่จะอาศัยแบบเกื้อกูล(commensalism) บนผิวหนังของมนุษย์และสัตว์ในบางโอกาสก่อให้เกิดการติดเชื้อในคนไข้ที่มีภูมิคุ้มกันบกพร่อง เช่น ผู้ที่ได้รับ chemotherapy เป็นต้น', 'โคโลนีมีขนาดเล็ก มีสีขาว หรือ แทน นูน มันวาว ขนาดประมาณ 1-2 ไมครอน เติบโตได้ดีในสภาวะที่มีอากาศ ไม่พบ hemolysis บน Blood agar อุณหภูมิที่เหมาะสมในการเจริญเติบโต คือ 20-45 °C', 'เป็น gram positive cocci มีขนาดเซลล์ประมาณ 1-1.5 ไมครอน มีการจัดเรียงรูปร่างเป็นเซลล์เดี่ยว(single) หรือเป็นคู่(in pairs) หรือเป็นกลุ่ม(in cluster) ไม่มีการสร้างสปอร์และแคปซูล ไม่มีการเคลื่อนที่', 'Catalase – positive', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Oxidase - negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Tube coagulase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Novobiocin – resistance', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Arginine dihydrolase(ADH) – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'ODC - negative', NULL, NULL),
(7, 'B07_S_haemolyticus.jpeg', 'Staphylococcus haemolyticus', 'เป็นแบคทีเรียชนิดหนึ่งในกลุ่ม CoNS พบว่าเป็นส่วนหนึ่งของผิวหนังบนร่างกายมนุษย์ และพบจำนวนมากในส่วนรักแร้ ขาหนีบ และ perineum เป็นที่รู้จักกันว่าเป็นเชื้อฉวยโอกาส ที่ก่อให้เกิดการติดเชื้อทั่วระบบร่างกาย และการติดส่วนใหญ่เกี่ยวข้องกับการสอดใส่อุปกรณ์เครื่องมือทางการแพทย์ อีกทั้งยังมีอุบัติการณ์เชื้อดื้อยา methicillin resistant ที่สูงมากอีกด้วย', 'โคโลนีไม่มีสี หรือ มีสีขาวอมเหลือง ผิวเรียบ มันวาว มีขนาด 5-9 ไมครอน พบ-hemolysis บน Blood Agar', 'เป็น gram positive cocci มีการจัดเรียงเป็น in pair หรือ in cluster ขนาดเซลล์ประมาณ 0.8-1.3 ไมครอน ไม่มีการเคลื่อนที่ ไม่มีสปอร์', 'Catalase – positive', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, 'เชื้อแบคทีเรียนี้เจริญเติบโตได้ดีในสภาวะที่มีอากาศ มีอุณหภูมิที่เหมาะสมในการเจริญเติบโต อยู่ที่ 34-35 °C', NULL, 'Oxidase - negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Tube coagulase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Novobiocin – susceptible', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Arginine dihydrolase(ADH) – positive', NULL, NULL),
(8, 'B08_Strep_pyogenes.jpeg', 'Streptococcus pyogenes', 'S. pyogenes', 'โคโลนีดูเป็นเมือก ผิวหยาบ ให้-hemolysis ใช้อุณหภูมิ 37 °C ซึ่งเหมาะสมการเจริญเติบโต ไม่สามารถเจริญเติบโตได้ที่ 10°C หรือ 45°C', 'พบ gram positive cocci มีการจัดเรียงตัวเป็น สาย(in chains) อาจจะพบเป็นสายสั้น หรือ สายยาวก็ได้', 'Catalase – negative', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Oxidase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Capsule – capsulated', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Coagulase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Capsule – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Bacitracin – susceptible', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'PYR – positive', NULL, NULL),
(9, 'B09_S_agalactiae(PIC1).jpeg B09_S_agalactiae(PIC2) .JPEG', 'Streptococcus agalactiae', 'Streptococcus agalactiae', 'โคโลนีให้-hemolysis มีสีเหลือง ส้ม หรือแดงอิฐ เรียบ นูน เติบโตได้ที่ 37 °C และไม่เจริญเติบโตที่ 45 °C', 'เป็น gram positive cocci ขนาด 0.6 – 1.2 ไมครอน มีการจัดเรียงตัวเป็นสายยาว(in long chains) ไม่มีการเคลื่อนที่และไม่สร้างสปอร์', 'Catalase – negative', NULL, 'gram stain'),
(NULL, NULL, NULL, 'ที่เป็น Group B เนื่องจากการแบ่งหมวดหมู่ของ Lancefield เชื้อนี้มี polysaccharide ล้อมรอบ(เป็น capsule) และสามารถแบ่งเป็นหลายๆ serotype ได้ เช่น Ia, Ib, II–IX', NULL, NULL, 'Oxidase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Coagulase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Capsule – capsulated', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Bacitracin - resistant', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'CAMP test – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'PYR – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – negative', NULL, NULL),
(10, 'B10_S_salivarius.jpeg', 'Streptococcus salivarius', 'S. salivarius มีการเพิ่มจำนวนของเชื้อที่บริเวณ ช่องปาก(oral cavity) และทางเดินหายใจส่วนบน(upper respiratory tract) เป็นแบคทีเรียที่ไม่ก่อพยาธิสภาพในคนปกติ แต่สามารถก่อให้เกิดการติดเชื้อฉวยโอกาส(opportunistic pathogen) ได้ ซึ่งทำให้เกิดการติดเชื้อในกระแสเลือด(septicemia)', 'พบ-hemolysis หรือ-hemolysis บน Blood Agar โคโลนีมี โคโลนีสีขาวขุ่น หรือสีเทา ผิวเรียบ ขอบนูน', 'เป็น gram positive cocci มีการจัดเรียงตัวเป็น คู่(in pairs) และ สายสั้น(in short chains)', 'Arginine – negative', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Esculin – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Mannitol – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Sorbitol – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urea – variable', NULL, NULL),
(11, 'B11_S_mutans(PIC1).jpeg B11_S_mutans(PIC2).jpeg', 'Streptococcus mutans', 'S. mutans มีถิ่นที่อยู่ที่บริเวณ ปาก คอหอยและลำไส้เล็ก เชื้อแบคทีเรียชนิดนี้เป็นสาเหตุที่ทำให้เกิดคราบหินปูน(tooth decay) อย่างมีนัยสำคัญ โดยส่วนใหญ่เชื้อนี้จะก่อให้เกิดโรคทางช่องปากเป็นหลัก จากการศึกษาพบว่ามีความใกล้เคียงกับสายพันธุ์ Streptococcus sobrinus', 'โคโลนีมีขนาดเล็ก สีขาวอมเทา ผิวหยาบ มีจำนวนมากขึ้นหลังจากผ่านไป 3-4 วัน พบ-hemolysis หรือ-hemolysis ได้ แต่พบ-hemolysis ได้ยาก บาง strains อาจให้โคโลนีผิวเนียน หรือ มีเมือกมันวาวได้(mucoid)', 'เป็น gram positive cocci มีการจัดเรียงตัวเป็น สายขนาดปานกลางจนสายยาว(in medium chains จนถึง long chains) มีขนาดประมาณ 0.5-0.75 ไมครอน', 'Arginine – negative', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Esculin – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Mannitol – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Sorbitol – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – negative', NULL, NULL),
(12, 'B12_S_pneumoniae(PIC1).jpeg B12_S_pneumoniae(PIC2).jpeg', 'Streptococcus pneumoniae', 'Streptococcus pneumoniae ก่อโรค Pneumococcal disease ซึ่งทำให้ปรากฏอาการ ปอดบวม(pneumonia) การติดเชื้อที่หู ติดเชื้อที่โพรงจมูก ไขสันหลังอักเสบ และการติดเชื้อในการกระแสเลือดได้ เชื้อนี้ส่วนมากมักก่อโรคในเด็กและวัยสูงอายุ', 'บน Blood Agar พบ-hemolysis โคโลนีมีขนาด 0.5 – 1.25 ไมครอน สีเทา มีเมือก(mucoid) บางครั้งอาจพบลักษณะโคโลนีเป็นสีเขียวเหลืองได้', 'เป็น gram positive cocci มีการจัดเรียงคล้ายเข็ม(lancet shaped) (มีการยืดยาวของ cocci ออกและมีปลายมน) และส่วนมากจะอยู่เป็นคู่(diplococci) บางครั้งอาจจัดเรียงเป็นสายสั้นๆ ได้ ไม่มีการสร้างสปอร์', 'Catalase – negative', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – non-motile', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Ethyl hydrocupreine hydrochloride (Optochin) – susceptible', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Bile solubility – positive', NULL, NULL),
(13, 'B13_E_faecium.jpeg', 'Enterococcus faecium', 'E. faecium เป็นเชื้อก่อโรคในมนุษย์ และส่วนใหญ่การติดเชื้อนี้เกิดจากการติดเชื้อจากโรงพยาบาล(nosocomial infection) ซึ่งสามารถก่อให้ผู้ป่วยมีอาการ ติดเชื้อที่บริเวณแผลผ่าตัด endocarditis และ urinary tract infections ในปัจจุบันพบว่าเชื้อกลุ่มนี้มีอัตราการดื้อยาที่สูง เช่น vancomycin penicillin gentamycin tetracycline erythromycin และ teicoplanin', 'โคโลนีมีสีครีม หรือขาว ขอบเรียบ ผิวเรียบ ไม่พบ hemolysis(-hemolysis) บน Blood agar', 'เป็น gram positive cocci มีการจัดเรียงตัวเป็น คู่(in pair) และบ่อยครั้งมักพบเป็นสายสั้นๆ(in short chains) ไม่พบการสร้างสปอร์', 'Catalase-negative', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – non-motile', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'PYR- positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Acid production from starch', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Bile esculin – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '6.5% NaCl – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Arabinose – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Mannitol – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Methyl--d-mannopyranoside - negative', NULL, NULL),
(14, 'B14_E_faecalis(PIC1).jpeg B14_E_faecalis(PIC2) , B14_E_faecalis(PIC3).jpeg', 'Enterococcus faecalis', 'เชื้อนี้ถูกจัดอยู่ใน  group D Streptococcus  เป็น gram positive ที่อาศัยแบบอิงอาศัย(commensalism) ในระบบทางเดินอาหารและลำไส้ของมนุษย์และสัตว์ เชื้อชนิดนี้สามารถพบได้ในคนที่สุขภาพดี แต่สามารถก่อให้เกิดการติดเชื้อที่สามารถทำให้เสียชีวิตได้ โดยเฉพาะอย่างยิ่งการติดเชื้อจากโรงพยาบาล(nosocomial infection) ซึ่งทำให้เกิดได้รับเชื้อที่มียีนดื้อยาสูงมาก', 'โคโลนีขนาดเล็ก สีเทา มีขนาดประมาณ 1-2 ไมครอน ขอบเรียบ นูน ไม่พบ hemolysis-hemolysis) บน Blood agar', 'เป็น gram positive cocci มีการจัดเรียงตัวเป็น คู่(in pair) และบ่อยครั้งมักพบเป็นสายสั้นๆ(in short chains) ไม่พบการสร้างสปอร์', 'Catalase-negative', 'Blood', 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – non-motile', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Bile esculin – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '6.5% NaCl – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Arabinose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Mannitol – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Mannose – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Maltose - positive', NULL, NULL),
(15, 'B15_E_gallinarum.jpeg', 'Enterococcus gallinarum', 'E. galinarum เป็นเชื้อแบคทีเรียที่ยากจะพบในผู้ใหญ่และยากมากขึ้นในเด็ก เชื้อชนิดนี้มีการก่อโรค urinary tract infection, bacterial endocarditis, และ diverticulitis การติดเชื้อระบบประสาทส่วนกลางสามารถพบได้แต่ยาก', 'โคโลนีกลม ผิวเรียบ ขอบเรียบ พบ-hemolysis บน Horse Blood Agar', 'เป็น gram positive cocci มีการจัดเรียงตัวเป็นสาย(in chains) โดยอาจพบเป็นสายสั้นๆ หรือยาว และสามารถพบเป็นคู่(in pairs) ได้', 'Catalase-negative', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – motile', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Bile esculin – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '6.5% NaCl – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Sorbose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'PYR – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Methyl--d-mannopyranoside - positive', NULL, NULL),
(16, 'B16_E_avium(PIC1).jpeg B16_E_avium(PIC2).JPEG', 'Enterococcus avium', 'E. avium มีชื่อเดิมว่า group Q streptococcus เชื้อชนิดนี้ส่วนมากจะพบในนก มีโอกาสยากที่ทำให้เกิดการติดเชื้อในคน ปัจจุบันได้มีรายงานพบการติดเชื้อในกระแสเลือดซึ่งมีจำนวน 9 ราย', 'โคโลนีกลม ผิวเรียบ ขอบเรียบ พบ-hemolysis บน Blood Agar เชื้อแบคทีเรียชนิดนี้ต้องการ Folinic acid ในการเจริญเติบโต เติบโตได้ดีที่ 45 °C และสามารถทนความร้อนได้ถึง 60 °C เป็นเวลา 30 นาที', 'เป็น gram positive cocci มีการจัดเรียงตัวเป็นสาย(in chains) โดยอาจพบเป็นสายสั้นๆ หรือยาว และสามารถพบเป็นคู่(in pairs) ได้', 'Catalase-negative', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – motile', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Bile esculin – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '6.5% NaCl – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'L-arabinose – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Sorbose – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Sucrose - negative', NULL, NULL),
(17, 'B17_Corynebacterium_spp', 'Corynebacterium spp. (diphtheroid)', 'Corynebacterium species เป็นเชื้อที่มีประโยชน์(normal flora) บนร่างกายมนุษย์ โดยสารถพบได้ที่ผิวหนัง เยื่อบุผิว เยื่อเมือกและท่อระบบอาหารและลำไส้เล็ก ถึงแม้ว่าบ่อยครั้งจะถูกจำแนกว่าเป็น สิ่งเจือปนมากับตัวอย่างผู้ป่วย แต่ในบางครั้งเชื้อชนิดนี้สามารถก่อโรคได้ โดยเฉพาะอย่างยิ่งผู้ที่มีภูมิคุ้มกันบกพร่อง', 'โคโลนีมีสีเทา หรือขาว เยิ้ม นูน ขอบโค้ง โคโลนีมีการโปร่งแสงได้ (อาจพบ-hemolysis ได้)', 'เป็น gram positive pleomorphic bacilli', 'Catalase – positive', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – non-motile', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'CAMP test – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – negative', NULL, NULL),
(18, 'B18_C_diphtheriae(PIC1).jpeg B18_C_diphtheriae(PIC2) .JPEG', 'Corynebacterium diphtheriae', 'เป็นเชื้อที่ก่อให้เกิดโรคตอตีบ(diphtheria) โดยจะมีการสร้าง diphtheria toxin ซึ่งเป็นสารสำคัญในการก่อเกิดโรคคอตีบ แต่มีอีก 2 สายพันธุ์ที่สามารถสร้างได้ คือ C. ulcerans และ C. pseudotuberculosis ทั้งนี้สามารถพบเชื้อที่ไม่สร้าง toxin ได้ แต่ก็สามารถก่อโรคได้ หากมีการรุกล้ำเข้าไปยังในร่างกายมนุษย์ โดยจะทำให้เกิด การติดเชื้อในกระแสเลือด กล้ามเนื้อหัวใจอักเสบ ฝีหนองและการติดเชื้อที่กระดูกข้อต่อต่างๆ', 'โคโลนีมีขนาดใหญ่ ประมาณ 2 ไมครอน ผิวเรียบ ค่อนข้างแห้ง บาง strains สามารถให้โซน-hemolysis แบบอ่อนๆ ได้', 'เป็น gram positive pleomorphic bacilli(Irregular) ที่มีรูปร่างตรง หรือโค้งเล็กน้อย คล้ายกระบอง(club shaped) มีการจัดเรียงเป็นเซลล์เดี่ยว(in single) เป็นคู่(in pairs) เป็น “V” form และ palisade หรือมีลักษณะคล้ายอักษรจีน(chinese letters)', 'Catalase – positive', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – non-motile', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'CAMP test – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – positive', NULL, NULL),
(19, 'B19_E_rhusiopathiae(PIC1).jpeg B19_E_rhusiopathiae(PIC2).JPEG', 'Erysipelothrix rhusiopathiae', 'Erysipelothrix rhusiopathiae จัดว่าเป็นเชื้อก่อโรคในสัตว์ ทำให้เกิดโรค erysipelas ซึ่งมีผลกระทบในวงกว้างต่อ สุกร เต่า และไก่ไข่ โดยชื่อโรคในสุกรที่เป็นที่รู้จักกันคือ \"diamond skin disease\" เชื้อแบคทีเรียชนิดนี้ก่อให้เกิดการติดเชื้อจากสัตว์สู่คน ก่อให้เกิดโรค erysipeloid', 'โคโลนีมีขนาดเล็ก ประมาณ 0.3-1.5 ไมครอน ผิวเรียน นูน เมื่อเวลาผ่านไปโคโลนีจะใหญ่ขึ้นเรื่อยๆ และมีความมันเยิ้ม(opaque) ไม่พบ-hemolysis และ-hemolysis', 'เป็น gram positive bacteria มีลักษณะตรงหรือโค้งงอเล็กน้อย เป็นแท่งเรียวยาว และมักเห็นเป็น เส้นยาวๆ(long filament) มีการอยู่กันแบบเดี่ยว แบบคู่ หรือแบบกลุ่ม ไม่พบการสร้างสปอร์ ไม่มีแคปซูล', 'Catalase – negative', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Hippurate hydrolysis – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Voges-Proskauer – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Neuraminidase – positive', NULL, NULL);
INSERT INTO `sheet2` (`id`, `pic`, `name`, `name_detail`, `colony_detail`, `micro_exam`, `biochemi`, `tos`, `staining`) VALUES
(20, 'B20_Listeria_monocytogenes(PIC1).jpeg B20_Listeria_monocytogenes(PIC2).JPEG', 'Listeria monocytogenes', 'Listeria monocytogenes เป็นเชื้อแบคทีเรียที่ก่อโรค มีบทบาทสำคัญต่อความปลอดภัยของอาหาร(food safety) สามารถพบได้ในสิ่งแวดล้อมทั่วไป เชื้อชนิดนี้สามารถทนทานต่อสภาวะต่างๆ เช่น ในสภาวะที่อาหารเป็นกรด ในอาหารที่มีปริมาณน้ำต่ำๆ เชื้อนี้เป็นสาเหตุในการเกิดโรคอาหารเป็นพิษ(food poisoning) ติดต่อผ่าทางอาหาร ให้เกิดโรคโรคลิสเทอริโอสิส โรคเยื่อหุ้มสมองอักเสบ(meningitis) การติดเชื้อในกระแสเลือด(septicemia) และการแท้ง(abortion)', 'สามารถเจริญเติบโตได้ดีบน Blood Agar Nutrient agar, tryptose และ brain heart infusion agars เมื่อ พบ-hemolysis ได้บน BA เมื่อเพาะเลี้ยงเชื้อไว้ข้ามคืนพบ โคโลนีโปร่งใส มีการยกตัวนูนเล็กน้อย ไม่มีเม็ดสี มีขนาดประมาณ 1-2 มิลลิเมตร มีกลิ่นหวาน คล้ายนมหรือเนย(buttermilk-like smell)', 'พบ gram positive bacilli มีการจัดเรียงเป็นท่อนสั้นๆ(short rod) หรืออาจพบเป็น coccobacilli มีปลายมน', 'Catalase – positive', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, 'บางครั้งสามารถพบ coccoid form ได้ในการเสมียร์ของเนื้อเยื่อที่ติดเชื้อ ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'H2S production – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'CAMP test – positive with S. aureus', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR (Methyl Red) – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP (Voges Proskauer) – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease - negative', NULL, NULL),
(21, 'B21_Listeria_spp(PIC1).jpeg B21_Listeria_spp(PIC2).JPEG', 'Listeria spp.', 'Listeria spp. เป็นเชื้ออแกรมบวก รูปร่างเป็นแท่ง มีการใช้ออกซิเจนในกระบวนการสังเคราะห์พลังงาน เชื้อกลุ่มนี้ประกอบไปมากกว่า 20 สายพันธุ์ เช่น  L. aquatica, L. booriae, L. cornellensis, L. costaricensis, L. goaensis, L. fleischmannii, L. floridensis, L. grandensis, L. grayi, L. innocua, L. ivanovii, L. marthii, L. monocytogenes, L. newyorkensis, L. riparia, L. rocourtiae, L. seeligeri, L. thailandensis, L. weihenstephanensis, และ L. welshimeri เชื้อก่อโรคหลักๆ ที่พบในมนุษย์ คือ Listeria monocytogenes ซึ่งก่อให้เกิด Listeriosis เกิดการติดเชื้อในกระแสเลือด และ ไขสันหลังอักเสบ(meningitis) ได้', 'โคโลนีมีสีน้ำเงินอมเทา หรือเห็นเป็นน้ำเงินอมเขียวเมื่อเอียงเข้าหาแสง', 'เป็น gram positive bacilli มีการจัดเรียงเป็น สายสั้นๆ(short rods) หรืออาจพบเป็น coccobacilli พบเซลล์เป็นปลายมน เมื่อแก่มากขึ้น สามารถพบเป็น เส้นสายยาว(long filament) ได้', 'Catalase – positive', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Oxidase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Voges-Proskauer – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – negative', NULL, NULL),
(22, 'B22_Bacillus_cereus(PIC1).jpeg B22_Bacillus_cereus(PIC2) .JPEG', 'Bacillus_cereus', 'เป็นแบคทีเรียในกลุ่ม bacillus ที่สามารถสร้างสารพิษ(toxin) ที่ทนความร้อนได้ สามารถพบเชื้อชนิดนี้ได้ในธรรมชาติในดิน น้ำเชื้อสร้างสปอร์ซึ่งทนความแห้งแล้งได้ดี สปอร์จึงพบได้ทั่วไปในฝุ่น ควัน และ ปะปนมากับอาหารแห้ง เช่น น้ำตาล วัตถุเจือปนอาหาร  โรคที่ก่อให้เกิดหลักๆ ประกอบไปด้วย อาการอาเจียน(emetic Syndrome) และ อาการถ่ายเหลว(diarrhea syndrome)', 'โคโลนีขนาดใหญ่ มันเยิ้ม หรืออาจพบเป็นสีเหลือง ผิวโคโลนีคล้ายเม็ดทราย(granular) โคโลนีแบน พบ strong-hemolysis บน Blood Agar', 'เป็น gram positive bacilli ขนาดประมาณ 1.0-1.2 x 3.0 – 5.0 ไมครอน มี flagella ล้อมรอบเซลล์ พบ spore มีลักษณะเป็นวงรี เมื่อย้อมด้วย malachite green จะเห็นสปอร์ด้านในเป็นสีเขียว ไม่พบ capsule', 'Catalase – positive', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Oxidase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Voges-Proskauer – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Gelatin hydrolysis – positive', NULL, NULL),
(23, 'B23_Bacillus_subtilis(PIC1).jpeg B24_Bacillus_subtilis(PIC2).JPEG', 'Bacillus subtilis', 'เชื้อชนิดนี้เป็นเชื้อแบคทีเรียที่ไม่ก่อโรค(non-pathogenic bacteria) แต่สามารถพบการปนเปื้อนได้ในอาหาร และพบว่าเป็นเชื้อฉวยโอกาสในผู้ที่มีภูมิคุ้มกันบกพร่อง โดยส่วนมากเชื้อชนิดนี้จะมักพบในเมล็ด ผักและผลไม้ ซึ่งช่วยในการทำร้ายเชื้อราได้', 'เมื่อเพาะเลี้ยงบน Nutrient Agar พบลักษณะโคโลนีสีขาวถึงเทา กลม มันเยิ้ม แบน โคโลนีแห้ง มีขนาดปานกลาง', 'เป็น gram positive bacilli ที่สามารถสร้างสปอร์ได้ ไม่มีการสร้างแคปซูลใดๆ', 'Catalase – positive', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Oxidase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Voges-Proskauer – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Gelatin hydrolysis - positive', NULL, NULL),
(24, 'B24_N_gonorrhoeae(PIC1).jpeg B24_N_gonorrhoeae(PIC2).JPEG', 'Neisseria gonorrhoeae', 'เป็นแบคทีเรียที่ไม่มีการสร้างสปอร์ ไม่มีการเคลื่อนที่ สามารถติดต่อได้โดยจากเยื่อบุเมือกต่างๆ(mucouse membrane) โดยส่วนมากมักเกิดการติดต่อจากการมีเพศสัมพันธ์โดยตรง เช่น องคชาติ-ช่องคลอด องคชาติ-ทวารหนัก และองคชาติ-คอหอย ซึ่งก่อให้เกิดการพัฒนาเป็นการติดเชื้อในกระแสเลือด(bacteremia) และกลายเป็น septic arthritis', 'เป็นเชื้อ fastidious microorganism จึงจำเป็นต้องเพาะเลี้ยงใน chocolate agar เติบโตได้ที่ 35-37 °C ที่ 3-10% CO2 และมีความชื้นสัมพัทธ์สูง เมื่อเพาะเลี้ยงเป็นเวลา 48 ชั่วโมง ให้โคโลนีสีขาวอมเทา มันเยิ้ม ยกนูน ผิวเหมือนเม็ดทรายที่ละเอียด และจะเป็นเมือก(mucoid) เมื่อบ่มนานขึ้น', 'เป็น gram negative cocci มีการจัดเรียงเป็นคู่ จึงมักเรียกว่า diplococcic ไม่มีการเคลื่อนที่ ไม่มี flagella ไม่มีการผลิตแคปซูล', 'Catalase – positive', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Oxidase – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S Production – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'CTA Glucose (Cysteine trypticase agar containing glucose) – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'CTA Lactose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'CTA Maltose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'CTA Mannose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'DNase - negative', NULL, NULL),
(25, 'B25_N_meningitidis(PIC1) , B25_N_meningitidis(PIC2).jpeg B25_N_meningitidis(PIC3).jpeg', 'Neisseria meningitidis', 'เชื้อนี้เป็นเชื้อก่อโรคในมนุษย์ ทำให้เกิดการติดเชื้อได้ ซึ่งส่วนใหญ่พบว่าการได้รับเชื้อนี้เกิดจากได้รับเชื้อจากบุคคลที่เป็นพาหะมา จากนั้น colonize ที่ nasopharyngeal หากเชื้อสามารถแทรกผ่านเนื้อเยื่อได้ จะสามารถพัฒนาให้เกิดเป็น Meningococcal meningitis', 'โคโลนีใหญ่กว่า gonococci ประมาณ 1 ไมครอน โคโลนีมีผิวเรียบ ชื้น สีขาว ขอบเรียบ', 'เป็น gram negative diplococci ไม่มีการเคลื่อนที่ มี flagella มีการผลิตแคปซูล และพบ pilli', 'Oxidase – positive', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S Production – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'CTA Glucose (Cysteine trypticase agar containing glucose) – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'CTA Lactose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'CTA Maltose – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'CTA Mannose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'DNase - negative', NULL, NULL),
(26, 'B26_H_influenzae(PIC1).jpegB26_H_influenzae(PIC2).jpeg B26_H_influenzae(PIC3).jpeg', 'Haemophilus influenzae', 'เป็น gram negative coccobacilli ก่อโรคในคนทำให้เกิดการติดเชื้อในระบบทางเดินหายใจ การติดเชื้อที่ตา การติดเชื้อและในกระแสเลือดและไขสันหลังอักเสบ(meningitis) เชื้อชนิดมักก่อโรคไขสันหลังอักเสบในเด็กอายุ 2 เดือน ถึง 5 ปี', 'บน Chocolate agar โคโลนีสีอมเทา ผิวเรียบ ขอบโค้ง โปร่งใส มีขนาดประมาณ 0.5-1 ไมครอน', 'เป็น gram negative coccobacilli มีขนาดประมาณ 0.3-0.5 ไมครอน ไม่มีการเคลื่อนที่', 'Catalase – positive', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, 'หาก strains ใดมีการผลิต capsule จะพบว่าโคโลนีจะมีขนาดใหญ่ และมีเมือก(mucoid) มากกว่าปกติ', NULL, 'Oxidase – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'X factor – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'V factor – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'X and V factor – positive', NULL, NULL),
(27, 'B27_C_jejuni(PIC1).jpeg B27_C_jejuni(PIC2) , B27_C_jejuni_coccoidform(PIC3).jpegB27_C_jejuni_coccoidform(PIC4).jpeg', 'Campylobacter jejuni', 'Campylobacter jejuni เป็นเชื้อที่ก่อโรคในมนุษย์ ทำให้เกิดอาการท้องร่วงและเกิดการป่วยหลายๆอวัยวะ เชื้อชนิดนี้เป็นหนึ่งในเชื้อที่ก่อให้เกิด gastroenteritis มากที่สุดทั่วโลก ในประเทศที่กำลังพัฒนาพบว่าการเสียชีวิตของเด็กเกิดจากการป่วยจากการเกิดท้องร่วงโดย campylobacter หากบุคคลใดที่เกิดการติดเชื้อแล้วมีภูมิคุ้มกันบกพร่องสามารถก่อให้เกิดความผิดปกติเกี่ยวกับระบบประสาท และพัฒมาเป็นโรค Guillain–Barré syndrome', 'โคโลนีมีขนาดเล็ก มีสีขาวอมเทา โคโลนีเป็นเมือก(mucoid) แบนแต่มีขอบที่จัดเรียงตัวไม่ปกติ ไม่มี hemolysis', 'เป็น gram negative bacilli ที่มีรูปร่างเป็นลักษณะโค้ง(curved) คล้ายปีกนก(seagull wing-like) หรือเป็นเกลียว(spiral) ซึ่งดูคล้ายกับ vibrio อีกทั้งสามารถพบลักษณะเซลล์ที่เป็นทรงกลมเรียก coccoid form (เป็นผลมาจากสภาวะแวดล้อมที่ไม่เหมาะสมจึงมีการเปลี่ยนรูปแบบเซลล์)', 'Catalase – positive', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Oxidase – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Hippurate hydrolysis – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production - negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'DNase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Glucose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Growth at 25°C – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Growth at 37°C – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Growth at 42°C – positive', NULL, NULL),
(28, 'B28_Campylobacter_coli(PIC1).jpeg B28_Campylobacter_coli(PIC2).jpeg B28_Campylobacter_coli(PIC3).jpeg B28_Campylobacter_coli_coccoidform(PIC4).jpeg', 'Campylobacter coli', 'เป็นเชื้อก่อโรคที่นำไปสู่การเกิดโรคอาหารเป็นพิษ(food poisoning) ในประเทศที่กำลังพัฒนา เชื้อ C. coli ทำให้เกิด gastroenteritis เพียง 10% เท่านั้น เมื่อเทียบกับ C. jejuni ที่มีอัตราการก่อโรคสูงถึง 90%', 'โคโลนีสีขาวอมเทา หรือค่อนข้างไปทางชมพู มีขนาด 1-2 ไมครอน มี metallic sheen บน Blood Agar', 'เป็น gram negative bacilli มีรูปร่างโค้ง(curve) คล้ายปีกนก(seagull wing like) หริอเป็นเกลียวเล็กๆ มี flagella สามารถเคลื่อนที่ได้ อีกทั้งสามารถพบลักษณะเซลล์ที่เป็นทรงกลมเรียก coccoid form (เป็นผลมาจากสภาวะแวดล้อมที่ไม่เหมาะสมจึงมีการเปลี่ยนรูปแบบเซลล์)', 'Catalase – positive', NULL, 'gram stain'),
(NULL, NULL, NULL, NULL, 'ไม่มีการเกิด hemolysis บน Blood Agar', NULL, 'Oxidase – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Hippurate hydrolysis – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production - positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'DNase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Glucose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Growth at 25°C – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Growth at 37°C – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Growth at 42°C – positive', NULL, NULL),
(29, 'B29_Legionella_spp(PIC1).jpeg B29_Legionella_spp(PIC1).jpeg', 'Legionella pneumophila', 'Legionella pneumophila เป็นเชื้อก่อโรคชนิดหลักๆ ในกลุ่มนี้ ก่อให้เกิด Legionnaires\' disease หรือรู้จักกันในชื่อว่า legionellosis อีกทั้งสามารถก่อโรคนอกจากปอด(extrapulmonary disease) ได้แก่ pericarditis และ endocarditis อาการที่คล้ายกับการเป็นไข้หวัดใหญ่ influenza นั้น เรียกว่า Pontiac fever', 'โคโลนีสีเทาขาว มีพื้นผิวคล้ายกับแก้ว(glass-like appearance)', 'เป็น gram negative bacilli มีขนาด 2-20 ไมครอน สามารถพบสายยาวๆ(long filamentous) ได้', 'Catalase – positive', 'sputum', 'gram stain'),
(NULL, NULL, NULL, NULL, 'เมื่อทำการเลี้ยงบน Buffered Charcoal Yeast Extract (BCYE) Agar ประมาณ 3 วันจะพบลักษณะเป็น pin point colony', NULL, 'Urease – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Gelatin – liquid', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Peroxidase – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Tweenase – positive', NULL, NULL),
(30, 'B30_V_alginolyticus(PIC1).jpeg B30_V_alginolyticus(PIC2).jpeg B30_V_alginolyticus(PIC3).jpeg', 'Vibrio alginolyticus', 'เป็นเชื้อที่ชอบความเค็ม (halophilic microorganism) สามารถเจริญเติบโตได้ดีใน NaCI สามารถพบเชื้อได้ในพวกอาหารทะเล และสัตว์ทะเลต่างๆ เชื้อชนิดนี้ก่อให้เกิดการติดเชื้อที่หูและบาดแผล จึงปรากฏลักษณะเป็น cellulitis และมีน้ำหนองออกมาจากบาดแผล(seropurulent exudate)', 'เมื่อเพาะเลี้ยงบน Solid media พบว่ามีการเกิด swarming colony และเมื่อเพาะเลี้ยงบน TCBS ให้ผลเป็น sucrose fermenter จึงปรากฏลักษณะโคโลนีสีเหลือง นูน ขอบเรียบ ขนาด 1-3 ไมครอน', 'เป็น gram negative bacilli มีรูปร่างตรง(straight) มี 3-12 polar flagella สามารถเห็น flagella ที่ส่วนท้ายของเซลล์ได้เมื่อเพาะเลี้ยงบนอาหารเลี้ยงเชื้อ และพบการ swarming ได้', 'Catalase – positive', 'stool', 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Oxidase – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Voges-Proskauer – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '0% NaCl – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '1% NaCl – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '3% NaCl – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '6% NaCl – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '8% NaCl – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '10% NaCl – positive', NULL, NULL),
(31, 'B31_V_parahaemolyticus(PIC1).jpeg B31_V_parahaemolyticus(PIC2).jpeg', 'Vibrio parahaemolyticus', 'เป็นแบคทีเรียแกรมลบที่ชอบความเค็ม(halophilic bacteria) สามารถพบได้ในน้ำเค็ม และชายฝั่ง เชื้อชนิดนี้เป็นสาเหตุที่นำไปสู่การเกิด gastroenteritis ในมนุษย์ เนื่องจากการรับประทารผลิตภัณฑ์จากทะเลที่ดิบ ไม่ได้ผ่านการทำให้สุกมา โดยเชื้อนี้จะก่อให้เกิดการติดเชื้อที่บาดแผล ที่หู และสามารถทำให้เกิดการติดเชื้อในกระแสเลือด', 'เมื่อเลี้ยงบน TCBS agar พบว่าเป็น non-sucrose fermenter(NSF) ให้โคโลนีสีเขียวอมฟ้า ขนาดเล็ก นูน ขอบเรียบ', 'เป็น gram negative bacilli สามารถเคลื่อนได้โดย monotrichous flagella ไม่มีการ swarming บน solid media มีการผลิต frimbriae หรือ pilli เกิดขึ้น', 'Catalase – positive', 'stool', 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Oxidase – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Voges-Proskauer – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '0% NaCl – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '1% NaCl – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '3% NaCl – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '6% NaCl – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '8% NaCl – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '10% NaCl – positive', NULL, NULL),
(32, 'B32_A_hydrophilia(PIC1).jpeg B32_A_hydrophilia(PIC2).jpeg', 'Aeromonas hydrophila', 'เป็นเชื้อที่มีการแพร่กระจายทั่วโลก มักพบอยู่ในน้ำจืด น้ำเค็ม และในน้ำสิ่งแวดล้อมต่างๆ สามารถเติบโตในช่วงอุณหภูมิที่กว้าง เชื้อชนิดนี้เป็นเชื้อที่ก่อโรค gastroenteritis ทำให้เกิดอาการท้องร่วง อีกทั้งเชื้อชนิดนี้ยังมีการสร้าง toxin ซึ่งก่อให้เกิดความรุนแรงเพิ่มขึ้น', 'เมื่อเพาะเลี้ยงบน Blood Agar โคโลนีกลม ขนาดใหญ่ ยกสูง มันเยิ้ม พบ-hemolysis', 'เป็น gram negative bacilli มีรูปร่างตรง ปรากฏอยู่เป็นเซลล์เดี่ยว หรือคู่ อาจมีสายสั้น(short chains)ด้วยได้', 'Catalase – positive', 'stool', 'gram stain'),
(NULL, NULL, NULL, NULL, 'เมื่อเพาะเลี้ยงบน MacConkey Agar ให้โคโลนีเป็น non-lactose fermenter(NLF)', NULL, 'Oxidase – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – positive', NULL, NULL),
(33, 'B33_A_caviae(PIC1).jpeg B33_A_caviae(PIC2).jpeg', 'Aeromonas caviae', 'เป็นเชื้อที่ก่อโรคในมนุษย์ทั้งภายในระบบทางเดินอาหารและนอกระบบทางเดินอาหาร โดยมีอาการตั้งแต่การเกิดอาการท้องเสียฉับพลันจนถึงอาการที่ทำให้ถึงขั้นเสียชีวิตได้ ซึ่งได้แก่ การติดเชื้อในกระแสเลือด แบคทีเรียกินเนื้อ(necrotizing fasciitis) และกล้ามเนื้อเน่าตาย(myonecrosis)', 'เมื่อเพาะเลี้ยงบน Blood Agar โคโลนีกลม เล็ก ขอบเรียบโค้ง ไม่พบ-hemolysis', 'เป็น gram negative bacilli มีรูปร่างตรง ปลายมน ปรากฏอยู่เป็นเซลล์เดี่ยว หรือคู่ อาจมีสายสั้น(short chains)ด้วยได้ บางครั้งอาจพบเป็น coccobacilli มีการเคลื่อนที่โดยใช้ polar flagella', 'Catalase – positive', 'stool', 'gram stain'),
(NULL, NULL, NULL, NULL, 'เมื่อเพาะเลี้ยงบน MacConkey Agar ให้โคโลนีเป็น non-lactose fermenter(NLF)', NULL, 'Oxidase – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate ultilitzation - positive', NULL, NULL),
(34, 'B34_A_sobria(PIC1).jpeg B34_A_sobria(PIC2).jpeg', 'Aeromonas sobria', 'เป็นเชื้อที่ก่อโรคในมนุษย์ทั้งภายในระบบทางเดินอาหารและนอกระบบทางเดินอาหาร โดยมีอาการตั้งแต่การเกิดอาการท้องเสียฉับพลันจนถึงอาการที่ทำให้ถึงขั้นเสียชีวิตได้ ซึ่งได้แก่ การติดเชื้อในกระแสเลือด แบคทีเรียกินเนื้อ(necrotizing fasciitis) และกล้ามเนื้อเน่าตาย(myonecrosis)', 'เมื่อเพาะเลี้ยงบน Blood Agar โคโลนีกลม ขนาดใหญ่ ยกสูง มันเยิ้ม พบ-hemolysis', 'เป็น gram negative bacilli มีรูปร่างตรง ปรากฏอยู่เป็นเซลล์เดี่ยว หรือคู่ อาจมีสายสั้น(short chains)ด้วยได้', 'Catalase – positive', 'stool', 'gram stain'),
(NULL, NULL, NULL, NULL, 'เมื่อเพาะเลี้ยงบน MacConkey Agar ให้โคโลนีเป็น non-lactose fermenter(NLF)', NULL, 'Oxidase – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate ultilitzation - positive', NULL, NULL),
(35, 'B35_MTB(PIC1).jpeg B35_MTB(PIC2).jpeg', 'Mycobacterium tuberculosis in sputum', 'เป็นเชื้อก่อโรคในวงศ์ Mycobacteriaceae ก่อให้เกิด tuberculosis โดยเชื้อในกลุ่มนี้จะเป็น complex ประกอบไปอีก 9 สมาชิก ได้แก่ M. africanum, M. canetti, M. bovis, M. caprae, M. microti, M. pinnipedii, M. mungi, และ M. orygis การติดต่อเชื้อนี้เกิดจากการได้รับผ่านทางการหายใจละอองเชื้อเข้าไปผ่านเข้าสู่ปอด หากมีภูมิคุ้มกันปกติจะสามารถป้องกันการเกิดพยาธิสภาพได้ แต่ในบุคคลที่ภูมิคุ้มลดลงอาจเสี่ยงต่อการต่อปอด ระบบประสาทส่วนกลาง และระบบอื่นๆ ได้', 'โคโลนีมีการเจริญเติบโตได้ช้า ใช้เวลาในการเจริญเติบโตมากกว่า 7 วัน เมื่อเพาะเลี้ยงบน LJ medium พบว่าโคโลนีแห้ง หยาบ ไม่มีสีโคโลนี', 'เมื่อย้อมสีด้วย Acid fast bacilli หรือ modified Acid fast bacilli เห็นลักษณะเป็น gram negative bacilli ขนาดประมาณ 0.2 มิลลิเมตร ติดสีแดง พื้นหลังติดสีน้ำเงิน', 'niacin test – positive', 'sputum', 'AFB'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'nitrate reduction test – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'เติบโตบน TCH (thiophene-2-carboxylic acid hydrazide) 10µg/ml – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'เติบโตบน Pyrazinamidase agar (PZA) 25µg/ml – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'arylsulfatase test (ทดสอบแบบ 3 วัน) – negative', NULL, NULL),
(36, 'B36_MTB_Cordformation(PIC1).jpeg B36_MTB_Cordformation(PIC2).jpeg B36_MTB_Cordformation(PIC3).jpeg', 'Mycobacterium tuberculosis in MGIT', NULL, 'เมื่อทำการเพาะเชื้อกลุ่ม Mycobacterium ลงใน liquid media (Mycobacterium Growth Indicator Tube; MGIT) เชื้อกลุ่ม TB complex สามารถเกิดการจัดเรียงเชื้อเป็นลักษณะคล้ายงูขนาดใหญ่(snake-like appearance) เพราะมี cord factor(trehalose dimycolate) เป็น virulence factor ซึ่งทำให้เชื้อชนิดนี้เมื่อเข้าไปในร่างกายคนเกิดการยับยั้งกระบวนการ phagolysosome fuction และก่อให้เกิด granuloma formation ได้อีกด้วย', NULL, NULL, 'Sputum', 'AFB'),
(37, 'B37_S_capitis.jpeg', 'Staphylococcus capitis', 'เป็นเชื้อในกลุ่ม CoNS โดยปกติเป็นเชื้อประจำถิ่น(normal flora) ที่ผิวหนัง และมีโอกาสยากในการได้รับเชื้อชนิดนี้จากโรงพยาบาล หากผู้ที่มีภูมิคุ้มกันบกพร่องได้รับเชื้อนี้สามารถทำให้เกิดเยื่อบุหัวใจอักเสบ(endocarditis)', 'โคโลนีมีสีขาวหรือขาวอมเทา ผิวเรียบ ขอบเรียบ มันเยิ้ม(opaque) เมื่อแสงส่องจะแวววาว(glistening) ไม่พบการเกิด-hemolysis', 'เป็น gram positive cocci ขนาด 0.5 – 1.2 ไมครอน มีรูปแบบการเรียงตัวเป็นเซลล์เดี่ยว หรือเป็นคู่(in pairs) เป็นกลุ่ม(in cluster) ไม่พบการสร้างสปอร์', 'Catalase – positive', 'Blood(Hemoculture)', 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Glucose fermenter', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Mannose fermenter', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Sucrose fermenter', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Coagulase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction - variable', NULL, NULL),
(38, 'B38_S_caprae(PIC1).jpeg B38_S_caprae(PIC2).jpeg', 'Staphylococcus caprae', 'เป็นเขื่อกลุ่ม CoNS โดยปกติแบคทีเรียชนิดนี้ไม่ก่ออันตรายใดๆ แต่พบรายงานว่าสามารถรับเชื้อนี้ได้จากการติดเชื้อที่โรงพยาบาล และจากชุมชน โดยอาการส่วนใหญ่จะไม่มีการแสดงออก', 'เมื่อเพาะเลี้ยงเชื้อบน Sheep Blood Agar ให้โคโลนีสีขาว วงกลม ขอบเรียบ นูน ขนาดประมาณ 1-2 ไมครอน บาง strains สามารถพบ-hemolysis', 'เป็น gram positive cocci มีการจัดเรียงเป็นคู่(in pairs) เป็นสาย(in chains) หรือเป็นกลุ่ม(in cluster) ไม่มีการสร้างสปอร์ ไม่เคลื่อนที่', 'Catalase – positive', 'Blood(Hemoculture)', 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Mannose fermenter', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Mannitol fermenter', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Maltose fermenter', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Sucrose fermenter', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Phosphatase – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Gelatinase – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urea hydrolysis - positive', NULL, NULL),
(39, 'B39_E_coli.jpeg', 'Escherichia coli', 'Escherichia coli เป็นแบคทีเรียที่พบได้ในสิ่งแวดล้อม อาหารและลำไส้ของมนุษย์และสัตว์ เชื้อในกลุ่ม E. coli ประกอบไปด้วยหลาย serotype แต่ละ serotype มีการก่อพยาธิสภาพที่แตกต่างกัน โดยพยาธิสภาพหลักๆที่ก่อมักทำให้เกิดอาการท้องร่วง การติดเชื้อที่ระบบปัสสาวะ ระบบทางเดินหายใจและปอดบวมได้', 'เมื่อเพาะเลี้ยงบน Blood Agar พบโคโลขนาดใหญ่ แห้งหรืออาจเป็นมันเยิ้ม กลม สีเทา สามารถพบ-hemolysis ได้', 'เป็น gram negative bacilli ที่มีรูปร่างตรง มีขนาดประมาณ 1,1 – 1.5 x 2.0-6.0 ไมครอน ไม่มีการสร้างสปอร์ มีการเคลื่อนที่โดยใช้ flagella', 'Oxidase – negative', 'Blood(Hemoculture)', 'gram stain'),
(NULL, NULL, NULL, NULL, 'เมื่อเพาะเลี้ยงบน MacConkey Agar พบการเกิด Lactose fermenter โคโลนีสีชมพู แบน แห้ง ชื้น ขอบเรียบ', NULL, 'Catalase – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'TSI – K/AG or A/Ag', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'LIA – negative/positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate – negative', NULL, NULL),
(40, 'B40_K_pneumoniae(PIC1).jpeg B40_K_pneumoniae(PIC2).jpeg', 'Klebsiella pneumoniae', 'เป็นเชื้อแบคทีเรียแกรมลบที่ก่อให้เกิดการติดเชื้อได้หลากหลายประเภท เช่น ปอดบวม การติดเชื้อในกระแสเลือด การติดเชื้อที่แผลผ่าตัด และไขสันหลังอักเสบ(meningitis) อีกทั้งเชื้อชนิดนี้ยังมีอุบัติการณ์การดื้อยา carbapenems สูง การติดเชื้อนี้ส่วนใหญ่จะเป็นการติดเชื้อจากโรงพยาบาล(nosocomial infection) ผู้ป่วยที่ต้องทำการสอดท่อหายใจ(ventilator) มีโอกาสเสียงสูงที่จะได้รับเชื้อชนิดนี้เข้าไป', 'เมื่อเพาะเลี้ยงบน Blood Agar พบโคโลกลม สีขาวอมเทา มันเยิ้ม มีการยกตัวคล้ายโดม(dome-shaped)', 'เป็น gram negative bacilli มีรูปร่างตรง มีแคบซูล ไม่มีการสร้างสปอร์ และไม่มีการเคลื่อนที่', 'Oxidase – negative', 'Blood(Hemoculture)', 'gram stain'),
(NULL, NULL, NULL, NULL, 'เมื่อเพาะเลี้ยงบน MacConkey Agar พบการเกิด Lactose fermenter โคโลนีกลม สีชมพู มันเยิ้ม ขอบเรียบ', NULL, 'Catalase – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S Production – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'TSI – A/A', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – positive', NULL, NULL),
(41, 'B41_P_mirabilis(PIC1).jpeg B41_P_mirabilis(PIC2).jpegB41_P_mirabilis(PIC3).jpeg B41_P_mirabilis(PIC4).jpeg B41_P_mirabilis(PIC5).jpeg', 'Proteus mirabilis', 'เป็นเขื้อแบคทีเรียมแกรมลบ ที่สามารถพบ swarming pattern ได้ เชื้อชนิดนี้เป็นสาเหตุหลักที่พบได้บ่อยในการก่อให้เกิดการติดเชื้อในระบบทางเดินปัสสาวะ เช่น กระเพาะปัสสาวะอักเสบ(cystitis) และกรวยไตอักเสบ(pyelonephritis) การติดเชื้อเหล่านี้นำไปสู่การติดเชื้อในกระแสเลือดและนำไปสู่การเกิด urosepsis ตามมา', 'เมื่อเพาะเลี้ยงบน Blood Agar จะมีการพบ swarming colony คล้าย bull-eyes', 'เป็น gram negative bacilli ขนาดประมาณ 0.4 – 0.6 x 1.0 – 3.0 ไมครอน มีการเคลื่อนที่โดยอาศัย flagella', 'Oxidase – negative', '-', 'gram stain'),
(NULL, NULL, NULL, NULL, 'เมื่อเพาะเลี้ยงบน MacConkey Agar พบ Non-lactose fermenter(NLF) โคโลนีสีใส ชนาดใหญ่ นูน ขอบเรียบ อาจได้กลิ่นคาวปลา(fishy odor)', 'หากทำการย้อมแกรมอาจพบ petrichous flagella ล้อมรอบเซลล์ได้ ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'TSI – K/A with H2S production', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Swarming colony บน Blood Agar', NULL, NULL),
(42, 'B42_S_marcences.jpeg', 'Serratia marcescens', 'S. marcescens เป็นเชื้อแบคทีเรียแกรมลบ สามารถพบได้ทั่วไปในธรรมชาติ มีการสร้าง pigment ที่อุณหภูมิห้อง เชื้อนี้มีความสัมพันธ์สอดคล้องกับการติดเชื้อในระบบทางเดินปัสสาวะและทางเดินหายใจ เยื่อบุหัวใจอักเสบ กระดูกอักเสบ การติดเชื้อที่บาดแผล การติดเชื้อที่ตาและการติดเชื้อในกระแสเลือด การติดต่อเกิดจากการได้รับ droplet โดยตรง ส่วนมากจะติดต่อจากท่อสายสวนต่างๆ', 'โคโลนีขนาดประมาณ 1-3 ไมครอน สีขาวครีม กลม มันเยิ้ม มีผิวเรียบ ขอบเรียบ บางครั้งสามารถเห็นการสร้าง red pigment บนโคโลนี จึงพบโคโลนีเป็นสีแดงขนาดเล็กๆได้', 'เป็น gram negative bacilli มีรูปร่างตรง ไม่มีการสร้างสปอร์ บาง strains สามารถสร้าง capsule ได้ สามารถเคลื่อนที่ได้ด้วย petrichous flagella', 'Catalase – positive', 'Blood(Hemoculture)', 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Oxidase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate - positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'ODC – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'ADH – negative', NULL, NULL),
(43, 'B43_P_aeruginosa(PIC1).jpegB43_P_aeruginosa(PIC2).jpegB43_P_aeruginosa(PIC3).jpegB43_P_aeruginosa(PIC4).jpegB43_P_aeruginosa(PIC5).jpeg', 'Pseudomonas aeruginosa', 'เป็นเชื้อก่อโรคฉวยโอกาส(opportunistic infection) ทางคลินิกและมีอุบัติการณ์เชื้อดื้อยาสูงมาก เชื้อชนิดนี้มักก่อโรคในผู้ที่ภูมิคุ้มกันบกพร่องได้บ่อยๆ เชื้อชนิดนี้สามารถก่อให้เกิดการติดเชื้อในระบบทางเดินปัสสาวะ ระบบทางเดินหายใจ ผิวหนังอักเสบ กระดูกและข้ออักเสบ การติดเชื้อทั่วระบบ และการติดเชื้อในกระแสเลือดได้', 'เมื่อเพาะเลี้ยงบน Blood Agar พบโคโลนีขนาดใหญ่ แบน พบการเกิด-hemolysis มีการสร้าง pigment จึงสามารถเห็นเป็นสีเขียวน้ำเงินบนโคโลนีได้', 'เป็น gram negative bacilli สามารถเคลื่อนที่ได้ พบ monotrichous flagella 1-4 อัน อยู่บนหรือท้ายเซลล์', 'Catalase – positive', '-', 'gram stain'),
(NULL, NULL, NULL, NULL, 'เมื่อเพาะเลี้ยงบน MacConkey Agar พบ Non-lactose fermenter(NLF) โคโลนีขนาดใหญ่ แบน ขอบเขตไม่ชัดเจน ลักษณะคล้ายเม็ดทราย(granular)', NULL, 'Oxidase – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'TSI – K/N or K/K', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Growth at 42 °C – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction - positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF glucose – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF lactose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF maltose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF mannitol – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Pyocyanin – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Pyoverdin – positive', NULL, NULL),
(44, 'B44_P_putida.jpeg', 'Pseudomonas putida', 'เป็นเชื้อจุลชีพที่อยู่ในดินและน้ำ มีบทบาทสำคัญในกระบวนการ bioremediation เชื้อชนิดนี้มีอัตราการก่อโรคที่ต่ำ และยากในการเกิดการติดเชื้อในกระแสเลือด แต่ในปัจจุบันพบว่าเป็นเชื้อที่มีอัตราการดื้อยากลุ่ม carbapenem สูง อีกทั้งทำให้ยากลำบากในการรักษาหากติดเชื้อชนิดนี้ การเกิดพยาธิสภาพของเชื้อกลุ่มนี้ทำให้เกิด เช่น การติดเชื้อที่ปอด เกิดปอดบวม ท่อน้ำดีอักเสบ(cholangitis) และการติดเชื้อในกระแสเลือด', 'เมื่อเพาะเลี้ยงบน MacConkey Agar พบ Non-lactose fermenter(NLF) โคโลนีขนาดใหญ่ แบน ขอบเขตไม่ชัดเจน', 'เป็น gram negative bacilli พบ multitrichous flagella สามารถเคลื่อนที่ได้ ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'Catalase – positive', 'Blood(Hemoculture)', 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Oxidase – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'TSI – K/N or K/K', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF glucose – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF lactose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF mannitol – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF maltose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Pyocyanin – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Pyoverdin – positive', NULL, NULL),
(45, 'B45_A_baumanii (PIC1).jpeg B45_A_baumanii (PIC2).jpeg', 'Acinetobacter baumanii', 'เป็นเชื้อแบคทีเรียก่อโรคฉวยโอกาส โดยพบหลักๆได้จากการติดเชื้อจากโรงพยาบาล เชื้อกลุ่มนี้มีอุบัติการณ์ดื้อยาตั้งแต่ 3 ชนิดขึ้นไป(multidrug resistance) ส่วนมากเชื้อกลุ่มนี้สอดคล้องกับการให้เกิด ventilator associated pneumonia(VAP) การติดเชื้อในกระแสเลือด การติดเชื้อที่แผลและแผลผ่าตัด และไขสันหลังอักเสบ(meningitis)', 'โคโลนีสีขาวขุ่น มันวาว มีเมือก(mucoid) Non-lactose fermenter(NLF) ไม่มีเม็ดสีของโคโลนี ผิวเรียบ ขอบเรียบ', 'เป็น gram negative coccobacilli สามารถพบเห็นอยู่เป็นเซลล์เดี่ยว(single) เป็นคู่(in pairs) หรือเป็นกลุ่ม(in cluster) ได้ ไม่มีการสร้างสปอร์ ไม่มีแคปซูล ไม่มีการเคลื่อนที่', 'Catalase – positive', 'Blood(Hemoculture)', 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Oxidase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – variable', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF glucose – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Arginine hydrolysis – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Growth at 42 °C – positive', NULL, NULL),
(46, 'B46_Salmonella_typhi(PIC1).jpeg B46_Salmonella_typhi(PIC2).jpeg', 'Salmonella typhi', 'เป็นแบคทีเรียแกรมลบที่ก่อให้เกิดโรคไข้ไทฟอยด์(typhoid fever) โดยการติดต่อเกิดจากการรับประทานอาหารหรือน้ำที่ปนเปื้อนเชื้อมา โดยส่วนมากการเกิดพยาธิสภาพของแบคทีเรียชนิดนี้มักจะก่อในเด็กและผู้ใหญ่วัยต้นๆ โดยเฉพาะอย่างยิ่งในที่ที่มีสุขาภิบาลไม่ดี', 'เมื่อเพาะเลี้ยงบน Blood Agar ให้โคโลนีสีขาวจาง ขอบเรียบ ผิวเรียบ ไม่มีการเกิด hemolysis', 'เป็น gram negative bacilli ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'Catalase – positive', '-', 'gram stain'),
(NULL, NULL, NULL, NULL, 'เมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล non-lactose fermenter(NLF) โคโลนีสีใสหรือสีจางๆ มีการผลิต H2S จึงสามารถพบได้ โคโลนีขอบเรียบ ผิวเรียบ มีความมันวาว', NULL, 'Oxidase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'TSI – K/A with H2S production', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'LIA – negative/positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'ODC – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – negative', NULL, NULL),
(47, 'B47_Salmonella_parathyphiA(PIC1).jpegB47_Salmonella_parathyphiA(PIC2).jpeg B47_Salmonella_parathyphiA(PIC3).jpeg', 'Salmonella paratyphi A', 'เป็นเชื้อแบคทีเรียกลุ่มแกรมลบ ที่ติดต่อจากรับประทานอาหารหรือน้ำที่มีการปนเปื้อนผ่านทางปาก ซึ่งก่อให้เป็นพาหะแบบเรื้อรังที่ไม่แสดงลักษณะอาการ แต่ในประเทศที่กำลังพัฒนาเชื้อนี้มีบทบาทสำคัญเพราะทำให้เกิด enteric fever ซึ่งมีอัตราการเสียชีวิตที่สูง อีกทั้งยังพบว่ามีการดื้อยาปฏิชีวนะอีกด้วย', 'เมื่อเพาะเลี้ยงบน Blood Agar ให้โคโลนีสีขาวจาง ขอบเรียบ ผิวเรียบ ไม่มีการเกิด hemolysis', 'เป็น gram negative bacilli มี petrichious flagella จึงสามารถเคลื่อนที่ได้ ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'Catalase – positive', '-', 'gram stain'),
(NULL, NULL, NULL, NULL, 'เมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล non-lactose fermenter(NLF) โคโลนีสีใสหรือสีจางๆ ขอบเรียบ ผิวเรียบ มีความมันวาว', NULL, 'Oxidase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'TSI – K/A with Gas production', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'LIA – negative/negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'ODC – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease - negative', NULL, NULL),
(48, 'B48_S_choleraesuis(PIC1).jpeg B48_S_choleraesuis(PIC2).jpeg', 'Salmonella choleraesuis', 'เป็นแบคทีเรียกลุ่มแกรมลบ อยู่ในกลุ่ม non-typhoidal species ที่จัดว่าเป็นเชื้อก่อโรค โดยพบได้ทุกหนทุกแห่งทั่วโลก เชื้อนี้ก่อโรค salmonellosis ทำให้เกิดอาการท้องร่วงเฉียบพลัน ในกรณีที่ผู้ป่วยที่ติดเชื้อเป็นผู้ที่มีภูมิคุ้มกันบกพร่องอาจยิ่งส่งเสริมให้เกิดการติดเชื้อในกระแสเลือดได้', 'เมื่อเพาะเลี้ยงบน Blood Agar ให้โคโลนีสีขาวจาง ขอบเรียบ ผิวเรียบ ไม่มีการเกิด hemolysis', 'เป็น gram negative bacilli ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'Catalase – positive', '-', 'gram stain'),
(NULL, NULL, NULL, NULL, 'เมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล non-lactose fermenter(NLF) โคโลนีสีใสหรือสีจางๆ มีการผลิต H2S จึงสามารถพบได้ โคโลนีขอบเรียบ ผิวเรียบ มีความมันวาว', NULL, 'Oxidase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'TSI – K/A with Gas production , H2S production', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'LIA – negative/positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'ODC – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate – positive', NULL, NULL),
(49, 'B49_Shigella_dysenteriae(PIC1).jpegB49_Shigella_dysenteriae(PIC2).jpeg', 'Shigella dysenteriae', 'เป็นเชื้อแบคทีเรียแกรมลบ จัดเป็น shigella subgroup A โดยจะสามารถแบ่งออกได้อีก 12 serotype การรับเชื้อนี้เกิดจากการรับประทานสิ่งปนเปื้อนอุจจาระของผู้ป่วยหรือผู้เป็นพาหะ อีกทั้งเชื้อชนิดนี้มีความสามารถในการสร้าง enterotoxin จึงก่อให้เกิดภาวะรุนแรง และพบว่าทำให้เกิดอัตราป่วยเสียชีวิตสูงขึ้นถึงร้อยละ 20', 'เมื่อเพาะเลี้ยงบน MacConkey Agar พบว่า non-lactose fermenter(NLF) โคโลนีใส ขนาดประมาณ 2 มิลลิเมตร ลักษณะกลม ขอบเรียบ ผิวเรียบมัน ทึบแสง สามารถเห็นเป็น mucoid colony ได้ในบางครั้ง', 'เป็น gram negative bacilli ที่ใม่มีการเคลื่อนที่ ไม่มีการสร้างสปอร์และ ไม่มีแคปซูล', 'Catalase – positive', '-', 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Oxidase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'TSI – K/A', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'LIA – negative/negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'ODC – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease - negative', NULL, NULL),
(50, 'B50_Shigella_flexneri(PIC1).jpegB50_Shigella_flexneri(PIC2).jpeg', 'Shigella flexneri', 'เป็นแบคทีเรียแกรมลบที่ก่อให้เกิดโรคบิดจากแบคทีเรีย(bacterial dysenteries) และ shigellosis เชื้อในกลุ่มนี้อยู่ใน serogroup B ประกอบไปด้วย 6 serotypes โดยหลักๆจะพบในประเทศที่กำลังพัฒนา เชื้อนี้จะทำการบุกรุกไปยัง epithelial cell ที่ลำไส้ใหญ่ก่อให้เกิดการเกิดอักเสบ และเกิดการทำลาย epithelial cell', 'โคโลนีขนาดเล็ก ประมาณ 2-3 มิลลิเมตร กลม นูน ผิวเรียบ โปร่งใส สีเทาหรือไม่มีสี Non-lactose fermenter(NLF) บน MacConkey Agar', 'เป็น gram negative bacilli ที่ใม่มีการเคลื่อนที่ ไม่มีการสร้างสปอร์และ ไม่มีแคปซูล', 'Catalase – positive', '-', 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Oxidase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'TSI – K/A', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – variable', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'LIA – negative/negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'ODC – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease - negative', NULL, NULL),
(51, 'B51_S_sonnei(PIC1).jpegB51_S_sonnei(PIC2).jpeg', 'Shigella sonnei', 'เป็นแบคทีเรียแกรมลบที่ก่อให้เกิดโรคบิดจากแบคทีเรีย(bacterial dysenteries) และ shigellosis โดยหลักๆจะพบในประเทศที่กำลังพัฒนา เชื้อนี้จะทำการบุกรุกไปยัง epithelial cell ที่ลำไส้ใหญ่ก่อให้เกิดการเกิดอักเสบ และเกิดการทำลาย epithelial cell', 'โคโลนีมีขนาดประมาณ 2 มิลลิเมตร ลักษณะกลม ขอบเรียบ ผิวเรียบมัน ไม่มีสี ไม่ทึบแสง เจริญได้ดีบนอาหารเลี้ยงเชื้อ MacConkey agar, SS agar, DHL agar บางครั้งโคโลนีที่พบอาจเป็น mucoid colony', 'เป็น gram negative bacilli ที่ใม่มีการเคลื่อนที่ ไม่มีการสร้างสปอร์และ ไม่มีแคปซูล', 'Catalase – positive', '-', 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Oxidase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'TSI – K/A', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'LIA – negative/negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'ODC – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease - negative', NULL, NULL),
(52, 'B52_C_freundii(PIC1).jpegB52_C_freundii(PIC2).jpeg', 'Citrobacter freundii', 'เป็นเชื้อแบคทีเรียแกรมลบในวงศ์พบได้ในน้ำ ดิน อาหารและลำไส้ในมนุษย์และสัตว์ต่างๆ เชื้อชนิดนี้มีอัตราการก่อโรคที่ต่ำ โดยโรคที่จะเกิดขึ้นได้หากมีการติดเชื้อประกอบไปด้วย การติดเชื้อที่ระบบปัสสาวะ ตับ ท่อน้ำดี ลำไส้เล็ก กระดูก ทางเดินหายใจ เยื่อบุหัวใจ แผลและเนื้อเยื่ออ่อน ไขสันหลังและการติดเชื้อในกระแสเลือด', 'เมื่อเพาะเลี้ยงบน Nutrient Agar โคโลนีขนาดประมาณ 2-4 มิลลิเมตร สีเทา ขอบเรียบ ผิวเรียบ ชื้น อาจจะเห็นเป็นโคโลนีมันเยิ้ม หรือมันวาวก็ได้', 'เป็น gram negative bacilli ขนาด 1.0 x 2.0-6.0 ไมครอน อาจอยู่เป็นเซลล์เดี่ยวหรือเป็นคู่ สามารถเคลื่อนที่ได้โดย petrichous flagella ไม่มีการสร้างสปอร์และแคปซูล', 'Catalase – positive', '-', 'gram stain'),
(NULL, NULL, NULL, NULL, 'เมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล Lactose fermenter(LF) โคโลนีสีชมพู มันวาว ขอบเรียบ นูน แต่บางครั้งสามารถให้ผลโคโลนีเป็น non-lactose fermenter(NLF) ได้', NULL, 'Oxidase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'TSI – K/A with H2S production , gas production', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'LIA – positive/negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'ODC – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease - negative', NULL, NULL),
(53, 'B53_Proteus_vulgaris(PIC1).jpegB53_Proteus_vulgaris(PIC2).jpeg', 'Proteus vulgaris', 'เป็นเขื้อแบคทีเรียมแกรมลบ ที่สามารถพบ swarming pattern ได้ เชื้อชนิดนี้เป็นสาเหตุหลักที่พบได้บ่อยในการก่อให้เกิดการติดเชื้อที่ได้รับมาจากในชุมชน(community-acquired infection) และการติดเชื้อในระบบทางเดินปัสสาวะ เช่น กระเพาะปัสสาวะอักเสบ(cystitis) และกรวยไตอักเสบ(pyelonephritis) การติดเชื้อเหล่านี้นำไปสู่การติดเชื้อในกระแสเลือดและนำไปสู่การเกิด urosepsis ตามมา อีกทั้งสามารถทำให้เกิดการติดเชื้อที่ระบบทางเดินหายใจในบางครั้ง', 'เมื่อเพาะเลี้ยงบน Blood Agar จะมีการพบ swarming colony คล้าย bull-eyes โคโลนีใส ไม่มีสี ขนาดประมาณ 2-3 มิลลิเมตร ผิววาว', 'เป็น gram negative bacilli ขนาดประมาณ 0.4 – 0.6 x 1.0 – 3.0 ไมครอน มีการจัดเรียงตัวเป็นเซลล์เดี่ยว เป็นคู่(in pairs) หรือเป็นสายสั้นๆ(short chains) มีการเคลื่อนที่โดยอาศัย flagella', 'Oxidase – negative', '-', 'gram stain'),
(NULL, NULL, NULL, NULL, 'เมื่อเพาะเลี้ยงบน MacConkey Agar พบ Non-lactose fermenter(NLF) โคโลนีสีใส ชนาดใหญ่ นูน ขอบเรียบผิวเรียบ', 'หากทำการย้อมแกรมอาจพบ petrichous flagella ล้อมรอบเซลล์ได้ ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'TSI – K/A with H2S production', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'ODC - positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Swarming colony บน Blood Agar', NULL, NULL),
(54, 'B54_P_rettgeri(PIC1).jpegB54_P_rettgeri(PIC2).jpeg', 'Providencia rettgeri', 'เป็นเชื้อแบคทีเรียแกรมลบที่อยู่ในวงศ์โดยเชื้อในกลุ่มนี้ประกอบไปด้วย, , , , และ และเป็นเชื้อแบคทีเรียที่พบว่าเป็นสาเหตุทำให้เกิดการติดเชื้อทางท่อสายสวนปัสสาวะมากที่สุด โดยเฉพาะอย่างยิ่งในผู้ป่วยสูงอายุที่ต้องใส่ท่อสายสวนเป็นเวลานาน', 'เมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล Non-lactose fermenter(NLF) โคโลนีสีใส ผิวเรียบ ขอบเรียบ มันวาว', 'เป็น gram negative bacilli ไม่มีการสร้างสปอร์และแคปซูล', 'Oxidase – negative', '-', 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'TSI – K/A with gas production', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'HS production – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'ODC – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'ADH - negative', NULL, NULL),
(55, 'B55_M_morganii(PIC1).jpegB55_M_morganii(PIC2).jpeg', 'Morganella morganii', 'เป็นเชื้อแบคทีเรียแกรมลบที่โดยปกติพบในสิ่งแวดล้อมและเป็นเชื้อประจำถิ่น(normal flora) ในลำไส้ของมนุษย์ สัตว์เลี้ยงลูกด้วยนม เชื้อชนิดนี้พบได้ไม่บ่อยนักในการก่อให้เกิดการติดเชื้อที่ได้รับจากชุมชน แต่ส่วนมากจะได้รับเชื้อจากหลังผ่าตัดและการติดเชื้อจากโรงพยาบาลเป็นหลัก โดยก่อพยาธิสภาพทำให้เกิดการติดเชื้อในระบบทางเดินปัสสาวะและการติดเชื้อในกระแสเลือด', 'เมื่อเพาะเลี้ยงบน MacConkey Agar ให้ non-lactose fermenter(NLF) โคโลนีใส กลม ขอบเรียบ ผิวเรียบ', 'เป็น gram negative bacilli มีรูปร่างตรง ไม่มีการสร้างสปอร์และแคปซูล', 'Oxidase – negative', '-', 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'TSI – K/A with H2S production', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – variable', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Ornithine decarboxylase(ODC) – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Arginine dihydrolase(ADH) - negative', NULL, NULL),
(56, 'B56_P_shigelloides(PIC1).jpeg', 'Plesiomonas shigelloides', 'เป็นเชื้อแบคทีเรียกลุ่มแกรมลบ ที่พบได้ในดินและน้ำ เป็นเชื้อที่มีการระบาดและก่อให้เกิดอาการท้องเสีย ท้องร่วมในมนุษย์ โดยเฉพาะอย่างยิ่งการรับประทานอาหารทะเลที่ไม่สุก เชื้อชนิดนี้สามารถเกิดปฏิกิริยาข้ามกลุ่มกับ shigella sonnei ได้อีกด้วย', 'เมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล Non-lactose fermenter(NLF) โคโลนีมีสีอมเทา มันเยิ้ม ขอบเรียบ ผิวเรียบ นูน', 'เป็น gram negative bacilli มีรูปร่างตรง ปลายมน ขนาดเซลล์ประมาณ 0.8 – 1.0 ไมครอน', 'Oxidase – positive', '-', 'gram stain'),
(NULL, 'B56_P_shigelloides(PIC2).jpeg', NULL, NULL, 'เมื่อเพาะเลี้ยงบน TCBS agar พบว่าโคโลนีไม่มีการเจริญเติบโต(No Growth)', NULL, 'TSI – K/A', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Inositol - positive', NULL, NULL);
INSERT INTO `sheet2` (`id`, `pic`, `name`, `name_detail`, `colony_detail`, `micro_exam`, `biochemi`, `tos`, `staining`) VALUES
(NULL, NULL, NULL, NULL, NULL, NULL, 'Ornithine decarboxylase(ODC) – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Arginine dihydrolase(ADH) - positive', NULL, NULL),
(57, 'B57_P_stutzeri(PIC1).jpeg', 'Pseudomonas stutzeri', 'เป็นแบคทีเรียกลุ่มแกรมลบที่ไม่มีการหมักน้ำตาล สามารถพบได้ในดิน น้ำ โดยปกติเชื้อนี้จะก่อโรคในคนปกติได้ยาก การก่อโรคส่วนใหญ่จึงเกิดขึ้นในผู้ที่ภูมิคุ้มกันบกพร่องเป็นหลัก', 'สามารถดูและจำแนกโดยการดูจากรูปร่างที่ไม่ปกติ และความทนทาน(consistency)', 'เป็น gram negative bacilli สามารถเคลื่อนที่ได้โดยใช้ monotrichous flagella ไม่มีการสร้างสปอร์และแคปซูล', 'Catalase – positive', '-', 'gram stain'),
(NULL, 'B57_P_stutzeri(PIC2).jpeg', NULL, NULL, 'เมื่อเพาะเลี้ยง fresh colony จะพบลักษณะโคโลนีสีน้ำตาลอมแดง ยึดเกาะแน่นบน agar โคโลนีหยิกหรือจิก(wrinkle หรือ pitting colony) มีพื้นผิวที่แข็ง(hard) ผิวแห้ง มีขอบนูนคล้ายสันเขา(ridge shaped) และมีการแตกแขนงที่ขอบโคโลนี', NULL, 'Oxidase – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, 'เมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล non-lactose fermenter(NLF)', NULL, 'Motile – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'TSI – K/N or K/K', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Growth at 42 °C – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction - positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF glucose – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF lactose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF maltose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF sucrose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF mannitol – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Pyocyanin – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Pyoverdin – positive', NULL, NULL),
(58, 'B58_B_pseudomallei(PIC1).jpeg', 'Burkholderia pseudomallei', 'เป็นแบคทีเรียแกรมลบ พบได้ทั่วไปในดินและน้ำในแหล่งที่มีการระบาด พบได้บ่อยในภาคอีสาน เชื้อนี้เข้าสู่ร่างกายคนโดยผ่านทางผิวหนังโดยจำไม่เป็นต้องมีรอยขีดข่วน ทำให้สามารถก่อเกิดพยาธิสภาพได้ เช่น sepsis ปอดติดเชื้อเฉียบพลัน(acute pneumonia) การติดเชื้อในระบบทางเดินปัสสาวะ ติดเชื้อในข้อและฝี', 'เมื่อเพาะเลี้ยงบน blood agar มากกว่า 24 ชั่วโมง จะปรากฏโคโลมีสีครีม มันเงา อาจจะแห้งและย่นอย่างไรก็ตามลักษณะที่มองเห็นอาจมีได้หลายลักษณะ และอาจถูกมองข้ามว่าเป็นเชื้อปนเปื้อน', 'เป็น gram negative bacilli ที่มีลักษณะจำเพาะคือพบเซลล์ที่มีการติดสีเข้มที่ส่วนหัวและท้าย ปรากฏลักษณะคล้ายเข็มกลัด(safety-pin appearance) มี flagella สามารถเคลื่อนที่ได้ ไม่มีการสร้างสปอร์และแคปซูล', 'Catalase – positive', '-', 'gram stain'),
(NULL, 'B58_B_pseudomallei(PIC2).jpeg', NULL, NULL, 'เมื่อเพาะเลี้ยงบน MacConkey agar จะมีลักษณะขาวขุ่น มันเงา(non-lactose fermenter)และจะเป็นสีชมพู เหี่ยวย่นภายหลัง 48 ชั่วโมง', NULL, 'Oxidase – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'TSI – K/N or K/K', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Growth at 42 °C – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Arginine dihydrolase(ADH) - positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF glucose – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF lactose – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF maltose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF sucrose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF mannitol - negative', NULL, NULL),
(59, 'B59_A_iwoffi(PIC1).jpegB59_A_iwoffi(PIC2).jpeg', 'Acinetobacter iwoffi', 'เป็นเชื้อแบคทีเรียที่สามารถพบได้ในดิน น้ำ อาหารแช่แข็ง และสิ่งแวดล้อมในโรงพยาบาล เชื้อนี้มีการ colonize อยู่ที่ผิวหนังและเยื่อเมือกบุผิว โดยส่วนใหญ่เชื้อนี้เป็นเชื้อก่อโรคในโรงพยาบาล(nosocomial infection) ก่อให้เกิดการติดเชื้อและมีอาการ คือ ติดเชื้อในกระแสเลือด ติดเชื้อที่ระบบทางเดินปัสสาวะ ตา ผิวหนัง บาดแผล เยื่อบุหัวใจอักเสบและปอดบวม', 'โคโลนีไม่มีสี กลม ผิวเรียบ ขอบเรียบ มีความมันเยิ้ม(opaque) มีขนาดโคโลนีประมาณ 1.0 – 1.5 มิลลิเมตร', 'เป็น gram negative coccbacilli มีการจัดเรียงเป็นเซลล์เดี่ยว(single) เป็นคู่(in pairs) หรืออาจจะเป็นสาย(in chains) ไม่มีการเคลื่อนที่ ไม่มีการสร้างสปอร์และแคปซูล', 'Catalase – positive', '-', 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Oxidase – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – variable', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF glucose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Arginine hydrolysis – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Growth at 42 °C – negative', NULL, NULL),
(60, 'B60_Achromobacter_xylosidans(PIC1).jpeg', 'Achromobacter xylosidans', 'เป็นแบคทีเรียแกรมลบ พบได้ทั่วไปในธรรมชาติ เชื้อชนิดนี้จัดว่าเป็นเชื้อก่อโรคฉวยโอกาส(opportunistic infection) สามารถก่อให้เกิดการติดเชื้อในกระแสเลือด โดยเฉพาะอย่างยิ่งในผู้ป่วยที่เป็น cystic fribrosis และ cellulitis ได้', 'เมื่อเพาะเลี้ยงบน Nutrient agar พบว่าโคโลนีเป็นสีขาวอมเทา มีลักษณะกลม มันเยิ้ม(opaque) ผิวเรียบ ขอบเรียบ บางครั้งอาจมีผิวขรุขระได้', 'เป็น gram negative bacilli มีรูปร่างตรง ปลายมน สามารถเคลื่อนที่ได้โดยใช้ petrichous flagella ไม่มีการสร้างสปอร์และแคปซูล', 'Catalase – positive', '-', 'gram stain'),
(NULL, 'B60_Achromobacter_xylosidans(PIC2).jpeg', NULL, NULL, NULL, NULL, 'Oxidase – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Motile – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'TSI – K/N or K/K', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Arginine dihydrolase(ADH) - positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF glucose – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF lactose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF maltose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF sucrose – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF mannitol - negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – negative', NULL, NULL),
(61, 'B61_V_cholerae_O1(PIC1).jpeg', 'Vibrio cholerae', 'เป็นแบคทีเรียแกรมลบ สามารถพบได้ในน้ำจืด ปนเปื้อนในอาหารทะเล ได้แก่ กุ้ง หอย ปู ปลา ปลาหมึกและในสิ่งมีชีวิตในน้ำ เชื้อชนิดนี้ก่อให้เกิดอาการท้องร่วงโดยมีหลายระดับความรุนแรง(ตั้งแต่ cholera gravis , pandemic cholera จนถึงอาการท้องเสียเล็กน้อย) เนื่องจากมีการสร้าง toxin แล้วไปกระตุ้น regulatory protein จนทำให้เกิดพยาธิสภาพที่ผิดปกติตามมา', 'เมื่อเพาะเลี้ยงบน TCBS agar ให้ผล sucrose fermenter(SF) โคโลนีมีสีเหลือง ขนาด 2-4 มิลลิเมตร แบน ผิวเรียบ ขอบเรียบ มันเยิ้ม(opaque)', 'เป็น gram negative bacilli มีรูปร่างตรงหรืออาจโค้งเล็กน้อย หรือคล้ายเครื่องหมายคอมม่า(comma-shaped) ไม่มี lateral flagella บน solid media', 'Catalase – positive', 'stool', 'gram stain'),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Oxidase – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Voges-Proskauer – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'H2S production – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '0% NaCl – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '1% NaCl – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '3% NaCl – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '6% NaCl – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '8% NaCl – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, '10% NaCl – negative', NULL, NULL),
(62, 'B62_S_maltophilia(PIC1).jpeg', 'Stenotrophomonas maltophilia', 'เป็นแบคทีเรียแกรมลบ พบได้ทั่วไปในสภาวะแวดล้อมที่มีน้ำ ไม่ได้เป็นเชื้อก่อโรคที่พบเป็นปกติในมนุษย์ แต่เป็นเชื้อก่อโรคที่มักเกิดขึ้นมาจากการติดเชื้อที่โรงพยาบาล(nosocomial infection) มักพบในผู้ป่วยที่ได้รับสารน้ำผ่านท่อต่างๆ การใส่ท่อสวนปัสสาวะ เป็นต้น', 'เมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล non-lactose fermenter(NLF) โคโลนีมีขนาดเล็ก ผิวเรียบ ขอบเรียบ นูน', 'เป็น gram negative bacilli มีรูปร่างตรง สามารถเคลื่อนได้และมี polar flagella 4 อัน', 'Catalase – positive', '-', 'gram stain'),
(NULL, 'B62_S_maltophilia(PIC2).jpeg', NULL, NULL, NULL, NULL, 'Oxidase – negative แต่ในบางครั้งให้ผล weakly positive ได้', NULL, NULL),
(NULL, 'B62_S_maltophilia(PIC3).jpeg', NULL, NULL, NULL, NULL, 'Motile – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Indole – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'TSI – K/N', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'MR – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'VP – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'HS – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Nitrate reduction – variable', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Arginine dihydrolase(ADH) - positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF glucose – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF lactose – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF maltose – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF sucrose – positive', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'OF mannitol - negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Citrate – negative', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, 'Urease – negative', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_comment`
--

CREATE TABLE `social_comment` (
  `comment_id` int(11) NOT NULL,
  `comment_topicid` int(11) NOT NULL,
  `comment_pic` varchar(200) DEFAULT NULL,
  `comment_description` mediumtext NOT NULL,
  `comment_user` int(11) NOT NULL,
  `comment_date` datetime NOT NULL,
  `comment_num` int(11) NOT NULL,
  `comment_like` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social_comment`
--

INSERT INTO `social_comment` (`comment_id`, `comment_topicid`, `comment_pic`, `comment_description`, `comment_user`, `comment_date`, `comment_num`, `comment_like`) VALUES
(1, 1, NULL, '<p>gfdgfg</p>', 5, '0000-00-00 00:00:00', 0, ''),
(2, 1, NULL, '<p>ไม่รู้ครับ</p>', 5, '0000-00-00 00:00:00', 0, ''),
(3, 1, NULL, '<p>งงงงงงง</p>', 5, '0000-00-00 00:00:00', 0, ''),
(4, 1, '1560114289.jpg', '<p>ทดสอบ</p>', 5, '0000-00-00 00:00:00', 0, ''),
(5, 1, '1560114302.jpg', '<p>fddsfsdf</p>', 5, '0000-00-00 00:00:00', 0, ''),
(6, 9, '1560114492.jpg', '<p>dfsdfdsf</p>', 5, '0000-00-00 00:00:00', 0, ''),
(7, 5, '1560115613.jpg', '<p>dfdfdfdf</p>', 5, '0000-00-00 00:00:00', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `social_topic`
--

CREATE TABLE `social_topic` (
  `topic_id` int(11) NOT NULL,
  `topic_title` varchar(600) NOT NULL,
  `topic_detail` mediumtext NOT NULL,
  `topic_pic` varchar(200) NOT NULL,
  `topic_date` datetime NOT NULL,
  `topic_authur` int(11) NOT NULL,
  `topic_type` int(11) NOT NULL,
  `topic_allow` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social_topic`
--

INSERT INTO `social_topic` (`topic_id`, `topic_title`, `topic_detail`, `topic_pic`, `topic_date`, `topic_authur`, `topic_type`, `topic_allow`) VALUES
(1, 'ทดสอบ 001', '<p>dfdfdddfdf</p>', '1559799362.jpg', '0000-00-00 00:00:00', 5, 0, 0),
(2, 'ทดสอบ 001', '<p>dfdfdddfdf</p>', '1559799430.jpg', '0000-00-00 00:00:00', 5, 0, 0),
(3, 'สอบถามครับ', '<p>รูปนี้คืออะไรครับ</p>', '1559803923.jpg', '0000-00-00 00:00:00', 5, 0, 0),
(4, 'ทดสอบ 001', '<p>Another possibility is that you have on your page some custom JavaScript code that finds element by&nbsp;<code>asap</code>&nbsp;id and checks this checkbox. So when you don&#39;t set id, JavaScript cannot check it, but when you set this id, the checkbox will be checked by JavaScript.</p>', '1560103562.png', '0000-00-00 00:00:00', 5, 0, 0),
(5, 'ทดสอบ 001', '<p>dfdfdfdfdf</p>', '1560104438.jpg', '2019-06-09 18:20:38', 5, 0, 0),
(6, 'fdd', '<p>sdfdsfdfdfs</p>', '', '2019-06-09 18:23:23', 5, 0, 0),
(7, 'ทดสอบ 001', '<p>ddsssssssssssss</p>', '', '2019-06-09 18:27:18', 5, 0, 1),
(8, 'dfsssss', '<p>sdfdsfsdfsdf</p>', '', '2019-06-09 18:31:27', 5, 0, 1),
(9, 'สอบถามครับ', '<p>fdsfsdfdsf</p>', '', '2019-06-09 20:56:01', 5, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `specimen`
--

CREATE TABLE `specimen` (
  `specimen_id` int(11) NOT NULL,
  `specimen_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `specimen`
--

INSERT INTO `specimen` (`specimen_id`, `specimen_name`) VALUES
(1, 'เลือด(Blood)'),
(2, 'ปัสสาวะ(Urine)'),
(3, 'อุจจาระ(Stool)'),
(4, 'Rectal swab'),
(5, 'Genital swab'),
(6, 'เสมหะ(Sputum)'),
(7, 'Sputum Suction'),
(8, 'หนอง(Pus)'),
(9, 'สารน้ำ(Fluid)'),
(10, 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `staining`
--

CREATE TABLE `staining` (
  `staining_id` int(11) NOT NULL,
  `staining_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staining`
--

INSERT INTO `staining` (`staining_id`, `staining_name`) VALUES
(1, 'Wet Smear'),
(2, '10% KOH '),
(3, 'Gram stain'),
(4, 'Wright s stain'),
(5, 'AFB Positive'),
(6, 'AFB Negative'),
(7, 'm-AFB Positive'),
(8, 'm-AFB Negative'),
(9, 'Tzanck smear'),
(10, 'India Ink'),
(11, 'Lacto Phenol Cotton Blue(LPCB)'),
(12, 'Auramin O'),
(13, 'Gomori methenamine silver stain (GMS stain)'),
(14, 'Other staining'),
(15, 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `stainingsub`
--

CREATE TABLE `stainingsub` (
  `stainingsub_id` int(11) NOT NULL,
  `stainingsub_name` varchar(200) NOT NULL,
  `staining_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stainingsub`
--

INSERT INTO `stainingsub` (`stainingsub_id`, `stainingsub_name`, `staining_id`) VALUES
(1, 'Wet Smear', 1),
(2, '2', 2),
(3, '3', 3),
(4, '4', 4),
(5, 'Mycobacterium spp.', 5),
(6, 'Nocardia spp.', 6),
(7, 'Rhodococcus spp.', 6),
(8, 'Herpes Simplex Virus(HSV)', 7),
(9, 'Cryptococcus spp.', 8),
(10, 'Histoplasma spp.', 9),
(11, 'Penicillium marneffei', 9),
(12, 'Penicillium spp.', 9),
(13, 'Fusarium spp.', 9),
(14, 'Microsporum gypseum', 9),
(15, 'Microsporum canis ', 9),
(16, 'Epidermophyton floccosum', 9),
(17, 'Rhizopus spp.', 9),
(18, 'Phialophora verrucosa', 9),
(19, 'Curvularia spp.', 9),
(20, 'Aspergillus flavus', 9),
(21, 'Aspergillus fumigatus', 9),
(22, 'Aspergillus terreus', 9),
(23, 'Aspergillus niger', 9),
(24, 'Acremonium spp.', 9),
(25, 'Exophiala jeanselmei', 9),
(26, 'Syncephalastrum spp.', 9),
(27, 'Paecilomyces spp.', 9),
(28, 'Scytalidium spp.', 9),
(29, 'Sporothrix spp.', 9),
(30, 'Hortaea spp.', 9),
(31, 'Trichophyton mentagophytes', 9),
(32, 'Trichophyton spp.', 9),
(33, 'Bipolaris spp.', 9),
(34, 'Basidiobolus spp.', 9),
(35, 'Cunninghamella spp. (No Slide)', 9),
(36, 'Mycobacterium spp.', 10),
(37, '11', 11),
(38, 'test', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_case`
--

CREATE TABLE `tb_case` (
  `case_id` int(11) NOT NULL,
  `case_patientid` int(11) NOT NULL,
  `case_useropencase` int(11) NOT NULL,
  `case_body` varchar(50) DEFAULT NULL,
  `case_dateopen` varchar(20) NOT NULL,
  `dateopen_sys` int(11) NOT NULL,
  `dateopen_dlas` int(11) NOT NULL,
  `dateopen_pulse` int(11) NOT NULL,
  `dateopen_temp` varchar(100) DEFAULT NULL,
  `dateopen_allergic` varchar(100) DEFAULT NULL,
  `dateopen_congenital` varchar(100) DEFAULT NULL,
  `dateopen_procudure` varchar(200) NOT NULL,
  `dateopen_main` varchar(100) NOT NULL,
  `dateopen_sub` varchar(100) NOT NULL,
  `dateopen_room` int(11) DEFAULT NULL,
  `case_datemeet` datetime NOT NULL,
  `datemeet_procudure` varchar(200) NOT NULL,
  `datemeet_main` varchar(100) NOT NULL,
  `datemeet_sub` varchar(100) NOT NULL,
  `datemeet_room` int(11) NOT NULL,
  `datemeet_indication` varchar(500) DEFAULT NULL,
  `datemeet_anesthesia` varchar(300) NOT NULL,
  `datemeet_anesthesis` varchar(300) NOT NULL,
  `datemeet_rapid` int(11) NOT NULL,
  `datemeet_remark` varchar(100) NOT NULL,
  `datemeet_physicians01` int(11) NOT NULL,
  `datemeet_physicians02` int(11) NOT NULL,
  `datemeet_nurse01` int(11) NOT NULL,
  `datemeet_nurse02` int(11) NOT NULL,
  `datemeet_nurse03` int(11) DEFAULT NULL,
  `datemeet_staff01` int(11) NOT NULL,
  `datemeet_staff02` int(11) NOT NULL,
  `case_status` int(11) NOT NULL,
  `recommendation` varchar(1000) DEFAULT NULL,
  `mainpart` int(11) DEFAULT NULL,
  `pathology` varchar(300) DEFAULT NULL,
  `following_guide` varchar(300) NOT NULL,
  `discharge_to` varchar(300) NOT NULL,
  `appointment_info` varchar(300) NOT NULL,
  `procedure_sub` varchar(300) NOT NULL,
  `finding` varchar(2000) NOT NULL,
  `accessory` varchar(2000) NOT NULL,
  `opd` varchar(200) DEFAULT NULL,
  `ward` varchar(200) DEFAULT NULL,
  `refer` varchar(200) DEFAULT NULL,
  `anes` int(11) NOT NULL,
  `capture_start` varchar(100) NOT NULL,
  `capture_end` varchar(100) NOT NULL,
  `wb_title` varchar(200) NOT NULL,
  `wb_description` varchar(6000) DEFAULT NULL,
  `wb_picmain` varchar(2000) NOT NULL,
  `wb_datetime` datetime NOT NULL,
  `wb_author` int(11) NOT NULL,
  `wb_type` int(11) DEFAULT NULL,
  `staining` varchar(200) NOT NULL,
  `pmi` int(11) NOT NULL,
  `morphology` int(11) NOT NULL,
  `specimen` int(11) NOT NULL,
  `wb_question` varchar(2000) DEFAULT NULL,
  `wb_choice01` text,
  `wb_choice02` text,
  `wb_choice03` text,
  `wb_choice04` text,
  `wb_choice05` text,
  `wb_answer` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `name` text,
  `name_detail` text,
  `colony_detail` text,
  `micro_exam` text,
  `biochemi` text,
  `tos` varchar(100) DEFAULT NULL,
  `pic` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_case`
--

INSERT INTO `tb_case` (`case_id`, `case_patientid`, `case_useropencase`, `case_body`, `case_dateopen`, `dateopen_sys`, `dateopen_dlas`, `dateopen_pulse`, `dateopen_temp`, `dateopen_allergic`, `dateopen_congenital`, `dateopen_procudure`, `dateopen_main`, `dateopen_sub`, `dateopen_room`, `case_datemeet`, `datemeet_procudure`, `datemeet_main`, `datemeet_sub`, `datemeet_room`, `datemeet_indication`, `datemeet_anesthesia`, `datemeet_anesthesis`, `datemeet_rapid`, `datemeet_remark`, `datemeet_physicians01`, `datemeet_physicians02`, `datemeet_nurse01`, `datemeet_nurse02`, `datemeet_nurse03`, `datemeet_staff01`, `datemeet_staff02`, `case_status`, `recommendation`, `mainpart`, `pathology`, `following_guide`, `discharge_to`, `appointment_info`, `procedure_sub`, `finding`, `accessory`, `opd`, `ward`, `refer`, `anes`, `capture_start`, `capture_end`, `wb_title`, `wb_description`, `wb_picmain`, `wb_datetime`, `wb_author`, `wb_type`, `staining`, `pmi`, `morphology`, `specimen`, `wb_question`, `wb_choice01`, `wb_choice02`, `wb_choice03`, `wb_choice04`, `wb_choice05`, `wb_answer`, `id`, `name`, `name_detail`, `colony_detail`, `micro_exam`, `biochemi`, `tos`, `pic`) VALUES
(1, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '1', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Fusarium spp.', 'สายพันธุ์ของ Fusarium ส่วนมากเป็นราดิน และมีการแพร่กระจายทั่วโลก บางชนิดเป็นเชื้อก่อโรคในพืช และยังพบว่ามีหลายๆชนิด เป็นเชื้อก่อโรคฉวยโอกาสที่สำคัญในมนุษย์ ซึ่งก่อให้เกิด hyalohyphomycosis (โดยเฉพาะอย่างยิ่งในผู้ที่โดนไฟไหม้ และปลูกถ่ายไขกระดูก)  กระจกตาอักเสบจากเชื้อรา(mycotic keratitis) และ onychomycosis ', '[\"F1_Fusarium_spp(PIC1).jpg\",\"F1_Fusarium_spp(PIC2).jpg\",\"F1_Fusarium_spp(PIC3).jpg\"]', '0000-00-00 00:00:00', 1, NULL, '0', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'โคโลนีเติบโตได้รวดเร็ว ประมาณ 4 วัน ให้โคโลนีเป็นปุยฟู(cottony) จนถึง ปุยแบบขนแกะ(wooly) สีพื้นผิวให้สีในช่วง ขาว เหลือง ชมพู ม่วงและแทน หากโคโลนีเป็นสีม่วง อาจสามารถบ่งชี้ว่าเป็น <i>Fusarium</i> ด้านหลังโคโลนีเป็นสีอ่อน แดง ม่วงเข้ม น้ำตาล หรือน้ำเงิน', 'พบสายราใส มีผนังกั้น(septate hyphae) มี microconidia 1-2 เซลล์ สีใส มีขนาดเล็กกว่า macroconidia มีรูปร่างเป็นทรงกระสวย ทรงกลมหรือรูปไข่ ได้Macroconidia เป็นสีใส มีตั้งแต่ 2 เซลล์จนได้หลายเซลล์ มีรูปร่างเป็นพระจันทร์เสี้ยว(sickle cell shaped) โดยเป็นเซลล์เรียวมน conidia ทั้ง 2 ชนิดจะงอกออกมาจาก phialide สามารถพบหรือไม่พบ chlamydospore ได้', NULL, '-', NULL),
(2, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Hortaea werneckii', 'Hortaea werneckii เป็นเชื้อราที่ย่อยสลายอินทรีย์ พบในดิน ปุ๋ยหมัก ซากพืชและบนไม้ในภูมิภาคเขตร้อนและกึ่งร้อนชื้น และเชื้อรานี้ก่อให้เกิด tinea nigra ในมนุษย์', '[\"F2_Hortaea_werneckii(PIC1).jpg\",\" F2_Hortaea_werneckii(PIC2).jpg\",\"F1_Fusarium_spp(PIC3).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 'โคโลนีมีการเจริญเติบโตได้ช้า เริ่มต้นโคโลนีมันเยิ้มคล้ายยีสต์ และมีสีดำสว่าง เมื่อแก่ขึ้นจะมีการสร้างสายราอากาศ(aerial hyphae) ให้สีน้ำตาลจนถึงเขียวมะกอกเข้ม', 'พบสายราดำ มีผนังกั้น(black septate hyphae) มีโคนิเดียคล้ายยีสต์จำนวนมาก สีน้ำตาลอ่อน มีผนังกั้น แบ่งตัวเป็น 2 เซลล์ มีรูปร่างเป็นทรงกระบอก(cylindrical shaped) จนถึงเข็ม(spindle-shaped) มักเกาะกลุ่มกันเป็นจำนวนมาก chlamydospore สามารถพบได้', NULL, '-', NULL),
(3, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Neoscytalidium spp.', 'เชื้อในสกุลนี้เป็นราดำชั้นสูง(dematiaceous ascomycete) ที่ปกติจะก่อโรคในพืช แต่ปัจจุบันพบว่าสามารถก่อให้เกิดโรค onychomycosis และ dermatomycosis และมีโอกาสค่อนข้างยากในการทำให้เกิดการติดเชื้อแบบทั่วร่างกาย(Systemic infection)', '[\"F3_Neoscytalidium_spp.jpg\",\" F2_Hortaea_werneckii(PIC2).jpg\",\"F1_Fusarium_spp(PIC3).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 'โคโลนีเจริญเติบโตได้รวดเร็ว แรกเริ่มโคโลนีมีลักษณะคล้ายขนแมว(fluffy) สีขาว ต่อมากลายเป็นสีเขียวเทา และเมื่อแก่ขึ้นจะค่อยๆกลายเป็นสีดำเข้ม มีการสร้างสายราอากาศโดยจะมีลักษณะที่ค่อนข้างแย่', 'พบ arthroconidia แบบเซลล์เดียวหรือสองเซลล์ต่อกันเป็นสาย(in chain) ตอนอ่อนมีสีใส เมื่อแก่ขึ้นจะมีผนังที่หนา สีน้ำตาล', NULL, '-', NULL),
(4, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Histoplasma capsulatum', 'Histoplasmosis เป็นโรคเกี่ยวกับปอดที่ติดเชื้อมาจากชุมชน(community-acquired pulmonary infectios disease) โดยมีสาเหตุมาจาก สิ่งแวดล้อมมี microconidia เช่น ดินมีการสูดดมละอองของ microconidia เข้าไป เปลี่ยนแปลงเป็น yeast form ในปอด ต่อมาทำให้เกิดอาการติดเชื้อ มีอาการทางคลินิกคล้ายไข้หวัดใหญ่ หรือ ปอดบวม', '[\"F4_Histoplasma(PIC1).jpg\",\"F4_Histoplasma(PIC2).jpg\",\"F4_Histoplasma(PIC3).jpg\",\"F4_Histoplasma(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, 'เติบโตได้ช้าที่ 25-30 °C ใช้เวลา 2-4 สัปดาห์ จึงจะพบเห็นลักษณะโคโลนี เมื่อเพาะเลี้ยงที่ 25°C โคโลนีมีลักษณะเป็นปุยนุ่น(fluffy) สีขาว เมื่อเวลาผ่านไปจะเปลี่ยนแปลง กลายเป็นสีน้ำตาลจนถึงสีเหลืองแกมเทาเมื่อเพาะเลี้ยงที่ 37 °C ที่มีอาหารเลี้ยงเชื้อ สามารถปรากฏลักษณะเป็น โคโลนีหยิก ชื้น ซึ่งคล้ายกับยีสต์ และเป็นสีครีม', 'พบเห็น ก้านชูโคนิเดีย(conidiophore) ตั้งฉากกับสายรา และพบโคนิเดียมี 2 แบบ1.Microconidia - โคนิเดียขนาด 4-6 µm ลักษณะกลมจนไปถึงลูกชมพู่(pyriform shape)2.Macroconidia - มีขนาดใหญ่ ประมาณ 8-18 µm กลม มีผนังหนารอบๆ macroconidia โดยจะเห็นหนามรอบๆ เซลล์ คล้ายซี่เกวียน เรียก tuberculated Macroconidia', NULL, '-', NULL),
(5, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Talaromyces marneffei', 'แสดงออกมาให้เห็นเป็น ราสองรูป(dimorphic Fungi) โดย รา เติบโตในอาหารเลี้ยงเชื้อที่มีอุณหภูมิต่ำกว่า 30 °Cส่วนยีสต์เติบโตในเนื้อเยื่อที่ยังมีชีวิต หรือ ในอาหารเลี้ยงเชื้อที่อุณหภูมิ 37°Cเชื้อนี้มีแนวโน้มในการก่อโรคได้ในคนปกติ และเกิดขึ้นได้บ่อยในผู้มีภูมิคุ้มกันบกพร่องอย่างมีนัยสำคัญ', '[\"F5_T_marneffei(PIC1).jpg\",\"F5_T_marneffei(PIC2).jpg\",\"F5_T_marneffei(PIC3).jpg\",\"F5_T_marneffei(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, 'เมื่อเพาะเลี้ยงที่อุณหภูมิ 25 °C โคโลนีเจริญได้รวดเร็วประมาณ 3 วัน โคโลนีคล้ายหนังกลับด้าน(suede) จนไปถึงปุยนิ่ม(downy) สีขาว โดยที่ปลายหัว conidia ให้สีขาวเหลืองปนเขียว ใต้โคโลนีมีสีน้ำตาลแดงเมื่อเวลาผ่านไป โคโลนีจะกลายเป็นสีเทาอมชมพู ชมพู จนเป็นน้ำตาล', 'พบสายราสีใส มีผนังกั้น(septate hyphae) ก้านชูโคนิเดียสามารถพบเป็น สองแขนง(biverticillate) และแขนงเดียว(monoverticillate) ได้ ที่ส่วนปลายของก้านมี metulae 3-5 อัน ในแต่ละอันมี phialides 3-7 อัน phialide มีลักษณะคล้ายเข็ม(acerose) ไปจนรูปร่างเป็นแจกัน มีการสร้างโคนิเดียแบบ basipetal', NULL, '-', NULL),
(6, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Penicillium spp.', 'เป็นเชื้อที่เป็นกลุ่มขนาดใหญ่และมีจีนัสที่แพร่หลาย มีหลายสายพันธุ์ที่มีการปนเปื้อนในสารตั้งต้นต่างๆ สารที่พบนั้นเรียกว่า mycotoxin เชื้อก่อโรคในมนุษย์ของกลุ่มนี้พบได้ยาก แต่การติดเชื้อฉวยโอกาสนำไปสู่การเป็น mycotic keratitis, otomycosis และ endocarditis', '[\"F6_Penicillium_spp(PIC1).jpg\",\"F6_Penicillium_spp(PIC2).jpg\",\"F6_Penicillium_spp(PIC3).jpg\",\"F6_Penicillium_spp(PIC4).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, 'โคโลนีเติบโตได้รวดเร็ว ประมาณ 4 วัน สีโคโลนีจะออกเป็นแนวเฉดสีเขียว บางครั้งสีขาว ชื้น', 'พบราสีใส มีผนังกั้น(septate hyphae) ก้านชูโคนิเดียมีลักษณะเป็นก้านตัน สามารถแตกแขนงหรือไม่ก็ได้ phialides สามารถพบเป็นแบบเดี่ยว แบบกลุ่ม หรือเป็นลักษณะแตกแขนงของ metulae ซึ่งจะปรากฏคล้ายแปรงทาสี(penicillus) โคนิเดียมีลักษณะกลม รี ทรงกระบอกหรือเป็นกระสวย สีใสหรือเขียว มีผนังเรียบหรือขรุขระ', NULL, '-', NULL),
(7, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Mucor spp.', 'วงศ์ของ Mucor มีมากกว่า 50 วงศ์ซึ่งมีการแพร่กระจายและมีความสำคัญทางเศรษฐกิจ แต่มีเพียงไม่กี่สายพันธุ์ที่ทนต่อความร้อนและมีความสำคัญทางการแพทย์ จากรายงานพบว่าเชื้อที่สามารถก่อโรคในมนุษย์ประกอบไปด้วย M. circinelloides , M. indicus, M. ramosissimus, M. irregularis และ M. amphibiorum เป็นต้น', '[\"F7_Mucor_spp(PIC1).jpg\",\"F7_Mucor_spp(PIC2).jpg\",\"F7_Mucor_spp(PIC3).jpg\",\"F6_Penicillium_spp(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, 'โคโลนีไม่เจริญเติบโตที่ 37 °Cโคโลนีเจริญได้รวดเร็วประมาณ 2 วัน ให้ลักษณะเป็น ปุยสำลี(cottony) จนถึงขนแมว(fluffy) สีขาวจนถึงเหลือง จากนั้นสามารถกลายเป็นสีเทาดำได้เพราะมีการพัฒนา sporangiospore เกิดขึ้น', 'พบสายราใส ไม่มีผนังกั้น(hyaline with non-septate hyphae) ไม่มี rhizoid มีก้านชูสปอร์เรียก sporangiophore แตกแขนงได้ ส่วนปลายพบถุงสปอร์เรียก sporangium มีลักษณะกลมหรือรี มีขนาดใหญ่ ภายใน sporangium บรรจุสปอร์เรียก sporangiospores เมื่อสปอร์แตก จะเห็นส่วนที่ติดอยู่ปลายก้านชู เรียก collarette', NULL, '-', NULL),
(8, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Rhizopus spp.', 'สายพันธุ์ของ Rhizopus หลักๆ ที่ค้นพบประกอบไปด้วย R. caespitosus, R. delemar, R. homothallicus, R. microsporus, R. arrhizus (R. oryzae).jpeg R. reflexus, R. schipperae และ R. stolonifer ต่อมาได้ค้นพบ R. arrhizus และ R. microspores ซึ่งทั้ง 2 ชนิดนี้เป็นเชื้อก่อโรค mucormycosis ที่สำคัญ โดยคิดเป็นถึงร้อยละ 60% ของเคสทั้งหมด', '[\"F8_Rhizopus_spp.jpg\",\"F7_Mucor_spp(PIC2).jpg\",\"F7_Mucor_spp(PIC3).jpg\",\"F6_Penicillium_spp(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, 'โคโลนีเจริญรวดเร็วประมาณ 2 วัน มีลักษณะเป็นปุยฟู(cottony) สีขาวปนเทา ส่วนด้านหลังเป็นสีใสจนถึงสีขาว เชื้อเจริญได้ที่ได้ที่ 37 °C', 'พบสายราใส ไม่มีผนังกั้น(hyaline with non-septate hyphae) มี rhizoid ที่มีลักษณะคล้ายราก มีก้านชูสปอร์เรียก sporangiophore ไม่มีการแตกแขนง งอกออกจาก rhizoid ตรงตำแหน่งที่เรียกว่า node ส่วนปลายพบถุงสปอร์เรียก sporangium มีลักษณะกลมหรือรี มีขนาดใหญ่ ภายใน sporangium บรรจุสปอร์เรียก sporangiospores เมื่อสปอร์แตก จะหลุดออกหมด ไม่เห็นส่วนที่ติดอยู่ปลายก้านชู เรียก collarette', NULL, '-', NULL),
(9, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Microsporum gypseum', 'โคโลนีเจริญเติบโตได้รวดเร็ว ประมาณ 6-10 วัน ลักษณะพื้นผิวบนโคโลนีเป็น ผงแป้ง(powdery) จนถึงเม็ดทราย(granular)', '[\"F9_M_gypseum(PIC1).jpg\",\"F9_M_gypseum(PIC2).jpg\",\"F7_Mucor_spp(PIC3).jpg\",\"F6_Penicillium_spp(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 'สีด้านหน้าโคโลนี สีขาวถึงน้ำตาลอ่อน ใต้โคโลนีมีสีเหลืองจนถึงสีน้ำตาลแดง', 'พบสายราใส มีผนังกั้น(septate hyphae) มี macroconidia จำนวนมาก เป็นรูปกระสวย สมมาตร และปลายมน ผนังบาง ขอบผนังขรุขระ มีประมาณ 3-6 เซลล์microconidia มีขนาดเล็กจำนวนมาก มีลักษณะเป็นกระบอง(club shaped หรือ clavate shaped) และอยู่บนสายราตลอดแนว', NULL, '-', NULL),
(10, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Microsporum canis', 'เป็นเชื้อราที่ก่อให้เกิดโรค กลาก(dermatophytosis) โดยแท้จริงแล้วก่อให้เกิดพยาธิสภาพแก่สัตว์ แต่เมื่อมีการพาจากสัตว์สู่มนุษย์ ส่งผลทำให้มนุษย์เกิดพยาธิสภาพได้ โดยจะพบเป็น ringworms (ผื่นสีชมพูแดงที่ลำตัว หรือ คอ) เชื้อรานี้จะไม่แทรกซึมเข้าสู่ภายในผม(ectothrix)', '[\"F10_M_canis(PIC1).jpg\",\"F10_M_canis(PIC2).jpg\",\"F10_M_canis(PIC3).jpg\",\"F6_Penicillium_spp(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, 'โคโลนีเจริญเติบโตได้รวดเร็วประมาณ 6 วัน มีลักษณะแบน แผ่กระจาย ให้สีขาวจนถึงสีครีม บางครั้งที่พื้นผิวจะแสดงให้เห็นร่องการกระจาย(radial groove) ใต้โคโลนีมีสีเหลืองจนถึงสีน้ำตาล', 'พบสายรามีผนังกั้น(septate hyphae) มีทั้ง macroconidia และ microconidiamacroconidia มีรูปป่องตรงกลาง คล้ายกระสวย พบ knob ตรงปลายแบบไม่สมมาตร คล้ายตะขอ(hook) ผนังภายนอกหนา ขรุขระ มีเซลล์ 6-15 เซลล์ ส่วนผนังกั้นภายในเซลล์บางmicroconidia สามารถพบได้ มีลักษณะคล้ายกระบอง(clavate shaped) จนถึงรูปทรงกระบอก(pyriform shaped) แต่พบได้ยาก', NULL, '-', NULL),
(11, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Trichophyton rubrum', 'เชื้อชนิดนี้เป็นเชื้อราที่ก่อโรคในคน แต่มีบางชนิดที่สามารถก่อโรคในสัตว์ได้(anthropophilic fungus) มักก่อให้เกิดการติดเชื้อเรื้อรังที่ผิวหนัง เล็บและหนังศรีษะ สามารถพบ granulomatous lesion ได้ในคนไข้บางคน เมื่อตรวจดูภายใต้กล้องอาจจะพบ ectothrix หรือ endothrix ก็ได้', '[\"F11_T_rubrum.jpg\",\"F10_M_canis(PIC2).jpg\",\"F10_M_canis(PIC3).jpg\",\"F6_Penicillium_spp(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, 'โคโลนีเจริญได้ช้า ประมาณ 14 วัน ผิวโคโลนีเป็นปุยนิ่ม(downy) จนถึงหนังสัตว์กลับด้าน(suede) สีมีตั้งแต่สีขาวจนถึงครีม และแดงเข้ม ใต้โคโลนีอาจไม่มีสี สีขาวเหลืองจนถึงขาวน้ำตาล หรือแดงแบบไวน์', 'พบสายราใส มีผนังกั้น(hyaline septate hyphae)microconidia มีจำนวนมาก มีลักษณะเป็นหยดน้ำ(tear drop shaped) จนถึงรูปกระสวย แต่หยดน้ำจะพบได้บ่อยที่สุดmacroconidia มีหลายเซลล์ มีผนังบาง พบลักษณะคล้ายดินสอ(pencil shaped หรือ cigar shaped)', NULL, '-', NULL),
(12, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Trichophyton mentagrophytes', 'เชื้อราชนิดนี้โดยแท้จริงแล้วก่อให้เกิดพยาธิสภาพแก่สัตว์ แต่เมื่อมีการพาจากสัตว์สู่มนุษย์ ส่งผลทำให้มนุษย์เกิดพยาธิสภาพได้(zoophilic fungus) ก่อให้เกิดอาการอักเสบที่ผิวหนังหรือหนังศรีษะ และจะพบเป็น kerion ที่หนวดหรือที่หนังศรีษะได้', '[\"F12_T_mentagrophytes(PIC1).jpg\",\" F12_T_mentagrophytes(PIC2).jpg\",\" F12_T_mentagrophytes(PIC3).jpg\"]\r\n', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, 'โคโลนีเจริญได้ปานกลางประมาณ 7 วัน โคโลนีมีสีขาวจนครีม มีลักษณะเป็นผงแป้ง(powdery) จนไปถึงเม็ดทราย(granular) ส่วนใต้โคโลนีให้สีเหลืองน้ำตาล จนไปถึงแดงน้ำตาล', 'พบสายราใส มีผนังกั้น(hyaline septate hyphae) microconidia สามารถพบเป็นเซลล์เดี่ยวหรือมักจะอยู่รวมกันเป็นกลุ่มได้ มีผนังเรียบ ส่วนใหญ่มีรูปร่างกลม(spherical shaped)macroconidia มีลักษณะหลายเซลล์ ยืดยาว มีรูปร่างเป็น cigar shape และมักพบ spiral hyphae', NULL, '-', NULL),
(13, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Epidermophyton floccosum', 'เชื้อชนิดนี้เป็นเชื้อราที่ก่อโรคในคน แต่มีบางชนิดที่สามารถก่อโรคในสัตว์ได้(anthropophilic fungus) บ่อยครั้งมักทำให้เกิด tinea pedis, tinea cruris, tinea corporis และ onychomycosis', '[\"F13_Epidermophyton_floccosum(PIC1).jpg\",\" F13_Epidermophyton_floccosum(PIC2).jpg\",\" F13_Epidermophyton_floccosum(PIC3).jpg\"]\r\n', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL, NULL, 'โคโลนีเติบโตได้รวดเร็วปานกลาง ใช้เวลาประมาณ 10 วัน โคโลนีมีสีขาวขุ่นน้ำตาลอมเขียว หรือ สีคล้ายคากิ นูนและมีการพับที่ตรงกลางโคโลนี ใต้โคโลนีมีสีน้ำตาลอมเหลือง', 'พบสายราใส มีผนังกั้น(hyaline septate hyphae)พบ macroconidia ผนังบาง ผิวเรียบคล้ายใบขนุน(club shaped with rounded ends) พบการงอกของ macroconidia ออกจากสายราโดยตรงไม่พบ microconidia เมื่อโคโลนีแก่ขึ้นจะสามารถมีการพัฒนาเป็น chlamydospores ได้', NULL, '-', NULL),
(14, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Aspergillus flavus', 'Aspergillus section Flavi มีการผลิต aflatoxins ซึ่ง aflatoxin B1 เป็นสารพิษที่พบมากที่สุดที่เกิดจากการเมตาบอไลท์ทุติยภูมิจากเชื้อรา โดย A. flavus และ A. parasiticus ผลิต aflatoxin เป็นหลัก ในปัจจุบัน A. flavus เป็นเชื้อก่อโรคทางการแพทย์ที่สำคัญ ทั้งในมนุษย์และสัตว์ โดยเชื้อนี้ก่อให้เกิด otitis, keratitis, acute หรือ chronic invasive sinusitis และการติดเชื้อที่ปอดในบุคคลที่มีภูมิคุ้มกันบกพร่อง A. flavus เป็นเชื้อก่อโรคที่พบได้มากในลำดับที่ 2 ที่รองมาจาก A. fumigatus ในการก่อโรค invasive aspergillosis', '[\"F14_A_flavus(PIC1).jpg\",\"F14_A_flavus(PIC2).jpg\",\"F14_A_flavus(PIC3).jpg\",\"F14_A_flavus(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL, NULL, 'โคโลนีเจริญเติบโตได้รวดเร็วประมาณ 3 วัน เมื่อทำการเลี้ยงบน Czapek Dox agar จะให้โคโลนีเม็ดทราย(granular) แบน และบางครั้งจะเห็นการแผ่กระจาย สีโคโลนีในตอนแรกเป็นสีเหลือง เมื่อเวลาผ่านไปจะเริ่มมีสีที่สว่างขึ้นจนถึงสีเขียวอมเหลือง', 'พบสายราใส มีผนังกั้น(septate hyphae) ก้านชูโคนิเดีย(conidiophore) มีผิวที่ขรุขระ ที่หัวโคนิเดีย(conidial head)มีการแผ่กระจายเป็นรัศมี(radiate) ต่อมาจะมีการจัดเรียงตัวแบบหลวมๆ พบ phialide เป็น 2 ชั้น(biseriate) และสามารถพบ phialide ต่อโดยตรงจากหัวโคนิเดียได้(uniseriate) ลักษณะโคนิเดียเป็นทรงกลม สีเขียวอ่อน มีหนาม มี vesicle ที่เป็นทรงกลม', NULL, '-', NULL),
(15, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Aspergillus fumigatus', 'A. fumigatus เป็นเชื้อก่อโรคในมนุษย์เป็นหลัก และเชื้อกลุ่มนี้ยังมีหลาย complex จากการศึกษาพบว่าสัตว์และมนุษย์อาจเกิดการติดเชื้อได้จากหลายสายพันธุ์ เช่น A. lentulus, A. fumigatiaffinis, A. fumisynnematus และ A. felis', '[\"F15_A_fumigatus(PIC1).jpg\",\"F15_A_fumigatus(PIC2).jpg\",\"F15_A_fumigatus(PIC3).jpg\",\"F15_A_fumigatus(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 'โคโลนีเจริญเติบโตได้รวดเร็วประมาณ 3 วัน โคโลนีให้สีเขียวแกมน้ำเงิน มีพื้นผิวที่คล้ายกับหนังกลับด้าน(suede) หรือคล้ายกำมะหยี่', 'พบสายราใส มีผนังกั้น(septate hyphae) มีก้านชูโคนิเดีย(conidiophore)ที่สั้น มีผนังเรียบ ฃมีลักษณะเป็นรูปกรวยปากกว้างที่ปลายของ vesicle(conical shaped) มี phialide ชั้นเดียว ติด 2 ใน 3 บนหัวของ vesicle ในแนวชนานกับแกนของก้านชูโคนิเดีย(columnar conidial head)', NULL, '-', NULL),
(16, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Aspergillus terreus', 'Aspergillus terreus ปกติพบในดิน และมีรายงานว่าสามารถเป็นเชื้อก่อโรคทั้งในมนุษย์และสัตว์ได้', '[\"F16_A_terreus(PIC1).jpg\",\"F16_A_terreus(PIC2).jpg\",\"F16_A_terreus(PIC3).jpg\",\"F15_A_fumigatus(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL, NULL, 'โคโลนีใช้เวลาในการเจริญเติบโตประมาณ 5 วัน โคโลนีมีลักษณะคล้ายหนังกลับด้านหรือคล้ายกำมะหยี่ มีสีน้ำตาลแดง(cinnamon) จนไปถึงสีเหลืองน้ำตาล ใต้โคโลนีมีสีเหลืองจนถึงสีน้ำตาลเข้ม', 'พบสายราใส มีผนังกั้น(septate hyphae) ก้านชูโคนิเดีย(conidiophore)ใส มีผนังเรียบ มี phialide แตกแขนงเป็น 2 ชั้น(biseriate) ลักษณะของ phialide มีความยาวที่พอๆ กับ metulae phialide มีการเรียงตัวชิดติดกันและติดขนานกับแกนของก้านชูโคนิเดีย(compactly columnar)', NULL, '-', NULL),
(17, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Aspergillus niger', 'เชื้อชนิดนี้เป็นหนึ่งในเชื้อที่พบได้บ่อยและง่ายในการวิเคราะห์ จำแนกสายพันธุ์ในวงศ์ของ Aspergillus โดยสายพันธุ์นี้มักพบได้บ่อยใน aspergillomas และสามารถก่อให้เกิด otomycosis ได้ด้วย', '[\"F17_A_niger.jpg\",\"F16_A_terreus(PIC2).jpg\",\"F16_A_terreus(PIC3).jpg\",\"F15_A_fumigatus(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, 'โคโลนีเจริญเติบโตได้รวดเร็วประมาณ 2 วัน โคโลนีมีผิวเป็นเม็ดทราย(granular) มีสีน้ำตาลจนไปถึงสีดำ บางครั้งอาจมีขอบขาว หรือเหลืองที่บริเวณภายนอกสุดได้', 'พบสายราใส มีผนังกั้น(septate hyphae) ก้านชูโคนิเดียใสและจะเป็นสีดำขึ้นเรื่อยๆ ส่วน vesicle มี phialide สีดำ 2 ชั้น(biseriate) ติดรอบหัวของ vesicle มี conidia รูปร่างกลม หยาบ เป็นสีดำ', NULL, '-', NULL),
(18, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Acremonium spp.', 'สกุล Acremonium ประกอบไปด้วยหลากหลายสายพันธุ์ แต่ส่วนมากเป็นราที่ย่อยสลายพวกซากพืชที่ตายแล้วและดิน มีหลายสายพันธุ์ เช่น A. recifei และ A. alabamense ที่เป็นเชื้อฉวยโอกาสในมนุษย์และสัตว์ โดยก่อโรค mycetoma, mycotic keratitis และ onychomycosis', '[\"F18_Acremonium (PIC1).jpg\",\"F18_Acremonium (PIC2).jpg\",\"F18_Acremonium (PIC3).jpg\",\"F15_A_fumigatus(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, 'โคโลนีเจริญเติบโตได้ช้า ลักษณะโคโลเป็นเม็ดแป้ง(powdery) หรืออาจเป็นหนังกลับด้าน(suede) ได้ โคโลนีสามารถมีสีขาว เทา ชมพู โรสหรือสีส้มได้ ใต้โคโลนีมีสีเหลือง บางครั้งโคโลนีมีการอัดแน่นและชื้นได้', 'พบสายราใส มีผนังกั้น(หeptate hyphae) มีก้านชูโคนิเดียที่ยาว เรียว(delicate) คล้ายเส้นผม (hair-in appearance) มีโคนิเดียมักเป็นเซลล์เดียว มีสีใสหรืออาจพบสีในโคนิเดียได้แต่ยาก โคนิเดียกลมจนไปถึงทรงรูปกระบอก หรือเป็นรูปรี (elliptical) มักพบการเกาะกลุ่ม conidia ที่ปลายหัวของแต่ละ phialide', NULL, '-', NULL),
(19, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Exophiala jeanselmei', 'Exophiala jeanselmei มีการแพร่กระจายไปทั่วโลก และมีบันทึกว่าเป็นตัวที่ก่อให้เกิด mycetoma และ phaeohyphomycosis ในมนุษย์', '[\"F19_Exophiala_jeanselmei(PIC1).jpg\",\"F19_Exophiala_jeanselmei(PIC2).jpg\",\"F19_Exophiala_jeanselmei(PIC3).jpg\",\"F19_Exophiala_jeanselmei(PIC4).jpg\"]\r\n', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, NULL, NULL, 'โคโลนีเจริญเติบโตช้าประมาณ 15 วัน ตอนแรกเริ่มโคโลนีจะมีความนุ่ม มีสีเขียวอมเทาจนไปถึงสีดำ โคโลนีเยิ้มคล้ายกับยีสต์ เมื่อแก่ขึ้นจะมีการยกตัวนูนขึ้น และมีการกระจุกของสายราอากาศ(aerial mycelium) ใต้โคโลนีมีสีเขียวมะกอกจนถึงดำ', 'พบสายราเข้ม มีผนังกั้น(septate hyphae) ที่ส่วนปลายก้านชูโคนิเดีย(annellide) จะมีสีเข้มกว่าสายราส่วนอื่นๆ อีกทั้งพบ budding cell จำนวนมากมีลักษณะเป็นวงรี พบได้ในเชื้อราตัวอ่อน เมื่อแก่ขึ้น budding cell จะมีขนาดใหญ่ เป็นรูปวงรีกว้าง(germinating cells)', NULL, '-', NULL),
(20, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Phialophora verrucosa', 'สกุลของ Phialophora มีสมาชิกมากกว่า 40 สายพันธุ์ และส่วนมากพบราในดินหรือในซากไม้เป็นหลัก P. verrucosa เป็นตัวหลักทีก่อให้เกิด chromoblastomycosis อีกทั้งยังมีรายงานว่าสามารถก่อให้เกิด endocarditis, keratitis, และ osteomyelitis', '[\"F20_Phialophora_verrucosa(PIC1).jpg\",\"F20_Phialophora_verrucosa(PIC2).jpg\",\"F20_Phialophora_verrucosa(PIC3).jpg\",\"F19_Exophiala_jeanselmei(PIC4).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, 'โคโลนีเจริญเติบโตได้ช้า เริ่มต้นมีลักษณะโคโลนีเป็นรูปโดม(dome-shaped) ภายหลังจะแบนลง จนคล้ายกำมะหยี่ โคโลนีให้สีน้ำตาลถึงดำ ใต้โคโลนีมีสีน้ำตาลลอมดำ', 'พบสายรามีสีน้ำตาล มีผนังกั้น(brown septate hyphae) มี phialide คล้ายรูปแจกัน(flask shaped) หรือเป็นรูปไข่ที่มีปลายปิดเป็นทรงกรวย มีปากแจกัน ที่เรียกว่า collarette เป็นสีดำ ส่วนโคนิเดียมีสีใส ผนังบาง เป็นวงรีหรือรูปไข่ และบ่อยครั้งจะพบการเกาะกลุ่มอยู่ที่ส่วนหัวของ phialide', NULL, '-', NULL),
(21, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Curvularia spp.', 'สกุลของ Curvularia ประกอบไปด้วย 80 กว่าสายพันธุ์ โดยส่วนมากเป็นเชื้อราที่อยู่ในดิน หรือเชื้อก่อโรคในพืช โดยสมาชิกในกลุ่มนี้เดิมชื่อ B. australiensis, B. hawaiiensis และ B. spicifera ต่อมาได้มีการศึกษา phylogenetic จึงทำการจัดจำแนกและย้ายมาสู่สกุล Curvularia', '[\"F21_Curvularia_spp.jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, 'โคโลนีเจริญเติบโตได้รวดเร็ว มีลักษณะคล้ายหนังกลับด้านจนถึงปุยนิ่ม(downy) มีสีน้ำตาลอมดำ ใต้โคโลนีมีสีน้ำตาลถึงดำ', 'พบสายราสีดำ มีผนังกั้น(black septate hyphae) ก้านชูโคนิเดีย(condiophore) ตั้งชู ตรง มีผนังกั้น บ่อยครั้งจะมีการงอ(เพื่อเกิดการสร้าง conidia เป็นกระจุก) ส่วนโคนิเดียเป็นรูปไข่ มีความโค้ง และภายในโคนิเดียมีผนังกั้นตามขวาง มีการป่องตรงเซลล์ที่ 2 ถึง 3 มีสีน้ำตาลอมแดงจนถึงสีน้ำตาลมืด โดยปกติโคนิเดียจะมี 3-5 เซลล์', NULL, '-', NULL),
(22, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Sporothrix schenckii', 'Sporothrix schenckii complex เป็นราสองรูป(dimorphic fungi) และมีการแพร่กระจายไปทั่วโลกโดยเฉพาะอย่างยิ่งในภูมิภาคร้อนชื้น เชื้อราชนิดนี้มักพบในดิน และซากผักผลไม้เป็นหลัก แต่สามารถเป็นเชื้อก่อโรคในมนุษย์ได้Sporotrichosis เป็นโรคติดเชื้อราเรื้อรังที่ส่วนของเนื้อเยื่อผิวหนัง หรือใต้ผิวหนังหรือที่ต่อมน้ำเหลืองซึ่งอยู่บริเวณติดกัน เมื่อมีการติดเชื้อทุติยภูมิ (Secondary infection) สามารถแพร่กระจายไปยัง ข้อ กระดูก', '[\"F22_Sporothrix_schenckii(PIC1).jpg\",\"F22_Sporothrix_schenckii(PIC2).jpg\",\"F22_Sporothrix_schenckii(PIC3).jpg\",\"F22_Sporothrix_schenckii(PIC4).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, 'เมื่อเลี้ยงที่อุณหภูมิ 25 °C จะเติบโตได้ช้า โคโลนีเรียบเป็นมันคล้ายขี้ผึ้ง(glabrous) ชื้น มีรอยหยิกและรอยพับที่พื้นผิว บาง strain สามารถสร้างสายราอากาศแบบสั้นๆ ได้ และให้สีตั้งแต่สีขาวจนไปถึงครีมหรือไปถึงดำ', 'พบสายราใส มีผนังกั้น(septate hyphae) มีก้านชูโคนิเดียที่ชูขึ้นเป็นมุม มีผนังบาง มีโคนิเดียกระจุกกันเป็นกลุ่มบนสายราโดยเห็นลักษณะเป็นการแตกกอ(sympodial proliferation) บนก้านชูโคนิเดีย ซึ่งเหมือนลักษณะของดอกไม้ โคนิเดียมีลักษณะรี รูปไข่ ยืดยาว สีใส ผนังบาง', NULL, '-', NULL),
(23, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Paecilomyces spp.', 'สกุล Paecilomyces สามารถจำแนกออกจากสกุลที่ใกล้เคียงได้นั้นคือ Penicillium โดยที่จะมี phialide ที่เรียวยาว แตกแขนง(slender divergent phialide) และโคโลนีจะไม่สามารถเป็นสีเขียวได้Paecilomyces เป็นราที่พบในสิ่งแวดล้อมได้ และพบว่ามีนัยสำคัญที่สอดคล้องกับการติดเชื้อในมนุษย์ สายพันธุ์ของ Paecilomyces ที่สำคัญประกอบไปด้วย P. variotii และ P. marquandii ก่อให้เกิด mycotic keratitis และ hyalohyphomycosis ในผู้ป่วยที่มีภูมิคุ้มกันบกพร่อง', '[\"F23_Paecilomyces_spp(PIC1).jpg\",\" F23_Paecilomyces_spp(PIC2).jpg\",\" F23_Paecilomyces_spp(PIC3).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, NULL, NULL, 'โคโลนีสามารถเจริญเติบโตได้ประมาณ 3 วัน เติบโตได้รวดเร็ว ลักษณะโคโลนีเป็นผงแป้ง(powdery) หรือหนังกลับด้าน(suede) โคโลนีมีสีทอง เขียวทอง เหลืองน้ำตาล สีม่วงหรือสีแทน แต่จะไม่พบสีน้ำเงินหรือสีเขียวน้ำเงินเหมือน Penicillium spp.', 'พบสายราใส มีผนังกั้น(Septate hyphae) phialide มีการป่องออกที่ส่วนฐาน มีความเรียวยาว(tapering) คล้ายกับนิ้วมือ โคนิเดียค่อนข้างรี มีผิวเรียบหรือหยาบ เรียงต่อกันเป็นโซ่ยาว เบนออกจากก้านชูโคนิเดีย', NULL, '-', NULL),
(24, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Basidiobolus meristosporus', 'Basidiobolus meristosporus มีอยู่ทั่วไปในพืชผักผลไม้ที่เน่าเปื่อย และยังอยู่ในลำไส้เล็กของกบ คางคก จิ้งจกแบบภาวะเกื้อกูล(commensalism) เชื้อราชนิดนี้สามารถพบได้ในภูมิภาคเขตร้อนของแอฟริกาและเอเชีย ซึ่งได้แก่ อินเดีย อินโดนีเซีย และ ออสเตรเลีย', '[\"F24_Basidiobolus_meristosporus(PIC1).jpg\",\"F24_Basidiobolus_meristosporus(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, 'โคโลนีเจริญเติบโตได้รวดเร็วปานกลางที่อุณหภูมิ 30 °C มีลักษณะโคโลนีแบน สีเทาอมเหลือง จนถึงสีเทาอมครีม สามารถมีรอยพับได้ เมื่อมี mycelium เติบโต จะพบลักษณะโคโลนีเป็นผงแป้ง(powdery)', 'พบสายราดิน(vegatative hyphae) ขนาดใหญ่ เป็นวงกลมจำนวนมาก มีผนังบาง ส่วน zygospore มีผนังที่หนาซึ่งหากอยู่ติดกันจะคล้ายจะงอยปาก(beak-like appendages) ก้านชูสปอร์มีพื้นด้านล่างบวม มี conidia โดยจะมี primary conidia ลักษณะเป็นทรงกลม เซลล์เดี่ยว อยู่แยกจากก้านชูสปอร์(sporophore) และ secondary (replicative) conidia มีรูปร่างคล้ายกระบอง(clavate shaped) อยู่เป็นเซลล์เดี่ยว และจะถูกปล่อยออกมาจากก้านชูสปอร์ ส่วนปลายของสปอร์มี knob ยื่นออกมา', NULL, '-', NULL),
(25, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Cylindrocarpon spp.', 'สกุล Cylindrocarpon สามารถพบได้ในดิน', '[\"F25_Cylindrocarpon_spp.jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, NULL, NULL, 'โคโลนีเจริญเติบโตได้รวดเร็ว มีพื้นผิวคล้ายหนังกลับด้าย(suede) หรือคล้ายขนสัตว์(wooly) โคโลนีมีสีใสหรือสีออกไปทางสว่าง', 'พบสายราใส มีผนังกั้น(septate hyphae) มีก้านชูโคนิเดีย มี phialide กระจุกเป็นช่อ(verticillate phialide) รอบก้านชูโคนิเดีย คล้ายแปรงทาสี(brush-like structure) phialide มีลักษณะเป็นปากแจกัน(collarette) ขนาดเล็กพบ macroconidia ที่มีผนังกั้น 1 เซลล์จนถึงไปหลายเซลล์ ใส รูปร่างตรงหรือโค้ง มีปลายมนแต่ฐานแบนแคบ และพบ microconidia อยู่เป็นเซลล์เรียงเดี่ยว มีสีใส แยกออกจาก macroconidia ได้อย่างชัดเจน อาจพบ chlamydospore ที่มีสีใสจนน้ำตาล อยู่เป็นกลุ่ม ปลาย หรือในสายก็ได้', NULL, '-', NULL),
(26, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Conidiobolusspp', 'เชื้อในสกุลของ Conidiobolus มีการผลิต primary conidia จำนวนหลายเซลล์ และ secondary (replicative) conidia บนก้านชูโคนิเดียที่ไม่แตกแขนงในส่วนบน ในปัจจุบันสกุลของ Conidiobolus ประกอบไปด้วยมากกว่า 27 สายพันธุ์ แต่จากรายงานพบว่า Conidiobolus coronatus, C. incongruus และ C. lamprauges สามารถก่อให้เกิดการติดเชื้อในมนุษย์และสัตว์ได้', '[\"F26_Conidiobolus_spp(PIC1).jpg\",\" F26_Conidiobolus_spp(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL, NULL, 'โคโลนีเจริญเติบโตได้รวดเร็ว โคโลนีแบน เรียบมันคล้ายขี้ผึ้ง(glabrous) มีสีครีม ต่อมาจะมีรอยพับบนพื้นผิวโคโลนี โคโลนีคล้ายผงแป้ง(powdery) และมีสายราสีขาวบนพื้นผิวจะ เมื่อแก่มากขึ้น โคโลนีจะมีสีแทนจนถึงสีน้ำตาล', 'พบก้านชูโคนิเดียมีการฟอร์มตัวแบบเดี่ยว และมีโคนิเดียที่ส่วนท้ายเป็นทรงกลม เป็นเซลล์เดียว และมีปุ่มยื่นออกมาคล้ายลิ้น(papilla-like appearance) โคนิเดียจะมีลักษณะคล้ายเส้นผมที่เป็นระยางค์ต่อกัน(hair-like appendages) เรียกว่า villae', NULL, '-', NULL),
(27, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Exserohilum spp.', 'สกุลของ Exserohilum ประกอบไปด้วยประมาณ 35 สายพันธุ์ และสามารถแบ่งแยกออกจากสกุลของ Bipolaris และ Dreschlera โดย conidia มีลักษณะเป็น truncated hilum มีหลายสายพันธุ์ของ Exserohilum ที่ก่อให้เกิด phaeohyphomycosis ในปี 2014 ได้พบรายงานว่า E. rostratum เกี่ยวข้องกับการระบาดที่ทำให้เกิดการไขสันหลังอักเสบจากเชื้อรา(fungal meningitis)', '[\"F27_Exserohilum_spp(PIC1).jpg\",\" F27_Exserohilum_spp(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, NULL, NULL, 'โคโลนีมีผิวหน้าคล้ายหนังกลับด้าน(suede) จนขนปุย(floccose) มีสีเทาจนน้ำตาลอมดำ ใต้โคโลนีมีสีเขียวมะกอกถึงดำ', 'พบโคนิเดียแบบตรงหรืองอ เป็นทรงกระสวยหรือวงรี และมีการฟอร์มตัวของ poroconidia แบบช่อกระจุกยืดยาวไปตรงก้านชูโคนิเดีย โคนิเดียมีลักษณะเป็นท่อน(truncate hilum) มีผนังขรุขระ หนาและมืด', NULL, '-', NULL),
(28, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Paraconiothyrium spp.', 'เชื้อกลุ่มนี้เป็นเชื้อราชั้นสูง(ascomycetes fungi) พบได้ทั่วไปในสภาพแวดล้อมที่มีดินทั่วโลก เชื้อราในสกุลนี้หลายๆสายพันธุ์เป็นเชื้อก่อโรคในพืช และทำให้เกิดความเสียหายต่อเศรษฐกิจทางการเกษตร', '[\"F28_Paracoiothyrium_spp(NOTCOMPLETE).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, NULL, 'โคโลนีใช้เวลาในการเจริญเติบโตประมาณ 10 วัน โคโลมีพื้นผิวที่นิ่ม เรียบมันคล้ายขี้ผึ้ง(glabrous) พบสายราไม่มีสี โคโลนีมีสีเหลืองอ่อน จนถึงสีเหลืองน้ำตาล(ochreous) ส่วนสายราอากาศมีสีขาว คล้ายขนแมว(fluffy) ใต้โคโลนีไม่มีสี', 'พบสายราใส มีผนังกั้น(septate hyphae) มีโคนิเดียสีน้ำตาลอมแดง ผนังหนา ภายในมีช่องว่าง ลักษณะโคนิเดียเป็นรูปทรงกระบอก ส่วน phialide มีการยื่นเข้าไปในช่องว่างของ conidia', NULL, '-', NULL),
(29, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Syncephalastrum spp.', 'Syncephalastrum ประกอบไปด้วยหลายสายพันธุ์ แต่สายพันธุ์ที่พบการก่อโรคในมนุษย์ ได้แก่ Syncephalastrum racemosum เชื้อราชนิดนี้สามารถพบได้ในดิน และมูลสัตว์ ซึ่งพบได้ในภูมิภาคร้อนชื้นและกึ่งร้อนชื้น', '[\"F29_Syncephalastrum_spp(PIC1).jpg\",\" F29_Syncephalastrum_spp(PIC2).jpg\",\" F29_Syncephalastrum_spp(PIC3).jpg\",\" F29_Syncephalastrum_spp(PIC4).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, NULL, NULL, 'โคโลนีมีการเจริญเติบโตรวดเร็ว ลักษณะพื้นผิวโคโลนีคล้ายขนแมว(fluffy) หรือปุยสำลี(cottony) สีขาวจนถึงสีเทาสว่าง กลายเป็นสีเทาเข้มขึ้นเมื่อมีการพัฒนา sporangia', 'พบสายราสีน้ำเงิน มีผนังกั้น(blue septate hyphae) มีก้านชูสปอร์ตั้งตรง ลักษณะคล้ายไหล (Stolen-like) ของพืช มีการแตกกิ่งแบบเป็นช่อๆ(sympodial branching) มี merosporangia สีจางๆ ผนังบาง มีจำนวน 5-10 อัน สูงสุด 18 อัน รูปร่างทรงกลมจนไปถึงรูปไข่ พบ merospores ภายในมีผนังบาง', NULL, '-', NULL),
(30, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Trichothecium spp.', 'Trichothecium sppเป็นราสายที่พบในดินและพืชผักที่มีการย่อยสลาย มีการแพร่กระจายไปทั่วโลก ปัจจุบันยังไม่พบรายงานการก่อโรคในมนุษย์และสัตว์', '[\"F30_Trichothecium_spp.jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, 'โคโลนีเจริญเติบโตได้รวดเร็ว เชื้อราชนิดนี้ไม่สามารถเจริญเติบโตได้ที่อุณหภูมิ 37°C โคโลนีมีลักษณะคล้ายเม็ดทราย(granular) แบน และอาจมีลักษณะคล้ายผงแป้งได้(powdery) สีโคโลนีเริ่มต้นเป็นสีขาว ต่อมากลายเป็นสีชมพูอ่อนจนถึงสีพีช ใต้โคโลนีมีสีอ่อน', 'พบสายราใส มีผนังกั้น(hyaline septate hyphae) มีก้านชูโคนิเดียที่ยาว ไม่แตกแขนง มีโคนิเดีย 2 เซลล์ มีผนังกั้นระหว่างเซลล์ สีใส ผนังบาง มีลักษณะเป็นรูปลูกแพร(pear shaped) หรือรูปกระบอง(club shaped) บ่อยครั้งพบการเรียงตัวของโคนิเดียเป็นกลุ่มตามแนวยาวของ conidiophore ทำให้เกิดการทับกันมีรูปแบบเป็นซิกแซก(zigzag pattern)', NULL, '-', NULL),
(31, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Cladosporium spp.', 'Cladosporiumสามารถพบได้ทั่วโลก เชื้อราชนิดนี้ทำการเพาะแยกได้มาจาก ดินหรือสสารอินทรีย์ต่างๆ หากสูดดมทางอากาศจะมีโอกาสได้รับเข้าไป เชื้อราชนิดนี้เป็นเชื้อราที่ทนความร้อน และเป็นเชื้อก่อโรคที่แท้จริงในมนุษย์', '[\"F31_Cladosporium_spp(NOTSURE).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, 'โคโลนีเจริญเติบโตได้ช้า สีโคโลนีเป็นสีเขียวมะกอกอมน้ำตาล จนถึงสีดำอมน้ำตาล แต่บางครั้งสามารถมีสีเทา หรือน้ำตาลได้ ผิวโคโลนีคล้ายหนังกลับด้าน(suede) และจะคล้ายผงแป้ง(powdery) เมื่อเริ่มสร้าง conidia ใต้โคโลนีมีสีเขียวมะกอกอมดำ', 'พบสายรา มีผนังกั้น(septate hyphae) มีก้านชูโคนิเดีย(conidiophore) ที่ตั้งตรงอาจจะแตกแขนงส่วนปลายหรือไม่แตกก็ได้ พบลักษณะโคนิเดียสีดำ จำนวน 1-4 เซลล์ มีผนังบาง มีลักษณะคล้ายโล่(shield-like shaped) สายโคนิเดียจะมีการกระจุกกันเป็นช่อตลอดแนวยาวของก้านชูโคนิเดีย', NULL, '-', NULL),
(32, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Bipolaris spp.', 'Bipolaris เป็นกลุ่มราดำ พบได้ในสิ่งแวดล้อมและสามารถเพาะแยะได้จากเศษซากพืชและดิน เชื้อรากลุ่มนี้มีหลายสายพันธุ์ แต่สายพันธุ์ที่เป็นที่รู้จักและก่อโรคได้แก่ Bipolaris spicifera, Bipolaris australiensis, และ Bipolaris hawaiiensis(ปัจจุบันชื่อ Curvularia hawaiiensis) เชื้อราชนิดนี้สามารถก่อโรค Phaeohyphomycosis ได้', '[\"F32_Curvularia_hawaiiensis(Bipolaris hawaiiensis).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'Lactophenol Cotton Blue(LPCB)', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, 'โคโลนีเจริญเติบโตได้รวดเร็ว โคโลมีสีขาวจนน้ำตาลอมเทา และจะกลายเป็นสีเขียวมะกอกถึงดำ เมื่อแก่ขึ้น ผิวโคโลนีคล้ายขนสัตว์(wooly)', 'พบสายรามีผนังกั้น สีน้ำตาล(brown septate hyphae) มีก้านชูโคนิเดีย(conidiophore) เป็นสีน้ำตาล แตกแขนง หรือเป็นช่อ พบลักษณะของก้านชูโคนิเดียเป็น zigzag(zigzag-like appearance) มี poroconidia 3-6 เซลล์ เป็นรูปกระสวยถึงทรงกระบอก', NULL, '-', NULL),
(33, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Talaromyces marneffei (Binary Fission)', 'เป็นเชื้อที่มีคุณสมบัติเป็น thermal dimorphism คือมีการเจริญ 2 แบบ แบบแรกเปนการเจริญในอุณหภูมิ ประมาณ 25 องศาเซลเซียส ซึ่งเปนอุณหภูมิที่เชื้อ นี้อาศัยอยูในธรรมชาติแบบอิสระ(saprophytic) แบบที่สองเป็นการเจริญขึ้นในขณะที่ก่อพยาธิสภาพในคน(ที่อุณหภูมิ 37 องศาเซลเซียส)', '[\"F33_T_marneffei_Binaryfission(PIC1).jpg\",\" F33_T_marneffei_Binaryfission(PIC2).jpg\",\" F33_T_marneffei_Binaryfission(PIC3).jpg\",\" F33_T_marneffei_Binaryfission(PIC4).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, 'เห็น histiocytes ขยายกว้างออกไปเรื่อย ๆ บริเวณตอนกลางก็จะเกิดเป็นเนื้อตาย เชื้อจะหลุด ออกมา มี neutrophils เข้ามาเกิดเป็นฝีหนองตรง กลาง เชื้อราใน histiocytes เป็นลักษณะคลายยีสต์ รูปร่างกลมหรือรี ขนาดเส้นผ่าศูนย์กลางประมาณ 3 ไมครอน', 'เชื้อราที่อยู่นอกเซลล์จะตัวใหญ่ ยาว กว่าที่อยู่ในเซลล์ มีลักษณะคล้ายไส้กรอก มีผนังกั้นแบ่งกลาง ชัดเจนและเป็นลักษณะจําเพาะซึ่งใช้แยก Talaromyces marneffei จาก Histoplasma capsulaum', NULL, 'Pus', NULL),
(34, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Micrococcus', 'Micrococcus สามารถพบเจอได้หลากหลายที่ เช่น ผิวหนังมนุษย์ น้ำ ฝุ่นและดิน เดิมที่แบคทีเรียชนิดนี้เป็นแบคทีเรียที่ไม่มีความอันตรายใด ๆ แต่สามารถพบได้ยากในการก่อให้เกิดการติดเชื้อ ซึ่งบ่อยครั้งมักพบในผู้ป่วยที่มีภูมิคุ้มกันบกพร่อง โดยเฉพาะอย่างยิ่งในคนไข้ HIV เชื้อ Micrococcus หลักๆ ที่สามารถพบได้ประกอบไปด้วย 9 สายพันธุ์ ดังนี้', '[\"B01_Micrococcus_spp(PIC1).jpg\",\" B01_Micrococcus_spp(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'โคโลนีมีลักษณะกลม เนียน อาจมีการนูนออก ขอบเรียบ มีสีโคโลนีออกแนวสีเหลืองทอง หรือ สีแดง บางสายพันธุ์สามารถพบโคโลนีที่มีความหยาบ ผิวด้านได้', 'เป็น gram positive ที่มีรูปร่างเป็น วงกลม(spherical) มักอยู่เป็นคู่(in pairs) , เป็นเซลล์ 4 เซลล์ติดกัน(in tetrads) , หรือเป็นเซลล์รวมตัวกันหลายๆเซลล์(in cluster) ไม่พบการจัดเรียงตัวเป็นสาย มีขนาดประมาณ 0.5 – 2.0 ไมครอน ไม่มี capsule และ spore', 'Catalase – positiveOxidase – weakly positive and/or negativeGlucose fermenterTube coagulase – negativeBacitracin – sensitive', NULL, NULL),
(35, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Staphylococcus aureus', 'Staphylococcus เป็นจุลินทรีย์ในวงศ์ Micrococcaceae สามารถพบเชื้อนี้ได้ตามผิวหนัง โพรงจมูก เยื่อบุทางเดินหายใจ ทางเดินอาหาร และบาดแผลที่เป็นฝีหนอง รวมถึงในดินฝุ่นละออง สามารถก่อให้เกิดการติดเชื้อจากแบคทีเรียในมนุษย์ได้หลากหลายอย่าง เช่น  bacteremia, infective endocarditis, skin and soft tissue infections osteomyelitis, septic arthritis, prosthetic device infections, pulmonary infections(ปอดบวม และ ถุงลุมโป่งพอง) gastroenteritis, meningitis, toxic shock syndrome(TSS) และ urinary tract infections', '[\"B02_S_aureus(PIC1).jpg\",\" B02_S_aureus(PIC2).jpg\",\" .jpg\",\" F33_T_marneffei_Binaryfission(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 'เชื้อนี้สามารถเจริญได้ที่อุณหภูมิ 6 – 46 °C โดยมีช่วงอุณหภูมิที่เหมาะสมคือ 30 – 37 °C ทนความร้อนถึง 60 °C นาน 30 นาที ลักษณะโคโลนีพบว่ากลม ขอบเรียบ นูน มีสีครีม เหลืองหรือส้มบน Blood agar ให้  -hemolysis', 'เป็น gram positive bacteria มีรูปร่างเป็น cocci มีการจัดเรียงเป็นกลุ่มคล้ายองุ่น(grape-like cluster) แต่อาจะพบเป็นเซลล์เดี่ยว เป็นคู่หรือสายสั้นๆได้ (มักไม่เกิน 4 เซลล์) มีขนาด 0.5 – 1.0 ไมครอน', NULL, NULL, NULL),
(36, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Staphylococcus epidermidis', 'S. epidermidis เป็น facultative anaerobe โตได้ดีในสภาวะที่มีออกซิเจน เชื้อนี้จะทำการเจริญเติบโตที่ ผิวหนังมนุษย์ และสามารถก่อให้เกิดการติดเชื้อจากโรงพยาบาลได้(hospital-acquired infections) โดยเชื้อชนิดนี้มักจะตรวจพบได้ในน้ำลาย และคราบหินปูนซึ่งมีความสัมพันธ์กับ  periodontitis, acute and chronic pulpitis, dry socket, และ ปากนกกระจอก(angular stomatitis) แบคทีเรียชนิดนี้จัดอยู่ในหมวด Coagulase negative staphylococcus(CoNS)', '[\"B03_S_epidermidis.jpg\",\" B02_S_aureus(PIC2).jpg\",\" .jpg\",\" F33_T_marneffei_Binaryfission(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 'โคโลนีมีสีขาว ผิวเนียน ยกตัวนูน โคโลนีมีความเหนียว ขนาดประมาณ 1-2 ไมครอนบน Blood agar ไม่พบการเกิด hemolysis', 'เป็น gram positive bacteria รูปร่าง cocci มีการจัดเรียงตัวเป็นกลุ่ม 4 ก้อน(in tetrads) หรือเป็นแบบกลุ่ม(in cluster) มีขนาดเซลล์ 0.5 – 1.5 ไมครอน', 'Catalase – positiveOxidase - negativeTube coagulase – negativeornithine decarboxylase(ODC) – negativeNovobiocin – susceptible', 'Blood (Hemoculture)', NULL),
(37, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Staphylococcus saprophyticus', 'Staphylococcus saprophyticus', '[\"B04_S_saprophyticus.jpg\",\" B02_S_aureus(PIC2).jpg\",\" .jpg\",\" F33_T_marneffei_Binaryfission(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, 'โคโลนีสีขาวสว่าง ผิวเรียบ นูน ลักษณะคล้ายครีม(creamy colonies) ไม่พบการเกิด hemolysis บน Blood Agar', 'เป็น gram positive bacteria รูปร่าง cocci มีการจัดเรียงตัวเป็น กลุ่ม(in cluster) คล้ายองุ่น(grape-like appearance) หรือเป็นคู่ (in pairs)', 'Catalase – positiveOxidase - negativeTube coagulase – negativeNovobiocin - resistant', NULL, NULL),
(38, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Staphylococcus lugdunenesis', 'Staphylococcus lugdunensis', '[\"B05_S_lugdunenesis.jpg\",\" B02_S_aureus(PIC2).jpg\",\" .jpg\",\" F33_T_marneffei_Binaryfission(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, 'โคโลนีสีขาว มันวาว กึ่งเงา นูน มีขนาดโคโลนี 1-3 ไมครอน มีกลิ่นคล้ายหญ้าแห้ง(hay-like odor) พบ-hemolysis บน Blood Agarเมื่อโคโลนีแก่ขึ้นจะให้สีเหลืองขาว คล้ายได้', 'เป็น gram positive bacteria รูปร่าง cocci มีการจัดเรียงแบบเป็นกลุ่ม(in cluster)', 'Catalase – positiveOxidase - negativeTube coagulase – negativeNovobiocin - susceptiblepyrrolidonyl arylamidase (PYR) – positiveornithine decarboxylase(ODC) – positive', NULL, NULL),
(39, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Staphylococcus hominis', 'เป็นเชื้อแบคทีเรียในกลุ่ม coagulase negative staphylococci(CoNS) โดยปรกติไม่ก่อโรคมนุษย์ แต่จะอาศัยแบบเกื้อกูล(commensalism) บนผิวหนังของมนุษย์และสัตว์ในบางโอกาสก่อให้เกิดการติดเชื้อในคนไข้ที่มีภูมิคุ้มกันบกพร่อง เช่น ผู้ที่ได้รับ chemotherapy เป็นต้น', '[\"B06_S_hominis.jpg\",\" B02_S_aureus(PIC2).jpg\",\" .jpg\",\" F33_T_marneffei_Binaryfission(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, 'โคโลนีมีขนาดเล็ก มีสีขาว หรือ แทน นูน มันวาว ขนาดประมาณ 1-2 ไมครอน เติบโตได้ดีในสภาวะที่มีอากาศ ไม่พบ hemolysis บน Blood agar อุณหภูมิที่เหมาะสมในการเจริญเติบโต คือ 20-45 °C', 'เป็น gram positive cocci มีขนาดเซลล์ประมาณ 1-1.5 ไมครอน มีการจัดเรียงรูปร่างเป็นเซลล์เดี่ยว(single) หรือเป็นคู่(in pairs) หรือเป็นกลุ่ม(in cluster) ไม่มีการสร้างสปอร์และแคปซูล ไม่มีการเคลื่อนที่', 'Catalase – positiveOxidase - negativeTube coagulase – negativeNovobiocin – resistanceArginine dihydrolase(ADH) – negativeODC - negative', NULL, NULL);
INSERT INTO `tb_case` (`case_id`, `case_patientid`, `case_useropencase`, `case_body`, `case_dateopen`, `dateopen_sys`, `dateopen_dlas`, `dateopen_pulse`, `dateopen_temp`, `dateopen_allergic`, `dateopen_congenital`, `dateopen_procudure`, `dateopen_main`, `dateopen_sub`, `dateopen_room`, `case_datemeet`, `datemeet_procudure`, `datemeet_main`, `datemeet_sub`, `datemeet_room`, `datemeet_indication`, `datemeet_anesthesia`, `datemeet_anesthesis`, `datemeet_rapid`, `datemeet_remark`, `datemeet_physicians01`, `datemeet_physicians02`, `datemeet_nurse01`, `datemeet_nurse02`, `datemeet_nurse03`, `datemeet_staff01`, `datemeet_staff02`, `case_status`, `recommendation`, `mainpart`, `pathology`, `following_guide`, `discharge_to`, `appointment_info`, `procedure_sub`, `finding`, `accessory`, `opd`, `ward`, `refer`, `anes`, `capture_start`, `capture_end`, `wb_title`, `wb_description`, `wb_picmain`, `wb_datetime`, `wb_author`, `wb_type`, `staining`, `pmi`, `morphology`, `specimen`, `wb_question`, `wb_choice01`, `wb_choice02`, `wb_choice03`, `wb_choice04`, `wb_choice05`, `wb_answer`, `id`, `name`, `name_detail`, `colony_detail`, `micro_exam`, `biochemi`, `tos`, `pic`) VALUES
(40, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Staphylococcus haemolyticus', 'เป็นแบคทีเรียชนิดหนึ่งในกลุ่ม CoNS พบว่าเป็นส่วนหนึ่งของผิวหนังบนร่างกายมนุษย์ และพบจำนวนมากในส่วนรักแร้ ขาหนีบ และ perineum เป็นที่รู้จักกันว่าเป็นเชื้อฉวยโอกาส ที่ก่อให้เกิดการติดเชื้อทั่วระบบร่างกาย และการติดส่วนใหญ่เกี่ยวข้องกับการสอดใส่อุปกรณ์เครื่องมือทางการแพทย์ อีกทั้งยังมีอุบัติการณ์เชื้อดื้อยา methicillin resistant ที่สูงมากอีกด้วย', '[\"B07_S_haemolyticus.jpg\",\" B02_S_aureus(PIC2).jpg\",\" .jpg\",\" F33_T_marneffei_Binaryfission(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, 'โคโลนีไม่มีสี หรือ มีสีขาวอมเหลือง ผิวเรียบ มันวาว มีขนาด 5-9 ไมครอน พบ-hemolysis บน Blood Agarเชื้อแบคทีเรียนี้เจริญเติบโตได้ดีในสภาวะที่มีอากาศ มีอุณหภูมิที่เหมาะสมในการเจริญเติบโต อยู่ที่ 34-35 °C', 'เป็น gram positive cocci มีการจัดเรียงเป็น in pair หรือ in cluster ขนาดเซลล์ประมาณ 0.8-1.3 ไมครอน ไม่มีการเคลื่อนที่ ไม่มีสปอร์', 'Catalase – positiveOxidase - negativeTube coagulase – negativeNovobiocin – susceptibleArginine dihydrolase(ADH) – positive', NULL, NULL),
(41, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Streptococcus pyogenes', 'S. pyogenes', '[\"B08_Strep_pyogenes.jpg\",\" B02_S_aureus(PIC2).jpg\",\" .jpg\",\" F33_T_marneffei_Binaryfission(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, 'โคโลนีดูเป็นเมือก ผิวหยาบ ให้-hemolysis ใช้อุณหภูมิ 37 °C ซึ่งเหมาะสมการเจริญเติบโต ไม่สามารถเจริญเติบโตได้ที่ 10°C หรือ 45°C', 'พบ gram positive cocci มีการจัดเรียงตัวเป็น สาย(in chains) อาจจะพบเป็นสายสั้น หรือ สายยาวก็ได้', 'Catalase – negativeOxidase – negativeCapsule – capsulatedCoagulase – negativeCapsule – positiveBacitracin – susceptiblePYR – positive', NULL, NULL),
(42, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Streptococcus agalactiae', 'Streptococcus agalactiaeที่เป็น Group B เนื่องจากการแบ่งหมวดหมู่ของ Lancefield เชื้อนี้มี polysaccharide ล้อมรอบ(เป็น capsule) และสามารถแบ่งเป็นหลายๆ serotype ได้ เช่น Ia, Ib, II–IX', '[\"B09_S_agalactiae(PIC1).jpg\",\" B09_S_agalactiae(PIC2).jpg\",\" .jpg\",\" F33_T_marneffei_Binaryfission(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 'โคโลนีให้-hemolysis มีสีเหลือง ส้ม หรือแดงอิฐ เรียบ นูน เติบโตได้ที่ 37 °C และไม่เจริญเติบโตที่ 45 °C', 'เป็น gram positive cocci ขนาด 0.6 – 1.2 ไมครอน มีการจัดเรียงตัวเป็นสายยาว(in long chains) ไม่มีการเคลื่อนที่และไม่สร้างสปอร์', 'Catalase – negativeOxidase – negativeCoagulase – negativeCapsule – capsulatedBacitracin - resistantCAMP test – positivePYR – negativeUrease – negative', NULL, NULL),
(43, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Streptococcus salivarius', 'S. salivarius มีการเพิ่มจำนวนของเชื้อที่บริเวณ ช่องปาก(oral cavity) และทางเดินหายใจส่วนบน(upper respiratory tract) เป็นแบคทีเรียที่ไม่ก่อพยาธิสภาพในคนปกติ แต่สามารถก่อให้เกิดการติดเชื้อฉวยโอกาส(opportunistic pathogen) ได้ ซึ่งทำให้เกิดการติดเชื้อในกระแสเลือด(septicemia)', '[\"B10_S_salivarius.jpg\",\" B09_S_agalactiae(PIC2).jpg\",\" .jpg\",\" F33_T_marneffei_Binaryfission(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, 'พบ-hemolysis หรือ-hemolysis บน Blood Agar โคโลนีมี โคโลนีสีขาวขุ่น หรือสีเทา ผิวเรียบ ขอบนูน', 'เป็น gram positive cocci มีการจัดเรียงตัวเป็น คู่(in pairs) และ สายสั้น(in short chains)', 'Arginine – negativeEsculin – positiveVP – positiveMannitol – negativeSorbitol – negativeUrea – variable', NULL, NULL),
(44, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Streptococcus mutans', 'S. mutans มีถิ่นที่อยู่ที่บริเวณ ปาก คอหอยและลำไส้เล็ก เชื้อแบคทีเรียชนิดนี้เป็นสาเหตุที่ทำให้เกิดคราบหินปูน(tooth decay) อย่างมีนัยสำคัญ โดยส่วนใหญ่เชื้อนี้จะก่อให้เกิดโรคทางช่องปากเป็นหลัก จากการศึกษาพบว่ามีความใกล้เคียงกับสายพันธุ์ Streptococcus sobrinus', '[\"B11_S_mutans(PIC1).jpg\",\" B11_S_mutans(PIC2).jpg\",\" .jpg\",\" F33_T_marneffei_Binaryfission(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, 'โคโลนีมีขนาดเล็ก สีขาวอมเทา ผิวหยาบ มีจำนวนมากขึ้นหลังจากผ่านไป 3-4 วัน พบ-hemolysis หรือ-hemolysis ได้ แต่พบ-hemolysis ได้ยาก บาง strains อาจให้โคโลนีผิวเนียน หรือ มีเมือกมันวาวได้(mucoid)', 'เป็น gram positive cocci มีการจัดเรียงตัวเป็น สายขนาดปานกลางจนสายยาว(in medium chains จนถึง long chains) มีขนาดประมาณ 0.5-0.75 ไมครอน', 'Arginine – negativeEsculin – positiveVP – positiveMannitol – positiveSorbitol – positiveUrease – negative', NULL, NULL),
(45, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Streptococcus pneumoniae', 'Streptococcus pneumoniae ก่อโรค Pneumococcal disease ซึ่งทำให้ปรากฏอาการ ปอดบวม(pneumonia) การติดเชื้อที่หู ติดเชื้อที่โพรงจมูก ไขสันหลังอักเสบ และการติดเชื้อในการกระแสเลือดได้ เชื้อนี้ส่วนมากมักก่อโรคในเด็กและวัยสูงอายุ', '[\"B12_S_pneumoniae(PIC1).jpg\",\" B12_S_pneumoniae(PIC2).jpg\",\" .jpg\",\" F33_T_marneffei_Binaryfission(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, 'บน Blood Agar พบ-hemolysis โคโลนีมีขนาด 0.5 – 1.25 ไมครอน สีเทา มีเมือก(mucoid) บางครั้งอาจพบลักษณะโคโลนีเป็นสีเขียวเหลืองได้', 'เป็น gram positive cocci มีการจัดเรียงคล้ายเข็ม(lancet shaped) (มีการยืดยาวของ cocci ออกและมีปลายมน) และส่วนมากจะอยู่เป็นคู่(diplococci) บางครั้งอาจจัดเรียงเป็นสายสั้นๆ ได้ ไม่มีการสร้างสปอร์', 'Catalase – negativeMotile – non-motileEthyl hydrocupreine hydrochloride (Optochin) – susceptibleBile solubility – positive', NULL, NULL),
(46, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Enterococcus faecium', 'E. faecium เป็นเชื้อก่อโรคในมนุษย์ และส่วนใหญ่การติดเชื้อนี้เกิดจากการติดเชื้อจากโรงพยาบาล(nosocomial infection) ซึ่งสามารถก่อให้ผู้ป่วยมีอาการ ติดเชื้อที่บริเวณแผลผ่าตัด endocarditis และ urinary tract infections ในปัจจุบันพบว่าเชื้อกลุ่มนี้มีอัตราการดื้อยาที่สูง เช่น vancomycin penicillin gentamycin tetracycline erythromycin และ teicoplanin', '[\"B13_E_faecium.jpg\",\" B12_S_pneumoniae(PIC2).jpg\",\" .jpg\",\" F33_T_marneffei_Binaryfission(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL, NULL, 'โคโลนีมีสีครีม หรือขาว ขอบเรียบ ผิวเรียบ ไม่พบ hemolysis(-hemolysis) บน Blood agar', 'เป็น gram positive cocci มีการจัดเรียงตัวเป็น คู่(in pair) และบ่อยครั้งมักพบเป็นสายสั้นๆ(in short chains) ไม่พบการสร้างสปอร์', 'Catalase-negativeMotile – non-motilePYR- positiveAcid production from starchBile esculin – positive6.5% NaCl – positiveArabinose – positiveMannitol – positiveMethyl--d-mannopyranoside - negative', NULL, NULL),
(47, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Enterococcus faecalis', 'เชื้อนี้ถูกจัดอยู่ใน  group D Streptococcus  เป็น gram positive ที่อาศัยแบบอิงอาศัย(commensalism) ในระบบทางเดินอาหารและลำไส้ของมนุษย์และสัตว์ เชื้อชนิดนี้สามารถพบได้ในคนที่สุขภาพดี แต่สามารถก่อให้เกิดการติดเชื้อที่สามารถทำให้เสียชีวิตได้ โดยเฉพาะอย่างยิ่งการติดเชื้อจากโรงพยาบาล(nosocomial infection) ซึ่งทำให้เกิดได้รับเชื้อที่มียีนดื้อยาสูงมาก', '[\"B14_E_faecalis(PIC1).jpg\",\" B14_E_faecalis(PIC2).jpg\",\" , B14_E_faecalis(PIC3).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL, NULL, 'โคโลนีขนาดเล็ก สีเทา มีขนาดประมาณ 1-2 ไมครอน ขอบเรียบ นูน ไม่พบ hemolysis-hemolysis) บน Blood agar', 'เป็น gram positive cocci มีการจัดเรียงตัวเป็น คู่(in pair) และบ่อยครั้งมักพบเป็นสายสั้นๆ(in short chains) ไม่พบการสร้างสปอร์', 'Catalase-negativeMotile – non-motileBile esculin – positive6.5% NaCl – positiveArabinose – negativeMannitol – positiveMannose – positiveMaltose - positive', 'Blood', NULL),
(48, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Enterococcus gallinarum', 'E. galinarum เป็นเชื้อแบคทีเรียที่ยากจะพบในผู้ใหญ่และยากมากขึ้นในเด็ก เชื้อชนิดนี้มีการก่อโรค urinary tract infection, bacterial endocarditis, และ diverticulitis การติดเชื้อระบบประสาทส่วนกลางสามารถพบได้แต่ยาก', '[\"B15_E_gallinarum.jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 'โคโลนีกลม ผิวเรียบ ขอบเรียบ พบ-hemolysis บน Horse Blood Agar', 'เป็น gram positive cocci มีการจัดเรียงตัวเป็นสาย(in chains) โดยอาจพบเป็นสายสั้นๆ หรือยาว และสามารถพบเป็นคู่(in pairs) ได้', 'Catalase-negativeMotile – motileBile esculin – positive6.5% NaCl – positiveSorbose – negativePYR – positiveMethyl--d-mannopyranoside - positive', NULL, NULL),
(49, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Enterococcus avium', 'E. avium มีชื่อเดิมว่า group Q streptococcus เชื้อชนิดนี้ส่วนมากจะพบในนก มีโอกาสยากที่ทำให้เกิดการติดเชื้อในคน ปัจจุบันได้มีรายงานพบการติดเชื้อในกระแสเลือดซึ่งมีจำนวน 9 ราย', '[\"B16_E_avium(PIC1).jpg\",\" B16_E_avium(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL, NULL, 'โคโลนีกลม ผิวเรียบ ขอบเรียบ พบ-hemolysis บน Blood Agar เชื้อแบคทีเรียชนิดนี้ต้องการ Folinic acid ในการเจริญเติบโต เติบโตได้ดีที่ 45 °C และสามารถทนความร้อนได้ถึง 60 °C เป็นเวลา 30 นาที', 'เป็น gram positive cocci มีการจัดเรียงตัวเป็นสาย(in chains) โดยอาจพบเป็นสายสั้นๆ หรือยาว และสามารถพบเป็นคู่(in pairs) ได้', 'Catalase-negativeMotile – motileBile esculin – positive6.5% NaCl – positiveL-arabinose – positiveSorbose – positiveSucrose - negative', NULL, NULL),
(50, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Corynebacterium spp. (diphtheroid)', 'Corynebacterium species เป็นเชื้อที่มีประโยชน์(normal flora) บนร่างกายมนุษย์ โดยสารถพบได้ที่ผิวหนัง เยื่อบุผิว เยื่อเมือกและท่อระบบอาหารและลำไส้เล็ก ถึงแม้ว่าบ่อยครั้งจะถูกจำแนกว่าเป็น สิ่งเจือปนมากับตัวอย่างผู้ป่วย แต่ในบางครั้งเชื้อชนิดนี้สามารถก่อโรคได้ โดยเฉพาะอย่างยิ่งผู้ที่มีภูมิคุ้มกันบกพร่อง', '[\"B17_Corynebacterium_spp.jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, 'โคโลนีมีสีเทา หรือขาว เยิ้ม นูน ขอบโค้ง โคโลนีมีการโปร่งแสงได้ (อาจพบ-hemolysis ได้)', 'เป็น gram positive pleomorphic bacilli', 'Catalase – positiveMotile – non-motileIndole – negativeCAMP test – negativeH2S production – positiveUrease – negative', NULL, NULL),
(51, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Corynebacterium diphtheriae', 'เป็นเชื้อที่ก่อให้เกิดโรคตอตีบ(diphtheria) โดยจะมีการสร้าง diphtheria toxin ซึ่งเป็นสารสำคัญในการก่อเกิดโรคคอตีบ แต่มีอีก 2 สายพันธุ์ที่สามารถสร้างได้ คือ C. ulcerans และ C. pseudotuberculosis ทั้งนี้สามารถพบเชื้อที่ไม่สร้าง toxin ได้ แต่ก็สามารถก่อโรคได้ หากมีการรุกล้ำเข้าไปยังในร่างกายมนุษย์ โดยจะทำให้เกิด การติดเชื้อในกระแสเลือด กล้ามเนื้อหัวใจอักเสบ ฝีหนองและการติดเชื้อที่กระดูกข้อต่อต่างๆ', '[\"B18_C_diphtheriae(PIC1).jpg\",\" B18_C_diphtheriae(PIC2).jpg\",\" .jpg\",\" F33_T_marneffei_Binaryfission(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, 'โคโลนีมีขนาดใหญ่ ประมาณ 2 ไมครอน ผิวเรียบ ค่อนข้างแห้ง บาง strains สามารถให้โซน-hemolysis แบบอ่อนๆ ได้', 'เป็น gram positive pleomorphic bacilli(Irregular) ที่มีรูปร่างตรง หรือโค้งเล็กน้อย คล้ายกระบอง(club shaped) มีการจัดเรียงเป็นเซลล์เดี่ยว(in single) เป็นคู่(in pairs) เป็น “V” form และ palisade หรือมีลักษณะคล้ายอักษรจีน(chinese letters)', 'Catalase – positiveMotile – non-motileIndole – negativeCAMP test – negativeH2S production – positiveUrease – negativeCitrate – negativeMR – positive', NULL, NULL),
(52, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Erysipelothrix rhusiopathiae', 'Erysipelothrix rhusiopathiae จัดว่าเป็นเชื้อก่อโรคในสัตว์ ทำให้เกิดโรค erysipelas ซึ่งมีผลกระทบในวงกว้างต่อ สุกร เต่า และไก่ไข่ โดยชื่อโรคในสุกรที่เป็นที่รู้จักกันคือ \"diamond skin disease\" เชื้อแบคทีเรียชนิดนี้ก่อให้เกิดการติดเชื้อจากสัตว์สู่คน ก่อให้เกิดโรค erysipeloid', '[\"B19_E_rhusiopathiae(PIC1).jpg\",\" B19_E_rhusiopathiae(PIC2).jpg\",\" .jpg\",\" F33_T_marneffei_Binaryfission(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, NULL, NULL, 'โคโลนีมีขนาดเล็ก ประมาณ 0.3-1.5 ไมครอน ผิวเรียน นูน เมื่อเวลาผ่านไปโคโลนีจะใหญ่ขึ้นเรื่อยๆ และมีความมันเยิ้ม(opaque) ไม่พบ-hemolysis และ-hemolysis', 'เป็น gram positive bacteria มีลักษณะตรงหรือโค้งงอเล็กน้อย เป็นแท่งเรียวยาว และมักเห็นเป็น เส้นยาวๆ(long filament) มีการอยู่กันแบบเดี่ยว แบบคู่ หรือแบบกลุ่ม ไม่พบการสร้างสปอร์ ไม่มีแคปซูล', 'Catalase – negativeHippurate hydrolysis – negativeCitrate – negativeVoges-Proskauer – negativeH2S production – positiveNeuraminidase – positive', NULL, NULL),
(53, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Listeria monocytogenes', 'Listeria monocytogenes เป็นเชื้อแบคทีเรียที่ก่อโรค มีบทบาทสำคัญต่อความปลอดภัยของอาหาร(food safety) สามารถพบได้ในสิ่งแวดล้อมทั่วไป เชื้อชนิดนี้สามารถทนทานต่อสภาวะต่างๆ เช่น ในสภาวะที่อาหารเป็นกรด ในอาหารที่มีปริมาณน้ำต่ำๆ เชื้อนี้เป็นสาเหตุในการเกิดโรคอาหารเป็นพิษ(food poisoning) ติดต่อผ่าทางอาหาร ให้เกิดโรคโรคลิสเทอริโอสิส โรคเยื่อหุ้มสมองอักเสบ(meningitis) การติดเชื้อในกระแสเลือด(septicemia) และการแท้ง(abortion)', '[\"B20_Listeria_monocytogenes(PIC1).jpg\",\" B20_Listeria_monocytogenes(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, 'สามารถเจริญเติบโตได้ดีบน Blood Agar Nutrient agar, tryptose และ brain heart infusion agars เมื่อ พบ-hemolysis ได้บน BA เมื่อเพาะเลี้ยงเชื้อไว้ข้ามคืนพบ โคโลนีโปร่งใส มีการยกตัวนูนเล็กน้อย ไม่มีเม็ดสี มีขนาดประมาณ 1-2 มิลลิเมตร มีกลิ่นหวาน คล้ายนมหรือเนย(buttermilk-like smell)', 'พบ gram positive bacilli มีการจัดเรียงเป็นท่อนสั้นๆ(short rod) หรืออาจพบเป็น coccobacilli มีปลายมนบางครั้งสามารถพบ coccoid form ได้ในการเสมียร์ของเนื้อเยื่อที่ติดเชื้อ ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'Catalase – positiveH2S production – negativeCAMP test – positive with S. aureusMR (Methyl Red) – positiveVP (Voges Proskauer) – positiveUrease - negative', NULL, NULL),
(54, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Listeria spp.', 'Listeria spp. เป็นเชื้ออแกรมบวก รูปร่างเป็นแท่ง มีการใช้ออกซิเจนในกระบวนการสังเคราะห์พลังงาน เชื้อกลุ่มนี้ประกอบไปมากกว่า 20 สายพันธุ์ เช่น  L. aquatica, L. booriae, L. cornellensis, L. costaricensis, L. goaensis, L. fleischmannii, L. floridensis, L. grandensis, L. grayi, L. innocua, L. ivanovii, L. marthii, L. monocytogenes, L. newyorkensis, L. riparia, L. rocourtiae, L. seeligeri, L. thailandensis, L. weihenstephanensis, และ L. welshimeri เชื้อก่อโรคหลักๆ ที่พบในมนุษย์ คือ Listeria monocytogenes ซึ่งก่อให้เกิด Listeriosis เกิดการติดเชื้อในกระแสเลือด และ ไขสันหลังอักเสบ(meningitis) ได้', '[\"B21_Listeria_spp(PIC1).jpg\",\" B21_Listeria_spp(PIC2).jpg\",\" .jpg\",\" F33_T_marneffei_Binaryfission(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, 'โคโลนีมีสีน้ำเงินอมเทา หรือเห็นเป็นน้ำเงินอมเขียวเมื่อเอียงเข้าหาแสง', 'เป็น gram positive bacilli มีการจัดเรียงเป็น สายสั้นๆ(short rods) หรืออาจพบเป็น coccobacilli พบเซลล์เป็นปลายมน เมื่อแก่มากขึ้น สามารถพบเป็น เส้นสายยาว(long filament) ได้', 'Catalase – positiveOxidase – negativeMR – positiveVoges-Proskauer – positiveIndole – negativeUrease – negative', NULL, NULL),
(55, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Bacillus_cereus', 'เป็นแบคทีเรียในกลุ่ม bacillus ที่สามารถสร้างสารพิษ(toxin) ที่ทนความร้อนได้ สามารถพบเชื้อชนิดนี้ได้ในธรรมชาติในดิน น้ำเชื้อสร้างสปอร์ซึ่งทนความแห้งแล้งได้ดี สปอร์จึงพบได้ทั่วไปในฝุ่น ควัน และ ปะปนมากับอาหารแห้ง เช่น น้ำตาล วัตถุเจือปนอาหาร  โรคที่ก่อให้เกิดหลักๆ ประกอบไปด้วย อาการอาเจียน(emetic Syndrome) และ อาการถ่ายเหลว(diarrhea syndrome)', '[\"B22_Bacillus_cereus(PIC1).jpg\",\" B22_Bacillus_cereus(PIC2).jpg\",\" .jpg\",\" F33_T_marneffei_Binaryfission(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, 'โคโลนีขนาดใหญ่ มันเยิ้ม หรืออาจพบเป็นสีเหลือง ผิวโคโลนีคล้ายเม็ดทราย(granular) โคโลนีแบน พบ strong-hemolysis บน Blood Agar', 'เป็น gram positive bacilli ขนาดประมาณ 1.0-1.2 x 3.0 – 5.0 ไมครอน มี flagella ล้อมรอบเซลล์ พบ spore มีลักษณะเป็นวงรี เมื่อย้อมด้วย malachite green จะเห็นสปอร์ด้านในเป็นสีเขียว ไม่พบ capsule', 'Catalase – positiveOxidase – negativeMR – negativeVoges-Proskauer – positiveNitrate reduction – positiveGelatin hydrolysis – positive', NULL, NULL),
(56, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Bacillus subtilis', 'เชื้อชนิดนี้เป็นเชื้อแบคทีเรียที่ไม่ก่อโรค(non-pathogenic bacteria) แต่สามารถพบการปนเปื้อนได้ในอาหาร และพบว่าเป็นเชื้อฉวยโอกาสในผู้ที่มีภูมิคุ้มกันบกพร่อง โดยส่วนมากเชื้อชนิดนี้จะมักพบในเมล็ด ผักและผลไม้ ซึ่งช่วยในการทำร้ายเชื้อราได้', '[\"B23_Bacillus_subtilis(PIC1).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, NULL, NULL, 'เมื่อเพาะเลี้ยงบน Nutrient Agar พบลักษณะโคโลนีสีขาวถึงเทา กลม มันเยิ้ม แบน โคโลนีแห้ง มีขนาดปานกลาง', 'เป็น gram positive bacilli ที่สามารถสร้างสปอร์ได้ ไม่มีการสร้างแคปซูลใดๆ', 'Catalase – positiveOxidase – negativeMR – negativeVoges-Proskauer – positiveIndole – negativeUrease – negativeGelatin hydrolysis - positive', NULL, NULL),
(57, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Neisseria gonorrhoeae', 'เป็นแบคทีเรียที่ไม่มีการสร้างสปอร์ ไม่มีการเคลื่อนที่ สามารถติดต่อได้โดยจากเยื่อบุเมือกต่างๆ(mucouse membrane) โดยส่วนมากมักเกิดการติดต่อจากการมีเพศสัมพันธ์โดยตรง เช่น องคชาติ-ช่องคลอด องคชาติ-ทวารหนัก และองคชาติ-คอหอย ซึ่งก่อให้เกิดการพัฒนาเป็นการติดเชื้อในกระแสเลือด(bacteremia) และกลายเป็น septic arthritis', '[\"B24_N_gonorrhoeae(PIC1).jpg\",\" B24_N_gonorrhoeae(PIC2).jpg\",\" .jpg\",\" F33_T_marneffei_Binaryfission(PIC4).jpg\",\"F4_Histoplasma(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, 'เป็นเชื้อ fastidious microorganism จึงจำเป็นต้องเพาะเลี้ยงใน chocolate agar เติบโตได้ที่ 35-37 °C ที่ 3-10% CO2 และมีความชื้นสัมพัทธ์สูง เมื่อเพาะเลี้ยงเป็นเวลา 48 ชั่วโมง ให้โคโลนีสีขาวอมเทา มันเยิ้ม ยกนูน ผิวเหมือนเม็ดทรายที่ละเอียด และจะเป็นเมือก(mucoid) เมื่อบ่มนานขึ้น', 'เป็น gram negative cocci มีการจัดเรียงเป็นคู่ จึงมักเรียกว่า diplococcic ไม่มีการเคลื่อนที่ ไม่มี flagella ไม่มีการผลิตแคปซูล', 'Catalase – positiveOxidase – positiveH2S Production – negativeNitrate reduction – negativeCTA Glucose (Cysteine trypticase agar containing glucose) – positiveCTA Lactose – negativeCTA Maltose – negativeCTA Mannose – negativeDNase - negative', NULL, NULL),
(58, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '1', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Neisseria meningitidis', 'เชื้อนี้เป็นเชื้อก่อโรคในมนุษย์ ทำให้เกิดการติดเชื้อได้ ซึ่งส่วนใหญ่พบว่าการได้รับเชื้อนี้เกิดจากได้รับเชื้อจากบุคคลที่เป็นพาหะมา จากนั้น colonize ที่ nasopharyngeal หากเชื้อสามารถแทรกผ่านเนื้อเยื่อได้ จะสามารถพัฒนาให้เกิดเป็น Meningococcal meningitis', '[\"1563938538.jpg\"]', '0000-00-00 00:00:00', 1, NULL, '0', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, NULL, NULL, 'โคโลนีใหญ่กว่า gonococci ประมาณ 1 ไมครอน โคโลนีมีผิวเรียบ ชื้น สีขาว ขอบเรียบ', 'เป็น gram negative diplococci ไม่มีการเคลื่อนที่ มี flagella มีการผลิตแคปซูล และพบ pilli', 'Oxidase – positiveH2S Production – negativeNitrate reduction – negativeCTA Glucose (Cysteine trypticase agar containing glucose) – positiveCTA Lactose – negativeCTA Maltose – positiveCTA Mannose – negativeDNase - negative', NULL, NULL),
(59, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '1', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Haemophilus influenzae', 'เป็น gram negative coccobacilli ก่อโรคในคนทำให้เกิดการติดเชื้อในระบบทางเดินหายใจ การติดเชื้อที่ตา การติดเชื้อและในกระแสเลือดและไขสันหลังอักเสบ(meningitis) เชื้อชนิดมักก่อโรคไขสันหลังอักเสบในเด็กอายุ 2 เดือน ถึง 5 ปี', '[\"B26_H_influenzae(PIC1).jpg\",\"B26_H_influenzae(PIC2).jpg\",\" B26_H_influenzae(PIC3).jpg\"]\r\n', '0000-00-00 00:00:00', 1, NULL, '0', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL, NULL, 'บน Chocolate agar โคโลนีสีอมเทา ผิวเรียบ ขอบโค้ง โปร่งใส มีขนาดประมาณ 0.5-1 ไมครอนหาก strains ใดมีการผลิต capsule จะพบว่าโคโลนีจะมีขนาดใหญ่ และมีเมือก(mucoid) มากกว่าปกติ', 'เป็น gram negative coccobacilli มีขนาดประมาณ 0.3-0.5 ไมครอน ไม่มีการเคลื่อนที่', 'Catalase – positiveOxidase – positiveX factor – negativeV factor – negativeX and V factor – positive', NULL, NULL),
(60, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Campylobacter jejuni', 'Campylobacter jejuni เป็นเชื้อที่ก่อโรคในมนุษย์ ทำให้เกิดอาการท้องร่วงและเกิดการป่วยหลายๆอวัยวะ เชื้อชนิดนี้เป็นหนึ่งในเชื้อที่ก่อให้เกิด gastroenteritis มากที่สุดทั่วโลก ในประเทศที่กำลังพัฒนาพบว่าการเสียชีวิตของเด็กเกิดจากการป่วยจากการเกิดท้องร่วงโดย campylobacter หากบุคคลใดที่เกิดการติดเชื้อแล้วมีภูมิคุ้มกันบกพร่องสามารถก่อให้เกิดความผิดปกติเกี่ยวกับระบบประสาท และพัฒมาเป็นโรค Guillain–Barré syndrome', '[\"B27_C_jejuni(PIC1).jpg\",\" B27_C_jejuni(PIC2).jpg\",\" , B27_C_jejuni_coccoidform(PIC3).jpg\",\"B27_C_jejuni_coccoidform(PIC4).jpg\"]\r\n', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, NULL, NULL, 'โคโลนีมีขนาดเล็ก มีสีขาวอมเทา โคโลนีเป็นเมือก(mucoid) แบนแต่มีขอบที่จัดเรียงตัวไม่ปกติ ไม่มี hemolysis', 'เป็น gram negative bacilli ที่มีรูปร่างเป็นลักษณะโค้ง(curved) คล้ายปีกนก(seagull wing-like) หรือเป็นเกลียว(spiral) ซึ่งดูคล้ายกับ vibrio อีกทั้งสามารถพบลักษณะเซลล์ที่เป็นทรงกลมเรียก coccoid form (เป็นผลมาจากสภาวะแวดล้อมที่ไม่เหมาะสมจึงมีการเปลี่ยนรูปแบบเซลล์)', 'Catalase – positiveOxidase – positiveHippurate hydrolysis – positiveUrease – negativeH2S production - negativeDNase – negativeGlucose – negativeGrowth at 25°C – negativeGrowth at 37°C – positiveGrowth at 42°C – positive', NULL, NULL),
(61, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Campylobacter coli', 'เป็นเชื้อก่อโรคที่นำไปสู่การเกิดโรคอาหารเป็นพิษ(food poisoning) ในประเทศที่กำลังพัฒนา เชื้อ C. coli ทำให้เกิด gastroenteritis เพียง 10% เท่านั้น เมื่อเทียบกับ C. jejuni ที่มีอัตราการก่อโรคสูงถึง 90%', '[\"B28_Campylobacter_coli(PIC1).jpg\",\" B28_Campylobacter_coli(PIC2).jpg\",\" B28_Campylobacter_coli(PIC3).jpg\",\" B28_Campylobacter_coli_coccoidform(PIC4).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, NULL, 'โคโลนีสีขาวอมเทา หรือค่อนข้างไปทางชมพู มีขนาด 1-2 ไมครอน มี metallic sheen บน Blood Agarไม่มีการเกิด hemolysis บน Blood Agar', 'เป็น gram negative bacilli มีรูปร่างโค้ง(curve) คล้ายปีกนก(seagull wing like) หริอเป็นเกลียวเล็กๆ มี flagella สามารถเคลื่อนที่ได้ อีกทั้งสามารถพบลักษณะเซลล์ที่เป็นทรงกลมเรียก coccoid form (เป็นผลมาจากสภาวะแวดล้อมที่ไม่เหมาะสมจึงมีการเปลี่ยนรูปแบบเซลล์)', 'Catalase – positiveOxidase – positiveHippurate hydrolysis – negativeUrease – negativeH2S production - positiveDNase – negativeGlucose – negativeGrowth at 25°C – negativeGrowth at 37°C – positiveGrowth at 42°C – positive', NULL, NULL),
(62, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Legionella pneumophila', 'Legionella pneumophila เป็นเชื้อก่อโรคชนิดหลักๆ ในกลุ่มนี้ ก่อให้เกิด Legionnaires\' disease หรือรู้จักกันในชื่อว่า legionellosis อีกทั้งสามารถก่อโรคนอกจากปอด(extrapulmonary disease) ได้แก่ pericarditis และ endocarditis อาการที่คล้ายกับการเป็นไข้หวัดใหญ่ influenza นั้น เรียกว่า Pontiac fever', '[\"B29_Legionella_spp(PIC1).jpg\",\" B29_Legionella_spp(PIC1).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, NULL, NULL, 'โคโลนีสีเทาขาว มีพื้นผิวคล้ายกับแก้ว(glass-like appearance)เมื่อทำการเลี้ยงบน Buffered Charcoal Yeast Extract (BCYE) Agar ประมาณ 3 วันจะพบลักษณะเป็น pin point colony', 'เป็น gram negative bacilli มีขนาด 2-20 ไมครอน สามารถพบสายยาวๆ(long filamentous) ได้', 'Catalase – positiveUrease – negativeGelatin – liquidNitrate reduction – negativePeroxidase – positiveTweenase – positive', 'sputum', NULL),
(63, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Vibrio alginolyticus', 'เป็นเชื้อที่ชอบความเค็ม (halophilic microorganism) สามารถเจริญเติบโตได้ดีใน NaCI สามารถพบเชื้อได้ในพวกอาหารทะเล และสัตว์ทะเลต่างๆ เชื้อชนิดนี้ก่อให้เกิดการติดเชื้อที่หูและบาดแผล จึงปรากฏลักษณะเป็น cellulitis และมีน้ำหนองออกมาจากบาดแผล(seropurulent exudate)', '[\"B30_V_alginolyticus(PIC1).jpg\",\" B30_V_alginolyticus(PIC2).jpg\",\" B30_V_alginolyticus(PIC3).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, 'เมื่อเพาะเลี้ยงบน Solid media พบว่ามีการเกิด swarming colony และเมื่อเพาะเลี้ยงบน TCBS ให้ผลเป็น sucrose fermenter จึงปรากฏลักษณะโคโลนีสีเหลือง นูน ขอบเรียบ ขนาด 1-3 ไมครอน', 'เป็น gram negative bacilli มีรูปร่างตรง(straight) มี 3-12 polar flagella สามารถเห็น flagella ที่ส่วนท้ายของเซลล์ได้เมื่อเพาะเลี้ยงบนอาหารเลี้ยงเชื้อ และพบการ swarming ได้', 'Catalase – positiveOxidase – positiveIndole – positiveMR – positiveVoges-Proskauer – positiveH2S production – negative0% NaCl – negative1% NaCl – positive3% NaCl – positive6% NaCl – positive8% NaCl – positive10% NaCl – positive', 'stool', NULL),
(64, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Vibrio parahaemolyticus', 'เป็นแบคทีเรียแกรมลบที่ชอบความเค็ม(halophilic bacteria) สามารถพบได้ในน้ำเค็ม และชายฝั่ง เชื้อชนิดนี้เป็นสาเหตุที่นำไปสู่การเกิด gastroenteritis ในมนุษย์ เนื่องจากการรับประทารผลิตภัณฑ์จากทะเลที่ดิบ ไม่ได้ผ่านการทำให้สุกมา โดยเชื้อนี้จะก่อให้เกิดการติดเชื้อที่บาดแผล ที่หู และสามารถทำให้เกิดการติดเชื้อในกระแสเลือด', '[\"B31_V_parahaemolyticus(PIC1).jpg\",\" B31_V_parahaemolyticus(PIC2).jpg\"]\r\n', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, 'เมื่อเลี้ยงบน TCBS agar พบว่าเป็น non-sucrose fermenter(NSF) ให้โคโลนีสีเขียวอมฟ้า ขนาดเล็ก นูน ขอบเรียบ', 'เป็น gram negative bacilli สามารถเคลื่อนได้โดย monotrichous flagella ไม่มีการ swarming บน solid media มีการผลิต frimbriae หรือ pilli เกิดขึ้น', 'Catalase – positiveOxidase – positiveIndole – positiveMR – positiveVoges-Proskauer – negativeH2S production – negative0% NaCl – negative1% NaCl – positive3% NaCl – positive6% NaCl – positive8% NaCl – positive10% NaCl – positive', 'stool', NULL),
(65, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Aeromonas hydrophila', 'เป็นเชื้อที่มีการแพร่กระจายทั่วโลก มักพบอยู่ในน้ำจืด น้ำเค็ม และในน้ำสิ่งแวดล้อมต่างๆ สามารถเติบโตในช่วงอุณหภูมิที่กว้าง เชื้อชนิดนี้เป็นเชื้อที่ก่อโรค gastroenteritis ทำให้เกิดอาการท้องร่วง อีกทั้งเชื้อชนิดนี้ยังมีการสร้าง toxin ซึ่งก่อให้เกิดความรุนแรงเพิ่มขึ้น', '[\"B32_A_hydrophilia(PIC1).jpg\",\" B32_A_hydrophilia(PIC2).jpg\"]\r\n', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, 'เมื่อเพาะเลี้ยงบน Blood Agar โคโลนีกลม ขนาดใหญ่ ยกสูง มันเยิ้ม พบ-hemolysisเมื่อเพาะเลี้ยงบน MacConkey Agar ให้โคโลนีเป็น non-lactose fermenter(NLF)', 'เป็น gram negative bacilli มีรูปร่างตรง ปรากฏอยู่เป็นเซลล์เดี่ยว หรือคู่ อาจมีสายสั้น(short chains)ด้วยได้', 'Catalase – positiveOxidase – positiveIndole – positiveNitrate reduction – positiveVP – positiveH2S production – positive', 'stool', NULL),
(66, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Aeromonas caviae', 'เป็นเชื้อที่ก่อโรคในมนุษย์ทั้งภายในระบบทางเดินอาหารและนอกระบบทางเดินอาหาร โดยมีอาการตั้งแต่การเกิดอาการท้องเสียฉับพลันจนถึงอาการที่ทำให้ถึงขั้นเสียชีวิตได้ ซึ่งได้แก่ การติดเชื้อในกระแสเลือด แบคทีเรียกินเนื้อ(necrotizing fasciitis) และกล้ามเนื้อเน่าตาย(myonecrosis)', '[\"B33_A_caviae(PIC1).jpg\",\" B33_A_caviae(PIC2).jpg\" ]\r\n', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, 'เมื่อเพาะเลี้ยงบน Blood Agar โคโลนีกลม เล็ก ขอบเรียบโค้ง ไม่พบ-hemolysisเมื่อเพาะเลี้ยงบน MacConkey Agar ให้โคโลนีเป็น non-lactose fermenter(NLF)', 'เป็น gram negative bacilli มีรูปร่างตรง ปลายมน ปรากฏอยู่เป็นเซลล์เดี่ยว หรือคู่ อาจมีสายสั้น(short chains)ด้วยได้ บางครั้งอาจพบเป็น coccobacilli มีการเคลื่อนที่โดยใช้ polar flagella', 'Catalase – positiveOxidase – positiveIndole – positiveNitrate reduction – positiveVP – negativeH2S production – positiveCitrate ultilitzation - positive', 'stool', NULL),
(67, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Aeromonas sobria', 'เป็นเชื้อที่ก่อโรคในมนุษย์ทั้งภายในระบบทางเดินอาหารและนอกระบบทางเดินอาหาร โดยมีอาการตั้งแต่การเกิดอาการท้องเสียฉับพลันจนถึงอาการที่ทำให้ถึงขั้นเสียชีวิตได้ ซึ่งได้แก่ การติดเชื้อในกระแสเลือด แบคทีเรียกินเนื้อ(necrotizing fasciitis) และกล้ามเนื้อเน่าตาย(myonecrosis)', '[\"B34_A_sobria(PIC1).jpg\",\" B34_A_sobria(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34, NULL, NULL, 'เมื่อเพาะเลี้ยงบน Blood Agar โคโลนีกลม ขนาดใหญ่ ยกสูง มันเยิ้ม พบ-hemolysisเมื่อเพาะเลี้ยงบน MacConkey Agar ให้โคโลนีเป็น non-lactose fermenter(NLF)', 'เป็น gram negative bacilli มีรูปร่างตรง ปรากฏอยู่เป็นเซลล์เดี่ยว หรือคู่ อาจมีสายสั้น(short chains)ด้วยได้', 'Catalase – positiveOxidase – positiveIndole – positiveNitrate reduction – positiveVP – negativeH2S production – positiveCitrate ultilitzation - positive', 'stool', NULL),
(68, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Mycobacterium tuberculosis in sputum', 'เป็นเชื้อก่อโรคในวงศ์ Mycobacteriaceae ก่อให้เกิด tuberculosis โดยเชื้อในกลุ่มนี้จะเป็น complex ประกอบไปอีก 9 สมาชิก ได้แก่ M. africanum, M. canetti, M. bovis, M. caprae, M. microti, M. pinnipedii, M. mungi, และ M. orygis การติดต่อเชื้อนี้เกิดจากการได้รับผ่านทางการหายใจละอองเชื้อเข้าไปผ่านเข้าสู่ปอด หากมีภูมิคุ้มกันปกติจะสามารถป้องกันการเกิดพยาธิสภาพได้ แต่ในบุคคลที่ภูมิคุ้มลดลงอาจเสี่ยงต่อการต่อปอด ระบบประสาทส่วนกลาง และระบบอื่นๆ ได้', '[\"B35_MTB(PIC1).jpg\",\" B35_MTB(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'AFB', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35, NULL, NULL, 'โคโลนีมีการเจริญเติบโตได้ช้า ใช้เวลาในการเจริญเติบโตมากกว่า 7 วัน เมื่อเพาะเลี้ยงบน LJ medium พบว่าโคโลนีแห้ง หยาบ ไม่มีสีโคโลนี', 'เมื่อย้อมสีด้วย Acid fast bacilli หรือ modified Acid fast bacilli เห็นลักษณะเป็น gram negative bacilli ขนาดประมาณ 0.2 มิลลิเมตร ติดสีแดง พื้นหลังติดสีน้ำเงิน', 'niacin test – positivenitrate reduction test – positiveเติบโตบน TCH (thiophene-2-carboxylic acid hydrazide) 10µg/ml – positiveเติบโตบน Pyrazinamidase agar (PZA) 25µg/ml – negativearylsulfatase test (ทดสอบแบบ 3 วัน) – negative', 'sputum', NULL),
(69, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Mycobacterium tuberculosis in MGIT', NULL, '[\"B36_MTB_Cordformation(PIC1).jpg\",\" B36_MTB_Cordformation(PIC2).jpg\",\" B36_MTB_Cordformation(PIC3).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'AFB', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36, NULL, NULL, 'เมื่อทำการเพาะเชื้อกลุ่ม Mycobacterium ลงใน liquid media (Mycobacterium Growth Indicator Tube; MGIT) เชื้อกลุ่ม TB complex สามารถเกิดการจัดเรียงเชื้อเป็นลักษณะคล้ายงูขนาดใหญ่(snake-like appearance) เพราะมี cord factor(trehalose dimycolate) เป็น virulence factor ซึ่งทำให้เชื้อชนิดนี้เมื่อเข้าไปในร่างกายคนเกิดการยับยั้งกระบวนการ phagolysosome fuction และก่อให้เกิด granuloma formation ได้อีกด้วย', NULL, NULL, 'Sputum', NULL),
(70, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Staphylococcus capitis', 'เป็นเชื้อในกลุ่ม CoNS โดยปกติเป็นเชื้อประจำถิ่น(normal flora) ที่ผิวหนัง และมีโอกาสยากในการได้รับเชื้อชนิดนี้จากโรงพยาบาล หากผู้ที่มีภูมิคุ้มกันบกพร่องได้รับเชื้อนี้สามารถทำให้เกิดเยื่อบุหัวใจอักเสบ(endocarditis)', '[\"B37_S_capitis.jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, NULL, NULL, 'โคโลนีมีสีขาวหรือขาวอมเทา ผิวเรียบ ขอบเรียบ มันเยิ้ม(opaque) เมื่อแสงส่องจะแวววาว(glistening) ไม่พบการเกิด-hemolysis', 'เป็น gram positive cocci ขนาด 0.5 – 1.2 ไมครอน มีรูปแบบการเรียงตัวเป็นเซลล์เดี่ยว หรือเป็นคู่(in pairs) เป็นกลุ่ม(in cluster) ไม่พบการสร้างสปอร์', 'Catalase – positiveGlucose fermenterMannose fermenterSucrose fermenterCoagulase – negativeNitrate reduction - variable', 'Blood(Hemoculture)', NULL),
(71, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Staphylococcus caprae', 'เป็นเขื่อกลุ่ม CoNS โดยปกติแบคทีเรียชนิดนี้ไม่ก่ออันตรายใดๆ แต่พบรายงานว่าสามารถรับเชื้อนี้ได้จากการติดเชื้อที่โรงพยาบาล และจากชุมชน โดยอาการส่วนใหญ่จะไม่มีการแสดงออก', '[\"B38_S_caprae(PIC1).jpg\",\" B38_S_caprae(PIC2).jpg\"]\r\n', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, NULL, NULL, 'เมื่อเพาะเลี้ยงเชื้อบน Sheep Blood Agar ให้โคโลนีสีขาว วงกลม ขอบเรียบ นูน ขนาดประมาณ 1-2 ไมครอน บาง strains สามารถพบ-hemolysis', 'เป็น gram positive cocci มีการจัดเรียงเป็นคู่(in pairs) เป็นสาย(in chains) หรือเป็นกลุ่ม(in cluster) ไม่มีการสร้างสปอร์ ไม่เคลื่อนที่', 'Catalase – positiveMannose fermenterMannitol fermenterMaltose fermenterSucrose fermenterNitrate reduction – positivePhosphatase – positiveGelatinase – positiveUrea hydrolysis - positive', 'Blood(Hemoculture)', NULL),
(72, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Escherichia coli', 'Escherichia coli เป็นแบคทีเรียที่พบได้ในสิ่งแวดล้อม อาหารและลำไส้ของมนุษย์และสัตว์ เชื้อในกลุ่ม E. coli ประกอบไปด้วยหลาย serotype แต่ละ serotype มีการก่อพยาธิสภาพที่แตกต่างกัน โดยพยาธิสภาพหลักๆที่ก่อมักทำให้เกิดอาการท้องร่วง การติดเชื้อที่ระบบปัสสาวะ ระบบทางเดินหายใจและปอดบวมได้', '[\"B39_E_coli.jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, NULL, NULL, 'เมื่อเพาะเลี้ยงบน Blood Agar พบโคโลขนาดใหญ่ แห้งหรืออาจเป็นมันเยิ้ม กลม สีเทา สามารถพบ-hemolysis ได้เมื่อเพาะเลี้ยงบน MacConkey Agar พบการเกิด Lactose fermenter โคโลนีสีชมพู แบน แห้ง ชื้น ขอบเรียบ', 'เป็น gram negative bacilli ที่มีรูปร่างตรง มีขนาดประมาณ 1,1 – 1.5 x 2.0-6.0 ไมครอน ไม่มีการสร้างสปอร์ มีการเคลื่อนที่โดยใช้ flagella', 'Oxidase – negativeCatalase – positiveIndole – positiveTSI – K/AG or A/AgLIA – negative/positiveNitrate reduction – positiveUrease – negativeCitrate – negative', 'Blood(Hemoculture)', NULL),
(73, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Klebsiella pneumoniae', 'เป็นเชื้อแบคทีเรียแกรมลบที่ก่อให้เกิดการติดเชื้อได้หลากหลายประเภท เช่น ปอดบวม การติดเชื้อในกระแสเลือด การติดเชื้อที่แผลผ่าตัด และไขสันหลังอักเสบ(meningitis) อีกทั้งเชื้อชนิดนี้ยังมีอุบัติการณ์การดื้อยา carbapenems สูง การติดเชื้อนี้ส่วนใหญ่จะเป็นการติดเชื้อจากโรงพยาบาล(nosocomial infection) ผู้ป่วยที่ต้องทำการสอดท่อหายใจ(ventilator) มีโอกาสเสียงสูงที่จะได้รับเชื้อชนิดนี้เข้าไป', '[\"B40_K_pneumoniae(PIC1).jpg\",\" B40_K_pneumoniae(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, NULL, NULL, 'เมื่อเพาะเลี้ยงบน Blood Agar พบโคโลกลม สีขาวอมเทา มันเยิ้ม มีการยกตัวคล้ายโดม(dome-shaped)เมื่อเพาะเลี้ยงบน MacConkey Agar พบการเกิด Lactose fermenter โคโลนีกลม สีชมพู มันเยิ้ม ขอบเรียบ', 'เป็น gram negative bacilli มีรูปร่างตรง มีแคบซูล ไม่มีการสร้างสปอร์ และไม่มีการเคลื่อนที่', 'Oxidase – negativeCatalase – positiveH2S Production – negativeIndole – negativeMotile – negativeTSI – A/ACitrate – positiveUrease – positiveMR – negativeVP – positive', 'Blood(Hemoculture)', NULL),
(74, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Proteus mirabilis', 'เป็นเขื้อแบคทีเรียมแกรมลบ ที่สามารถพบ swarming pattern ได้ เชื้อชนิดนี้เป็นสาเหตุหลักที่พบได้บ่อยในการก่อให้เกิดการติดเชื้อในระบบทางเดินปัสสาวะ เช่น กระเพาะปัสสาวะอักเสบ(cystitis) และกรวยไตอักเสบ(pyelonephritis) การติดเชื้อเหล่านี้นำไปสู่การติดเชื้อในกระแสเลือดและนำไปสู่การเกิด urosepsis ตามมา', '[\"B41_P_mirabilis(PIC1).jpg\",\" B41_P_mirabilis(PIC2).jpg\",\"B41_P_mirabilis(PIC3).jpg\",\" B41_P_mirabilis(PIC4).jpg\",\" B41_P_mirabilis(PIC5).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, NULL, NULL, 'เมื่อเพาะเลี้ยงบน Blood Agar จะมีการพบ swarming colony คล้าย bull-eyesเมื่อเพาะเลี้ยงบน MacConkey Agar พบ Non-lactose fermenter(NLF) โคโลนีสีใส ชนาดใหญ่ นูน ขอบเรียบ อาจได้กลิ่นคาวปลา(fishy odor)', 'เป็น gram negative bacilli ขนาดประมาณ 0.4 – 0.6 x 1.0 – 3.0 ไมครอน มีการเคลื่อนที่โดยอาศัย flagellaหากทำการย้อมแกรมอาจพบ petrichous flagella ล้อมรอบเซลล์ได้ ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'Oxidase – negativeTSI – K/A with H2S productionH2S production – positiveMotile – positiveIndole – positiveMR – positiveVP – negativeCitrate – positiveUrease – positiveSwarming colony บน Blood Agar', '-', NULL),
(75, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Serratia marcescens', 'S. marcescens เป็นเชื้อแบคทีเรียแกรมลบ สามารถพบได้ทั่วไปในธรรมชาติ มีการสร้าง pigment ที่อุณหภูมิห้อง เชื้อนี้มีความสัมพันธ์สอดคล้องกับการติดเชื้อในระบบทางเดินปัสสาวะและทางเดินหายใจ เยื่อบุหัวใจอักเสบ กระดูกอักเสบ การติดเชื้อที่บาดแผล การติดเชื้อที่ตาและการติดเชื้อในกระแสเลือด การติดต่อเกิดจากการได้รับ droplet โดยตรง ส่วนมากจะติดต่อจากท่อสายสวนต่างๆ', '[\"B42_S_marcences.jpg\",\" B41_P_mirabilis(PIC2).jpg\",\"B41_P_mirabilis(PIC3).jpg\",\" B41_P_mirabilis(PIC4).jpg\",\" B41_P_mirabilis(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, NULL, NULL, 'โคโลนีขนาดประมาณ 1-3 ไมครอน สีขาวครีม กลม มันเยิ้ม มีผิวเรียบ ขอบเรียบ บางครั้งสามารถเห็นการสร้าง red pigment บนโคโลนี จึงพบโคโลนีเป็นสีแดงขนาดเล็กๆได้', 'เป็น gram negative bacilli มีรูปร่างตรง ไม่มีการสร้างสปอร์ บาง strains สามารถสร้าง capsule ได้ สามารถเคลื่อนที่ได้ด้วย petrichous flagella', 'Catalase – positiveOxidase – negativeMotile – positiveIndole – negativeH2S production – negativeMR – negativeVP – positiveCitrate - positiveUrease – positiveODC – positiveADH – negative', 'Blood(Hemoculture)', NULL),
(76, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Pseudomonas aeruginosa', 'เป็นเชื้อก่อโรคฉวยโอกาส(opportunistic infection) ทางคลินิกและมีอุบัติการณ์เชื้อดื้อยาสูงมาก เชื้อชนิดนี้มักก่อโรคในผู้ที่ภูมิคุ้มกันบกพร่องได้บ่อยๆ เชื้อชนิดนี้สามารถก่อให้เกิดการติดเชื้อในระบบทางเดินปัสสาวะ ระบบทางเดินหายใจ ผิวหนังอักเสบ กระดูกและข้ออักเสบ การติดเชื้อทั่วระบบ และการติดเชื้อในกระแสเลือดได้', '[\"B43_P_aeruginosa(PIC1).jpg\",\"B43_P_aeruginosa(PIC2).jpg\",\"B43_P_aeruginosa(PIC3).jpg\",\"B43_P_aeruginosa(PIC4).jpg\",\"B43_P_aeruginosa(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, NULL, NULL, 'เมื่อเพาะเลี้ยงบน Blood Agar พบโคโลนีขนาดใหญ่ แบน พบการเกิด-hemolysis มีการสร้าง pigment จึงสามารถเห็นเป็นสีเขียวน้ำเงินบนโคโลนีได้เมื่อเพาะเลี้ยงบน MacConkey Agar พบ Non-lactose fermenter(NLF) โคโลนีขนาดใหญ่ แบน ขอบเขตไม่ชัดเจน ลักษณะคล้ายเม็ดทราย(granular)', 'เป็น gram negative bacilli สามารถเคลื่อนที่ได้ พบ monotrichous flagella 1-4 อัน อยู่บนหรือท้ายเซลล์', 'Catalase – positiveOxidase – positiveMotile – positiveIndole – negativeTSI – K/N or K/KMR – negativeVP – negativeH2S – negativeGrowth at 42 °C – positiveNitrate reduction - positiveOF glucose – positiveOF lactose – negativeOF maltose – negativeOF mannitol – positivePyocyanin – negativePyoverdin – positive', '-', NULL),
(77, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Pseudomonas putida', 'เป็นเชื้อจุลชีพที่อยู่ในดินและน้ำ มีบทบาทสำคัญในกระบวนการ bioremediation เชื้อชนิดนี้มีอัตราการก่อโรคที่ต่ำ และยากในการเกิดการติดเชื้อในกระแสเลือด แต่ในปัจจุบันพบว่าเป็นเชื้อที่มีอัตราการดื้อยากลุ่ม carbapenem สูง อีกทั้งทำให้ยากลำบากในการรักษาหากติดเชื้อชนิดนี้ การเกิดพยาธิสภาพของเชื้อกลุ่มนี้ทำให้เกิด เช่น การติดเชื้อที่ปอด เกิดปอดบวม ท่อน้ำดีอักเสบ(cholangitis) และการติดเชื้อในกระแสเลือด', '[\"B44_P_putida.jpg\",\"B43_P_aeruginosa(PIC2).jpg\",\"B43_P_aeruginosa(PIC3).jpg\",\"B43_P_aeruginosa(PIC4).jpg\",\"B43_P_aeruginosa(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, NULL, NULL, 'เมื่อเพาะเลี้ยงบน MacConkey Agar พบ Non-lactose fermenter(NLF) โคโลนีขนาดใหญ่ แบน ขอบเขตไม่ชัดเจน', 'เป็น gram negative bacilli พบ multitrichous flagella สามารถเคลื่อนที่ได้ ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'Catalase – positiveOxidase – positiveTSI – K/N or K/KNitrate reduction – negativeOF glucose – positiveOF lactose – negativeOF mannitol – negativeOF maltose – negativeUrease – negativePyocyanin – positivePyoverdin – positive', 'Blood(Hemoculture)', NULL),
(78, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Acinetobacter baumanii', 'เป็นเชื้อแบคทีเรียก่อโรคฉวยโอกาส โดยพบหลักๆได้จากการติดเชื้อจากโรงพยาบาล เชื้อกลุ่มนี้มีอุบัติการณ์ดื้อยาตั้งแต่ 3 ชนิดขึ้นไป(multidrug resistance) ส่วนมากเชื้อกลุ่มนี้สอดคล้องกับการให้เกิด ventilator associated pneumonia(VAP) การติดเชื้อในกระแสเลือด การติดเชื้อที่แผลและแผลผ่าตัด และไขสันหลังอักเสบ(meningitis)', '[\"B45_A_baumanii (PIC1).jpg\",\" B45_A_baumanii (PIC2).jpg\",\"B43_P_aeruginosa(PIC3).jpg\",\"B43_P_aeruginosa(PIC4).jpg\",\"B43_P_aeruginosa(PIC5).jpg\",\"F4_Histoplasma(PIC6).jpg\",\"F4_Histoplasma(PIC7).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, NULL, 'โคโลนีสีขาวขุ่น มันวาว มีเมือก(mucoid) Non-lactose fermenter(NLF) ไม่มีเม็ดสีของโคโลนี ผิวเรียบ ขอบเรียบ', 'เป็น gram negative coccobacilli สามารถพบเห็นอยู่เป็นเซลล์เดี่ยว(single) เป็นคู่(in pairs) หรือเป็นกลุ่ม(in cluster) ได้ ไม่มีการสร้างสปอร์ ไม่มีแคปซูล ไม่มีการเคลื่อนที่', 'Catalase – positiveOxidase – negativeMotile – negativeUrease – variableCitrate – positiveOF glucose – positiveNitrate reduction – negativeArginine hydrolysis – positiveGrowth at 42 °C – positive', 'Blood(Hemoculture)', NULL);
INSERT INTO `tb_case` (`case_id`, `case_patientid`, `case_useropencase`, `case_body`, `case_dateopen`, `dateopen_sys`, `dateopen_dlas`, `dateopen_pulse`, `dateopen_temp`, `dateopen_allergic`, `dateopen_congenital`, `dateopen_procudure`, `dateopen_main`, `dateopen_sub`, `dateopen_room`, `case_datemeet`, `datemeet_procudure`, `datemeet_main`, `datemeet_sub`, `datemeet_room`, `datemeet_indication`, `datemeet_anesthesia`, `datemeet_anesthesis`, `datemeet_rapid`, `datemeet_remark`, `datemeet_physicians01`, `datemeet_physicians02`, `datemeet_nurse01`, `datemeet_nurse02`, `datemeet_nurse03`, `datemeet_staff01`, `datemeet_staff02`, `case_status`, `recommendation`, `mainpart`, `pathology`, `following_guide`, `discharge_to`, `appointment_info`, `procedure_sub`, `finding`, `accessory`, `opd`, `ward`, `refer`, `anes`, `capture_start`, `capture_end`, `wb_title`, `wb_description`, `wb_picmain`, `wb_datetime`, `wb_author`, `wb_type`, `staining`, `pmi`, `morphology`, `specimen`, `wb_question`, `wb_choice01`, `wb_choice02`, `wb_choice03`, `wb_choice04`, `wb_choice05`, `wb_answer`, `id`, `name`, `name_detail`, `colony_detail`, `micro_exam`, `biochemi`, `tos`, `pic`) VALUES
(79, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Salmonella typhi', 'เป็นแบคทีเรียแกรมลบที่ก่อให้เกิดโรคไข้ไทฟอยด์(typhoid fever) โดยการติดต่อเกิดจากการรับประทานอาหารหรือน้ำที่ปนเปื้อนเชื้อมา โดยส่วนมากการเกิดพยาธิสภาพของแบคทีเรียชนิดนี้มักจะก่อในเด็กและผู้ใหญ่วัยต้นๆ โดยเฉพาะอย่างยิ่งในที่ที่มีสุขาภิบาลไม่ดี', '[\"B46_Salmonella_typhi(PIC1).jpg\",\" B46_Salmonella_typhi(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, NULL, NULL, 'เมื่อเพาะเลี้ยงบน Blood Agar ให้โคโลนีสีขาวจาง ขอบเรียบ ผิวเรียบ ไม่มีการเกิด hemolysisเมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล non-lactose fermenter(NLF) โคโลนีสีใสหรือสีจางๆ มีการผลิต H2S จึงสามารถพบได้ โคโลนีขอบเรียบ ผิวเรียบ มีความมันวาว', 'เป็น gram negative bacilli ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'Catalase – positiveOxidase – negativeTSI – K/A with H2S productionMotile – positiveIndole – negativeH2S production – positiveLIA – negative/positiveNitrate reduction – positiveMR – positiveVP – negativeODC – positiveCitrate – negativeUrease – negative', '-', NULL),
(80, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Salmonella paratyphi A', 'เป็นเชื้อแบคทีเรียกลุ่มแกรมลบ ที่ติดต่อจากรับประทานอาหารหรือน้ำที่มีการปนเปื้อนผ่านทางปาก ซึ่งก่อให้เป็นพาหะแบบเรื้อรังที่ไม่แสดงลักษณะอาการ แต่ในประเทศที่กำลังพัฒนาเชื้อนี้มีบทบาทสำคัญเพราะทำให้เกิด enteric fever ซึ่งมีอัตราการเสียชีวิตที่สูง อีกทั้งยังพบว่ามีการดื้อยาปฏิชีวนะอีกด้วย', '[\"B47_Salmonella_parathyphiA(PIC1).jpg\",\"B47_Salmonella_parathyphiA(PIC2).jpg\",\" B47_Salmonella_parathyphiA(PIC3).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 47, NULL, NULL, 'เมื่อเพาะเลี้ยงบน Blood Agar ให้โคโลนีสีขาวจาง ขอบเรียบ ผิวเรียบ ไม่มีการเกิด hemolysisเมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล non-lactose fermenter(NLF) โคโลนีสีใสหรือสีจางๆ ขอบเรียบ ผิวเรียบ มีความมันวาว', 'เป็น gram negative bacilli มี petrichious flagella จึงสามารถเคลื่อนที่ได้ ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'Catalase – positiveOxidase – negativeTSI – K/A with Gas productionMotile – positiveIndole – negativeH2S production – negativeLIA – negative/negativeNitrate reduction – positiveMR – positiveVP – negativeODC – positiveCitrate – negativeUrease - negative', '-', NULL),
(81, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Salmonella choleraesuis', 'เป็นแบคทีเรียกลุ่มแกรมลบ อยู่ในกลุ่ม non-typhoidal species ที่จัดว่าเป็นเชื้อก่อโรค โดยพบได้ทุกหนทุกแห่งทั่วโลก เชื้อนี้ก่อโรค salmonellosis ทำให้เกิดอาการท้องร่วงเฉียบพลัน ในกรณีที่ผู้ป่วยที่ติดเชื้อเป็นผู้ที่มีภูมิคุ้มกันบกพร่องอาจยิ่งส่งเสริมให้เกิดการติดเชื้อในกระแสเลือดได้', '[\"B48_S_choleraesuis(PIC1).jpg\",\" B48_S_choleraesuis(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48, NULL, NULL, 'เมื่อเพาะเลี้ยงบน Blood Agar ให้โคโลนีสีขาวจาง ขอบเรียบ ผิวเรียบ ไม่มีการเกิด hemolysisเมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล non-lactose fermenter(NLF) โคโลนีสีใสหรือสีจางๆ มีการผลิต H2S จึงสามารถพบได้ โคโลนีขอบเรียบ ผิวเรียบ มีความมันวาว', 'เป็น gram negative bacilli ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'Catalase – positiveOxidase – negativeTSI – K/A with Gas production , H2S productionMotile – positiveIndole – negativeH2S production – positiveLIA – negative/positiveNitrate reduction – positiveMR – positiveVP – negativeODC – positiveCitrate – positive', '-', NULL),
(82, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Shigella dysenteriae', 'เป็นเชื้อแบคทีเรียแกรมลบ จัดเป็น shigella subgroup A โดยจะสามารถแบ่งออกได้อีก 12 serotype การรับเชื้อนี้เกิดจากการรับประทานสิ่งปนเปื้อนอุจจาระของผู้ป่วยหรือผู้เป็นพาหะ อีกทั้งเชื้อชนิดนี้มีความสามารถในการสร้าง enterotoxin จึงก่อให้เกิดภาวะรุนแรง และพบว่าทำให้เกิดอัตราป่วยเสียชีวิตสูงขึ้นถึงร้อยละ 20', '[\"B49_Shigella_dysenteriae(PIC1).jpg\",\"B49_Shigella_dysenteriae(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49, NULL, NULL, 'เมื่อเพาะเลี้ยงบน MacConkey Agar พบว่า non-lactose fermenter(NLF) โคโลนีใส ขนาดประมาณ 2 มิลลิเมตร ลักษณะกลม ขอบเรียบ ผิวเรียบมัน ทึบแสง สามารถเห็นเป็น mucoid colony ได้ในบางครั้ง', 'เป็น gram negative bacilli ที่ใม่มีการเคลื่อนที่ ไม่มีการสร้างสปอร์และ ไม่มีแคปซูล', 'Catalase – positiveOxidase – negativeTSI – K/AMotile – negativeIndole – negativeH2S production – negativeLIA – negative/negativeNitrate reduction – positiveMR – positiveVP – negativeODC – negativeCitrate – negativeUrease - negative', '-', NULL),
(83, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Shigella flexneri', 'เป็นแบคทีเรียแกรมลบที่ก่อให้เกิดโรคบิดจากแบคทีเรีย(bacterial dysenteries) และ shigellosis เชื้อในกลุ่มนี้อยู่ใน serogroup B ประกอบไปด้วย 6 serotypes โดยหลักๆจะพบในประเทศที่กำลังพัฒนา เชื้อนี้จะทำการบุกรุกไปยัง epithelial cell ที่ลำไส้ใหญ่ก่อให้เกิดการเกิดอักเสบ และเกิดการทำลาย epithelial cell', '[\"B50_Shigella_flexneri(PIC1).jpg\",\"B50_Shigella_flexneri(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, 'โคโลนีขนาดเล็ก ประมาณ 2-3 มิลลิเมตร กลม นูน ผิวเรียบ โปร่งใส สีเทาหรือไม่มีสี Non-lactose fermenter(NLF) บน MacConkey Agar', 'เป็น gram negative bacilli ที่ใม่มีการเคลื่อนที่ ไม่มีการสร้างสปอร์และ ไม่มีแคปซูล', 'Catalase – positiveOxidase – negativeTSI – K/AMotile – negativeIndole – variableH2S production – negativeLIA – negative/negativeNitrate reduction – positiveMR – positiveVP – negativeODC – negativeCitrate – negativeUrease - negative', '-', NULL),
(84, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Shigella sonnei', 'เป็นแบคทีเรียแกรมลบที่ก่อให้เกิดโรคบิดจากแบคทีเรีย(bacterial dysenteries) และ shigellosis โดยหลักๆจะพบในประเทศที่กำลังพัฒนา เชื้อนี้จะทำการบุกรุกไปยัง epithelial cell ที่ลำไส้ใหญ่ก่อให้เกิดการเกิดอักเสบ และเกิดการทำลาย epithelial cell', '[\"B51_S_sonnei(PIC1).jpg\",\"B51_S_sonnei(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51, NULL, NULL, 'โคโลนีมีขนาดประมาณ 2 มิลลิเมตร ลักษณะกลม ขอบเรียบ ผิวเรียบมัน ไม่มีสี ไม่ทึบแสง เจริญได้ดีบนอาหารเลี้ยงเชื้อ MacConkey agar, SS agar, DHL agar บางครั้งโคโลนีที่พบอาจเป็น mucoid colony', 'เป็น gram negative bacilli ที่ใม่มีการเคลื่อนที่ ไม่มีการสร้างสปอร์และ ไม่มีแคปซูล', 'Catalase – positiveOxidase – negativeTSI – K/AMotile – negativeIndole – negativeH2S production – negativeLIA – negative/negativeNitrate reduction – positiveMR – positiveVP – negativeODC – positiveCitrate – negativeUrease - negative', '-', NULL),
(85, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Citrobacter freundii', 'เป็นเชื้อแบคทีเรียแกรมลบในวงศ์พบได้ในน้ำ ดิน อาหารและลำไส้ในมนุษย์และสัตว์ต่างๆ เชื้อชนิดนี้มีอัตราการก่อโรคที่ต่ำ โดยโรคที่จะเกิดขึ้นได้หากมีการติดเชื้อประกอบไปด้วย การติดเชื้อที่ระบบปัสสาวะ ตับ ท่อน้ำดี ลำไส้เล็ก กระดูก ทางเดินหายใจ เยื่อบุหัวใจ แผลและเนื้อเยื่ออ่อน ไขสันหลังและการติดเชื้อในกระแสเลือด', '[\"B52_C_freundii(PIC1).jpg\",\"B52_C_freundii(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52, NULL, NULL, 'เมื่อเพาะเลี้ยงบน Nutrient Agar โคโลนีขนาดประมาณ 2-4 มิลลิเมตร สีเทา ขอบเรียบ ผิวเรียบ ชื้น อาจจะเห็นเป็นโคโลนีมันเยิ้ม หรือมันวาวก็ได้เมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล Lactose fermenter(LF) โคโลนีสีชมพู มันวาว ขอบเรียบ นูน แต่บางครั้งสามารถให้ผลโคโลนีเป็น non-lactose fermenter(NLF) ได้', 'เป็น gram negative bacilli ขนาด 1.0 x 2.0-6.0 ไมครอน อาจอยู่เป็นเซลล์เดี่ยวหรือเป็นคู่ สามารถเคลื่อนที่ได้โดย petrichous flagella ไม่มีการสร้างสปอร์และแคปซูล', 'Catalase – positiveOxidase – negativeTSI – K/A with H2S production , gas productionMotile – negativeIndole – negativeH2S production – positiveLIA – positive/negativeNitrate reduction – positiveMR – positiveVP – negativeODC – negativeCitrate – positiveUrease - negative', '-', NULL),
(86, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Proteus vulgaris', 'เป็นเขื้อแบคทีเรียมแกรมลบ ที่สามารถพบ swarming pattern ได้ เชื้อชนิดนี้เป็นสาเหตุหลักที่พบได้บ่อยในการก่อให้เกิดการติดเชื้อที่ได้รับมาจากในชุมชน(community-acquired infection) และการติดเชื้อในระบบทางเดินปัสสาวะ เช่น กระเพาะปัสสาวะอักเสบ(cystitis) และกรวยไตอักเสบ(pyelonephritis) การติดเชื้อเหล่านี้นำไปสู่การติดเชื้อในกระแสเลือดและนำไปสู่การเกิด urosepsis ตามมา อีกทั้งสามารถทำให้เกิดการติดเชื้อที่ระบบทางเดินหายใจในบางครั้ง', '[\"B53_Proteus_vulgaris(PIC1).jpg\",\"B53_Proteus_vulgaris(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53, NULL, NULL, 'เมื่อเพาะเลี้ยงบน Blood Agar จะมีการพบ swarming colony คล้าย bull-eyes โคโลนีใส ไม่มีสี ขนาดประมาณ 2-3 มิลลิเมตร ผิววาวเมื่อเพาะเลี้ยงบน MacConkey Agar พบ Non-lactose fermenter(NLF) โคโลนีสีใส ชนาดใหญ่ นูน ขอบเรียบผิวเรียบ', 'เป็น gram negative bacilli ขนาดประมาณ 0.4 – 0.6 x 1.0 – 3.0 ไมครอน มีการจัดเรียงตัวเป็นเซลล์เดี่ยว เป็นคู่(in pairs) หรือเป็นสายสั้นๆ(short chains) มีการเคลื่อนที่โดยอาศัย flagellaหากทำการย้อมแกรมอาจพบ petrichous flagella ล้อมรอบเซลล์ได้ ไม่มีการสร้างสปอร์ ไม่มีแคปซูล', 'Oxidase – negativeTSI – K/A with H2S productionH2S production – positiveMotile – positiveIndole – negativeMR – positiveVP – negativeCitrate – positiveUrease – positiveODC - positiveSwarming colony บน Blood Agar', '-', NULL),
(87, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Providencia rettgeri', 'เป็นเชื้อแบคทีเรียแกรมลบที่อยู่ในวงศ์โดยเชื้อในกลุ่มนี้ประกอบไปด้วย, , , , และ และเป็นเชื้อแบคทีเรียที่พบว่าเป็นสาเหตุทำให้เกิดการติดเชื้อทางท่อสายสวนปัสสาวะมากที่สุด โดยเฉพาะอย่างยิ่งในผู้ป่วยสูงอายุที่ต้องใส่ท่อสายสวนเป็นเวลานาน', '[\"B54_P_rettgeri(PIC1).jpg\",\"B54_P_rettgeri(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54, NULL, NULL, 'เมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล Non-lactose fermenter(NLF) โคโลนีสีใส ผิวเรียบ ขอบเรียบ มันวาว', 'เป็น gram negative bacilli ไม่มีการสร้างสปอร์และแคปซูล', 'Oxidase – negativeTSI – K/A with gas productionHS production – negativeMotile – positiveIndole – positiveMR – positiveVP – negativeCitrate – positiveUrease – positiveODC – negativeADH - negative', '-', NULL),
(88, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Morganella morganii', 'เป็นเชื้อแบคทีเรียแกรมลบที่โดยปกติพบในสิ่งแวดล้อมและเป็นเชื้อประจำถิ่น(normal flora) ในลำไส้ของมนุษย์ สัตว์เลี้ยงลูกด้วยนม เชื้อชนิดนี้พบได้ไม่บ่อยนักในการก่อให้เกิดการติดเชื้อที่ได้รับจากชุมชน แต่ส่วนมากจะได้รับเชื้อจากหลังผ่าตัดและการติดเชื้อจากโรงพยาบาลเป็นหลัก โดยก่อพยาธิสภาพทำให้เกิดการติดเชื้อในระบบทางเดินปัสสาวะและการติดเชื้อในกระแสเลือด', '[\"B55_M_morganii(PIC1).jpg\",\"B55_M_morganii(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55, NULL, NULL, 'เมื่อเพาะเลี้ยงบน MacConkey Agar ให้ non-lactose fermenter(NLF) โคโลนีใส กลม ขอบเรียบ ผิวเรียบ', 'เป็น gram negative bacilli มีรูปร่างตรง ไม่มีการสร้างสปอร์และแคปซูล', 'Oxidase – negativeTSI – K/A with H2S productionH2S production – variableMotile – positiveIndole – positiveMR – positiveVP – negativeCitrate – negativeUrease – positiveOrnithine decarboxylase(ODC) – negativeArginine dihydrolase(ADH) - negative', '-', NULL),
(89, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Plesiomonas shigelloides', 'เป็นเชื้อแบคทีเรียกลุ่มแกรมลบ ที่พบได้ในดินและน้ำ เป็นเชื้อที่มีการระบาดและก่อให้เกิดอาการท้องเสีย ท้องร่วมในมนุษย์ โดยเฉพาะอย่างยิ่งการรับประทานอาหารทะเลที่ไม่สุก เชื้อชนิดนี้สามารถเกิดปฏิกิริยาข้ามกลุ่มกับ shigella sonnei ได้อีกด้วย', '[\"B56_P_shigelloides(PIC1).jpg\",\"B56_P_shigelloides(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 56, NULL, NULL, 'เมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล Non-lactose fermenter(NLF) โคโลนีมีสีอมเทา มันเยิ้ม ขอบเรียบ ผิวเรียบ นูนเมื่อเพาะเลี้ยงบน TCBS agar พบว่าโคโลนีไม่มีการเจริญเติบโต(No Growth)', 'เป็น gram negative bacilli มีรูปร่างตรง ปลายมน ขนาดเซลล์ประมาณ 0.8 – 1.0 ไมครอน', 'Oxidase – positiveTSI – K/AH2S production – negativeMotile – positiveIndole – positiveMR – positiveVP – negativeCitrate – negativeUrease – negativeInositol - positiveOrnithine decarboxylase(ODC) – positiveArginine dihydrolase(ADH) - positive', '-', NULL),
(90, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Pseudomonas stutzeri', 'เป็นแบคทีเรียกลุ่มแกรมลบที่ไม่มีการหมักน้ำตาล สามารถพบได้ในดิน น้ำ โดยปกติเชื้อนี้จะก่อโรคในคนปกติได้ยาก การก่อโรคส่วนใหญ่จึงเกิดขึ้นในผู้ที่ภูมิคุ้มกันบกพร่องเป็นหลัก', '[\"B57_P_stutzeri(PIC1).jpg\",\"B57_P_stutzeri(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 57, NULL, NULL, 'สามารถดูและจำแนกโดยการดูจากรูปร่างที่ไม่ปกติ และความทนทาน(consistency)เมื่อเพาะเลี้ยง fresh colony จะพบลักษณะโคโลนีสีน้ำตาลอมแดง ยึดเกาะแน่นบน agar โคโลนีหยิกหรือจิก(wrinkle หรือ pitting colony) มีพื้นผิวที่แข็ง(hard) ผิวแห้ง มีขอบนูนคล้ายสันเขา(ridge shaped) และมีการแตกแขนงที่ขอบโคโลนีเมื่อเพาะเลี้ยงบน MacConkey Agar ให้ผล non-lactose fermenter(NLF)', 'เป็น gram negative bacilli สามารถเคลื่อนที่ได้โดยใช้ monotrichous flagella ไม่มีการสร้างสปอร์และแคปซูล', 'Catalase – positiveOxidase – positiveMotile – positiveIndole – negativeTSI – K/N or K/KMR – negativeVP – negativeH2S – negativeGrowth at 42 °C – positiveNitrate reduction - positiveOF glucose – positiveOF lactose – negativeOF maltose – negativeOF sucrose – negativeOF mannitol – positivePyocyanin – negativePyoverdin – positive', '-', NULL),
(91, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Burkholderia pseudomallei', 'เป็นแบคทีเรียแกรมลบ พบได้ทั่วไปในดินและน้ำในแหล่งที่มีการระบาด พบได้บ่อยในภาคอีสาน เชื้อนี้เข้าสู่ร่างกายคนโดยผ่านทางผิวหนังโดยจำไม่เป็นต้องมีรอยขีดข่วน ทำให้สามารถก่อเกิดพยาธิสภาพได้ เช่น sepsis ปอดติดเชื้อเฉียบพลัน(acute pneumonia) การติดเชื้อในระบบทางเดินปัสสาวะ ติดเชื้อในข้อและฝี', '[\"B58_B_pseudomallei(PIC1).jpg\",\"B58_B_pseudomallei(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, NULL, NULL, 'เมื่อเพาะเลี้ยงบน blood agar มากกว่า 24 ชั่วโมง จะปรากฏโคโลมีสีครีม มันเงา อาจจะแห้งและย่นอย่างไรก็ตามลักษณะที่มองเห็นอาจมีได้หลายลักษณะ และอาจถูกมองข้ามว่าเป็นเชื้อปนเปื้อนเมื่อเพาะเลี้ยงบน MacConkey agar จะมีลักษณะขาวขุ่น มันเงา(non-lactose fermenter)และจะเป็นสีชมพู เหี่ยวย่นภายหลัง 48 ชั่วโมง', 'เป็น gram negative bacilli ที่มีลักษณะจำเพาะคือพบเซลล์ที่มีการติดสีเข้มที่ส่วนหัวและท้าย ปรากฏลักษณะคล้ายเข็มกลัด(safety-pin appearance) มี flagella สามารถเคลื่อนที่ได้ ไม่มีการสร้างสปอร์และแคปซูล', 'Catalase – positiveOxidase – positiveMotile – positiveIndole – negativeTSI – K/N or K/KMR – negativeVP – negativeH2S – negativeGrowth at 42 °C – positiveNitrate reduction – positiveArginine dihydrolase(ADH) - positiveOF glucose – positiveOF lactose – positiveOF maltose – negativeOF sucrose – negativeOF mannitol - negative', '-', NULL),
(92, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Acinetobacter iwoffi', 'เป็นเชื้อแบคทีเรียที่สามารถพบได้ในดิน น้ำ อาหารแช่แข็ง และสิ่งแวดล้อมในโรงพยาบาล เชื้อนี้มีการ colonize อยู่ที่ผิวหนังและเยื่อเมือกบุผิว โดยส่วนใหญ่เชื้อนี้เป็นเชื้อก่อโรคในโรงพยาบาล(nosocomial infection) ก่อให้เกิดการติดเชื้อและมีอาการ คือ ติดเชื้อในกระแสเลือด ติดเชื้อที่ระบบทางเดินปัสสาวะ ตา ผิวหนัง บาดแผล เยื่อบุหัวใจอักเสบและปอดบวม', '[\"B59_A_iwoffi(PIC1).jpg\",\"B59_A_iwoffi(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 59, NULL, NULL, 'โคโลนีไม่มีสี กลม ผิวเรียบ ขอบเรียบ มีความมันเยิ้ม(opaque) มีขนาดโคโลนีประมาณ 1.0 – 1.5 มิลลิเมตร', 'เป็น gram negative coccbacilli มีการจัดเรียงเป็นเซลล์เดี่ยว(single) เป็นคู่(in pairs) หรืออาจจะเป็นสาย(in chains) ไม่มีการเคลื่อนที่ ไม่มีการสร้างสปอร์และแคปซูล', 'Catalase – positiveOxidase – negativeMotile – negativeUrease – variableCitrate – negativeOF glucose – negativeNitrate reduction – negativeArginine hydrolysis – positiveGrowth at 42 °C – negative', '-', NULL),
(93, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Achromobacter xylosidans', 'เป็นแบคทีเรียแกรมลบ พบได้ทั่วไปในธรรมชาติ เชื้อชนิดนี้จัดว่าเป็นเชื้อก่อโรคฉวยโอกาส(opportunistic infection) สามารถก่อให้เกิดการติดเชื้อในกระแสเลือด โดยเฉพาะอย่างยิ่งในผู้ป่วยที่เป็น cystic fribrosis และ cellulitis ได้', '[\"B60_Achromobacter_xylosidans(PIC1).jpg\",\"B60_Achromobacter_xylosidans(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, NULL, NULL, 'เมื่อเพาะเลี้ยงบน Nutrient agar พบว่าโคโลนีเป็นสีขาวอมเทา มีลักษณะกลม มันเยิ้ม(opaque) ผิวเรียบ ขอบเรียบ บางครั้งอาจมีผิวขรุขระได้', 'เป็น gram negative bacilli มีรูปร่างตรง ปลายมน สามารถเคลื่อนที่ได้โดยใช้ petrichous flagella ไม่มีการสร้างสปอร์และแคปซูล', 'Catalase – positiveOxidase – positiveMotile – positiveIndole – negativeTSI – K/N or K/KMR – negativeVP – negativeH2S – negativeNitrate reduction – positiveArginine dihydrolase(ADH) - positiveOF glucose – positiveOF lactose – negativeOF maltose – negativeOF sucrose – negativeOF mannitol - negativeCitrate – positiveUrease – negative', '-', NULL),
(94, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'Vibrio cholerae', 'เป็นแบคทีเรียแกรมลบ สามารถพบได้ในน้ำจืด ปนเปื้อนในอาหารทะเล ได้แก่ กุ้ง หอย ปู ปลา ปลาหมึกและในสิ่งมีชีวิตในน้ำ เชื้อชนิดนี้ก่อให้เกิดอาการท้องร่วงโดยมีหลายระดับความรุนแรง(ตั้งแต่ cholera gravis , pandemic cholera จนถึงอาการท้องเสียเล็กน้อย) เนื่องจากมีการสร้าง toxin แล้วไปกระตุ้น regulatory protein จนทำให้เกิดพยาธิสภาพที่ผิดปกติตามมา', '[\"B61_V_cholerae_O1(PIC1).jpg\",\"B60_Achromobacter_xylosidans(PIC2).jpg\"]', '0000-00-00 00:00:00', 0, NULL, 'gram stain', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 61, NULL, NULL, 'เมื่อเพาะเลี้ยงบน TCBS agar ให้ผล sucrose fermenter(SF) โคโลนีมีสีเหลือง ขนาด 2-4 มิลลิเมตร แบน ผิวเรียบ ขอบเรียบ มันเยิ้ม(opaque)', 'เป็น gram negative bacilli มีรูปร่างตรงหรืออาจโค้งเล็กน้อย หรือคล้ายเครื่องหมายคอมม่า(comma-shaped) ไม่มี lateral flagella บน solid media', 'Catalase – positiveOxidase – positiveIndole – positiveMR – positiveVoges-Proskauer – positiveH2S production – negative0% NaCl – positive1% NaCl – positive3% NaCl – positive6% NaCl – positive8% NaCl – negative10% NaCl – negative', 'stool', NULL),
(95, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '1', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'ทดสอบ', NULL, '', '2019-07-24 03:28:02', 1, NULL, '0', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '1', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'ทดสอบ', 'ทดสอบ', '', '2019-07-24 03:28:38', 1, NULL, '1', 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '1', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'กลุ่มอาการโรคไตเนื่องจากโรคตับ', 'aaa', '', '2019-07-24 03:30:23', 1, NULL, '0', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '1', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'sss', NULL, '', '2019-07-24 03:31:29', 1, NULL, '0', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '1', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'aaa', NULL, '', '2019-07-24 03:33:42', 1, NULL, '0', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '1', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'aaa', NULL, '', '2019-07-24 03:34:30', 1, NULL, '0', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '1', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'aaaa', 'aaaa', '[\"Presentation4.jpg\"]', '2019-07-24 03:35:33', 1, NULL, '0', 0, 0, 0, 'aaaa', 'aaaa', 'aaaa', 'aaa', 'aaa', 'aaa', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '1', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'ทดสอบ', NULL, '', '2019-07-24 03:43:47', 1, NULL, '0', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 0, 0, NULL, '', 0, 0, 0, NULL, NULL, NULL, '1', '', '', NULL, '0000-00-00 00:00:00', '', '', '', 0, NULL, '', '', 0, '', 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, 0, '', '', 'aaa', 'aaaa', '[\"penicillum.jpg\"]', '2019-07-30 06:32:35', 1, NULL, '0', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_impressive`
--

CREATE TABLE `tb_impressive` (
  `impressive_id` int(11) NOT NULL,
  `impressive_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_impressive`
--

INSERT INTO `tb_impressive` (`impressive_id`, `impressive_name`) VALUES
(1, 'Pre – pyloric ulcer'),
(2, 'Gastritis'),
(3, 'CBD stone'),
(4, 'Normal surveillance scope'),
(5, 'Colonic polys'),
(6, 'r/o CA esophagus and CA ampulla'),
(7, 'Rectal mass'),
(8, 'Mild Gastritis'),
(9, 'Distal CHCA'),
(10, 'Rectal ulcer with proximal GI bleed'),
(11, '2nd part obstruction'),
(12, 'Gastritis and Duodenitis'),
(13, 'EV bleeding'),
(14, 'Sigmoid diverticulum'),
(15, 'CBD obstruction'),
(16, 'Retain CBD stone'),
(17, 'Chronic GU'),
(18, 'Toxic cholangitis with CBD stone'),
(19, 'Hilar CHCA'),
(20, 'Benign CBD stricture'),
(21, 'GU bleeding'),
(22, 'Gastric ulcer R/O CA stomach');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mainpart`
--

CREATE TABLE `tb_mainpart` (
  `mainpart_id` int(11) NOT NULL,
  `mainpart_name` varchar(100) NOT NULL,
  `mainpart_procedure_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_mainpart`
--

INSERT INTO `tb_mainpart` (`mainpart_id`, `mainpart_name`, `mainpart_procedure_id`) VALUES
(1, 'Esophagus', 1),
(2, 'Stomach', 1),
(3, 'Duodenum', 1),
(4, 'Ileum', 2),
(5, 'Colon', 2),
(6, 'Rectum', 2),
(7, 'Papilla Major', 3),
(8, 'Papilla Minor', 3),
(9, 'Common bile duct', 3),
(10, 'Cystic duct and Gall bladder', 3),
(11, 'Bifurcation and hepatic dust', 3),
(12, 'Pancreatic dust', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mainpartsub`
--

CREATE TABLE `tb_mainpartsub` (
  `mainpartsub_id` int(11) NOT NULL COMMENT 'aaaa',
  `mainpartsub_name` varchar(100) NOT NULL COMMENT 'bbb',
  `mainpartsub_mp_id` int(11) NOT NULL COMMENT 'ccc'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_mainpartsub`
--

INSERT INTO `tb_mainpartsub` (`mainpartsub_id`, `mainpartsub_name`, `mainpartsub_mp_id`) VALUES
(1, 'Upper Esophagus', 1),
(2, 'Middle Esophagus', 1),
(3, 'Lower  Esophagus', 1),
(4, 'Cardia', 2),
(5, 'Fundus', 2),
(6, 'Body', 2),
(7, 'Antrum', 2),
(8, 'Pylorus', 2),
(9, 'Bulb', 3),
(10, 'Descending', 3),
(11, 'ileum', 4),
(12, 'Cecum', 5),
(13, 'Rectum', 6),
(18, 'Ascending', 5),
(19, 'Transverse', 5),
(20, 'Descending', 5),
(21, 'Sigmoid', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mainproblem`
--

CREATE TABLE `tb_mainproblem` (
  `mainproblem_id` int(11) NOT NULL,
  `mainproblem_name` varchar(100) NOT NULL,
  `mainproblem_mp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_mainproblem`
--

INSERT INTO `tb_mainproblem` (`mainproblem_id`, `mainproblem_name`, `mainproblem_mp_id`) VALUES
(1, 'Normal222', 1),
(2, 'Dilated', 1),
(3, 'Foreign Body', 1),
(4, 'Mass', 1),
(5, 'Stricture', 1),
(6, 'Hiatal hernia', 1),
(7, 'Normal', 2),
(8, 'Polyps', 2),
(9, 'Foreign Body', 2),
(10, 'Mass', 2),
(11, 'Parasites', 2),
(12, 'Normal', 3),
(13, 'Polyps', 3),
(14, 'Foreign Body', 3),
(15, 'Mass', 3),
(16, 'Parasites', 3),
(17, 'Normal', 4),
(18, 'Normal', 5),
(19, 'Polyps', 5),
(20, 'Foreign Body', 5),
(21, 'Mass', 5),
(22, 'Normal', 6),
(24, 'Polyps', 4),
(25, 'Foreign Body', 4),
(26, 'Mass', 4),
(27, 'Parasites', 4),
(28, 'Parasites', 5),
(29, 'Polyps', 6),
(30, 'Foreign Body', 6),
(31, 'Mass', 6),
(32, 'Parasites', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mainsubgl`
--

CREATE TABLE `tb_mainsubgl` (
  `mainsubgl_id` int(11) NOT NULL,
  `mainsubgl_name` varchar(100) NOT NULL,
  `mainsubgl_mp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_mainsubgl`
--

INSERT INTO `tb_mainsubgl` (`mainsubgl_id`, `mainsubgl_name`, `mainsubgl_mp_id`) VALUES
(1, 'Hyperemia/vascularity', 1),
(2, 'Discoloration', 1),
(3, 'Friability', 1),
(4, 'Hemorrhage', 1),
(5, 'Erosion/ulcer', 1),
(6, 'Contents (mucus/bile/food)', 1),
(7, 'LES open / other lesions', 1),
(8, 'Can’t inflate lumen', 2),
(9, 'Hyperemia/vascularity', 2),
(10, 'Edema', 2),
(11, 'Discoloration', 2),
(12, 'Friability', 2),
(13, 'Hemorrhage', 2),
(14, 'Erosion/ulcer', 2),
(15, 'Contents (mucus/bile/food)', 2),
(16, 'Passing scope through pylorus', 2),
(17, 'Can’t inflate lumen', 3),
(18, 'Hyperaemia/vascularity', 3),
(19, 'Edema', 3),
(20, 'Discoloration', 3),
(21, 'Friability', 3),
(22, 'Texture', 3),
(23, 'Hemorrhage', 3),
(24, 'Erosion/ulcer', 3),
(25, 'Lacteal dilatation', 3),
(26, 'Contents (mucus/bile/food)', 3),
(27, 'Can’t inflate lumen', 4),
(28, 'Hyperemia/vascularity', 4),
(29, 'Edema', 4),
(30, 'Discoloration', 4),
(31, 'Friability/Hemorrhage', 4),
(32, 'Erosion/ulcer', 4),
(33, 'Lacteal dilatation', 4),
(34, 'Texture of mucosa', 4),
(35, 'Mass', 4),
(36, 'Other', 4),
(37, 'Hyperemia/vascularity', 5),
(38, 'Discoloration', 5),
(39, 'Friability /Hemorrhage', 5),
(40, 'Erosion/ulcer', 5),
(41, 'Intussusception', 5),
(42, 'Stricture', 5),
(43, 'Artifact', 5),
(44, 'Other', 5),
(45, 'Texture', 5),
(46, 'Can’t inflate lumen', 5),
(47, 'Can’t inflate lumen', 6),
(48, 'Hyperemia/vascularity', 6),
(49, 'Edema', 6),
(50, 'Discoloration', 6),
(51, 'Friability/Hemorrhage', 6),
(52, 'Erosion/ulcer', 6),
(53, 'Lacteal dilatation', 6),
(54, 'Texture of mucosa', 6),
(55, 'Mass', 6),
(56, 'Other', 6),
(95, 'Moss', 2),
(96, 'vjhk', 2),
(97, 'Edema', 1),
(98, 'Moss', 1),
(99, 'vjhk', 1),
(100, 'mo', 2),
(103, 'Hyperemia/vascularity', 3),
(104, 'dff', 1),
(105, 'Hyperaemia/vascularity', 2),
(106, 'Flow', 1),
(107, 'TOT', 3),
(108, 'Moss', 3),
(109, 'g', 2),
(110, 'M&M', 3),
(111, 'M&M', 2),
(112, 'M2', 2),
(113, 'TTT', 2),
(114, 'Mossgg', 2),
(115, 'fff', 2),
(116, 'dde', 2),
(117, 'สดายุ', 2),
(118, 'ทองลอย', 2),
(119, 'ไทยรัฐ', 2),
(120, 'เเเเเ', 2),
(121, 'dfdfdf', 2),
(122, ' Hyperemia/vascularityEdemadfdfdfdfdfdf', 2),
(123, ' Hyperemia/vascularityEdemaDiscolorationสดายุ', 2),
(124, ' Edema', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_procedure`
--

CREATE TABLE `tb_procedure` (
  `procedure_id` int(11) NOT NULL,
  `procedure_name` varchar(100) NOT NULL,
  `procedure_scope` varchar(100) NOT NULL,
  `procedure_pic` varchar(100) NOT NULL,
  `procedure_color` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_procedure`
--

INSERT INTO `tb_procedure` (`procedure_id`, `procedure_name`, `procedure_scope`, `procedure_pic`, `procedure_color`) VALUES
(1, 'Gastroscopy', 'Gastroscope222', '1555944712.jpg', '2E7D32'),
(2, 'Colonoscopy', 'Colonoscope', '1555944730.jpg', 'FF6F00'),
(3, 'ERCP', 'ERCP scope', '1555944752.jpg', '5D4037'),
(4, 'EUS', 'EUS scope', '1555944772.jpg', '546E7A'),
(5, '', '', '1555944794.jpg', ''),
(6, 'EBUS', 'EBUS', '1555944814.jpg', '00838F'),
(7, 'Urology', 'Urology Scope', '1555944877.jpg', 'DD2C00'),
(8, 'Other', 'Other', '', '5E35B1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_procedure_sub`
--

CREATE TABLE `tb_procedure_sub` (
  `psub_id` int(11) NOT NULL,
  `psub_name` varchar(100) NOT NULL,
  `psub_procedure_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_procedure_sub`
--

INSERT INTO `tb_procedure_sub` (`psub_id`, `psub_name`, `psub_procedure_id`) VALUES
(1, 'Sampling', 1),
(2, 'Theraphy', 1),
(3, 'Hemostatic', 1),
(4, 'Foreign Body', 1),
(5, 'Sampling', 2),
(6, 'Theraphy', 2),
(7, 'Hemostatic', 2),
(8, 'Remove Stone', 3),
(9, 'Stent', 3),
(10, 'Remove Stent', 3),
(11, 'Foreign Body', 2),
(15, 'Diagnosis', 4),
(16, 'Therapeutic', 4),
(17, 'FNA', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_wb`
--

CREATE TABLE `tb_wb` (
  `wb_id` int(11) NOT NULL,
  `wb_title` varchar(300) NOT NULL,
  `wb_description` varchar(6000) NOT NULL,
  `wb_picmain` varchar(200) NOT NULL,
  `wb_author` int(11) NOT NULL,
  `wb_datetime` datetime NOT NULL,
  `wb_type` int(11) NOT NULL,
  `wb_typesub` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_wb`
--

INSERT INTO `tb_wb` (`wb_id`, `wb_title`, `wb_description`, `wb_picmain`, `wb_author`, `wb_datetime`, `wb_type`, `wb_typesub`) VALUES
(1, 'ทดสอบจ้า', 'ทดสอบอีกนั่นแหล่ะ', '1557228343.png', 0, '0000-00-00 00:00:00', 2222, 0),
(2, 'ทดสอบจ้า22', 'ทดสอบอีกนั่นแหล่ะ', '1557228867.jpg', 1, '2019-05-07 11:34:27', 2, 0),
(3, 'ทดสอบจ้า', 'aaa', '', 6, '2019-05-07 20:18:21', 0, 0),
(4, 'ทดสอบจ้า', 'ทดสอบอีกนั่นแหล่ะ', '', 6, '2019-05-07 20:21:44', 2222, 0),
(5, 'ทดสอบจ้า', 'ทดสอบอีกนั่นแหล่ะ', '', 6, '2019-05-07 20:22:11', 2222, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_type` varchar(10) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `prefixname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `department_main` varchar(100) NOT NULL,
  `department_sub` varchar(100) NOT NULL,
  `department_tel` varchar(50) NOT NULL,
  `department_address` varchar(300) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `line` varchar(50) NOT NULL,
  `experience` varchar(200) NOT NULL,
  `job_format` varchar(300) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `opencase` int(11) NOT NULL,
  `eqa` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type`, `name`, `prefixname`, `firstname`, `lastname`, `position`, `department_main`, `department_sub`, `department_tel`, `department_address`, `mobile`, `line`, `experience`, `job_format`, `email`, `phone`, `password`, `remember_token`, `created_at`, `updated_at`, `opencase`, `eqa`, `status`) VALUES
(1, 'admin', 'Admin', '', '', '', '0', '0', '0', '0', '', '0', '0', '0', '0', 'admin@gmail.com', '', '$2y$10$fkMq8Hovet0TZrdzT/deCO0hhddZunO.QsHazZlfwoWkZHsnUv4V2', 'DIMxLlHE45IW8PzSSAtkchgel5d2A0SUyfhtyk1oAgnrcWH6z6eR0vLY5Pc6', '2019-07-30 07:00:03', '2018-12-01 02:54:29', 0, 0, 0),
(2, 'teacher', 'ลงทะเบียน', '', '', '', '0', '0', '0', '0', '', '0', '0', '0', '0', 'register', '', '$2y$10$UeUjYrJ1uKQ7n0/gWPQdPOFQgG3vmyLsHCaj0.AXpCXhkWkueH0.2', 'EivZbnjKolrUkQpJdGjOFQPSF6sdFRwbxZcXAlqHo7SY5XT2Unx7nDxLoW9d', '2019-05-26 10:45:36', '2018-12-01 04:22:22', 0, 0, 0),
(5, 'student', 'นักเรียน 001', '', '', '', '0', '0', '0', '0', '', '0', '0', '0', '0', 'stu001@gmail.com', '', '$2y$10$XiW9BJkOiiHC0pI6j25VGOquks1L8W75ZQs6olX8iliFefqOytVa6', 'DsZZmBdgj0yX1CJGxsj8xm9JA1tynsdnTTZc1IKsbBuDPSdqDBeGKBg7JUC1', '2019-07-29 13:41:19', '2018-12-01 04:36:28', 0, 0, 0),
(6, 'student', 'นักเรียน 002', '', '', '', '0', '0', '0', '0', '', '0', '0', '0', '0', 'stu002@gmail.com', '', '$2y$10$XX/cdVxe7Lh1ACWv5v1SW.UZ85fOOq5gHbs97lHflvT1SRZqgS5dm', 'IauEZIGkA6IskePAPkV5fOxKjtYUfmVfzhUA1tdfE5shOqpdKq51H90zz9U6', '2019-07-29 14:03:54', '2018-12-08 02:49:34', 0, 1, 0),
(7, 'student', 'นักเรียน 003', '', '', '', '0', '0', '0', '0', '', '0', '0', '0', '0', 'stu003@gmail.com', '', '$2y$10$3QlxRTc9jBd7mOvTgyK.t.vOXdVTQ0u./X1SRs30wbXGRtvCMdsx2', 'Cp2J4YybCouJU4UzjHwhZo5IQM6cvdymwXX3u1f83YUot1USQEkGQQ4T5IXB', '2019-05-26 22:49:29', '2018-12-10 00:27:44', 0, 0, 0),
(8, 'student', 'นักเรียน 004', '', '', '', '0', '0', '0', '0', '', '0', '0', '0', '0', 'stu004@gmail.com', '', '$2y$10$asUP.ptSXBEorzfA/MtATuHqwg/XCqYUAQ.tvq9r8V9pYWPPQzmC.', NULL, '2019-05-26 22:49:36', '2018-12-13 22:38:59', 0, 0, 0),
(9, 'student', 'นักเรียน 005', '', '', '', '0', '0', '0', '0', '', '0', '0', '0', '0', 'stu005@gmail.com', '', '$2y$10$Yw8blvDOmGemeCG7jbIqz.DaRkXo0DFyRakYbhrD146g5jt0Vefl6', 'TfMwaRWPtdjE02QeDah8uGmbg81SvS8mEj3XiWJeJrDcmXUnl1F2F54c5k8i', '2019-05-26 22:49:43', '2018-12-13 22:49:37', 0, 0, 0),
(10, 'student', 'นักเรียน 006', '', '', '', '0', '0', '0', '0', '', '0', '0', '0', '0', 'stu006@gmail.com', '', '$2y$10$QXEWtWU./5I6TeiO8s2WKuoWFzmPOLSqNg0T7k0QyTfhXckulvTuW', NULL, '2019-05-26 22:49:50', '2018-12-13 22:51:52', 0, 0, 0),
(11, 'student', 'นักเรียน 007', '', '', '', '0', '0', '0', '0', '', '0', '0', '0', '0', 'stu007@gmail.com', '', '$2y$10$lWkhiok9niEW.fzwRzRWluZ3ngsDV0r9lMLk4OI.EZO5nzXcrqOyu', NULL, '2019-05-26 22:50:05', '2018-12-13 22:54:24', 0, 0, 0),
(12, 'student', 'นักเรียน 008', '', '', '', '0', '0', '0', '0', '', '0', '0', '0', '0', 'stu008@gmail.com', '', '$2y$10$xGu2zy4LwZketHA8IUEvnOyYhwIKtR/U6OjRtZFOZwzeT2NXBQiZK', NULL, '2019-05-26 22:50:12', '0000-00-00 00:00:00', 0, 0, 0),
(13, 'student', 'นักเรียน 009', '', '', '', '0', '0', '0', '0', '', '0', '0', '0', '0', 'stu009@gmail.com', '', '$2y$10$m6v6Dslg5tBlRebEnu3YDO/a/O.1HiqdVokEXTUyoPo2PHwFoG9pW', NULL, '2019-05-26 22:50:19', '0000-00-00 00:00:00', 0, 0, 0),
(14, 'student', 'นักเรียน 010', '', '', '', '0', '0', '0', '0', '', '0', '0', '0', '0', 'stu010@gmail.com', '', '$2y$10$YRAd/a0H2tdt5lKlVgqjTOzeLbOa1V0NxdI3Rm.AD6b0oC/ouc/mG', NULL, '2019-05-26 22:50:25', '0000-00-00 00:00:00', 0, 0, 0),
(15, 'student', 'นักเรียน 011', '', '', '', '0', '0', '0', '0', '', '0', '0', '0', '0', 'stu011@gmail.com', '', '$2y$10$qoENnMQ464LhCd7JdiRfEukh27AyeokhT43ASQvAjnrfBj5vLA7tq', NULL, '2019-05-26 22:50:31', '0000-00-00 00:00:00', 0, 0, 0),
(16, NULL, 'ss', '', '', '', '0', '0', '0', '0', '', '0', '0', '0', '0', 'ss@gmail.com', '', '$2y$10$tSoZI.b7v6TRTEKE7hrG.uAwme0UWWKclTlFXjNkZbwBXj.8hVDxi', 'cSYZCNgyI1GKoVEtPPQE59OfZW218JtNGqfn9KTdMVyfSsBGkLpPwtZPd9XM', '2019-07-29 13:32:39', '2019-07-29 06:32:23', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessory`
--
ALTER TABLE `accessory`
  ADD PRIMARY KEY (`accessory_id`);

--
-- Indexes for table `accessory_com`
--
ALTER TABLE `accessory_com`
  ADD PRIMARY KEY (`accessorycom_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `dd_anesthesia`
--
ALTER TABLE `dd_anesthesia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dd_anesthesis`
--
ALTER TABLE `dd_anesthesis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dd_gender`
--
ALTER TABLE `dd_gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dd_indication`
--
ALTER TABLE `dd_indication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dd_national`
--
ALTER TABLE `dd_national`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dd_prefix`
--
ALTER TABLE `dd_prefix`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dd_rapid`
--
ALTER TABLE `dd_rapid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dd_righttotreatment`
--
ALTER TABLE `dd_righttotreatment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dd_room`
--
ALTER TABLE `dd_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eqa`
--
ALTER TABLE `eqa`
  ADD PRIMARY KEY (`eqa_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `morphology`
--
ALTER TABLE `morphology`
  ADD PRIMARY KEY (`morphology_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmi`
--
ALTER TABLE `pmi`
  ADD PRIMARY KEY (`pmi_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `scope`
--
ALTER TABLE `scope`
  ADD PRIMARY KEY (`scope_id`);

--
-- Indexes for table `social_comment`
--
ALTER TABLE `social_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `social_topic`
--
ALTER TABLE `social_topic`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `specimen`
--
ALTER TABLE `specimen`
  ADD PRIMARY KEY (`specimen_id`);

--
-- Indexes for table `staining`
--
ALTER TABLE `staining`
  ADD PRIMARY KEY (`staining_id`);

--
-- Indexes for table `stainingsub`
--
ALTER TABLE `stainingsub`
  ADD PRIMARY KEY (`stainingsub_id`);

--
-- Indexes for table `tb_case`
--
ALTER TABLE `tb_case`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `tb_impressive`
--
ALTER TABLE `tb_impressive`
  ADD PRIMARY KEY (`impressive_id`);

--
-- Indexes for table `tb_mainpart`
--
ALTER TABLE `tb_mainpart`
  ADD PRIMARY KEY (`mainpart_id`);

--
-- Indexes for table `tb_mainpartsub`
--
ALTER TABLE `tb_mainpartsub`
  ADD PRIMARY KEY (`mainpartsub_id`);

--
-- Indexes for table `tb_mainproblem`
--
ALTER TABLE `tb_mainproblem`
  ADD PRIMARY KEY (`mainproblem_id`);

--
-- Indexes for table `tb_mainsubgl`
--
ALTER TABLE `tb_mainsubgl`
  ADD PRIMARY KEY (`mainsubgl_id`);

--
-- Indexes for table `tb_procedure`
--
ALTER TABLE `tb_procedure`
  ADD PRIMARY KEY (`procedure_id`);

--
-- Indexes for table `tb_procedure_sub`
--
ALTER TABLE `tb_procedure_sub`
  ADD PRIMARY KEY (`psub_id`);

--
-- Indexes for table `tb_wb`
--
ALTER TABLE `tb_wb`
  ADD PRIMARY KEY (`wb_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessory`
--
ALTER TABLE `accessory`
  MODIFY `accessory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `accessory_com`
--
ALTER TABLE `accessory_com`
  MODIFY `accessorycom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dd_anesthesia`
--
ALTER TABLE `dd_anesthesia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dd_anesthesis`
--
ALTER TABLE `dd_anesthesis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dd_gender`
--
ALTER TABLE `dd_gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dd_indication`
--
ALTER TABLE `dd_indication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dd_national`
--
ALTER TABLE `dd_national`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `dd_prefix`
--
ALTER TABLE `dd_prefix`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dd_rapid`
--
ALTER TABLE `dd_rapid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dd_righttotreatment`
--
ALTER TABLE `dd_righttotreatment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dd_room`
--
ALTER TABLE `dd_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eqa`
--
ALTER TABLE `eqa`
  MODIFY `eqa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hospital_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `morphology`
--
ALTER TABLE `morphology`
  MODIFY `morphology_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `pmi`
--
ALTER TABLE `pmi`
  MODIFY `pmi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `scope`
--
ALTER TABLE `scope`
  MODIFY `scope_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `social_comment`
--
ALTER TABLE `social_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `social_topic`
--
ALTER TABLE `social_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `specimen`
--
ALTER TABLE `specimen`
  MODIFY `specimen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staining`
--
ALTER TABLE `staining`
  MODIFY `staining_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `stainingsub`
--
ALTER TABLE `stainingsub`
  MODIFY `stainingsub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tb_case`
--
ALTER TABLE `tb_case`
  MODIFY `case_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `tb_impressive`
--
ALTER TABLE `tb_impressive`
  MODIFY `impressive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_mainpart`
--
ALTER TABLE `tb_mainpart`
  MODIFY `mainpart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_mainpartsub`
--
ALTER TABLE `tb_mainpartsub`
  MODIFY `mainpartsub_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'aaaa', AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_mainproblem`
--
ALTER TABLE `tb_mainproblem`
  MODIFY `mainproblem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tb_mainsubgl`
--
ALTER TABLE `tb_mainsubgl`
  MODIFY `mainsubgl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `tb_procedure`
--
ALTER TABLE `tb_procedure`
  MODIFY `procedure_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_procedure_sub`
--
ALTER TABLE `tb_procedure_sub`
  MODIFY `psub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_wb`
--
ALTER TABLE `tb_wb`
  MODIFY `wb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
