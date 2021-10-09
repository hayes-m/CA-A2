<?php
$user='root';
$pass='shire';
$host='127.0.0.1';
$db='crazyjoe';
$conn=mysqli_connect($host,$user,$pass,$db);
$consoleResult=mysqli_query($conn,'select * from consoles');
?>

<html>
	<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="style.css">
	</head>
	        <body>

<img src="https://cdn2.iconfinder.com/data/icons/life-on-the-web-dark/100/xbox-512.png" alt="consoles" width="40" height="40" align="left">
<a class ="home" href="index.php"> <img src="https://image.freepik.com/free-icon/home-symbol_318-49865.jpg" alt="home" width="25" height="25"><font size = "5" color="black"><b> Crazy Joe's </b></font><img src="https://image.freepik.com/free-icon/home-symbol_318-49865.jpg" alt="home" width="25" height="25"></a>
<img src="https://cdn2.iconfinder.com/data/icons/life-on-the-web-dark/100/xbox-512.png" alt="consoles" width="40" height="40" align="right"><br><br> 

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
                		<form action="consoleUpdater.php" method="post">
                        	<h3>Enter New Console</h3>

                        	<b>Console Name<br><input type="text" name="ConsoleName" value="" /></b>
                        	<br><br>
                        	<b>Manufacturer<br><input type="text" name="Manufacturer" value="" /></b>
                        	<br><br>
                        	<b>Colour<br><input type="text" name="Colour" value="" /></b>
                        	<br><br>
                        	<b>Console Price<br><input type="text" name="ConsolePrice" value="" /></b>
                        	<br><br>
                        	<b>Region<br><input type="text" name="Region" value="" /></b>
                        	<br><br>
                        	<b>Console Stock<br><input type="text" name="ConsoleStock" value="" /></b>
                        	<br><br>

				<input type="submit" value="enter" />
	                	</form>
        		</div>
		

			<div class="output">
			<?php
			echo "<table border='2' width='100%'>
			<tr>
			<th>Console ID</th>
			<th>Console Name</th>
			<th>Manufacturer</th>
			<th>Colour</th>
			<th>Console Price</th>
			<th>Region</th>
			<th>Console Stock</th>
			</tr>";

			while($myconsoles=mysqli_fetch_array($consoleResult,MYSQLI_ASSOC)){
				echo "<tr>";
				echo "<td>".$myconsoles['consoleID']."</td>";
				echo "<td>".$myconsoles['consoleName']."</td>";
				echo "<td>".$myconsoles['manufacturer']."</td>";
				echo "<td>".$myconsoles['colour']."</td>";
				echo "<td>".$myconsoles['consolePrice']."</td>";
				echo "<td>".$myconsoles['region']."</td>";
				echo "<td>".$myconsoles['consoleStock']."</td>";
				echo "</tr>";
				}
				echo "</table>";
			?>
			</div>
		</div>

</body>
</html>
