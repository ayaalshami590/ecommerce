<?php

$email1 = $_POST["email"];
$password = $_POST["password"];

$connect = mysqli_connect("localhost", "root", "", "ecommerce_db");

$query = "SELECT * FROM user WHERE email1='$email1' ";
$result = mysqli_query($connect, $query);
$row = mysqli_fetch_assoc($result);

if ($row) {
   if ($row['password1'] == $password) {
      header("Location:http://localhost/ecommerce/frontend/categories.html");
   } else {
      header("location:http://localhost/ecommerce/frontend/index.html?message=incorrect password");;
   }
} else {
   header("location:http://localhost/ecommerce/frontend/index.html?message=incorrect email");
}
