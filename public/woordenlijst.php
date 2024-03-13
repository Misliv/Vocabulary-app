<?php
/* to do list
    - als je een nieuwe folder maakt in de woordenlijst laat dat zien op elke page waar je bij de woordenlijst komt.
    - voor nu zou het fijn zijn als je de woorden kan zien op deze page zonder folder.
    - wordt je geredirect naar een nieuwe page als je op een folder klikt? of blijf je op dezelfde page?
    - je kan nieuwe woorden toevoegen.
    - woordenlijst van oefenen kan je geen veranderingen aan maken, maar woordenlijst van "Bewerk woordenlijst" zou dat wel moeten kunnen.
    - Sietske's woordenlijst mag niet veranderd worden.
*/


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Woordenlijst</title>
</head>
<body>
<p><a href="website.php">Main screen</a></p>
<?php
echo "<table style 'border: solid 1px black;'>";
echo "<tr><th>Id</th><th>Woord</th><th>Woordsoort</th></tr>";

class TableRows extends RecursiveIteratorIterator {
    function __construct($it) {
        parent::__construct($it, self::LEAVES_ONLY);
    }
    function current() {
        return "<td style='width: 150px; border: 1px solid black;'>" . parent::current(). "</td>";
    }
    function beginChildren()
    {
        echo "<tr>";
    }
    function endChildren()
    {
        echo "</tr>" . "\n";
    }
}

try {
    $dbh = new PDO('mysql:host=localhost; dbname=woordenschatapp; port=3306', 'root', '');
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $stmt = $dbh->prepare("SELECT * FROM woordenlijst");
    $stmt->execute();

    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);

    foreach(new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v) {
        echo $v;
    }
}
catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
}
$conn = null;
echo "</table>";
?>
</body>
</html>