use `grocery_store`;

CREATE TABLE IF NOT EXISTS `aldi` (
  `item` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `quantity_unit` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `brand` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `grocery_store`.`aldi`
VALUES ('2% Milk', '3.79', 'Dairy', '128', 'oz', '2022-12-01', '0.03', 'Friendly Farms');

INSERT INTO `grocery_store`.`aldi`
VALUES ('Large White Eggs', '2.79', 'Protein', '12', 'ct', '2022-12-01', '0.23', 'Goldhen');

INSERT INTO `grocery_store`.`aldi`
VALUES ('White Bread Loaf', '1.05', 'Bread', '20', 'oz', '2022-12-01', '0.05', 'L\'oven');

INSERT INTO `grocery_store`.`aldi`
VALUES ('Sweet Cream Unsalted Butter', '3.29', 'Dairy', '16', 'oz', '2022-12-01', '0.21', 'Countryside Creamy');

INSERT INTO `grocery_store`.`aldi`
VALUES ('All Purpose Flour', '2.35', 'Baking', '80', 'oz', '2022-12-01', '0.03', 'Baker\`s Corner');

INSERT INTO `grocery_store`.`aldi`
VALUES ('Granulated Sugar', '2.69', 'Baking', '64', 'oz', '2022-12-01', '0.04', 'Baker\'s Corner');

INSERT INTO `grocery_store`.`aldi`
VALUES ('Ground Beef 85/15', '5.85', 'Beef', '16', 'oz', '2022-12-01', '0.37', 'Simply Nature');

INSERT INTO `grocery_store`.`aldi`
VALUES ('Fresh Chicken Breasts', '8.38', 'Chicken', '34', 'oz', '2022-12-01', '0.25', 'Kirkwood Fresh');

INSERT INTO `grocery_store`.`aldi`
VALUES ('Boneless Pork Chops', '5.58', 'Pork', '21', 'oz', '2022-12-01', '0.27', 'Aldi');
