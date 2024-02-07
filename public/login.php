<?php
session_start();

$errors = array();

$users = array(
    "admin" => array("pwd" => "1234", "rol" => "Administrator"),
    "gebruiker" => array("pwd" => "4321", "rol" => "Gebruiker"),
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

    $message = "Welkom " . $_SESSION["user"]["naam"] . " met de rol "
        . $_SESSION["user"]["rol"];

} else if (isset($_POST['knop'])
    && isset($users [$_POST ["login"]])
    && $users[$_POST["login"]] ["pwd"] !== $_POST ['pwd'])
{
    $message = "Gegevens kloppen niet.";
} else {
    $message = "Login";
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
<h1><?php echo $message; ?></h1>
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
<main>
    <form action="login.php" method="post">
        <h1>Login</h1>
        <div>
            <label for="username">Username:</label>
            <input type="text" name="username" id="username">
        </div>
        <div>
            <label for="password">Password:</label>
            <input type="password" name="password" id="password">
        </div>
        <section>
            <button type="submit">Login</button>
            <a href="register.php">Register</a>
        </section>
    </form>
</main>
</body>
</html>