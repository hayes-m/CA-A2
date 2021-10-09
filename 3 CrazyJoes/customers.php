<?php
$user='root';
$pass='shire';
$host='127.0.0.1';
$db='crazyjoe';
$conn=mysqli_connect($host,$user,$pass,$db);
$customerResult=mysqli_query($conn,'select * from customers');
?>

<html>
        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="style.css">
        </head>
                <body>

<img src="https://www.freeiconspng.com/uploads/person-icon-5.png" alt="customers" width="30" height="40" align="left">
<a class ="home" href="index.php"> <img src="https://image.freepik.com/free-icon/home-symbol_318-49865.jpg" alt="home" width="25" height="25"><font size = "5" color="black"><b> Crazy Joe's </b></font><img src="https://image.freepik.com/free-icon/home-symbol_318-49865.jpg" alt="home" width="25" height="25"></a>
<img src="https://www.freeiconspng.com/uploads/person-icon-5.png" alt="customers" width="30" height="40" align="right"><br><br>

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
										<form action="customerUpdater.php" method="post">
                        <h3>Enter New Customer</h3>

                        <b>Customer Name<br><input type="text" name="CustomerName" value="" /></b>
                        <br><br>
                        <b>Store Name<br><input type="text" name="StoreName" value="" /></b>
                        <br><br>
                        <b>Address<br><input type="text" name="Address" value="" /></b>
                        <br><br>
                        <b>Phone<br><input type="text" name="Phone" value="" /></b>
                        <br><br>
                        <input type="submit" value="enter" />
                </form>
							</div>
                

                        <div class="output">
                        <?php
                         echo "<table border='2' width='100%'>
        <tr>
        <th>Customer ID</th>
        <th>Customer Name</th>
        <th>Store Name</th>
        <th>Address</th>
        <th>Phone</th>
        </tr>";


        while($mycustomers=mysqli_fetch_array($customerResult,MYSQLI_ASSOC))
        {
                                 echo "<tr>";
        echo "<td>".$mycustomers['customerID']."</td>";
        echo "<td>".$mycustomers['customerName']."</td>";
        echo "<td>".$mycustomers['storeName']."</td>";
        echo "<td>".$mycustomers['address']."</td>";
        echo "<td>".$mycustomers['phone']."</td>";

        echo "</tr>";
                                }
                                echo "</table>";
                        ?>
                        </div>
                </div>

</body>
</html>
