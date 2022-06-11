
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php 
require_once("database.php");
$timkiem="";
if(isset($_GET['tim_kiem'])){
    $timkiem=$_GET['tim_kiem'];
}
    $lay_du_lieu="SELECT * FROM crud WHERE  noi_dung LIKE '%$timkiem%'";
$tr_ve=$ketnoi->query($lay_du_lieu);

?>
    <table  width="100%" border="1">
       
        <!-- <caption>
            <form >
                <input type="search" name="tim_kiem">
            </form>
        </caption> -->
        <form action="read.php" >
            <input type="text" name="tim_kiem" method="get" value="<?php echo $timkiem?>">
            <input type="submit">
        </form>
    <tr >
        <th>
            id
        </th>
        <th>noi dung
        </th>
        <th>
            image
        </th>

    </tr>    
 
 
<?php foreach ($tr_ve as $values) { ?>
   
    <tr>
        <td> <?php echo $values["id"] ?></td>

          <td>
                 <a href="xemchitiet.php?id=<?php echo $values["id"]?>" style="color:black">
                  <?php echo nl2br($values["noi_dung"]) ?>
                 </a>
           </td>

         <td> 
    <img src="<?php echo $values["anh"] ?> " height="100" alt="">
         </td>
         <td>
         <a href="update.php?id=<?php echo $values["id"]?>" style="color:black">sua</a>
            </td>
            <td>
         <a href="delete.php?id=<?php echo $values["id"]?>" style="color:black" onclick="window.confirm('are you sure')">xoa</a>
            </td>
 </tr>
          
    <?php  }?>
    </table>
  
</br>
    <?php $ketnoi->close()?>

    <a href="creat.php">them bai viet</a>
</body>
</html>