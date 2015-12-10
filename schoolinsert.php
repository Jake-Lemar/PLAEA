

   <?php
$dbHost = '127.0.0.1';
$dbUsername = 'root';
$dbPassword = '';
$dbName = 'test';
$dbPort = '3307';
//connect with the database
$db = new mysqli($dbHost,$dbUsername,$dbPassword,$dbName, $dbPort);

//get search term
$school = $_GET['school'];
$district = $_GET['district'];
$building = $_GET['building'];


$sql = "INSERT INTO data_log (school, district, building, time_doc, userid) values ('".$school."','".$district."','".$building."',CURTIME(), ".$_COOKIE['userid'].");";


if ($db->query($sql) === TRUE) {
                    $schoolID = mysqli_insert_id();
                    
                    setcookie('schoolID', $schoolID, time() + 3600, "/");


                                        header("Location: http://localhost/description.php");


        }
   else {
    echo $sql;
        }

?>