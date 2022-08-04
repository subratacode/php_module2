<?php
    require_once "dbConnection.php";
    $country_name = $_POST["country_name"];
    $sql = 'select * from state s right join country c on s.country_id = c.country_id where country_name=' . "'" . $country_name . "'";
    $result = mysqli_query($dbCon, $sql);
?>
    <option value="" selected>Select State</option>

<?php
    while ($row = mysqli_fetch_array($result)) {
?>

    <option value="<?php echo $row["state_name"]; ?>"><?php echo $row["state_name"]; ?></option>

<?php
    }
?>