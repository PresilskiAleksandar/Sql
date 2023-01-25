-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for presilski
CREATE DATABASE IF NOT EXISTS `presilski` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `presilski`;

-- Dumping structure for table presilski.marki
CREATE TABLE IF NOT EXISTS `marki` (
  `marki_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `marki_name` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(35) NOT NULL DEFAULT '',
  `eu` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`marki_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table presilski.marki: ~24 rows (approximately)
INSERT INTO `marki` (`marki_id`, `marki_name`, `country`, `eu`) VALUES
	(1, 'AUDI', 'D', 'Y'),
	(2, 'Honda', 'Jap', 'N'),
	(3, 'skoda', 'cz', 'Y'),
	(4, 'Opel', 'D', 'Y'),
	(5, 'BMW', 'H', 'Y'),
	(6, 'honda', 'jap', 'N'),
	(8, 'BMW', 'D', 'Y'),
	(9, 'Audi', 'D', 'Y'),
	(10, 'Skoda', 'CZ', 'Y'),
	(11, 'Toyota', 'Jap', 'N'),
	(12, 'Audi', 'D', 'Y'),
	(13, 'Audi', 'D', 'Y'),
	(14, 'Audi', 'H', 'Y'),
	(16, 'BMW', 'H', 'Y'),
	(17, 'OPEl', 'H', 'Y'),
	(18, 'MERCEDES', 'H', 'Y'),
	(19, 'MERCEDES', 'H', 'Y'),
	(20, 'Toyota', 'US', 'N'),
	(21, 'Mitsubishi', 'Jap', 'N'),
	(22, 'Audi', 'MKD', 'N'),
	(23, 'BMW', 'MKD', 'N'),
	(24, 'BMW', 'MKD', 'Y'),
	(26, 'Audi', 'MKD', 'N'),
	(28, 'Audi', 'MKD', 'N');

-- Dumping structure for table presilski.modeli
CREATE TABLE IF NOT EXISTS `modeli` (
  `modeli_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `modeli_name` varchar(30) NOT NULL,
  `price` smallint(5) unsigned NOT NULL DEFAULT 0,
  `color` varchar(30) NOT NULL,
  `marki_id` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`modeli_id`),
  KEY `FK_marki_id` (`marki_id`),
  CONSTRAINT `FK_marki_id` FOREIGN KEY (`marki_id`) REFERENCES `marki` (`marki_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table presilski.modeli: ~58 rows (approximately)
INSERT INTO `modeli` (`modeli_id`, `modeli_name`, `price`, `color`, `marki_id`) VALUES
	(1, 'A4', 40000, '#2231fa', 1),
	(2, 'A6', 60000, '#2231fb', 1),
	(3, 'a3', 30000, '#2233ff', 1),
	(4, '320', 35000, '#98787A', 5),
	(9, 'Insignia', 35000, '#98787A', 4),
	(10, 'Astra', 20000, '#AA00FF', 4),
	(11, 'Corsa', 18000, '#AA00FF', 17),
	(12, 'Corsa', 18000, '#AA00FF', 17),
	(13, 'oktavia', 25000, '#000000', 10),
	(14, 'fabia', 19000, '#AAff00', 10),
	(15, 'superb', 36000, '#AA3434', 10),
	(16, 'avencis', 40000, '#22aa44', 11),
	(17, 'civic', 29000, '#AAff00', 2),
	(18, 'kodiak', 36000, '#AA3434', 10),
	(19, 'corola', 40000, '#22aa44', 11),
	(20, 'c200', 45000, '#AA34BA', 19),
	(21, 'S2000', 65535, '#AAff00', 19),
	(22, 'X1', 30000, '#224332', 5),
	(23, 'X2', 35000, '#2443FF', 5),
	(24, 'X3', 40000, '#2144AA', 5),
	(25, 'X4', 40000, '#224332', 5),
	(26, 'X5', 55000, '#2443FF', 5),
	(27, 'X6', 60000, '#2144AA', 5),
	(28, 'A2', 25552, '#BBAABB', 1),
	(29, 'A3', 32234, '#224422', 1),
	(30, 'A5', 43330, '#BB4422', 1),
	(31, 'A7', 62000, '#FF00FF', 1),
	(32, 'A8', 60000, '#FF00FF', 1),
	(33, 'X4', 40000, '#224332', 8),
	(34, 'X5', 55000, '#2443FF', 8),
	(35, 'X6', 60000, '#2144AA', 8),
	(36, 'A2', 25552, '#BBAABB', 1),
	(37, 'A3', 32234, '#224422', 1),
	(38, 'A5', 43330, '#BB4422', 1),
	(39, 'A7', 62000, '#000000', 1),
	(40, 'A8', 60000, '#FF00FF', 1),
	(41, 'X4', 40000, '#224332', 8),
	(42, 'X5', 55000, '#2443FF', 8),
	(43, 'X6', 60000, '#2144AA', 8),
	(44, 'A2', 25552, '#BBAABB', 1),
	(45, 'A3', 32234, '#000000', 1),
	(46, 'A5', 43330, '#BB4422', 1),
	(47, 'A7', 62000, '#FF00FF', 1),
	(48, 'A8', 60000, '#FF00FF', 1),
	(49, 'X4', 40000, '#000000', 8),
	(50, 'E220', 50000, '#AA22BB', 19),
	(51, 'Lancer', 28000, 'RED', 21),
	(52, 'Lancer', 28000, 'Black', 21),
	(53, 'Lancer', 28000, 'White', 21),
	(54, 'A6', 58000, 'White', 1),
	(55, 'A5', 58000, 'White', 1),
	(56, 'A4', 48000, 'White', 1),
	(57, 'A4', 48000, 'RED', 1),
	(58, 'A4', 48000, 'Black', 1),
	(59, 'BMW', 32323, 'RED', 16),
	(60, 'BMW', 32323, 'RED', 16),
	(61, 'BMW', 32323, 'RED', 16),
	(62, 'A5', 55999, 'Red', 9);

-- Dumping structure for table presilski.vraboteni
CREATE TABLE IF NOT EXISTS `vraboteni` (
  `vr_id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `ime` varchar(25) NOT NULL,
  `prezime` varchar(35) NOT NULL,
  `godini` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`vr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table presilski.vraboteni: ~14 rows (approximately)
INSERT INTO `vraboteni` (`vr_id`, `ime`, `prezime`, `godini`) VALUES
	(1, 'Aleksandar', 'Presilski', 32),
	(2, 'Menche', 'Presilski', 31),
	(3, 'Ana', 'Presilski', 2),
	(4, 'Mateo', 'Presilski', 1),
	(5, 'Vasko', 'Presilski', 66),
	(6, 'Cveta', 'Presilski', 64),
	(7, 'Kire', 'Presilski', 35),
	(8, 'Valentina', 'Petrovska', 56),
	(9, 'Maricnho', 'Petrovski', 61),
	(10, 'Natalija', 'Petrovska', 35),
	(11, 'Marija', 'Vukadinovic', 38),
	(12, 'Anastasija', 'Popovska', 53),
	(13, 'Stefanija', 'Popovska', 23),
	(14, 'Mihail', 'Popovski', 45);

-- Dumping structure for procedure presilski._count_groupby_fabriki
DELIMITER //
CREATE PROCEDURE `_count_groupby_fabriki`(
	IN `Limit3` TINYINT(1)
)
BEGIN
SELECT country, COUNT(marki_id) AS Br_na_fabriki
FROM marki
GROUP BY country 
ORDER BY br_na_fabriki DESC, country ASC 
LIMIT LIMIT3;
END//
DELIMITER ;

-- Dumping structure for procedure presilski._delete_markiID
DELIMITER //
CREATE PROCEDURE `_delete_markiID`(
	IN `marki_id_param` TINYINT(1)
)
BEGIN
DELETE FROM marki
WHERE marki_id= marki_id_param;
END//
DELIMITER ;

-- Dumping structure for procedure presilski._insert_marki
DELIMITER //
CREATE PROCEDURE `_insert_marki`(
	IN `marki_name_param` VARCHAR(50),
	IN `country_param` VARCHAR(35),
	IN `eu_param` TINYINT(1)
)
BEGIN
INSERT INTO marki (marki_name,country,eu)
VALUES (marki_name_param,country_param,eu_param);
END//
DELIMITER ;

-- Dumping structure for procedure presilski._insert_modeli
DELIMITER //
CREATE PROCEDURE `_insert_modeli`(
	IN `modeli_name_param` VARCHAR(30),
	IN `Price_param` SMALLINT(5),
	IN `color_param` VARCHAR(30)
)
BEGIN
INSERt into modeli (modeli_name,price,color)
values (modeli_name_param,price_param,color_param);
END//
DELIMITER ;

-- Dumping structure for procedure presilski._select_BetW_price
DELIMITER //
CREATE PROCEDURE `_select_BetW_price`(
	IN `price_param1` SMALLINT(5),
	IN `price_param2` SMALLINT(5)
)
BEGIN
SELECT * FROM modeli 
WHERE price BETWEEN price_param1 AND price_param2;
END//
DELIMITER ;

-- Dumping structure for procedure presilski._select_color
DELIMITER //
CREATE PROCEDURE `_select_color`(
	IN `param_color` VARCHAR(25)
)
BEGIN
SELECT * FROM modeli WHERE color LIKE param_color;
END//
DELIMITER ;

-- Dumping structure for procedure presilski._select_Color_price
DELIMITER //
CREATE PROCEDURE `_select_Color_price`(
	IN `param_color` VARCHAR(30),
	IN `param_price` SMALLINT(5)
)
BEGIN
SELECT * FROM modeli
WHERE color like param_color and price>=param_price;
END//
DELIMITER ;

-- Dumping structure for procedure presilski._select_color_priceBETW
DELIMITER //
CREATE PROCEDURE `_select_color_priceBETW`(
	IN `color_param` VARCHAR(30),
	IN `price_param1` SMALLINT(5),
	IN `price_param2` SMALLINT(5)
)
BEGIN
SELECT * 
FROM modeli
RIGHT JOIN marki
ON modeli.marki_id=marki.marki_id
WHERE modeli.color LIKE color_param AND modeli.price BETWEEN price_param1 AND price_param2;
END//
DELIMITER ;

-- Dumping structure for procedure presilski._select_country
DELIMITER //
CREATE PROCEDURE `_select_country`(
	IN `param_country` VARCHAR(25)
)
BEGIN
Select * 
From marki
WHERE country LIKE param_country;
END//
DELIMITER ;

-- Dumping structure for procedure presilski._select_Country_priceBETW
DELIMITER //
CREATE PROCEDURE `_select_Country_priceBETW`(
	IN `country_param` VARCHAR(35),
	IN `price_param1` SMALLINT(5),
	IN `price_param2` SMALLINT(5)
)
BEGIN
SELECT * 
FROM modeli
Inner JOIN marki
ON modeli.marki_id=marki.marki_id
WHERE marki.country LIKE country_param AND modeli.price BETWEEN price_param1 AND price_param2;
END//
DELIMITER ;

-- Dumping structure for procedure presilski._select_eu
DELIMITER //
CREATE PROCEDURE `_select_eu`(
	IN `param_eu` TINYINT(1)
)
BEGIN
SELECT *
FROM marki
WHERE eu =param_eu;
END//
DELIMITER ;

-- Dumping structure for procedure presilski._select_join_country
DELIMITER //
CREATE PROCEDURE `_select_join_country`(
	IN `country_param` VARCHAR(35)
)
BEGIN
SELECT modeli.*
FROM modeli
INNER JOIN marki
ON modeli.marki_id = marki.marki_id
WHERE marki.country like country_param
ORDER BY modeli.price DESC;
END//
DELIMITER ;

-- Dumping structure for procedure presilski._select_join_eu
DELIMITER //
CREATE PROCEDURE `_select_join_eu`(
	IN `param_eu` ENUM('Y','N')
)
BEGIN
SELECT country,SUM(price) AS Vk_prodazba
FROM modeli
INNER JOIN marki
ON modeli.marki_id=marki.marki_id
WHERE eu LIKE param_eu
GROUP BY country
ORDER BY vk_prodazba DESC
;
END//
DELIMITER ;

-- Dumping structure for procedure presilski._select_marki
DELIMITER //
CREATE PROCEDURE `_select_marki`()
BEGIN
SELECT * FROM marki
ORDER BY marki_name DESC;
END//
DELIMITER ;

-- Dumping structure for procedure presilski._select_marki_by_country
DELIMITER //
CREATE PROCEDURE `_select_marki_by_country`(
	IN `country_param1` VARCHAR(35),
	IN `country_param2` VARCHAR(35)
)
BEGIN
Select * 
From marki
WHERE country LIKE country_param1 or country like country_param2;
END//
DELIMITER ;

-- Dumping structure for procedure presilski._select_MaxPrice
DELIMITER //
CREATE PROCEDURE `_select_MaxPrice`()
BEGIN
Select * 
from modeli
where price =(select max(price)from modeli);
END//
DELIMITER ;

-- Dumping structure for procedure presilski._select_MinPrice
DELIMITER //
CREATE PROCEDURE `_select_MinPrice`()
BEGIN
Select * 
from modeli
where price =(select min(price)from modeli);
END//
DELIMITER ;

-- Dumping structure for procedure presilski._select_modeli
DELIMITER //
CREATE PROCEDURE `_select_modeli`()
BEGIN
SELECT * FROM modeli ;
END//
DELIMITER ;

-- Dumping structure for procedure presilski._select_Prvabukva
DELIMITER //
CREATE PROCEDURE `_select_Prvabukva`(
	IN `param_prvabukva` VARCHAR(30)
)
BEGIN
Select * from modeli where modeli_name LIKE param_prvabukva;
END//
DELIMITER ;

-- Dumping structure for procedure presilski._update_marki
DELIMITER //
CREATE PROCEDURE `_update_marki`(
	IN `marki_id_param` TINYINT(1),
	IN `marki_name_param` VARCHAR(50),
	IN `country_param` VARCHAR(35),
	IN `eu_param` TINYINT(1)
)
BEGIN
UPDATE marki
SET 
	marki_name=marki_name_param,
	country=country_param,
	eu=eu_param
WHERE marki_id=marki_id_param;

END//
DELIMITER ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
