use `grocery_store`;

CREATE TABLE IF NOT EXISTS `hyvee` (
  `item` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `quantity_unit` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `brand` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `grocery_store`.`hyvee`
VALUES ('2% Milk', '3.32', 'Dairy', '128', 'oz', '2022-12-01', '0.03', 'That\'s Smart!');

INSERT INTO `grocery_store`.`hyvee`
VALUES ('Large White Eggs', '3.99', 'Protein', '12', 'ct', '2022-12-01', '0.33', 'Farmers Hen House');

INSERT INTO `grocery_store`.`hyvee`
VALUES ('White Bread Loaf', '0.99', 'Bread', '20', 'oz', '2022-12-01', '0.05', 'Hy-Vee');

INSERT INTO `grocery_store`.`hyvee`
VALUES ('Sweet Cream Unsalted Butter', '4.99', 'Dairy', '16', 'oz', '2022-12-01', '0.31', 'Hy-Vee');

INSERT INTO `grocery_store`.`hyvee`
VALUES ('All Purpose Flour', '3.49', 'Baking', '80', 'oz', '2022-12-01', '0.04', 'Hy-Vee');

INSERT INTO `grocery_store`.`hyvee`
VALUES ('Granulated Sugar', '2.49', 'Baking', '64', 'oz', '2022-12-01', '0.04', 'That\'s Smart!');

INSERT INTO `grocery_store`.`hyvee`
VALUES ('Ground Beef 85/15', '10.99', 'Beef', '16', 'oz', '2022-12-01', '0.69', 'Hy-Vee');

INSERT INTO `grocery_store`.`hyvee`
VALUES ('Fresh Chicken Breasts', '9.98', 'Chicken', '32', 'oz', '2022-12-01', '0.31', 'Hy-Vee');

INSERT INTO `grocery_store`.`hyvee`
VALUES ('Boneless Pork Chops', '10.00', 'Pork', '40', 'oz', '2022-12-01', '0.25', 'Hy-Vee');




