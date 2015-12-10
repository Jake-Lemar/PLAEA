<?php

$search = $_POST['search'];


    
    $con=mysqli_connect("127.0.0.1","root","","test", 3307);
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

$sql = "
 SELECT school From School_list WHERE school like'%".$search."%'";
$result=mysqli_query($con,$sql);



while ($row = $result->fetch_assoc()){
    echo $row['school'];
}
// Free result set
mysqli_free_result($result);

mysqli_close($con);

?>

