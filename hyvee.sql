use `grocery_store`;

CREATE TABLE IF NOT EXISTS `hyvee` (
  `item` varchar(100) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `category` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `quantity_unit` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `unit_price` int DEFAULT NULL,
  `brand` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `grocery_store`.`hyvee`
VALUES ('2% Milk', '332', 'Dairy', '128', 'oz', '2022-12-01', '3', 'That\'s Smart!');

INSERT INTO `grocery_store`.`hyvee`
VALUES ('Large White Eggs', '399', 'Protein', '12', 'ct', '2022-12-01', '33', 'Farmers Hen House');

INSERT INTO `grocery_store`.`hyvee`
VALUES ('White Bread Loaf', '99', 'Bread', '20', 'oz', '2022-12-01', '5', 'Hy-Vee');

INSERT INTO `grocery_store`.`hyvee`
VALUES ('Sweet Cream Unsalted Butter', '499', 'Dairy', '16', 'oz', '2022-12-01', '31', 'Hy-Vee');

INSERT INTO `grocery_store`.`hyvee`
VALUES ('All Purpose Flour', '349', 'Baking', '80', 'oz', '2022-12-01', '4', 'Hy-Vee');

INSERT INTO `grocery_store`.`hyvee`
VALUES ('Granulated Sugar', '249', 'Baking', '64', 'oz', '2022-12-01', '4', 'That\'s Smart!');

INSERT INTO `grocery_store`.`hyvee`
VALUES ('Ground Beef 85/15', '1099', 'Beef', '16', 'oz', '2022-12-01', '69', 'Hy-Vee');

INSERT INTO `grocery_store`.`hyvee`
VALUES ('Fresh Chicken Breasts', '998', 'Chicken', '32', 'oz', '2022-12-01', '31', 'Hy-Vee');

INSERT INTO `grocery_store`.`aldi`
VALUES ('Boneless Pork Chops', '1000', 'Pork', '40', 'oz', '2022-12-01', '25', 'Aldi');




