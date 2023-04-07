<?php
$servername = "localhost";
$username = "adminUser";
$password = "adminPasssword1.";
$db = "finalProject";
// Create connection
$conn = mysqli_connect($servername, $username, $password,$db);
// Check connection
if (!$conn) {
   die("Connection failed: " . mysqli_connect_error());
}
?>