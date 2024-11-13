<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = htmlspecialchars($_POST['name']);
    $email = htmlspecialchars($_POST['email']);
    $username = htmlspecialchars($_POST['username']);
    $password = htmlspecialchars($_POST['password']);
    $gender = htmlspecialchars($_POST['gender']);
    $address = htmlspecialchars($_POST['address']);
    $country = htmlspecialchars($_POST['country']);
    $hobbies = $_POST['hobbies'] ?? [];

    $photo = $_FILES['photo'];
    $signature = $_FILES['signature'];

    $photoPath = 'uploads/' . basename($photo['name']);
    $signaturePath = 'uploads/' . basename($signature['name']);

    if (!is_dir('uploads')) {
        mkdir('uploads', 0777, true);
    }

    move_uploaded_file($photo['tmp_name'], $photoPath);
    move_uploaded_file($signature['tmp_name'], $signaturePath);

    echo "<h2>User Details</h2>";
    echo "<table border='1' cellpadding='10' cellspacing='0'>";
    echo "<tr>
            <td><b>Name</b></td>
            <td>$name</td>
          </tr>";
    echo "<tr>
            <td><b>Email Address</b></td>
            <td>$email</td>
          </tr>";
    echo "<tr>
            <td><b>Username</b></td>
            <td>$username</td>
          </tr>";
    echo "<tr>
            <td><b>Password</b></td>
            <td>[Protected]</td>
          </tr>";
    echo "<tr>
            <td><b>Gender</b></td>
            <td>$gender</td>
          </tr>";
    echo "<tr>
            <td><b>Address</b></td>
            <td>$address</td>
          </tr>";
    echo "<tr>
            <td><b>Country</b></td>
            <td>$country</td>
          </tr>";

    echo "<tr>
            <td><b>Degree</b></td>
            <td>B.Tech</td>
          </tr>";
    echo "<tr>
            <td><b>Specialisation</b></td>
            <td>Nothing</td>
          </tr>";
    echo "<tr>
            <td><b>Academic Year</b></td>
            <td>27</td>
          </tr>";
    echo "<tr>
            <td><b>Percentage</b></td>
            <td>100%</td>
          </tr>";

    echo "<tr>
            <td><b>Hobbies</b></td>
            <td>";
    foreach ($hobbies as $hobby) {
        echo "<li>" . htmlspecialchars($hobby) . "</li>";
    }
    echo "</td>
          </tr>";

    echo "<tr>
            <td><b>Photo</b></td>
            <td><img src='$photoPath' alt='User Photo' style='max-width: 200px;'></td>
          </tr>";

    echo "<tr>
            <td><b>Signature</b></td>
            <td><img src='$signaturePath' alt='Signature' style='max-width: 200px;'></td>
          </tr>";

    echo "</table>";
} else {
    echo "No form data submitted.";
}
?>

