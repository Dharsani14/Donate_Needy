
<?php
$host = "localhost:3306"; // Replace with your database host (e.g., localhost or your IP address)
$username = "root"; // Replace with your database username
$password = ""; // Replace with your database password
$database = "demo"; // Replace with your database name

// Establish database connection
$connection = mysqli_connect($host, $username, $password, $database);

// Check if the connection was successful
if (!$connection) {
    die("Database connection failed: " . mysqli_connect_error());
}
?>

