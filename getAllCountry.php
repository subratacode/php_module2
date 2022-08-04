<?php
    require 'dbConnection.php';
    $query="select * from country";
    $result=mysqli_query($dbCon,$query);
    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            $country[] = $row;
        }
        echo json_encode($country);
    } else {
        echo "0 results";
    }
    mysqli_close($dbCon);
?>


