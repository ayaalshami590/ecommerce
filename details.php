<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


    <style>
        section{
            width: 100%;
        }
    </style>
</head>
<body style= "padding : 0px 200px;  display:flex;  flex-direction:column;  align-items:center;">
    <?php
    $coonect=mysqli_connect("localhost","root","","ecommerce_db");
    $query = "SELECT * FROM products WHERE id = " . $_GET['id'];
    $result= mysqli_query($coonect, $query);
    $row=mysqli_fetch_assoc($result);
    echo"<section style='display : flex;'>";
     echo"<img src='$row[image_url]' width = '600px'>";
     echo"<div style= 'padding: 100px  100px ' >";
      echo"<h2>" .$row['name'] ."</h2>";
      echo"<p class='fs-3'>" .$row['price'] . "</p>";
      echo"<p class='fs-3'>" .$row['rate'] . "</p>";
      echo"<a href='cart.php'>";
       echo"<button style='border: none; background: transparent; padding: 0; cursor: pointer;  color:orange;'>";
        echo"<svg xmlns='http://www.w3.org/2000/svg' width='22' height='22' fill='currentColor' class='bi bi-cart' viewBox='0 0 16 16'>";
        echo"<path d='M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5M3.102 4l1.313 7h8.17l1.313-7zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4m7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4m-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2m7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2'/>";       
        echo"</svg>";
        echo"</button>";
        echo"</a>";
      echo "</div>";
    echo"</section>";
    echo" <section class='card p-3'>";
        echo"<h2>" ."Description "."</h2>";
        echo"<p>" .$row['description']. "</p>";
    echo"</section>";
    ?>
    <?php
    echo"<br>";
    echo" <section class='card p-3'>";
     echo"<h2> Related products</h2>";
     echo"<div style='display:flex; justify-content:space-between'>";
     $coonect=mysqli_connect("localhost","root","","ecommerce_db");
     $ssquery = "SELECT * FROM products WHERE id != " . $_GET['id'] . " limit 4";
     $res= mysqli_query(  $coonect, $ssquery);
     $vals=mysqli_fetch_all($res, MYSQLI_ASSOC);
     foreach($vals as $val){
        echo"<div class='card p-3'>";
         echo "<a href='test.php?id=" . $val['id'] . "'>"."<img src='" . $val['image_url'] . "' width = '200 px'>"."</a>";
         echo"<h3>".$val['name']. "</h3>"; 
         echo"<p>".$val['price']."</p>";
          echo"<p>".$val['rate']."</p>";
        echo"</div>";
     }
     echo"</div>";
    echo"</section>";
    ?>
    <?php
    echo"<br>";
    echo"<section class='card p-3'>";
     echo"<h2>reviews</h2>";
     echo"<div>";
     $con=mysqli_connect("localhost","root","","ecommerce_db");
     $eque="SELECT* FROM review  WHERE product_id = " . $_GET['id'];
     $re=mysqli_query($con,$eque);
    while( $vall=mysqli_fetch_assoc($re)){   
      echo"<div style='display:flex ; flex-direction=row; align-items:center; gap:20px;' >";
        echo"<img style='border-radius: 100%; width: 400px; height: 200px; object-fit: contain;'
         src = '$vall[user_image_url]'>";
         echo"<p> $vall[body]</p>";
      echo"</div>"; 
       echo"<br>";}
  
     echo"</div>";
    echo"</section>";
    ?>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.min.js" integrity="sha384-7qAoOXltbVP82dhxHAUje59V5r2YsVfBafyUDxEdApLPmcdhBPg1DKg1ERo0BZlK" crossorigin="anonymous"></script>
    
    
</body>
</html> 