<?php
$user='root';
$pass='shire';
$host='127.0.0.1';
$db='crazyjoe';
$conn=mysqli_connect($host,$user,$pass,$db);

$customerName=$_POST['CustomerName'];
$storeName=$_POST['StoreName'];
$address=$_POST['Address'];
$phone=$_POST['Phone'];

mysqli_query($conn,"INSERT into customers (customerName,storeName,address,phone) VALUES ('$customerName','$storeName','$address','$phone')");
header('Location: customers.php');
?>


