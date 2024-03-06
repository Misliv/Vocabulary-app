<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register</title>
</head>
<body>
<main>
    <form action="connect.php" method="post">
        <h1>Sign Up</h1>
        <div>
            <label for="firstName">First name:</label>
            <input type="text" name="firstName" id="firstName">
        </div>
        <div>
            <label for="lastname">Last name:</label>
            <input type="text" name="lastName" id="lastName">
        </div>
        <div>
            <label for="email">Email:</label>
            <input type="email" name="email" id="email">
        </div>
        <div>
            <label for="password">Password:</label>
            <input type="password" name="password" id="password">
        </div>
        <div>
            <label for="password2">Password Again:</label>
            <input type="password" name="password2" id="password2">
        </div>
        

        <button type="submit">Register</button>
        <footer>Already a member? <a href="login.php">Login here</a></footer>
    </form>
</main>
</body>
</html>
