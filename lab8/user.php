<html>
	<head>
		<title> PHP Test </title>
	</head>
	<body>
		<?php
		$program = "btech";
		$department = "cse";
		$count = 5;
		echo '<table border="1" cellpadding="10" cellspacing="0">';
		echo "<tr>
		<th>Roll No</th>
		<th>UserName</th>
		<th>Email</th>
		<th>ID Number</th>
		</tr>";
		for($i = 1; $i <= $count; $i++){
		$username = $department . "_" . $i;
		$email = $username. "@iitbhilai.ac.in";
		$number = $program . "_" . $department . "_" . $i;
		
		echo "<tr><td>$i</td><td>$username</td><td>$email</td><td>$number</td></tr>";
		}
		echo "</table>";
		
		?>
	</body>
</html>
