-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-ecommerce`;

CREATE SCHEMA `full-stack-ecommerce`;
USE `full-stack-ecommerce` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Categories
-- -----------------------------------------------------
INSERT INTO product_category(category_name) VALUES ('Decoupage');
INSERT INTO product_category(category_name) VALUES ('Ceramice');
INSERT INTO product_category(category_name) VALUES ('Seturi Creative');
INSERT INTO product_category(category_name) VALUES ('Cadouri');

-- -----------------------------------------------------
-- Decoupage
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('DECOUPAGE-100', 'Servetel Decoupage Floral', 'Servetel hartie 33x33 cm folosit pentru decorare diverselor obiecte prin tehnica decoupage!', 'assets/images/products/decoupage/decoupage-100.jpg', 1, 100, 1.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('DECOUPAGE-101', 'Servetel Decoupage Floral', 'Servetel hartie 33x33 cm folosit pentru decorare diverselor obiecte prin tehnica decoupage!', 'assets/images/products/decoupage/decoupage-101.jpg', 1, 100, 1.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('DECOUPAGE-102', 'Servetel Decoupage Floral', 'Servetel hartie 33x33 cm folosit pentru decorare diverselor obiecte prin tehnica decoupage!', 'assets/images/products/decoupage/decoupage-102.jpg', 1, 100, 1.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('DECOUPAGE-103', 'Servetel Decoupage Floral', 'Servetel hartie 33x33 cm folosit pentru decorare diverselor obiecte prin tehnica decoupage!', 'assets/images/products/decoupage/decoupage-103.jpg', 1, 100, 1.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('DECOUPAGE-104', 'Servetel Decoupage Floral', 'Servetel hartie 33x33 cm folosit pentru decorare diverselor obiecte prin tehnica decoupage!', 'assets/images/products/decoupage/decoupage-104.jpg', 1, 100, 1.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('DECOUPAGE-105', 'Servetel Decoupage Floral', 'Servetel hartie 33x33 cm folosit pentru decorare diverselor obiecte prin tehnica decoupage!', 'assets/images/products/decoupage/decoupage-105.jpg', 1, 100, 1.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('DECOUPAGE-106', 'Servetel Decoupage Lady', 'Servetel hartie 33x33 cm folosit pentru decorare diverselor obiecte prin tehnica decoupage!', 'assets/images/products/decoupage/decoupage-106.jpg', 1, 100, 1.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('DECOUPAGE-107', 'Servetel Decoupage Litle Girl', 'Servetel hartie 33x33 cm folosit pentru decorare diverselor obiecte prin tehnica decoupage!', 'assets/images/products/decoupage/decoupage-107.jpg', 1, 100, 1.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('DECOUPAGE-108', 'Servetel Decoupage Litle Girl', 'Servetel hartie 33x33 cm folosit pentru decorare diverselor obiecte prin tehnica decoupage!', 'assets/images/products/decoupage/decoupage-108.jpg', 1, 100, 1.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('DECOUPAGE-109', 'Servetel Decoupage Litle Friends', 'Servetel hartie 33x33 cm folosit pentru decorare diverselor obiecte prin tehnica decoupage!', 'assets/images/products/decoupage/decoupage-109.jpg', 1, 100, 23.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('DECOUPAGE-110', 'Servetel Decoupage Carpe Diem', 'Servetel hartie 33x33 cm folosit pentru decorare diverselor obiecte prin tehnica decoupage!', 'assets/images/products/decoupage/decoupage-110.jpg', 1, 100, 1.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('DECOUPAGE-111', 'Servetel Decoupage Friends', 'Servetel hartie 33x33 cm folosit pentru decorare diverselor obiecte prin tehnica decoupage!', 'assets/images/products/decoupage/decoupage-111.jpg', 1, 100, 1.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('DECOUPAGE-112', 'Servetel Decoupage Turnul Eiffel', 'Servetel hartie 33x33 cm folosit pentru decorare diverselor obiecte prin tehnica decoupage!', 'assets/images/products/decoupage/decoupage-112.jpg', 1, 100, 1.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('DECOUPAGE-113', 'Servetel Decoupage Love', 'Servetel hartie 33x33 cm folosit pentru decorare diverselor obiecte prin tehnica decoupage!', 'assets/images/products/decoupage/decoupage-113.jpg', 1, 100, 1.99, 1, NOW());

-- -----------------------------------------------------
-- Ceramice
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('CERAMICS-100', 'Vas ceramic Cizma', 'Vas ceramic Cizma pentru decoratiuni florale si nu numai. Dimensiuni 30x25 cm!', 'assets/images/products/ceramics/ceramics-100.jpg', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('CERAMICS-101', 'Vas ceramic Scoica', 'Vas ceramic sub forma de Scoica. Dimensiuni 25 x 15 cm!', 'assets/images/products/ceramics/ceramics-101.jpg', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('CERAMICS-102', 'Vas ceramic oval', 'Vas ceramic oval, folosit pentru decoratiuni. Dimensiuni 15 x 27 cm!', 'assets/images/products/ceramics/ceramics-102.jpg', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('CERAMICS-103', 'Set vase ceramice Hearts', 'Set ornamente ceramice sub forma de inimioare. Dimensiuni 10 x 10cm!', 'assets/images/products/ceramics/ceramics-103.jpg', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('CERAMICS-104', 'Vas ceramic Felinar', 'Vas ceramic felinar, cu loc pentru lumanare. Diametru 10 cm!', 'assets/images/products/ceramics/ceramics-104.jpg', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('CERAMICS-105', 'Pusculita ceramica Pig', 'Pusculita ceramica Porcusor, cu orificiu de eliberare. Dimensiuni 20 x 18 cm!', 'assets/images/products/ceramics/ceramics-105.jpg', 1, 100, 18.99, 2, NOW());

-- -----------------------------------------------------
-- Seturi Creative
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('CREATIVESETS-100', 'Set creativ Bratara Fetru', 'Set hobby - bratara - Te infloresc - Daco, contine toate materialele necesare pentru a crea o bratara : flori, margele, panglica, inchizatoare, instructiuni!', 'assets/images/products/creativesets/creativesets-100.jpg', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('CREATIVESETS-101', 'Set pene decorative', 'Set 100gr. pene asortate, colorate - Heyda, 4-20cm.', 'assets/images/products/creativesets/creativesets-101.jpg', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('CREATIVESETS-102', 'Set pictura pe numere', 'Set pictura pe numere At the muses house. Setul contine o panza din bumbac pe sasiu, o schita impartita pe sectiuni cu numere imprimata pe panza; culori acrilice numerotate, corespunzatoare zonelor indicate; pensule; agatatori pentru tablou, o pagina cu instructiuni (schita desenului de pe panza).Dimensiune: 50 x 40 cm.', 'assets/images/products/creativesets/creativesets-102.jpg', 1, 100, 57.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('CREATIVESETS-103', 'Set pictura pe numere', 'Set pictura pe numere Birds of paradise. In set vei gasi toate materialele de care nevoie pentru a crea o pictura. Desenul si numerele au fost deja aplicate pe panza, aratand exact zonele unde trebuie aplicate culorile potrivite.', 'assets/images/products/creativesets/creativesets-103.jpg', 1, 100, 57.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('CREATIVESETS-104', 'Set pictura pe numere', 'Set pictura pe numere Traveler.Setul contine o panza din bumbac pe sasiu de lemn, o schita impartita pe sectiuni cu numere imprimata pe panza; culori acrilice numerotate, corespunzatoare zonelor indicate; pensule; agatatori pentru tablou, o pagina cu instructiuni (schita desenului de pe panza).Dimensiune aproximativa: 50 x 40 cm', 'assets/images/products/creativesets/creativesets-104.jpg', 1, 100, 67.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('CREATIVESETS-105', 'Set felicitare Disney', 'Kit felicitare Disney - Minnie Mouse - ANT-CH', 'assets/images/products/creativesets/creativesets-105.jpg', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('CREATIVESETS-106', 'Set felicitare creativa', 'Set Creativity pentru Crearea Hartiei Faber-Castell. Invata cum se fabrica hartia si cat de importanta este reciclarea acesteia. Creeaza produse precum: felicitari, ambalaje pentru cadouri, folosind perforatoare, foarfeci, sabloane si alte unelte pentru fabricarea hartiei. Varsta: 7+', 'assets/images/products/creativesets/creativesets-106.jpg', 1, 100, 27.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('CREATIVESETS-107', 'Set casuta iepuras din lemn', 'Set creativ din lemn,casuta cu iepuras, 7 piese - ANT-CH', 'assets/images/products/creativesets/creativesets-107.jpg', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('CREATIVESETS-108', 'Set creativ bratari', 'Set Creativity Bentite si Bratari - Faber-Castell. Creeaza minim 16 accesorii, perfecte pentru orice stil al garderobei tale: sport, stralucitor sau casual. Setul include: 4.5m bentita elastica in dispenser, foarfeci, bratari, margele si arcuri. Decoreaza materialul folosind stampile pentru a-ti personaliza stilul.', 'assets/images/products/creativesets/creativesets-108.jpg', 1, 100, 34.99, 3, NOW());

-- -----------------------------------------------------
-- Cadouri
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HOMEGIFTS-100', 'Placuta Lavanda', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/homegifts/homegifts-100.jpg', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HOMEGIFTS-101', 'Set cadou pentru desfacerea sticlei de vin', 'Cutie fabricata din lemn si accesorii din otel inoxidabil.Include, Dop metalic, Inel metalic antipicurare, Tirbuson cu taietor de sigilii si desfacator de sticle, Picurator metalic.', 'assets/images/products/homegifts/homegifts-101.jpg', 1, 100, 96.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HOMEGIFTS-102', 'Set cadou ceai', 'Set cadou ceai. Contine: 2 cesti de ceai si cutie decorativa, model floral!', 'assets/images/products/homegifts/homegifts-102.jpg', 1, 100, 36.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HOMEGIFTS-103', 'Suport sticle vin', 'Suport metalic pentru depozitarea a 7 sticle de vin!', 'assets/images/products/homegifts/homegifts-103.jpg', 1, 100, 76.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HOMEGIFTS-104', 'Cufar decorativ', 'Cufar decor 37x26x30 cm!', 'assets/images/products/homegifts/homegifts-104.jpg', 1, 100, 37.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HOMEGIFTS-105', 'Suport servetele Lavanda', 'Suport ceramic servetele model lavanda!', 'assets/images/products/homegifts/homegifts-105.jpg', 1, 100, 15.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HOMEGIFTS-106', 'Recipient zahar Lavanda', 'Recipient ceramic pentru zahar. Model decorativ lavanda!', 'assets/images/products/homegifts/homegifts-106.jpg', 1, 100, 14.99, 4, NOW());

