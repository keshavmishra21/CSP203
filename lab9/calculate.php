</html>
<!DOCTYPE html>
<html>
<body>
<?php

    $operand1 = isset($_GET['operand1']) ? floatval($_GET['operand1']) : 0;
    $operand2 = isset($_GET['operand2']) ? floatval($_GET['operand2']) : 0;
    $operator = isset($_GET['operator']) ? strtoupper(trim($_GET['operator'])) : '';

    $result = '';

    switch ($operator) {
        case 'ADD':
            $result = $operand1 + $operand2;
            break;
        case 'SUB':
            $result = $operand1 - $operand2;
            break;
        case 'MUL':
            $result = $operand1 * $operand2;
            break;
        default:
            $result = 'Invalid operator. Please use ADD, SUB, or MUL.';
    }

echo "$result";
?>
</body>
</html>
