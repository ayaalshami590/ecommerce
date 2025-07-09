<?php
$name=$_POST['name'];
$email=$_POST['email'];
$password=$_POST['password'];
$numberphone=$_POST['numberphone'];
$country=$_POST['country'];
$connect=mysqli_connect("localhost","root","","ecommerce_db");
$query1="SELECT * FROM user WHERE email1='$email' ";
$result = mysqli_query($connect, $query1);
$row = mysqli_fetch_assoc($result);
if ($row) {
   if ($row['password1'] == $password ) {
      header("Location:http://localhost/ecommerce/frontend/creatanacount.html?message=this email is already in use.Please log in or enter a new email ");
   } else{
$query="INSERT INTO user (name1,password1,email1,number1,country1)VALUES ('$name','$email','$password','$numberphone','$country')";
mysqli_query($connect,$query);
header("location:http://localhost/ecommerce/frontend/categories.html");
}}
?>