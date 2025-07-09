<?php
$connect = mysqli_connect("localhost", "root", "", "ecommerce_db");
$query="SELECT `name` from categories";
$result=mysqli_query($connect, $query);
$names = mysqli_fetch_all($result, MYSQLI_ASSOC);
 echo json_encode($addproduct);

// $image = $_POST['image'];
// $name = $_POST['name'];
// $price=$_POST['price'];
// $rate=$_POST['rate'];
// $desciption=$_POST['desciption'];


// // هذا هو السطر الذي تم تصحيحه:
// // أزلنا علامات الاقتباس من (image, name) وأضفناها حول القيم '$image', '$name'
// $query1= "INSERT INTO  products (image_url,name,rate,price,description,`categories-id`) VALUES ('$image', '$name','$rate','$price','$description')";

// mysqli_query($connect, $query1);

// // من الجيد دائماً إغلاق الاتصال بقاعدة البيانات
// mysqli_close($connect);
// header("Location: http://localhost/ecommerce/frontend/products.html");
// ?>  