<?php
$user='root';
$pass='shire';
$host='127.0.0.1';
$db='crazyjoe';
$conn=mysqli_connect($host,$user,$pass,$db);
$gameResult=mysqli_query($conn,'select * from games');
?>

<html>
        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="style.css">
        </head>
                <body>
<img src="https://cdn3.iconfinder.com/data/icons/miscellaneous-7/100/Icon_Gaming-512.png" alt="games" width="40" height="40" align="left">
<a class ="home" href="index.php"> <img src="https://image.freepik.com/free-icon/home-symbol_318-49865.jpg" alt="home" width="25" height="25"><font size = "5" color="black"><b> Crazy Joe's </b></font><img src="https://image.freepik.com/free-icon/home-symbol_318-49865.jpg" alt="home" width="25" height="25"></a>
<img src="https://cdn3.iconfinder.com/data/icons/miscellaneous-7/100/Icon_Gaming-512.png" alt="games" width="40" height="40" align="right"><br><br>
                        <nav>
                                <ul>
                                <li class ="a"><a class="nav" href="consoles.php">Consoles</a></li>
                                <li class ="a"><a class="nav" href="games.php">Games</a></li>
                                <li class ="a"><a class="nav" href="customers.php">Customers</a></li>
                                <li class ="a"><a class="nav" href="sales.php">Sales</a></li>
                                </ul>
                        </nav>
                        <br>
			<div class ="page">
				<div class="input">
					<form action="gameUpdater.php" method="post">
					<h3>Enter New Game</h3>

					<b>Game Name<br><input type="text" name="GameName" value="" /></b>
					<br><br>
					<b>Rating<br><input type="text" name="Rating" value="" /></b>
					<br><br>
					<b>Game Stock<br><input type="text" name="GameStock" value="" /></b>
					<br><br>
					<b>Game Price<br><input type="text" name="GamePrice" value="" /></b>
					<br><br>
					<input type="submit" value="enter" />
					</form>
				</div>

                        <div class="output">
                        <?php
                         echo "<table border='2' width='100%'>
				<tr>
				<th>Game ID</th>
				<th>Game name</th>
				<th>Rating</th>
				<th>Game Stock</th>
				<th>Game Price</th>
				</tr>";

				while($mygames=mysqli_fetch_array($gameResult,MYSQLI_ASSOC))
							{
                                echo "<tr>";
				echo "<td>".$mygames['gameID']."</td>";
				echo "<td>".$mygames['gameName']."</td>";
				echo "<td>".$mygames['rating']."</td>";
				echo "<td>".$mygames['gameStock']."</td>";
				echo "<td>".$mygames['gamePrice']."</td>";

				echo "</tr>";
                                }
                                echo "</table>";
                        ?>
                        </div>
                </div>

</body>
</html>
