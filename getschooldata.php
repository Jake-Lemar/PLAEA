<?php
$dbHost = '127.0.0.1';
$dbUsername = 'root';
$dbPassword = '';
$dbName = 'test';
$dbPort = '3307';
//connect with the database
$db = new mysqli($dbHost,$dbUsername,$dbPassword,$dbName, $dbPort);

//get search term
$searchTerm = $_GET['school'];

$query = $db->query("SELECT district, building FROM School_list WHERE school = '".$searchTerm."'");

while ($row = $query->fetch_assoc()) {
    $data[] = $row['district'];
    $data[] = $row['building'];
}
//return json data
echo json_encode($data, JSON_FORCE_OBJECT);
?>