<?php
$conn = mysqli_connect("localhost", "root", "123456", "24edu");

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$query = "SELECT * FROM korean_schedule WHERE class = 'Trung cấp 2'";
$result = mysqli_query($conn, $query);

if (mysqli_num_rows($result) > 0) {
    $response = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $response[] = array(
            'monday' => $row['monday'],
            'tuesday' => $row['tuesday'],
            'wednesday' => $row['wednesday'],
            'thursday' => $row['thursday'],
            'friday' => $row['friday'],
            'saturday' => $row['saturday'],
            'sunday' => $row['sunday']
        );
    }
    echo json_encode($response);
} else {
    echo "Data not found";
}

mysqli_close($conn);
?>
