<?php
    $firstName = $_POST['firstName'];
    $lastName = $_POST['lastName'];
    $email = $_POST['email'];
    $password2 = $_POST['password2'];


    //database connection
$conn = new mysqli('localhost','root', '');
    if($conn->connect_error){
        die('connection failed : '.$conn->connect_error);
    } else{
       /* mysqli_select_db($conn,"woordenschatapp");
        $results = mysqli_query($conn,"show tables ;");
        while ($entry = mysqli_fetch_assoc($results)){
            foreach($entry as $result){
                echo $result;
            }
        }*/
        /*echo $firstName;
        echo $lastName;
        echo $email;
        echo $password2;*/
        mysqli_select_db($conn,"woordenschatapp");
        $stmt = $conn->prepare( "INSERT INTO login(firstName, lastName, mail, password2) VALUES (?,?,?,?) ;");
        $stmt ->bind_param("ssss", $firstName, $lastName, $email, $password2);
        $stmt ->execute();
        echo "registration succesful";
        $stmt ->close();
        $conn->close();
    }
if ($_POST["password"] !== $_POST["password2"]){
    die("Passwords must match");
}
//$password_hash = password_hash($_POST["password"], PASSWORD_DEFAULT);

