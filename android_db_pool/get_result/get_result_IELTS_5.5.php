<?php
$conn = mysqli_connect("localhost", "root", "123456");
mysqli_select_db($conn, "24edu");

$query = "SELECT er.id, es.name, er.ktra_1, er.ktra_2, er.ktra_3, er.test_1, er.test_2
          FROM english_result er
          INNER JOIN english_studentlist es ON er.id = es.id
          WHERE es.class = 'IELTS-5.5'";

$result = mysqli_query($conn, $query);

if(mysqli_num_rows($result) > 0) {
    $response = array();
    while($row = mysqli_fetch_assoc($result)) {
        $response[] = array(
            'id' => $row['id'],
            'name' => $row['name'],
            'ktra_1' => $row['ktra_1'],
            'ktra_2' => $row['ktra_2'],
            'ktra_3' => $row['ktra_3'],
            'test_1' => $row['test_1'],
            'test_2' => $row['test_2']
        );
    }
    echo json_encode($response);
}  
else {
    echo "not found";
}
?>
