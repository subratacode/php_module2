<?php
session_start();
require './dbConnection.php';

$name = $_REQUEST['name'];
$phone = $_REQUEST['phone'];
$email = $_REQUEST['email'];
$dob = $_REQUEST['dob'];
$address = $_REQUEST['address'];
$zip = $_REQUEST['zip'];
$city = $_REQUEST['city'];
$state = $_REQUEST['state'];
$country = $_REQUEST['country'];
$image = $_REQUEST['image'];

// echo $image;

$extensions = array("jpeg","jpg","png","bmp");
$array = explode(".", $image);
$fx = end($array);

if(in_array(strtolower($fx),$extensions) === false) {
    $image_error_msg="extension not allowed, please choose a JPEG or PNG or BMP file.";
    $_SESSION['image_error_msg'] = $image_error_msg;
    echo $_SESSION['image_error_msg'];
    header('location:addStudent.php');
}

// $sql = "INSERT INTO student_details(name,phone,email,dob,address,zip,city,state,country,image) VALUES ('$name','$phone','$email','$dob','$address','$zip','$city','$state','$country','$image')";

// if (mysqli_query($dbCon, $sql)) {
//     echo "<h3>data stored in a database successfully."
//         . " Please browse your localhost php my admin"
//         . " to view the updated data</h3>";
//     echo nl2br("\n$name\n $phone\n "
//         . "$email\n $dob\n $address \n $zip\n $city\n $state \n$country \n$image");
// } 
// else {
//     echo "ERROR: Hush! Sorry $sql. "
//         . mysqli_error($dbCon);
// }

mysqli_close($dbCon);

?>
