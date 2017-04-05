<?php
$servername = "52.25.185.248:3306";
$username = "user1";
$password = "user1";

try {
    $conn = new PDO("mysql:host=$servername;dbname=MUSIC_DATABASE", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully"; 
    }
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }
?>