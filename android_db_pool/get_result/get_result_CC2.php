<?php
$conn = mysqli_connect("localhost", "root", "123456");
mysqli_select_db($conn, "24edu");

$query = "SELECT kr.id, ks.name, kr.ktra_1, kr.ktra_2, kr.ktra_3, kr.test_1, kr.test_2
          FROM korean_result kr
          INNER JOIN korean_studentlist ks ON kr.id = ks.id
          WHERE ks.class = 'Cao cấp 2'";

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
