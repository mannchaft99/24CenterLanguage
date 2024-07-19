<?php
$conn=mysqli_connect("localhost","root","123456");
mysqli_select_db($conn,"24edu");

$qry="select * from english_studentlist where class='TOEIC-750'";

$raw=mysqli_query($conn,$qry);

if(mysqli_num_rows($raw) > 0) {
    $response = array();
    while($row = mysqli_fetch_assoc($raw)) {
        $response[] = array(
            'id' => $row['id'],
            'name' => $row['name'],
            'sex' => $row['sex'],
            'birthday' => $row['birthday'],
            'class' => $row['class'],
            'detail' => $row['detail']
        );
    }
    echo json_encode($response);
}  
else {
    echo "not found";
}
?>
