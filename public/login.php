<?php
session_start();


$is_invalid = false;

if ($_SERVER["REQUEST_METHOD"] === "POST"){

    $mysqli = require __DIR__ . "/database.php";



    $sql = sprintf("SELECT * FROM login          
            WHERE mail = '%s'",            //the email is a string so we'll enclose it in single quotes in the where clause
        $mysqli->real_escape_string($_POST["mail"]));

    mysqli_select_db($mysqli,"woordenschatapp");

    $result = $mysqli->query($sql);

    $user = $result->fetch_assoc();
    if ($user){

        if(password_verify($_POST["pwd"], $user["password2"])) {

            session_start();

            $_SESSION["user_id"] = $user["id"];

            header("Location: website.php");
            exit;
        }
    }
    $is_invalid = true;
}



//dummy generated data

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
    && isset($users[$_POST["mail"]])
    && $users[$_POST["mail"]] ["pwd"] == $_POST['pwd']) {
    $_SESSION["user"] = array("naam" => $_POST["mail"],
        "pwd" => $users[$_POST["mail"]]['pwd'],
        "rol" => $users[$_POST["mail"]]['rol']);

    header("Location: website.php");
    exit();

} else if (isset($_POST['knop'])
    && isset($users [$_POST ["mail"]])
    && $users[$_POST["mail"]] ["pwd"] !== $_POST ['pwd'])
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



<?php if ($is_invalid): ?>
    <em>Invalid login</em>
<?php endif; ?>

<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
    <div class="form-group">

        <!--login with mail in database-->
        <label for="mail">Login:</label>
        <input type="text" name="mail" id="mail"
               value="" required>
    </div>
    <div class="form-group">

        <label for="pwd">Password:</label>
        <input type="password" name="pwd" id="pwd" value="" required>
    </div>
    <input type="submit" name="knop">
</form>
<p><a href="register.php">Registreren</a></p>
</body>
</html>
