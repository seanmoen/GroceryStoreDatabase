<!--
Author:	 Hunter Bowman & Sean Moen
Date:	 2022-12-07
Purpose: Permanently removes an item from the database.
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

  $item = $_GET["item"];
  $store = $_GET["store"];
  mysqli_query($con, "DELETE FROM {$store} WHERE item='{$item}'");
  
  
  echo "<h1>Deleted Item: ". $item. "</h1>";
  
    echo "<form action='store_selector.php' method='get'>
		 <input type='submit' value='Return to Grocery Store'>
		 <input type='hidden' name='store' value='". $store. "'>
		 </form>";
		 
mysqli_close($con);
?>