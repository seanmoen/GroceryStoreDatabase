<?php
$host='localhost';
$name ='root';
$pwd='TerraNova22!';
$db='grocery_store';
$con=mysqli_connect($host,$name,$pwd) or die("connection failed");
mysqli_select_db($con, $db) or die("db selection failed");

  $store = $_GET["store"];
  $result=mysqli_query($con, "SELECT * FROM {$store}");
?>
 
<html>
<head>
<link rel="stylesheet" href="style.css">
<title> Grocery Store Table </title>
</head>
<body>
<h1><?php echo $store?> Items:</h1>

<hr>
<table border = '2'; style= "font-size:30px">
<tr>
<th>Item</th>
<th>Price </th>
<th>Category</th>
<th>Quantity</th>
<th>Unit</th>
<th>Date</th>
<th>Unit Value</th>
<th>Brand</th>
</tr>
	<?php 
	  while($row=mysqli_fetch_assoc($result)){
		  //$tmp[]=$row;
		  echo "<tr>";
		  echo "<td>". $row["item"]. "</td>"; 
		  echo "<td>". $row["price"]. "</td>";
		  echo "<td>". $row["category"]. "</td>";
		  echo "<td>". $row["quantity"]. "</td>";
		  echo "<td>". $row["quantity_unit"]. "</td>";
		  echo "<td>". $row["date"]. "</td>";
		  echo "<td>". $row["unit_price"]. "</td>";
		  echo "<td>". $row["brand"]. "</td>";
		  echo "</tr>";
	  }
	  
	  //echo json_encode(array("data"=>$tmp));
	  mysqli_close($con);
	?>
</table>

<br><br>
<button onclick="history.back()">Go Back</button>
<br><br>
<form action="additem.php" method="get">
	<input type="submit" value = "Add Item">
</form>
<form action="removeitem.php" method="get">
	<input type="submit" value = "Remove Item">
</form>

</body>
</html>