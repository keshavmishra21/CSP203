<html>
	<head>
		<title> PHP Test </title>
	</head>
	<body>
		<?php
		$username = "admin";
		$password = "admin123";
		if($username === $password) {
		echo "User Authentication is Successful";
		}
		else {
		echo "User Authentication is not Successful";
		}
		?>
	</body>
</html>
