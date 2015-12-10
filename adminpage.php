<head>
<h1 style="text-align:center; font-size:75px">Admin Page</h1>
</head>
​
<body>
​
<h1> Descriptions of Previous Records </h1>
	
​
<br><hr>	
​
</body>
<ul> 
<?php
   if(isset($_POST['all_click'])){
       $db = new mysqli("127.0.0.1", "root", "root", "test");
$result = implode( ',', $_POST[''] );
}

$stmt1 = $conn->prepare("select sum(field) from table where field2 in ($queries)");
$stmt1->execute($data1);

$result1 = $stmt1->fetchAll();
print_r(var_dump($va));
                   
echo "<table border = 1>";
echo "<tr>";
echo "<td> Grade </td>";
echo "<td> Last Name </td>";
echo "<td> First Name </td>";
echo "<td> Days Attended </td>";
while ($row = $result->fetch_assoc()){
   echo "<tr>";
   echo "<td>".htmlentities($row['grade'])."</td>";
   echo "<td>".htmlentities($row['lastname'])."</td>";
   echo "<td>".htmlentities($row['firstname'])."</td>";
   echo "<td>".htmlentities($row['count(user_id)'])."</td>";
  echo "</tr>";
}
echo "</table>";
?>