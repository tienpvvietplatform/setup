<?php 
  
 require_once('database.php');
   $lay_du_lieu="SELECT * FROM crud WHERE $_GET[id]=id";
   $tr_ve=$ketnoi->query($lay_du_lieu);
    $arr=$tr_ve->fetch_array();
 
?>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Document</title>
</head>
<body>
   <?php echo $arr["noi_dung"];?>
   <img src="<?php echo $arr["anh"]?>" alt="">
</br>
   <a href="read.php">tro ve</a>
</body>
</html>