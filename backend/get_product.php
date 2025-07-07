<?php
  $connect = mysqli_connect("localhost", "root", "", "ecommerce-db");
  $squery = "SELECT * FROM products";
  if(isset($_GET['id']))
  $squery = $squery . " WHERE `categories-id` =".$_GET['id'];
  $result = mysqli_query($connect, $squery);
  $products = mysqli_fetch_all($result, MYSQLI_ASSOC);
  echo json_encode($products);
?>