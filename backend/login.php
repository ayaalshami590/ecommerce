<?php
$email1=$_POST["email"];
$password=$_POST["password"];
$connect=mysqli_connect("localhost","root","","ecommerce-db");
$query="SELECT * FROM user WHERE email='$email1' ";
 $result=mysqli_query($connect,$query);
 while($row=mysqli_fetch_assoc($result))
 { $email= $row['email'];
   $password1=$row['password1'];
   if($email1==$email && $password==$password1 )
       { header("Location:frontend/categories.html"); }
    else{header("location:index.html"); 
       printf(" incorrect passwod and email  ");}
        }

     
 



?>