<link rel="stylesheet" type="text/css" href="plaeauser.css">
<?php
$cookie_value =  $_COOKIE['username'];
 echo "<h1>Welcome<br>".$cookie_value."</h1>"

//echo "Welcome";
//echo "<br>";
//echo $cookie_value;

?>




<html>

<form action="schoolselector.php" method="$_POST">
<button type="submit" class="button1" onclick="window.location.href='schoolselector.php'">Document PD</button>


<button type="button" class="button2" onclick="window.location.href='schoolselector.php'">PD History</button>
</form>
</html>





