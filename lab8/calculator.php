<html>
	<head>
		<title> PHP Test </title>
	</head>
	<body>
		<?php
		$op1 = 10;
		$op2 = 5;
		$operator = "+";
		
		switch($operator) {
		case "+":
		echo "Result: " . ($op1 + $op2);
		break;
		case "-":
		echo "Result: " . ($op1 - $op2);
		break;
		case "*":
		echo "Result: " . ($op1 * $op2);
		break;
		default:
		echo "Invalid Operator";
		break;
		}
		?>
	</body>
</html>
