<?php
$name=$_POST['name'];
$email=$_POST['email'];
$password=$_POST['password'];
$numberphone=$_POST['numberphone'];
$country=$_POST['country'];
$connect=mysqli_connect("localhost","root","","ecommerce_db");
$query="INSERT INTO user (name1,password1,email1,number1,	country1)VALUES ('$name','$email','$password','$numberphone','$country')";
mysqli_query($connect,$query);
header("location:frontend/categories.html")
?>
