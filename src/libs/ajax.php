<?php
include "../schema.sql";

if (isset($_POST['search'])) {
    $Name = $_POST['search'];

    $Query = "SELECT Woord FROM woord WHERE Woord LIKE '%$Woord%' LIMIT 5";

    $ExecQuery = MYSQLi_query($con, $Query);

    echo '
    <ul>
    ';

    while ($Result = MYSQLi_fetch_array($ExecQuery)) {
        ?>
<li onclick="'fill<"<?php echo $Result['Woord'; ?>"]'>
<a>
    <?php echo $Result['Name']; ?>
</li></a>
<?php
    }
}
?>
</ul>
