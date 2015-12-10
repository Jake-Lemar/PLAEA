<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "test"
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT FirstName.PLAEA_User, LastName.PLAEA_User, District.Datalog, SchoolName.Datalog, Time_Added";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    echo "<table>
    		<tr> <td>Name</td>
    			 <td>District</td>
    			 <td>School Name</td>
    			 <td>Checked In</td>
    			 <td>Description of Professional Development</td>
    		</tr>";
    while($row = $result->fetch_assoc()) {
    	<tr> echo <td>$row['FirstName'] . " " . $row['LastName']</td>
    			  <td>$row['District']</td>
    			  <td>$row['SchoolName']</td>
    			  <td>$row['Time_Added']</td>
    	</tr>
    	</table>
    }
    
} else {
    echo "0 results";
}
$conn->close();
?>