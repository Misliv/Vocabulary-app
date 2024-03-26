<?php
session_start();

if(isset($_SESSION["user"])) {
    echo "<h1>Welkom " . $_SESSION["user"]["naam"] . " met de rol " . $_SESSION["user"]["rol"] . " op de website!</h1>";


} else {
    header('location: login.php');
}
//

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Homescreen</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">

</head>
<body>
<p><a href="practice folders/folders.php">Oefenen</a></p>
<p><a href="practice folders/folders.php">Bewerk woordenlijst</a></p>
<p><a href="adminPage.php">Admingedeelte website</a></p>
<p><a href="login.php?loguit">Uitloggen</a></p>
</body>
</html>
