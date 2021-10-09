<?php
$user='root';
$pass='shire';
$host='127.0.0.1';
$db='crazyjoe';
$conn=mysqli_connect($host,$user,$pass,$db);

$consoleName=$_POST['ConsoleName'];
$manufacturer=$_POST['Manufacturer'];
$colour=$_POST['Colour'];
$consolePrice=$_POST['ConsolePrice'];
$region=$_POST['Region'];
$consoleStock=$_POST['ConsoleStock'];

mysqli_query($conn,"INSERT into consoles (consoleName,manufacturer,colour,consolePrice,region,consoleStock) VALUES ('$consoleName','$manufacturer','$colour','$consolePrice','$region','$consoleStock')");
header('Location: consoles.php');
?>


