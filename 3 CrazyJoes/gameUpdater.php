<?php
$user='root';
$pass='shire';
$host='127.0.0.1';
$db='crazyjoe';
$conn=mysqli_connect($host,$user,$pass,$db);

$gameName=$_POST['GameName'];
$rating=$_POST['Rating'];
$gameStock=$_POST['GameStock'];
$gamePrice=$_POST['GamePrice'];

mysqli_query($conn,"INSERT into games (gameName,rating,gameStock,gamePrice) VALUES ('$gameName','$rating','$gameStock','$gamePrice')");
header('Location: games.php');
?>





