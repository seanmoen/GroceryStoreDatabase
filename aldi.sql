use `grocery_store`;

CREATE TABLE IF NOT EXISTS `aldi` (
  `item` varchar(100) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `category` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `quantity_unit` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `unit_price` int DEFAULT NULL,
  `brand` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `grocery_store`.`aldi`
VALUES ('2% Milk', '379', 'Dairy', '128', 'oz', '2022-12-01', '3', 'Friendly Farms');

INSERT INTO `grocery_store`.`aldi`
VALUES ('Large White Eggs', '279', 'Protein', '12', 'ct', '2022-12-01', '23', 'Goldhen');

INSERT INTO `grocery_store`.`aldi`
VALUES ('White Bread Loaf', '105', 'Bread', '20', 'oz', '2022-12-01', '5', 'L\'oven');

INSERT INTO `grocery_store`.`aldi`
VALUES ('Sweet Cream Unsalted Butter', '329', 'Dairy', '16', 'oz', '2022-12-01', '21', 'Countryside Creamy');

INSERT INTO `grocery_store`.`aldi`
VALUES ('All Purpose Flour', '235', 'Baking', '80', 'oz', '2022-12-01', '3', 'Baker\`s Corner');

INSERT INTO `grocery_store`.`aldi`
VALUES ('Granulated Sugar', '269', 'Baking', '64', 'oz', '2022-12-01', '4', 'Baker\'s Corner');

INSERT INTO `grocery_store`.`aldi`
VALUES ('Ground Beef 85/15', '585', 'Beef', '16', 'oz', '2022-12-01', '37', 'Simply Nature');

INSERT INTO `grocery_store`.`aldi`
VALUES ('Fresh Chicken Breasts', '838', 'Chicken', '34', 'oz', '2022-12-01', '25', 'Kirkwood Fresh');

INSERT INTO `grocery_store`.`aldi`
VALUES ('Boneless Pork Chops', '558', 'Pork', '21', 'oz', '2022-12-01', '429', 'Aldi');
