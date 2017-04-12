<?php
$servername = "sql203.byetcluster.com";
$username = "b3_19709146";
$password = "pass@123";
$dbname = "b3_19709146_mark_demo";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>