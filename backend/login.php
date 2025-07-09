<?php

$json = file_get_contents('php://input');

$payload = json_decode($json, true);

$email1 = $payload["email"];
$password = $payload["password"];

$connect = mysqli_connect("localhost", "root", "", "ecommerce_db");

$query = "SELECT * FROM user WHERE email1='$email1' ";
$result = mysqli_query($connect, $query);
$row = mysqli_fetch_assoc($result);

if ($row) {
   if ($row['password1'] == $password) {
      echo json_encode(['success' => true]);
   } else {
      echo json_encode(['success' => false, 'message' => 'invalid password']);
   }
} else {
   echo json_encode(['success' => false, 'message' => 'invalid email']);
}
