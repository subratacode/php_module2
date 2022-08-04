<?php
    require_once "dbConnection.php";
    $state_id = $_POST["state_id"];
    $result = mysqli_query($dbCon,"SELECT * FROM city where state_id = $state_id");
?>
<option value="" selected>Select City</option>
<?php
    while($row = mysqli_fetch_array($result)) {
?>
<option value="<?php echo $row["city_id"];?>"><?php echo $row["city_name"];?></option>
<?php
    }
?>