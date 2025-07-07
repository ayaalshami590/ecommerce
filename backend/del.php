<?php
$connect=mysqli_connect("localhost","root","","ecommerce-db");
$squery="DELETE FROM categories WHERE id = $_GET[id] "; 
mysqli_query($connect,$squery);
header("Location: categories.php");
?>