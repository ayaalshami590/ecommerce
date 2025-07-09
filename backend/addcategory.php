<?php

$image = $_FILES['image'];

if(!in_array($image['type'], ["image/jpeg", "image/png"]))
    die("image must be jpeg");

if(($image['size'] / 1000000) > 2)
    die("image must not be greated than 50kb");


$path = "uploads/" . $image['name'];


move_uploaded_file($image['tmp_name'], $path);
    
$url = "http://localhost/ecommerce/backend/" . $path;

$name = $_POST['name'];

$connect = mysqli_connect("localhost", "root", "", "ecommerce_db");

$query = "INSERT INTO categories (image, name) VALUES ('$url', '$name')";

mysqli_query($connect, $query);

mysqli_close($connect);
header("Location: http://localhost/ecommerce/frontend/categories.html");
?>  