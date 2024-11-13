</html>
<!DOCTYPE html>
<html>
<body>
<?php


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = htmlspecialchars($_POST['name']);
    $email = htmlspecialchars($_POST['email']);
    $contact = htmlspecialchars($_POST['contact']);
    $country = htmlspecialchars($_POST['country']);

    echo "<h2>User Details</h2>";
    echo "<table border='1' cellpadding='10' cellspacing='0'>";
    echo "<tr>
            <th><b>Name</b></th>
            <th><b>Email Address</b></th>
            <th><b>Contact Number</b></th>
            <th><b>Country</b></th>
          </tr>";
    echo "<tr>
            <td>$name</td>
            <td>$email</td>
            <td>$contact</td>
            <td>$country</td>
          </tr>";
    echo "</table>";
} else {
    echo "No form data submitted.";
}
?>
</body>
</html>

