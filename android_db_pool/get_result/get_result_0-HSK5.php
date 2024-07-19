<?php
$conn = mysqli_connect("localhost", "root", "123456");
mysqli_select_db($conn, "24edu");

$query = "SELECT cr.id, cs.name, cr.ktra_1, cr.ktra_2, cr.ktra_3, cr.test_1, cr.test_2
          FROM chinese_result cr
          INNER JOIN chinese_studentlist cs ON cr.id = cs.id
          WHERE cs.class = '0-HSK5'";

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
