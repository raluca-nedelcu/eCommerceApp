USE `full-stack-ecommerce`;

SET foreign_key_checks = 0;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` smallint unsigned NOT NULL,
  `code` varchar(2) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

--
-- Data for table `country`
--

INSERT INTO `country` VALUES 
(1,'RO','Romania');

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `country_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_country` (`country_id`),
  CONSTRAINT `fk_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` VALUES 
(1,'Bucuresti',1),
(2,'Alba',1),
(3,'Arad',1),
(4,'Arges',1),
(5,'Bacau',1),
(6,'Bihor',1),
(7,'Bistrita-Nasaud',1),
(8,'Botosani',1),
(9,'Brasov',1),
(10,'Braila',1),
(11,'Buzau',1),
(12,'Caras-Severin',1),
(13,'Calarasi',1),
(14,'Cluj',1),
(15,'Covasna',1),
(16,'Dambovita',1),
(17,'Dolj',1),
(18,'Galati',1),
(19,'Giurgiu',1),
(20,'Gorj',1),
(21,'Harghita',1),
(22,'Hunedoara',1),
(23,'Ialomita',1),
(24,'Iasi',1),
(25,'Ilfov',1),
(26,'Maramures',1),
(27,'Mehedinti',1),
(28,'Mures',1),
(29,'Neamt',1),
(30,'Olt',1),
(31,'Prahova',1),
(32,'Satu Mare',1),
(33,'Salaj',1),
(34,'Sibiu',1),
(35,'Suceava',1),
(36,'Teleorman',1),
(37,'Timis',1),
(38,'Tulcea',1),
(39,'Valcea',1),
(40,'Vaslui',1),
(41,'Vrancea',1);

SET foreign_key_checks = 1;