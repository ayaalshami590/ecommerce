<?php
$image = $_GET['image'];
$name = $_GET['name'];

$connect = mysqli_connect("localhost", "root", "", "ecommerce-db");

// هذا هو السطر الذي تم تصحيحه:
// أزلنا علامات الاقتباس من (image, name) وأضفناها حول القيم '$image', '$name'
$query = "INSERT INTO categories (image, name) VALUES ('$image', '$name')";

mysqli_query($connect, $query);

// من الجيد دائماً إغلاق الاتصال بقاعدة البيانات
mysqli_close($connect);
header("Location: frontend/categories.html");
?>  