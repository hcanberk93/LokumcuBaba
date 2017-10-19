-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                5.7.19-log - MySQL Community Server (GPL)
-- Sunucu İşletim Sistemi:       Win32
-- HeidiSQL Sürüm:               9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- lokumcubabadb için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `lokumcubabadb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `lokumcubabadb`;

-- tablo yapısı dökülüyor lokumcubabadb.basvuru
CREATE TABLE IF NOT EXISTS `basvuru` (
  `BasvuruID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `AdSoyad` varchar(70) NOT NULL,
  `TCKimlik` varchar(11) NOT NULL,
  `Adres` varchar(200) NOT NULL,
  `Telefon` varchar(50) NOT NULL,
  `EPosta` varchar(50) NOT NULL,
  `DTarihi` date NOT NULL,
  `PTicaret` tinyint(4) NOT NULL,
  `TSebep` varchar(50) NOT NULL,
  `TSehir` varchar(20) NOT NULL,
  `TIlce` varchar(40) NOT NULL,
  `TSemt` varchar(40) NOT NULL,
  `YMiktar` int(11) NOT NULL,
  `Ilave` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`BasvuruID`),
  UNIQUE KEY `BasvuruID` (`BasvuruID`),
  UNIQUE KEY `TCKimlik` (`TCKimlik`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- lokumcubabadb.basvuru: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `basvuru`;
/*!40000 ALTER TABLE `basvuru` DISABLE KEYS */;
/*!40000 ALTER TABLE `basvuru` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
