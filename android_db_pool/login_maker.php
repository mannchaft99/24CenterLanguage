<?php
$conn=mysqli_connect("localhost","root","123456");
mysqli_select_db($conn,"24edu");

$uname=$_GET['user'];
$pwd=$_GET['pass'];

$qry="select * from user where username='$uname' and password='$pwd'";

$raw=mysqli_query($conn,$qry);

$count=mysqli_num_rows($raw);

if($count>0) {
    $row = mysqli_fetch_assoc($raw);
    $response = array(
        'ID' => $row['ID'],
        'username' => $row['username'],
        'name' => $row['name'],
        'email' => $row['email'],
        'title' => $row['title']
    );
    echo json_encode($response);
}  
else
    echo "not found";
?>