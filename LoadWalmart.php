<?php
$host='localhost';
$name ='root';
$pwd='TerraNova22!';
$db='grocery_store';
$con=mysqli_connect($host,$name,$pwd) or die("connection failed");
mysqli_select_db($con, $db) or die("db selection failed");

  $result=mysqli_query($con, "SELECT * FROM walmart");
  
  while($row=mysqli_fetch_assoc($result)){
	  $tmp[]=$row;
  }
  echo json_encode(array("data"=>$tmp));
  mysqli_close($con);
  
?>