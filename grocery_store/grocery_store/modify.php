<!--
Author:	 Hunter Bowman & Sean Moen
Date:	 2022-12-07
Purpose: Takes input for modification or removal of items from the database.
-->

<?php
$host='localhost';
$name ='root';
$pwd='Earth3030!';
$db='grocery_store';
$con=mysqli_connect($host,$name,$pwd) or die("connection failed");
mysqli_select_db($con, $db) or die("db selection failed");

  $item = $_GET["item"];
  $store = $_GET["store"];
  $result=mysqli_query($con, "SELECT * FROM {$store} WHERE item='{$item}'");
  $row=mysqli_fetch_assoc($result);
 ?>
<html> 
<link rel='stylesheet' href='style.css'>
<title>Modify Entry</title>
<h1>Modify Entry</h1>

<hr>
<table border = '2'; style= "font-size:30px">
<?php
echo "<form action='delete.php' method='get'>
		 <input type='submit' value='Remove Entry'>
		 <input type='hidden' name='store' value='". $store. "'>
		 <input type='hidden' name='item' value='". $item. "'>
		 </form>";
?>
<tr>
<th>Item</th>
<th>Price </th>
<th>Category</th>
<th>Quantity</th>
<th>Unit</th>
<th>Brand</th>
</html>
<?php
  echo "<form action='./update.php'>
		<input type='hidden' name='store' value='". $store. "'>
		<tr>
		<td><input type='text' id='item' name='item' value='". $row["item"]. "'></td>
		<td><input type='text' id='price' name='price' value='". $row["price"]. "'></td>
		<td><input type='text' id='category' name='category' value='". $row["category"]. "'></td>
		<td><input type='text' id='quantity' name='quantity' value='". $row["quantity"]. "'></td>
		<td><input type='text' id='quantity_unit' name='quantity_unit' value='". $row["quantity_unit"]. "'></td>
		<input type='hidden' name='date' value='". date("Y-m-d"). "'>
		<td><input type='text' id='brand' name='brand' value='". $row["brand"]. "'></td><br><br>
		</tr>
		</table>
		<br>
		<input type='submit' value='Submit'>";
  echo "</form>";
  
		 
mysqli_close($con);
?>