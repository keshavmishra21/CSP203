<!DOCTYPE html>
<html>
<body>
<?php


  
    $username = $_POST['username'] ?? '';
    $password = $_POST['password'] ?? '';

    
    if ($username === 'csp203' && $password === 'csp203') {
        echo "Login is successful";
    } else {
        echo "Login is unsuccessful";
    }

?>
</body>
</html>

