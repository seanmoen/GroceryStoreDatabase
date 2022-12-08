<!--
Author:	 Hunter Bowman & Sean Moen
Date:	 2022-12-07
Purpose: Displays the database for the selected table, serves as a home page for modifying the table.
-->

<?php
$host='localhost';
$name ='root';
$pwd='Earth3030!';
$db='grocery_store';
$con=mysqli_connect($host,$name,$pwd) or die("connection failed");
mysqli_select_db($con, $db) or die("db selection failed");

  $store = $_GET["store"];
  $result=mysqli_query($con, "SELECT * FROM {$store}");
?>
 
<html>
<head>
<link rel="stylesheet" href="style.css">
<title><?php echo $store?> Store Table </title>
</head>
<body>
<h1><?php echo $store?> Items</h1>

<hr>
<table border = '2'; style= "font-size:30px">
<tr>
<th>Item</th>
<th>Price </th>
<th>Category</th>
<th>Quantity</th>
<th>Date</th>
<th>Unit Price</th>
<th>Brand</th>
</tr>
	<?php 
	  while($row=mysqli_fetch_assoc($result)){
		  echo "<tr>";
		  echo "<td><form action='modify.php' method='get'>
				  <input type='submit' class='itembutton' name='item' value='". $row["item"]. "'>
				  <input type='hidden' name='store' value='". $store. "'>
				</form></td>";
		  echo "<td>$". $row["price"]. "</td>";
		  echo "<td>". $row["category"]. "</td>";
		  echo "<td>". $row["quantity"]. " ". $row["quantity_unit"]. "</td>";
		  echo "<td>". $row["date"]. "</td>";
		  echo "<td>$". $row["unit_price"]. "/". $row["quantity_unit"]. "</td>";
		  echo "<td>". $row["brand"]. "</td>";
		  echo "</tr>";
	  }
	  
	  mysqli_close($con);
	?>
</table>

<br><br>
<header>Click an item to edit/remove it</header>
<br>
<form action="additem.php" method="get">
	<input type="submit" value ="Add Item">
	<?php
	echo "<input type='hidden' name='store' value='". $store. "'>";
	?>
</form>
<br>
<button><a href="./website.html">Go Back</button>
</body>
</html>

