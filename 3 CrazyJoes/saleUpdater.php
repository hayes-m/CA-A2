<?php
$user='root';
$pass='shire';
$host='127.0.0.1';
$db='crazyjoe';
$conn=mysqli_connect($host,$user,$pass,$db);

$customerID=$_POST['CustomerID'];
$quantity=$_POST['Quantity'];
$gameID=$_POST['GameID'];
$date=$_POST['Date'];
$margin=$_POST['Margin'];

mysqli_query($conn,"INSERT into sales (customerID,quantity,gameID,date,margin) VALUES ('$customerID','$quantity','$gameID',(STR_TO_DATE('$date','%d-%m-%y')),'$margin')");
header('Location: sales.php');
?>


