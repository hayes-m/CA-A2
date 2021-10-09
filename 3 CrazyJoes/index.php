<?php
$user='root';
$pass='shire';
$host='127.0.0.1';
$db='crazyjoe';
$conn=mysqli_connect($host,$user,$pass,$db);
$gameResult=mysqli_query($conn,'select g.gameName from games g inner join sales s using (gameID) group by s.gameID order by sum(s.quantity) desc limit 5');

?>

<html>
	<head>
	<title>Crazy Joe's</title>
	<link rel="stylesheet" type="text/css" href="style.css">

	</head>

		<body>
<a class ="home" href="index.php"> <img src="https://image.freepik.com/free-icon/home-symbol_318-49865.jpg" alt="home" width="25" height="25"><font size = "5" color="black"><b> Crazy Joe's </b></font><img src="https://image.freepik.com/free-icon/home-symbol_318-49865.jpg" alt="home" width="25" height="25"><br><br></a>
			<nav>
				<ul>
				<li class ="a"><a class="nav" href="consoles.php">Consoles</a></li>
				<li class ="a"><a class="nav" href="games.php">Games</a></li>
				<li class ="a"><a class="nav" href="customers.php">Customers</a></li>
				<li class ="a"><a class="nav" href="sales.php">Sales</a></li>
				</ul>
			</nav>
		<br>
		<div class="border">
		<br><br><br><br><br><br><br><br>

			<h1>Crazy Joe's Top Five</h1>
			<hr width="25%"><br>

				<?php
				$i = 0;
				while($mygames=mysqli_fetch_array($gameResult,MYSQLI_ASSOC))
				{
				$i++;
				echo 	'<font size = "5">'.$i.".   ".$mygames['gameName']."<br><br><br></font>";
				}
				?>
		</body>
</html>
