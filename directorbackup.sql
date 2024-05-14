-- --------------------------------------------------------
-- Servidor:                     localhost
-- Versão do servidor:           10.3.39-MariaDB-1:10.3.39+maria~ubu2004 - mariadb.org binary distribution
-- OS do Servidor:               debian-linux-gnu
-- HeidiSQL Versão:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Copiando estrutura para tabela sakila.director
DROP TABLE IF EXISTS `director`;
CREATE TABLE IF NOT EXISTS `director` (
  `director_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `birth_year` year(4) DEFAULT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=465458 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela sakila.director: ~30 rows (aproximadamente)
REPLACE INTO `director` (`director_id`, `first_name`, `last_name`, `birth_year`) VALUES
	(1, 'Steven', 'Spielberg', '1950'),
	(2, 'Quentin', 'Tarantino', '1961'),
	(3, 'Christopher', 'Nolan', '1970'),
	(4, 'Martin', 'Scorsese', '1942'),
	(5, 'Alfred', 'Hitchcock', '1929'),
	(6, 'Akira', 'Kurosawa', '1910'),
	(7, 'Ingmar', 'Bergman', '1918'),
	(8, 'Stanley', 'Kubrick', '1928'),
	(9, 'Woody', 'Allen', '1935'),
	(10, 'David', 'Lynch', '1946'),
	(11, 'Pedro', 'Almodóvar', '1951'),
	(12, 'Michael', 'Haneke', '1952'),
	(13, 'Luc', 'Besson', '1959'),
	(14, 'Tim', 'Burton', '1958'),
	(15, 'Wes', 'Anderson', '1969'),
	(16, 'Coen', 'Brother', '1950'),
	(17, 'Boen', 'Brother', '1950'),
	(18, 'Christopher', 'Guest', '1948'),
	(19, 'Rob', 'Reiner', '1966'),
	(20, 'Ron', 'Howard', '1954'),
	(21, 'Spike', 'Lee', '1957'),
	(22, 'Steven', 'Soderbergh', '1958'),
	(23, 'Clint', 'Eastwood', '1930'),
	(24, 'John', 'Carpenter', '1948'),
	(25, 'Francis', 'Ford Coppola', '1939'),
	(26, 'Federico', 'Fellini', '1920'),
	(27, 'Guillermo', 'del Toro', '1964'),
	(28, 'Altamiro ', 'Santiago', '1950'),
	(29, 'M. Night', 'Shyamalan', '1965'),
	(30, 'David', 'Fincher', '1962');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
