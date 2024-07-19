<?php
$userID = $_GET['userID'];

$conn = new mysqli("localhost", "root", "123456", "24edu");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT 
            user.ID, 
            user.username, 
            english_result.ktra_1 AS english_ktra_1,
            english_result.ktra_2 AS english_ktra_2,
            english_result.ktra_3 AS english_ktra_3,
            english_result.test_1 AS english_test_1,
            english_result.test_2 AS english_test_2,
            chinese_result.ktra_1 AS chinese_ktra_1,
            chinese_result.ktra_2 AS chinese_ktra_2,
            chinese_result.ktra_3 AS chinese_ktra_3,
            chinese_result.test_1 AS chinese_test_1,
            chinese_result.test_2 AS chinese_test_2,
            korean_result.ktra_1 AS korean_ktra_1,
            korean_result.ktra_2 AS korean_ktra_2,
            korean_result.ktra_3 AS korean_ktra_3,
            korean_result.test_1 AS korean_test_1,
            korean_result.test_2 AS korean_test_2
        FROM user
        LEFT JOIN english_result ON user.ID = english_result.id
        LEFT JOIN chinese_result ON user.ID = chinese_result.id
        LEFT JOIN korean_result ON user.ID = korean_result.id
        WHERE user.ID = '$userID'";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    
    $results = array();
    
    foreach ($row as $key => $value) {
        if ($value !== null && (strpos($key, '_ktra_') !== false || strpos($key, '_test_') !== false)) {
            $column_name = str_replace('_', '', substr($key, strpos($key, '_') + 1));
            $results[$column_name] = $value;
        }
    }
    
    echo json_encode($results);
} else {
    echo "0 results";
}

$conn->close();
?>
