use `grocery_store`;

CREATE TABLE IF NOT EXISTS `walmart` (
  `item` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `quantity_unit` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `brand` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `grocery_store`.`walmart`
VALUES ('Large White Eggs', '2.92', 'Protein', '12', 'ct', '2022-12-01', '0.24', 'Great Value');

INSERT INTO `grocery_store`.`walmart`
VALUES ('White Bread Loaf', '1.11', 'Bread', '20', 'oz', '2022-12-01', '0.06', 'Great Value');

INSERT INTO `grocery_store`.`walmart`
VALUES ('Sweet Cream Unsalted Butter', '4.48', 'Dairy', '16', 'oz', '2022-12-01', '0.28', 'Great Value');

INSERT INTO `grocery_store`.`walmart`
VALUES ('All Purpose Flour', '8.98', 'Baking', '80', 'oz', '2022-12-01', '0.02', 'Great Value');

INSERT INTO `grocery_store`.`walmart`
VALUES ('Pure Granulated Sugar', '2.84', 'Baking', '64', 'oz', '2022-12-01', '0.04', 'Great Value');

INSERT INTO `grocery_store`.`walmart`
VALUES ('Ground Beef 80/20', '3.98', 'Beef', '16', 'oz', '2022-12-01', '0.25', 'Great Value');

INSERT INTO `grocery_store`.`walmart`
VALUES ('Chicken Breasts', '14.92', 'Chicken', '32', 'oz', '2022-12-01', '0.18', 'Great Value');

INSERT INTO `grocery_store`.`walmart`
VALUES ('Boneless Pork Loin Chops', '8.52', 'Pork', '40', 'oz', '2022-12-01', '0.36', 'Great Value');




