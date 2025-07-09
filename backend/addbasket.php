<?php
$connect = mysqli_connect("localhost", "root", "", "ecommerce_db");
$query= "SELECT * from products WHERE id = $_GET[id] ";
$result=mysqli_query($connect,$query);
 $products = mysqli_fetch_all($result, MYSQLI_ASSOC);
  echo json_encode($products);
  //header("location:http://localhost/ecommerce/frontend/basket.html")
?>