<?php

$servername = "localhost";
$username   = "pankaj";
$password   = "qbolbk";
$dbname     = "incampusit";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
	
die("Connection failed: " . mysqli_connect_error());

}

?>
