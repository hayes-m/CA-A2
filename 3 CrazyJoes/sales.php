<?php
$user='root';
$pass='shire';
$host='127.0.0.1';
$db='crazyjoe';
$conn=mysqli_connect($host,$user,$pass,$db);
$saleResult=mysqli_query($conn,'select * from sales');
?>

<html>
        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="style.css">
        </head>
                <body>

<img src="https://www.freeiconspng.com/uploads/euro-symbol-icon-9.png" alt="sales" width="40" height="40" align="left">
                <a class ="home" href="index.php"> <img src="https://image.freepik.com/free-icon/home-symbol_318-49865.jpg" alt="home" width="25" height="25"><font size = "5" color="black"><b> Crazy Joe's </b></font><img src="https://image.freepik.com/free-icon/home-symbol_318-49865.jpg" alt="home" width="25" height="25"></a>
<img src="https://www.freeiconspng.com/uploads/euro-symbol-icon-9.png" alt="sales" width="40" height="40" align="right"><br><br>


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
										 <form action="saleUpdater.php" method="post">
                        <h3>Enter New Sale</h3>

                        <b>Customer ID<br><input type="text" name="CustomerID" value="" /></b>
                        <br><br>
                        <b>Quantity<br><input type="text" name="Quantity" value="" /></b>
                        <br><br>
                        <b>Game ID<br><input type="text" name="GameID" value="" /></b>
                        <br><br>
                        <b>Date (DD-MM-YY)<br><input type="text" name="Date" value="" /></b>
                        <br><br>
                        <b>Margin<br><input type="text" name="Margin" value="" /></b>
                        <br><br>
                        <input type="submit" value="enter" />
                </form>
							</div>
                

                        <div class="output">
                        <?php
                          echo "<table border='2' width='100%'>
        <tr>
        <th>Sale ID</th>
        <th>Customer ID</th>
        <th>Quantity</th>
        <th>Game ID</th>
        <th>Date</th>
        <th>Margin</th>
        </tr>";


        while($mysales=mysqli_fetch_array($saleResult,MYSQLI_ASSOC))
        {
                                echo "<tr>";
        echo "<td>".$mysales['saleID']."</td>";
        echo "<td>".$mysales['customerID']."</td>";
        echo "<td>".$mysales['quantity']."</td>";
        echo "<td>".$mysales['gameID']."</td>";
        echo "<td>".$mysales['date']."</td>";
        echo "<td>".$mysales['margin']."</td>";

        echo "</tr>";
                                }
                                echo "</table>";
                        ?>
                        </div>
                </div>

</body>
</html>
