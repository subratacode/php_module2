<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>PHP Code to Retrieve Data from MySQL Database and Display in html Table</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>
    <div class="container mt-2 px-5 py-3">
        <div class="row">
            <div class="col-md-12">
                <div class="card w-50">
                    <div class="card-header bg-primary text-light">
                        <h2>Add Student</h2>
                    </div>
                    <div class="card-body">
                        <form action="addStudentDb.php" method="post">
                            <div class="mb-3">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" class="form-control" name="name">
                            </div>
                            <div class="mb-3">
                                <label for="phone" class="form-label">Phone</label>
                                <input type="text" class="form-control" name="phone">
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" name="email">
                            </div>
                            <div class="mb-3">
                                <label for="dob" class="form-label">Date of Birth</label>
                                <input type="date" class="form-control" name="dob">
                            </div>
                            <div class="mb-3">
                                <label for="address" class="form-label">Address</label>
                                <input type="text" class="form-control" name="address">
                            </div>
                            <div class="mb-3">
                                <label for="zip" class="form-label">Zip</label>
                                <input type="text" class="form-control" name="zip">
                            </div>
                            <!-- <div class="mb-3">
                                <label for="country" class="form-label">Country</label>
                                <input type="text" class="form-control" name="country">
                            </div> -->
                            <!-- <div class="mb-3">
                                <label for="country" class="form-label">Country</label>
                                <br>
                                <select name="country" id="country" class="w-100 border-3">
                                    <option value="" selected>Select Country</option>
                                </select>
                            </div> -->

                            <div class="form-group">
                                <label for="country">Country</label>
                                <select class="form-control" id="country-dropdown" name="country">
                                    <option value="">Select Country</option>
                                    <?php
                                    require_once "dbConnection.php";
                                    $result = mysqli_query($dbCon, "SELECT * FROM country");
                                    while ($row = mysqli_fetch_array($result)) {
                                    ?>
                                        <option value="<?php echo $row['country_name']; ?>"><?php echo $row["country_name"]; ?></option>
                                    <?php
                                    }
                                    ?>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="state">State</label>
                                <select class="form-control" id="state-dropdown" name="state">
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="city">City</label>
                                <select class="form-control" id="city-dropdown" name="city">
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="image" class="form-label">Image</label>
                                <input type="file" class="form-control" name="image">
                            </div>
                            <input type="submit" class="btn btn-primary my-3"></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $('#country-dropdown').on('change', function() {
                var country_name = this.value;
                $.ajax({
                    url: "states-by-country.php",
                    type: "POST",
                    data: {
                        country_name: country_name
                    },
                    cache: false,
                    success: function(result) {
                        $("#state-dropdown").html(result);
                        $('#city-dropdown').html('<option value="">Select State First</option>');
                    },
                    error: function() {
                        alert('problem in state');
                    }
                });
            });
            $('#state-dropdown').on('change', function() {
                var state_name = this.value;
                $.ajax({
                    url: "cities-by-state.php",
                    type: "POST",
                    data: {
                        state_name: state_name
                    },
                    cache: false,
                    success: function(result) {
                        $("#city-dropdown").html(result);
                    },
                    error: function() {
                        alert('problem in city');
                    }
                });
            });
        });
    </script>
</body>

</html>