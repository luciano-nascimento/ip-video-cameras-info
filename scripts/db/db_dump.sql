-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.14 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para all-cameras
CREATE DATABASE IF NOT EXISTS `all-cameras` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `all-cameras`;

-- Copiando estrutura para tabela all-cameras.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela all-cameras.brands: 0 rows
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;

-- Copiando estrutura para tabela all-cameras.cameras_info
CREATE TABLE IF NOT EXISTS `cameras_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(100) NOT NULL DEFAULT '0',
  `onvif_url_stream` varchar(100) DEFAULT '0',
  `rtsp_url_stream_1` varchar(100) DEFAULT '0',
  `rtsp_url_stream_2` varchar(100) DEFAULT '0',
  `http_url_stream` varchar(100) DEFAULT '0',
  `brand` varchar(100) NOT NULL DEFAULT '0',
  `default_user` varchar(100) DEFAULT '0',
  `default_password` varchar(100) DEFAULT '0',
  `deprecated` tinyblob,
  `default_ip_address` varchar(100) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela all-cameras.cameras_info: 0 rows
/*!40000 ALTER TABLE `cameras_info` DISABLE KEYS */;
INSERT INTO `cameras_info` (`id`, `model`, `onvif_url_stream`, `rtsp_url_stream_1`, `rtsp_url_stream_2`, `http_url_stream`, `brand`, `default_user`, `default_password`, `deprecated`, `default_ip_address`) VALUES
	(1, 'alfa1', '0', '0', '0', '0', '0', '0', '0', NULL, '0');
/*!40000 ALTER TABLE `cameras_info` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
