<?php
    require_once "dbConnection.php";
    $state_name = $_POST["state_name"];
    $sql = 'select * from city c right join state s on c.state_id = s.state_id where state_name=' . "'" . $state_name . "'";
    $result = mysqli_query($dbCon, $sql);
?>
    <option value="" selected>Select State</option>

<?php
    while ($row = mysqli_fetch_array($result)) {
?>

    <option value="<?php echo $row["city_name"]; ?>"><?php echo $row["city_name"]; ?></option>
    
<?php
    }
?>