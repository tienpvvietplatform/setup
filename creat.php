<?php
require_once("database.php");

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="creat.php" method="post">
<textarea name="noi_dung" id="" cols="60" rows="15"></textarea>
</br>
<input type="link" name="anh">
</br>
<input type="submit">
    </form>
    <?php if(!empty($_POST["noi_dung"]) && $_POST["anh"]){
$content=$_POST['noi_dung'];
$anh=$_POST['anh'];
        $insert="INSERT INTO crud(noi_dung,anh) VALUES ('$content','$anh')";
        $ketnoi->query($insert);}
        else{
            echo "noi dung trong";
        }
       $ketnoi->close();
    ?>
    </br>
    <a href="read.php">tro lai</a>
<!-- noi phet it thoi -->
</body>
</html>
