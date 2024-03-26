<?php
$host = 'localhost';
$user = 'root';
$pass = '';
$db = 'woordenschatapp';

$connection = new mysqli ($host, $user, $pass, $db) or die ("Database connection failed");
$sql = "SELECT waitlist_text FROM texts";

$waitlist_text = $connection->query($sql);

$result = $connection->query($sql);
    while($row = $result->fetch_rows()){
        print_r($row);
        echo $row[0]."<br/>";
    }
?>