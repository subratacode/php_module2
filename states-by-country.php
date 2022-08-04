<?php
require_once "dbConnection.php";
$country_id = $_POST["country_id"];
$result = mysqli_query($dbCon, "SELECT * FROM state where country_id = $country_id");
?>
<option value="" selected>Select State</option>
<?php
while ($row = mysqli_fetch_array($result)) {
?>
    <option value="<?php echo $row["state_id"]; ?>"><?php echo $row["state_name"]; ?></option>
<?php
}
?>