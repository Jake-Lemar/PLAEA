<?php
$sql = "
select * from Login WHERE username = '" . $_POST['username'] ."'
 and _password= '". $_POST['password']."'
";

$db = new mysqli("127.0.0.1", "root", "", "test", 3307);
$result = $db->query($sql);


echo "<hr>";


	
	echo "hello, " .$row["FirstName"];
	
	echo "<br>";
	if ($row == null){
		echo "Go Away!";
} else{
	echo "Succesful Login";
	
	echo "<br>";
	echo "your userid is " .$row['id'];
}
?>