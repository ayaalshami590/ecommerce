<?php
$image = $_POST['image'];
$name = $_POST['name'];

$connect = mysqli_connect("localhost", "root", "", "ecommerce_db");

// هذا هو السطر الذي تم تصحيحه:
// أزلنا علامات الاقتباس من (image, name) وأضفناها حول القيم '$image', '$name'
$query = "INSERT INTO categories (image, name) VALUES ('$image', '$name')";

mysqli_query($connect, $query);

// من الجيد دائماً إغلاق الاتصال بقاعدة البيانات
mysqli_close($connect);
header("Location: http://localhost/ecommerce/frontend/categories.html");
?>  