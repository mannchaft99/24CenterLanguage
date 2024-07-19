<?php
$conn=mysqli_connect("localhost","root","123456");
mysqli_select_db($conn,"24edu");

$qry="select * from course";

$raw=mysqli_query($conn,$qry);

if(mysqli_num_rows($raw) > 0) {
    $response = array();
    while($row = mysqli_fetch_assoc($raw)) {
        $response[] = array(
            'name' => $row['name'],
            'teacher' => $row['teacher'],
            'price' => $row['price'],
            'slot' => $row['slot'],
            'time' => $row['time']
        );
    }
    echo json_encode($response);
}  
else {
    echo "not found";
}
?>
