<?php
session_start();

$errors = array();

$users = array(
    "admin" => array("pwd" => "4321", "rol" => "Administrator"),
    "gebruiker" => array("pwd" => "1234", "rol" => "Gebruiker"),

);

if (isset($_GET["loguit"])) {
    $_SESSION = array();
    session_destroy();
}

if (isset($_POST['knop'])
    && isset($users[$_POST["login"]])
    && $users[$_POST["login"]] ["pwd"] == $_POST['pwd']) {
    $_SESSION["user"] = array("naam" => $_POST["login"],
        "pwd" => $users[$_POST["login"]]['pwd'],
        "rol" => $users[$_POST["login"]]['rol']);

    header("Location: website.php");
    exit();

} else if (isset($_POST['knop'])
    && isset($users [$_POST ["login"]])
    && $users[$_POST["login"]] ["pwd"] !== $_POST ['pwd'])
{
    $message = "Gegevens kloppen niet.";
} else {
    $message = "Inloggen";
}
?>

<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
<h1><?php echo $message; ?></h1>
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
    <div class="form-group">
        <label for="login">Login:</label>
        <input type="text" name="login" value="" required>
    </div>
    <div class="form-group">
        <label for="pwd">Password:</label>
        <input type="password" name="pwd" value="" required>
    </div>
    <input type="submit" name="knop">
</form>
<p><a href="register.php">Registreren</a></p>
</body>
</html>
