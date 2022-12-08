<!--
Author:	 Hunter Bowman & Sean Moen
Date:	 2022-12-07
Purpose: Takes input for adding a new item to the database.
-->

<?php 
	$store = $_GET["store"];
?>

<html>
<link rel="stylesheet" href="style.css">
	<title>Add a New Entry</title>
	<h1>Add a New Entry</h1>
	
<hr>
<table border = '2'; style= "font-size:30px">
<tr>
<th>Item</th>
<th>Price </th>
<th>Category</th>
<th>Quantity</th>
<th>Unit</th>
<th>Brand</th>
</tr>
	<form action="./commit.php" method="get">
		<?php
		echo "<input type='hidden' name='store' value='". $store. "'>";
		?>
		<tr>
		<td><input type='text' id='item' name='item'></td>
		<td><input type='text' id='price' name='price'><br>
		<td><input type='text' id='category' name='category'><br>
		<td><input type='text' id='quantity' name='quantity'><br>
		<td><input type='text' id='quantity_unit' name='quantity_unit'><br>
		<?php
		echo "<input type='hidden' name='date' value='". date("Y-m-d"). "'>";
		?>
		<td><input type='text' id='brand' name='brand'>
		</tr>
		</table>
		<br>
		<input type='submit' value='Submit'>
	</form>
</html>