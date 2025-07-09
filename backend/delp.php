<?php
$connect=mysqli_connect("localhost","root","","ecommerce_db");
$squery="DELETE FROM  review  WHERE product_id = $_GET[id] ";
mysqli_query($connect,$squery);
$query="DELETE FROM products  WHERE id = $_GET[id] ";
mysqli_query($connect,$query);
header("Location: " . $_SERVER['HTTP_REFERER']);

