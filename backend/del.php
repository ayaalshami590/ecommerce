<?php
$connect=mysqli_connect("localhost","root","","ecommerce_db");
$squery="DELETE FROM categories WHERE id = $_GET[id] "; 
mysqli_query($connect,$squery);
header("Location:http://localhost/ecommerce/frontend/categories.html");
?>