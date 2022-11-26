<?php
$servername = "mysql";
$username = "root";
$password = "123";
$dbname = "db";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT fn.id as id, firstname, lastname FROM firstname fn JOIN lastnames ln ON fn.id=ln.id ORDER BY RAND()";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo $row["firstname"]. " " .$row["lastname"]. "from" .gethostname(). "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>