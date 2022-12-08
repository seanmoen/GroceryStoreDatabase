<!--
Author:	 Hunter Bowman & Sean Moen
Date:	 2022-12-07
Purpose: Commits a new item to the database.
-->

<html>
<link rel="stylesheet" href="style.css">
</html>

<?php
$host='localhost';
$name ='root';
$pwd='123456';
$db='grocery_store';
$con=mysqli_connect($host,$name,$pwd) or die("connection failed");
mysqli_select_db($con, $db) or die("db selection failed");

  $store = $_GET["store"];
  $item = $_GET["item"];
  $price = $_GET["price"];
  $category = $_GET["category"];
  $quantity = $_GET["quantity"];
  $unit = $_GET["quantity_unit"];
  $date = $_GET["date"];
  $unit_price = $price / $quantity;
  $unit_price = number_format($unit_price, 2);
  $brand = $_GET["brand"];
  
  mysqli_query($con, "INSERT INTO {$store} VALUES ('{$item}', '{$price}', '{$category}', '{$quantity}', '{$unit}', '{$date}', '{$unit_price}', '{$brand}')");
  
  echo "<header>Added Item: ". $item. "</header>";
  
    echo "<form action='store_selector.php' method='get'>
		 <input type='submit' value='Return to Grocery Store'>
		 <input type='hidden' name='store' value='". $store. "'>
		 </form>";
		 
mysqli_close($con);
?>