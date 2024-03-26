<?php

session_start();

if (empty($_POST["firstName"])){
    die("first Name is required, <a href='register.php'>try again</a>");
}

if (empty($_POST["lastName"])){
    die("last Name is required, <a href='register.php'>try again</a>");
}

if( ! filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)){
    die("Valid email is required, <a href='register.php'>try again</a> ");
}

if (strlen($_POST["password"]) < 8){
    die("password must be at least 8 characters long, <a href='register.php'>try again</a>");
}

if ( ! preg_match("/[a-z]/i", $_POST["password"])){
    die("password must contain at least one letter, <a href='register.php'>try again</a>");
}

if ( ! preg_match("/[0-9]/i", $_POST["password"])) {
    die("password must contain at least one number, <a href='register.php'>try again</a>");
}

if ($_POST["password"] !== $_POST["password2"]){
    die("Passwords must match, <a href='register.php'>try again</a>");
}

$password_hash = password_hash($_POST["password"], PASSWORD_DEFAULT);

$mysqli = require __DIR__ . "/database.php";



mysqli_select_db($mysqli,"woordenschatapp");
$sql = "INSERT INTO login (firstName, lastName, mail, password2)
        VALUES (?, ?, ?, ?)";

$stmt = $mysqli->stmt_init();

if ( ! $stmt->prepare($sql) ){
    die("SQL error: " . $mysqli->error);
}

$stmt->bind_param("ssss",
        $_POST["firstName"],
        $_POST["lastName"],
        $_POST["email"],
        $password_hash);

if ($stmt->execute()){

header("Location: signup-success.html");
exit;

}else{

    if($mysqli->errno === 1062) {
        die("email already taken");
    }
    die($mysqli->error . " " . $mysqli->errno);
}



