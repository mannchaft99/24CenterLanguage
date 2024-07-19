<?php
$conn=mysqli_connect("localhost","root","123456");
mysqli_select_db($conn,"24edu");

$qry="select * from teacher";

$raw=mysqli_query($conn,$qry);

if(mysqli_num_rows($raw) > 0) {
    $response = array();
    while($row = mysqli_fetch_assoc($raw)) {
        $response[] = array(
            'id' => $row['id'],
            'name' => $row['name'],
            'gender' => $row['gender'],
            'class' => $row['class'],
            'mail' => $row['mail'],
            'image' => $row['image']
        );
    }
    echo json_encode($response);
}  
else {
    echo "not found";
}
?>
